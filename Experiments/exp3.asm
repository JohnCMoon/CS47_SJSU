.include "cs47_macro.asm"

.data
str: .asciiz "the answer is ="

.text
.globl main
main:	print_int(5)
	print_str(str)
	exit
