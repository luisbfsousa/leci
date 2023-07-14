from re import I
import sys

sys.setrecursionlimit(2000)

print("=====")
print(sys.getrecursionlimit())
print("=====")

i = 0

def recursion(i):
    i += 1
    print("Teste", i)
    recursion(i)

recursion(i)