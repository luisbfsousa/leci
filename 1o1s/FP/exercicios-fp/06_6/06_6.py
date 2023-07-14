def compareFiles(less1,documento):
    with open(less1, "rb") as f, open (documento, "rb") as f1:
        while True:
            b1 = f.read(1)
            b2 = f1.read(1)
            if b1 != b2: 
                return "different"
            if not b1:
                return "equal"

def main():
    print('File1 and file2 are {compareFiles("./less.txt", "./less-copia.txt")}.')
    print('File1 and file2 are {compareFiles("./less1.txt", "./less1-copia.txt")}.')
    print('File1 and file2 are {compareFiles("./less1.txt", "./documento.txt")}.')

main()