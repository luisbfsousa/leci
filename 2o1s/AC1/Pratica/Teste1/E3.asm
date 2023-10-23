# Mapa de registos
# i   : $t0 
# max1: $t1
# max2: $t2

.data
.eqv SIZE,5
.eqv read_int, 5
.eqv print_int10, 1
array: .word 5, 27, 3, 11, 56
.text
.globl main

main: li $t1, 1
      sll $t1, $t1, 31
      move $t2, $t1 
      la $t3, array
      li $t0, 1 
for: bge $t0, SIZE, end
     mul $t4, $t0, 4            #
     addu $t3, $t3, $t4
     lw $t5, 0($t3)            

if: ble $t5, $t1, else  #a
    move $t2, $t1 #
    move $t1, $t5#
    j endf

else:

if2: ble $t5,$t2, endf #
     bge $t5, $t1 , endf#
     #esta condicao resulta em 
     move $t2, $t5 #

endf: addi $t0, $t0, 1 #

end: jr $ra
