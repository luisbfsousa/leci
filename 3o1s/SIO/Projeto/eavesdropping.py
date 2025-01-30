import functools
import logging

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
    handlers=[
        logging.StreamHandler()
    ]
)

def mask_sensitive_data(data):
    secrets = ['password', 'key', 'private_key', 'iv', 'credentials', 'salt', 'auth_tag', 'pubkey']

    if isinstance(data, dict):
        return {k: ('****' if any(sensitive in k.lower() for sensitive in secrets) else mask_sensitive_data(v))
                for k, v in data.items()}
    elif isinstance(data, list):
        return [mask_sensitive_data(item) for item in data]
    elif isinstance(data, str) and any(keyword in data.lower() for keyword in secrets):
        return '****'
    return data

def secure_eavesdrop(func):
    @functools.wraps(func)
    def wrapper(*args, **kwargs):
        masked_args = tuple(mask_sensitive_data(arg) for arg in args)
        masked_kwargs = {k: mask_sensitive_data(v) for k, v in kwargs.items()}

        #logging.info(f"{func.__name__}")
        #logging.info(f"{masked_args}")
        #logging.info(f"{masked_kwargs}")

        try:
            result = func(*args, **kwargs)
            #logging.info(f" {mask_sensitive_data(result)}")
            return result
        except Exception as e:
            #logging.error(f"Erro:{e}")
            raise

    return wrapper
