from pwn import *

r = remote("lac.tf",31132)
r.recvuntil(b"? ")
r.sendline(b"six")

tmp =  (561599850//42) - 88
r.recvuntil(b"? ")
r.sendline(str(tmp).encode())

r.recvuntil(b"? ")
enc = [0xE,0x0C9,0x9D,0x0B8,0x26,0x83,0x26,0x41,0x74,0x0E9,0x26,0x0A5,0x83,0x94,0x0E,0x63,0x37,0x37,0x37]
mod = 0xfd
a_inv = pow(17,-1,mod)
tmp = ""
for i in enc:
	tmp += chr((i*a_inv)%mod)
r.sendline(tmp.encode())
r.interactive()