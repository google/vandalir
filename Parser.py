from llvmlite.binding import parse_assembly, parse_bitcode
from itertools import chain
import argparse
import os
import sys
import re


# configuration converter

# directory of fact files
global FACTS_DIR
FACTS_DIR = ""

# installed llvm version (tested on 10)
LLVM_VER = "10"

# define typical user input functions
CONV_INSTRUCTIONS = ["trunc", "zext", "sext", "fptrunc", "fpext", "fptoui", "fptosi",
                     "uitofp", "sitofp", "ptrtoint", "inttoptr", "bitcast", "addrspacecast"]

# define typical user input functions
USER_INPUT = [["main", "1", "+", "0"], ["scanf", "2", "+", "1"], ["fscanf", "3", "+", "1"],
              ["sscanf", "2", "+", "1"], ["vscanf", "2", "+", "1"],
              ["vsscanf", "3", "+", "1"], ["vfscanf", "2", "+", "1"],
              ["fgets", "1", "=", "1"], ["fgetc", "0", "=", "1"], ["getc", "0", "=", "1"],
              ["gets", "1", "=", "0"], ["getenv", "0", "=", "0"], ["fread", "1", "=", "0"],
              ["_IO_getc", "0", "=", "1"], ["__isoc99_sscanf", "2", "+", "1"],
              ["__isoc99_fscanf", "3", "+", "1"], ["recv", "2", "=", "1"], 
              ["recvfrom", "2", "=", "1"], ["recvmsg", "2", "=", "1"],
              ["setbuf", "2", "=", "1"], ["setbuffer", "2", "=", "1"],
              ["setvbuf", "2", "=", "1"], ["_IO_getc", "0", "=", "1"]]

# this limit describes the maximum number of elements in one array, that are used by the analysis
LIMIT = 1000

# describes the maximum depth of structs or arrays within structs
MAXDEPTH = 4


# configuration Datalog
# set library mode (all output facing parameters may contain userinput)
DLC_LIBRARYMODE = ("libraryMode", False)
DLC_SHOWVULNERABILITIES = ("showVulnerabilities", True)
DLC_SHOWWARNINGS = ("showWarnings", True)
DLC_DEEPALIAS = ("deepAlias", False)

# build config array
DATALOG_CONFIG = [DLC_LIBRARYMODE, DLC_SHOWVULNERABILITIES, DLC_SHOWWARNINGS, DLC_DEEPALIAS]

# implementation


