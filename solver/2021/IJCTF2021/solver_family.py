xor = [0x3a, 0xf7, 0x0, 0x68, 0x6, 0x2e, 0x29, 0x89, 0xf4, 0x67, 0x2e, 0xc6, 0xd6, 0x6e, 0x12, 0x75, 0x1b, 0xba, 0x64, 0x44, 0x1b, 0x24, 0xa5, 0x30, 0x3a, 0xfe, 0xa7, 0xd, 0x74, 0xaf, 0x99, 0xce, 0x12, 0xe1, 0x1a, 0x92, 0x87, 0xf3, 0xdd, 0xdd, 0xf3]
add = [0xbb, 0xf0, 0xd9, 0xf2, 0x28, 0x63, 0xa1, 0x93, 0x92, 0xc5, 0x35, 0xee, 0x47, 0x9a, 0x5e, 0x86, 0x26, 0xd7, 0xd5, 0x52, 0xb0, 0x64, 0x92, 0xe3, 0xe8, 0x4c, 0x82, 0xa4, 0xb8, 0x9f, 0x9a, 0xc0, 0xa8, 0xce, 0x10, 0x7a, 0xe3, 0xbf, 0xc7, 0xd5, 0x3b]
sub = [0xc9, 0x6, 0xa4, 0x4e, 0x5d, 0x33, 0xcb, 0xe7, 0xca, 0xb3, 0x77, 0xe3, 0x64, 0xc, 0x8b, 0xc8, 0xee, 0x14, 0xa2, 0x70, 0x42, 0x89, 0xbf, 0xe2, 0x22, 0x1a, 0xb9, 0xf5, 0x9a, 0x71, 0xb2, 0xba, 0x3c, 0x3e, 0x6d, 0xaf, 0xbd, 0xa, 0x1d, 0x82, 0x64]
cmp_val = [0x65, 0xa7, 0x78, 0xe0, 0xb, 0x85, 0x34, 0x8d, 0x55, 0x4a, 0x8, 0xba, 0x95, 0xbf, 0x4e, 0xe8, 0xb7, 0x98, 0x6e, 0x12, 0xe1, 0x28, 0xa9, 0x70, 0xd3, 0xd1, 0x8b, 0x1e, 0x2f, 0xf9, 0x97, 0x1, 0xe0, 0x15, 0x1e, 0x71, 0xe4, 0x77, 0x68, 0x11, 0x65]
flag = ""
for i in range(0x29):
	flag += chr(((cmp_val[i] + sub[i] - add[i])^xor[i])&0xff)
print flag