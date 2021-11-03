a = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"
a = a.decode('hex')
for i in range(0x100):
	tmp = ""
	for j in a:
		tmp += chr(ord(j)^i)
	print(i,tmp)
