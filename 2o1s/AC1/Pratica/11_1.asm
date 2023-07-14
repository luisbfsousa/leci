	.data
	.align 2
stg: 	.word 72343
	.asciiz " Napoleao"
	.space 8
	.asciiz " Bonaparte"
	.space 5
	#.align 2 
	.float 5.1
	
str1: 	.asciiz "\nN. Mec: "
str2: 	.asciiz "\nNome: "
str3: 	.asciiz "\nNota: "
	
	.text
	.globl main

main:	la $t0, stg		#$t0 = stg

	la $a0, str1
	li $v0, 4
	syscall 		#print_str("N.Mec")
	
	lw $a0, 0($t0) 		#$a0 = stg.id_number
	li $v0, 36
	syscall	
	
	la $a0, str2
	li $v0, 4
	syscall 		#print_str("Nome")
	
	addiu $a0, $t0, 22
	li $v0, 4
	syscall 		#print_str(stg.last_name)
	
	li $a0, ','
	li $v0, 11
	syscall			#print_char(",")
	
	addiu $a0, $t0, 4
	li $v0, 4
	syscall			#print_str(stg.last_name)
	
	la $a0, str3	
	li $v0, 4
	syscall			#print_str("nota")
	
	l.s $f12, 40($t0) 	#$f12 = stg.grade
	li $v0, 2
	syscall			#print_float(stg.grade)	
	

	jr $ra