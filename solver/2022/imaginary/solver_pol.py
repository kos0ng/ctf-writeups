a = ['sub    al,0x60', 'sub    al,0x9', 'sub    al,0x60', 'sub    al,0x3', 'sub    al,0x60', 'sub    al,0x14', 'sub    al,0x60', 'sub    al,0x6', 'sub    al,0x60', 'sub    al,0x1b', 'sub    al,0x60', 'sub    al,0x4', 'sub    al,0x60', 'sub    al,0x19', 'sub    al,0x60', 'sub    al,0xe', 'sub    al,0x60', 'sub    al,0x1', 'sub    al,0x60', 'sub    al,0xd', 'sub    al,0x60', 'sub    al,0xd1', 'sub    al,0x60', 'sub    al,0x3', 'sub    al,0x60', 'sub    al,0xff', 'sub    al,0x60', 'sub    al,0x4', 'sub    al,0x60', 'sub    al,0xd3', 'sub    al,0x60', 'sub    al,0x2', 'sub    al,0x60', 'sub    al,0x15', 'sub    al,0x60', 'sub    al,0x7', 'sub    al,0x60', 'sub    al,0x7', 'sub    al,0x60', 'sub    al,0xd1', 'sub    al,0x60', 'sub    al,0xe', 'sub    al,0x60', 'sub    al,0x7', 'sub    al,0x60', 'sub    al,0xff', 'sub    al,0x60', 'sub    al,0xd1', 'sub    al,0x60', 'sub    al,0x13', 'sub    al,0x60', 'sub    al,0xff', 'sub    al,0x60', 'sub    al,0xe', 'sub    al,0x60', 'sub    al,0xd1', 'sub    al,0x60', 'sub    al,0x3', 'sub    al,0x60', 'sub    al,0x5', 'sub    al,0x60', 'sub    al,0x1d', 'sub    al,0x60', 'sub    al,0xaa']
flag = ''
for i in range(0,len(a),2):
	flag += chr((int(a[i].split(',')[1],16)+int(a[i+1].split(',')[1],16))&0xff)
print(flag)