class Parser:

    def __init__(self, input):
        self.inputFile = input
        self.functionid = 0
        self.argumentid = 0
        self.blockid = 0
        self.instructionid = 0
        self.operandid = 0

        self.allocaVregs = list()

        self.artificialInstructionId = -1
        self.artificialOperandId = -2147483646
        self.outputList = {
            "function": list(),
            "argument": list(),
            "block": list(),
            "instruction": list(),
            "operand": list(),
            "predecessor": list(),
            "global": list(),
            "struct": list(),
            "structoperand": list()
        }

    def parse(self):

        module = self.getInputFile()

        self.parseGlobals(module)
        self.parseStructs(module)
        self.parse_module(module)
        self.generate_helper_facts()
        self.generate_configuration_fact()

        print("Parsing successful.")

    def parse_module(self, module):
        for function in module.functions:
            argumentRegister = 0

            functiontype = "define"

            if(not any(function.blocks)):
                functiontype = "declare"

            function_str = "function("+str(self.functionid)+";\""+str(function.name)+"\";\"" + \
                functiontype+"\";\""+str(function.type).split('(')[0].strip()+"\")"
            self.output(function_str)

            # print(str(function.name))
            # print(str(function))
            argument_str = str(function).split("@", 1)[1].split(") #", 1)[0].split("(", 1)[1]

            r = re.compile(r'(?:[^,(]|\([^)]*\))+')
            arguments = r.findall(argument_str)

            # print(argument_str)

            for argument in arguments:
                argtype = argument.replace(" nocapture", "").replace(" noalias", "").replace(" immarg", "")
                argtype = argtype.replace(" writeonly", "").replace(" readonly", "").strip()
                while(" %" in argtype):
                    argtype = argtype.rsplit(" %")[0].strip()
                # if(argtype == "..."):
                #     continue
                # print(argtype)

                argumentRegisterStr = "%"+str(argumentRegister)
                arguments_str = "argument("+str(self.functionid)+";"+str(self.argumentid) + \
                    ";"+argumentRegisterStr+";\""+str(argtype)+"\")"
                self.output(arguments_str)
                self.argumentid += 1
                argumentRegister += 1

            for block in function.blocks:
                (label, preds) = self.getControlFlowInfoFromBlock(block)
                if(len(preds) > 0):
                    for predecessor in preds:
                        pred_str = "predecessor("+str(self.functionid)+";"+str(label)+";"+str(predecessor)+")"
                        self.output(pred_str)
                block_str = "block("+str(self.functionid)+";"+str(self.blockid)+";\""+str(label)+"\")"

                self.output(block_str)
                for instruction in block.instructions:
                    fullInstruction = str(instruction).strip()
                    # print(fullInstruction)

                    # get virtual Register number
                    virtualRegister = self.getVirtualRegisterOfInstruction(instruction)
                    # print(virtualRegister)

                    instruction_str = "instruction("+str(self.blockid)+";"+str(self.instructionid) + \
                        ";\""+virtualRegister+"\";\""+str(instruction.opcode)+"\")"
                    self.output(instruction_str)

                    # operand processing
                    if(str(instruction.opcode) == "alloca"):  # alloca instruction
                        self.allocaVregs.append(virtualRegister)
                        self.parseAllocaInstruction(fullInstruction)
                    elif(str(instruction.opcode) == "store"):  # store instruction
                        self.parseStoreInstruction(instruction)
                    elif(str(instruction.opcode) == "load"):  # load instruction
                        self.parseLoadInstruction(instruction)
                    elif(str(instruction.opcode) == "phi"):  # load instruction
                        self.parsePhiInstruction(fullInstruction)
                    elif(str(instruction.opcode) == "getelementptr"):  # getelementptr instruction
                        self.parseGetElementPtrInstruction(instruction)
                    elif(str(instruction.opcode) in CONV_INSTRUCTIONS):  # conversion instruction
                        self.parseConversionInstructions(instruction)
                    elif(str(instruction.opcode) == "icmp"):  # icmp instruction
                        self.parseICMPInstructions(instruction)
                    elif(str(instruction.opcode) == "br"):  # br instruction
                        for operand in instruction.operands:
                            processedOperands = self.preprocessOperand(instruction, operand)
                            for procOp in processedOperands:
                                if(not procOp):  # skip empty operands
                                    continue
                                operand_str = "operand("+str(self.instructionid)+";" + \
                                    str(self.operandid)+";\""+procOp+"\")"
                                self.output(operand_str)
                                self.operandid += 1
                    else:
                        self.parseDefaultInstructions(instruction)
                    self.instructionid += 1
                self.blockid += 1

            self.functionid += 1

    def getVirtualRegisterOfInstruction(self, instruction):
        fullInstruction = str(instruction).strip()
        virtualRegister = "%-1"
        splitFuillInstruction = fullInstruction.split(" ")
        if(splitFuillInstruction[0][0] == "%"):
            virtualRegister = "%"+str(splitFuillInstruction[0][1:])
        return virtualRegister

    def parseDefaultInstructions(self, instruction):
        for operand in instruction.operands:
            processedOperands = self.preprocessOperand(instruction, operand)
            for procOp in processedOperands:
                if(not procOp):  # skip empty operands
                    continue
                operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+procOp+"\")"
                self.output(operand_str)
                self.operandid += 1

    def parseGetElementPtrInstruction(self, instruction):
        fullInstruction = str(instruction)
        if "inbounds" in fullInstruction:
            typeGEP = fullInstruction[fullInstruction.find("inbounds ")+9:fullInstruction.find(", ")].strip()
        else:
            typeGEP = fullInstruction[fullInstruction.find("getelementptr ")+14:fullInstruction.find(", ")].strip()
        # print("GEP "+typeGEP)
        (returnType, size) = self.parseType(typeGEP)
        returnType = returnType+"~"+size
        # print("GEP2 "+returnType)
        allOperands = list(instruction.operands)
        allOperands.append(returnType)

        for operand in allOperands:
            # print(operand)
            processedOperands = self.preprocessOperand(instruction, operand)
            # print(processedOperands)
            for procOp in processedOperands:
                if(not procOp):  # skip empty operands
                    continue
                operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+procOp+"\")"
                # print(procOp)
                self.output(operand_str)
                self.operandid += 1

    def parseICMPInstructions(self, instruction):
        instruction = str(instruction).split("icmp ")[1].strip()
        condition = instruction.split(" ", 1)[0].strip()
        ops = instruction.split(" ", 1)[1].strip()
        r = re.compile(r'(?:[^,(]|\([^)]*\))+')
        ops2 = r.findall(ops)

        operands = [None]*3

        try:
            operands[0] = condition
            operands[1] = "%"+ops2[0].strip().rsplit("%", 1)[1].strip()
            operands[2] = ops2[1].strip()
        except:
            print("Parsing Error in parseICMPInstructions")

        for op in operands:
            if(op is None):
                continue
            if(len(op) == 0):
                continue

            op = str(op).strip()
            operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+op+"\")"
            self.output(operand_str)
            self.operandid += 1

        # print(instruction)
        # print(operands)

    def parseConversionInstructions(self, instruction):
        for operand in instruction.operands:
            processedOperands = self.preprocessOperand(instruction, operand)
            for procOp in processedOperands:
                if(not procOp):  # skip empty operands
                    continue
                operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+procOp+"\")"
                self.output(operand_str)
                self.operandid += 1
        fullInstruction = str(instruction).strip()
        splitInstruction = fullInstruction.split(" to ")
        if(len(splitInstruction) != 2):
            print("ERROR: conversion instruction has != 1 'to'!")
            sys.exit(1)
        operand = splitInstruction[1].strip()
        operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+operand+"\")"
        self.output(operand_str)
        self.operandid += 1

    def parsePhiInstruction(self, fullInstruction):
        instr = fullInstruction.split("phi ")[1]
        instr = instr.split(" ")
        # print("phi:"+str(fullInstruction))

        if(len(instr) < 7):
            print("ERROR: phi instruction could not be parsed. Num of parts < 7.")
            print(instr)
            sys.exit(1)

        datatype = instr[0].strip()

        firstVal = instr[2].replace(",", "").strip()
        firstCondBlock = instr[3].strip()[1:]+":"
        secondVal = instr[6].replace(",", "").strip()
        secondCondBlock = instr[7].strip()[1:]+":"

        operands = [datatype, firstVal, firstCondBlock, secondVal, secondCondBlock]
        for operand in operands:
            operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+operand+"\")"
            self.output(operand_str)
            self.operandid += 1

    def parseAllocaInstruction(self, fullInstruction):
        start = fullInstruction.find("alloca ")+7
        end = fullInstruction.rfind(", align")
        allocaType = fullInstruction[start:end]

        r = re.compile(r'(?:[^,(]|\([^)]*\))+')
        allocaTypeSplit = r.findall(allocaType)

        if(len(allocaTypeSplit) == 2):
            allocaTypeTemp = allocaTypeSplit[1].strip().rsplit(" ", 1)
            if(len(allocaTypeTemp) == 2):
                allocaType = "["+allocaTypeTemp[1]+" x "+allocaTypeTemp[0]+"]"

        # print(fullInstruction)
        # print(allocaType)

        (allocaType, arraySize) = self.parseType(allocaType, mode=1)

        # print(allocaType)

        operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";"+allocaType+")"
        self.output(operand_str)
        self.operandid += 1
        arraySizes = arraySize.split("x")
        for arraySize in arraySizes:
            operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";"+arraySize+")"
            self.output(operand_str)
            self.operandid += 1

    def parseLoadInstruction(self, instruction):
        operands = [None]*3
        ops = str(str(instruction).strip().replace("load ", "").split(" = ")[1]).split(", align")[0]

        r = re.compile(r'(?:[^,(]|\([^)]*\))+')
        ops2 = r.findall(ops)
        # print(ops)
        # print(ops2)
        try:
            operands[0] = ops2[0]
            operands[1] = ops2[0]+"*"
            if(" %" in ops2[1]):
                operands[2] = "%"+ops2[1].rsplit(" %", 1)[1]
            elif(" @" in ops2[1]):
                operands[2] = "@"+ops2[1].rsplit(" @", 1)[1]
            else:
                print("Parsing Error in parseLoadInstruction")
        except:
            print("Parsing Error in parseLoadInstruction")
            # sys.exit()
        
        #print(operands)

        for op in operands:
            if(op is None):
                continue
            if(len(op) == 0):
                continue

            op = str(op).strip()
            operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+op+"\")"
            self.output(operand_str)
            self.operandid += 1

    def parseStoreInstruction(self, instruction):
        operands = [None]*4
        ops = str(instruction).strip().replace("store ", "")
        # print(ops)
        r = re.compile(r'(?:[^,(]|\([^)]*\))+')
        ops = r.findall(ops)

        src = ops[0].strip()
        dest = ops[1].strip()
        # print(src)
        # print(dest)

        src = src.rsplit(" ", 1)
        dest = dest.rsplit(" ", 1)

        # print(ops)

        try:

            operands[0] = src[0].strip()
            operands[1] = src[1].strip()
            operands[2] = dest[0].strip()
            operands[3] = dest[1].strip()
        except:
            print("Parsing Error in parseStoreInstruction")
        # print(ops)
        # print(operands)

        for op in operands:
            if(op is None):
                continue
            if(len(op) == 0):
                continue
            op = str(op).strip()
            operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+op+"\")"
            self.output(operand_str)
            self.operandid += 1

    def parseGlobals(self, module):

        globals = list(module.global_variables)
        # globals.extend(list(module.functions))
        for glob in globals:
            globalName = "@"+str(glob.name).replace(".", "_")  # avoid globals name conflicts
            # print(globalName)
            globstr = str(glob)
            # print(globstr)
            # get storage type
            storageType = "unknown"
            if("private unnamed_addr" in globstr):
                storageType = "private_unnamed_addr"
            elif("common global" in globstr):
                storageType = "common_global"
            elif("external global" in globstr):
                storageType = "external_global"
            elif("global" in globstr):
                storageType = "global"
            elif("constant" in globstr):
                storageType = "constant"
            # print(storageType)
            # get data type
            globType = str(glob.type)
            (globType, globTypeArraySize) = self.parseType(globType)
            globValue = "unknown"
            if(globType == "i8"):
                glob = str(glob)
                # print(glob)
                globValue = str(glob)[glob.find("c\"")+2:glob.rfind("\"")]
            glob_str = "global("+globalName+";"+storageType+";"+globType+";"+str(globTypeArraySize)+";"+globValue+")"
            self.output(glob_str)

    def parseStructs(self, module):

        structs = list(module.struct_types)
        structId = 0

        for struct in structs:
            structTypeId = 0
            name = "%"+struct.name
            # print(str(struct))
            struct_str = str(struct)
            inBrackets = struct_str[struct_str.find("{")+1:struct_str.find("}")-1]
            # print(inBrackets)
            types = inBrackets.strip().split(", ")
            operandsList = list()
            for elementType in types:
                elementType = self.parseType(elementType)
                operandsList.append(elementType)
                struct_operands_str = "structoperand("+str(structId)+";" + \
                    str(structTypeId)+";"+elementType[0]+";"+str(elementType[1])+")"
                # print(name)
                # print(struct_operands_str)
                self.output(struct_operands_str)
                structTypeId += 1

            structs_str = "struct("+str(structId)+";"+name+";"+str(len(operandsList))+")"
            self.output(structs_str)

            structId += 1

    # mode 0: get return type of functions, if function types are supplied
    def parseType(self, operand, mode=0):
        # print(operand)
        if(mode == 0):
            if("(" in operand):
                operand = operand[:operand.find("(")].strip()
        if("[" in operand and "]" in operand):  # array detected
            # print(operand)
            inBrackets = operand
            number = ""
            while("[" in inBrackets and "]" in inBrackets):
                inBrackets = inBrackets[inBrackets.find("[")+1:inBrackets.rfind("]")].strip()
                # print("IB:"+str(inBrackets))
                if(" x ") in inBrackets:
                    # do not parse it as pointer! +operand[operand.find("]")+1:]
                    number += "x"+inBrackets[:inBrackets.find(" x ")].strip()
                    if(not ("[" in inBrackets) or ("]" in inBrackets)):
                        operand = inBrackets[inBrackets.find(" x ")+2:].strip()
            number = number[1:]  # remove leading "x"
        else:
            number = "1"
        # print(operand)
        operand = operand.strip()
        result = (operand, number)
        # print(result)
        return result

    def parseGetElementPtrInstructionGivenAsString(self, callInstruction, strInstruction):

        # create its own artificial instruction
        virtualRegister = self.getVirtualRegisterOfInstruction(callInstruction)
        virtualRegister += "_"+str(self.artificialInstructionId)
        opcode = "getelementptr"
        instruction_str = "instruction("+str(self.blockid)+";" + \
            str(self.artificialInstructionId)+";\""+virtualRegister+"\";\""+opcode+"\")"
        self.output(instruction_str)
        # parse operands for artificial instruction

        # print(strInstruction)
        returnType = strInstruction[:strInstruction.find(" ")-1]
        # print(":"+returnType+":")
        strInstruction = strInstruction[strInstruction.find("(")+1:strInstruction.find(")")].strip()
        operandList = strInstruction.split(", ")
        operandList = operandList[1:]

        operandList[0] = operandList[0][operandList[0].find("]")+1:]
        operandList[0] = operandList[0][operandList[0].find("*")+1:]

        # print(operandList)
        operandList.append(returnType)

        for operand in operandList:
            processedOperands = self.preprocessOperand(opcode, operand)
            for procOp in processedOperands:
                if(not procOp):  # skip empty operands
                    continue
                operand_str = "operand("+str(self.artificialInstructionId)+";" + \
                    str(self.artificialOperandId)+";\""+procOp+"\")"
                self.output(operand_str)
                self.artificialOperandId += 1

        self.artificialInstructionId -= 1
        return virtualRegister

    def preprocessOperand(self, instruction, operand):

        if(isinstance(instruction, str)):
            opcode = instruction
        else:
            opcode = str(instruction.opcode)

        operand = str(operand).strip()

        # if(opcode == "getelementptr"):
        #    print("operand:"+str(operand))

        if(opcode == "call"):  # call operand
            if("declare" in operand):  # function call operand
                operand = operand[operand.find("@")+1:operand.find("(")].strip()
            if("define" in operand):  # function call operand
                operand = operand[operand.find("@")+1:operand.find("(")].strip()
        else:
            if("; " in operand):  # remove long src code (llvmlite bug)
                operand = operand.split("; ")[0]
        splitInstructions = operand.strip().split(" ")

        # parse getelementptr as its own instruction
        if("getelementptr" in operand and operand[0] != "%"):
            # print(operand)
            operand = self.parseGetElementPtrInstructionGivenAsString(instruction, operand)
            return [operand.strip()]

        if(len(splitInstructions) > 1):
            # print(splitInstructions[0])
            # print(splitInstructions[1])
            if(splitInstructions[0][0] == "i" and splitInstructions[1]):  # remove integer type
                # do not parse types for call instructions (as they are given by function def)
                if(opcode == "call" or opcode == "ret" or "getelementptr"):
                    operand = [splitInstructions[1].strip()]
                else:
                    operand = [splitInstructions[0].strip(), splitInstructions[1].strip()]
                # print("list created at "+opcode)
                # print(operand)
            elif(splitInstructions[0][0] == "%"):  # return virtual register
                operand = splitInstructions[0]
            elif(splitInstructions[0][0] == "@"):  # return global variable
                operand = splitInstructions[0]
            else:
                pass
        if(not type(operand) is list):
            operand = [operand.strip()]
        return operand

    def output(self, output):

        output = output.replace("\n", "").strip()+"."
        # print(output)
        outputType = output.split("(")[0]

        output = output[output.find("(")+1:output.rfind(")")]

        outputSplitted = output.split(";")
        newOutput = list()
        for outputEntry in outputSplitted:
            changed = False
            if(not outputEntry.isnumeric()):
                if(not outputEntry):
                    print("Warning: outputEntry empty. Skipping output value.")
                    return
                if(outputEntry[0] == '"' and outputEntry[-1] == '"'):  # and outputEntry[1:-1].isnumeric()):
                    newOutput.append(outputEntry[1:-1])
                    changed = True

            if(not changed):
                newOutput.append(outputEntry)
        if(outputType == "operand"):
            if(len(newOutput[2]) > 0):
                if(newOutput[2][0] == "@"):
                    newOutput[2] = newOutput[2].replace(".", "_")  # avoid globals name conflicts
        self.outputList[outputType].append(";".join(newOutput))

    def printOutput(self):
        for outputType in self.outputList.keys():
            output = "\n".join(self.outputList[outputType])
            outputFile = open(FACTS_DIR+"/"+outputType+".facts", "w")
            outputFile.writelines(output)
            outputFile.close()

    def getInputFile(self):
        path, inputFileExtension = os.path.splitext(self.inputFile)
        if(inputFileExtension == '.ll'):
            with open(self.inputFile, 'r') as file:
                code = file.read()
                module = parse_assembly(code)
        elif(inputFileExtension == '.bc'):
            os.system("llvm-dis-"+LLVM_VER+" "+self.inputFile)
            print("LLVM bitcode file was disassembled to .ll file.")
            self.inputFile = self.inputFile[:-3]+".ll"

            with open(self.inputFile, 'r') as file:
                code = file.read()
                module = parse_assembly(code)
        else:
            print("wrong file type given. Only LLVM-IR .ll and .bc files are allowed.")
            print(inputFileExtension)
            sys.exit(1)

        return module

    def generate_helper_facts(self):
        self.generate_anumber()
        self.generate_userinput_facts()

    def generate_anumber(self):
        with open(FACTS_DIR+"/anumber.facts", "w") as f:
            outputList = list()
            for i in range(0, LIMIT):
                outputList.append(str(i))
            f.writelines("\n".join(outputList))

    def generate_userinput_facts(self):
        with open(FACTS_DIR+"/userinput.facts", "w") as f:
            outputList = USER_INPUT
            for i in range(0, len(outputList)):
                if(i > 0):
                    f.writelines("\n")
                f.writelines(";".join(outputList[i]))

    def generate_configuration_fact(self):
        strConfigList = list()
        for configEntry in DATALOG_CONFIG:
            if(configEntry[1] is True):
                strConfigList.append((configEntry[0], "1"))
            if(configEntry[1] is False):
                strConfigList.append((configEntry[0], "0"))

        with open(FACTS_DIR+"/configuration.facts", "w") as f:
            for entry in strConfigList:
                datalog_configuration_entry = entry[0]+";"+entry[1]
                f.writelines(datalog_configuration_entry+"\n")

    def concatenated_locations_helper(self, baseString, currentLevel):
        outputStrings = list()
        for i in range(0, LIMIT):
            newString = baseString+"."+str(i)
            outputStrings.append(newString)
        if (currentLevel+1 == MAXDEPTH):
            return outputStrings
        else:
            for newBaseString in outputStrings:
                outputStrings.extend(self.concatenated_locations_helper(newBaseString, currentLevel+1))

    @staticmethod
    def getControlFlowInfoFromBlock(block):
        label = ""
        preds = list()

        block = str(block).strip()
        if(len(block) == 0):
            return tuple()
        else:
            if(block[0] == "%"):  # first block in function
                number = "0"  # block.split("=")[0].strip()[1:]
                # if(not number.isnumeric()):
                #    print("failed parsing control flow of blocks: block virtual address of first block in function is not numeric.")
                #    return
                # else:
                label = str(int(number))+":"
            # if(block[0].isnumeric()):  # second or laterblock with given label.
            else:
                label = block.split(":")[0]+":"
            searchtxt = block[block.find("preds = ")+8:]
            # print("\n\n\n\n"+searchtxt)
            args = searchtxt.split(" ")
            for arg in args:
                if(not arg):
                    break
                if(arg[0] == "%"):
                    predlabel = arg[1:]
                    if(arg[-1] == ","):
                        predlabel = predlabel[:-1]
                    predlabel = predlabel+":"
                    preds.append(predlabel)
                    if(arg[-1] != ","):
                        break
                else:
                    break
        return (label, preds)


if __name__ == "__main__":
    argparser = argparse.ArgumentParser(description='Generate datalog facts from LLVM-IR files.')
    argparser.add_argument('input', help='path to the LLVM-IR .ll file')
    argparser.add_argument('-o', action='store', dest='output_dir', default="facts", help='specify facts directory')
    args = argparser.parse_args()
    FACTS_DIR = args.output_dir

    parser = Parser(args.input)
    parser.parse()
    parser.printOutput()
