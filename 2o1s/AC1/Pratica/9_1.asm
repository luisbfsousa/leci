	.data
k1:	.float 2.59375
k2:	.float 0.0
	.text
	.globl main
	
main:
do:	li $v0,5
	syscall 
	move $t0, $v0 		#val = read_int()
	mtc1 $t0, $f0
	cvt.s.w $f0, $f0 	#$f0 = (float)val
	
	la $t1, k1		
	l.s $f2, 0($t1)		#$f2 = 2.59375
	
	mul.s $f0, $f0, $f2	#res = val * 2.59375
	
	li $v0, 2
	mov.s $f12, $f0
	syscall			#print_float(res)
	
	la $t1, k2
	l.s $f2, 0($t1)		#$f2 = 0.0
	
	jr $ra
	