    .equ BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ PORTE, 0x6110
    .equ LATE, 0x6120
    .equ resetCoreTimer, 12
    .equ readCoreTimer, 11
    .equ putChar, 3
    .equ printInt, 6
    .equ printString, 8
    .data
    .text
    .globl main
main: addi $sp, $sp, -20      # alocar espaço na stack
    sw $ra, 0($sp)
    sw $s0, 4($sp)
    sw $s1, 8($sp)
    sw $s2, 12($sp)
    sw $s3, 16($sp)
    lui $s0, BASE_HI        # s0 = 0xBF88
    li $s3, 0               # counter começa a 0 !!valor inicial 0 !!
    lw $s1, TRISE($s0)      # Load trise
    andi $s1, $s1, 0xFFC3   # trise = XXXX XXXX XX00 00XX !!E5 a RE2!!
    sw $s1, TRISE($s0)      # Store trise
while:lw $s2, LATE($s0)       # Load late
    sll $s3, $s3, 2         # s3 = s3 << 2, como o primeiro led é o 2, temos de fazer shift left  para meter o primeiro bit do contador no led 2
    andi $s2, $s2, 0xFFC3   # late = XXXX XXXX XX00 00XX   
    or $s2, $s2, $s3        # carregar counter no late
    sw $s2, LATE($s0)       # Store late
    srl $s3, $s3, 2           # mover o counter para a posição original
    move $a0, $s3             #$a0 é o primeiro argumento da função printInt que é o counter
    li $a1, 0x00050002        #$a1 é o segundo argumento da função printInt que é a base !! 5 bits no ecra!!
    li $v0, printInt
    syscall                 # printInt
    la $a0, '\n'
    li $v0, putChar
    syscall                 # putChar, mudar de linha
    addi $s3, $s3, -1       # decrementar o counter
    blt $s3, 0, lower       # se o counter for menor que 0, ir para lower !!modulo 25 decrescente!!
e_while:jal delay
    j while
lower:li $s3, 24              # counter = 24 
    j e_while
end: lw $ra, 0($sp)
    lw $s0, 4($sp)
    lw $s1, 8($sp)
    lw $s2, 12($sp)
    lw $s3, 16($sp)
    addi $sp, $sp, 20       # libertar espaço na stack
    li $v0, 0
    jr $ra
delay:li $v0, resetCoreTimer
    syscall
loop:li $v0, readCoreTimer
    syscall
    blt $v0, 4347826, loop
    jr $ra