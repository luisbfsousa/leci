import socket

HEADER = 1024
PORT= 5005
SERVER_ADRESS = socket.gethostbyname(socket.gethostname())
FORMAT ="utf-8"
ADDR =("120.100.20.3", 5005)

client = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

client.bind(ADDR)

def send(msg):
    message_encoded = msg.encode(FORMAT)
    msg_length = len(msg)
    send_length = str(msg_length).encode(FORMAT)
    send_length += b'' * (HEADER - len(send_length))
    client.send(send_length)
    client.send(message_encoded)
    print(client.recv(HEADER).decode(FORMAT))




def message():
    print("Enter the message you want to send: ")
    msg = input()
    return msg

print("Press Ctrl + c to exit")
while True:
        send(message())
