import base64
from Crypto.Util.strxor import strxor

target = 'RS{ZQWAA'
list_key = ['LN3M99BX','PQ4LL22C','WV94J7ZH','GT6BW30K','N28UB11M','FQ7FV5K2','7NFSK27C','1CZ7KHR5','1CZ7KHR5','NN52DOMW','JWVE66PI','7NFSK27C','FQ7FV5K2','N28UB11M','N28UB11M','7NFSK27C','1CZ7KHR5','7NFSK27C']
for i in list_key:
	# tmp = base64.b64decode(i)
	tmp = i.encode()
	print(tmp,base64.b64encode(strxor(target.encode(),tmp)))
