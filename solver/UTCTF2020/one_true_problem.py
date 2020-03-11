a="213c234c2322282057730b32492e720b35732b2124553d354c22352224237f1826283d7b0651".decode("hex")
b="THE BEST CTF CATEGORY IS CRYPTOGRAPHY!"
c=[ord(i) for i in b]
flag=""
for i in range(len(a)):
	flag+=chr(ord(a[i])^c[i])
print flag
