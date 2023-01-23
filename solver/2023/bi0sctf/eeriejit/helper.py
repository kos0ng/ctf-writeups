from Crypto.Util.number import *
from z3 import *

inp = b"bi0sCTF{0123456789abcdefghijklmnopqrstu}"

# block = [bytes_to_long(inp[i:i+4]) for i in range(0,len(inp),4)]

block = [BitVec("x{}".format(i), 32) for i in range(4)]


dword_5210 = block[0]
dword_5214 = block[1]
dword_5218 = block[2]
dword_521C = block[3]
dword_5220 = 0x7EFF4B91
dword_5224 = 519498219
dword_5228 = 885790857
dword_522C = 1759856675
dword_5230 = 287468906
dword_5234 = 0
dword_5238 = 0

v15 = [0 for _ in range(35)]
v15[0] = dword_5210
v15[1] = dword_5210
v15[2] = dword_5210
v15[3] = dword_5214
v15[4] = dword_5210
v15[5] = dword_5214
v15[6] = dword_5210
v15[7] = dword_5214
v15[8] = dword_5214
v15[9] = dword_5218
v15[10] = dword_521C
v15[11] = dword_5218
v15[12] = dword_521C
v15[13] = 0

xor_buf = []

xor_buf.append(dword_5224)
xor_buf.append(dword_5228)
xor_buf.append(dword_522C)
xor_buf.append(dword_5230)

mul_buf = []

mul_buf.append(4)
mul_buf.append(dword_5214)
mul_buf.append(5)
mul_buf.append(0x69)
mul_buf.append(6)
mul_buf.append(2)
mul_buf.append(0xd)
mul_buf.append(0x11)
mul_buf.append(dword_5218)
mul_buf.append(5)
mul_buf.append(5)
mul_buf.append(0x69)
mul_buf.append(dword_5218)
mul_buf.append(4)
mul_buf.append(5)
mul_buf.append(0x12f)

v14 = [0 for i in range(4)]

inst = [0x00000035,0x00000000,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000003,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000000,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000003,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000000,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000003,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000000,0x00000035,0x00000003,0x0000003e,0x00000035,0x00000003,0x0000003e,0x00000030,0x00000000,0x00000003,0x00000031,0x00000000,0x00000003,0x0000003d,0x00000003,0x00000030,0x00000000,0x00000003,0x00000031,0x00000000,0x00000003,0x0000003d,0x00000003,0x00000030,0x00000000,0x00000003,0x00000030,0x00000000,0x00000003,0x0000003d,0x00000003,0x00000030,0x00000000,0x00000003,0x00000030,0x00000000,0x00000003,0x00000031,0x00000000,0x00000003,0x0000003d,0x00000003,0x0000003e,0x00000036,0x00000000,0x00000003,0x00000036,0x00000000,0x00000003,0x00000036,0x00000000,0x00000003,0x00000036,0x00000000,0x00000003,0x00000040]
cnt = 0
v6 = 0
v13 = dword_5210
v11 = 0
v12 = 1

s = Solver()

while True:
    op = inst[cnt]
    # print("==================")
    # print(f"PC : {cnt} -> {hex(op)}")
    # print(f"v13 : {hex(v13)}")
    if(op == 0x30):
    	v7 = v6 - 1
    	v0 = v15[v7 + 14]
    	v7 -= 1
    	v1 = v15[v7 + 14]	
    	# print(f"v15[{v7 + 14}] = {hex(v0)} + {hex(v1)}")
    	# print(f"bef v15[{v7 + 14}] = {hex(v15[v7 + 14])}")
    	v15[v7 + 14] = v0 + v1
    	# print(f"aft v15[{v7 + 14}] = {hex(v15[v7 + 14])}")
    	v6 = v7 + 1
    	cnt += 3
    elif(op == 0x31):
    	v7 = v6 - 1
    	v0 = v15[v7 + 14]
    	v7 -= 1
    	v1 = v15[v7 + 14]	
    	# print(f"v15[{v7 + 14}] = {hex(v0)} - {hex(v1)}")
    	# print(f"bef v15[{v7 + 14}] = {hex(v15[v7 + 14])}") 	
    	v15[v7 + 14] = (v0 - v1)&0xffffffffffffffff
    	# print(f"aft v15[{v7 + 14}] = {hex(v15[v7 + 14])}") 	
    	v6 = v7 + 1
    	cnt += 3
    elif(op == 0x35):
        if inst[cnt+1] != 0:
        	v13 *= mul_buf[dword_5234]
        	# print(f"v13 *= {mul_buf[dword_5234]}")
        	dword_5234 += 1
        else:
        	# print(f"v13 *= v13")
        	v13 *= v13
        cnt += 2
    elif(op == 0x36):
    	v11 -= 1
    	# print(f"v13 = v13 ^ v14[v11] ^ xor_buf[{dword_5238}]")
    	# print(f"v13 = {hex(v13)} ^ {hex(v14[v11])} ^ {hex(xor_buf[dword_5238])}")
    	v13 = v13 ^ v14[v11]
    	v13 = v13 ^ xor_buf[dword_5238]
    	# print(f"v13 = {hex(v13)}")
    	dword_5238 += 1
    	cnt += 3
    elif(op == 0x3d):
    	v6 -= 1
    	# print(f"v14[{v11}] = v15[{v6 + 14}]%dword_5220")
    	v14[v11] = v15[v6 + 14]%dword_5220
    	# print(f"v14[{v11}] = {hex(v14[v11])}")
    	v11 += 1
    	cnt += 2
    elif(op == 0x3e):
        v4 = v6
        v6 += 1
        # print(f"v15[{v4 + 14}] = v13")
        v15[v4 + 14] = v13
        # print(f"v15[{v4 + 14}] = {v15[v4 + 14]}")
        v5 = v12
        v12 += 1
        v13 = v15[v5];
        cnt += 1
    elif(op == 0x40):
    	# print(f"v13 = {hex(v13)}")
        print(v13)
        s.add(v13 == 0)

        break
    else:
    	print("wut?" , hex(op))
    	break
print(s)
print(s.check())
