from pwn import *
from Crypto.Util.number import getPrime

r = remote("lac.tf",31110)
p = int(r.recvline().strip().decode())
q = int(r.recvline().strip().decode())
r.recvuntil(b">> ")
r.sendline(b"1")
r.recvuntil(b": ")
r.sendline(str(p*q).encode())
target = r.recvline().strip()
r.recvuntil(b">> ")
r.sendline(b"2")
r.sendline(target)
r.interactive()