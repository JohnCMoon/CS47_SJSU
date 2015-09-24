.include "cs47_macro.asm"

.data 0x10000000 # This forces the program to start the data section
                 # from this exact location
str:	.asciiz "abcdefgh"

.text
.globl main
main:
	# use of native instruction
	# Immediate values are within 16-bit range
	lw $t0, -0x8000($gp)	# load from (R[$gp] - 0x8000) = 0x1000 0000
	sw $t0, +0x7ffc($gp)	# store to (R[$gp] + 0x8000-0x4) = 0x1000 fffc
	
	# use of pseudo instruction
	# Immediate values are NOT within 16-bit range
	lw $t0, -0x8004($gp)	# load from (R[$gp] - 0x8004) = 0x0fff fffc
	sw $t0, +0x8000($gp)	# store to (R[$gp] + 0x8000) = 0x1001 0000

exit
