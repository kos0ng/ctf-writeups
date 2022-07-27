from Crypto.Util.number import *

a = "MPG7561y2h[qm0w]u7wZ60p{]v[w6[q3ekpqqy"

key = 0x203040505040302
key = long_to_bytes(key)
flag = ""
for i in range(len(a)):
	flag += chr(ord(a[i])^key[i%len(key)])
print(flag)