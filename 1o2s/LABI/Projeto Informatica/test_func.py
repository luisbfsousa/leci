import pytest

from subprocess import Popen
from subprocess import PIPE
from subprocess import TimeoutExpired

import time

#server
def test_server_no_args ():
	proc = Popen ("python3 server.py", stdout=PIPE, shell=True)
	assert proc.wait() == 1
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 server.py port\n"

def test_server_too_many_args ():
	proc = Popen ("python3 server.py 123 1234", stdout=PIPE, shell=True)
	assert proc.wait() == 1
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 server.py port\n"

def test_server_not_numeric_port ():
	proc = Popen ("python3 server.py 123abc", stdout=PIPE, shell=True)
	assert proc.wait() == 2
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 server.py port\n"

def test_server_negative_port ():
	proc = Popen ("python3 server.py -213", stdout=PIPE, shell=True)
	assert proc.wait() == 2
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 server.py port\n"

def test_server_too_high_port ():
	proc = Popen ("python3 server.py 65536", stdout=PIPE, shell=True)
	assert proc.wait() == 2
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 server.py port\n"

#def test_server_valid ():
 #   proc = Popen ("python3 server.py 1234", stdout=PIPE, shell=True)
    #time.sleep(1)
  #  assert proc.stdout.read ().decode ('utf-8') == "Starting server on port 1234"
   # proc.kill()
    
    

#client    
def test_client_no_args ():
	proc = Popen ("python3 client.py", stdout=PIPE, shell=True)
	assert proc.wait() == 1
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 client.py client_id port [maquina]\n"

def test_client_too_many_args ():
	proc = Popen ("python3 client.py 1 1234 localhost 53", stdout=PIPE, shell=True)
	assert proc.wait() == 1
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 client.py client_id port [maquina]\n"

def test_client_one_arg ():
	proc = Popen ("python3 client.py 1", stdout=PIPE, shell=True)
	assert proc.wait() == 1
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 client.py client_id port [maquina]\n"

def test_client_not_numeric_port ():
	proc = Popen ("python3 client.py 1 123abc", stdout=PIPE, shell=True)
	assert proc.wait() == 2
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 client.py client_id port [maquina]\n"

def test_client_negative_port ():
	proc = Popen ("python3 client.py 1 -213", stdout=PIPE, shell=True)
	assert proc.wait() == 2
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 client.py client_id port [maquina]\n"

def test_client_too_high_port ():
	proc = Popen ("python3 client.py 1 65536", stdout=PIPE, shell=True)
	assert proc.wait() == 2
	assert proc.stdout.read ().decode ('utf-8') == "Usage: python3 client.py client_id port [maquina]\n"

#client_and_server
@pytest.fixture(scope="session", autouse=True)
def run_server(request):
    proc_server = Popen ("python3 server.py 1234", stdout=PIPE, shell=True)
    time.sleep(1)

def test_quit():
    proc = Popen ("python3 client.py 1 1234", stdout=PIPE, stdin=PIPE, stderr=PIPE, shell=True)
    proc.communicate(input=b"n\nquit")
    assert proc.wait() == 4

def test_stop_with_empty_list():
    proc_client = Popen ("python3 client.py 1 1234", stdout=PIPE, stdin=PIPE, shell=True)
    proc_client.communicate(input=b"n\nstop")
    assert proc_client.wait() == 3

def test_stop_with_valid():
    proc_client = Popen ("python3 client.py 1 1234", stdout=PIPE, stdin=PIPE, shell=True)
    time.sleep(1)
    proc_client.communicate(b"n\n1\n2\n3\nstop\n")
    assert proc_client.wait() == 0
