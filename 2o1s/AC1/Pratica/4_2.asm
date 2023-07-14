	.eqv read_str,8
	.eqv print_int10,1
	.eqv SIZE,20
	.data
	str: .space 21 #static char str[21]
	.text
	.globl main

main:	
	# p = $t1
	# num = $t0
	# char *p
	# int num
	
	la $a0, str
	li $v0, SIZE
	li $v0, read_str
	syscall
	la $t1, str #p=str
	
while: 				#while(*p != '\0'){
	lb $t2, 0($t1) 		#$t2 = *p
	beq $t2, '\0', endw

if: 	
	blt $t4, '0' endif	#if (str[i]...)
	bgt $t4, '9', endif
	addi $t0,$t0,1 		#num ++

endif:
	addi $t1, $t1, 1 	#i++
	j 	while
endw:	
	move $a0, $t0
	li $v0, print_int10
	syscall
	jr $ra
	