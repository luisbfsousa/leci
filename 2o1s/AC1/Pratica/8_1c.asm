.data
str1:	.asciiz	"2020 e 2024 são anos bissextos"
str2:	.asciiz	"101101"
.text
.globl main

main:	la	$a0,str2
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	jal	binario
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	move	$a0,$v0
	li	$v0,1
	syscall
	jr	$ra

atoi: 	li	$t1,0

while:	lb	$t2,0($a0)
	blt	$t2,'0',endw
	bgt	$t2,'9',endw
	subu	$t0,$t2,'0'
	addiu	$a0,$a0,1
	mul	$t1,$t1,10
	addu	$t1,$t1,$t0
	j	while
endw:
	move	$v0,$t1
	jr	$ra
	
binario:
	# $a0 = string s
	# $t0 = digit
	# $t1 = res
	li	$t0,0
whilee:	lb	$t2,0($a0)
	beq	$t2,'\0',endww
	addi	$a0,$a0,1
	addi	$t0,$t0,1
	j	whilee
endww:
	addiu	$a0,$a0,-1			# começar no bit menos significativo
	li	$t9,1				# index
	li	$t5,0				# res
while_: lb	$t2,0($a0)			# get char
	beq	$t0,0,endw_			# chegar a fim
	sub	$t2,$t2,'0'			# get integer 1 ou 0
	beq	$t2,0,else			# if == 1 {
	addu	$t5,$t5,$t9			# $t5 += i
else:
	sll	$t9,$t9,1			# 1 ou 0 * 2^i
	addiu	$a0,$a0,-1			# ir da direita para a esquerda
	addiu	$t0,$t0,-1			# length--
	j	while_
endw_:
	move	$v0,$t5
	jr	$ra
	
