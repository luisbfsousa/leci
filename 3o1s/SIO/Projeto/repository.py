from venv import logger
from flask import Flask, request, jsonify, send_file
import os
import json
import base64
import datetime
from cryptography.hazmat.primitives.asymmetric import ec
from cryptography.hazmat.primitives.hashes import SHA256
from cryptography.hazmat.primitives.asymmetric.utils import Prehashed
from cryptography.hazmat.primitives.serialization import load_pem_public_key
from cryptography.hazmat.primitives import serialization, hashes
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.backends import default_backend
from base64 import b64decode, b64encode, urlsafe_b64encode
from eavesdropping import secure_eavesdrop
import time
import threading


app = Flask(__name__)

DATA_DIR = "data"
os.makedirs(DATA_DIR, exist_ok=True)
FILES_DIR = "documents"
os.makedirs(FILES_DIR, exist_ok=True)

DOCUMENTS_FILE = os.path.join(DATA_DIR, "documents.json")
ORGANIZATIONS_FILE = os.path.join(DATA_DIR, "organizations.json")
SUBJECTS_FILE = os.path.join(DATA_DIR, "subjects.json")
ORG_SUBJECTS_FILE = os.path.join(DATA_DIR, "org_subjects.json")

organizations = {}
subjects = {}
org_subjects = {}
documents = {}

SESSION_LIFETIME = 3600
SESSION_FILE_PREFIX = "session_"

def load_data():
    global organizations, subjects, org_subjects
    if os.path.exists(ORGANIZATIONS_FILE):
        with open(ORGANIZATIONS_FILE, 'r') as f:
            organizations = json.load(f)

    if os.path.exists(SUBJECTS_FILE):
        with open(SUBJECTS_FILE, 'r') as f:
            subjects = json.load(f)

    if os.path.exists(ORG_SUBJECTS_FILE):
        with open(ORG_SUBJECTS_FILE, 'r') as f:
            org_subjects = json.load(f)

def save_data():
    with open(ORGANIZATIONS_FILE, 'w') as f:
        json.dump(organizations, f, indent=4)
    with open(SUBJECTS_FILE, 'w') as f:
        json.dump(subjects, f, indent=4)
    with open(ORG_SUBJECTS_FILE, 'w') as f:
        json.dump(org_subjects, f, indent=4)

def load_documents():
    global documents
    if os.path.exists(DOCUMENTS_FILE):
        with open(DOCUMENTS_FILE, 'r') as f:
            documents = json.load(f)

def save_documents():
    with open(DOCUMENTS_FILE, 'w') as f:
        json.dump(documents, f, indent=4)

def get_user_permissions(org_name, username): #suspend/activate sub
    roles = organizations[org_name].get("roles", {})
    user_permissions = set()
    for role, details in roles.items():
        if username in details.get("subjects", []):
            user_permissions.update(details.get("permissions", []))
    return user_permissions

def verify_signature(public_key_pem, challenge, signature_b64):
    public_key = serialization.load_pem_public_key(
        public_key_pem.encode(),
        backend=default_backend()
    )
    signature = base64.b64decode(signature_b64)
    challenge_bytes = challenge.encode()

    public_key.verify(
        signature,
        challenge_bytes,
        ec.ECDSA(hashes.SHA256())
    )

def is_suspended(username):
    if username not in subjects:
        raise ValueError(f"Subject '{username}' not found.")
    if subjects[username]["status"] != "active":
        raise PermissionError("The subject is suspended.")
    
def monitor_sessions():
    while True:
        for session_file in os.listdir("."):
            if session_file.startswith(SESSION_FILE_PREFIX):
                try:
                    with open(session_file, "r") as f:
                        session_data = json.load(f)
                    last_used = session_data.get("last_used")
                    current_time = int(time.time())

                    if last_used and current_time - last_used > SESSION_LIFETIME:
                        os.remove(session_file)
                        print(f"\nSession file '{session_file}' expired and has been deleted\n")
                except Exception as e:
                    print(f"Error processing session file '{session_file}': {e}")

        time.sleep(1)

threading.Thread(target=monitor_sessions, daemon=True).start()

def update_last_used_server(session_file):
    try:
        with open(session_file, "r+") as f:
            session_data = json.load(f)
            session_data["last_used"] = int(time.time())
            f.seek(0)
            json.dump(session_data, f, indent=4)
            f.truncate()
    except Exception as e:
        pass

@app.route("/organization/list", methods=["GET"])
def org_list():
    return jsonify(organizations)

@app.route("/organization/create", methods=["POST"])
@secure_eavesdrop
def org_create():
    try:
        org_name = request.json.get("organization")
        username = request.json.get("username")
        name = request.json.get("name")
        email = request.json.get("email")
        public_key = request.json.get("public_key")
        credentials_file_path = request.json.get("credentials_file")

        if not org_name or not username or not name or not email or not public_key or not credentials_file_path:
            return jsonify({"error": "Missing parameters"}), 400

        if org_name in organizations:
            return jsonify({"error": "Organization already exists"}), 400

        try:
            with open(credentials_file_path, "r") as f:
                credentials = json.load(f)
            salt = credentials.get("salt")
            private_key = credentials.get("private_key")
            if not salt or not private_key:
                raise ValueError("Incomplete credentials file")
        except Exception as e:
            return jsonify({"error": f"Failed to load credentials for subject: {str(e)}"}), 400

        organizations[org_name] = {
            "roles": {
                "managers": {
                    "permissions": ["DOC_READ", "DOC_DELETE", "DOC_ACL", "ROLE_NEW", "ROLE_DOWN", "ROLE_UP", "ROLE_MOD", "ROLE_ACL", "SUBJECT_NEW", "SUBJECT_DOWN", "SUBJECT_UP", "DOC_NEW"],
                    "subjects": [username]
                }
            }
        }

        subjects[username] = {
            "name": name,
            "email": email,
            "pubkey": public_key,
            "status": "active"
        }
        org_subjects.setdefault(org_name, []).append(username)

        save_data()
        return jsonify({"message": "Organization created"}), 201
    except Exception as e:
        return jsonify({"error": f"Internal server error: {str(e)}"}), 500

