       .data
X1:    .asciiz "Tf7gXeSiR3"                
       .align  2        
X2:    .space  14   
X3:    .space  13
X4:      
       .text            
       .globl main    
main:  la     $a1,X3        
       ori    $t0,$0,0x61    
       ori    $t1,$0,0x7A    
       xor    $a2,$a2,$a2   
L1:    la     $a0,X1        
       addu   $a0,$a0,$a2    
       lb     $t2,0($a0)    
       blt    $t2,$t0,L2    
       bgt    $t2,$t1,L2    
       sb     $t2,0($a1)    
       addi   $a1,$a1,1    
L2:    addi   $a2,$a2,1    
       bne    $t2,$0,L1    
L3:    sb     $t2,0($a1)    
       jr    $ra