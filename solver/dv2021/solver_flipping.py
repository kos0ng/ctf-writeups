from pwn import *
import string

def flip(payload):
	result = ""
	for i in payload.decode('hex'):
		result += chr(ord(i)^0xff)
	return result.encode('hex')

init = "A"*15
flag = ""
r=remote("challs.dvc.tf",3333)

while('}' not in flag):
	print(flag)
	r.recvuntil("?")
	r.sendline(init.encode('hex'))
	tmp = r.recvuntil("= ")
	result = r.recvline().strip()
	if("!" in tmp):
		result = flip(result)
	for i in string.printable[:-6]:
		r.recvuntil("?")
		r.sendline(init.encode('hex')+flag.encode('hex')+i.encode('hex'))
		tmp = r.recvuntil("= ")
		cmp_val = r.recvline().strip()
		if("!" in tmp):
			cmp_val = flip(cmp_val)
		if(cmp_val.decode('hex')[16:32]==result.decode('hex')[16:32]):
			flag += i
			init = init[:-1]
			break
print flag