@app.route("/session/create", methods=["POST"])
@secure_eavesdrop
def create_session():
    data = request.json
    org_name = data.get("organization")
    username = data.get("username")
    challenge = data.get("challenge")
    signature_b64 = data.get("signature")

    if not org_name or not username or not challenge or not signature_b64:
        return jsonify({"error": "Missing parameters"}), 400

    if org_name not in organizations:
        return jsonify({"error": "Organization not found"}), 404
    if username not in subjects:
        return jsonify({"error": "User not found"}), 404

    try:
        public_key_pem = subjects[username]["pubkey"]
        verify_signature(public_key_pem, challenge, signature_b64)
    except Exception:
        return jsonify({"error": "Invalid Session File"}), 400

    session_id = f"{username}-{org_name}-session"
    session_data = {
        "session_id": session_id,
        "username": username,
        "organization": org_name,
        "last_used": int(time.time())
    }

    return jsonify(session_data), 201

@app.route("/file/get", methods=["GET"])
@secure_eavesdrop
def get_file():
    file_handle = request.args.get("file_handle")
    output_path = request.args.get("output_path")

    if not file_handle:
        return jsonify({"error": "File handle is required"}), 400

    encrypted_dir = os.path.join(FILES_DIR, "encrypted_files")
    file_path = os.path.join(encrypted_dir, file_handle)

    if not os.path.exists(file_path):
        return jsonify({"error": "File not found"}), 404

    if output_path:
        try:
            os.makedirs(os.path.dirname(output_path), exist_ok=True)
            with open(file_path, 'rb') as src, open(output_path, 'wb') as dst:
                dst.write(src.read())
            return jsonify({"message": f"File saved to {output_path}"}), 200
        except Exception as e:
            return jsonify({"error": f"Failed to save file: {str(e)}"}), 500

    return send_file(file_path, as_attachment=True)

@app.route("/subject/list", methods=["GET"])
def list_subjects():
    session = request.args.get("session")
    username = request.args.get("username")

    try:
        session_data = json.loads(session)
        org_name = session_data.get("organization")
        requesting_user = session_data.get("username")
        if not org_name or not requesting_user:
            raise ValueError("Invalid session data: Missing 'organization' or 'username'.")

        session_file = f"session_{requesting_user}_{org_name}.json"
        update_last_used_server(session_file)

        is_suspended(requesting_user)

    except (json.JSONDecodeError, ValueError, KeyError):
        return jsonify({"error": "Invalid session data"}), 400
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    if org_name not in organizations:
        return jsonify({"error": "Organization not found"}), 404

    subjects_in_org = org_subjects.get(org_name, [])
    response = []

    if username:
        if username in subjects_in_org:
            user_data = subjects[username]
            response.append({"username": username, "status": user_data["status"]})
        else:
            return jsonify({"error": f"User '{username}' not found in organization."}), 404
    else:
        for user in subjects_in_org:
            user_data = subjects[user]
            response.append({"username": user, "status": user_data["status"]})

    return jsonify(response), 200

@app.route("/subject/add", methods=["POST"])
@secure_eavesdrop
def add_subject():
    session = request.json.get("session")
    username = request.json.get("username")
    name = request.json.get("name")
    email = request.json.get("email")
    public_key = request.json.get("credentials") 

    try:
        session_data = json.loads(session)
        org_name = session_data.get("organization")
        actor = session_data.get("username")
        if not org_name or not actor:
            raise ValueError("Missing 'organization' or 'username' in session data.")
        
        is_suspended(actor)

    except (json.JSONDecodeError, ValueError, KeyError) as e:
        return jsonify({"error": f"Invalid session data: {str(e)}"}), 400
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    if org_name not in organizations:
        return jsonify({"error": "Organization not found"}), 404

    if username in subjects:
        return jsonify({"error": "Subject already exists"}), 400

    if not public_key or not public_key.startswith("-----BEGIN PUBLIC KEY-----"):
        return jsonify({"error": "Invalid or missing public key."}), 400

    subjects[username] = {
        "name": name,
        "email": email,
        "pubkey": public_key,
        "status": "active",
    }
    org_subjects.setdefault(org_name, []).append(username)

    save_data()

    return jsonify({"message": f"Subject '{username}' added successfully."}), 201

@app.route("/subject/activate", methods=["POST"])
def activate_subject():
    session_data = request.json.get("session")
    username = request.json.get("username")

    if not session_data or not username:
        return jsonify({"error": "Missing session data or username."}), 400

    org_name = session_data.get("organization")
    actor = session_data.get("username")

    if not org_name or not actor:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    if username not in subjects:
        return jsonify({"error": f"Subject '{username}' not found."}), 404

    try:
        is_suspended(actor)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    try:
        with open("data/org_subjects.json", "r") as f:
            org_subjects_data = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "org_subjects file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "org_subjects file contains invalid JSON."}), 500

    all_org_subjects = set(org_subjects_data.get(org_name, []))

    for role, details in organizations[org_name]["roles"].items():
        all_org_subjects.update(details.get("subjects", []))

    if username not in all_org_subjects:
        return jsonify({"error": f"Subject '{username}' is not part of organization '{org_name}'."}), 403

    actor_permissions = get_user_permissions(org_name, actor)
    if "SUBJECT_UP" not in actor_permissions:
        return jsonify({"error": "User does not have the SUBJECT_UP permission."}), 403

    subjects[username]["status"] = "active"

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    try:
        with open(SUBJECTS_FILE, "w") as f:
            json.dump(subjects, f, indent=4)
    except Exception as e:
        return jsonify({"error": f"Failed to save subject status: {str(e)}"}), 500

    return jsonify({"message": f"Subject '{username}' activated successfully."}), 200

