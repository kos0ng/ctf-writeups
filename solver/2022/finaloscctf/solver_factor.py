from math import factorial
from pwn import *

def remove_trail(num,check):
	tmp = str(num)[::-1]
	for i in range(len(tmp)):
		if(tmp[i]!=check):
			return tmp[i:][::-1]

import time

r = remote("128.199.155.5",62919)
start = time.time()
r.recvuntil("= 120.")
resp = r.recvuntil("we have 6!")
arg = resp.split(" ")[-1][:-1]
ans = factorial(int(arg))
r.sendline(str(ans))
r.recvuntil("n!.")
for i in range(9):
	arg = r.recvuntil("!").split(" ")[-1][:-1]
	print(arg)
	ans = factorial(int(arg))
	r.sendline(str(ans)[-1])
r.recvuntil("'504'.")
for i in range(1):
	resp = r.recvuntil("!").split(" ")
	index = int(resp[3])
	arg = resp[-1][:-1]
	ans = factorial(int(arg))
	ans = remove_trail(ans,"0")
	ans = str(ans)[-1*index:]
	r.sendline(ans)
	print(arg,ans,time.time()-start)
r.interactive()