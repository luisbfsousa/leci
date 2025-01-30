# encoding=utf-8
import socket
import json
import base64

from common_comm import send_dict, recv_dict, sendrecv_dict
from Crypto.Cipher import AES

def main ():
	tcp_s = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	tcp_s.bind (("127.0.0.1", 1234))

	tcp_s.listen ()

	# aceitar novos clientes
	client_s, client_addr = tcp_s.accept ()
	
	request = recv_dict (client_s)
	cipherkey = base64.b64decode (request["cipher"])
	cipher = AES.new (cipherkey, AES.MODE_ECB)

	while 1:
		request = recv_dict (client_s)
		data = base64.b64decode (request["value"])
		data = cipher.decrypt (data)
		data = int (str (data, "utf8"))
		print ("SERVER - Valor Recebido %d" % (data))
		
		data = data * 10
		print ("SERVER - Valor Enviado %d" % (data))
		data = cipher.encrypt (bytes("%16d" % (data), "utf8"))
		data_tosend = str (base64.b64encode (data), "utf8")
		response = { "value": data_tosend }
		response = send_dict (client_s, response)

	client_s.close ()
	tcp_s.close ()

main ()
