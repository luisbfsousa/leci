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

main:    li $t0, 0                 # i = 0
         la $t2, val               # $t2 = &(val[0])

do:      sll $t3, $t0, 2           # do {
         addu $t3, $t3, $t2
         lw $t1, 0($t3)            #   v = val[i]

         li $t4, SIZE
         srl $t4, $t4, 1
         addu $t4, $t4, $t0
         sll $t4, $t4, 2
         addu $t4, $t4, $t2
         lw $t5, 0($t4)
         sw $t5, 0($t3)           #   val[i] = val[i+SIZE/2]

         sw $t1, 0($t4)           #   val[i+SIZE/2] = v
         
         li $t6, SIZE
         srl $t6, $t6, 1
         addiu $t0, $t0, 1        # # ++i
         bge $t0, $t6, enddo      # } while (++i < (SIZE / 2))
         j do
         
enddo:   li $v0, PRINT_STR
         la $a0, str1
         syscall                  # print_string(str1)
         
         li $t0, 0                # i = 0
         
do2:     sll $t1, $t0, 2          # do {
         addiu $t0, $t0, 1        #   # i++
         addu $t3, $t1, $t2       #   # &val[i++]
         lw $a0, 0($t3)           #   # val[i++]
         li $v0, PRINT_INT10
         syscall                  #   print_int10(val[i++])
         
         li $v0, PRINT_CHAR
         li $a0, ','
         syscall                  #   print_char(',')
         
         bge $t0, SIZE, enddo2    # } while (i < SIZE)
         j do2
         
enddo2:  jr $ra