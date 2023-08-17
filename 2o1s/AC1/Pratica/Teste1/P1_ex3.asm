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
    li    $t0, 0             # n_even = 0;
    li    $t1, 0            # n_odd = 0;

    la    $t2, a            # p1 = a

    li    $t4, N            # 
    sll    $t4, $t4, 2        #
    addu    $t4, $t4, $t2        # $t4 = a + N

for:
    bge    $t2, $t4, endf        # for

    li    $v0, read_int
    syscall
    sw    $v0, 0($t2)        # p1 = read_int()

    addiu    $t2, $t2, 4        # p++
    j    for
endf:
    la    $t2, a
    la    $t3, B
for2:
    bge    $t2, $t4, endf2        # for

    lw    $t5, 0($t2)        # $t5 =p1
    rem    $t6, $t5, 2        # $t6 = p1 % 2

if:    beqz    $t6, else
    sw    $t5, 0($t3)        #p2 = p1
    addiu    $t3, $t3, 4        #p2++
    addi    $t1, $t1, 1        # n_odd++
    j     endif
else:
    addi    $t0, $t0, 1        # n_even++
endif:
    addiu    $t2, $t2, 4
    j    for2

endf2:
    la    $t3, B
    sll    $t5, $t1, 2        # n_odd * 4
    addu    $t5, $t3, $t5        # $t5 = b + n_odd

for3:
    bge    $t3, $t5, endf3        # for

    lw    $a0, 0($t3)        #
    li    $v0, print_int10
    syscall                # print_int10(*p2)

    addiu    $t3, $t3, 4
    j    for3

endf3:
    jr    $ra