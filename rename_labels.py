import re
from sys import argv

cmd, beforeFilename, afterFilename = argv

print("Python: " + beforeFilename + " -> " + afterFilename)

#beforeFilename = 'LogValuesDisassembled.il'
#afterFilename = 'LogValuesLabelsRemoved.il'

with open(afterFilename, 'w') as after :
	with open(beforeFilename, 'r') as before :
		for line in before :
			#mo = re.match(r'\s*IL_\w{4}:', line)
			#if mo :
			#	after.write(line[len(mo.group()):])
			#else :
			line = re.sub(r'IL_', r'svil_', line)
			after.write(line)

	

