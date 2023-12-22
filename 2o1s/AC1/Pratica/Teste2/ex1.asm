.data
    .text
    .globl  primes

# Mapa de registos
# array    : $a0 -> $s0
# low    : $a1 -> $t0
# high    : $a2 -> $s1
# i    : $s2
# p    : $s3
# npr    : $s4

primes:
    move    $s0, $a0         # save $a0
    move    $t0, $a1         # move $a1 to $t0
    move    $s1, $a2         # save $a2

    move    $s3, $a0         # p = array
    addi    $s2, $t0, 1      # i = low + 1
    li      $s4, 0           # npr = 0

for:
    bge     $s2, $s1, endfor # for (i < high)

    addiu   $sp, $sp, -24    # prepare stack
    sw      $s0, 0($sp)      # save $s0 in stack
    sw      $s1, 4($sp)      # save $s1 in stack
    sw      $s2, 8($sp)      # save $s2 in stack
    sw      $s3, 12($sp)     # save $s3 in stack
    sw      $s4, 16($sp)     # save $s4 in stack
    sw      $ra, 20($sp)     # save $ra in stack

if:
    move    $a0, $s2         # pass i as arg
    jal     checkp           # checkp(i)
    bne     $v0, 1, endif     # if (checkp(i) == 1)

    lw      $s0, 0($sp)      # reload $s0 from stack
    lw      $s1, 4($sp)      # reload $s1 from stack
    lw      $s2, 8($sp)      # reload $s2 from stack
    lw      $s3, 12($sp)     # reload $s3 from stack
    lw      $s4, 16($sp)     # reload $s4 from stack
    lw      $ra, 20($sp)     # reload $ra from stack
    addiu   $sp, $sp, 24     # reset stack

    sw      $s2, 0($s3)      # *array = i
    addiu   $s3, $s3, 4      # array++
    addi    $s4, $s4, 1      # npr++

endif:
    addi    $s2, $s2, 1      # i++
    j       for

endfor:
    addu    $t1, $s3, $s4    # *(p + npr)
    sw      $s4, 0($t1)      # *(p + npr) = npr

    move    $v0, $s4         # return npr

    jr      $ra
