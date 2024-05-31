	.equ 	ADDR_BASE_HI, 0xBF88 		# Base address: 16 MSbits
	.equ 	TRISE, 0x6100  				# TRISE address is 0xBF886100
	.equ	TRISB, 0x6040
	.equ 	LATE, 0x6120 				# LATE address is 0xBF886120
	.equ	PORTB, 0x6050
	
	.equ 	READ_CORE_TIMER,11
	.equ 	RESET_CORE_TIMER,12
			
	.data
	.text
	.globl main
		
main:
	lui 	$t1, ADDR_BASE_HI 			# $t1=0xBF880000
	lw 		$t2, TRISE($t1) 			# READ (Mem_addr = 0xBF880000 + 0x6100)
	andi 	$t2, $t2, 0xffc1			# 1111 1111 1100 0001
	sw 		$t2, TRISE($t1) 			# WRITE (Write TRISE register)
	li		$t0, 0x0001					# e.g. up counter (initial value is 1)
		
loop:	
										# 0000 0000 0100 0000
	lw 		$t2, LATE($t1) 				# Read LATE register
	andi	$t2, $t2, 0xFFC1 			# Reset bits 5-1
	sll 	$t4, $t0, 1 				# Shift counter value to "position" 1
	or 		$t2, $t2, $t4 				# Merge counter w/ LATE value
	sw 		$t2, LATE($t1) 				# Update LATE register
	li 		$v0, RESET_CORE_TIMER
	syscall

wait: 	
	li 		$v0, READ_CORE_TIMER
	syscall
	blt 	$v0, 8695652, wait 			# e.g. f=2.3Hz
	sll		$t0, $t0, 1
	srl		$t5, $t0, 5					# 0000 0000 0100 0000 -> 0000 0000 0000 0010
	or		$t0, $t0, $t5
	andi 	$t0, $t0, 0x003F
										# bge $t2,0x100000,start	
	j loop
		
eloop:
		jr	$ra