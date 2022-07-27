from pwn import *

r = process(["python3","otp.py"])
r.recvuntil(": ")
r.sendline("\x00\x00")
r.interactive()