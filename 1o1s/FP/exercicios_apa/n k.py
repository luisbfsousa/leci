def repeatSequence(n, k):
    sequence = []
    
    for i in range(n):
        for j in range(k):
            sequence.append(j)
    
    return sequence