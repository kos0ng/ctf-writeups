from Crypto.Util.number import long_to_bytes as l2b
target = 0x4a3ad948eb3eceb425b74609f480951c3d5503a3a9f4bef9d713dae9dc14d71e1e155192
tmp = bin(target)[2:]
tmp = [tmp[i:i+3] for i in range(0,len(tmp),3)]

flag = []
flag.append(tmp[0].rjust(3,'0'))
for i in range(1,len(tmp)):
	flag.append(bin(int(tmp[i],2)^int(flag[i-1],2))[2:].rjust(3,'0'))
flag[-1]=flag[-1][1:]
print(l2b(int(''.join(flag),2)))