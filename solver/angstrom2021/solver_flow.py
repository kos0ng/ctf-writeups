import os
import zlib
import string

def keystream(key):
	index = 0
	while 1:
		index+=1
		if index >= len(key):
			key += zlib.crc32(key).to_bytes(4,'big')
		yield key[index]

f=open("enc","rb")
ciphertext = f.read()
f.close()
for i in range(0xff+1):
	for j in range(0xff+1):
		key = i.to_bytes(1,'big')+j.to_bytes(1,'big')
		ks = keystream(key)
		poss = ""
		for k in ciphertext:
			tmp = chr(k^next(ks))
			if(tmp in string.printable):
				poss += tmp
			else:
				break		
		if(len(poss)==len(ciphertext)):
			print(i,j)
			print(poss)
