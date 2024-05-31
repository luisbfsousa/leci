    .data

    .equ BASE,0xBF88
    .equ TRISE,0x6100
    .equ PORTE,0x6110
    .equ LATE,0x6120

    .equ RESET_CORE_TIMER,12
    .equ READ_CORE_TIMER,11
    .equ PRINT_INT,6
    .equ PUT_CHAR,3

    .text
    .globl main

main:
    addi $sp,$sp,-20
    sw $ra,0($sp)
    sw $s0,4($sp)
    sw $s1,8($sp)
    sw $s2,12($sp)
    sw $s3,16($sp)

    li $s2,1

    lui $s0,BASE
    lw $s1,TRISE($s0)
    andi $s1,$s1,0xFF83
    sw $s1,TRISE($s0)

loop:
    li $t0,5
    sll $t0,$t0,16
    ori $t0,$t0,2

    move $a0,$s2
    move $a1,$t0

    li $v0,PRINT_INT
    syscall

    li $a0,'\n'
    li $v0,PUT_CHAR
    syscall

    lw $s3,LATE($s0)
    andi $s3,$s3,0xFF83
    sll $s3,$s3,2
    or $s3,$s2,$s3
    sw $s1,LATE($s0)

    sll $s2,$s2,1
    andi $s2,$s2,0x0000FFFF

    li $a0,434
    jal delay

    j loop

    lw $s3,16($sp)
    lw $s2,12($sp)
    lw $s1,8($sp)
    lw $s0,4($sp)
    lw $ra,0($sp)

    addi $sp,$sp,20

    li $v0,0
    jr $ra

delay:
    li $v0,RESET_CORE_TIMER
    syscall

whiled:
    li $v0,READ_CORE_TIMER
    syscall

    li $t0,20000
    mul $t0,$a0,$t0
    blt $v0,$t0,whiled

    jr $ra  