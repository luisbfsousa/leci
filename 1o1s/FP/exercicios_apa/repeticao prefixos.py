def longestPrefixRepeated(s):
    if len(s) == 0:
        return ""
    
    prefix = s[0]
    
    for i in range(1, len(s)):
        if s[i] != s[i-1]:
            prefix = s[0:i]
            break
    
    return prefix