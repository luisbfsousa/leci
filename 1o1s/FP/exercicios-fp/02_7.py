# -*- coding: utf-8 -*-

# Modifique o programa para indicar a categoria de IMC de acordo com a tabela:
# IMC:          <18.5   [18.5, 25[  [25, 30[    30 ou mais 
# Categoria:    Magro   Saudável    Forte       Obeso 

print("Índice de Massa Corporal")

altura = float(input("Altura (m)? "))
peso = float(input("Peso (kg)? "))
imc = peso / altura**2
print("IMC:", imc, "kg/m2")

# Determinar a categoria de IMC:
if imc < 18.5:
    categoria = "Magro"
elif 18.5 <= imc < 25:
	categoria = "Saudável"
elif 25 <= imc < 30:
	categoria = "Forte"
else:
    categoria = "Obeso"

print("Categoria:", categoria)
