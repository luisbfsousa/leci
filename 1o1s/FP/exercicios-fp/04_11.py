n = int(input('numero? '))

def dividers(n):
    dsum = 0
    divisores = []
    for i in range(n-1,0,-1):
        if n%i == 0:
            divisores.append(i)
            dsum = dsum + i
    if dsum < n:
        return (divisores, "deficiente")
    elif dsum > n:
        return (divisores, "abundante")
    else:
        return (divisores, "perfeito")


print(dividers(n))