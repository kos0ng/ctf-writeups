import string

correct = [159, 218, 153, 214, 45, 206, 153, 374]
key = 'PEACEOUT'
tmp = []
res = []
l2 = [192, 18, 117, -32, 120, -16, 173, -2]
for i in range(0,len(correct),2):
	tmp.append((correct[i]^69)>>1)
	tmp.append((correct[i+1]^10)>>2)
# [res.append(ord(key[i]) + l2[i]) if i & 1 == 1 else res.append(l2[i]-ord(key[i])) for i in range(len(l2))]
for i in range(len(l2)):
	if i & 1 ==1:
		res.append(ord(key[i]) - l2[i])
	else:
		res.append(l2[i]-ord(key[i]))

for i in range(len(res)):
	if(res[i]<0):
		res[i]*=-1
# print(''.join(map(chr,res)))
# launchcode = "A"*16+"B"*8
# l3 = launchcode[int(2 * 24 / 3):]
KEY = "There's no way to win"
I = 7
KARMA = [
123, 47, 86, 28, 74, 50, 32, 114]
possible = []
for x in range(8):
	tmp = []
	for i in string.printable[:-6]:
		if((ord(i) + I ^ ord(KEY[I])) % 255 == KARMA[x]):
			tmp.append(i)
	I = (I + 1) % len(KEY)
	possible.append(tmp)
for i in possible:
	print i
