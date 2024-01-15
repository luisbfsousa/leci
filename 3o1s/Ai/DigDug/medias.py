import json

json_file_path = 'highscores.json'

with open(json_file_path, 'r') as file:
    data = json.load(file)

score = [scores[1] for scores in data]

media = sum(score) / len(score)

melhor = max(score)
pior = min(score)

print(f"Melhor: {melhor}")
print(f"Pior: {pior}")
print(f"Média: {media}")
