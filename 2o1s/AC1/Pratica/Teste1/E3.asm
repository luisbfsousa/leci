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
      move $t2, $t1 #max2 = max1
      la $t3, array
      li $t0, 1 #i=0
for: bge $t0, SIZE, end#for{
     mul $t4, $t0, 4            #i*4
     addu $t3, $t3, $t4        #arra[i]    
     lw $t5, 0($t3)            #*array[i]

if: ble $t5, $t1, else  #array[i] > max1
    move $t2, $t1 #max2 = max1
    move $t1, $t5#ma1 = array[i]
    j endf

else:

if2: ble $t5,$t2, endf #(array[i] > max2 
     bge $t5, $t1 , endf#&&array[i] < ma1)
     #esta condicao resulta em #max2 = array[i]
     move $t2, $t5 #max2 = array[i]

endf: addi $t0, $t0, 1 #i++

end: jr $ra