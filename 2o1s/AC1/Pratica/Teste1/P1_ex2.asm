# Mapa de registos
# i:         $t0
# v:         $t1
# &(val[0]): $t2

         .eqv PRINT_STR, 4
         .eqv PRINT_CHAR, 11
         .eqv PRINT_INT10, 1

         .eqv SIZE, 8

         .data
val:     .word 8, 4, 15, -1987, 327, -9, 27, 16
str1:    .asciiz "Result is: "

         .text
         .globl main

main:    li $t0, 0                 # 
         la $t2, val               #

do:      sll $t3, $t0, 2           # 
         addu $t3, $t3, $t2
         lw $t1, 0($t3)            #  

         li $t4, SIZE
         srl $t4, $t4, 1
         addu $t4, $t4, $t0
         sll $t4, $t4, 2
         addu $t4, $t4, $t2
         lw $t5, 0($t4)
         sw $t5, 0($t3)           # 

         sw $t1, 0($t4)           #  
         
         li $t6, SIZE
         srl $t6, $t6, 1
         addiu $t0, $t0, 1        # #
         bge $t0, $t6, enddo      # }
         j do
         
enddo:   li $v0, PRINT_STR
         la $a0, str1
         syscall                  # 
         
         li $t0, 0                # 
         
do2:     sll $t1, $t0, 2          # do 
         addiu $t0, $t0, 1        #   #
         addu $t3, $t1, $t2       #   # 
         lw $a0, 0($t3)           #   #
         li $v0, PRINT_INT10
         syscall                  #   
         
         li $v0, PRINT_CHAR
         li $a0, ','
         syscall                  #   
         
         bge $t0, SIZE, enddo2    # 
         j do2
         
enddo2:  jr $ra
