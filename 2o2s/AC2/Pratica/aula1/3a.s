.data

s1: .asciiz:"\nIntroduza um inteiro (sinal e módulo): "
s2: .asciiz:"\nValor em base 10 (signed): "
s3: .asciiz:"\nValor em base 2: "
s4: .asciiz:"\nValor em base 16: "
s5: .asciiz:"\nValor em base 10 (unsigned): "
s6: .asciiz:"\nValor em base 10 (unsigned), formatado: "

.text
.globl main

main:

while:
        li  $v0,8                       #
        la  $a0,str1                    #
        syscall                         # printStr("\nIntroduza um inteiro (sinal e módulo): ");

        li  $v0,5                       #
        syscall                         # value = readInt10();
        move    $t0,$v0                 #

        li  $v0,8                       #
        la  $a0,str2                    #
        syscall                         # printStr("\nValor em base 10 (signed): ");

        li  $v0,7                       #
        move    $a0,$t0                 #
        syscall                         # printInt10(value);

        li  $v0,8                       #
        la  $a0,str3                    #
        syscall                         # printStr("\nValor em base 2: ");

        li  $v0,6                       #
        move    $a0,$t0                 #
        li  $a1,2                       #            
        syscall                         # printInt(value, 2);

        li  $v0,8                       #
        la  $a0,str4                    #
        syscall                         # printStr("\nValor em base 16: ");

        li  $v0,6                       #
        move    $a0,$t0                 #
        li  $a1,16                      #            
        syscall                         # printInt(value, 16); 

        li  $v0,8                       #
        la  $a0,str5                    #
        syscall                         # printStr("\nValor em base 10 (unsigned): ");

        li  $v0,6                       #
        move    $a0,$t0                 #
        li  $a1,10                      #        
        syscall                         # printInt(value, 10); 

        li  $v0,8                       #
        la  $a0,str6                    #
        syscall                         # printStr("\nValor em base 10 (unsigned), formatado: ");

        li  $t1,5
        sll $t1,$t1,16
        li  $a1,10
        or  $a1,$a1,$t1
        li  $v0,6
        move    $a0,$t0                    
        syscall                        # printInt(value, 10 | 5 << 16);
    j   while

    li  $v0,0                      # return 0;
    jr  $ra        