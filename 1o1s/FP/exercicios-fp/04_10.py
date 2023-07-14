n = int(input("numero? "))
falso = False

def isPrimo():
    if falso:
        print(n, "não é primo")
    else:
        print(n, "é primo")

if n > 1:
    for i in range(2, n):
        if (n % i) == 0:
            falso = True
            break
    isPrimo()
else :
    print("Numero invalido")
