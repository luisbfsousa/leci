def getIndexOfMaximum(list1):
    index = 0
    emptyList = []
    value = list1[0]
    c = 0
    while (c == 0):
        for cell in list1:
            index += 1
            if (cell >= value):
                value = cell
                hold = index -1
            if (len(list1) == index):
                emptyList += [value]
                del list1[hold]
                index = 0
                value = 0
                if (len(list1) == 1):
                    newList = emptyList + list1
                    del list1[index]
                    c = 1
    return newList
print(getIndexOfMaximum([2,5,8,7,44,54,23]))
