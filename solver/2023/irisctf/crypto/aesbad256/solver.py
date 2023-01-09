# 0 b'\x00,pm:S8oEU\x00\x00\x00\x00\x00\x00'
# 1 b'""8oEUaqGW\x00\x00\x00\x00\x00\x00'
# 2 b'B2iyO4kAQ\x00\x00\x00\x00\x00\x00\x00'
# 3 b'DtkAQ6mCS\x00\x00\x00\x00\x00\x00\x00'
# 4 b'e"lsIYeuK"\x00\x00\x00\x00\x00\x00'
# 5 b'\x97"ylBR7nDT\x00\x00\x00\x00\x00\x00'
# 6 b'A1hxN3jzP\x00\x00\x00\x00\x00\x00\x00'
# 7 b'"0,wM2iyO\x00\x00\x00\x00\x00\x00\x00'
# 8 b'{ enDT9pFV\x00\x00\x00\x00\x00\x00'
# 9 b'tm:pFVbrHX\x00\x00\x00\x00\x00\x00'
# 10 b' "fvL1hxN\x00\x00\x00\x00\x00\x00\x00'
# 11 b'pgfrHXdtJZ\x00\x00\x00\x00\x00\x00'
# 12 b': guK0gwM\x00\x00\x00\x00\x00\x00\x00'
# 13 b'":atJZfvL}\x00\x00\x00\x00\x00\x00'
# 14 b'C3jzP5lBR\x00\x00\x00\x00\x00\x00\x00'
# 15 b'ysaqGWcsIY\x00\x00\x00\x00\x00\x00'
from pwn import *

def s(payload):
	r.recvuntil(b"> ")
	r.sendline(b"1")
	r.recvuntil(b"> ")
	r.sendline(payload.encode())
	return r.recvline().strip().decode()


def get_block(payload,index):
	tmp_block = []
	ct = bytes.fromhex(payload)
	for i in range(0,len(ct),16):
		tmp_block.append(ct[i:i+16])
	return tmp_block[index]

def make_block(ct):
	ct = bytes.fromhex(ct)
	res = []
	for i in range(0,len(ct),16):
		res.append(ct[i:i+16])
	return res

def merge(block):
	res = b""
	for i in block:
		res += bytes(i)
	return res.hex()

known_perm = [7,6,2,14,3,5,0,8,1,9,15,11,4,13,12,10]
# [14, 6, 1, 9, 13, 10, 4, 3, 15, 0, 5, 11, 7, 2, 8, 12]
assert(len(known_perm) == 16)
new_perm = []

# r = process(["python3","ori.py"])
r = remote("aes.chal.irisc.tf",10100)
r.recvuntil(b"> ")
r.sendline(b"1")
r.recvuntil(b"> ")
r.sendline(b"A"*227)
ct = r.recvline().strip().decode()
block_ct = make_block(ct)
payload = ["A" for _ in range(227)]
# 0123456789abcdefAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
for i in range(16):
	r.recvuntil(b"> ")
	r.sendline(b"1")
	r.recvuntil(b"> ")
	payload[i] = 'X'
	r.sendline(''.join(payload).encode())
	payload[i] = 'A'
	ct = r.recvline().strip().decode()
	new_block_ct = make_block(ct)
	for j in range(16):
		if(new_block_ct[j]!=block_ct[j]):
			new_perm.append(j)
print(new_perm)
	# r.interactive()
