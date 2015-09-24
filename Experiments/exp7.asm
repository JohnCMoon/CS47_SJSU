.include "cs47_macro.asm"

.data
msg1: 	.asciiz "Hi = "
msg2:	.asciiz ", Lo = "
nl:	.asciiz "\n"
	
.macro print_hi_lo
	print_str(msg1)
	mfhi 	$t3
	print_reg_int($t3)
	print_str(msg2)
	mflo	$t4
	print_reg_int($t4)
	print_str(nl)
.end_macro

.text
main:
	li	$t5, 5
	li	$t6, 6
	mthi	$t5
	mtlo	$t6

	print_hi_lo
	mfhi	$t1
	mflo	$t2
	mthi	$t2
	mtlo	$t1
	print_hi_lo
exit
