from pwn import *
import gmpy2
from Crypto.Util.number import *

class RNG:
    def __init__ (self, seed, a, b, p):
        self.seed = seed
        self.a = a
        self.b = b
        self.p = p

    def gen(self):
        out = self.seed
        while True:
            out = (self.a * out + self.b) % self.p
            self.a += 1
            self.b += 1
            self.p += 1
            yield out

def getPrime ():
    prime = int(prime_arr[next(gen)].strip())
    return prime

def generate_keys():
    p = getPrime()
    q = getPrime()
    n = p*q
    g = n+1
    l = (p-1)*(q-1)
    mu = gmpy2.invert(((p-1)*(q-1)), n)
    return (n, g, l, mu)

def L(u, n):
    return (u - 1) // n

def pallier_decrypt(key, ct):
    n_sqr = key[0]**2
    tmp = L(pow(ct, key[2], n_sqr),key[0])
    return (tmp*key[3])%key[0]

fn = open(r"firstnames.py", 'r')
ln = open(r"lastnames.py", 'r')
fp = open (r"primes.py", 'r')
fn_content = fn.readlines()
ln_content = ln.readlines()
prime_arr = fp.readlines()
N=(min(len(fn_content), len(ln_content)))
print(N)
# r = process(["python3","chal.py"])
r = remote("34.90.236.228", 1337)
r.recvline()
tmp = r.recvline().strip()
spl = tmp.split(b'\t')
print(spl)
name1 = spl[0].split(b" ")
name2 = spl[2].split(b" ")
a1 = fn_content.index(name1[0].decode()+'\n')
b1 = ln_content.index(name1[1].decode()+'\n')
a2 = fn_content.index(name2[0].decode()+'\n')
b2 = ln_content.index(name2[1].decode()+'\n')
# print(a,b)
for i in range(N+1):
    lcg = RNG(i, a1, b1, N)
    gen=lcg.gen()
    if(next(gen)==a2 and next(gen)==b2):
        print("Found!",i)
        winner=next(gen)%2
        r.recvuntil(b": 1 or 2\n")
        r.sendline(str(winner).encode())
        break
for _ in range(9):
    next(gen)
    next(gen)
    next(gen)
    next(gen)
    winner=next(gen)%2
    r.recvuntil(b": 1 or 2\n")
    print("huff")
    r.sendline(str(winner).encode())
r.recvuntil(b"message?\n")
ct = r.recvline().strip()
key=generate_keys()
print(ct)
pt = pallier_decrypt(key,int(ct))
print("pt",long_to_bytes(pt))
r.interactive()