@app.route("/subject/suspend", methods=["POST"])
def suspend_subject():
    session_data = request.json.get("session")
    username = request.json.get("username")

    if not session_data or not username:
        return jsonify({"error": "Missing session data or username."}), 400

    org_name = session_data.get("organization")
    actor = session_data.get("username")

    if not org_name or not actor:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    if username not in subjects:
        return jsonify({"error": f"Subject '{username}' not found."}), 404

    try:
        is_suspended(actor)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    try:
        with open("data/org_subjects.json", "r") as f:
            org_subjects_data = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "org_subjects file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "org_subjects file contains invalid JSON."}), 500

    all_org_subjects = set(org_subjects_data.get(org_name, []))

    for role, details in organizations[org_name]["roles"].items():
        all_org_subjects.update(details.get("subjects", []))

    if username not in all_org_subjects:
        return jsonify({"error": f"Subject '{username}' is not part of organization '{org_name}'."}), 403

    actor_permissions = get_user_permissions(org_name, actor)
    if "SUBJECT_DOWN" not in actor_permissions:
        return jsonify({"error": "User does not have the SUBJECT_DOWN permission."}), 403

    managers_subjects = organizations[org_name]["roles"].get("managers", {}).get("subjects", [])
    if username in managers_subjects and subjects[username]["status"] == "active":
        return jsonify({"error": f"Cannot suspend subject manager '{username}'"}), 403

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    subjects[username]["status"] = "suspended"

    try:
        with open(SUBJECTS_FILE, "w") as f:
            json.dump(subjects, f, indent=4)
    except Exception as e:
        return jsonify({"error": f"Failed to save subject status: {str(e)}"}), 500

    return jsonify({"message": f"Subject '{username}' suspended successfully."}), 200


@app.route("/document/add", methods=["POST"])
def add_document():
    session = request.form.get("session")
    document_name = request.form.get("document_name")
    file_content = request.files.get("file")

    try:
        session_data = json.loads(session)
        org_name = session_data.get("organization")
        creator = session_data.get("username")
        if not org_name or not creator:
            raise ValueError("Missing 'organization' or 'username' in session data.")

        is_suspended(creator)

    except (json.JSONDecodeError, KeyError, TypeError, ValueError) as e:
        return jsonify({"error": f"Invalid session data: {str(e)}"}), 400
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    if not document_name or not file_content:
        return jsonify({"error": "Document name or file content missing"}), 400

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    actor_permissions = get_user_permissions(org_name, creator)
    if "DOC_NEW" not in actor_permissions:
        return jsonify({"error": "User does not have the DOC_NEW permission."}), 403

    for doc in documents.values():
        if doc["name"] == document_name:
            return jsonify({"error": f"'{document_name}' already exists."}), 409

    document_handle = urlsafe_b64encode(os.urandom(16)).decode("utf-8")
    file_handle = urlsafe_b64encode(os.urandom(16)).decode("utf-8")
    encryption_key = os.urandom(32)
    iv = os.urandom(16)

    cipher = Cipher(algorithms.AES(encryption_key), modes.GCM(iv), backend=default_backend())
    encryptor = cipher.encryptor()
    encrypted_file_content = encryptor.update(file_content.read()) + encryptor.finalize()
    auth_tag = encryptor.tag

    encrypted_dir = os.path.join(FILES_DIR, "encrypted_files")
    os.makedirs(encrypted_dir, exist_ok=True)
    file_path = os.path.join(encrypted_dir, file_handle)

    session_file = f"session_{creator}_{org_name}.json"
    update_last_used_server(session_file)

    try:
        with open(file_path, 'wb') as f:
            f.write(iv + auth_tag + encrypted_file_content)
    except Exception as e:
        return jsonify({"error": f"Failed to save file: {str(e)}"}), 500

    create_date = datetime.datetime.now(datetime.UTC).isoformat()
    documents[document_handle] = {
        "name": document_name,
        "create_date": create_date,
        "creator": creator,
        "organization": org_name,
        "file_handle": file_handle,
        "acl": {},
        "deleter": None,
        "alg": "AES-GCM",
        "key": base64.urlsafe_b64encode(encryption_key).decode("utf-8"),
        "iv": base64.urlsafe_b64encode(iv).decode("utf-8"),
        "auth_tag": base64.urlsafe_b64encode(auth_tag).decode("utf-8")
    }

    save_documents()

    return jsonify({"message": f"Document '{document_name}' added successfully.", "document_handle": document_handle}), 201


