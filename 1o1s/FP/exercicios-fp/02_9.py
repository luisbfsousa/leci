atp1 = int(input("nota primeira avaliacao "))
atp2 = int(input("nota segunda avaliacao "))
apf = int(input("nota primeira avaliacao pratica "))
apa = int(input("nota observação avaliacao pratica "))

ctp = (atp1 + atp2)/2 
cp = (1/4)*apa + (3/4)*apf

nota = 0.36 * ctp + 0.64 * cp
print(nota)

if 10 <= nota <=20:
	print("Passou a disciplina")
else:
	print("codigo 66")

