from Crypto.Util.Padding import pad

f = open("out.txt").read()
a = f.decode('hex')

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

KEY = 'SUPERSECR'
# KEY += 'ERBCB'
import string
for i in range(len(KEY),12):
	for j in string.ascii_uppercase:
		tmp_key = KEY + j
		tmp_key = pad(tmp_key,11)
		# print(len(tmp_key))
		# print(tmp_key.encode('hex'))
		res = vigenere_dec(a,tmp_key)
		res = caesar_dec(res,tmp_key)
		print(j,res)
	inp = raw_input("Input Key : ")
	KEY += inp
	print(KEY)