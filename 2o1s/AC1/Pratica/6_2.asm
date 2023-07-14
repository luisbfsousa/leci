	.data
array:	.word str1,str2,str3
str1: 	.asciiz "Array"
str2: 	.asciiz "de"
str3: 	.asciiz "ponteiros"
	.text
	.globl main
	
main:
	la	$t0,array
	addi	$t1,$t0,12
	
for:	bge	$t0,$t1,endfor

	lw	$a0,0($t0)
	li	$v0,4
	syscall			
	
	li	$a0,' '
	li	$v0,11
	syscall
	
	addi	$t0,$t0,4
	j	for
endfor:
	jr	$ra