ori = s('0123type8:aflagf,h jklmnopqrstuvwxyzAB:DEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
# ori = "6a1755494416bfb95f9604b7bad99825ba2a2f2605e3737ff92e697ebe682808a66f9afbdf4e94c24fb3b1a8d7ffd14529fc0ddd7ac54ba565d7367b38ccba08f6dd6538e35b86c1ac4c6eafe8d55a1c34aac59729a3c3a2db591b8d534b583fcaa1c71d14d8c09502d2c9397e12b2ee3e5174714e94b877cdc2a916b9b4646e2257f5811337bf605b6ca8c01ec323ca3a79a1ded8205cbf15985d42d20cfc8e4239d130c4cd55d75753e3d07c8178238640d289b4dd230fb640837b5034044b7c5cd04e953998e9cea98ec2041eabe1d2495ee22559afcd9fbdaa2b0dde41c231094c939c9eb8e035190ab0aef9c8c89053d676194721dd1d007ea764ccb970"
ct = bytes.fromhex(ori)
block = []
for i in range(0,len(ct),16):
	block.append(ct[i:i+16])

p1 = s('"123456789abcdef hijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
# p1 = "554ac071d2b49791a6062db107e61a1052a4b85c30f2e6abaf764f02d611b182589642b09c6db2dfdb51646cbd309234beb4ca92dedc21469724a2036d0557cbb7792d5cd01a3d0f3555760cf394d6733bd56c95b652170187ef676172397376d2b7a85d5fd19507c67ee8c1b8720fdd4272b3fd92407ae7ba6c3dcbb5945b6ee44de0bf6d9c141084c228fe3a7179928e7a28711a2e032cc16cd0d737421de8945e1598c49a70311e4ff41593864ec1c5ac760193c19368c17a972dcc92286ec14966936197fda00e4973ce07d623f1477db44c15b2f9044b26e881c40734520405793d699b605335c1dfc9aa39136f8bbfe5a0bd3b83e7b04e3e6738b53f05"
block[new_perm[known_perm.index(6)]] = get_block(p1,new_perm[known_perm.index(6)])

p2 = s('01,3456789abcdefgh jklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
# p2 = "b5c0fd08747ce729127509ab2f7e7ef4ba2a2f2605e3737ff92e697ebe68280878f5499f86ebb4b0da044ef4b45b19fcf669729f0517c70adfdafcab73865425bcd7bac502baaa6ac18fb34e71c203851e8a511ef140553a6ecce6ffa3d45504caa1c71d14d8c09502d2c9397e12b2ee783014aa27967a5729821f624aba83c60ef5f08e014cad40671de0eb47f35d7d65fcfeac85669a8a078a5a0f7de4ed614239d130c4cd55d75753e3d07c81782370126d1de77f6fae5fff71705d11589bdaad0a8ca4cf2b9e86dbe472a1830734dff4e7a149efab1432f13f8ae8a9b0a331094c939c9eb8e035190ab0aef9c8c89053d676194721dd1d007ea764ccb970"
block[new_perm[known_perm.index(2)]] = get_block(p2,new_perm[known_perm.index(2)])

p3 = s('01"3456789abcdefgh jklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
# p3 = "554ac071d2b49791a6062db107e61a1052a4b85c30f2e6abaf764f02d611b182a4e2f987ff20c8e701815b63bf0751debeb4ca92dedc21469724a2036d0557cbb7792d5cd01a3d0f3555760cf394d6733bd56c95b652170187ef676172397376f650df5ffc5f20a67ab7a7c77e71f9b64bfcda5a36e62b1a739095f070317336e44de0bf6d9c141084c228fe3a7179928e7a28711a2e032cc16cd0d737421de8945e1598c49a70311e4ff41593864ec1c5ac760193c19368c17a972dcc92286ec14966936197fda00e4973ce07d623f1477db44c15b2f9044b26e881c4073452148d1fb859e6f9f5d972a4b10f886b4c8bbfe5a0bd3b83e7b04e3e6738b53f05"
block[new_perm[known_perm.index(14)]] = get_block(p3,new_perm[known_perm.index(14)])

p4 = s('0123456"89abcdefgh jklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
# p4 = "aecf494db7ff626ad1e489f59f59b303b41ec92c4fe0aff77aca720eaf89ec0af460639ed28653e1b823af353e776ea0266dbc79194ce36375279e7da0dde7bcb7792d5cd01a3d0f3555760cf394d6735ddb29c007b463c9af6e020ebc349dc9f650df5ffc5f20a67ab7a7c77e71f9b64bfcda5a36e62b1a739095f0703173361631da9bd4c93059bdb1477fd6b9f1d18e7a28711a2e032cc16cd0d737421de8945e1598c49a70311e4ff41593864ec1c5ac760193c19368c17a972dcc92286ec14966936197fda00e4973ce07d623f1477db44c15b2f9044b26e881c40734526729546cd6d8c7a551d2b7c4239117858bbfe5a0bd3b83e7b04e3e6738b53f05"
block[new_perm[known_perm.index(1)]] = get_block(p4,new_perm[known_perm.index(1)])

p5 = s('0123type8"aflagfgh jklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
# p5 = "a8d196e1f41c1801a64eff00f2918b13c1a0a3b91cb920de8d04f53b74a7bc6df460639ed28653e1b823af353e776ea08c296ce1134a098217c689a5f368f872c12fc53201939aab29f4340feefd2408eac0c3998512176920f10038b3793a26f650df5ffc5f20a67ab7a7c77e71f9b64bfcda5a36e62b1a739095f070317336d76f855ec96f0cba20024559b7fa8801c191d503ac49866267ce3c8a66fe769cbe1fc3a677564c64f32bb03d0b6d397bc5ac760193c19368c17a972dcc92286e16a11551ffe0a215ec7873678a02a8328c896b0c34092353cd1a032254fddb106729546cd6d8c7a551d2b7c42391178517f9d620e43bd31be3cfb09a8afc7d69"
block[new_perm[known_perm.index(15)]] = get_block(p5,new_perm[known_perm.index(15)])

p6 = s('0123456789abcd"fgh jklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
# p6 = "aecf494db7ff626ad1e489f59f59b303c1a0a3b91cb920de8d04f53b74a7bc6df460639ed28653e1b823af353e776ea0266dbc79194ce36375279e7da0dde7bcb179c709a0bbbe92e8e4b1fd0464dd645ddb29c007b463c9af6e020ebc349dc9f650df5ffc5f20a67ab7a7c77e71f9b64bfcda5a36e62b1a739095f070317336d4d51e8d7814a618d55a2be8746d030b44429043c013f90068f9778c2157c6f43c989daf4adbeba8eb38e413642500874aeed43980565c8eb303007d10107165ca99d9195a7f2e37e6761c1c02900d9991de83596c7163c4aa62e3c8af7005086729546cd6d8c7a551d2b7c423911785c5c6a042c9272e694db92079f722efb7"
block[new_perm[known_perm.index(10)]] = get_block(p6,new_perm[known_perm.index(10)])

p7 = s('0123t56789abcdefgh "klmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
# p7 = "aecf494db7ff626ad1e489f59f59b303c1a0a3b91cb920de8d04f53b74a7bc6d4c236acce8d68299b668c1bdffd871f5e7c45178031ab6a7150e657ae6d54975b179c709a0bbbe92e8e4b1fd0464dd645ddb29c007b463c9af6e020ebc349dc931185083c3734ca836374815c8d32179964de7874436d79d68e26f9bb781e3ebd4d51e8d7814a618d55a2be8746d030b44429043c013f90068f9778c2157c6f4c353d8c46fb6abc2220c47551c2d1ff44aeed43980565c8eb303007d10107165d19e1f9e64eba8e438ec94da793f64ed91de83596c7163c4aa62e3c8af70050863c24553b8ec8f4a21c1b44ba331f61bc5c6a042c9272e694db92079f722efb7"
block[new_perm[known_perm.index(3)]] = get_block(p7,new_perm[known_perm.index(3)])

p8 = s('0123ty6789abcdefghijklmnopqrstuvwxyz"BCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY')
# p8 = "5eeb4d5adcf498a8ac72e4e61c3d1f1ba8d880825c22531e3ff993e5b8501ffb8fbb5025de93c4ea4813a5f7640aadb0c2f615cbc2a7248ee92893f422c807e95bd89d05270ccf2f596f32d9c4403adc2856b63f4fc254ad1988b56f9b9204cc948649672c5d912687ec8c24c73c111a239d6d3544d5d511a42f397571ccaead1aa2fa7be6f5dd139cd1cb8e323dc2e8f0e17ed8e0ce6f4b404222c73a1dd07e81f7393302937638aa3e73052adf48457fc3944113f5e6867b1d54d72f1ac521f616b73d63ea00cff19714286c1e17dc08164fd85fe198993bca17e632039b19690a95fd0e5731f998c463278efabaf102a47afad054846a11034d6384636bf4"
block[new_perm[known_perm.index(5)]] = get_block(p8,new_perm[known_perm.index(5)])

p9 = s('0123456e89abcdefghijklmnopqrstuvwxyzAB"DEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
# p9 = "2fef58bb3372c1a634e784751cdaa140a8d880825c22531e3ff993e5b8501ffb8fbb5025de93c4ea4813a5f7640aadb0b8f8abb15b730985d86a0113daee37cc57753d8faf277684d3b6def32b2942c95dd6511fed751392ee00726c8e0c8838948649672c5d912687ec8c24c73c111a239d6d3544d5d511a42f397571ccaeadc8b16f6817389cff62fe8730130ba151f0e17ed8e0ce6f4b404222c73a1dd07e81f7393302937638aa3e73052adf48457fc3944113f5e6867b1d54d72f1ac5217bc267bd0a68fe6c844425af45f86f2b206fc60d0f1e18a69e94d0270b1780ea690a95fd0e5731f998c463278efabaf102a47afad054846a11034d6384636bf4"
block[new_perm[known_perm.index(8)]] = get_block(p9,new_perm[known_perm.index(8)])

r.recvuntil(b"> ")
r.sendline(b"2")
r.recvuntil(b"> ")
r.sendline(merge(block).encode())
r.interactive()
# print(merge(block))