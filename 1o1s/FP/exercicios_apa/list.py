# Given a list of integers and an integer n, return 
# a list of the averages of n consecutive elements of the original list.
# You may assume there is at least one element in the given list.

def returnConsecutiveAverage(arr, n):
    result = []
    
    for i in range(len(arr) - n + 1):
        sum = 0
        
        for j in range(n):
            sum += arr[i + j]
        
        result.append(sum / n)
    
    return result