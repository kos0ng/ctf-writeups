from pwn import *
from sympy import *

r = remote("lac.tf",int(31111))
p = int(r.recvline().strip().decode())
q = int(r.recvline().strip().decode())
p_prev = prevprime(p)
q_prev = prevprime(q)
r.recvuntil(b">> ")
r.sendline(b"1")
r.recvuntil(b": ")
r.sendline(str(p_prev).encode())
target1 = int(r.recvline().strip())
r.recvuntil(b">> ")
r.sendline(b"1")
r.recvuntil(b": ")
r.sendline(str(q_prev).encode())
target2 = int(r.recvline().strip())

mod = p_prev*q_prev
init = crt([target1,target2],[p_prev,q_prev])
list_poss = [init]
print(init)
for i in range(29):
	list_poss.append(mod*(i+1) + init)
r.recvuntil(b">> ")
r.sendline(b"2")
for i in range(30):
	print(i)	
	r.recvuntil(b"here: ")
	r.sendline(str(list_poss[i]).encode())
	resp = r.recvline()
	if(b"nope" not in resp):
		print(resp)
		break
r.interactive()