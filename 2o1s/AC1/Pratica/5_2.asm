# Mapa de registos
# p: $t0
# *p: $t1 (Registo temporário para guardar o valor armazenado em memória)
# lista+Size: $t2

.data
str1: .asciiz "; "
str2: .asciiz "\nConteudo do array:\n"
lista:.word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15
.eqv print_int10,1
.eqv print_string,4
.eqv SIZE,10 
.text
.globl main

main: 	li      $v0,print_string                       
        la      $a0,str2
        syscall  # print_string(\nConteudo do array:\n)
        
	la $t0,lista # p = lista
 	li $t2,SIZE #
 	sll $t2,1 #
 	addu $t2, lista, SIZE # $t2 = lista + SIZE;
 	
while: 	bgeu $t0,SIZE,endwhile # while(p < lista+SIZE) {
 	lw $t1,0($t1) # $t1 = *p;
 	
 	li $v0, print_int10
 	la $a0, ($t1)
 	syscall # print_int10( *p );
 	
 	li $v0,print_string 
 	la $a0, str1
 	syscall # print_string(;);
 	
 	addiu $t0,$t0, 1 # p++;
 	j while # }
 	
 endwhile : jr $ra # termina o programa 