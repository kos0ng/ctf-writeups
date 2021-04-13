from pwn import *
from Crypto.Util.strxor import strxor

# context.log_level='debug'
# r=remote("chall.codefest.tech",9000)
r=remote("chall.codefest.tech",9000)
r.send("1")
r.recvuntil("Enter hex to encrypt:")
payload = "\x00"*16
payload += "\x10"*32
r.send(payload.encode('hex'))
payload = r.recv(64)
payload = payload.encode('hex')
r.close()
# print(tmp.encode('hex'))

# payload = "2cb96047ab11f8537abc02090633668421fcb16373b99e7f97f85e423ad7209cd9c51fc277915ea83ba48b216bf2e092cbc18122be80f61927025f3d753adec6"
r=remote("chall.codefest.tech",9000)
tmp = "00"*16
tmp += payload[:32]
tmp += payload[32:]
r.send("2")
r.recvuntil("Enter hex to decrypt:")
r.send(tmp)
r.recv(16)
iv = r.recv(16)
key = strxor(iv,"\xff"*16)
r.close()
# print(key.encode('hex'))

# key = "0b9782a96df88195046e30fa453d4a05"
r=remote("chall.codefest.tech",9000)
r.send("3")
r.send(key.encode('hex'))
r.interactive()
# print(tmp1.encode('hex'))
# print(tmp2.encode('hex'))
# iv = strxor(tmp1,tmp2)
# print(iv.encode('hex'))

# payload = strxor("\xff"*16,tmp.decode('hex'))
# print payload.encode('hex')
# print(tmp.encode('hex'))
# payload = strxor("\xff"*16,tmp)
# r.send("3")
# r.recvuntil("Give me the key:")
# r.send(payload.encode('hex'))
# r.interactive()
# print(r.recvline())