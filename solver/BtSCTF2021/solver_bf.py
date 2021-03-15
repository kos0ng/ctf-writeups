import string
import base64

a = [6,26,23,7,24,10,3,23,11,26,31,30,23,6,22,9,31,6,3,8,1,26,31,13,12,14,18,10,0,10,31,30,7,6,21,10,12,22,29,9,32,21,28,16,1,10,1,10,31,3,3,8,1,26,65534,10,27,14,18,16,19,18,28,8,23,7,1,29,28,22,16,7,8,7,0,20,27,21,65535,29,24,6,23,26,11,17,3,25,32,9,29,16,15,6,30,8,1,26,31,9,31,29,13,23,11,10,16,7,0,26,31,18,11,22,6,8,23,2,27,5]
upper = 60
lower = 90
num = 50
sym = 120
zz = 64
possible = []
for i in a:
	try:
		tmp2 = []
		tmp  = chr(upper+i)
		if(tmp in string.uppercase):
			tmp2.append(tmp)
		tmp = chr(lower+i)
		if(tmp in string.lowercase):
			tmp2.append(tmp)
		tmp = chr(num+i)
		if(tmp in string.digits):
			tmp2.append(tmp)
		tmp = chr(sym+i)
		if(tmp in string.punctuation):
			tmp2.append(tmp)
		tmp = chr(zz+i)
		if(tmp in string.punctuation):
			tmp2.append(tmp)
		possible.append(tmp2)
	except Exception as e:
		if(i==65534):
			possible.append(["0"])
		elif(i==65535):
			possible.append(["1"])

encode = ""
for i in range(7,len(possible)-1,4):
	print "Loop : "+str(i)
	first = possible[i]
	second = possible[i+1]
	third = possible[i+2]
	fourth = possible[i+3]
	for j in first:
		for k in second:
			for l in third:
				for m in fourth:
					try:
						tmp = j+k+l+m
						tmp2 = base64.b64decode(encode+tmp)
						print "Encoding :",encode+tmp
						print "Plaintext : ",tmp2
					except Exception as e:
						continue
	encode = raw_input("\nTrue Encode : ")
print("BtS-CTF{"+encode+"}")