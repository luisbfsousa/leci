# Given a list a, return the longest n so that 
# the first n elements equal the last n elements.

def firstEqualLast(a):
    n = 1
    while n <= len(a) // 2:
        if a[:n] == a[-n:]:
            return n
        n += 1
    return 0