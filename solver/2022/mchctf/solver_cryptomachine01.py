import sys, binascii, base64, string, random

def H(m):
	print(m)
	return m.decode('hex')

def B(m):
    return base64.b64decode(m)

def R(m):
    t = string.maketrans(
        "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm#",
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz:")
    return string.translate(m,t)

def X(m):
	# tmp = H(m)
	return ''.join(chr(ord(c)^0x42) for c in m)

g = open("Message.crypted","r").read()
print(R(H(X(B(g)))))