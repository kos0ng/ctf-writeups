from pwn import *
import string

r=remote("chals20.cybercastors.com",14420)
flag=""
payload=list("A"*(47-len(flag)))
while '}' not in flag:
	print "flag :",flag
	r.recvuntil("Your choice:")
	r.sendline("2")
	r.recvuntil("Add your bagels:")
	r.sendline(''.join(payload))
	r.recvuntil("bytes:\n")
	tmp=r.recvline().strip()[64:96]	
	for i in string.printable[:-6]:
		r.recvuntil("Your choice:")
		r.sendline("2")
		r.recvuntil("Add your bagels:")
		r.sendline(''.join(payload)+flag+i)
		r.recvuntil("bytes:\n")
		tmp2=r.recvline().strip()[64:96]
		if(tmp==tmp2):
			flag+=i
			if(len(payload)!=0):
				payload=payload[:-1]
			break
print "FLAG : ",flag