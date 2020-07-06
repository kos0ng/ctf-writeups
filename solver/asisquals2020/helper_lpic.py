# from pwn import *
import string
import os

f=open("real.txt","r")
a=f.read()[2:-1]
f.close()
for x in string.printable[:-6]:
	# flag="ASIS{Y3s_asis_L0ves_i0ccc_and_lov3s_obfuscati0ns_and_C_For3ver"+x
	flag="flag with afterward character not found"
	for i in range(len(flag),len(flag)+1):
		tmp_flag=[]
		for j in string.printable[:-6]:
			f=open("flag.txt","w")
			f.write(flag+j)
			f.close()
			os.system("./prog <flag.txt > flag && dd if=flag of=flag.txt conv=notrunc bs=1 skip=1 status=none")
			f=open("flag.txt","r")
			tmp=f.read()[2:-1]
			f.close()
			try:
				if(a[0:len(tmp)]==tmp):
					tmp_flag.append(j)
			except:
				continue
		if(tmp_flag!=[]):
			print x,tmp_flag