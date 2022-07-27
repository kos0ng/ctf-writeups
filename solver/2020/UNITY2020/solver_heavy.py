import string

def shiftloop(tmp,countshift,countloop,shift):
	if(shift=='right'):
		for i in range(countloop,0,-1):
			shiftright(tmp,countshift)
	else:
		for i in range(countloop,0,-1):
			shiftleft(tmp,countshift)

def shiftleft(tmp,count):
	tmp2=tmp[0]
	for i in range(count-1):
		tmp[i]=tmp[i+1]
	tmp[count-1]=tmp2
	return tmp

def shiftright(tmp,count):
	tmp2=tmp[count-1]
	for i in range(count-1,0,-1):
		tmp[i]=tmp[i-1]
	tmp[0]=tmp2
	return tmp

data=[0x0000002e,0xffffff8a,0xffffffa9,0xfffffff8,0x0000000b,0xffffffca,0x00000026,0x00000077,0x00000067,0x00000077,0x00000025,0x00000057,0xffffffc2,0x00000052,0xffffffd1,0xfffffff2,0x00000023,0xffffff72,0xffffff46,0xffffff24,0xffffff46,0xffffff24,0xffffff2c,0x0000008e]
inputan=[0]*24
local_b0 = 0
while (local_b0 < 6):
	inputan[local_b0] = (data[local_b0] ^ 0x5c)&0xff
	local_b0 += 1
local_ac = 6
while (local_ac < 0xc):
	inputan[local_ac] = (data[local_ac] - 0x30)&0xff
	local_ac += 1
local_a8 = 0xc
while (local_a8 < 0x12):
	inputan[local_a8] = (data[local_a8] + 0x24)&0xff
	local_a8 += 1
local_a4 = 0x12
while (local_a4 < 0x18):
	inputan[local_a4] = (data[local_a4] / 2) &0xff
	local_a4 += 1

local_b8 = 3
while(local_b8 >=0 ):
	if ((local_b8 & 1) != 0):
		tmp_input=inputan[local_b8*6:(local_b8+1)*6]
		shiftloop(tmp_input,6,local_b8+1,'left')
		inputan[local_b8*6:(local_b8+1)*6]=tmp_input
	else:
		tmp_input=inputan[local_b8*6:(local_b8+1)*6]
		shiftloop(tmp_input,6,local_b8+1,'right')
		inputan[local_b8*6:(local_b8+1)*6]=tmp_input
	local_b8-=1

for i in range(9):
	list_dict={}
	for j in string.printable[:-6]:
		list_dict[((ord(j) << (8 - i)) | (ord(j) >> i))&0xff]=j
	tmp_flag=""
	for j in inputan:
		try:
			tmp_flag+=list_dict[j]
		except Exception as e:
			tmp_flag+='x'
	print str(i)+" = "+tmp_flag
	if("x" not in tmp_flag):
		flag=tmp_flag
print "=================================="
for i in string.printable[:-6]:
	if(ord(i)+0x8c&0x1f==4):
		print "Flag: "+flag+i


