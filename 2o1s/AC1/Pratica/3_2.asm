# Mapa de registos:
# $t0 – value
# $t1 – bit
# $t2 - i
	.data
str1:	.asciiz "Introduza um numero: "
str2: 	.asciiz "O valor em binário e: \n" 
 	.eqv print_string,4
 	.eqv read_int,5
 	.eqv print_char,11
 	.text
 	.globl main
 	
main: 	la $a0,str1
 	li $v0,print_string # (instrução virtual)
 	syscall # print_string(str1);
 	
 	li $v0, read_int
 	syscall
 	or $t0, $0, $v0 # value=read_int();
 	
 	li $v0, print_string
 	la $a0, str2
 	syscall # print_string("\n0 valor em binario é: ");
 	
 	li $t2,0 # i = 0
 	
for: 	bge $t2,32,endfor # while(i < 32) {
 	andi $t1,$t0,0x80000000 # (instrução virtual)
 	
 	beq $t1,$0,else # if(bit != 0)
 	li $v0,print_char
 	li $a0, '1'
 	syscall 	#print_char("1")
 	j incrementar
 	
 	 # print_char('1');
else: 	# else
 	li $v0, print_char # print_char('0');
 	li $a0, '0'
 	syscall	# print_char('0');
 	# value = value << 1;
incrementar:	addi $t2, $t2, 1# i++;
 		sll $t0, $t0, 1# value = value << 1;
 		j for # }
endfor: #
 	jr $ra # fim do programa 