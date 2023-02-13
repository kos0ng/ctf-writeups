import gmpy2
from Crypto.Util.number import *

def egcd(a, b):
	if a == 0:
		return (b, 0, 1)
	else:
		g, y, x = egcd(b % a, a)
		return (g, x - (b // a) * y, y)

p = 861346721469213227608792923571
q = 1157379696919172022755244871343
n = p*q
c = 375444934674551374382922129125976726571564022585495344128269
e = 2**16

g ,yp, yq = egcd(p,q)
mp = pow(c,(p+1)//4,p)
mq = pow(c,(q+1)//4,q)

for i in range(15):
	mp = pow(mp,(p+1)//4,p)
	mq = pow(mq,(q+1)//4,q)

r = (yp*p*mq + yq*q*mp) % n
mr = n - r
s = (yp*p*mq - yq*q*mp) % n
ms = n - s
for num in [r,mr,s,ms]:
	print(long_to_bytes(num))
