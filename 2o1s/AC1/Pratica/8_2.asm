# Mapa de registos
# n: $a0 -> $s0
# b: $a1 -> $s1
# s: $a2 -> $s2
# p: $s3
# digit: $t0
# Sub-rotina intermedia

	.data
num1:	.space 30
	.align 2
num2:	.space 30
	.align 2
num3:	.space 30
	.align 2	
	.text
	.globl main
	
main:	li $a0,10
	li $a1,2
	la $a2,num1	
	addi $sp,$sp,-4
	sw $ra,0($sp)
	jal itoa
	lw $ra,0($sp)
	addi $sp,$sp,4
	li $t0,0
	la $t1,num1
	
for1:	bge $t0,30,endfor1
	lb $a0,0($t1)
	li $v0,11
	syscall	
	addi $t1,$t1,1
	addi $t0,$t0,1
	j for1
	
endfor1:li $a0,10
	li $a1,8
	la $a2,num2	
	addi $sp,$sp,-4
	sw $ra,0($sp)
	jal itoa
	lw $ra,0($sp)
	addi $sp,$sp,4
	li $t0,0
	la $t1,num2
	
for2:	bge $t0,30,endfor2
	lb $a0,0($t1)
	li $v0,11
	syscall
	addi $t1,$t1,1
	addi $t0,$t0,1
	j for2
	
endfor2:li $a0,10
	li $a1,16
	la $a2,num3	
	addi $sp,$sp,-4
	sw $ra,0($sp)
	jal itoa
	lw $ra,0($sp)
	addi $sp,$sp,4
	li $t0,0
	la $t1,num3
	
for3:	bge $t0,30,endfor3
	lb $a0,0($t1)
	li $v0,11
	syscall	
	addi $t1,$t1,1
	addi $t0,$t0,1
	j for3
	
endfor3:jr $ra	

itoa:	move $t4,$a2
	move $t0,$a2
	
do:	rem $t1,$a0,$a1
	divu $a0,$a0,$a1	
	addi $sp,$sp,-20
	sw $t4,16($sp)
	sw $t0,12($sp)
	sw $t1,8($sp)
	sw $a0,4($sp)
	sw $ra,0($sp)	
	move $a0,$t1
	jal toascii	
	lw $t4,16($sp)
	lw $t0,12($sp)
	lw $t1,8($sp)
	lw $a0,4($sp)
	lw $ra,0($sp)
	addi $sp,$sp,20	
	sb $v0,0($t0)
	addi $t0,$t0,1
	ble $a0,0,enddo
	j do
	
enddo:	li $t2,'\0'
	sb $t2,0($t0)
	move $a0,$t4	
	addi $sp,$sp,-8
	sw $t4,4($sp)
	sw $ra,0($sp)
	jal strrev
	lw $t4,4($sp)
	lw $ra,0($sp)
	addi $sp,$sp,8	
	move $v0,$t4
	jr $ra
		
toascii:addi $a0,$a0,'0'

if:	ble $a0,'9',endif
	addi $a0,$a0,7
	
endif:	move $v0,$a0
	jr $ra
	
strrev:	move $v0,$a0
	move $t0,$a0
	move $t1,$a0
	
while1:	lb $t2,0($t1)
	beq $t2,'\0',endwhile1
	addiu $t1,$t1,1
	j while1
	
endwhile1: addiu $t1,$t1,-1

while2:	bge $t0,$t1,endwhile2
	addi $sp,$sp,-12
	sw $t0,8($sp)
	sw $t1,4($sp)
	sw $ra,0($sp)
	move $a0,$t0
	move $a1,$t1
	jal exchange
	lw $ra,0($sp)
	lw $t1,4($sp)
	lw $t0,8($sp)
	addi $sp,$sp,12
	addiu $t0,$t0,1
	addiu $t1,$t1,-1	
	j while2
		
endwhile2:jr $ra

exchange:lb $t0,0($a0)
	lb $t1,0($a1)
	sb $t0,0($a1)
	sb $t1,0($a0)
	jr $ra