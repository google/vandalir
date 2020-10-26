from llvmlite.binding import parse_assembly, parse_bitcode#, ModuleRef
import re
import argparse
import os
import sys

FACTS_DIR = "facts"

class Parser:

	def __init__(self, input):
		self.inputFile = input
		self.outputList = {
			"function": list(),
			"argument": list(),
			"block": list(),
			"instruction": list(),
			"operand": list(),
			"predecessor": list()
		}

	def parse(self):
		
		module = self.getInputFile()

		functionid = 0
		argumentid = 0
		blockid = 0
		instructionid = 0
		operandid = 0

		for function in module.functions:
			
			functiontype = "define"

			if(not any(function.blocks)):
				functiontype = "declare"

			function_str = "function("+str(functionid)+";\""+str(function.name)+"\";\""+functiontype+"\";\""+str(function.type).split('(')[0].strip()+"\")"
			self.output(function_str)
			
			for argument in function.arguments:
				arguments_str = "argument("+str(functionid)+";"+str(argumentid)+";\""+str(argument.type)+"\")"
				self.output(arguments_str)
				argumentid += 1
			
			for block in function.blocks:
				(label, preds) = self.getControlFlowInfoFromBlock(block)
				if(len(preds)>0):
					for predecessor in preds:
						pred_str = "predecessor("+str(functionid)+";"+str(label)+";"+str(predecessor)+")"
						self.output(pred_str)
				else:
					predecessors = "none"
				block_str = "block("+str(functionid)+";"+str(blockid)+";\""+str(label)+"\")"
				
				self.output(block_str)
				for instruction in block.instructions:
					fullInstruction = str(instruction).strip()
					#print(fullInstruction)

					#get virtual Register number
					virtualRegister = "%0"
					splitFuillInstruction = fullInstruction.split(" ")
					if(splitFuillInstruction[0][0] == "%" and splitFuillInstruction[0][1:].isnumeric()):
						virtualRegister = "%"+str(splitFuillInstruction[0][1:])
					#print(virtualRegister)
					
					
					
					instruction_str = "instruction("+str(blockid)+";"+str(instructionid)+";\""+virtualRegister+"\";\""+str(instruction.opcode)+"\")"
					self.output(instruction_str)
					
					#operand processing
					if(str(instruction.opcode) == "alloca"): #alloca instruction
						if("[" in fullInstruction and "]" in fullInstruction):
							operand = fullInstruction[fullInstruction.find("[")+1:fullInstruction.rfind("]")].strip()
							operandSplit = operand.split("x")
							for operand in operandSplit:
								operand_str = "operand("+str(instructionid)+";"+str(operandid)+";\""+str(operand).strip()+"\")"
								self.output(operand_str)
								operandid += 1
						else:
							operand_str = "operand("+str(instructionid)+";"+str(operandid)+";\""+"1"+"\")"
							self.output(operand_str)
							operandid += 1
							
							operandSplit = fullInstruction.split(" ")
							operand = operandSplit[3].replace(",", "").strip()
							operand_str = "operand("+str(instructionid)+";"+str(operandid)+";\""+str(operand).strip()+"\")"
							self.output(operand_str)
							operandid += 1
							
					if(str(instruction.opcode) == "br"): #br instruction
						for operand in instruction.operands:
							processedOperand = self.preprocessOperand(str(instruction.opcode), operand)
							if not processedOperand:#skip empty operands
								continue
							operand_str = "operand("+str(instructionid)+";"+str(operandid)+";\""+self.preprocessOperand(str(instruction.opcode), operand)+"\")"
							self.output(operand_str)
							operandid += 1
					else:
						for operand in instruction.operands:
							processedOperand = self.preprocessOperand(str(instruction.opcode), operand)
							if not processedOperand:#skip empty operands
								continue
							operand_str = "operand("+str(instructionid)+";"+str(operandid)+";\""+processedOperand+"\")"
							self.output(operand_str)
							operandid += 1
					instructionid += 1
				blockid += 1

			functionid+=1

	@staticmethod
	def preprocessOperand(instruction, operand):
		operand = str(operand).strip()
		#print("operand:"+str(operand))

		if(instruction == "call"):#call operand
			if("declare" in operand):#function call operand
				operand = operand[operand.find("@")+1:operand.find("(")].strip()
			if("define" in operand):#function call operand
				operand = operand[operand.find("@")+1:operand.find("(")].strip()
		else:
			if("; " in operand):
				operand = operand.split("; ")[0]
		splitInstructions = operand.split(" ")
		if(len(splitInstructions) > 1):
			#print(splitInstructions[0])
			#print(splitInstructions[1])
			if(splitInstructions[0][0] == "i" and splitInstructions[0][1:].isnumeric()):#remove integer type
				operand = splitInstructions[1]
			elif(splitInstructions[0][0] == "%" and splitInstructions[0][1:].isnumeric()):#return virtual register
				operand = splitInstructions[0]
			elif(splitInstructions[0][0] == "@"): #return global variable
				operand = splitInstructions[0]
			else:
				pass
		operand = operand.strip()
		return operand
			
	def output(self, output):

		output = output.replace("\n", "").strip()+"."
		#print(output)
		outputType = output.split("(")[0]

		output = output[output.find("(")+1:output.rfind(")")]


		outputSplitted = output.split(";")
		newOutput = list()
		for outputEntry in outputSplitted:
			changed = False
			if(not outputEntry.isnumeric()):
				if(outputEntry[0] == '"' and outputEntry[-1] == '"'): #and outputEntry[1:-1].isnumeric()):
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
			with open(self.inputFile, 'rb') as file:
				code = file.read()
				module = parse_bitcode(code)
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
			if(block[0] == "%"):#first block in function
				number = block.split("=")[0].strip()[1:]
				if(not number.isnumeric()):
					print("failed parsing control flow of blocks: block virtual address of first block in function is not numeric.")
					return
				else:
					label = str(int(number)-1)+":"
			if(block[0].isnumeric()):#second or laterblock with given label.
				label = block.split(":")[0]+":"
				searchtxt = block[block.find("preds = ")+8:]
				#print("\n\n\n\n"+searchtxt)
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