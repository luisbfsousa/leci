
d = int(input("distancia entre as duas cidades: "))

t1 = int(input("inserir tempo que demorou a fazer o percurso: "))

v1 = d/t1
print ("a velocidade media na ida é: ", v1 , " m/s")

t2 = int(input("inserir tempo que demorou a fazer o percurso: "))

v2 = d/t2
print ("a velocidade media na ida é: ", v2 , " m/s")

print()
v = (v1+v2)/2
print("a velocidade media da viagem é: ", v , " m/s")