import os
import sys
import argparse
import logging
import json
import time
import requests
import shutil
import base64
import traceback
from cryptography.hazmat.primitives import serialization, hashes
from cryptography.hazmat.primitives.asymmetric import ec
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives.hashes import SHA256
from cryptography.hazmat.primitives.serialization import (Encoding,PrivateFormat,PublicFormat,BestAvailableEncryption,NoEncryption)
from cryptography.hazmat.primitives import serialization
from eavesdropping import secure_eavesdrop



logging.basicConfig(format='%(levelname)s\t- %(message)s')
logger = logging.getLogger()
logger.setLevel(logging.INFO)

def load_state():
    state = {}
    state_dir = os.path.join(os.path.expanduser('~'), '.sio')
    state_file = os.path.join(state_dir, 'state.json')

    logger.debug('State folder: ' + state_dir)
    logger.debug('State file: ' + state_file)

    if os.path.exists(state_file):
        logger.debug('Loading state')
        with open(state_file,'r') as f:
            state = json.loads(f.read())

    if state is None:
        state = {}

    return state

def parse_env(state):
    if 'REP_ADDRESS' in os.environ:
        state['REP_ADDRESS'] = os.getenv('REP_ADDRESS')
        logger.debug('Setting REP_ADDRESS from Environment to: ' + state['REP_ADDRESS'])

    if 'REP_PUB_KEY' in os.environ:
        rep_pub_key = os.getenv('REP_PUB_KEY')
        logger.debug('Loading REP_PUB_KEY fron: ' + state['REP_PUB_KEY'])
        if os.path.exists(rep_pub_key):
            with open(rep_pub_key, 'r') as f:
                state['REP_PUB_KEY'] = f.read()
                logger.debug('Loaded REP_PUB_KEY from Environment')
    return state

def derive_key(password: str, salt: bytes) -> bytes:
    kdf = PBKDF2HMAC(
        algorithm=SHA256(),
        length=32,
        salt=salt,
        iterations=100000,
        backend=default_backend()
    )
    return kdf.derive(password.encode())

def update_last_used(session_file):
    try:
        with open(session_file, "r+") as f:
            session_data = json.load(f)
            session_data["last_used"] = int(time.time())
            f.seek(0)
            json.dump(session_data, f, indent=4)
            f.truncate()
    except Exception as e:
        print(f"Failed to update session file: {e}")
        exit(1)

def rep_acl_doc(session_file, doc_name, operation, role, permission):
    if operation not in ["+", "-"]:
        print("Invalid operation. Use '+' to add or '-' to remove a permission.")
        exit(1)

    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except FileNotFoundError:
        print(f"Session file '{session_file}' not found.")
        exit(1)
    except json.JSONDecodeError:
        print(f"Session file '{session_file}' contains invalid JSON.")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/document/acl"
    payload = {
        "session": session_data,
        "document_name": doc_name,
        "operation": operation,
        "role": role,
        "permission": permission
    }

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            if operation == "+":
                print(f"Permission '{permission}' added to role '{role}' for document '{doc_name}'.")
            else:
                print(f"Permission '{permission}' removed from role '{role}' for document '{doc_name}'.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to update ACL: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)


def rep_activate_subject(session_file, username):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
        if "organization" not in session_data:
            raise ValueError("Session data must include an 'organization' key.")
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    url = state.get("REP_ADDRESS") or os.getenv("REP_ADDRESS")
    if not url:
        print("ERROR - REP_ADDRESS environment variable is not set.")
        exit(1)

    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    url = f"{url}/subject/activate"
    payload = {
        "session": session_data,
        "username": username
    }

    update_last_used(session_file)

    try:
        response = requests.post(url, json=payload)
        if response.status_code == 200:
            print(f"Subject '{username}' activated successfully.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to activate subject: {error_message}")
            exit(-1)
    except requests.exceptions.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_add_doc(session_file, document_name, file_path):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    if not os.path.exists(file_path):
        print(f"File not found: {file_path}")
        exit(1)

    if not os.path.isfile(file_path):
        print(f"Path is not a file: {file_path}")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    url = f"{url}/document/add"

    update_last_used(session_file)

    try:
        with open(file_path, 'rb') as file_content:
            files = {"file": file_content}
            data = {
                "session": json.dumps(session_data),
                "document_name": document_name
            }

            response = requests.post(url, data=data, files=files)

            if response.status_code == 201:
                print(f"'{document_name}' added successfully.")
                print(response.json())

                destination_dir = os.path.join("documents")
                os.makedirs(destination_dir, exist_ok=True)

                _, file_extension = os.path.splitext(file_path)
                local_file_name = f"{document_name}{file_extension}"
                local_path = os.path.join(destination_dir, local_file_name)

                shutil.copy(file_path, local_path)
                print(f"'{local_file_name}' saved in {local_path}")
                exit(0)
            else:
                error_message = response.json().get("error", "Unknown error")
                print(f"Failed to add document: {error_message}")
                exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)
    except Exception as e:
        print(f"Unexpected error: {e}")
        exit(-1)
    
