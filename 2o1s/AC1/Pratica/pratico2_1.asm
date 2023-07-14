.data
list: .space 32
erro: .asciiz "Media invalida!\n"
.text
.globl main
main:
    li $t0, 0          	# sum = 0
    li $t1, 0          	# nit = 0
    li $t2, 0          	# rv = 0
    la $t3, list       	# load the address of list into $t3
    la $t4, list       	# load the address of list into $t4
    addi $t4, $t4, 32  	# add the size of the list to $t4 to get the end address of the list

loop:
    beq $t3, $t4, done 	# if $t3 == $t4
    li $v0, 5          	# read_int system call
    syscall            	# read integer from user
    sw $v0, 0($t3)     	# store the integer in list
    addi $t3, $t3, 4   	# increment the pointer by 4 bytes
    j loop             	# jump to the beginning of the loop

done:
    li $t3, 0          	# initialize n to 0
    la $t4, list       	# load the address of list into $t4

loop2:
    beq $t3, 8, done2  	# if n == SIZE, jump to done2
    lw $t5, 0($t4)     	# load the value at the current address in list into $t5
    bgez $t5, add      	# if the value is greater than or equal to 0, jump to add
    addi $t3, $t3, 1   	# increment n
    addi $t4, $t4, 4   	# increment the pointer by 4 bytes
    j loop2            	# jump to the beginning of the loop

add:
    add $t0, $t0, $t5  	# add the value to sum
    addi $t1, $t1, 1   	# increment nit
    addi $t3, $t3, 1   	# increment n
    addi $t4, $t4, 4   	# increment the pointer by 4 bytes
    j loop2            	# jump to the beginning of the loop

done2:
    beqz $t1, invalid  	# if nit == 0, jump to invalid
    div $t0, $t1       	# divide sum by nit and store the result in $t0
    li $v0, 1          	# print_int system call
    move $a0, $t0      	# move the value in $t0 to $a0
    syscall            	# print the integer
    j end              	# jump to end

invalid:
    li $v0, 4          	# print_string system call
    la $a0, erro 	# load the address of the invalid message into $a0
    syscall            	# print the invalid message
    li $t2, -1         	# set rv to -1
    j end              	# jump to end

end:
    move $v0, $t2      # move $t2 to $v0
    jr $ra             # end

