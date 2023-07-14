import sys
from crypto.cipher import arc4

cipher = arc4.new("teste")
Decipher = cipher.decrypt("clave")

cryptogram = cipher.encrypt("teste")
decrypted = cipher.decrypt(cryptogram)

print (decrypted)