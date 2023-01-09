from pwn import *
from itertools import product

def solver_captcha(io):
    io.recvuntil(b"python3 ")
    cmd = "python3 "+io.recvuntil(b"\n", drop=True).decode()#.strip().decode()
    code = process(["bash"])
    code.sendline(cmd.encode())
    code.recvuntil(b"\n")
    captcha = code.recvuntil(b"\n", drop=True)
    io.sendlineafter(b"?",captcha)

p = remote("stretchy.chal.irisc.tf",10704)
solver_captcha(p)

list_char = "0123456789abcdef"
p.recvuntil(b"> ")

for i in product(list_char,repeat=2):
    payload = i[0]*64 + i[1]*8
    p.sendline(payload.encode())
    tmp = p.recvn(2)
    if(tmp != b'> '):
        print(b"ir"+p.recvuntil(b"}"))
        break