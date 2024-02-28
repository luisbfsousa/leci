def interp(x):
    first_true = (x[0],True)
    first_false = (x[0],False)

    result = []
    if len(x) > 1:
        y = interp(x[1:])

        for z in y:
            if isinstance(z,list):
                result.append([first_true] + z)
                result.append([first_false] + z)
            else:
                result.append([first_true] + [z])
                result.append([first_false] + [z])

        return result
        
    return [first_true,first_false]

if __name__ == "__main__":
    for i in interp(["a","b","c"]):
        print(i)