def rep_add_permission(session_file, role, value):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    org_name = session_data.get("organization")
    if not org_name:
        print("Session file is missing the 'organization' field.")
        exit(1)

    org_file = "data/org_subjects.json"
    try:
        with open(org_file, 'r') as f:
            org_subjects = json.load(f)
    except Exception as e:
        print(f"Failed to load org_subjects file: {e}")
        exit(1)

    valid_permissions = [
        "DOC_READ", "DOC_DELETE", "DOC_ACL", "ROLE_NEW", "ROLE_DOWN",
        "ROLE_UP", "ROLE_MOD", "ROLE_ACL", "SUBJECT_NEW", "SUBJECT_DOWN",
        "SUBJECT_UP", "DOC_NEW"
    ]

    if value in org_subjects.get(org_name, []):
        property_type = "subject"
    elif value in valid_permissions:
        property_type = "permission"
    else:
        print(f"Invalid Subject or Invalid Permission. These are the following permissions:\n"
              f"{', '.join(valid_permissions)}")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"
    endpoint = f"{url}/role/add_property"

    payload = {
        "session": session_data,
        "role": role,
        "type": property_type,
        "value": value
    }

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            print(f"{property_type.capitalize()} '{value}' added to role '{role}' successfully.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to add {property_type}: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_add_role(session_file, new_role):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except FileNotFoundError:
        print(f"Session file '{session_file}' not found.")
        exit(1)
    except json.JSONDecodeError:
        print(f"Session file '{session_file}' contains invalid JSON.")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    if not url:
        print("Invalid or missing REP_ADDRESS environment variable.")
        exit(1)

    endpoint = f"{url}/role/add"
    payload = {"session": session_data, "role": new_role}

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 201:
            print(f"Role '{new_role}' added successfully.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to add role: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

@secure_eavesdrop
def rep_add_subject(session_file, username, name, email, credentials_file):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except Exception as e:
        print(f"Failed to load session: {e}")
        exit(1)

    try:
        with open(credentials_file, 'r') as f:
            credentials = json.load(f)
        public_key = credentials.get("public_key")
        if not public_key or not public_key.startswith("-----BEGIN PUBLIC KEY-----"):
            print("Invalid or missing public key in credentials file.")
            exit(1)
    except Exception as e:
        print(f"Failed to load credentials: {e}")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    url = f"{url}/subject/add"
    payload = {
        "session": json.dumps(session_data),
        "username": username,
        "name": name,
        "email": email,
        "credentials": public_key
    }

    update_last_used(session_file)

    try:
        response = requests.post(url, json=payload)
        if response.status_code == 201:
            print(f"'{username}' added")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to add subject: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)


def rep_assume_role(session_file, role_to_assume):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except FileNotFoundError:
        print(f"Session file '{session_file}' not found.")
        exit(1)
    except json.JSONDecodeError:
        print(f"Session file '{session_file}' contains invalid JSON.")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/session/assume_role"
    payload = {
        "session": session_data,
        "role": role_to_assume
    }

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            print(f"Role '{role_to_assume}' assumed successfully.")
            current_roles = session_data.get("current_roles", [])
            if role_to_assume not in current_roles:
                current_roles.append(role_to_assume)
            session_data["current_roles"] = current_roles
            with open(session_file, 'w') as f:
                json.dump(session_data, f, indent=4)

            update_last_used(session_file)

            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to assume role: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def compare_files(original_file, decrypted_file):
    try:
        with open(original_file, "rb") as orig, open(decrypted_file, "rb") as decr:
            original_data = orig.read()
            decrypted_data = decr.read()
            
            if original_data == decrypted_data:
                print("The original and decrypted files are identical.")
                return True
            else:
                print("The original and decrypted files differ.")
                return False
    except FileNotFoundError as e:
        print(f"File not found: {e}")
        return False
    except Exception as e:
        print(f"Error comparing files: {e}")
        return False
    
def rep_compare_files(file_name):
    original_file = os.path.join("documents", f"{file_name}.txt")
    decrypted_file = os.path.join("documents", "decrypted_files", f"{file_name}_decrypted")

    if not os.path.exists(original_file):
        print(f"Original file not found: {original_file}")
        exit(1)

    if not os.path.exists(decrypted_file):
        print(f"Decrypted file not found: {decrypted_file}")
        exit(1)

    try:
        with open(original_file, "rb") as orig, open(decrypted_file, "rb") as decr:
            original_data = orig.read()
            decrypted_data = decr.read()

            if original_data == decrypted_data:
                print("The original and decrypted files are identical.")
                exit(0)
            else:
                print("The original and decrypted files differ.")
                exit(1)
    except FileNotFoundError as e:
        print(f"File not found: {e}")
        exit(1)
    except Exception as e:
        print(f"Error comparing files: {e}")
        exit(-1)

@secure_eavesdrop
def rep_create_org(organization, username, name, email, credentials_file):
    try:
        with open(credentials_file, 'r') as f:
            credentials = json.load(f)
        public_key = credentials.get("public_key", "").strip()
        if not public_key.startswith("-----BEGIN PUBLIC KEY-----"):
            print("Invalid public key format.")
            exit(1)
    except Exception as e:
        print(f"Failed to load public key from credentials file: {e}")
        exit(1)

    url = state.get("REP_ADDRESS", os.getenv("REP_ADDRESS", ""))
    if not url:
        print("REP_ADDRESS environment variable is not set.")
        exit(1)

    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}" 

    endpoint = f"{url}/organization/create"
    payload = {
        "organization": organization,
        "username": username,
        "name": name,
        "email": email,
        "public_key": public_key,
        "credentials_file": credentials_file
    }

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 201:
            print(f"'{organization}' created successfully.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to create organization because {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

from eavesdropping import secure_eavesdrop

@secure_eavesdrop
def rep_create_session(organization, username, password, credentials_file, session_file):
    if not session_file.startswith("session_"):
        print("Session file name must start with 'session_'.")
        exit(-1)

    if os.path.exists(session_file):
        print(f"Session file {session_file} already exists")
        exit(-1)

    try:
        with open(credentials_file, "r") as f:
            credentials = json.load(f)
        salt = base64.b64decode(credentials["salt"])
        derived_key = derive_key(password, salt)

        private_key = serialization.load_pem_private_key(
            credentials["private_key"].encode(),
            password=derived_key,
            backend=default_backend()
        )
        public_key = private_key.public_key()
    except Exception as e:
        print(f"Failed to load credentials: {e}")
        exit(1)

    challenge = base64.urlsafe_b64encode(os.urandom(16)).decode()
    signature = private_key.sign(
        challenge.encode(),
        ec.ECDSA(hashes.SHA256())
    )
    signature_b64 = base64.b64encode(signature).decode()

    url = os.getenv("REP_ADDRESS", "http://localhost:5000")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"
    endpoint = f"{url}/session/create"
    payload = {
        "organization": organization,
        "username": username,
        "challenge": challenge,
        "signature": signature_b64
    }

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 201:
            session_data = response.json()
            with open(session_file, "w") as f:
                json.dump(session_data, f, indent=4)
            print(f"Session created successfully and saved to {session_file}.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to create session: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def load_metadata(metadata_file):
    try:
        with open(metadata_file, 'r') as f:
            return json.load(f)
    except Exception as e:
        print(f"Failed to load metadata file: {e}")
        exit(1)
        
def save_metadata(metadata, metadata_file):
    try:
        with open(metadata_file, 'w') as f:
            json.dump(metadata, f, indent=4)
    except Exception as e:
        print(f"Failed to save metadata file: {e}")
        exit(1)

def fix_base64_padding(encoded_str):
    return encoded_str + '=' * ((4 - len(encoded_str) % 4) % 4)

@secure_eavesdrop
def rep_decrypt_file(encrypted_file, encryption_metadata):
    try:
        with open(encryption_metadata, 'r') as f:
            metadata = json.load(f)

        file_handle = os.path.basename(encrypted_file)
        document_metadata = None
        for doc_id, doc in metadata.items():
            if doc.get("file_handle") == file_handle:
                document_metadata = doc
                break

        if not document_metadata:
            raise KeyError(f"file_handle '{file_handle}' not found in metadata.")
    except Exception as e:
        print(f"Failed to load or process encryption metadata: {e}")
        exit(1)

    try:
        key = base64.urlsafe_b64decode(fix_base64_padding(document_metadata["key"]))
        algorithm = document_metadata["alg"]
    except KeyError as e:
        print(f"Missing required field in metadata: {e}")
        exit(1)
    except base64.binascii.Error as e:
        print(f"Base64 decoding error: {e}")
        exit(1)

    if algorithm != "AES-GCM":
        print("Unsupported encryption algorithm. Only AES-GCM is supported.")
        exit(1)

    try:
        with open(encrypted_file, 'rb') as f:
            file_content = f.read()
        print(f"Encrypted file '{encrypted_file}' read successfully.")
    except Exception as e:
        print(f"Failed to read encrypted file: {e}")
        exit(1)

    iv_length = 16
    auth_tag_length = 16

    if len(file_content) < (iv_length + auth_tag_length):
        print("Encrypted file content is too short to contain IV and Auth Tag.")
        exit(1)

    iv = file_content[:iv_length]
    auth_tag = file_content[iv_length:iv_length + auth_tag_length]
    encrypted_data = file_content[iv_length + auth_tag_length:]

    try:
        cipher = Cipher(algorithms.AES(key), modes.GCM(iv, auth_tag), backend=default_backend())
        decryptor = cipher.decryptor()
        decrypted_data = decryptor.update(encrypted_data) + decryptor.finalize()
        print("Decryption successful!")
    except Exception as e:
        print(f"Decryption failed: {e}")
        exit(-1)

    original_name = document_metadata.get("name", "unknown")
    output_file_name = f"{original_name}_decrypted"

    decrypted_dir = os.path.join(os.path.dirname(os.path.dirname(encrypted_file)), "decrypted_files")
    os.makedirs(decrypted_dir, exist_ok=True)

    output_file = os.path.join(decrypted_dir, output_file_name)

    try:
        with open(output_file, "wb") as f:
            f.write(decrypted_data)
        print(f"Decrypted file saved to: {output_file}")
        exit(0)
    except Exception as e:
        print(f"Failed to save decrypted file: {e}")
        exit(1)

def rep_delete_doc(session_file, document_name):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    org_name = session_data.get("organization")
    username = session_data.get("username")
    if not org_name or not username:
        print("Invalid session: Missing organization or username.")
        exit(1)

    url = state.get("REP_ADDRESS", os.getenv("REP_ADDRESS", ""))
    if not url:
        print("REP_ADDRESS environment variable is not set.")
        exit(1)

    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/document/soft_delete"
    payload = {
        "session": json.dumps(session_data),
        "document_name": document_name
    }

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            data = response.json()
            file_handle = data.get("file_handle")
            print(f"File handle cleared for document '{document_name}' by '{username}'.")
            print(file_handle)
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to clear file handle: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)


def rep_delete_doc_from_rep(session_file, document_name):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    state = load_state()
    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    delete_url = f"{url}/document/delete"

    update_last_used(session_file)

    try:
        data = {
            "session": json.dumps(session_data),
            "document_name": document_name
        }

        response = requests.post(delete_url, json=data)

        if response.status_code == 200:
            print(f"Successfully deleted document '{document_name}'")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to delete document: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_drop_role(session_file, role_to_drop):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    url = state.get("REP_ADDRESS", os.getenv("REP_ADDRESS", ""))
    if not url:
        print("REP_ADDRESS environment variable is not set.")
        exit(1)

    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/session/drop_role"
    payload = {
        "session": session_data,
        "role": role_to_drop
    }

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            updated_session = response.json().get("session", {})
            with open(session_file, 'w') as f:
                json.dump(updated_session, f, indent=4)
            print(f"Role '{role_to_drop}' released successfully.")

            update_last_used(session_file)

            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to drop role: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_get_doc_file(session_file, document_name, output_file=None):
    server_url = state.get("REP_ADDRESS", "")
    if not server_url.startswith("http://") and not server_url.startswith("https://"):
        server_url = f"http://{server_url}"

    metadata_url = f"{server_url}/document/metadata"
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
        params = {"session": json.dumps(session_data), "document_name": document_name}
        response = requests.get(metadata_url, params=params)

        if response.status_code == 403:
            error_message = response.json().get("error", "Unknown error")
            if "DOC_READ permission" in error_message:
                print("You dont have DOC_READ permission")
                exit(1)
            else:
                print(f"Error: {error_message}")
                exit(1)

        response.raise_for_status()
        metadata = response.json()
    except requests.exceptions.RequestException as e:
        print(f"Error fetching metadata: {e}")
        exit(1)
    except Exception as e:
        print(f"Unexpected error: {e}")
        exit(1)

    try:
        key = base64.urlsafe_b64decode(metadata.get('key', '').encode())
        file_handle = metadata.get('file_handle', '')
        #logger.debug(f"Key: {key.hex()} (length: {len(key)})")
    except Exception as e:
        print(f"Error processing metadata fields: {e}")
        exit(1)

    file_url = f"{server_url}/file/get"
    params = {"file_handle": file_handle}
    try:
        response = requests.get(file_url, params=params, stream=True)
        response.raise_for_status()
        encrypted_data = response.content
    except Exception as e:
        print(f"Error fetching encrypted file: {e}")
        exit(1)

    update_last_used(session_file)

    try:
        iv = encrypted_data[:16]
        auth_tag = encrypted_data[16:32]
        ciphertext = encrypted_data[32:]

        cipher = Cipher(algorithms.AES(key), modes.GCM(iv, auth_tag), backend=default_backend())
        decryptor = cipher.decryptor()
        decrypted_data = decryptor.update(ciphertext) + decryptor.finalize()
    except Exception as e:
        print(f"Decryption failed: {e}")
        exit(-1)

    if output_file:
        output_dir = os.path.join(os.getcwd(), 'documents', 'get_doc_file')
        os.makedirs(output_dir, exist_ok=True)
        output_path = os.path.join(output_dir, os.path.basename(output_file))
        try:
            with open(output_path, "wb") as f:
                f.write(decrypted_data)
            print("Decrypted file saved to:", output_path)
            exit(0)
        except Exception as e:
            print(f"Error saving decrypted file: {e}")
            exit(1)
    else:
        try:
            sys.stdout.buffer.write(decrypted_data)
            exit(0)
        except Exception as e:
            print(f"Error writing decrypted data to stdout: {e}")
            exit(1)

@secure_eavesdrop
def rep_get_doc_metadata(session_file, document_name):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    state_dir = os.path.join(os.path.expanduser('~'), '.sio')
    state_file = os.path.join(state_dir, 'state.json')

    if not os.path.exists(state_file):
        print("State file not found. Run a session initialization script first.")
        exit(1)

    try:
        with open(state_file, 'r') as f:
            state = json.load(f)
    except Exception as e:
        print(f"Failed to load state file: {e}")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    metadata_url = f"{url}/document/metadata"
    params = {
        "session": json.dumps(session_data),
        "document_name": document_name
    }

    update_last_used(session_file)

    try:
        response = requests.get(metadata_url, params=params)
        if response.status_code != 200:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to fetch metadata: {error_message}")
            exit(-1)

        metadata = response.json()
        print(f"Metadata fetched for document '{document_name}':")
        print(json.dumps(metadata, indent=4))
        exit(0)
    except requests.RequestException as e:
        print(f"Error fetching metadata: {e}")
        exit(-1)

@secure_eavesdrop    
def rep_get_file(file_handle, output_file=None):
    state_file = os.path.expanduser("~/.sio/state.json")
    try:
        with open(state_file, "r") as f:
            state = json.load(f)
            server_url = state.get("REP_ADDRESS", "")
            if not server_url.startswith("http://") and not server_url.startswith("https://"):
                server_url = f"http://{server_url}"
    except Exception as e:
        print(f"Failed to load state file: {e}")
        exit(1)

    documents_dir = os.path.join(os.getcwd(), "documents")
    output_dir = os.path.join(documents_dir, "get_file")

    if not os.path.exists(documents_dir):
        os.makedirs(documents_dir)

    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    if output_file is None:
        file_name = os.path.basename(file_handle)
        output_file = os.path.join(output_dir, file_name)
    else:
        output_file = os.path.join(output_dir, os.path.basename(output_file))

    url = f"{server_url}/file/get"
    params = {"file_handle": file_handle}

    try:
        response = requests.get(url, params=params, stream=True)
        if response.status_code == 200:
            with open(output_file, "wb") as f:
                f.write(response.content)
            print(f"File saved to: {output_file}")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to fetch file: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error fetching file: {e}")
        exit(-1)

def rep_list_docs(session_file, username=None, date_filter=None, date_type=None):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    state = load_state()
    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"
    url = f"{url}/document/list"

    params = {
        "session": json.dumps(session_data),
        "username": username,
        "date": date_filter,
        "date_type": date_type
    }

    update_last_used(session_file)

    try:
        response = requests.get(url, params=params)
        if response.status_code == 200:
            documents = response.json()
            if not documents:
                print("No documents found.")
                exit(0)
            else:
                print("Documents found:")
                for doc in documents:
                    print(f"Document Name: {doc['document_name']}, Creator: {doc['creator']}, Date: {doc['create_date']}")
                exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to list documents: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)


