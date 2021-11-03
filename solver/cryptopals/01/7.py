from Crypto.Cipher import AES
import base64

f = open("7.txt").read()
f = base64.b64decode(f)
key = "YELLOW SUBMARINE"
cipher = AES.new(key,AES.MODE_ECB)
print(cipher.decrypt(f))