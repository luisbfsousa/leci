#4 pisos / total 9m , 3m por andar/ sobe desce 2 vezes por dia
#quantos km por ano? quantas horas funcionou num ano se funcionar a 1m/s?

h1 = 3
h2 = 6   #faz 72 metros por dia
h3 = 9

h1,h2,h3 = 3,6,9

h = 4*h1 + 4*h2 + 4*h3
#print ("o elevador percorre", h , " metros por dia")
distancia = tempo = 72 #segundos e metros

#atencao aos anos bissextos

h = distancia * 365
h = h / 1000
print ("o elevador percorre", h ,"km por ano")

t = tempo * 365
print ("o elevador funcionou",t,"segundos")

3,6,9 = h1, h2, h3










