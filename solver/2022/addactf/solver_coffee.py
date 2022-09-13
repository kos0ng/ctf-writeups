import base64
from Cryptodome.Cipher import AES 
from Cryptodome.Random import get_random_bytes

cipher_message = "8ddaBqtgQvIgMF30Z6mHl4iu/eSKNn1Yrbwrq0Q71FNEznkKClRhZzogBesSkxnp98mVAMwpncNTog=="
decoded_cipher_byte = base64.b64decode(cipher_message)
iv = base64.b64decode("eSTXMzmXqb8H0H4T")
key = base64.b64decode("1VSWtawezwedBWQ11Rd2xA==")
cipher = AES.new(key, AES.MODE_GCM, iv)
print(cipher.decrypt(decoded_cipher_byte))