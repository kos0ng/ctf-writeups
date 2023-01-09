import string

def new_decryption(file_name, password):
  with open(file_name + "_encrypted", "rb") as f:
    ciphertext = f.read()
  remove_spice = lambda b: 0xff & ((b >> 1) | (b << 7))
  plaintext = bytearray(remove_spice(c ^ ord(password[i % len(password)])) for i, c in enumerate(ciphertext))
  print(plaintext)
#   with open(file_name + "_decrypted", "wb") as f:
#     f.write(plaintext)

def str_dec(ct,pt):
    remove_spice = lambda b: 0xff & ((b >> 1) | (b << 7))
    key = bytearray(remove_spice(c ^ ord(pt[i % len(pt)])) for i, c in enumerate(ct))
    return key


f = open("Important_encrypted","rb").read()
flag = ""
for i in range(0,len(f)-8):
    key = str_dec(f[i:i+8],"HiDeteXT")
    if(all(chr(c) in string.printable for c in key)):
        flag += key.decode()
print(flag)

# password = '\xb6\xd0a\xd2\xeb\xe4\xfbH'
# new_decryption('Important',password)