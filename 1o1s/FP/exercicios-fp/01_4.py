s = int(input('segundos: '))
h = s // 3600
m = (s % 3600)//60
s = (s % 3600) % 60

print("{:02d}:{:02d}:{:02d}".format(h, m, s))