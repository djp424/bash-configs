print "Alias spelling checker for 2 letter words:"

from sys import argv
script, input_file = argv

input_file           = open( input_file )
alias_array_forwards = []
alias_array_bakwards = []
tests_passed         = 1

# Build list of commands.
while True:

	line = input_file.readline()

	if not line: break

	if "alias" in line:
		line      = line.split( '=' )
		command   = line[0].replace( "alias ", "" )

		# Only check commands that are 2 chars long.
		if len( command ) is 2:
			alias_array_forwards.append( command )
			alias_array_bakwards.append( command[::-1] )

# Compare lists.
for command in alias_array_forwards:
	if command in alias_array_bakwards and command != command[::-1]:
		print "%s: Fail! Consider renaming this command." % command
		print "          This could accedently be typed as %s" % command[::-1]
		tests_passed = 0
	else:
		print "%s: Pass!" % command

if tests_passed:
	print "All tests passed!"
else:
	print "Some or all tests have failed! See the errors above!"
