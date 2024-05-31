#int main(void){
#   int counter = 0;
#   while(1){
#       putChar('\r'); // cursor regressa ao inicio da linha no ecrã
#       printInt(counter, 10 | 4 << 16); // Ver nota de rodapé 1
#       resetCoreTimer();
#       while(readCoreTimer() < 200000);
#       counter++;}
#   return 0;
#} 


.data
.equ READ_CORE_TIMER, 11
.equ RESET_CORE_TIMER, 12
.equ PUT_CHAR, 3
.equ PRINT_INT, 6
.text
.globl main

main: 
        li  $t0,0                   # counter = 0
while:                                  # while (1) {

    la      $a0, '\r'                   # putChar()
    li      $v0, PUT_CHAR
    syscall

    li      $t1, 10
    li      $t2, 4
    sll     $t2, $t2, 16

    ori     $a0, $t0, 0
    or      $a1, $t1, $t2
    li      $v0, PRINT_INT
    syscall                             # printInt(counter, 10 | 4 << 16)


    li      $v0,RESET_CORE_TIMER #
    syscall                             # resetCoreTimer()

while2:
    li      $v0, READ_CORE_TIMER
    syscall
    move    $t3, $v0

    bge     $t3, 200000, endw2
    addi    $t0, $t0, 100


    j       while2
endw2:



    j       while                       # }
    jr      $ra                     #