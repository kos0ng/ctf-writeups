import string

a = bytes.fromhex("69072CCDD9E8E69AA15B6B6B182D2D02")

for j in range(0x100):
	tmp = ""
	key = j
	for i in a:
		tmp += chr(i^key)
		key += 0x17
		key &= 0xff
	if("UTFLAG" in tmp):
		print(j,tmp)
		break
