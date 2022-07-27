import string
from Crypto.Util.number import bytes_to_long as b2l

target = [0xcd86, 0x26db, 0x571, 0x5346, 0x46c7, 0x1cbd, 0xfb0, 0x43db, 0xae6e, 0x13f7, 0xc263, 0xc505, 0x9639, 0x2e22]
for j in range(0,len(target),2):
	for x 
	rbp_a=0x4241
	rbp_8=0x4443
	rbp_6=0
	rbp_2=0x9e37
	for i in range(0x1f+1):
		eax = rbp_2
		rbp_6 += eax
		eax = rbp_8
		eax <<= 0x4
		edx = 0x2142
		eax += edx
		ecx = eax
		edx = rbp_8
		eax = rbp_6
		eax += edx
		# print(hex(ecx),hex(eax))
		ecx ^= eax
		edx = ecx
		eax = rbp_8
		eax >>= 0x5
		ecx = 0x3421
		eax += ecx
		eax ^= edx
		# print(hex(rbp_a),hex(eax&0xffff))
		rbp_a += (eax)&0xffff
		rbp_a &= 0xffff
		# print(hex(rbp_a))
		eax = rbp_a
		eax <<= 0x4
		edx = 0x3511
		eax += edx
		ecx = eax
		edx = rbp_a
		eax = rbp_6
		eax += edx
		ecx ^= eax
		edx = ecx
		eax = rbp_a
		eax >>= 0x5
		ecx = 0x2425
		eax += ecx
		eax ^= edx
		rbp_8 += (eax)&0xffff
		rbp_8 &= 0xffff
print(hex(rbp_a),hex(rbp_8))
# eax = rbp_4
# eax += 1
# rbp_4 = eax

