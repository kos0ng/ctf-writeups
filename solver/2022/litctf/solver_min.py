from pwn import *
import string

context.log_level='error'
for i in string.printable[:-6]:
	# print(i)
	r = process("./minimalist")
	r.recvuntil("Enter the flag:")
	r.send(i*48)
	r.recvline()
	resp = r.recvline()
	if("Wrong" in resp):
		r.close()
	else:
		r.close()
		print(i,resp)
		break
# r.interactive()