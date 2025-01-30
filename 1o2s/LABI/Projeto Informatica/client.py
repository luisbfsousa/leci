#!/usr/bin/python3

from curses.ascii import isdigit
import os
import sys
import socket
import json
import base64
from telnetlib import STATUS
from textwrap import indent
from common_comm import send_dict, recv_dict, sendrecv_dict, is_int

from Crypto.Cipher import AES

# Função para encriptar valores a enviar em formato jsos com codificação base64
# return int data encrypted in a 16 bytes binary string coded in base64
def encrypt_intvalue (cipher, number):
	encrpted = cipher.encrypt (bytes("%16d" % (number), "utf8"))
	return str (base64.b64encode (encrpted), "utf8")

# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary strings coded in base64
def decrypt_intvalue (cipher, data):
	decrypted = cipher.decrypt (base64.b64decode (data))
	return int(decrypted)


def action(client_sock, message):
	response = sendrecv_dict(client_sock, message)
	validate_response(client_sock, response)
	return response

# verify if response from server is valid or is an error message and act accordingly
def validate_response (client_sock, response):
	if (not response['status']):
		print(response["error"])
		client_sock.close()
		exit(3)

# process QUIT operation
def quit_action (client_sock, attempts):
	action(client_sock, { "op": "QUIT" })
	exit(4)

def start_action(client_sock, client_id, cipher_key):
	action(client_sock, { 'op' : 'START', 'client_id' : client_id, "cipher" : cipher_key })

def number_action(client_sock, number, cipher):
	if cipher is not None:
		number = encrypt_intvalue(cipher, number)
	action(client_sock, { "op": "NUMBER", "number": number })

def stop_action(client_sock, cipher):
	response = action(client_sock, { "op": "STOP"})
	minimum = response["min"]
	maximum = response["max"]
	if (cipher is not None):
		minimum = decrypt_intvalue(cipher, minimum)
		maximum = decrypt_intvalue(cipher, maximum)
	print("Min:{}, Max:{}".format(minimum, maximum))
	exit(0)

# Outcomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "NUMBER", number }
# { op = "STOP" }
#
# Incomming message structure:
# { op = "START", status }
# { op = "QUIT" , status }
# { op = "NUMBER", status }
# { op = "STOP", status, min, max }


#
# Suporte da execução do cliente
#
def run_client (client_sock, client_id):
	reponse = input("Usar cifra? (S/n)")
	cipherkey_tosend = None
	cipher = None
	if reponse == "S" or reponse == "s" or reponse == "sim":
		print("Cifra ativa")
		cipher_key = os.urandom(16)
		cipherkey_tosend = str (base64.b64encode (cipher_key), "utf8")
		cipher = AES.new (cipher_key, AES.MODE_ECB)

	start_action(client_sock, client_id, cipherkey_tosend)
	while True:
		user_input = input()
		if user_input == 'stop' or user_input == '':
			stop_action(client_sock, cipher)
		elif user_input == 'quit':
			quit_action(client_sock, 0)
		elif is_int(user_input):
			number_action(client_sock, int(user_input), cipher)
		else:
			print('Invalid input')

def call_error(error_code):
	print("Usage: python3 client.py client_id port [maquina]")
	exit(error_code)

def main():
	# validate the number of arguments and eventually print error message and exit with error
	# verify type of of arguments and eventually print error message and exit with error
	if (len(sys.argv) != 3 and len(sys.argv) != 4):
		call_error(1)
	
	if(not sys.argv[2].isnumeric()):
		call_error(2)
	
	port = int(sys.argv[2])
	if port < 0 or port > 65535:
		call_error(2)

	hostname = "localhost"
	if (len(sys.argv) == 4):
		hostname = sys.argv[3]

	client_sock = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	client_sock.connect ((hostname, port))

	run_client (client_sock, sys.argv[1])

if __name__ == "__main__":
    main()
