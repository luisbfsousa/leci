	.eqv read_str,8
	.eqv print_int10,1
	.eqv SIZE,20
	.data
	str: .space 21 #static char str[21]
	.text
	.globl main

main:	
	# $t0 -> num
	# $t1 -> i
	# $t2 -> endereço da String
	# $t3 -> endereço posição i da String
	# $t4 -> conteúdo  de str[i]
	
	la $a0, str
	li $v0, SIZE
	li $v0, read_str
	syscall
	li $t0,0 		#num=0
	li $t1,0 		#i=0
	
while: 				#while(str[i] != '\0'){
	la $t2,str 		#$t2 =&str[0]
	addu $t3,$t2,$t1	#$t3 =&str[i]
	lb $t4,0($t3) 		#$t4 = str[i]
	beq $t4, '\0', endw	#

if: 	blt $t4, '0' endif	#if (str[i]....
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
