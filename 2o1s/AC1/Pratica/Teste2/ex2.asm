.data
k1: .double 0.0
.text
.globl proc

# Mapa de registos
# array : $a0
# thd : $f12
# val : $f14
# n : $a1
# i : $t0
# aux : $f2
# sum : $f4

proc:
    la $t0, k1
    l.d $f4, 0($t0)  # sum = 0.0
    li $t0, 0  # i = 0

for:
    bge $t0, $a1, endfor  # for (i < n)

    mul $t2, $t0, 8  # i * 8
    addu $t2, $t2, $a0  # &array[i]
    l.d $f6, 0($t2)  # $f6 = array[i]

    add.d $f2, $f6, $f14  # aux = array[i] + val

if:
    c.le.d $f2, $f12  # if (aux > thd)
    bc1t else

    s.d $f12, 0($t2)  # array[i] = thd
    add.d $f4, $f4, $f12  # sum += thd

    j endfor  # avoid else statement

else:
    s.d $f2, 0($t2)  # array[i] = aux
    add.d $f4, $f4, $f2  # sum += aux

endif:
    addi $t0, $t0, 1  # i++
    j for

endfor:
    mtc1 $a1, $f6
    cvt.d.w $f6, $f6  # $f6 = (double) n
    div.d $f6, $f4, $f6  # sum / (double) n
    mfc1 $v0, $f6  # $f0 = sum / (double) n

    cvt.s.d $f0, $f0  # Convert double to float

    jr $ra  # return (float)sum / (double) n
