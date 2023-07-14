def ispalindrome(str):
    normal = [s for s in str]
    inversa = normal [::-1]
    return inversa == normal

    
s = input ("É palíndromo? ")
print (ispalindrome(s))