def rep_list_orgs():
    url = state.get("REP_ADDRESS", os.getenv("REP_ADDRESS", ""))
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/organization/list"

    try:
        response = requests.get(endpoint)
        if response.status_code == 200:
            orgs = response.json()
            if not orgs:
                print("No organizations found.")
                exit(0)
            else:
                print("Organizations:")
                for org in orgs:
                    print(org)
                exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to list organizations: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_list_permission_roles(session_file, permission):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except FileNotFoundError:
        print(f"Session file '{session_file}' not found.")
        exit(1)
    except json.JSONDecodeError:
        print(f"Session file '{session_file}' contains invalid JSON.")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/permission/roles"
    payload = {
        "session": session_data,
        "permission": permission
    }

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            data = response.json()
            org_roles = data.get("organization_roles", [])
            doc_roles = data.get("document_roles", {})

            print(f"Roles with permission '{permission}':")
            if org_roles:
                print("Organization Roles:")
                for role in org_roles:
                    print(f"  - {role}")
            else:
                print("  None in organization roles.")

            if doc_roles:
                print("Document Roles:")
                for doc, roles in doc_roles.items():
                    print(f"  Document '{doc}':")
                    for role in roles:
                        print(f"    - {role}")
            else:
                print("  None in document roles.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to list roles: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_list_role_permissions(session_file, role):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except FileNotFoundError:
        print(f"Session file '{session_file}' not found.")
        exit(1)
    except json.JSONDecodeError:
        print(f"Session file '{session_file}' contains invalid JSON.")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/role/permissions"
    payload = {
        "session": session_data,
        "role": role
    }

    update_last_used(session_file)
                     
    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            permissions = response.json().get("permissions", [])
            if permissions:
                print(f"Permissions of role '{role}':")
                for perm in permissions:
                    print(perm)
                exit(0)
            else:
                print(f"No permissions found for role '{role}'.")
                exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to list permissions: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_list_role_subjects(session_file, role):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except FileNotFoundError:
        print(f"Session file '{session_file}' not found.")
        exit(1)
    except json.JSONDecodeError:
        print(f"Session file '{session_file}' contains invalid JSON.")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/role/subjects"
    payload = {
        "session": session_data,
        "role": role
    }

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            subjects = response.json().get("subjects", [])
            if subjects:
                print(f"Subjects of role '{role}':")
                for subject in subjects:
                    print(subject)
                exit(0)
            else:
                print(f"No subjects found for role '{role}'.")
                exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to list subjects: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_list_roles(session_file):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    url = state.get("REP_ADDRESS", os.getenv("REP_ADDRESS", ""))
    if not url:
        print("REP_ADDRESS environment variable is not set.")
        exit(1)

    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/session/list_roles"
    payload = {
        "session": session_data
    }

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            data = response.json()
            roles = data.get("roles", [])
            if roles:
                print("Current session roles:")
                for role in roles:
                    print(role)
                exit(0)
            else:
                print("No roles associated with the current session.")
                exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to list roles: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)


