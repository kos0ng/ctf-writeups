# a = [6,26,23,7,24,10,3,23,11,26,31,30,23,6,22,9,31,6,3,8,1,26,31,13,12,14,18,10,0,10,31,30,7,6,21,10,12,22,29,9,32,21,28,16,1,10,1,10,31,3,3,8,1,26,65534,10,27,14,18,16,19,18,28,8,23,7,1,29,28,22,16,7,8,7,0,20,27,21,65535,29,24,6,23,26,11,17,3,25,32,9,29,16,15,6,30,8,1,26,31,9,31,29,13,23,11,10,16,7,0,26,31,18,11,22,6,8,23,2,27,5]
# for i in range(0,0xff+1):
# 	x = a[0]
# 	tmp = ""
# 	for j  in a:
# 		tmp += chr((i+j-x)&0xff)
# 	print i,tmp
import base64

list_char = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
target = "SGVyZSBpcyB5b3VyIHJld2FyZCBodHRwczovL3d3dy55b3t"
for i in list_char:
	tmp = base64.b64decode(target+i)
	if(tmp[-1]=='t'):
		print(i)
# while True:
# 	try:
# 		print(base64.b64decode(raw_input("b64 payload : ")))
# 	except Exception as e:
# 		print "error"