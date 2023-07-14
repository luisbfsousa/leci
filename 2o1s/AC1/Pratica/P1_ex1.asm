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

main:    li $t1, 0                           # n = 0
         li $t2, 0x7FFFFFFF                  # min = 0x7FFFFFFF
         li $t3, 0x80000000                  # max = 0x80000000

         li $v0, PRINT_STR
         la $a0, str1
         syscall                             # print_string(str)

do:      li $v0, READ_INT                    # do {
         syscall
         move $t0, $v0                       #   val = read_int()

if1:     beq $t0, 0, endif1                  #   if (val != 0) {

if2:     ble $t0, $t3, endif2                #     if (val > max)
         move $t3, $t0                       #       max = val

endif2:  bge $t0, $t2, endif1                #     if (val < min)
         move $t2, $t0                       #       min = val

endif1:                                      #   }
         addiu $t1, $t1, 1                   #   n++

         bge $t1, 20, enddo                  # } while ( (n < 20) 
         beq $t0, 0, enddo                   #           && (val != 0) )

         j do

enddo:   li $v0, PRINT_STR
         la $a0, str2
         syscall                             # print_string(str2)

         li $v0, PRINT_INT10
         move $a0, $t3
         syscall                             # print_int10(max)

         li $v0, PRINT_CHAR
         li $a0, ':'
         syscall                             # print_char(':')

         li $v0, PRINT_INT10
         move $a0, $t2
         syscall                             # print_int10(min)

         jr $ra
