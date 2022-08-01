import string

def caesar_dec(p,k):
    cipher = ""
    for i in range(len(p)):
        if p[i].isalpha():
            cipher += chr(((ord(p[i]) + 65 - len(k)) % 26) + 65)
        else:
            cipher += p[i]
    return cipher 

def vigenere_dec(p,k):
    cipher = ""
    for i in range(len(p)):
        if p[i].isalpha():
            cipher += chr((ord(p[i]) + 65 - ord(k[i % len(k)]) + 65) % 26 + 65) 
        else:
            cipher += p[i]
    return cipher

f = open("out.txt").read()
a = f.decode('hex')
known = "OSC"

from itertools import product
from Crypto.Util.Padding import pad

for i in product(string.uppercase,repeat=3):
	tmp = i[0]+i[1]+i[2]
	for j in range(4,len(a)):
		key = pad(tmp,j)
		res = vigenere_dec(a,key)
		res = caesar_dec(res,key)
		if(res[:3]=='OSC'):
			print(tmp,j,res)
	# print(i)
# for i in range():
# counter = 0
# zz = []
# dictt = {}
# zz =[[]]*3
# for y,x in enumerate(known):
# 	tmp = []
# 	for j in string.ascii_uppercase:
# 		for i in range(1,len(a)):
# 			key = j*i
# 			res = vigenere_dec(a[:y+1],key)
# 			res = caesar_dec(res,key)
# 			# print(res)
# 			# print(res[y])
# 			if(res[y]==x):
# 				# tmp.append([j,i])
# 				if(j not in zz[y]):
# 					zz[y].append(j)
# 				if i in dictt:
# 					dictt[i] += 1
# 				else:
# 					dictt[i] = 1
# for i in dictt:
# 	print(i,dictt[i])

# for i in zz:
# 	print(i)			