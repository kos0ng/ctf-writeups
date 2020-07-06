a="huL{SEp^H6?!"

for j in range(20):
	flag=""
	cnt=j
	for i in a:
		flag+=chr(ord(i)^(cnt))
		cnt+=7
	print flag
