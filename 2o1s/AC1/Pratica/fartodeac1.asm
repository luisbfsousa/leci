.data
k1: .byte 0x66, 0x69, 0x63, 0x6f, 0x20, 0x70, 0x61, 0x72, 0x76, 0x6f, 0x20, 
	  0x63, 0x6f, 0x6d, 0x20, 0x61, 0x20, 0x74, 0x65, 0x6f, 0x72, 0x69, 
	  0x63, 0x61, 0x2c, 0x20, 0x61, 0x70, 0x6f, 0x73, 0x74, 0x6f, 0x20, 0x71, 
	  0x20, 0x65, 0x73, 0x74, 0x61, 0x73, 0x20, 0x6e, 0x6f, 0x20, 0x63, 
	  0x68, 0x61, 0x67, 0x70, 0x74, 0x20, 0x6a, 0x61, 0x20, 0x64, 0x65, 
	  0x76, 0x69, 0x61, 0x73, 0x20, 0x73, 0x61, 0x62, 0x65, 0x72, 0x20, 
	  0x69, 0x73, 0x74, 0x6f, 0x20, 0x61, 0x6f, 0x20, 0x70, 0x6f, 0x6e, 
	  0x74, 0x6f, 0x20, 0x64, 0x65, 0x20, 0x6e, 0x61, 0x6f, 0x20, 0x74, 
	  0x72, 0x61, 0x64, 0x75, 0x7a, 0x69, 0x72
.text
.globl main

main:	li $v0, 4 
        la $a0, k1 
        syscall 