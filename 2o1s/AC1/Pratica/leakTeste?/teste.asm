$LC0:
        .asciiz  "Result is: "
main:
        addiu   $sp,$sp,-40
        sw      $31,36($sp)
        sw      $fp,32($sp)
        move    $fp,$sp
        sw      $0,24($fp)
$L2:
        lui     $2,%hi(val.1482)
        lw      $3,24($fp)
        nop
        sll     $3,$3,2
        addiu   $2,$2,%lo(val.1482)
        addu    $2,$3,$2
        lw      $2,0($2)
        nop
        sw      $2,28($fp)
        lw      $2,24($fp)
        nop
        addiu   $3,$2,4
        lui     $2,%hi(val.1482)
        sll     $3,$3,2
        addiu   $2,$2,%lo(val.1482)
        addu    $2,$3,$2
        lw      $3,0($2)
        lui     $2,%hi(val.1482)
        lw      $4,24($fp)
        nop
        sll     $4,$4,2
        addiu   $2,$2,%lo(val.1482)
        addu    $2,$4,$2
        sw      $3,0($2)
        lw      $2,24($fp)
        nop
        addiu   $3,$2,4
        lui     $2,%hi(val.1482)
        sll     $3,$3,2
        addiu   $2,$2,%lo(val.1482)
        addu    $2,$3,$2
        lw      $3,28($fp)
        nop
        sw      $3,0($2)
        lw      $2,24($fp)
        nop
        addiu   $2,$2,1
        sw      $2,24($fp)
        lw      $2,24($fp)
        nop
        slt     $2,$2,4
        bne     $2,$0,$L2
        nop

        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     print_string
        nop

        sw      $0,24($fp)
$L3:
        lw      $2,24($fp)
        nop
        addiu   $3,$2,1
        sw      $3,24($fp)
        lui     $4,%hi(val.1482)
        sll     $3,$2,2
        addiu   $2,$4,%lo(val.1482)
        addu    $2,$3,$2
        lw      $2,0($2)
        nop
        move    $4,$2
        jal     print_int10
        nop

        li      $4,44                 # 0x2c
        jal     print_char
        nop

        lw      $2,24($fp)
        nop
        slt     $2,$2,8
        bne     $2,$0,$L3
        nop

        nop
        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        addiu   $sp,$sp,40
        j       $31
        nop

val.1482:
        .word   8
        .word   4
        .word   15
        .word   -1987
        .word   327
        .word   -9
        .word   27
        .word   16