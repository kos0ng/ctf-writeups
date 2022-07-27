import string

def check(hello):
	return all(c in string.printable for c in hello)

f = open("4.txt").read()
for i in f.split("\n"):
	a = i.decode('hex')
	for j in range(0x100):
		tmp = ""
		for k in a:
			tmp += chr(ord(k)^j)
		if(check(tmp)):
			# print(i,j)
			print(tmp)