from Crypto.Util.number import *

a = [0x7870148bf499d6f9,0x435e9c9331495b55,0x910a96fdf83deb08]
key = 0x39e324b32f573c94
res = []
for i in a:
	# print(hex(key))
	# print(hex(key))
	key *= key
	key = i^((key)&0xffffffffffffffff)
	res.append(key)
	key = a[len(res)-1]
flag = b''
for i in res:
	flag += long_to_bytes(i)[::-1]
print(flag)