@app.route("/document/metadata", methods=["GET"])
@secure_eavesdrop
def get_document_metadata():
    session = request.args.get("session")
    document_name = request.args.get("document_name")

    try:
        session_data = json.loads(session)
        org_name = session_data.get("organization")
        username = session_data.get("username")
        if not org_name or not username:
            raise ValueError("Missing 'organization' or 'username' in session data.")

        is_suspended(username)

        organization_data = organizations.get(org_name, {})
        user_roles = [
            role for role, data in organization_data.get("roles", {}).items()
            if username in data.get("subjects", [])
        ]
    except (json.JSONDecodeError, KeyError, TypeError, ValueError) as e:
        return jsonify({"error": f"Invalid session data: {str(e)}"}), 400
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403
    except Exception as e:
        return jsonify({"error": "Internal server error"}), 500

    try:
        load_documents()
    except Exception as e:
        return jsonify({"error": f"Failed to load documents: {str(e)}"}), 500

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    for doc_handle, metadata in documents.items():
        if metadata["name"] == document_name and metadata.get("organization") == org_name:
            actor_permissions = get_user_permissions(org_name, username)
            if "DOC_READ" in actor_permissions:
                return jsonify({"document_handle": doc_handle, **metadata}), 200
            document_acl = metadata.get("acl", {})
            for role, permissions in document_acl.items():
                if role in user_roles and "DOC_READ" in permissions:
                    return jsonify({"document_handle": doc_handle, **metadata}), 200
            return jsonify({"error": "User does not have the DOC_READ permission."}), 403

    return jsonify({"error": "Document not found"}), 404


@app.route("/document/file", methods=["GET"])
def get_document_file():
    session = request.args.get("session")
    document_name = request.args.get("document_name")

    try:
        session_data = json.loads(session)
        org_name = session_data.get("organization")
        if not org_name:
            raise ValueError("Missing 'organization' in session data.")
    except (json.JSONDecodeError, KeyError, TypeError, ValueError) as e:
        return jsonify({"error": f"Invalid session data: {str(e)}"}), 400

    for doc_handle, metadata in documents.items():
        if metadata["name"] == document_name:
            file_path = os.path.join(FILES_DIR, metadata["file_handle"])
            if os.path.exists(file_path):
                return send_file(file_path, as_attachment=True)
            else:
                return jsonify({"error": "File not found"}), 404

    return jsonify({"error": "Document not found"}), 404

@app.route("/document/delete", methods=["POST"])
def delete_document_from_rep():
    data = request.json
    session = data.get("session")
    document_name = data.get("document_name")

    try:
        session_data = json.loads(session)
        org_name = session_data.get("organization")
        username = session_data.get("username")
        if not org_name or not username:
            raise ValueError("Missing 'organization' or 'username' in session data.")

        is_suspended(username)

    except (json.JSONDecodeError, KeyError, TypeError, ValueError) as e:
        return jsonify({"error": f"Invalid session data: {str(e)}"}), 400
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    try:
        with open(DOCUMENTS_FILE, 'r') as f:
            documents = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Documents file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Documents file contains invalid JSON."}), 500

    document = None
    for doc_id, metadata in documents.items():
        if metadata["name"] == document_name and metadata.get("organization") == org_name:
            document = metadata
            break

    if not document:
        return jsonify({"error": f"Document '{document_name}' not found in organization '{org_name}'."}), 404

    try:
        with open(ORGANIZATIONS_FILE, 'r') as f:
            organizations = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Organizations file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Organizations file contains invalid JSON."}), 500

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    user_permissions = set()
    roles = organizations[org_name].get("roles", {})
    for role_name, role_data in roles.items():
        if username in role_data.get("subjects", []):
            user_permissions.update(role_data.get("permissions", []))

    if "DOC_DELETE" not in user_permissions:
        document_acl = document.get("acl", {})
        has_delete_permission = False
        for role, permissions in document_acl.items():
            if role in roles and username in roles[role]["subjects"] and "DOC_DELETE" in permissions:
                has_delete_permission = True
                break

        if not has_delete_permission:
            return jsonify({"error": "User does not have the DOC_DELETE permission."}), 403

    encrypted_dir = os.path.join(FILES_DIR, "encrypted_files")
    file_handle = document.get("file_handle")

    if file_handle:
        encrypted_file_path = os.path.join(encrypted_dir, file_handle)
        if os.path.exists(encrypted_file_path):
            os.remove(encrypted_file_path)

    local_file_path = os.path.join(FILES_DIR, f"{document['name']}.txt")
    if os.path.exists(local_file_path):
        os.remove(local_file_path)

    del documents[doc_id]

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    try:
        with open(DOCUMENTS_FILE, 'w') as f:
            json.dump(documents, f, indent=4)

        load_documents()

    except Exception as e:
        return jsonify({"error": f"Failed to delete document: {str(e)}"}), 500

    return jsonify({"message": f"Document '{document_name}' deleted successfully."}), 200


@app.route("/document/list", methods=["GET"])
def list_documents():
    session = request.args.get("session")
    creator = request.args.get("username")
    date_filter = request.args.get("date")
    date_type = request.args.get("date_type")

    try:
        session_data = json.loads(session)
        org_name = session_data.get("organization")
        username = session_data.get("username")
        if not org_name or not username:
            raise ValueError("Missing 'organization' or 'username' in session data.")

        is_suspended(username)

    except (json.JSONDecodeError, KeyError, ValueError) as e:
        return jsonify({"error": f"Invalid session data: {e}"}), 400
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    filtered_docs = []
    org_subjects_list = org_subjects.get(org_name, [])
    for doc_handle, metadata in documents.items():
        if metadata["creator"] not in org_subjects_list:
            continue

        if creator and metadata["creator"] != creator:
            continue

        if date_filter:
            try:
                doc_date = datetime.datetime.fromisoformat(metadata["create_date"])
                filter_date = datetime.datetime.strptime(date_filter, "%d-%m-%Y")

                if date_type == "nt" and doc_date <= filter_date:
                    continue
                elif date_type == "ot" and doc_date >= filter_date:
                    continue
                elif date_type == "et" and doc_date.date() != filter_date.date():
                    continue
            except ValueError:
                return jsonify({"error": "Invalid date format. Use DD-MM-YYYY."}), 400

        filtered_docs.append({
            "document_name": metadata["name"],
            "creator": metadata["creator"],
            "create_date": metadata["create_date"]
        })

    return jsonify(filtered_docs), 200


