# Given a string s and a string t, return a string in which all the characters 
# of s that occur in t have been replaced by a _ sign. The comparisons are 
# case sensitive.

def replaceCharactersWithUnderscores(s, t):
    result = ""
    
    for c in s:
        if c in t:
            result += "_"
        else:
            result += c
    
    return result

s = str(input("? "))
t = str(input("? "))
print(replaceCharactersWithUnderscores(s,t))