from ctypes import CDLL
libc = CDLL("libc.so.6")

v4 = '_c\x10W'[::-1]
v4 += '\x02'[::-1]
v5 = '\x1D\x17\rL'[::-1]
v5 += 'u\v'[::-1]
v7 = 'P_0E'[::-1]
v7 += '\x14u'[::-1]
s = "O`EbNgQDfB{FKdHuiSx``F\x00"

bss_start = v4 + v5 + v7

libc.srand(0x42)
key = []
for i in range(len(s)):
	v16 = libc.rand() % 50
	key.append(v16^ord(s[i]))
print(''.join(map(chr,key)))
# v7 = ""
# a3 = 0
# for v6 in range(len(bss_start)):
# 	v5 = bss_start[v6];
# 	v7 += chr(a3 ^ key[v6 % len(key)] ^ ord(v5))
# print(v7)