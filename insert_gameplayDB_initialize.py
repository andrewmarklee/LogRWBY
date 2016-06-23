exit()

#giant bug somewhere, created 25 GB!!! file

# The call to the function must already be inserted
# The function signature and braces must be present 

import re

inputFilename = "inputcopy.il"
disassembledFilename = "MyGameplayDatabaseLabelsRenamed.il"
outFilename = "output.il"

funcHead = "          AdjustAbilities() cil managed\n"
funcEnd = "  } // end of method MyGameplayDatabase::AdjustAbilities\n"

with open(outFilename, 'w') as out :
	with open(inputFilename, 'r') as input :
		with open(disassembledFilename, 'r') as dis :
			out.write('// sevenvolts - changing abilities through GameplayDatase::Initialize()\n')
# three files are opened

			disline = dis.readline()
			while disline != funcHead :
				if disline == '' :
					print('Error: Function header not found in disassembled file.')
				disline = dis.readline()

			inputline = input.readline()
			while inputline != '' :
				out.write(inputline)
				if inputline == funcHead :
					disline = dis.readline()
					while disline != funcEnd :
						out.write(disline)
						if disline == '' :
							print('Error: Function footer not found in disassembled file.')
						disline = dis.readline()
					while inputline != funcEnd :
						inputline = input.readline()
				
			#read lines from disassembledFilename until function header is reached
			
			#read a line from input
			#while input file is not empty
			#	write the line
			#	if it's the function header
			#		write lines from disassembledFilename until function end is met
			#   	read _input_ lines until function end is met
