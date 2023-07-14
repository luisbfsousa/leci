print("                                     THE CHAMPIONS lEAGUE GROUP B")
equipas = ["Porto","Atletico Madrid","AC Milan","Liverpool"]
print("                      TEAMS: ", equipas)
print("                                                 GAMES")

def jogos(equipas):
    jogos = []
    for e in equipas:
        equipas_lista = equipas.copy()
        equipas_lista.remove(e)
        for t in equipas_lista:
            jogos.append((e,t))
    return jogos

print(jogos(equipas))