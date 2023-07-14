from sys import argv

def getDict():
    lettersDict = {}
    with open(argv[1], encoding="utf-8") as file:
        for line in file:
            for char in line:
                if char.isalpha():
                    char = char.lower()
                    if char not in lettersDict:
                        lettersDict[char] = 1
                    else:
                        lettersDict[char] += 1
    return lettersDict

assert len(argv) > 1, "Need at least one argument"
letras = getDict()
for key, value in sorted(letras.items(), reverse=True, key=lambda k:k[1]):
    print("{} - {}".format(key, value))

#Os	musculos responsaveis pela postura sao os mais resistentes
#700 musculos ligados ao esqueleto
#As	células	do	músculo	esquelético	são fibras longas retas multinucleadas
#ponto movel aka insercao/ ponto fixo aka origem
#sistema nervosos dividido em funcoes (3?)
#saída do cerebelo -> mesencefalo
#cauda do cavalo aka cauda equina
#conjunto de vasos que irr