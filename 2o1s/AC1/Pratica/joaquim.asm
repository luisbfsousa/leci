# O argumento da função é passado em $a0 
# O resultado é devolvido em $v0 
# Sub-rotina terminal: não devem ser usados registos $sx
	.data
	.eqv	print_int10,1
	.eqv	print_string,4
str:	.asciiz "ITED - orievA ed edadisrevinU"
	.text
	.globl 	main

main:	addiu	$sp,$sp,-4	# prologo
	sw	$ra,0($sp)
	
	la	$a0,str
	jal	strlen		# strlen(str)

	move	$a0,$v0		
	li	$v0,print_int10
	syscall
	
	la	$a0,str		# char *strrev(char *)
	jal	strrev
	
	move	$a0,$v0
	li	$v0,print_string
	syscall
	li	$v0,0		# return 0
	
	
	lw	$ra,0($sp)	# epilogo
	addiu	$sp,$sp,4
	jr	$ra

# str: $a0 -> $s0
# p1: $s1
# p2: $s2
# subrotina intermedia
strrev:
	addiu	$sp,$sp,-16
	sw	$ra,0($sp)
	sw	$s0,4($sp)	
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	
	move	$s0,$a0
	move 	$s1,$a0		# p1=str
	move	$s2,$a0		# p2=str
	
while1:	lb 	$t0,0($s2)	# while(*p2 != '\0')
	beq	$t0,'\0',endw1	# {
	addiu	$s2,$s2,1	# p2++
	j	while1		# }
endw1:	
	addiu	$s2,$s2,-1	# p2--
while2:	
	bgeu	$s1,$s2,endw2	# while(p1 < p2) {
	move	$a0,$s1
	move	$a1,$s2
	jal	exchange		# exchange(p1, p2)
	addiu	$s1,$s1,1	# p1++
	addiu	$s2,$s2,-1	# p2--
	j	while2		# {
endw2:
	move	$v0,$s0		# return str
	
	lw 	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	addiu	$sp,$sp,16
	jr	$ra
	
	
	
	
	
# c1: $a0
# c2: $a1
# subrotina terminal
exchange:
	lb	$t0,0($a0)	# $t0 = *c1
	lb	$t1,0($a1)	# $t1 = *c2

	sb	$t0,0($a1)
	sb	$t1,0($a0)
		
	jr	$ra
	

# len: $v0
# s  : $a0
strlen:	li 	$v0,0 		# len = 0; 
while: 	lb 	$t0,0($a0)	# while(*s++ != '\0') 
	addiu 	$a0,$a0,1	# *s++
	beq 	$t0,'\0',endw 	# { 
	addi 	$v0,$v0,1	# len++; 
	j 	while		# } 
endw: 
	jr 	$ra 		# 
