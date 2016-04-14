print "Alias spelling checker for 2 letter words:"

from sys import argv
script, input_file = argv

input_file           = open( input_file )
alias_array_forwards = []
alias_array_bakwards = []
tests_passed         = True

# Build list of commands.
while True:

	line = input_file.readline()

	if not line: break

	# Make sure alias is in line.
	if "alias " in line:
		line = line.split('=')

		# Make sure alias is in first part of line.
		if "alias " in line[0]:
			command = line[0].replace("alias ", "")

			# Check characters with 2 letter length.
			if len( command ) == 2:
				alias_array_forwards.append(command)
				alias_array_bakwards.append(command[::-1])

# Compare lists.
for command in alias_array_forwards:
	if command in alias_array_bakwards and command != command[::-1]:
		print "%s: Fail! Consider renaming this command." % command
		print "          This could accedently be typed as %s" % command[::-1]
		tests_passed = False
	else:
		print "%s: Pass!" % command

if tests_passed:
	print "All tests passed!"
else:
	print "Some or all tests have failed! See the errors above!"
