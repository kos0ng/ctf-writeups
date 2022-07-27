from pwn import *
import string

flag = ""
length = 53
payload = "A"*length

length_att = 52
payload_att = "A"*length_att
payload_att += 'A", "flag": "'

context.log_level='error'

while "}" not in flag:
	r =  remote("139.59.117.189",4442)
	r.recvuntil("namamu?")
	block = []
	r.sendline(payload)
	r.recvuntil("Anda:")
	r.recvline()
	enc = r.recvline().strip()
	enc = bytes.fromhex(enc.decode())
	for i in range(0,len(enc),16):
		block.append(enc[i:i+16])
	r.close()
	for i in string.printable[:-6]:
		# print(i)
		r =  remote("139.59.117.189",4442)
		r.recvuntil("namamu?")
		block_att = []
		r.sendline(payload_att+flag+i)
		r.recvuntil("Anda:")
		r.recvline()
		enc = r.recvline().strip()
		enc = bytes.fromhex(enc.decode())
		for j in range(0,len(enc),16):
			block_att.append(enc[j:j+16])
		r.close()
		if(block_att[4]==block[4]):
			flag += i
			print("Flag : {}".format(flag))
			payload_att = payload_att[1:]
			payload = payload[1:]
			break