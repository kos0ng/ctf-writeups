from Crypto.Util.Padding import pad, unpad
from pwn import *

r = remote("128.199.210.141",4246)
r.recvuntil("VECTOR: ")
iv = r.recvline().strip()
r.recvuntil("ENCRYPTED BODY: ")
enc = r.recvline().strip()
pt = 'u=user'
pt = pad(pt,16)
target = 'u=admin'
target = pad(target,16)
# iv = 'bb6dd925ffce05b7ab6feeb4d50c60fc'
iv = iv.decode('hex')
iv = [i for i in iv]
for i in range(2,16):
	iv[i] = chr(ord(iv[i])^ord(pt[i])^ord(target[i]))
r.recvuntil("YOUR INITIAL VECTOR: ")
r.sendline(''.join(iv).encode('hex'))
r.recvuntil("YOU ENCRYPTED BODY: ")
r.sendline(enc)
r.interactive()