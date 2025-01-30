import pytest
import server

test_socket = "my-socket"
test_client_id = "123"
test_cipher = None


#find_client_id tests
def test_find_client_id_valid ():
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}
    assert server.find_client_id(test_socket) == test_client_id

def test_find_client_id_empty ():
    server.users = {}
    assert server.find_client_id(test_socket) == None

def test_find_client_id_not_found ():
    server.users = { test_client_id : { "sock" : "other_socket", "cipher": None, "numbers": [1, 2, 3]}}
    assert server.find_client_id(test_socket) == None

#new_client tests
def test_new_client_valid():
    server.users = {}
    response = server.new_client(test_socket, {"op" : "START", "client_id" : test_client_id, "cipher": None})
    assert response == { "op": "START", "status": True }
    assert server.users[test_client_id] == { "sock" : test_socket, "cipher": None, "numbers": []}

def test_new_client_same_id():
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}
    response = server.new_client("other_socket", {"op" : "START", "client_id" : test_client_id,  "cipher": None})
    assert response == { "op": "START", "status": False,  "error": "Cliente existente" }
    assert server.users == { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}

def test_new_client_same_socket():
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3],  "cipher": None}}
    response = server.new_client(test_socket, {"op" : "START", "client_id" : "other_client_id", "cipher": None})
    assert response == { "op": "START", "status": False,  "error": "Cliente existente" }
    assert server.users == { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}

#clean_client tests
def test_clean_client_valid():
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}
    response = server.clean_client(test_socket)
    assert server.users == {}

def test_clean_client_not_found():
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}
    response = server.clean_client("other_socket")
    assert server.users == { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}  

#quit_client tests
def test_quit_client_valid():
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}
    response = server.quit_client(test_socket)
    assert response == { "op": "QUIT", "status": True }
    assert server.users == {}

def test_quit_client_not_found():
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}
    response = server.quit_client("other_socket")
    assert response == { "op": "QUIT", "status": False, "error": "Cliente inexistente" }
    assert server.users == { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}  

#number_client tests
def test_number_client_valid():
    number = 1
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}
    response = server.number_client(test_socket, { "op": "NUMBER", "number": number })
    assert response == { "op": "NUMBER", "status": True }
    assert server.users == { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3] + [number] }}

def test_number_client_not_found():
    number = 1
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}
    response = server.number_client("other_socket", { "op": "NUMBER", "number": number })
    assert response == { "op": "NUMBER", "status": False, "error": "Cliente inexistente" }
    assert server.users == { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}

#stop_client tests
def test_stop_client_valid():
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}
    response = server.stop_client(test_socket)
    assert response == { "op": "STOP", "status": True, "min": 1, "max": 3 }
    assert server.users == {} 

def test_stop_client_not_found():
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}
    response = server.stop_client("other_socket")
    assert response == { "op": "STOP", "status": False, "error": "Cliente inexistente" }
    assert server.users == { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": [1, 2, 3]}}

def test_stop_client_empty_list():
    server.users = { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": []}}
    response = server.stop_client(test_socket)
    assert response == { "op": "STOP", "status": False, "error": "Dados insuficientes" }
    assert server.users == { test_client_id : { "sock" : test_socket, "cipher": None, "numbers": []}}



