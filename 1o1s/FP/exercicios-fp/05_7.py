def abreviatura(str):
    palavras = str.split()
    carateres = ""
    for p in palavras:
        if p[0].isupper(): carateres += p[0]
    return carateres

tudo = input("Introduzir: ")
print (abreviatura(tudo))