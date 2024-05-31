    .equ BASE_HI,0xBF88
    .equ TRISE,0x6100
    .equ PORTE,0x6110
    .equ LATE,0x6120
    .equ resetCoreTimer,12
    .equ readCoreTimer,11
    .equ putChar,3
    .equ printInt,6
    .equ printString,8
    .data
    .text
    .globl main
main:addi $sp, $sp, -20
    sw  $ra, 0($sp)
    sw  $s0, 4($sp)
    sw  $s1, 8($sp)
    sw  $s2, 12($sp)
    sw  $s3, 16($sp)
    lui $s0, BASE_HI
    li  $s3, 0
    lw  $s1, TRISE($s0)
   andi $s1, $s1,0xFFC3
    sw  $s1, TRISE($s0)
while: lw$s2,LATE($s0)
    sll $s3, $s3, 2 
   andi $s2, $s2, 0xFFC3
    or  $s2, $s2, $s3   
    sw  $s2, LATE($s0) 

    srl $s3, $s3, 2
   move $a0, $s3
    li  $a1, 0x00050002 
    li  $v0, printInt
    syscall  
    la  $a0, '\n'
    li  $v0, putChar
    syscall 
   addi $s3, $s3, -1
    blt $s3, 0,   lower
e_while:jal dela
    j while
lower:li$s3, 24
    j e_while
end:lw  $ra, 0($sp)
    lw  $s0, 4($sp)
    lw  $s1, 8($sp)
    lw  $s2, 12($sp)
    lw  $s3, 16($sp)
   addi $sp, $sp, 20
    li  $v0, 0
    jr  $ra
delay:li$v0, resetCoreTimer
    syscall
loop: li$v0, readCoreTimer
    syscall
    blt $v0, 4347826, loop
    jr  $ra