from pwn import *

# list_char = '0123456789abcdef'
list_enc = []
# r = process("./real_hrc.py")
r = remote("crypto.2021.chall.actf.co",21602)
for i in range(0xff+1):
	r.recvuntil("[2]?")
	r.sendline("1")
	r.recvuntil("encrypt:")
	payload = hex(i)[2:].rjust(2,'0')*16
	# print(payload)
	r.sendline(payload)
	enc = r.recvline()
	list_enc.append(enc.strip().decode('hex'))

r.recvuntil("[2]?")
r.sendline("2")

for _ in range(10):
	r.recvuntil("this: ")
	target = r.recvline().strip()
	counter = 0
	result = ""
	for i in target.decode('hex'):
		# print(ord(i))
		result += list_enc[ord(i)][counter%16].encode('hex')
		counter += 1
	r.sendline(result)
r.interactive()