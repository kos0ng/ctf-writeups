from pwn import *
import gmpy2

r = remote("lac.tf",31190)
for i in range(150):
	print(i)
	r.recvuntil(b"c =  ")
	c = int(r.recvline().strip())
	tmp = gmpy2.iroot(c,2)[1]
	r.recvuntil(b"guess? ")
	if(tmp):
		r.sendline(b"0")
	else:
		r.sendline(b"1")
r.interactive()