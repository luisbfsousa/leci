.data 
st_array: 	.space 176   		#4 * 44
zero: 		.float 0.0
media: 		.space 4
minimo: 	.float -20
message: 	.asciiz "\nMedia:"
nome1: 		.asciiz "Primeiro Nome: "
nome2: 		.asciiz "Ultimo Nome: "
nota: 		.asciiz "Nota: "
nmec: 		.asciiz "N.Mec: "
str6: 		.asciiz "\n"
.text
.globl main

main:	la $a0,st_array
	addiu $sp, $sp, -4
	sw $ra,0($sp)
	jal read_data #void read_data(student *, int);
	lw $ra, 0($sp)
	addiu $sp,$sp, 4
	
	li $v0, 4
	la $a0, message #void maedia
	syscall
	
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal max
	lw $ra,0($sp)
	addiu $sp, $sp, 4
	move $a0, $v0
	
	li $v0, 2
	l.s $f12, media
	syscall #print(Media)
	
	addiu $sp,$sp,-4
	sw $ra,0($sp)
	jal print_student #void print_student(student p)
	lw $ra, 0($sp)
	addiu $sp, $sp, 4 #print_student (max)
	
	li $v0,0	#return 0
	jr $ra

read_data:	
#void read_data(student *st, int ns)
# *st = $a0
#ns = 4 alunos (176 bytes)
	la $t0, st_array
	li $t1, 0 #i = 0
	
for:	bge	$t1,4,endfor	# for(i=0; i < ns; i++)
	mul	$t2,$t1,44		
	addu	$t2,$t2,$t0	# &$t2 = offset 0 de student[i]
	
	li	$v0,4			
	la	$a0,nmec		
	syscall			# print_string("N. Mec: ");
	
	li	$v0,5			
	syscall				
	sw	$v0,0($t2)	# st[i].id_number = read_int();
	
	addiu	$t2,$t2,4
	
	li	$v0,4			
	la	$a0,nome1		
	syscall			# print_string("Primeiro Nome: ");
	
	li	$v0,8			
	move	$a0,$t2			
	li	$a1,17			
	syscall			# read_string(st[i].first_name, 17);
	
	mul	$t2,$t1,44		
	addu	$t2,$t2,$t0	# &$t2 = offset 0 de student[i]
	addiu	$t2,$t2,22	# &$t2 = offset 22 de student[i]
	
	li $v0, 4
	la $a0, nome2
	syscall 		#print_string("Ultimo Nome: ")
	
	li $v0, 8
	move $a0, $t2
	li $1, 14
	syscall 		#read_string(st[i].first_name, 17)
	
	mul	$t2,$t1,44		
	addu	$t2,$t2,$t0		# &$t2 = offset 0 de student[i]
	addiu	$t2,$t2,40		# &$t2 = offset 22 de student[i]
	
	li	$v0,4			#
	la	$a0,nota		#
	syscall				# print_string("Nota: ");
	
	li	$v0,6			#
	syscall				#
	s.s	$f0,0($t2)		# st[i].grade = read_float();
	
	addiu	$t1,$t1,1		# i++;
	j	for
endfor:	jr $ra
	
max:
# student *max(student *st, int ns, float *media)
# a0 -> *st
# ns -> 4 (176 bytes)
# return student with max grade and determine media
	la	$t0,st_array
	addiu	$t0,$t0,40
	addiu	$t9,$t0,176
	l.s	$f2,zero
	l.s	$f6,minimo		# max_grade
	
for_max:bge	$t0,$t9,endfor_max	# for(p = st; p < (st + ns); p++) 
	l.s	$f4,0($t0)		# p.grade
	add.s	$f2,$f2,$f4		# sum += p->grade;
	c.lt.s	$f6,$f4			# if (max_grade < p.grade)
	bc1f	end_if
	mov.s	$f6,$f4			# max_grade = p->grade;
	addiu	$v0,$t0,-40		# pmax = p;
end_if:
	addiu	$t0,$t0,44
	j	for_max
	
endfor_max:
	la	$t3,media
	li	$t0,4
	mtc1	$t0,$f0
	cvt.s.w	$f0,$f0
	div.s	$f2,$f2,$f0		# *media = sum / (float)ns;
	s.s	$f2,0($t3)		# store in media
	# return pmax = $v0
	jr	$ra
	
print_student:
# void print_student(student *p)
# p -> $a0
	move	$t0,$a0
	li	$v0,4		#
	la	$a0,str6	#
	syscall			# print_string("\n");
	li	$v0,36		#
	lw	$a0,0($t0)	#
	syscall			# print_intu10(p->id_number);

	li	$v0,4		#
	addiu	$a0,$t0,4	#
	syscall			# print_string(p->first_name);
	
	li	$v0,4		#
	addiu	$a0,$t0,22	#
	syscall			# print_string(p->last_name); 
	
	li	$v0,2		#
	addiu	$a0,$t0,40	#
	l.s	$f12,0($a0)	#
	syscall			# print_float(p->grade);
	
	jr	$ra