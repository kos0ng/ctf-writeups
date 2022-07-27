import string
from pwn import *
from itertools import product

payload = ['A' for i in range(0x1d)]
counter = 0
flag = ""
context.log_level='CRITICAL'
payload[0] = '0'
payload[1] = '2'
payload[2] = '5'
payload[3] = "-"
for counter in range(0,2,2):
	for i in product(string.printable[:-6],repeat=4):
		payload[4] = i[0]
		payload[5] = i[1]
		payload[6] = i[2]
		payload[7] = i[3]
		# print("".join(payload))
		r = process("./heavydriver1")
		r.recvuntil("flag\n")
		r.sendline("".join(payload))
		# r.sendline(flag+"".join(payload))
		tmp = r.recvuntil("[").strip("[")
		# print(tmp)
		if(tmp.count("2")==(counter/2)+1 or tmp.count("2")==1 or tmp.count("1")>1):
			flag += i[0]+i[1]+i[2]+i[3]
			# payload = payload[-4:]
			print(flag,i)
			break
		r.close()
	# for i in string.printable[:-6]:
	# 	print(i)
	# 	for j in string.printable[:-6]:
	# 		payload[counter] = i
	# 		payload[counter+1] = j
	# 		r = process("./heavydriver1")
	# 		r.recvuntil("flag\n")
	# 		r.sendline(flag+"".join(payload))
	# 		tmp = r.recvuntil("[").strip("[")
	# 		print(tmp)
	# 		if(tmp.count("1")==(counter/2)+1):
	# 			flag += i+j
	# 			payload = payload[-2:]
	# 			brute = False
	# 			break
	# 			# counter += 2
	# 		r.close()
	# 	if(brute==False):
	# 		break