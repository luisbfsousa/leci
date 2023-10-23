#Mapa de registos
#ms: $t0
#cc: $t2

.eqv PRINT_STR, 4
.eqv READ_INT, 5
.eqv PRINT_INT10, 1
.data
str: .asciiz "Teste-Pratico-1"
.text
.globl main

main: la $t0, str  

whiel: lb $t1, 0($t0)
       beq $t1, '\0', endw
       lb $t2, 0($t0)        #cc

if: bge $t2, '0', else
    li $t5, '0'
    sb $t5, 0($t0) 
    j endif

else:

if1: blt $t2, 'a', endif
     bgt $t2, 'z', endif
     lb $t3, 0($t0)
     sub $t3, $t3, 0x20 
     sb $t3, 0($t0)

endif: addiu $t0, $t0, 1
       j whiel

endw:

end: jr $ra