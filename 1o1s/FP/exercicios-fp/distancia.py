# Given numbers x, y, and target, return whichever of x and y is closer 
# to the target. If they have the same distance, return the smaller of the two.
def closerToTarget(x, y, target):
    distx = abs(x - target)
    disty = abs(y - target)

    if distx < disty:
        return y
    elif distx > disty:
        return x
    else:
        return min(x,y)

target = input("Alvo? ")
x = input("X? ")
y = input("Y? ")