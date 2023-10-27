#Mapa de registos
#order: $t0
#i: $t1
#num: $t2

.eqv PRINT_STR, 4
.eqv READ_INT, 5
.eqv PRINT_INT10, 1
.data
str1: .asciiz "Enter a number: "
str2: .asciiz "No set bits"
.text
.globl main

main: li $t0, -1 #order
      li $v0, PRINT_STR 
      la $a0, str1
      syscall #print(...)      
      li $v0, READ_INT 
      syscall
      move $t2,$v0 # num = read_int() 
      li $t1, 0    #i = 0

do:

if: andi $t3, $t2, 1
    bne $t3, 1, endif
    move $t0, $t1

endif: srl $t2, $t2, 1  #num = num >> 1
    addi $t1, $t1, 1 # i++

while: blt $t1, 32, do

if1: beq $t0, -1, else
     li $v0, PRINT_INT10
     move $a0, $t0
     syscall
     j endif1

else: li $v0, PRINT_STR
      la $a0, str2
      syscall

endif1:

end: jr $ra