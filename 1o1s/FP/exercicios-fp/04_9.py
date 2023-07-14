t = int(input('Termo? '))

def fibonacci(t):
    f0 = 0
    f1 = 1
    for i in range(t-1):
        val = f0 + f1
        f0 = f1
        f1 = val
    return f0
    
print(fibonacci(t))