@app.route("/document/soft_delete", methods=["POST"])
def soft_delete_document():
    data = request.json
    session = data.get("session")
    document_name = data.get("document_name")

    try:
        session_data = json.loads(session)
        org_name = session_data.get("organization")
        username = session_data.get("username")
        if not org_name or not username:
            raise ValueError("Missing 'organization' or 'username' in session data.")

        is_suspended(username)

    except (json.JSONDecodeError, KeyError, TypeError, ValueError) as e:
        return jsonify({"error": f"Invalid session data: {str(e)}"}), 400
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    try:
        with open(DOCUMENTS_FILE, 'r') as f:
            documents = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Documents file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Documents file contains invalid JSON."}), 500

    document = None
    for doc_id, metadata in documents.items():
        if metadata["name"] == document_name and metadata.get("organization") == org_name:
            document = metadata
            break

    if not document:
        return jsonify({"error": f"Document '{document_name}' not found in organization '{org_name}'."}), 404

    try:
        with open(ORGANIZATIONS_FILE, 'r') as f:
            organizations = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Organizations file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Organizations file contains invalid JSON."}), 500

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    user_permissions = set()
    roles = organizations[org_name].get("roles", {})
    for role_name, role_data in roles.items():
        if username in role_data.get("subjects", []):
            user_permissions.update(role_data.get("permissions", []))

    if "DOC_DELETE" not in user_permissions:
        document_acl = document.get("acl", {})
        has_delete_permission = False
        for role, permissions in document_acl.items():
            if role in roles and username in roles[role]["subjects"] and "DOC_DELETE" in permissions:
                has_delete_permission = True
                break

        if not has_delete_permission:
            return jsonify({"error": "User does not have the DOC_DELETE permission."}), 403

    file_handle = document.get("file_handle")
    if not file_handle:
        return jsonify({"error": f"File handle for document '{document_name}' is already cleared."}), 400

    document["file_handle"] = None
    document["deleter"] = username

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    try:
        with open(DOCUMENTS_FILE, 'w') as f:
            json.dump(documents, f, indent=4)

        load_documents()

    except Exception as e:
        return jsonify({"error": f"Failed to save updated document data: {str(e)}"}), 500

    return jsonify({"message": f"Soft delete performed successfully for document '{document_name}'.", "file_handle": file_handle}), 200


#2a

@app.route("/role/add", methods=["POST"])
def add_role():
    data = request.json
    session_data = data.get("session")
    new_role = data.get("role")

    if not session_data or not new_role:
        return jsonify({"error": "Missing session or role data."}), 400

    org_name = session_data.get("organization")
    username = session_data.get("username")
    if not org_name or not username:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    try:
        is_suspended(username)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    if org_name not in organizations:
        return jsonify({"error": "Organization not found."}), 404

    roles = organizations[org_name].get("roles", {})
    user_permissions = set()
    for role, details in roles.items():
        if username in details.get("subjects", []):
            user_permissions.update(details.get("permissions", []))

    if "ROLE_NEW" not in user_permissions:
        return jsonify({"error": "User does not have the ROLE_NEW permission."}), 403

    if new_role in roles:
        return jsonify({"error": f"Role '{new_role}' already exists."}), 400

    organizations[org_name]["roles"][new_role] = {
        "permissions": [],
        "subjects": []
    }

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    try:
        with open(ORGANIZATIONS_FILE, 'w') as f:
            json.dump(organizations, f, indent=4)
    except Exception as e:
        return jsonify({"error": f"Failed to save role: {str(e)}"}), 500

    return jsonify({"message": f"Role '{new_role}' added successfully."}), 201

@app.route("/role/suspend", methods=["POST"])
def suspend_role():
    data = request.json
    session_data = data.get("session")
    role_to_suspend = data.get("role")

    if not session_data or not role_to_suspend:
        return jsonify({"error": "Missing session or role data."}), 400

    org_name = session_data.get("organization")
    username = session_data.get("username")
    if not org_name or not username:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    try:
        is_suspended(username)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    if org_name not in organizations:
        return jsonify({"error": "Organization not found."}), 404

    roles = organizations[org_name].get("roles", {})
    if role_to_suspend not in roles:
        return jsonify({"error": f"Role '{role_to_suspend}' does not exist."}), 404

    if role_to_suspend == "managers":
        return jsonify({"error": "Cannot suspend the 'managers' role."}), 403

    user_permissions = set()
    for role, details in roles.items():
        if username in details.get("subjects", []):
            user_permissions.update(details.get("permissions", []))

    if "ROLE_DOWN" not in user_permissions:
        return jsonify({"error": "User does not have the ROLE_DOWN permission."}), 403

    role_data = roles[role_to_suspend]

    if role_data.get("status") == "suspended":
        return jsonify({"error": f"Role '{role_to_suspend}' is already suspended."}), 400

    role_data["suspended_permissions"] = role_data.pop("permissions", [])
    role_data["status"] = "suspended"

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    try:
        with open(ORGANIZATIONS_FILE, 'w') as f:
            json.dump(organizations, f, indent=4)
    except Exception as e:
        return jsonify({"error": f"Failed to save role status: {str(e)}"}), 500

    return jsonify({"message": f"Role '{role_to_suspend}' suspended successfully."}), 200

