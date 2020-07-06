import string
import os

f=open("real.txt","r")
a=f.read()[2:-1]
f.close()
# flag="ASIS{Y3s_asis_L0ves_i0ccc_and_lov3s_obfuscati0ns_and_C_For3v3r3}"
flag=""
for i in range(len(flag),64):
	print flag
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
	print tmp_flag
	maybe_flag=[]
	for j in tmp_flag:
		for k in string.printable[:-6]:
			f=open("flag.txt","w")
			f.write(flag+j+k)
			f.close()
			os.system("./prog <flag.txt > flag && dd if=flag of=flag.txt conv=notrunc bs=1 skip=1 status=none")
			f=open("flag.txt","r")
			tmp=f.read()[2:-1]
			f.close()
			try:
				if(a[0:len(tmp)]==tmp):
					maybe_flag.append(j)
					break
			except:
				continue
	print maybe_flag
	if(len(maybe_flag)==1):
		flag+=maybe_flag[0]
	else:
		break