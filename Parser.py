from llvmlite.binding import parse_assembly#, parse_bitcode, ModuleRef
import re

class Parser:

	def __init__(self):
		self.outputList = {
			"function": list(),
			"argument": list(),
			"block": list(),
			"instruction": list(),
			"operand": list()
		}

	def parse(self):
		with open('bo.ll', 'r') as file:
			code = file.read()

		module = parse_assembly(code)
		functionid = 0
		argumentid = 0
		blockid = 0
		instructionid = 0
		operandid = 0

		for function in module.functions:
			
			functiontype = "define"

			if(not any(function.blocks)):
				functiontype = "declare"

			function_str = "function("+str(functionid)+",\""+str(function.name)+"\",\""+functiontype+"\",\""+str(function.type).split('(')[0].strip()+"\")"
			self.output(function_str)
			
			for argument in function.arguments:
				arguments_str = "argument("+str(functionid)+","+str(argumentid)+",\""+str(argument.type)+"\")"
				self.output(arguments_str)
				argumentid += 1
			
			for block in function.blocks:
				block_str = "block("+str(functionid)+","+str(blockid)+")"
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
					
					
					
					instruction_str = "instruction("+str(blockid)+","+str(instructionid)+",\""+virtualRegister+"\",\""+str(instruction.opcode)+"\")"
					self.output(instruction_str)
					
					#operand processing
					if(str(instruction.opcode) == "alloca"): #alloca instruction
						if("[" in fullInstruction and "]" in fullInstruction):
							operand = fullInstruction[fullInstruction.find("[")+1:fullInstruction.rfind("]")].strip()
							operandSplit = operand.split("x")
							for operand in operandSplit:
								operand_str = "operand("+str(instructionid)+","+str(operandid)+",\""+str(operand).strip()+"\")"
								self.output(operand_str)
								operandid += 1
						else:
							operand_str = "operand("+str(instructionid)+","+str(operandid)+",\""+"1"+"\")"
							self.output(operand_str)
							operandid += 1
							
							operandSplit = fullInstruction.split(" ")
							operand = operandSplit[3].replace(",", "").strip()
							operand_str = "operand("+str(instructionid)+","+str(operandid)+",\""+str(operand).strip()+"\")"
							self.output(operand_str)
							operandid += 1
							
					else:
						for operand in instruction.operands:
							operand_str = "operand("+str(instructionid)+","+str(operandid)+",\""+self.preprocessOperand(str(instruction.opcode), operand)+"\")"
							self.output(operand_str)
							operandid += 1
					instructionid += 1
				blockid += 1

			functionid+=1

	@staticmethod
	def preprocessOperand(instruction, operand):
		operand = str(operand).strip()

		if(instruction == "call"):#call operand
			if("declare" in operand):#function call operand
				operand = operand[operand.find("@")+1:operand.rfind("(")].strip()
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


		outputSplitted = re.split(r',(?=")', output)
		newOutput = list()
		for outputEntry in outputSplitted:
			changed = False
			if(not outputEntry.isnumeric()):
				if(outputEntry[0] == '"' and outputEntry[-1] == '"' and outputEntry[1:-1].isnumeric()):
					newOutput.append(outputEntry[1:-1])
					changed = True
			
			if(not changed):
				newOutput.append(outputEntry)
			


		self.outputList[outputType].append(",".join(newOutput))
		
	def printOutput(self):
		for outputType in self.outputList.keys():
			output = "\n".join(self.outputList[outputType])
			outputFile = open(outputType+".facts", "w")
			outputFile.writelines(output)
			outputFile.close()

if __name__ == "__main__":
	parser = Parser()
	parser.parse()
	parser.printOutput()