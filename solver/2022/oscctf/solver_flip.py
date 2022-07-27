from pwn import *
import string

r = remote("139.59.117.189",4441)
length = 32
flag = b""
while b"}" not in flag:
	while True:
		r.recvuntil("encrypt? ")
		payload = hex(ord('A'))[2:]*(length-1)
		r.sendline(payload)
		check = r.recvuntil(" = ")
		if(b"!" not in check):
			block = []
			resp = r.recvline().strip()
			resp = bytes.fromhex(resp.decode())
			for i in range(0,len(resp),16):
				block.append(resp[i:i+16])
			break
	for i in string.printable[:-6]:
		# print(i)
		block_check = []
		while True:
			r.recvuntil("encrypt? ")
			tmp_payload = payload + flag.hex() +  hex(ord(i))[2:]
			r.sendline(tmp_payload)
			check = r.recvuntil(" = ")
			if b"!" not in check:
				resp = r.recvline().strip()
				resp = bytes.fromhex(resp.decode())
				for j in range(0,len(resp),16):
					block_check.append(resp[j:j+16])
				break
		if(block[1]==block_check[1]):
			flag += i.encode()
			print("Flag : {}".format(flag))
			length -= 1
			break