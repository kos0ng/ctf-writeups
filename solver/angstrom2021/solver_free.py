from pwn import *
from z3 import *

z = 31337
x = Int('x')
y = Int('y')
s = Solver()
s.add(x+y == 1142)
s.add(x*y == 302937)
s.check()
m = s.model()
x = str(m[x])
y = str(m[y])
r = remote("shell.actf.co",21703)
r.recvuntil("???")
r.sendline(str(z))
r.recvuntil("???")
r.sendline(x+" "+y)
r.recvuntil("???")
r.sendline("banana")
r.interactive()