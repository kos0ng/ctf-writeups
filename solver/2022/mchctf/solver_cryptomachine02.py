import sys, binascii, base64, string, random

def H(m):
    return m.decode('hex')

def B(m):
    return base64.b64decode(m)

def R(m):
    t = string.maketrans(
        "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm#",
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz:")
    return string.translate(m,t)

def X(m):
	tmp = H(m)
	return ''.join(chr(ord(c)^0x42) for c in tmp)

f = [ X, B, R ]
g = open("MESSAGE","r").read()
while True:
	g = g.split(":")
	res = ""
	for i in g:
		res += f[int(i[0])](i[1:])
	g = res
	print(g)
# g = res
# g = g.split(":")
# print(g)
# flag = ""
# for i in g:
# 	flag += f[int(i[0])](i[1:])
# print(flag)