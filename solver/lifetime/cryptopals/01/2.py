a = "1c0111001f010100061a024b53535009181c"
b = "686974207468652062756c6c277320657965"
a = a.decode('hex')
b = b.decode('hex')
res = ""
for i in range(0,len(a)):
	res += hex(ord(a[i])^ord(b[i]))[2:]
print(res)