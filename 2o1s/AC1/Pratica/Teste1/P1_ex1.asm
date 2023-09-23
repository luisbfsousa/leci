# Mapa de registos
# val: $t0
# n:   $t1
# min: $t2
# max: $t3

         .eqv PRINT_STR, 4
         .eqv READ_INT, 5
         .eqv PRINT_CHAR, 11
         .eqv PRINT_INT10, 1

         .data
str1:    .asciiz "Digite ate 20 inteiros (zero para terminar):"
str2:    .asciiz "Maximo/minimo sao: "

         .text
         .globl main

main:    li $t1, 0                           # 
         li $t2, 0x7FFFFFFF                  # 
         li $t3, 0x80000000                  # 

         li $v0, PRINT_STR
         la $a0, str1
         syscall                             # 

do:      li $v0, READ_INT                    # 
         syscall
         move $t0, $v0                       #  

if1:     beq $t0, 0, endif1                  #   

if2:     ble $t0, $t3, endif2                #     
         move $t3, $t0                       #  

endif2:  bge $t0, $t2, endif1               #
         move $t2, $t0                       # 

endif1:                                      #   }
         addiu $t1, $t1, 1                   # 

         bge $t1, 20, enddo                  # } 
         beq $t0, 0, enddo                   #           

         j do

enddo:   li $v0, PRINT_STR
         la $a0, str2
         syscall                             # 

         li $v0, PRINT_INT10
         move $a0, $t3
         syscall                             #

         li $v0, PRINT_CHAR
         li $a0, ':'
         syscall                             # 

         li $v0, PRINT_INT10
         move $a0, $t2
         syscall                             # 

         jr $ra
