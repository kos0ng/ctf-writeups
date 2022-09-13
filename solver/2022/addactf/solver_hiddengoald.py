from Crypto.Cipher import Salsa20
import base64

list_ct = ['c8Cf5vA=','eNGm2vc=','IdDK05g=','VoWMqrM=r','I8am0PQ=','dNWV4A==','c8Cf5vA=','eNGm2vc=','IdDK05g=','VoWMqrM=r','I8am0PQ=','dNWV4A==','c8Cf5vA=','eNGm2vc=','IdDK05g=','VoWMqrM=r','I8am0PQ=','dNWV4A==','c8Cf5vA=','eNGm2vc=','IdDK05g=','VoWMqrM=r','I8am0PQ=','dNWV4A==']
flag = b""
for tmp in list_ct:
	ct = base64.b64decode(tmp)
	secret = b'ig154jDmBpyzSkmXKeJg0H7Ol1SpV80b'
	cipher = Salsa20.new(secret,b'ctf_s_iv')
	flag += cipher.decrypt(ct)
print(flag[:flag.index(b'}')+1])