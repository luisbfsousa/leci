#!/usr/bin/python3

#from http import client  (para a variavel client do while true da funcao main)
from http import client
from pydoc import cli
import re
import sys
import socket
import select
import json
import base64
import csv
import random
from common_comm import send_dict, recv_dict, sendrecv_dict, is_int

from Crypto.Cipher import AES

# Dicionário com a informação relativa aos clientes
users = {}

# return the id of a socket or None
def find_client_id (client_sock):
	for client_id in users:
		if users[client_id]["sock"] == client_sock:
			return client_id
	return None


# Função para encriptar valores a enviar em formato json com codificação base64
# return int data encrypted in a 16 bytes binary string and coded base64
def encrypt_intvalue (cipher, number):
	encrpted = cipher.encrypt (bytes("%16d" % (number), "utf8"))
	return str (base64.b64encode (encrpted), "utf8")

# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary string and coded base64
def decrypt_intvalue (cipher, data):
	decrypted = cipher.decrypt (base64.b64decode (data))
	return int(decrypted)
	
# Incomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "NUMBER", number }
# { op = "STOP" }
#
# Outcomming message structure:
# { op = "START", status }
# { op = "QUIT" , status }
# { op = "NUMBER", status }
# { op = "STOP", status, min, max }


#
# Suporte de descodificação da operação pretendida pelo cliente
#
def new_msg (client_sock):
	request = recv_dict (client_sock)
	# detect the operation requested by the client
	response = {"status": False, "error": "estou atrasado, ainda nao implementei"}
	if request["op"] == "START":
		# new client
		response = new_client (client_sock, request)
	elif request["op"] == "QUIT":
		# client quit
		response = quit_client (client_sock)
	elif request["op"] == "NUMBER":
		# new number
		response = number_client (client_sock, request)
	elif request["op"] == "STOP":
		response = stop_client (client_sock)
	send_dict (client_sock, response)
# read the client request
# detect the operation requested by the client
# execute the operation and obtain the response (consider also operations not available)
# send the response to the client


#
# Suporte da criação de um novo jogador - operação START
#
def new_client (client_sock, request):
	client_id = request["client_id"]
	
	cipher = None
	if request["cipher"] is not None:
		cipher_key = base64.b64decode (request["cipher"])
		cipher = AES.new (cipher_key, AES.MODE_ECB)

	if (find_client_id(client_sock) != None or client_id in users):
		return { "op": "START", "status": False, "error": "Cliente existente" }

	users[client_id] = {"sock": client_sock, "cipher": cipher,"numbers": []}
	return { "op": "START", "status": True }
# detect the client in the request
# verify the appropriate conditions for executing this operation
# process the client in the dictionary
# return response message with or without error message



#
# Suporte da eliminação de um cliente
#
def clean_client (client_sock):
	client_id = find_client_id (client_sock)
	if (client_id is not None):
		del users[client_id]

# obtain the client_id from his socket and delete from the dictionary


#
# Suporte do pedido de desistência de um cliente - operação QUIT
#
def quit_client (client_sock):
	client_id = find_client_id (client_sock)
	if client_id is not None:
		update_file (client_id, len(users[client_id]["numbers"]), "QUIT")
		clean_client (client_sock)
		return { "op": "QUIT", "status": True }
	return { "op": "QUIT", "status": False, "error": "Cliente inexistente" }
# obtain the client_id from his socket
# verify the appropriate conditions for executing this operation
# process the report file with the QUIT result
# eliminate client from dictionary
# return response message with or without error message


#
# Suporte da criação de um ficheiro csv com o respectivo cabeçalho
#
def create_file ():
	with open ("report.csv", "w") as f:
		csv_writer = csv.writer(f, delimiter=',')
		csv_writer.writerow(["client_id", "numbers_length" , "result"])
# create report csv file with header

#
# Suporte da actualização de um ficheiro csv com a informação do cliente e resultado
#
def update_file (client_id, length, result):
	with open ("report.csv", "a") as f:
		csv_writer = csv.writer(f, delimiter=',')
		csv_writer.writerow([client_id, length, result])
# update report csv file with the result from the client


#
# Suporte do processamento do número de um cliente - operação NUMBER
#
def number_client (client_sock, request):
	client_id = find_client_id (client_sock)
	if client_id is None:
		return { "op": "NUMBER", "status": False, "error": "Cliente inexistente" }
	number = request["number"]
	cipher = users[client_id]["cipher"]
	if cipher is not None:
		number = decrypt_intvalue(cipher, number)
	users[client_id]["numbers"].append(number)
	return { "op": "NUMBER", "status": True }
# return response message with or without error message
# obtain the client_id from his socket
# verify the appropriate conditions for executing this operation
# return response message with or without error message


#
# Suporte do pedido de terminação de um cliente - operação STOP
#
def stop_client (client_sock):
	client_id = find_client_id (client_sock)
	if client_id is None:
		return { "op": "STOP", "status": False, "error": "Cliente inexistente"}
	
	lst = users[client_id]["numbers"] 
	if lst == []:
		return { "op": "STOP", "status": False, "error": "Dados insuficientes"}

	minimum = min(lst)
	maximum = max(lst)
	update_file (client_id, len(lst), "min:{} max:{}".format(minimum, maximum))
	cipher = users[client_id]["cipher"]
	if cipher is not None:
		minimum = encrypt_intvalue(cipher, minimum)
		maximum = encrypt_intvalue(cipher, maximum)
	clean_client (client_sock)
	return { "op": "STOP", "status": True, "min": minimum, "max": maximum }
# obtain the client_id from his socket
# verify the appropriate conditions for executing this operation
# process the report file with the result
# eliminate client from dictionary
# return response message with result or error message

def call_error(error_code):
	print("Usage: python3 server.py port")
	exit(error_code)

def main():
	# validate the number of arguments and eventually print error message and exit with error
	# verify type of of arguments and eventually print error message and exit with error
	if (len(sys.argv) != 2):
		call_error(1)

	if(not is_int(sys.argv[1])):
		call_error(2)
	
	port = int(sys.argv[1])
	if port < 0 or port > 65535:
		call_error(2)
	
	print('Starting server on port {}'.format(port))

	server_socket = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	server_socket.bind (("127.0.0.1", port))
	server_socket.listen (10)

	clients = []
	create_file ()

	while True:
		try:
			available = select.select ([server_socket] + clients, [], [])[0]
		except ValueError:
			# Sockets may have been closed, check for that
			for client_sock in clients:
				if client_sock.fileno () == -1: client_sock.remove (clients) # closed
			continue # Reiterate select

		for client_sock in available:
			# New client?
			if client_sock is server_socket:
				newclient, addr = server_socket.accept ()
				clients.append (newclient)
			# Or an existing client
			else:
				# See if client sent a message
				if len (client_sock.recv (1, socket.MSG_PEEK)) != 0:
					# client socket has a message
					new_msg (client_sock)
				else: # Or just disconnected
					clients.remove (client_sock)
					clean_client (client_sock)
					client_sock.close ()
					break # Reiterate select

if __name__ == "__main__":
	main()
