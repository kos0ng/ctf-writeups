
f=open("real.enc","r")

a2=list(f.read()[:-1])
a5=9
a1_8=[0xde,0xd9,0xa1,0xf9,0xed,0xc0,0xa8,0xff,0xe1,0xd6,0xac,0x91,0xa0,0xc6,0xe7,0xf2,0xbc,0xa6,0xe6,0xf9,0xb2,0xab,0xaf,0xab,0xbd,0xee,0xbc,0xf7,0xb1,0xfc,0xbb,0xae,0xdd,0x9a,0xcb,0x80,0xc8,0xd8,0x96,0xd4,0xbc]
a1_18=0xa5
a1_16=0x29
v6=0xa5
a4=83
flag=""
for i in range(a4):
	flag+=chr(a1_8[(i ^ v6) % a1_16] ^ a5 ^ ord(a2[i]) ^ i ^ a1_8[1]  ^ v6 ^ 0 )
print flag