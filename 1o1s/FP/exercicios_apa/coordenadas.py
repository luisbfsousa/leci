def coordinatesInSameQuadrant(x1, y1, x2, y2):
    if x1 > 0 and y1 > 0 and x2 > 0 and y2 > 0:
        return True
    elif x1 < 0 and y1 > 0 and x2 < 0 and y2 > 0:
        return True
    elif x1 < 0 and y1 < 0 and x2 < 0 and y2 < 0:
        return True
    elif x1 > 0 and y1 < 0 and x2 > 0 and y2 < 0:
        return True
    else:
        return False

x1 = int(input("X1? "))
x2 = int(input("X2? "))
y1 = int(input("Y1? "))
y2 = int(input("Y1? "))

print(coordinatesInSameQuadrant(x1, y1, x2, y2))

