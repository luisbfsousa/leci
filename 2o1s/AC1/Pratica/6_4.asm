	.data
str1:	.asciiz "Nr. de parametros: "
str2: 	.asciiz "\nP"
str3:	.asciiz ": "
	.eqv SIZE, 3
	.eqv print_string, 4
 	.eqv print_char, 11
	.text
	.globl main
	
main:	move $t0,$a0
	move $t1,$a1
	
	li	$v0,4
	la	$a0,str1
	syscall			# print_string("Nr. de parametros: ");
	
	li	$v0,1
	move	$a0,$t0
	syscall			# print_int10(argc);
	
	li	$t2,0		# i = 0;
	
for:	bge	$t2,$t0,endfor
	li	$v0,4
	la	$a0,str2
	syscall			# print_string("\nP");
	
	li	$v0,1
	move	$a0,$t2
	syscall			# print_int10(i);
	
	li	$v0,4
	la	$a0,str3
	syscall			# print_string(": ");
	
	sll	$t3,$t2,2
	addu	$t3,$t3,$t1
	lw	$a0,0($t3)
	
	li	$v0,4
	syscall			# print_string(argv[i];)

	addi	$t2,$t2,1
	j	for

endfor:

	jr $ra
