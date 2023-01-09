import string
f = open("data.txt","r").read()

fmt = "\\x{}"
for i in string.printable:
	tmp = hex(ord(i))[2:].rjust(2,"0")
	print(fmt.format(tmp))
	# f = f.replace(fmt.format(tmp),i)
# print(f)