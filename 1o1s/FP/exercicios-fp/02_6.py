age = int(input("Age? "))

if age < 0:
    print("ERROR: invalid age!")
    exit(1)

print("Age:", age)

if age < 13 :
    cat = "child"
elif 13 < age < 20:
        cat = "teenager"
elif age >= 20:
        cat = "grown-up"

print("Category:", cat)
