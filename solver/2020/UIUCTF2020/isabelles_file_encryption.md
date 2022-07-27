# isabelles_file_encryption ( Cryptography ) Writeup

Given `blackmail_encrypted` and `super_secret_encryption.py` , here is the code in `super_secret_encryption.py`
```
#!/usr/bin/python

# password-protect your files with this super powerful encryption!
def super_secret_encryption(file_name, password):
  with open(file_name, "rb") as f:
    plaintext = f.read()
  
  assert(len(password) == 8) # I heard 8 character long passwords are super strong!
  assert(password.decode("utf-8").isalpha()) # The numbers on my keyboard don't work...
  assert(b"Isabelle" in plaintext) # Only encrypt files Isabelle has been mentioned in
  add_spice = lambda b: 0xff & ((b << 1) | (b >> 7))
  ciphertext = bytearray(add_spice(c) ^ password[i % len(password)] for i, c in enumerate(plaintext))

  with open(file_name + "_encrypted", "wb") as f:
    f.write(ciphertext)

# use this to decrypt the file with the same password!
def super_secret_decryption(file_name, password):
  with open(file_name + "_encrypted", "rb") as f:
    ciphertext = f.read()
  
  remove_spice = lambda b: 0xff & ((b >> 1) | (b << 7))
  plaintext = bytearray(remove_spice(c ^ password[i % len(password)]) for i, c in enumerate(ciphertext))

  with open(file_name + "_decrypted", "wb") as f:
    f.write(plaintext)

with open("password", "rb") as f: # I got too lazy typing it in each time
    password = f.read() #Make sure to encrypt the text in the middle!!!
    super_secret_encryption("blackmail", password)
    super_secret_decryption("blackmail", password)
```

By analyzing the code we know that there must be `Isabelle` string in plaintext . The length of `Isabelle` is 8 and the length of password must be 8 and password is only alphabet ( uppercase and lowercase ) . So we can conclude that we can get the password by bruteforcing the encrypted text. The algorithm that we will use is encrypt `Isabelle` and compare it with encrypted text every 8 characters , if the key length is 8 that will be a possible key.
```
#solver_isabelles.py
import string

def super_secret_encryption(plaintext, password):
  add_spice = lambda b: 0xff & ((b << 1) | (b >> 7))
  return add_spice(ord(plaintext))^ord(password)

def super_secret_decryption(password):
  with open("real_enc_encrypted", "rb") as f:
    ciphertext = f.read()
  
  remove_spice = lambda b: 0xff & ((b >> 1) | (b << 7))
  plaintext = bytearray(remove_spice(ord(c) ^ ord(password[i % len(password)])) for i, c in enumerate(ciphertext))

  print plaintext

f=open("real_enc_encrypted","r")
a=f.read()
list_char=string.uppercase+string.lowercase
plain="Isabelle"
print "Possible key :"
for k in range(len(a)):
    tmp=a[k:k+8]
    key=""
    for i in range(len(tmp)):
        for j in list_char:
            if(super_secret_encryption(plain[i],j)==ord(tmp[i])):
                key+=j
                break
    if(len(key)==8):
        print key

#password=raw_input()
#super_secret_decryption(password)
```
The result is
```
Possible key :
cIYoDsdT
lLEiSaBe
aBelLEiS
lLEiSaBe
MlutZWUc
EiSaBelL
```
If you look at the possible key there is most likely key , `lLEiSaBe/EiSaBelL/aBelLEiS`. By rearrange it we get `iSaBelLE`  and then try to decrypt the `blackmail_encrypted` ( here i change the name to real_enc_encrypted ). Run that script again by commenting `bruteforce key algorithm` and uncomment the `decryption algorithm` .
`python solver_isabelles.py | strings | grep uiu`
Result
```
iSaBelLE
You can take this flag as a sign I'm being serious: uiuctf{winner_winner_raccoon_dinner}
```

## Flag : uiuctf{winner_winner_raccoon_dinner}