# This program uses the instructions defined in the
# basic_microcode file. It adds the numbers from 100
# down to 1 and stores the result in memory location 256.
# (c) GPL3 Warren Toomey, 2012
#
main:	li r1, 10
	li r2, 5
	li r0, 7
	
	div r1, r1, r2