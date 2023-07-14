def contagem(n):
    while n !=0 :
        n = n-1
        print(n)
        if n == 0:
            print ("A contagem decrescente acabou :D")

n = int(input("Numero? "))
print("A contagem comeca em ",n)
contagem(n)
