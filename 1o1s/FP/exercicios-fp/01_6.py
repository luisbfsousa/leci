import math as m

A = int(input("A"))
B = int(input("B"))

print (A , B)

C2 = A**2 + B**2
C = m.sqrt (C2)
print(C)
tmp_cos = A/C
ang = m.acos(tmp_cos)
print ("angulo", ang * 180/m.pi) 



