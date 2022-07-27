enc = "424324357b7f0c687d242456495e293d290457373a6d33423c0b4d11386d4c29547d645a652f2428".decode('hex')
init = list(map(ord,list(enc)))
f = open("array.txt").read()
bf = eval(f)

max_index = len(enc)-1
plain = [0]*len(enc)
plain2 = [0]*len(enc)
for x in bf:
	arr = x[::-1]
	final = init[:]
	for k in arr:
		mapp = k[1]
		order = k[0]
		start = order.index(max_index)
		for i in range(len(final)):
			plain[mapp[i]] = final[i]
		plain2[-1] = plain[-1]
		for i in range(start-1,-1,-1):
			plain2[order[i]] = plain[i]^plain2[order[i+1]]
		for i in range(start+1,len(final)):
			plain2[order[i]] = plain[i-1]^plain2[order[i-1]]
		final = plain2
	res = ''.join(map(chr,final))
	if('IJCTF' in res):
		print res


# example
# res[0] = flag[3] ^ flag[2]
# res[1] = flag[2] ^ flag[1]
# res[2] = flag[1] ^ flag[4]
# res[3] = flag[4] ^ flag[0]
# res[4] = flag[0] ^ flag[5]