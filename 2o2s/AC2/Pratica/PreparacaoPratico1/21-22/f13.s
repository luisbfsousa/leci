        .equ    SFR_BASE_HI, 0xBF88
        .equ    TRISE, 0x6100
        .equ    LATE, 0x6120

        .equ    PRINT_INT, 6
        .equ    PUT_CHAR, 3
        .equ    RESET_CORE_TIMER, 12
        .equ    READ_CORE_TIMER, 11

        .text
        .globl main

# Register Map
# pattern : $s0
# SFR_BASE_HI : $t1
main:   addiu   $sp, $sp, -8            # Prólogo
        sw      $ra, 0($sp)
        sw      $s0, 4($sp)

        lui     $t1, SFR_BASE_HI
        lw      $t2, TRISE($t1)
        andi    $t2, $t2, 0xFFE1        # 1111 1111 1110 0001
        sw      $t2, TRISE($t1)         # TRISE = TRISE & 0xFFE1

        li      $s0, 0b1001             # pattern = 0b1001

while:  sll     $t0, $s0, 1             # while (1) {
        lw      $t2, LATE($t1)
        andi    $t2, $t2, 0xFFE1
        or      $t2, $t2, $t0
        sw      $t2, LATE($t1)          #   LATE = (LATE & 0xFFE1) | (pattern << 1)

        li      $v0, PUT_CHAR
        li      $a0, '\n'
        syscall                         #   putChar('\r')

        li      $v0, PRINT_INT
        move    $a0, $s0
        li      $a1, 4
        sll     $a1, 16
        ori     $a1, $a1, 2
        syscall                         #   printInt(pattern, 2 | 4 << 16)

        not     $s0, $s0
        andi    $s0, $s0, 0x000F        #   pattern = !pattern & 0x000F

        li      $a0, 143                #   (1 / 7) * 1000 = 142,86 (aprox igual a 143)
        jal     delay                   #   delay(143)

        j       while                   # }

        lw      $s0, 4($sp)
        lw      $ra, 0($sp)
        addiu   $sp, $sp, 8
        
        jr      $ra





delay:  li      $v0, RESET_CORE_TIMER
        syscall
        li      $t0, 20000
        mul     $t0, $t0, $a0
whiled: li      $v0, READ_CORE_TIMER
        syscall
        bge     $v0, $t0, endwd
        j       whiled
endwd:  jr      $ra
