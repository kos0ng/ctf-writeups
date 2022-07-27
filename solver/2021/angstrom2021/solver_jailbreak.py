from pwn import *

def get1337():
	target = 1337
	gr = []
	while(target!=1):
		if(target%2==0):
			target//=2
			gr.append("press the red button")
		else:
			target-=1
			target//=2
			gr.append("press the green button")
	for i in gr[::-1]:
		r.recvuntil("do?")
		r.sendline(i)
	r.recvuntil("do?")
	r.sendline("bananarama")

context.log_level = 'debug'
# r = process("./jailbreak")
r = remote("shell.actf.co", 21701)
list_command = """look around
sleepa
pick the snake up
throw the snake at kmh
pry the bars open
look around""".split("\n")
for i in list_command:
	r.recvuntil("do?")
	r.sendline(i)
get1337()
r.interactive()