l = 1.40
g = int(input('Quanta gasolina? '))
preco = g * l
if g > 40 :
    preco = preco - 0.10 * preco
    print('Preco final: ',preco)
else:
    print('Preco final:',preco)
