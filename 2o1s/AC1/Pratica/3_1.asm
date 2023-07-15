#$t0 soma / $t1 valor  /  $t2 i

	.data
int:	.asciiz "Introduzir numero: "
val:	.asciiz "Valor \n"
soma:	.asciiz "A soma dos numeros é: "
	.eqv print_string, 4
	.eqv print_int10, 1
	.eqv read_int, 5
	.text
	.globl main
	
main:	li $t0,0	#soma = 0
	li $t2,0	# i = 0
while:	bge $t2,5, endWhile #while (i <5)

	li $v0, print_string
	la $a0, int
	syscall	#print_string(Introduzir numero: )
	
	li $v0, read_int
	syscall
	or $t1, $0, $v0 #val = read_int()
	
	ble $t1,0, else #if (value>0)
	add $t0, $t0, $t1 #soma = soma + val
	j incremento
	
else:	li $v0, print_string
	la $a0, val
	syscall	#print_string("Valor ignorado: \n")
	
incremento:	addi  $t2,$t2,1 #i++
		j while
		
endWhile:	li $v0, print_string
		la $a0,soma
		syscall #print_string("A soma é: ")
		
		li $v0, print_int10
		or $a0,$t0,$0
		syscall #print_int10(soma)
		
		jr $ra
	
	
   