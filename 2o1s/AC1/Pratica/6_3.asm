# i : $t0
# j: $t1
# array[i][j]: $t3

	.data
array:	.word str1,str2,str3
str1: 	.asciiz "Array"
str2: 	.asciiz "de"
str3: 	.asciiz "ponteiros"
str4: 	.asciiz "\nString #"
str5: 	.asciiz ": "
	.text
	.eqv SIZE, 3
	.eqv print_string, 4
 	.eqv print_char, 11
	.globl main
	
main:	li	$t0,0
	
for:	bge	$t0,3,endfor
	li	$v0,4
	la	$a0,str4
	syscall			# print_string( "\nString #" ); 
	
	li	$v0,1
	move	$a0,$t0
	syscall			# print_int10( i ); 
	
	li	$v0,4
	la	$a0,str5
	syscall			# print_string( ": " ); 
	
	li	$t1,0		# j = 0;
	
while:	la 	$t3,array 	# $t3 = &array[0]
	sll 	$t2,$t0,2 	# escolher a string
	addu 	$t3,$t3,$t2 	# $t3 = &array[i]
	lw 	$t3,0($t3) 	# $t3 = array[i] = &array[i][0]
	addu 	$t3,$t3,$t1 	# $t3 = &array[i][j]
	lb 	$t3,0($t3) 	# $t3 = array[i][j] 
	
	beq	$t3,'\0',endw	# (array[i][j] != '\0') 
	
	li	$v0,11
	move	$a0,$t3
	syscall			# print_char(array[i][j]); 
	
	li	$v0,11
	li	$a0,'-'
	syscall			# print_char('-'); 
	
	addi	$t1,$t1,1
	j 	while
	
endw:	addi	$t0,$t0,1
	j	for
		
endfor:	jr	$ra

	
	
	
	
