.data
.text
.globl main

main:
	lui $t0, 0x3E0C
	ori $f4, $t0, 0x0000
	li.d $f6,0xC0A00000
	
	div.s $f8,$f4,$f6