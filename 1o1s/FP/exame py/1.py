def numberOfDigits(n):
   assert n >= 0
   if n//10 == 0:
      digits = 1
   else:
      digits = 1 + numberOfDigits(n//10)
   return digits