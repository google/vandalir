from llvmlite.binding import parse_assembly, parse_bitcode
from itertools import chain
import argparse
import os
import sys
import re

FACTS_DIR = "facts"

LLVM_VER = "10"

CONV_INSTRUCTIONS = ["trunc", "zext", "sext", "fptrunc", "fpext", "fptoui", "fptosi",
                     "uitofp", "sitofp", "ptrtoint", "inttoptr", "bitcast", "addrspacecast"]


class Parser:

    def __init__(self, input):
        self.inputFile = input
        self.functionid = 0
        self.argumentid = 0
        self.blockid = 0
        self.instructionid = 0
        self.operandid = 0

        self.artificialInstructionId = -1
        self.outputList = {
            "function": list(),
            "argument": list(),
            "block": list(),
            "instruction": list(),
            "operand": list(),
            "predecessor": list(),
            "global": list()
        }

    def parse(self):

        module = self.getInputFile()

        self.parseGlobals(module)

        for function in module.functions:
            argumentRegister = 0

            functiontype = "define"

            if(not any(function.blocks)):
                functiontype = "declare"

            function_str = "function("+str(self.functionid)+";\""+str(function.name)+"\";\""+functiontype+"\";\""+str(function.type).split('(')[0].strip()+"\")"
            self.output(function_str)

            for argument in function.arguments:
                argumentRegisterStr = "%"+str(argumentRegister)
                arguments_str = "argument("+str(self.functionid)+";"+str(self.argumentid)+";"+argumentRegisterStr+";\""+str(argument.type)+"\")"
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

                    instruction_str = "instruction("+str(self.blockid)+";"+str(self.instructionid)+";\""+virtualRegister+"\";\""+str(instruction.opcode)+"\")"
                    self.output(instruction_str)

                    # operand processing
                    if(str(instruction.opcode) == "alloca"):  # alloca instruction
                        self.parseAllocaInstruction(fullInstruction)
                    elif(str(instruction.opcode) == "store"):  # store instruction
                        self.parseStoreInstruction(instruction)
                    elif(str(instruction.opcode) == "load"):  # load instruction
                        self.parseLoadInstruction(instruction)
                    elif(str(instruction.opcode) == "phi"):  # load instruction
                        self.parsePhiInstruction(fullInstruction)
                    elif(str(instruction.opcode) in CONV_INSTRUCTIONS):  # conversion instruction
                        self.parseConversionInstructions(instruction)
                    elif(str(instruction.opcode) == "br"):  # br instruction
                        for operand in instruction.operands:
                            processedOperands = self.preprocessOperand(instruction, operand)
                            for procOp in processedOperands:
                                if(not procOp):  # skip empty operands
                                    continue
                                operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+procOp+"\")"
                                self.output(operand_str)
                                self.operandid += 1
                    else:
                        self.parseDefaultInstructions(instruction)
                    self.instructionid += 1
                self.blockid += 1

            self.functionid += 1

        print("Parsing successful.")

    def getVirtualRegisterOfInstruction(self, instruction):
        fullInstruction = str(instruction).strip()
        virtualRegister = "%-1"
        splitFuillInstruction = fullInstruction.split(" ")
        if(splitFuillInstruction[0][0] == "%" and splitFuillInstruction[0][1:].isnumeric()):
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
        #print("phi:"+str(fullInstruction))

        if(len(instr) < 7):
            print("ERROR: phi instruction could not be parsed. Num of parts < 7.")
            print(instr)
            sys.exit(1)

        datatype = instr[0].strip()

        firstVal = instr[2].strip()
        firstCondBlock = instr[3].strip()[1:]+":"
        secondVal = instr[6].strip()
        secondCondBlock = instr[7].strip()[1:]+":"

        operands = [datatype, firstVal, firstCondBlock, secondVal, secondCondBlock]
        for operand in operands:
            operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+operand+"\")"
            self.output(operand_str)
            self.operandid += 1

    def parseAllocaInstruction(self, fullInstruction):
        if("[" in fullInstruction and "]" in fullInstruction):  # allocate arrays
            operand = fullInstruction[fullInstruction.find("[")+1:fullInstruction.rfind("]")].strip()
            operandSplit = operand.split("x")
            for operand in operandSplit:
                operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+str(operand).strip()+"\")"
                self.output(operand_str)
                self.operandid += 1
        else:  # allocate regular variables
            operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+"1"+"\")"
            self.output(operand_str)
            self.operandid += 1
            operandSplit = fullInstruction.split(" ")
            operand = operandSplit[3].replace(",", "").strip()
            operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+str(operand).strip()+"\")"
            self.output(operand_str)
            self.operandid += 1

    def parseLoadInstruction(self, instruction):
        operands = [None]*3
        ops = str(instruction).strip()
        ops = ops.replace("load ", "")

        # remove (i8, i8)* kind of datatypes
        while("(" in ops and ")" in ops):
            LocOpenBracket = ops.find("(")
            LocCloseBracket = ops.find(")")
            before = ops[:LocOpenBracket]
            after = ops[LocCloseBracket+1:]
            while(after[0] == "*" or after[0] == " "):
                after = after[1:]
            #print("b:"+before)
            #print("a:"+after)
            #sys.exit(1)
            ops = before+after


        ops = ops.split(", ")
        operands[0] = ops[0].strip()
        if(" = " in operands[0]):
            operands[0] = operands[0].split(" = ")[1].strip()
        operand2_split = ops[1].strip().split(" ")
        #print(ops)
        #print(operand2_split)

        operands[1] = operand2_split[0]
        operands[2] = operand2_split[1]

        for op in operands:
            op = str(op).strip()
            operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+op+"\")"
            self.output(operand_str)
            self.operandid += 1

    def parseStoreInstruction(self, instruction):
        operands = [None]*4
        ops = str(instruction).strip().replace("store ", "").split(", ")
        operand1_split = ops[0].strip().split(" ")
        operands[0] = operand1_split[0]
        operands[1] = operand1_split[1]
        operand2_split = ops[1].strip().split(" ")
        operands[2] = operand2_split[0]
        operands[3] = operand2_split[1]

        for op in operands:
            op = str(op).strip()
            operand_str = "operand("+str(self.instructionid)+";"+str(self.operandid)+";\""+op+"\")"
            self.output(operand_str)
            self.operandid += 1

    def parseGlobals(self, module):

        globals = list(module.global_variables)
        globals.extend(list(module.functions))
        for glob in globals:
            globalName = "@"+str(glob.name)
            # print(globalName)
            globType = str(glob.type)
            (globType, globTypeArraySize) = self.parseType(globType)
            glob_str = "global("+globalName+";"+globType+";"+str(globTypeArraySize)+")"
            self.output(glob_str)

    # mode 0: get return type of functions, if function types are supplied
    def parseType(self, operand, mode=0):
        # print(operand)
        if(mode == 0):
            if("(" in operand):
                operand = operand[:operand.find("(")].strip()
        if("[" in operand and "]" in operand): 
            inBrackets = operand[operand.find("[")+1:operand.find("]")].strip()
            # print("IB:"+str(inBrackets))
            if(" x ") in inBrackets:
                inBrackets = inBrackets.split(" x ")
                operand = inBrackets[1]+operand[operand.find("]")+1:]
                number = int(inBrackets[0].strip())
        else:
            number = 1
        # print(operand)
        operand = operand.strip()
        return (operand, number)

    def parseGetElementPtrInstructionGivenAsString(self, callInstruction, strInstruction):

        # create its own artificial instruction
        virtualRegister = self.getVirtualRegisterOfInstruction(callInstruction)
        virtualRegister += "_"+str(self.artificialInstructionId)
        opcode = "getelementptr"
        instruction_str = "instruction("+str(self.blockid)+";"+str(self.artificialInstructionId)+";\""+virtualRegister+"\";\""+opcode+"\")"
        self.output(instruction_str)
        # parse operands for artificial instruction

        # print(strInstruction)
        strInstruction = strInstruction[strInstruction.find("(")+1:strInstruction.find(")")].strip()
        operandList = strInstruction.split(", ")
        operandList = operandList[1:]

        operandList[0] = operandList[0][operandList[0].find("]")+1:]
        operandList[0] = operandList[0][operandList[0].find("*")+1:]

        # print(operandList)

        for operand in operandList:
            processedOperands = self.preprocessOperand(opcode, operand)
            for procOp in processedOperands:
                if(not procOp):  # skip empty operands
                    continue
                operand_str = "operand("+str(self.artificialInstructionId)+";"+str(self.operandid)+";\""+procOp+"\")"
                self.output(operand_str)
                self.operandid += 1

        self.artificialInstructionId -= 1
        return virtualRegister

    def preprocessOperand(self, instruction, operand):

        if(isinstance(instruction, str)):
            opcode = instruction
        else:
            opcode = str(instruction.opcode)

        operand = str(operand).strip()

        #if(opcode == "getelementptr"):
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
            #print(operand)
            operand = self.parseGetElementPtrInstructionGivenAsString(instruction, operand)
            return [operand.strip()]

        if(len(splitInstructions) > 1):
            # print(splitInstructions[0])
            # print(splitInstructions[1])
            if(splitInstructions[0][0] == "i" and splitInstructions[1]):  # remove integer type
                if(opcode == "call" or opcode == "ret" or "getelementptr"):  # do not parse types for call instructions (as they are given by function def)
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
                if(outputEntry[0] == '"' and outputEntry[-1] == '"'):  # and outputEntry[1:-1].isnumeric()):
                    newOutput.append(outputEntry[1:-1])
                    changed = True

            if(not changed):
                newOutput.append(outputEntry)

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

    @staticmethod
    def getControlFlowInfoFromBlock(block):
        label = ""
        preds = list()

        block = str(block).strip()
        if(len(block) == 0):
            return tuple()
        else:
            if(block[0] == "%"):  # first block in function
                number = block.split("=")[0].strip()[1:]
                if(not number.isnumeric()):
                    print("failed parsing control flow of blocks: block virtual address of first block in function is not numeric.")
                    return
                else:
                    label = str(int(number)-1)+":"
            if(block[0].isnumeric()):  # second or laterblock with given label.
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
    args = argparser.parse_args()

    parser = Parser(args.input)
    parser.parse()
    parser.printOutput()
