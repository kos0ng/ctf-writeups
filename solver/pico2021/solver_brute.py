from Crypto.Util.number import long_to_bytes as l2b

arr_i = []
def swap(arr,a2,a3):
	scope = a2 - a3 + 1
	i=0
	while True:
		if(i>=scope):
			break
		v3 = arr[i]
		arr[i] = arr[i+a3-1]
		arr[i+a3-1] = v3
		i+=a3
	arr_i.append(i)
	return arr

def reswap(arr,a2,a3):
	scope = a2 - a3 + 1
	i=arr_i[a3-1]
	i-=a3
	while True:
		if(i<0):
			break
		v3 = arr[i]
		arr[i] = arr[i+a3-1]
		arr[i+a3-1] = v3
		i-=a3
	return arr

payload = "A"*8
enc = l2b(0x4662461f4662461f)
key = []
for i in range(4):
	key.append(ord(payload[i])^ord(enc[i]))
key = key[::-1]

# junk to generate arr_i
tmp = list(l2b(0x4662461f)[::-1]*8)
for i in range(1,0x1e):
	tmp = swap(tmp,0x1e,i)

# unused , because there is initial array before reverse swap
# for i in range(0x1e-1,0,-1):
# 	tmp = swap(tmp,0x1e,i)
# print "Check",map(hex,map(ord,tmp))

tmp = [0x7a, 0x2e, 0x6e, 0x68, 0x1d, 0x65, 0x16, 0x7c, 0x6d, 0x43, 0x6f, 0x36, 0x34, 0x62, 0x47, 0x42, 0x43, 0x31, 0x40, 0x63, 0x58, 0x1, 0x58, 0x66, 0x62, 0x66, 0x53, 0x30, 0x3c, 0x17, 0x0, 0x0]

for i in range(0x1d,0,-1):
	tmp = reswap(tmp,0x1e,i)

for i in range(len(tmp)):
	tmp[i]^=key[i%len(key)]
print(''.join(map(chr,tmp)))