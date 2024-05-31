.data
    .text
    .globl main
main:
    li      $t1, 0        # cnt = 0

do:
    li      $v0, 1        # c = inkey()
    syscall
    move    $t0, $v0      # c = v0

if: 

    move    $a0, $t0      # putChar( c )
    li      $v0, 3
    syscall

    addi    $t1, $t1, 1   # cnt++
    bne     $t0, 10, do   # while( c != '\n' )


do_while:

    move    $a0, $t1      # printInt( cnt, 10 )
    li      $v0, 10
    li 	    $v0, 6
    syscall

    jr      $ra           # return 0
