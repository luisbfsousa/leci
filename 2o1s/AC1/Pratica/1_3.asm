	.data
    
   	.text
   	.globl    main
    
main:     ori    $v0, $0, 5
    syscall         # read_int()
    or    $t0, $0, $v0    # $t0 = $v0 (valor lido anteriormente)
    
    ori    $t2, $0, 8    # $t2 = 8
    add    $t1, $t0, $t0    # $t1 = 2 * $t0
    sub    $t1, $t1, $t2    # $t1 = $t1 + $t2 ($t1 = y)
    
    or    $a0, $0, $t1    # $a0 = y
    ori    $v0, $0, 1
    syscall            # print_int10()
    
    ori    $a0, $0, '\n'
    ori    $v0, $0, 11
    syscall            # print_char()
    
    or    $a0, $0, $t1    # $a0 = y
    ori    $v0, $0, 34
    syscall            # print_int16()
    
    ori    $a0, $0, '\n'
    ori    $v0, $0, 11
    syscall            # print_char()
    
    or    $a0, $0, $t1    # $a0 = y
    ori    $v0, $0, 36
    syscall            # print_intu10()
    
    jr    $ra