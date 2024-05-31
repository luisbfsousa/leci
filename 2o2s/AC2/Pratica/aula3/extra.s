#mapa de registos
#v = $a0

.data
.equ TRISE,0x6100 
.text
.globl main

main:	la $v0, $a0
	li $v0, 0
	
	lw $t1,TRISE($t1) 
	
while:	la $t1, $v0
	sb $v0, 0($t1)
	
	jal delay
	
	xor $v0,$v0,1
	
	j while
	
end: jr $ra
	
