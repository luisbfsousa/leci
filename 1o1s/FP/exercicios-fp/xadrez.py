def espaco(e):
    if e[0] == "a" :
        if e[1] == "1" or e[1] == "8":
            print("Corner")
        else:
            print("Border")

    elif e[0] == "h" :
        if e[1] == "1" or e[1] == "8":
            print("Corner")
        else:
            print("Border")

    else:
        if e[0] != "a" or e[0] != "h":
            if e[1] == "1" or e[1] == "8":
                print("Border")
            else:
                print("Middle")
    
e = str(input("Espaco? "))
if len(e) == 2:
    espaco(e)
else:
    print("Espaco inválido")

#e = a1
#e = b4
#e = h8