@app.route("/role/reactivate", methods=["POST"])
def reactivate_role():
    data = request.json
    session_data = data.get("session")
    role_to_reactivate = data.get("role")

    if not session_data or not role_to_reactivate:
        return jsonify({"error": "Missing session or role data."}), 400

    org_name = session_data.get("organization")
    username = session_data.get("username")
    if not org_name or not username:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    try:
        is_suspended(username)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    if org_name not in organizations:
        return jsonify({"error": "Organization not found."}), 404

    roles = organizations[org_name].get("roles", {})
    if role_to_reactivate not in roles:
        return jsonify({"error": f"Role '{role_to_reactivate}' does not exist."}), 404

    role_data = roles[role_to_reactivate]

    if role_data.get("status") != "suspended":
        return jsonify({"error": f"Role '{role_to_reactivate}' is not suspended."}), 400

    user_permissions = set()
    for role, details in roles.items():
        if username in details.get("subjects", []):
            user_permissions.update(details.get("permissions", []))

    if "ROLE_UP" not in user_permissions:
        return jsonify({"error": "User does not have the ROLE_UP permission."}), 403

    role_data["permissions"] = role_data.pop("suspended_permissions", [])
    role_data.pop("status", None)

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    try:
        with open(ORGANIZATIONS_FILE, 'w') as f:
            json.dump(organizations, f, indent=4)
    except Exception as e:
        return jsonify({"error": f"Failed to save role status: {str(e)}"}), 500

    return jsonify({"message": f"Role '{role_to_reactivate}' reactivated successfully."}), 200

@app.route("/role/add_property", methods=["POST"])
def add_property_to_role():
    data = request.json
    session_data = data.get("session")
    role_name = data.get("role")
    property_type = data.get("type")
    value = data.get("value")

    if not session_data or not role_name or not property_type or not value:
        return jsonify({"error": "Missing required data."}), 400

    org_name = session_data.get("organization")
    username = session_data.get("username")

    if not org_name or not username:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    try:
        is_suspended(username)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    if org_name not in organizations:
        return jsonify({"error": "Organization not found."}), 404

    roles = organizations[org_name].get("roles", {})
    if role_name not in roles:
        return jsonify({"error": f"Role '{role_name}' not found."}), 404

    user_permissions = set()
    for role, details in roles.items():
        if username in details.get("subjects", []):
            user_permissions.update(details.get("permissions", []))

    if "ROLE_MOD" not in user_permissions:
        return jsonify({"error": "User does not have the ROLE_MOD permission."}), 403

    valid_permissions = [
        "DOC_READ", "DOC_DELETE", "DOC_ACL", "ROLE_NEW", "ROLE_DOWN",
        "ROLE_UP", "ROLE_MOD", "ROLE_ACL", "SUBJECT_NEW", "SUBJECT_DOWN",
        "SUBJECT_UP", "DOC_NEW"
    ]

    org_subjects_file = "data/org_subjects.json"
    try:
        with open(org_subjects_file, 'r') as f:
            org_subjects = json.load(f)
    except Exception as e:
        return jsonify({"error": f"Failed to load org_subjects file: {str(e)}"}), 500

    role_data = roles[role_name]
    if property_type == "subject":
        org_subjects_list = org_subjects.get(org_name, [])
        if value not in org_subjects_list:
            return jsonify({"error": f"Invalid subject '{value}'."}), 400

        if value in role_data["subjects"]:
            return jsonify({"error": f"Subject '{value}' is already in role '{role_name}'."}), 400

        role_data["subjects"].append(value)
    elif property_type == "permission":
        if value not in valid_permissions:
            return jsonify({"error": f"Invalid permission '{value}'. These are the following permissions:\n"
                                     f"{', '.join(valid_permissions)}"}), 400


        if role_data.get("status") == "suspended":
            if value in role_data.get("suspended_permissions", []):
                return jsonify({"error": f"Permission '{value}' is already in the suspended permissions of role '{role_name}'."}), 400
            role_data.setdefault("suspended_permissions", []).append(value)
        else:
            if value in role_data.get("permissions", []):
                return jsonify({"error": f"Permission '{value}' is already in role '{role_name}'."}), 400
            role_data.setdefault("permissions", []).append(value)
    else:
        return jsonify({"error": f"Invalid property type '{property_type}'."}), 400

    try:
        with open(ORGANIZATIONS_FILE, 'w') as f:
            json.dump(organizations, f, indent=4)
    except Exception as e:
        return jsonify({"error": f"Failed to save role property: {str(e)}"}), 500

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)
    
    return jsonify({"message": f"{property_type.capitalize()} '{value}' added to role '{role_name}'."}), 200

