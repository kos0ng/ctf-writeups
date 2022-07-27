# r[n % 344] = r[(n + 313) % 344] + r[(n + 341) % 344];

# n = 2
# r[2] = r[315] + r[342];
# r[3] = r[316] + r[343];
# r[4] = r[317] + r[344];
	
# n = 33
# r[33] = r[3] + r[342];

# 172
# for i in range(1961):
# 	n = i
# 	print(n%344,(n + 313) % 344,(n + 341) % 344)


# arr = [0]*344
# i = 0
# arr[i+0] = 65422
# arr[i+2] = 16988
# arr[i+4] = 62334
# arr[i+6] = 43306
# print(arr)

from pwn import *

def conv(iv):
	if(iv & 0x80000000):
		iv = -0x100000000 + iv
	return iv

r = process("./casino")
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
print(cnt)
# tmp = [49497,23570,42229,19708,64136,63592,22123,46074,14262,48894,15931,9858,22460,13345,36005,35860,40140,14981,14392,49559,54883,15514,40214,29068,38995,36241,1679,16432,12077,16532,20669,2513,46286,12108,52183,8136,43748,53000,19703]
# cnt = 0
# for i in range(0,78,2):
# 	arr[i] = tmp[cnt]
# 	cnt += 1
# print(arr)
# guess = 78
for i in range(3):
	r.recvuntil(">>> ")
	r.sendline("5")
	r.recvuntil(" is ")
	num = r.recvuntil(".")
	arr[cnt] = int(num[:-1])
	# print("f ",arr[cnt])
	cnt += 2
	num1 = conv((arr[cnt-(31*2)]<<0xf) + (arr[cnt-34]<<0xf))
	num2 = conv((arr[cnt-(3*2)]<<0xf) + (arr[cnt-34]<<0xf))
	res = (num1+num2)>>0xf
	if(res<0):
		res &= 0xffff
	arr[cnt] = res
	r.recvuntil(">>> ")
	if(arr[cnt] > arr[cnt-2]):
		r.sendline("1")
	else:
		r.sendline("2")
	r.recvuntil(" is ")
	num = r.recvuntil("!")
	arr[cnt] = int(num[:-1])
	# print("s ",arr[cnt])
	# print("z",cnt)
	# print(res)
	cnt += 2
r.interactive()