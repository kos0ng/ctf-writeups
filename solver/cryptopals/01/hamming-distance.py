def s2b(a):
	res = ""
	for i in a:
		res += bin(ord(i))[2:].rjust(8,"0")
	return res

def check(a,b):
	cnt = 0
	for i in range(len(a)):
		if(a[i]!=b[i]):
			cnt += 1
	return cnt

a = "this is a test"
b = "wokka wokka!!!"
a = s2b(a)
b = s2b(b)
print(check(a,b))