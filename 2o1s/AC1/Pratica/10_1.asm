.data
k1: 	.float 1.0
.text
.globl main

main:	addiu $sp,$sp, -4
    	sw $ra,0($sp)
    
    	li $v0,6
    	syscall
    	mov.s $f12, $f0
    
    	li $v0,5
    	syscall
    	move $a0,$v0
    	jal xtoy
    
    	mov.s $f12,$f0
    	li $v0,2
    	syscall
    
    	lw $ra, 0($sp)
    	addiu $sp,$sp,4

    	jr $ra    

# Mapa de registos
# x: $f12  -> $f20
# y: $a0   -> $s0
# i: $t0
# result: $f0
# função intermédia
xtoy:   addiu $sp,$sp,-12
    	sw $ra,0($sp)
    	sw $s0,4($sp)
    	s.s $f20,8($sp)
    
    	move $s0, $a0
    	mov.s $f20, $f12
    
    	jal abs
    	move $t1, $v0        # aux=abs(y)
    
    	la $t2,k1
    	l.s $f0,0($t2)    # result=1.0
    	li $t0,0        # i = 0
        
xfor:   bge $t0,$t1,xendf    # for(i=0, result=1.0; i < abs(y); i++)

xif:    ble $s0,0,xelse
    	mul.s $f0,$f0,$f20
    	j xendif
    	
xelse:  div.s $f0,$f0,$f20

xendif:	addi    $t0,$t0,1
    	j    xfor

xendf:	lw $ra,0($sp)
    	lw $s0,4($sp)
    	l.s $f20, 8($sp)
    	addiu $sp,$sp,12
    	jr $ra

# Mapa de registos
# val: $a0
# return: $v0
# função terminal
abs:    bge $a0,0,aendif    # if(val < 0)
    	sub $a0,$0,$a0    # val = -val;
aendif:	move $v0,$a0        # return val;
    	jr $ra