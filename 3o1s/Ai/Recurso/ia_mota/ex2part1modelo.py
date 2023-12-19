def interpretacoes(l):
    
    true = (l[0], True)
    false = (l[0], False)

    if len(l) > 1:
        y = interpretacoes(l[1:])
        return [[true] + [x] for x in y] + [[false] + [x] for x in y]

    return [true,false]
