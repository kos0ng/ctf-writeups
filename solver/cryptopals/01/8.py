f = open("8.txt").read()
f_split = [i for i in f.split("\n")]
blocksize = 16
for i in f_split:
	cnt = 0
	for j in range(0,len(f_split),blocksize):
		for k in range(j+blocksize,len(f_split),blocksize):
			if(i[j:j+blocksize]==i[k:k+blocksize]):
				cnt += 1
	if(cnt==2):
		print("Possible ECB : " + i)
	elif(cnt>2):
		print("Fix ECB : " + i)