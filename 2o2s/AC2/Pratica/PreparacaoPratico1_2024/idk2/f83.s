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
# counter : $s0
main:   addiu   $sp, $sp, -8
        sw      $s0, 0($sp)
        sw      $ra, 4($sp)

        lui     $t0, SFR_BASE_HI
        lw      $t1, TRISE($t0)
        andi    $t1, $t1, 0xFF83                # 1111 1111 1000 0011
        sw      $t1, TRISE($t0)                 # TRISE = TRISE & 0xFF83

        li      $s0, 0                          # counter = 0

while:  lw      $t1, LATE($t0)                  # while (1) {
        andi    $t1, $t1, 0xFF83
        sll     $t2, $s0, 2
        or      $t1, $t1, $t2
        sw      $t1, LATE($t0)                  #   LATE = (LATE & 0xFF83) | (counter << 2)

        li      $v0, PRINT_INT
        move    $a0, $s0
        li      $a1, 5
        sll     $a1, $a1, 16
        ori     $a1, $a1, 2
        syscall                                 #   printInt(counter, 2 | 5 << 16)

        li      $v0, PUT_CHAR
        li      $a0, '\n'
        syscall                                 #   putChar('\n')

        addiu   $s0, $s0, -1                    #   counter--
if1:    bge     $s0, 0, endif1                  #   if (counter < 0)
        li      $s0, 24                         #     counter = 24

endif1: li      $a0, 286                        #   // 1000 / 3.5 = 285,7 (aprox igual a 286)
        jal     delay                           #   delay(286)

        j       while                           # }

        lw      $ra, 4($sp)
        lw      $s0, 0($sp)
        addiu   $sp, $sp, 8

        jr      $ra



delay:  li      $v0, RESET_CORE_TIMER
        syscall
        mul     $a0, $a0, 20000
whiled: li      $v0, READ_CORE_TIMER
        syscall
        bge     $v0, $a0, endwd
        j       whiled
endwd:  jr      $ra
