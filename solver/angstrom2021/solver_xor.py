enc = "ae27eb3a148c3cf031079921ea3315cd27eb7d02882bf724169921eb3a469920e07d0b883bf63c018869a5090e8868e331078a68ec2e468c2bf13b1d9a20ea0208882de12e398c2df60211852deb021f823dda35079b2dda25099f35ab7d218227e17d0a982bee7d098368f13503cd27f135039f68e62f1f9d3cea7c".decode('hex')
flag = "actf{"
for j in range(0,len(enc),5):
	key = []
	tmp = enc[j:j+5]
	for i in range(5):
		key.append(ord(flag[i])^ord(tmp[i]))
	result = ""
	cnt = 0
	for i in range(j,len(enc)):
		result += chr(key[cnt%len(key)]^ord(enc[i]))
		cnt += 1
	print result