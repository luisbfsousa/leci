def imposto(r):
   if r < 10000:
      t = 0.05
      d = 0
      i = (tr) - d
      return i
   elif 10000 <= r <= 20000:
      t = 0.10
      d = 500
      i = (tr) - d
      return i
   else:
      t = 0.15
      d = 1500
      i = (t*r) - d
      return i

# Use esta instrução / Use this instruction:
r = int(input("Rendimento? "))    # Income?
imposto(r)
print("Imposto: {:2s}".format(i))

#------------------------------------------------------------------------

def imposto(r):
   if r < 10000:
      t = 0.05
      d = 0
      i = (t*r) - d
      return i
   elif 10000 <= r <= 20000:
      t = 0.10
      d = 500
      i = (t*r) - d
      return i
   else:
      t = 0.15
      d = 1500
      i = (t*r) - d
      return i

r = int(input("Rendimento? "))  # Income?
print(f"Imposto: {imposto(r)}")