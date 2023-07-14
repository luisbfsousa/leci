# pf = 20 // pc = 24.95 // imp = 23% // spa = 0,20
#500 exemplares - lucro // recolha imposto // taxas reunidas

pf,pc,imp,spa = 20,24.95,0.23,0.20

lucro = pc/(1+imp) - pf - spa/(1+imp)
print(lucro)

lucro = 500 * lucro 
imp = 500 * imp
spa = 500 * spa


print (" O lucro foi {} €, os impostos recolhidos foram {} € e as taxas recolhidas foram {} €".format(lucro, imp, spa))

