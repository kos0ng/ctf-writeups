from Crypto.Util.number import *
import gmpy2

def nextPrime(prime):
    if isPrime(prime):
        return prime
    else:
        return nextPrime(prime+1)

def find(n):
  p = gmpy2.iroot(n // 2401, 7)[0]
  for _ in range(2**16):
    p -= 1
    if n % p == 0 and isPrime(p):
      q = nextPrime(7*p)
      r = nextPrime(p*q)
      s = nextPrime(q*r)
      return [p,q,r,s]

n = 991780332070847898144930172913707154337428968947289369950557418182205916671610439120415358846651351930506089582472303042933616371165128107548726642508866988284488166396083880240510413080431759514941229838260223120292397812794508537379728621988207944460296809293569542376203
e = 65537
c = "a42d23224b72bcd5de3712ea6e172eb1e664f3a56d0913b54d53064708a9a7d2d039db467296c41fccdff6ef0ccc6605c2cb6b1a7bff8870a3b8bf2a9a96cba566d2a22c86e5ef25be144856976a7d0c113a54bb187997625c2dee5cdb484a5b43ca6b00df900f580f3d07d50004cd312d"
c = bytes_to_long(bytes.fromhex(c))
p, q, r, s = find(n)
assert p*q*r*s == n

phin = (p-1)*(q-1)*(r-1)*(s-1)
d = inverse(e,phin)
m = pow(c,d,n)
print(long_to_bytes(m))