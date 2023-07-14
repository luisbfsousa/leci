	.data		#0x10100000
X1:	.asciiz "TEST1"
	.align 2
X2:	.space 20
X3:
	.text		#0x00400000
	.globl main
	
main: 	la $t4, X2
	ori $t5, $0, 4
	xor $t0,$t0,$t0
	xor $t1,$t1,$t1

L1:	beq $t0, $t5, L2
	add $t2,$t0,$t0
	add $t3,$t2,$t2
	addu $t3,$t3,$t4
	sw $t2,0,($t3)
	add $t1,$t1,$t2
	addi $t0, $t0,1
	j L1
	
L2: 	sw $t1,4($t3)
	jr $ra
