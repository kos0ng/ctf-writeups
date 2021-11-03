a = "Burning 'em, if you ain't quick and nimble\nI go crazy when I hear a cymbal"
key = "ICE"
res = ""
for i in range(len(a)):
	res += hex(ord(key[i%len(key)])^ord(a[i]))[2:].rjust(2,"0")
print(res)