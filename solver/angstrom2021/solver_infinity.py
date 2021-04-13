from ctypes import *
import time
from pwn import *
import string

def gen_key(length):
	xor_key = []
	v12 = 0
	for i in range(length):
		xor_key.append(v12)
		v12 += 17
	return xor_key

libc = CDLL("libc.so.6")   
tmp = int(time.time())+1
v5 = 1337

# r = process("./infinity_gauntlet")
r = remote("shell.actf.co",21700)
r.recvuntil(" ===\n")
for tm in range(tmp,tmp+1):
	libc.srand(tm)
	guess = []
	for v3 in range(49):
		result = libc.rand()
		v18 = libc.rand()
		v19 = (v18 & 0xffff)
		
		if(libc.rand()&1):
			v14 = libc.rand() % 3
			if(v14):
				if(v14==1):
					v30 = libc.rand()
					v31 = v30 - ( 1337 * ((1644744395 * v30 >> 41) ) - (v30 >> 31))
					v31 &= 0xffffffff
				else:
					v15 = libc.rand()
					v16 = v15 - 1337 * ((1644744395 * v15 >> 41) - (v15 >> 31))
			else:
				v24 = libc.rand()
				v25 = v24 - 1337 * ((1644744395 * v24 >> 41) - (v24 >> 31))
		else:
			v20 = libc.rand()
			if(v20&3):
				v21 = v20 % 4
				if(v21 == 1):
					v32 = libc.rand() % v5
					v33 = libc.rand()
					v34 = (v33 >> 31)
					v34 = v33 % v5
				elif(v21 == 2):
					v35 = libc.rand() % v5
					v36 = libc.rand()
					v37 = (v36 >> 31)
					v37 = v36 % v5
				else:
					if(v19 <= 0x539):
						v23 = libc.rand() % v19
					else:
						v22 = libc.rand()
						v23 = v22 - 1337 * ((1644744395 * v22 >> 41) - (v22 >> 31))
			else:
				v26 = libc.rand()
				v27 = v26 - 1337 * ((1644744395 * v26 >> 41) - (v26 >> 31))
				v28 = libc.rand()
				v29 = v28 - 1337 * ((1644744395 * v28 >> 41) - (v28 >> 31))
		guess.append(v19)
for i in guess:
	r.sendline(str(i))


enc = []
rand_val = []
for i in range(40):
	result = libc.rand()
	rand_val.append(result)
	r.recvuntil("=== ROUND "+str(50+i)+" ===\n")
	tmp = r.recvline().strip()
	tmp2 = tmp.split(b" = ")
	equation_result = tmp2[1]
	equation = tmp2[0][4:-1].split(b", ")
	if(b"bar" in tmp):
		if(b'?' in equation):
			position = equation.index(b'?')
			equation_result = int(equation_result)
			if(position == 0):
				libc.rand()
				libc.rand()
				libc.rand()
				libc.rand()
				v27 = int(equation[1])
				v29 = int(equation[2])
				v19 = equation_result - v27 * (v29 + 1)
			elif(position == 1):
				libc.rand()
				libc.rand()
				libc.rand()
				libc.rand()
				v32 = int(equation[0])
				v34 = int(equation[2])
				v19 = ( equation_result - v32 ) // (v34 + 1)
			else:
				libc.rand()
				libc.rand()
				libc.rand()
				libc.rand()
				v35 = int(equation[0])
				v37 = int(equation[1])
				v19 = ( ( equation_result - v35 ) // v37 ) - 1
		else:
			libc.rand()
			libc.rand()
			libc.rand()
			eq0 = int(equation[0])
			eq1 = int(equation[1])
			eq2 = int(equation[2])
			v23 = eq1
			v19 = ( eq2 + 1 ) * v23 
			if(v19%v23!=eq0):
				for i in range(v23):
					v19 += 1
					if(v19%v23==eq0):
						break

	else:
		if(b'?' in equation):
			position = equation.index(b'?')
			equation_result = int(equation_result)
			if(position == 0):
				libc.rand()
				libc.rand()
				libc.rand()
				v25 = int(equation[1])
				v19 = equation_result ^ 0x539 ^ (v25 + 1) 
			else:
				libc.rand()
				libc.rand()
				libc.rand()
				v31 = int(equation[0])
				v19 = ( equation_result ^ 0x539 ^ v31 ) - 1
		else:
			libc.rand()
			libc.rand()
			libc.rand()
			eq1 = int(equation[0])
			eq2 = int(equation[1])
			v16 = eq2
			v19 = eq1 ^ 0x539 ^ (v16 + 1)
	enc.append(v19)
	r.sendline(str(v19))

print("rand_val = ",rand_val)
print("enc = ",enc)
counter = 50
length_flag = 17
fix_flag = [-1 for i in range(length_flag)]
for i in range(len(rand_val)):
	index = rand_val[i] % length_flag
	brute = (index + counter) << 8	
	for j in range(0xff):
		if(brute|j==enc[i]):
			fix_flag[index] = j
			break
	counter += 1
xor_key = gen_key(length_flag)
fixx = ['?' for i in range(length_flag)]
for i in range(len(fix_flag)):
	if(fix_flag[i]!=-1):
		fixx[i] = chr((fix_flag[i]^xor_key[i])&0xff)
print(''.join(fixx))