# Given a string s and an integer n, return a string 
# in which each of the characters in s is repeated n times.

def repeatCharacters(s, n):
    return ''.join([c * n for c in s])