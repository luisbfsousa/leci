def inputFloatList():
    list = []
    while True:
        n = input("Numero? ")
        if n == "":
            break
        list.append(float(n))
    return list

def countLower(list, v):
    c = 0
    for l in list:
        if l < v : 
            c += 1
        return c

def minMax(lista):
    min = lista[0]
    max = lista[0]
    for x in lista:
        if x < min:
            min = x
        if x > max:
            max = x
    return min, max
   

def main():
    lista = inputFloatList()
    minmax = minMax(lista)
    minmax_media = (minmax[0] + minmax[1])/2
    contagem = countLower(lista, minmax_media)
    print("Lista:", lista)
    print("Minimo: {}, Maximo: {}, Media: {}".format(minmax[0],minmax[1],minmax_media))
    print("Numeros abaixo da media:", contagem)

main()
    