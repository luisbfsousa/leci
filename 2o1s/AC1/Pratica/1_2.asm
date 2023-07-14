.data
 #Nada a colocar aqui
.text
.globl main

main:   ori $t0, $0, 3 #$t0 = 3
	ori $t2, $0, 8  #$t1 = 8
	add $t1, $t0, $t0 #$t1 = 2x
	sub $t1, $t1, $t2 #$t1 = 2x - 8
	jr $ra #fim do programa
	
