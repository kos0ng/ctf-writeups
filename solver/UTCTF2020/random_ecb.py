from pwn import *
import string

r=remote("ecb.utctf.live",9003)
payload="AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
flag=""
counter=0
before=['','']
while(len(payload)!=0):
	print "FLAG : "+flag
	if(counter==0):
		while(before[0]==before[1]):
			r.recvuntil(":\n")
			r.sendline(payload)
			r.recvuntil(":)")
			r.recvline()
			y=r.recvline()[:-1]
			before[0]=y[0:32]
			before[1]=y[32:64]
		counter+=1
		payload=payload[1:]
		flag+='u'
	else:
		while(y[0:32]==before[0] and y[32:64]==before[1]):
			r.recvuntil(":\n")
			r.sendline(payload)
			r.recvuntil(":)")
			r.recvline()
			y=r.recvline()[:-1]
		tmp=[y[0:32],y[32:64]]
		cond=True
		for i in string.printable[:-6]:
			tmp2=[]
			while(len(tmp2)!=2):
				x=payload+flag+i
				r.recvuntil(":\n")
				r.sendline(x)
				r.recvuntil(":)")
				r.recvline()
				y=r.recvline()[:-1]
				if(y not in tmp2):
					tmp2.append(y)
				if(y[0:32]==tmp[0] and y[32:64]==tmp[1]):
					before[0]=y[0:32]
					before[1]=y[32:64]
					payload=payload[1:]
					cond=False
					flag+=i
					break
			if(cond==False):
				break
		