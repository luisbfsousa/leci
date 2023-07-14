def calcMedian(list):
    print(list)
    orderedList = sorted(list)
    print(orderedList)
    orderedListLen = len(orderedList)
    lenDivByTwo = orderedListLen//2
    if orderedListLen % 2 == 1:
        return orderedList[lenDivByTwo+1]
    else:
        return ( orderedList[lenDivByTwo] + orderedList[lenDivByTwo+1] ) / 2
    

lists = [
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    [6, 4, 7, 1, 7, 0, 5, 2, 7, 8],
    [7, 4, 8, 2, 7]
    ]

for list in lists:
    print(calcMedian(list))

