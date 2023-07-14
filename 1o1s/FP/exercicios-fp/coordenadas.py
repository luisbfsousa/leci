def coordenadas(x1,x2,y1,y2): #mesmo quadrante!
    if x1 > 0 and x2 > 0 and y1 > 0 and y2 > 0:
        return True
    elif x1 < 0 and x2 < 0 and y1 > 0 and y2 > 0:
        return True
    elif x1 > 0 and x2 > 0 and y1 < 0 and y2 < 0:
        return True
    elif x1 < 0 and x2 < 0 and y1 < 0 and y2 < 0:
        return True
    else:
        return False


x1 = int(input("X1? "))
x2 = int(input("X2? "))
y1 = int(input("Y1? "))
y2 = int(input("Y1? "))

print(coordenadas(x1,x2,y1,y2))