@app.route("/role/remove_property", methods=["POST"])
def remove_property_from_role():
    try:
        data = request.json
        if not data:
            return jsonify({"error": "Invalid request data"}), 400

        session_data = data.get("session")
        role_name = data.get("role")
        property_type = data.get("type")
        value = data.get("value")

        if not session_data or not role_name or not property_type or not value:
            return jsonify({"error": "Missing required data."}), 400

        org_name = session_data.get("organization")
        username = session_data.get("username")

        if not org_name or not username:
            return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

        try:
            is_suspended(username)
        except PermissionError as e:
            return jsonify({"error": str(e)}), 403

        if org_name not in organizations:
            return jsonify({"error": "Organization not found."}), 404

        roles = organizations[org_name].get("roles", {})
        if role_name not in roles:
            return jsonify({"error": f"Role '{role_name}' not found."}), 404

        role_data = roles[role_name]

        if role_data.get("status") == "suspended":
            return jsonify({"error": "Role suspended, only can remove permissions when active"}), 403

        if property_type == "subject":
            if value not in role_data["subjects"]:
                return jsonify({"error": f"Subject '{value}' is not in role '{role_name}'."}), 404
            role_data["subjects"].remove(value)
        elif property_type == "permission":
            if value not in role_data["permissions"]:
                return jsonify({"error": f"Permission '{value}' is not in role '{role_name}'."}), 404
            role_data["permissions"].remove(value)
        else:
            return jsonify({"error": f"Invalid property type '{property_type}'."}), 400

        try:
            with open(ORGANIZATIONS_FILE, 'w') as f:
                json.dump(organizations, f, indent=4)
        except Exception as e:
            return jsonify({"error": f"Failed to save role property: {str(e)}"}), 500

        session_file = f"session_{username}_{org_name}.json"
        update_last_used_server(session_file)

        return jsonify({"message": f"{property_type.capitalize()} '{value}' removed from role '{role_name}'."}), 200
    except Exception as e:
        logger.error(f"Unexpected error: {str(e)}")
        return jsonify({"error": "Internal server error"}), 500

@app.route("/document/acl", methods=["POST"])
def update_document_acl():
    data = request.json
    session_data = data.get("session")
    document_name = data.get("document_name")
    operation = data.get("operation")
    role = data.get("role")
    permission = data.get("permission")

    if not session_data or not document_name or not operation or not role or not permission:
        return jsonify({"error": "Missing required data."}), 400

    valid_permissions = {"DOC_ACL", "DOC_READ", "DOC_DELETE"}

    if permission not in valid_permissions:
        return jsonify({"error": f"Invalid permission '{permission}'. Valid permissions are: {', '.join(valid_permissions)}."}), 400

    org_name = session_data.get("organization")
    username = session_data.get("username")
    if not org_name or not username:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    try:
        is_suspended(username)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    try:
        with open(DOCUMENTS_FILE, 'r') as f:
            documents = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Documents file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Documents file contains invalid JSON."}), 500

    document = None
    for doc_id, doc_data in documents.items():
        if (doc_data.get("name") == document_name or doc_id == document_name) and doc_data.get("organization") == org_name:
            document = doc_data
            break

    if not document:
        return jsonify({"error": f"Document '{document_name}' not found in organization '{org_name}'."}), 404

    try:
        with open(ORGANIZATIONS_FILE, 'r') as f:
            organizations = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Organizations file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Organizations file contains invalid JSON."}), 500

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    user_permissions = set()
    roles = organizations[org_name].get("roles", {})
    for role_name, role_data in roles.items():
        if username in role_data.get("subjects", []):
            user_permissions.update(role_data.get("permissions", []))

    if "DOC_ACL" not in user_permissions:
        document_acl = document.get("acl", {})
        has_acl_permission = False
        for role, permissions in document_acl.items():
            if role in roles and "DOC_ACL" in permissions:
                has_acl_permission = True
                break

        if not has_acl_permission:
            return jsonify({"error": "User does not have the DOC_ACL permission."}), 403

    if role not in roles:
        return jsonify({"error": f"Role '{role}' does not exist in the organization."}), 404

    if username not in roles[role]["subjects"] and "DOC_ACL" not in user_permissions:
        return jsonify({"error": "User does not have permission to modify this role."}), 403

    acl = document.get("acl", {})
    if operation == "+":
        if role not in acl:
            acl[role] = []
        if permission not in acl[role]:
            acl[role].append(permission)
        else:
            return jsonify({"error": f"Permission '{permission}' already exists for role '{role}'."}), 400
    elif operation == "-":
        if role not in acl or permission not in acl[role]:
            return jsonify({"error": f"Permission '{permission}' not found for role '{role}'."}), 404
        acl[role].remove(permission)
        if not acl[role]:
            del acl[role]
    else:
        return jsonify({"error": f"Invalid operation '{operation}'."}), 400

    document["acl"] = acl

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    try:
        with open(DOCUMENTS_FILE, 'w') as f:
            json.dump(documents, f, indent=4)

        load_documents()

    except Exception as e:
        return jsonify({"error": f"Failed to save ACL changes: {str(e)}"}), 500

    return jsonify({"message": f"ACL updated successfully for document '{document_name}'."}), 200

@app.route("/session/assume_role", methods=["POST"])
def assume_role():
    data = request.json
    session_data = data.get("session")
    role = data.get("role")

    if not session_data or not role:
        return jsonify({"error": "Missing session data or role."}), 400

    org_name = session_data.get("organization")
    username = session_data.get("username")
    if not org_name or not username:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    try:
        is_suspended(username)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    organizations_file = "data/organizations.json"
    try:
        with open(organizations_file, 'r') as f:
            organizations = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Organizations file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Organizations file contains invalid JSON."}), 500

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    roles = organizations[org_name].get("roles", {})
    if role not in roles:
        return jsonify({"error": f"Role '{role}' not found in organization '{org_name}'."}), 404

    if username not in roles[role].get("subjects", []):
        return jsonify({"error": f"User '{username}' is not assigned to role '{role}'."}), 403

    return jsonify({"message": f"Role '{role}' assumed successfully."}), 200

