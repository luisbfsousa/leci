import socket
import threading

PORT= 5005
SERVER = socket.gethostname()
SERVER_ADDRESS = socket.gethostbyname(socket.gethostname())
ADDR =(SERVER_ADDRESS, PORT)
HEADER = 1024
FORMAT ='utf-8'
server = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
server.bind(ADDR)
clients_bytes = {}



def handle_client(conn,addr):
    client_bytes = 0
    print(f"[New Connection] {addr} connected.")
    connected = True
    while connected:
        msg_length = conn.recv(HEADER).decode(FORMAT)
        if msg_length:   
            msg_length = int(msg_length)
            msg = conn.recv(msg_length).decode(FORMAT)
            client_bytes += msg_length
            clients_bytes[addr] +=msg_length
            total_bytes = sum(clients_bytes.values())
            print(f"[{addr} {msg}]")
            conn.send(f"Hostname : {SERVER} \nMessage Status: Received \nTotal bytes: {total_bytes} \nBytes sent form this Client: {client_bytes}".encode(FORMAT))
    conn.close()



    

def start():
    server.listen()
    print(f"[LISTENING] Server is listening on {SERVER_ADDRESS}")
    while True:
        conn, addr =server.accept()
        clients_bytes[addr] = 0
        thread = threading.Thread(target=handle_client,args = (conn,addr))
        thread.start()
        print(f"Active connections {threading.activeCount()-1}")

print("[STARTING] server is starting...")
start()


