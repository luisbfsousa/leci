def countDigits(str):
    numeros = 0
    for n in str:
        if n.isdigit():
            numeros += 1
    return numeros


lista = input("Introduzir: ")
print (countDigits(lista))