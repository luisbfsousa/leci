# O argumento da função é passado em $a0
# O resultado é devolvido em $v0
# Sub-rotina terminal: não devem ser usados registos $sx
	.data
	.text
str: 	.asciiz "Arquitetura 1"
	.globl main

main: 	addiu $sp,$sp, -4 # prologo
	sw $ra, 0($sp)
	
	la $a0, str
	jal strlen #strlen(str)
	
	move $a0,$v0
	li $v0,1
	
	syscall
	
	lw $ra, 0($sp)	#epilogo
	addiu $sp, $sp, 4
	jr $ra