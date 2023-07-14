import os
import sys

def main():
    try:
        dir_list = os.listdir(sys.argv[1])
        print(f'{"FILE":30s}{"SIZE":15s}')
        for elm in dir_list:
            full_path = f"{sys.argv[1]}/{elm}"
            if os.path.isfile(full_path):
                print(f"{elm:30s}{os.stat(full_path).st_size:<15d}")
    except FileNotFoundError:
        print("Erro, caminho inválido")

main()

#python3 06_7.py (caminho da pasta)