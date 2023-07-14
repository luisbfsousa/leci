# Mapa de registos
# res: $v0 (2022)
# s: $a0
# *s: $t0
# digit: $t1
# Sub-rotina terminal: não devem ser usados registos $sx
.data
str: .asciiz "2020 e 2024 sao anos bissextos"
.text
.globl main

main: 	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	la $a0, str 	#str = 2022
	jal atoi
	
	lw $ra, 0($sp)
	addi $sp, $sp,4
	
	move $t0, $v0
	li $v0,1
	move $a0, $t0
	syscall
	jr $ra

atoi: li $v0,0 # res = 0;

while: lb $t0, 0($a0) # while(*s >= ...)
 	blt $t0, '0', endw #
 	bgt $t0, '9', endw # {
 	sub $t1,$t0, '0' # digit = *s – '0'
 	addiu $a0,$a0,1 # s++;
 	mul $v0,$v0,10 # res = 10 * res;
 	add $v0, $v0, $t1 # res = 10 * res + digit;
 	j while # }
 	
 endw:	jr $ra # termina sub-rotina 
 