# encoding=utf-8
import os
import socket
import select
import json
import base64
import random

from common_comm import send_dict, recv_dict, sendrecv_dict
from Crypto.Cipher import AES

def main():
	tcp_s = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	tcp_s.bind (("127.0.0.1", 0))
	# Ligar ao servidor
	tcp_s.connect (("127.0.0.1", 1234))

	cipherkey = os.urandom(16)
	cipherkey_tosend = str (base64.b64encode (cipherkey), "utf8")
	cipher = AES.new (cipherkey, AES.MODE_ECB)
	
	request = { "op": "START", "cipher": cipherkey_tosend }
	send_dict (tcp_s, request)

	while 1:
		data = int (input ("Valor: "))
		print ("CLIENT - Valor Enviado %d" % (data))
		data = cipher.encrypt (bytes("%16d" % (data), "utf8"))
		data_tosend = str (base64.b64encode (data), "utf8")
		
		request = { "value": data_tosend }
		response = sendrecv_dict (tcp_s, request)
		
		data = base64.b64decode (response["value"])
		data = cipher.decrypt (data)
		data = int (str (data, "utf8"))
		print ("CLIENT - Valor Recebido %d" % (data))

	tcp_s.close()

main ()
