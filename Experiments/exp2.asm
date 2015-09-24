.macro print_int($arg)
	li	$v0, 1		 # System call code for print_int
	li	$a0, $arg	 # Integer to print
	syscall			 # Print the integer
.end_macro

.macro print_str($arg)
	li	$v0, 4		 # System call code for print_str
	la	$a0, $arg	 # Address of the string to print
	syscall			 # Print the string	
.end_macro

.macro exit
	li	$v0, 10		 # Exit call code
	syscall			 # Exit from program
.end_macro

.data
str: .asciiz "the answer is ="

.text
.globl main
main:	print_int(5)
		print(str)
		exit
