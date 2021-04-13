from pwn import *
import string
from ctypes import *
from Crypto.Util.number import bytes_to_long as b2l
import string

libc = CDLL("libc.so.6")

def bd5(a1):
	libc.srand(a1 ^ 0xBC614E)
	v2 = 0
	for i in range(8):
		v2 = libc.rand() % 10 + 10 * v2
	return a1 * v2

# context.log_level='debug'

xor_key = [0xde, 0xad, 0xbe, 0xef, 0xfe, 0xed, 0xca, 0xfe, 0x13, 0x37, 0xab, 0xcd, 0xef]
# r=remote("localhost",21450)
r=remote("rev.2021.chall.actf.co",21450)
tmp = r.recvn(13)
random_val = ""
for i in range(len(xor_key)):
	random_val += chr(xor_key[i]^ord(tmp[i]))
a1 = 0x13371337
flag = ""
# for i in range(1):
while '}' not in flag:
	print(flag)
	bd5_val = p64(bd5(a1))
	for j in string.printable[:-6]:
		# print j
		payload = bd5_val+j+random_val
		# print(payload.encode('hex'))
		r.send(payload)
		check = r.recvn(1)
		if(check!='\r'):
			a1 = b2l(r.recvn(4))
			flag += j
			break
print(flag)
# r.interactive()