Align    Size    Offset
 char smp[17];    1     17    0
 double xpt;    8     8    17 -> 24
 int ns;    4     4    32
 char id;    1     1    36
 int sum;    4     4    37 -> 40
} t_cell;    8     48

.data
k1: .double 0.0
k2: .double 3.597

.text
.globl prcells

# Mapa de registos
# tc    : $a0
# size    : $a1
# res    : $f0
# tmp    : $f2
# i    : $t0

prcells:
    la $t1, k1
    l.d $f0, 0($t1)  # res = 0.0
    li $t0, 0  # i = 0

for:
    bge $t0, $a1, endfor  # for (i < size)

    mul $t1, $t0, 44  # i * size
    addu $t1, $a0, $t1  # &tc[i]

    lw $t2, 32($t1)  # $t2 = tc[i].sum

    mtc1 $t2, $f4
    cvt.d.w $f4, $f4  # $f4 = (double) tc[i].sum

    la $t7, k2
    l.d $f6, 0($t7)  # $f6 = 3.597
    div.d $f2, $f4, $f6  # tmp = (double)tc[i].sum / 3.597

    add.d $f0, $f0, $f2  # res = res + tmp

    s.d $f2, 24($t1)  # tc[i].xpt = tmp

    cvt.w.d $f4, $f0  # $f4 = (int) res
    mfc1 $t2, $f4  # $t2 = $f4

    sw $t2, 40($t1)  # tc[i].sum = (int)res - 1

    addi $t0, $t0, 1  # i++
    j for

endfor:
    # res is already in $f0
    jr $ra
