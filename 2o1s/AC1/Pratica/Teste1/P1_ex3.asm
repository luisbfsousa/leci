# Mapa de Registos
# n_even     : $t0
# n_odd     : $t1
# p1        : $t2
#p2        : $t3 

    .data
    .eqv N, 35
    .eqv read_int, 5
    .eqv print_int10, 1
a:    .space 140
B:    .space 140 

    .text
    .globl main
main:
    li    $t0, 0            
    li    $t1, 0       

    la    $t2, a            

    li    $t4, N            # 
    sll    $t4, $t4, 2        #
    addu    $t4, $t4, $t2        # 

for:
    bge    $t2, $t4, endf        # 

    li    $v0, read_int
    syscall
    sw    $v0, 0($t2)       

    addiu    $t2, $t2, 4        
    j    for
endf:
    la    $t2, a
    la    $t3, B
for2:
    bge    $t2, $t4, endf2     

    lw    $t5, 0($t2)       
    rem    $t6, $t5, 2       

if:    beqz    $t6, else
    sw    $t5, 0($t3)       
    addiu    $t3, $t3, 4      
    addi    $t1, $t1, 1   
    j     endif
else:
    addi    $t0, $t0, 1      
endif:
    addiu    $t2, $t2, 4
    j    for2

endf2:
    la    $t3, B
    sll    $t5, $t1, 2       
    addu    $t5, $t3, $t5       

for3:
    bge    $t3, $t5, endf3        

    lw    $a0, 0($t3)        #
    li    $v0, print_int10
    syscall                

    addiu    $t3, $t3, 4
    j    for3

endf3:
    jr    $ra
    
    
    Todos certos, 17 no teste