@app.route("/session/drop_role", methods=["POST"])
def drop_role():
    data = request.json
    session_data = data.get("session")
    role_to_drop = data.get("role")

    if not session_data or not role_to_drop:
        return jsonify({"error": "Missing session data or role."}), 400

    org_name = session_data.get("organization")
    username = session_data.get("username")
    current_roles = session_data.get("current_roles", [])

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    if not org_name or not username:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    try:
        is_suspended(username)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    if role_to_drop not in current_roles:
        return jsonify({"error": f"Role '{role_to_drop}' is not currently assumed in the session."}), 403

    current_roles.remove(role_to_drop)

    session_data["current_roles"] = current_roles

    return jsonify({"message": f"Role '{role_to_drop}' released successfully.", "session": session_data}), 200


@app.route("/session/list_roles", methods=["POST"])
def list_roles():
    try:
        data = request.json
        session_data = data.get("session")

        if not session_data:
            return jsonify({"error": "Missing session data."}), 400

        org_name = session_data.get("organization")
        username = session_data.get("username")

        session_file = f"session_{username}_{org_name}.json"
        update_last_used_server(session_file)

        if not org_name or not username:
            return jsonify({"error": "Invalid session data."}), 400

        try:
            is_suspended(username)
        except PermissionError as e:
            return jsonify({"error": str(e)}), 403

        if org_name not in organizations:
            return jsonify({"error": "Organization not found."}), 404

        roles = []
        for role_name, details in organizations[org_name]["roles"].items():
            if username in details.get("subjects", []):
                roles.append(role_name)

        return jsonify({"roles": roles}), 200
    except Exception as e:
        logger.error(f"Unexpected error: {str(e)}")
        return jsonify({"error": "Internal server error"}), 500


@app.route("/role/subjects", methods=["POST"])
def list_role_subjects():
    data = request.json
    session_data = data.get("session")
    role = data.get("role")

    if not session_data or not role:
        return jsonify({"error": "Missing session data or role."}), 400

    org_name = session_data.get("organization")
    username = session_data.get("username")

    if not org_name or not username:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    try:
        is_suspended(username)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    organizations_file = "data/organizations.json"
    try:
        with open(organizations_file, 'r') as f:
            organizations = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Organizations file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Organizations file contains invalid JSON."}), 500

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    roles = organizations[org_name].get("roles", {})
    if role not in roles:
        return jsonify({"error": f"Role '{role}' not found in organization '{org_name}'."}), 404

    subjects = roles[role].get("subjects", [])
    return jsonify({"subjects": subjects}), 200

@app.route("/subject/roles", methods=["POST"])
def list_subject_roles():
    data = request.json
    session_data = data.get("session")
    username = data.get("username")

    if not session_data or not username:
        return jsonify({"error": "Missing session data or username."}), 400

    org_name = session_data.get("organization")
    actor = session_data.get("username")

    if not org_name or not actor:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    try:
        is_suspended(actor)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    organizations_file = "data/organizations.json"
    try:
        with open(organizations_file, 'r') as f:
            organizations = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Organizations file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Organizations file contains invalid JSON."}), 500

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    roles = organizations[org_name].get("roles", {})
    subject_roles = [role for role, details in roles.items() if username in details.get("subjects", [])]

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)   

    return jsonify({"roles": subject_roles}), 200

@app.route("/role/permissions", methods=["POST"])
def list_role_permissions():
    data = request.json
    session_data = data.get("session")
    role = data.get("role")

    if not session_data or not role:
        return jsonify({"error": "Missing session data or role."}), 400

    org_name = session_data.get("organization")
    username = session_data.get("username")

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    if not org_name or not username:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    try:
        is_suspended(username)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    organizations_file = "data/organizations.json"
    try:
        with open(organizations_file, 'r') as f:
            organizations = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Organizations file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Organizations file contains invalid JSON."}), 500

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    roles = organizations[org_name].get("roles", {})
    if role not in roles:
        return jsonify({"error": f"Role '{role}' not found in organization '{org_name}'."}), 404

    permissions = roles[role].get("permissions", [])
    return jsonify({"permissions": permissions}), 200

@app.route("/permission/roles", methods=["POST"])
def list_permission_roles():
    data = request.json
    session_data = data.get("session")
    permission = data.get("permission")

    if not session_data or not permission:
        return jsonify({"error": "Missing session data or permission."}), 400

    org_name = session_data.get("organization")
    username = session_data.get("username")

    if not org_name or not username:
        return jsonify({"error": "Invalid session data: Missing 'organization' or 'username'."}), 400

    try:
        is_suspended(username)
    except PermissionError as e:
        return jsonify({"error": str(e)}), 403

    organizations_file = "data/organizations.json"
    try:
        with open(organizations_file, 'r') as f:
            organizations = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Organizations file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Organizations file contains invalid JSON."}), 500

    if org_name not in organizations:
        return jsonify({"error": f"Organization '{org_name}' not found."}), 404

    roles = organizations[org_name].get("roles", {})
    org_roles = [role for role, details in roles.items() if permission in details.get("permissions", [])]

    session_file = f"session_{username}_{org_name}.json"
    update_last_used_server(session_file)

    documents_file = "data/documents.json"
    try:
        with open(documents_file, 'r') as f:
            documents = json.load(f)
    except FileNotFoundError:
        return jsonify({"error": "Documents file not found."}), 500
    except json.JSONDecodeError:
        return jsonify({"error": "Documents file contains invalid JSON."}), 500

    doc_roles = {}
    for doc_id, doc_data in documents.items():
        acl = doc_data.get("acl", {})
        roles_with_permission = [role for role, perms in acl.items() if permission in perms]
        if roles_with_permission:
            doc_roles[doc_data.get("name", doc_id)] = roles_with_permission

    return jsonify({"organization_roles": org_roles, "document_roles": doc_roles}), 200

if __name__ == "__main__":
    load_data()
    load_documents()
    app.run()