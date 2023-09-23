.data
list: .space 32
erro: .asciiz "Media invalida!\n"
.text
.globl main
main:
    li $t0, 0          	# 
    li $t1, 0          	#
    li $t2, 0          	# 
    la $t3, list      
    la $t4, list       
    addi $t4, $t4, 32  	

loop:
    beq $t3, $t4, done 	# 
    li $v0, 5          	# 
    syscall            	# 
    sw $v0, 0($t3)     	# 
    addi $t3, $t3, 4   	# 
    j loop             	# 

done:
    li $t3, 0          	# 
    la $t4, list       	# l

loop2:
    beq $t3, 8, done2  	# i
    lw $t5, 0($t4)     	# 
    bgez $t5, add      	# d
    addi $t3, $t3, 1   	# 
    addi $t4, $t4, 4   	# i
    j loop2            	# jum

add:
    add $t0, $t0, $t5  	# a
    addi $t1, $t1, 1   	# i
    addi $t3, $t3, 1   	# i
    addi $t4, $t4, 4   	# incs
    j loop2            	# jp

done2:
    beqz $t1, invalid  	# iid
    div $t0, $t1       	# $t0
    li $v0, 1          	# pl
    move $a0, $t0      	# mo
    syscall            	# p
    j end              	# mp

invalid:
    li $v0, 4          	# 
    la $a0, erro 	# a0
    syscall            	# pe
    li $t2, -1         	# 
    j end              	# 

end:
    move $v0, $t2      # move $t2 to $v0
    jr $ra             # end


Nem todos certos, 11 no teste
