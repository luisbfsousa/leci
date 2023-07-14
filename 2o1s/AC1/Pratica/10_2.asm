	.data
k1:	.float	1.0
	.text
	.globl main
main:	addiu	$sp,$sp, -4
	sw	$ra,0($sp)
	
	li	$v0,6
	syscall
	mov.s	$f12, $f0
	
	li	$v0,5
	syscall
	move	$a0,$v0
	jal	xtoy
	
	mov.s	$f12,$f0
	li	$v0,2
	syscall
	
	lw	$ra, 0($sp)
	addiu	$sp,$sp,4

	jr	$ra	

# Mapa de registos
# array: $a0 -> $s0
# nval:	$a1 -> $s1
# resultado: $f0
# i: $s2
# media: $f20
# soma: $f22
# função intermédia
var:	addiu	$sp,$sp,-24
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	s.s	$f20,16($sp)
	s.s	$f22,20($sp)
	
	move	$s0,$a0
	move	$s1,$a1
	jal	average		# average(array, nval);
	cvt.s.d	$f20,$f0		# media=(float)average
	
	li	$s2,0		# i=0
	sub.s	$f22,$f22,$f22	# soma=0.0
vfor:	bge	$s2,$s1,vendf	# while(i<nval){
	sll	$t0, $s2, 3
	addu	$t0, $s0, $t0	# $t0=&array[i]
	l.d	$f12,0($t0)	# $t0=array[i]
	cvt.s.d	$f12,$f12	# $t0=(float)array[i]
	sub.s	$f12,$f12,$f20	#
	li	$a0,2
	jal	xtoy
	add.s	$f22,$f22,$f0	# soma += xtoy(...)
	addi	$s2,$s2,1	#i++
	j	vfor		#}
	
vendf:	
	cvt.d.s	$f22,$f22	# $f22 = (double)soma
	mtc1	$s1,$f0		
	cvt.d.w	$f0,$f0		# $f0 = (double)nval
	div.d	$f0,$f22,$f0	# return soma/nval
	
	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	l.s	$f20,16($sp)
	l.s	$f22,20($sp)
	addiu	$sp,$sp,24
	
	jr	$ra


# Mapa de registos
# x: $f12  -> $f20
# y: $a0   -> $s0
# i: $t0
# result: $f0
# função intermédia
xtoy:	addiu	$sp,$sp,-12
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	s.s	$f20,8($sp)
	
	move	$s0, $a0
	mov.s	$f20, $f12
	
	jal	abs
	move	$t1, $v0		# aux=abs(y)
	
	la	$t2,k1
	l.s	$f0,0($t2)	# result=1.0
	li	$t0,0		# i = 0
		
xfor:	bge	$t0,$t1,xendf	# for(i=0, result=1.0; i < abs(y); i++)
xif:	ble	$s0,0,xelse
	mul.s	$f0,$f0,$f20
	j	xendif
xelse:	div.s	$f0,$f0,$f20
xendif:
	addi	$t0,$t0,1
	j	xfor

xendf:
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	l.s	$f20, 8($sp)
	addiu	$sp,$sp,12
	jr	$ra


# Mapa de registos
# *array: $a0
# n: $a1
# retorno: $f0
# i: $t0
# sum: $f0
# função terminal
average:	l.d $f2, sum    		#double sum = 0.0
      	li $t0,0 
        
for:    bge $t0, $a1, endfor
        l.d $f4, 0($a0)
        add.d $f2, $f2, $f4
        addi $a0, $a0, 8
        addi $t0, $t0, 1
        j for

endfor:	mtc1 $a1, $f8         	#int to double
        cvt.d.w   $f8,$f8
        div.d    $f0,$f2,$f8   	# return sum / (double)n;
        jr    $ra
