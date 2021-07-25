# flag = "maqlo1337q"

f = open("flag.txt.enc").read()

map_value = {}
for i in range(0xff+1):
	for j in range(0xff+1):
		rbp_9 = ((j<<0x4)+(i>>0x4))&0xff
		rbp_a = ((i<<0x4)+(j>>0x4))&0xff
		for k in range(3):
			if(rbp_9>>7==0):
				rbp_9*=2
				rbp_9&=0xff
			else:
				rbp_9*=2
				rbp_9|=1
				rbp_9&=0xff
		for k in range(2):
			if(rbp_a>>7==0):
				rbp_a*=2
				rbp_a&=0xff
			else:
				rbp_a*=2
				rbp_a|=1
				rbp_a&=0xff
		rbp_9^=0x13
		rbp_a^=0x37
		map_value[chr(rbp_9)+chr(rbp_a)] = chr(i)+chr(j)
flag = ""
for i in range(0,40,2):
	flag += map_value[f[i:i+2]]
print flag