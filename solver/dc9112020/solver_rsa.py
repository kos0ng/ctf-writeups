from Crypto.Util.number import *
from Crypto.PublicKey import RSA
from pwn import *

def _decrypt(ciphertext):
    r.recvuntil("Enter your choice = ")
    r.sendline("2")
    r.recvuntil("Enter the cipher text you want to decrypt =")
    r.sendline(ciphertext.encode("hex"))
    r.recvuntil("Output = ")
    pt = r.recvline().strip()
    return int(pt)

r = remote("206.189.141.41",7070)
r.recvuntil(": ")
enc=r.recvline().strip().decode('hex')
r.recvuntil("Modulus = ")
N=int(r.recvline().strip(),16)

e = 65537
upper_limit = N
lower_limit = 0

flag = ""
i = 1
while lower_limit<upper_limit:
    print i
    chosen_ct = long_to_bytes((bytes_to_long(enc)*pow(2**i, e, N)) % N)
    output = _decrypt(chosen_ct)
    if output == 0:
        upper_limit = (upper_limit + lower_limit)/2
    elif output == 1:
        lower_limit = (lower_limit + upper_limit)/2
    else:
        break
        print "Unsuccessfull"
    i += 1

print "Flag : ", long_to_bytes(lower_limit)
