from pwn import *

def conv(iv):
	if(iv & 0x80000000):
		iv = -0x100000000 + iv
	return iv
# context.log_level = 'debug'
# r = process("./casino")
r = remote("the-house-always-wins.chal.imaginaryctf.org",1337)
arr = [0]*344
cnt = 0
for i in range(19):
	r.recvuntil(">>> ")
	r.sendline("5")
	r.recvuntil(" is ")
	num = r.recvuntil(".")
	arr[cnt] = int(num[:-1])
	r.recvuntil(">>> ")
	r.sendline("1")
	r.recvuntil(" is ")
	num = r.recvuntil("!")
	cnt += 2
	arr[cnt] = int(num[:-1])
	cnt += 2
# print(cnt)
# print r.recvuntil("How").strip("How")
r.recvuntil("money: ")
money = r.recvline().strip()
# for i in range(3):
while True:
	try:
		r.recvuntil(">>> ")
		r.sendline(str(int(money)//2))
		r.recvuntil(" is ")
		num = r.recvuntil(".")
		arr[cnt] = int(num[:-1])
		cnt += 2
		num1 = conv((arr[cnt-(31*2)]<<0xf) + (arr[cnt-34]<<0xf))
		num2 = conv((arr[cnt-(3*2)]<<0xf) + (arr[cnt-34]<<0xf))
		res = (num1+num2)>>0xf
		if(res<0):
			res &= 0xffff
		arr[cnt] = res
		# print("guess ",arr[cnt])
		r.recvuntil(">>> ")
		if(arr[cnt] > arr[cnt-2]):
			r.sendline("1")
		else:
			r.sendline("2")
		r.recvuntil(" is ")
		num = r.recvuntil("!")
		arr[cnt] = int(num[:-1])
		# print("real ",arr[cnt])
		r.recvuntil("money: ")
		money = r.recvline().strip()
		print("money : ", money)
		cnt += 2
		cnt %= 344
	except Exception as e:	
		# print(r.recvall())
		r.interactive()
		# r.close()