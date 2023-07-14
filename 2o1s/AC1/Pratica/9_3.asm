	.data
sum:	.double 0.0
array:	.space 80
	.text
	.globl main

main:	

average:	l.d $f2, sum	#double sum = 0.0
		li $t0,0 
		
for: 		bge $t0, $a1, endfor
		l.d $f4, 0($a0)
		add.d $f2, $f2, $f4
		addi $a0, $a0, 8
		addi $t0, $t0, 1
		j for

endfor:		mtc1 $a1, $f8 		#int to double
		cvt.d.w	$f8,$f8
		div.d	$f0,$f2,$f8	# return sum / (double)n;
		jr	$ra
	