# Given a list of integers and a value, return the position of 
# the element that is closest in value to the given value. If 
# there is more than one, return the position of the first one.
# Return -1 if the list is empty.
def findClosestValueIndex(arr, val):
    if len(arr) == 0:
        return -1
    
    closest = arr[0]
    closestIndex = 0
    
    for i in range(len(arr)):
        if abs(arr[i] - val) < abs(closest - val):
            closest = arr[i]
            closestIndex = i
    
    return closestIndex