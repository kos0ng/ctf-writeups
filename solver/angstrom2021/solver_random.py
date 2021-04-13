from functools import reduce
from pwn import *
class Generator():
    DIGITS = 8
    def __init__(self, seed):
        self.seed = seed
        print(seed)
        assert(len(str(self.seed)) == self.DIGITS)

    def getNum(self):
        print("pow",self.seed**2)
        self.seed = int(str(self.seed**2).rjust(self.DIGITS*2, "0")[self.DIGITS//2:self.DIGITS + self.DIGITS//2])
        print("return",self.seed)
        return self.seed

def factors(n):    
    return list(reduce(list.__add__, ([i, n//i] for i in range(1, int(n**0.5) + 1) if n % i == 0)))


r = remote("crypto.2021.chall.actf.co",21600)
r.recvuntil("?")
r.sendline("r")
target1 = int(r.recvline().strip())
r.recvuntil("?")
r.sendline("r")
target2 = int(r.recvline().strip())
r.recvuntil("?")
r.sendline("g")
tmp = factors(target1)
possible = []
for i in range(0,len(tmp),2):
	if(len(str(tmp[i]))==len(str(tmp[i+1]))):
		tmp2 = []
		tmp2.append(tmp[i])
		tmp2.append(tmp[i+1])
		possible.append(tmp2)
for i in possible:
	r1 = Generator(i[0])
	r2 = Generator(i[1])
	if(r1.getNum()*r2.getNum()==target2):
		print(i[0])
		print(i[1])
		break
r.sendline(str(r1.getNum()*r2.getNum()))
r.recvuntil("?")
r.sendline(str(r1.getNum()*r2.getNum()))
r.interactive()