def validate_session(session_content):
    try:
        session_data = json.loads(session_content)
        if "organization" not in session_data:
            raise ValueError("Session data must include an 'organization' key.")
        return session_data
    except json.JSONDecodeError:
        raise ValueError("Session data is not valid JSON.")

def rep_list_subjects(session_file, username=None):
    try:
        with open(session_file, "r") as f:
            session = f.read()

        session_data = validate_session(session)

        update_last_used(session_file)

    except (FileNotFoundError, ValueError) as e:
        print(f"Error loading or validating session file: {e}")
        exit(1)

    data = {
        "session": json.dumps(session_data),
        "username": username
    }

    try:
        url = f"http://{state['REP_ADDRESS']}/subject/list"
        req = requests.get(url, params=data)
        if req.status_code == 200:
            subjects = req.json()
            if subjects:
                print("Subjects:")
                for subject in subjects:
                    print(f"    {subject['username']} | {subject['status']}")
                exit(0)
            else:
                print("No subjects found.")
                exit(0)
        else:
            print(f"Error from server: {req.text}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error making request to the server: {e}")
        exit(-1)


def rep_list_subject_roles(session_file, username):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except FileNotFoundError:
        print(f"Session file '{session_file}' not found.")
        exit(1)
    except json.JSONDecodeError:
        print(f"Session file '{session_file}' contains invalid JSON.")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/subject/roles"
    payload = {
        "session": session_data,
        "username": username
    }

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            roles = response.json().get("roles", [])
            if roles:
                print(f"Roles of subject '{username}':")
                for role in roles:
                    print(role)
                exit(0)
            else:
                print(f"No roles found for subject '{username}'.")
                exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to list roles: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_reactivate_role(session_file, role_to_reactivate):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except FileNotFoundError:
        print(f"Session file '{session_file}' not found.")
        exit(1)
    except json.JSONDecodeError:
        print(f"Session file '{session_file}' contains invalid JSON.")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/role/reactivate"
    payload = {"session": session_data, "role": role_to_reactivate}

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            print(f"Role '{role_to_reactivate}' reactivated successfully.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to reactivate role: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_remove_permission(session_file, role, value):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    org_name = session_data.get("organization")
    if not org_name:
        print("Session file is missing the 'organization' field.")
        exit(1)

    org_file = "data/org_subjects.json"
    try:
        with open(org_file, 'r') as f:
            org_subjects = json.load(f)
    except FileNotFoundError:
        print(f"The '{org_file}' file was not found.")
        exit(1)
    except json.JSONDecodeError:
        print(f"The '{org_file}' file contains invalid JSON.")
        exit(1)

    if org_name not in org_subjects:
        print(f"Organization '{org_name}' not found in '{org_file}'.")
        exit(1)

    property_type = "subject" if value in org_subjects[org_name] else "permission"

    url = state.get("REP_ADDRESS", os.getenv("REP_ADDRESS", ""))
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/role/remove_property"
    payload = {
        "session": session_data,
        "role": role,
        "type": property_type,
        "value": value
    }

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            print(f"{property_type.capitalize()} '{value}' removed from role '{role}' successfully.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to remove {property_type}: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

@secure_eavesdrop
def rep_subject_credentials(password, credentials_file):
    try:
        pub_key_file = f"{credentials_file}.pub"
        if os.path.exists(pub_key_file):
            raise FileExistsError(f"{pub_key_file} already exists, try another one")

        salt = os.urandom(16)
        derived_key = derive_key(password, salt)

        private_key = ec.generate_private_key(ec.SECP256R1(), default_backend())

        private_bytes = private_key.private_bytes(
            encoding=Encoding.PEM,
            format=PrivateFormat.PKCS8,
            encryption_algorithm=BestAvailableEncryption(derived_key)
        )

        public_key = private_key.public_key()
        public_bytes = public_key.public_bytes(
            encoding=Encoding.PEM,
            format=PublicFormat.SubjectPublicKeyInfo
        )

        credentials = {
            "salt": base64.b64encode(salt).decode(),
            "private_key": private_bytes.decode(),
            "public_key": public_bytes.decode()
        }

        with open(credentials_file, "w") as f:
            json.dump(credentials, f, indent=4)

        with open(pub_key_file, "w") as f:
            f.write(public_bytes.decode())

        print(f"Credentials saved to {credentials_file}.")
        print(f"Public key saved to {pub_key_file}.")
        exit(0)
    except FileExistsError as e:
        print(f"{e}")
        exit(-1)
    except Exception as e:
        print(f"Failed to generate credentials: {e}")
        exit(-1)

def rep_suspend_role(session_file, role_to_suspend):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
    except FileNotFoundError:
        print(f"Session file '{session_file}' not found.")
        exit(1)
    except json.JSONDecodeError:
        print(f"Session file '{session_file}' contains invalid JSON.")
        exit(1)

    url = state.get("REP_ADDRESS", "")
    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    endpoint = f"{url}/role/suspend"
    payload = {"session": session_data, "role": role_to_suspend}

    update_last_used(session_file)

    try:
        response = requests.post(endpoint, json=payload)
        if response.status_code == 200:
            print(f"Role '{role_to_suspend}' suspended successfully.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to suspend role: {error_message}")
            exit(-1)
    except requests.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)

def rep_suspend_subject(session_file, username):
    try:
        with open(session_file, 'r') as f:
            session_data = json.load(f)
        if "organization" not in session_data:
            raise ValueError("Session data must include an 'organization' key.")
    except Exception as e:
        print(f"Failed to load session file: {e}")
        exit(1)

    url = state.get("REP_ADDRESS") or os.getenv("REP_ADDRESS")
    if not url:
        print("ERROR - REP_ADDRESS environment variable is not set.")
        exit(1)

    if not url.startswith("http://") and not url.startswith("https://"):
        url = f"http://{url}"

    url = f"{url}/subject/suspend"
    payload = {
        "session": session_data,
        "username": username
    }

    update_last_used(session_file)

    try:
        response = requests.post(url, json=payload)
        if response.status_code == 200:
            print(f"Subject '{username}' suspended successfully.")
            exit(0)
        else:
            error_message = response.json().get("error", "Unknown error")
            print(f"Failed to suspend subject: {error_message}")
            exit(-1)
    except requests.exceptions.RequestException as e:
        print(f"Error connecting to the server: {e}")
        exit(-1)


def parse_args(state):
    parser = argparse.ArgumentParser()

    parser.add_argument("-k", '--key', nargs=1, help="Path to the key file")
    parser.add_argument("-r", '--repo', nargs=1, help="Address:Port of the repository")
    parser.add_argument("-v", '--verbose', help="Increase verbosity", action="store_true")
    parser.add_argument("command", choices=["rep_acl_doc","rep_activate_subject","rep_add_doc","rep_add_permission",
    "rep_add_role","rep_add_subject","rep_assume_role","rep_compare_files","rep_create_org","rep_create_session","rep_decrypt_file",
    "rep_delete_doc","rep_delete_doc_from_rep","rep_drop_role","rep_get_doc_file","rep_get_doc_metadata","rep_get_file",
    "rep_list_docs","rep_list_orgs","rep_list_permission_roles","rep_list_role_permissions","rep_list_role_subjects",
    "rep_list_roles","rep_list_subjects","rep_list_subject_roles","rep_reactivate_role","rep_remove_permission",
    "rep_subject_credentials","rep_suspend_role","rep_suspend_subject"], help="Command to execute")
    parser.add_argument("args", nargs=argparse.REMAINDER, help="Arguments for the command")

    args = parser.parse_args()
    if args.verbose:
        logger.setLevel(logging.DEBUG)
        logger.info('Setting log level to DEBUG')

    if args.key:
        if not os.path.exists(args.key[0]) or not os.path.isfile(args.key[0]):
            logger.error(f'Key file not found or invalid: {args.key[0]}')
            sys.exit(-1)

        with open(args.key[0], 'r') as f:
            state['REP_PUB_KEY'] = f.read()
            logger.info('Overriding REP_PUB_KEY from command line')

    if args.repo:
        state['REP_ADDRESS'] = args.repo[0]
        logger.info('Overriding REP_ADDRESS from command line')

    command_details = {
        'command': args.command,
        'args': args.args
    }

    logging.debug(f"Command: {command_details['command']}")
    logging.debug(f"Command arguments: {command_details['args']}")

    return state, command_details

def save(state):
    state_dir = os.path.join(os.path.expanduser('~'), '.sio')
    state_file = os.path.join(state_dir, 'state.json')

    if not os.path.exists(state_dir):
      logger.debug('Creating state folder')
      os.mkdir(state_dir)

    with open(state_file, 'w') as f:
        f.write(json.dumps(state, indent=4))


state = load_state()
state = parse_env(state)
state, args = parse_args(state)

if args['command'] =="rep_acl_doc":
    if len(args['args']) != 5:
        print("rep_acl_doc <session file> <document name> [+/-] <role> <permission>")
    else:
        rep_acl_doc(args['args'][0], args['args'][1], args['args'][2], args['args'][3], args['args'][4])
elif args['command']=="rep_activate_subject":
    if len(args['args']) != 2:
        print("rep_activate_subject <session file> <username>")
    else:
        rep_activate_subject(args['args'][0], args['args'][1])
elif args['command'] == "rep_add_doc":
    if len(args['args']) != 3:
        print("rep_add_doc <session file> <document name> <file>")
        sys.exit(1)
    else:
        rep_add_doc(args['args'][0], args['args'][1], args['args'][2])
elif args['command']=="rep_add_permission":
    if len(args['args']) != 3:
        print("rep_add_permission <session file> <role> <subject or permission>")
    else:
        rep_add_permission(args['args'][0],args['args'][1],args['args'][2]) 
elif args['command']=="rep_add_role":
    if len(args['args']) != 2:
        print("rep_add_role <session file> <role>")
    else:
        rep_add_role(args['args'][0], args['args'][1])
elif args['command']=="rep_add_subject":
    if len(args['args']) != 5:
        print("rep_add_subject <session file> <username> <name> <email> <credentials file>")
    else:
        rep_add_subject(args['args'][0], args['args'][1], args['args'][2], args['args'][3], args['args'][4])
elif args['command']=="rep_assume_role":
    if len(args['args']) != 2:
        print("rep_assume_role <session file> <role>")
    else:
        rep_assume_role(args['args'][0], args['args'][1])
elif args['command'] == "rep_compare_files":
    if len(args['args']) != 1:
        print("rep_compare_files <file name>")
    else:
        rep_compare_files(args['args'][0])
elif args['command']=="rep_create_org":
    if len(args['args']) != 5:
        print("rep_create_org <organization> <username> <name> <email> <credentials file>")
    else:
        rep_create_org(args['args'][0], args['args'][1], args['args'][2], args['args'][3], args['args'][4])
elif args['command']=="rep_create_session":
    if len(args['args']) != 5:
        print("rep_create_session <organization> <username> <password> <credentials file> <session file>")
    else:
        rep_create_session(args['args'][0], args['args'][1], args['args'][2], args['args'][3], args['args'][4])
elif args['command']=="rep_decrypt_file":
    if len(args['args']) != 2:
        print("rep_decrypt_file <encrypted file> <encryption metadata>")
    else:
        rep_decrypt_file(args['args'][0], args['args'][1])
elif args['command']=="rep_delete_doc":
    if len(args['args']) != 2:
        print("rep_delete_doc <session file> <document name>")
    else:
        rep_delete_doc(args['args'][0], args['args'][1])
elif args['command']=="rep_delete_doc_from_rep":
    if len(args['args']) != 2:
        print("rep_delete_doc_from_rep <session file> <document name>")
    else:
        rep_delete_doc_from_rep(args['args'][0], args['args'][1])
elif args['command']=="rep_drop_role":
    if len(args['args']) != 2:
        print("rep_drop_role <session file> <role>")
    else:
        rep_drop_role(args['args'][0], args['args'][1])
elif args['command']=="rep_get_doc_file":
    if len(args['args']) not in [2, 3]:
        print("rep_get_doc_file <session file> <document name> [output file]")
    else:
        rep_get_doc_file(args['args'][0], args['args'][1], args['args'][2] if len(args['args']) == 3 else None)
elif args['command']=="rep_get_doc_metadata":
    if len(args['args']) != 2:
        print("rep_get_doc_metadata <session file> <document name>")
    else:
        rep_get_doc_metadata(args['args'][0], args['args'][1])
elif args['command']=="rep_get_file":
    if len(args['args']) not in [1,2]:
        print("rep_get_file <file handle> [output file]")
    else:
        rep_get_file(args['args'][0], args['args'][1] if len(args['args']) == 2 else None)
elif args['command'] == "rep_list_docs":
    if len(args['args']) < 1:
        print("rep_list_docs <session file> [-s username] [-d nt/ot/et DD-MM-YYYY]")
        sys.exit(1)

    session_file = args['args'][0]
    username = None
    date_type = None
    date_filter = None

    for i in range(1, len(args['args'])):
        if args['args'][i] == "-s" and i + 1 < len(args['args']):
            username = args['args'][i + 1]
        elif args['args'][i] == "-d" and i + 1 < len(args['args']):
            try:
                date_type, date_filter = args['args'][i + 1].split(" ")
            except ValueError:
                print("Invalid date filter format. Use: -d nt/ot/et DD-MM-YYYY")
                sys.exit(1)

    rep_list_docs(session_file, username=username, date_filter=date_filter, date_type=date_type)

elif args['command']=="rep_list_orgs":
    rep_list_orgs()
elif args['command']=="rep_list_permission_roles":
    if len(args['args']) != 2:
        print("rep_list_permission_roles <session file> <permission>")
    else:
        rep_list_permission_roles(args['args'][0], args['args'][1])
elif args['command']=="rep_list_role_permissions":
    if len(args['args']) != 2:
        print("rep_list_role_permissions <session file> <role>")
    else:
        rep_list_role_permissions(args['args'][0], args['args'][1])
elif args['command']=="rep_list_role_subjects":
    if len(args['args']) != 2:
        print("rep_list_role_subjects <session file> <role>")
    else:
        rep_list_role_subjects(args['args'][0], args['args'][1])
elif args['command']=="rep_list_roles":
    if len(args['args']) != 1:
        print("rep_list_roles <session file>")
    else:
        rep_list_roles(args['args'][0])
elif args['command']=="rep_list_subjects":
    if len(args['args']) not in [1, 2]:
        print("rep_list_subjects <session_file> [username]")
    else:
        rep_list_subjects(args['args'][0], args['args'][1] if len(args['args']) == 2 else None)
elif args['command']=="rep_list_subject_roles":
    if len(args['args']) != 2:
        print("rep_list_subject_roles <session file> <username>")
    else:
        rep_list_subject_roles(args['args'][0], args['args'][1])
elif args['command']=="rep_reactivate_role":
    if len(args['args']) != 2:
        print("rep_reactivate_role <session file> <role>")
    else:
        rep_reactivate_role(args['args'][0], args['args'][1])
elif args['command'] == "rep_remove_permission":
    if len(args['args']) != 3:
        print("rep_remove_permission <session file> <role> <subject or permission>")
    else:
       rep_remove_permission(args['args'][0],args['args'][1],args['args'][2]) 
elif args['command']=="rep_subject_credentials":
    if len(args['args']) != 2:
        print("rep_subject_credentials <password> <credentials file>")
    else:
        rep_subject_credentials(args['args'][0], args['args'][1])
elif args['command']=="rep_suspend_role":
    if len(args['args']) != 2:
        print("rep_suspend_role <session file> <role>")
    else:
        rep_suspend_role(args['args'][0], args['args'][1])
elif args['command']=="rep_suspend_subject":
    if len(args['args']) != 2:
        print("rep_suspend_subject <session file> <username>")
    else:
        rep_suspend_subject(args['args'][0], args['args'][1])
else:
    req = requests.get(f'http://{state["REP_ADDRESS"]}/organization/list')
    print(req.json())
    save(state)