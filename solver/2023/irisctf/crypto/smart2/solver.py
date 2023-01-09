from pwn import xor
from z3 import *
import copy
# I don't know how to make a good substitution box so I'll refer to AES. This way I'm not actually rolling my own crypto
SBOX = [99, 124, 119, 123, 242, 107, 111, 197, 48, 1, 103, 43, 254, 215, 171, 118, 202, 130, 201, 125, 250, 89, 71, 240, 173, 212, 162, 175, 156, 164, 114, 192, 183, 253, 147, 38, 54, 63, 247, 204, 52, 165, 229, 241, 113, 216, 49, 21, 4, 199, 35, 195, 24, 150, 5, 154, 7, 18, 128, 226, 235, 39, 178, 117, 9, 131, 44, 26, 27, 110, 90, 160, 82, 59, 214, 179, 41, 227, 47, 132, 83, 209, 0, 237, 32, 252, 177, 91, 106, 203, 190, 57, 74, 76, 88, 207, 208, 239, 170, 251, 67, 77, 51, 133, 69, 249, 2, 127, 80, 60, 159, 168, 81, 163, 64, 143, 146, 157, 56, 245, 188, 182, 218, 33, 16, 255, 243, 210, 205, 12, 19, 236, 95, 151, 68, 23, 196, 167, 126, 61, 100, 93, 25, 115, 96, 129, 79, 220, 34, 42, 144, 136, 70, 238, 184, 20, 222, 94, 11, 219, 224, 50, 58, 10, 73, 6, 36, 92, 194, 211, 172, 98, 145, 149, 228, 121, 231, 200, 55, 109, 141, 213, 78, 169, 108, 86, 244, 234, 101, 122, 174, 8, 186, 120, 37, 46, 28, 166, 180, 198, 232, 221, 116, 31, 75, 189, 139, 138, 112, 62, 181, 102, 72, 3, 246, 14, 97, 53, 87, 185, 134, 193, 29, 158, 225, 248, 152, 17, 105, 217, 142, 148, 155, 30, 135, 233, 206, 85, 40, 223, 140, 161, 137, 13, 191, 230, 66, 104, 65, 153, 45, 15, 176, 84, 187, 22]

TRANSPOSE = [[3, 1, 4, 5, 6, 7, 0, 2],
 [1, 5, 7, 3, 0, 6, 2, 4],
 [2, 7, 5, 4, 0, 6, 1, 3],
 [2, 0, 1, 6, 4, 3, 5, 7],
 [6, 5, 0, 3, 2, 4, 1, 7],
 [2, 0, 6, 1, 5, 7, 4, 3],
 [1, 6, 2, 5, 0, 7, 4, 3],
 [4, 5, 6, 1, 2, 3, 7, 0]]

RR = [4, 2, 0, 6, 9, 3, 5, 7]

def rr(c, n):
    n = n % 8
    return (((c << (8 - n)) | (c >> n)) & 0xff)

def rl(c, n):
    n = n % 8
    return (((c >> (8 - n)) | (c << n)) & 0xff)

def z3rr(c, n):
    n = n % 8
    return (((c << (8 - n)) | LShR(c,n)) & 0xff)

def z3rl(c, n):
    n = n % 8
    return (((c << (8 - n)) | LShR(c,n)) & 0xff)



import secrets
ROUNDS = 2

MASK = bytes.fromhex("1f983a40c3f801b1")
KEYLEN = 4 + ROUNDS * 4
def encrypt(block, key):
    assert len(block) == 8
    assert len(key) == KEYLEN
    block = bytearray(block)

    for r in range(ROUNDS):
        # print("key",key[r*4:(r+2)*4],r*4,(r+2)*4)
        block = bytearray(xor(block, key[r*4:(r+2)*4]))
        print(r,"NBS",block)
        for i in range(8):
            block[i] = SBOX[block[i]]
            block[i] = rr(block[i], RR[i])

        temp = bytearray(8)
        for i in range(8):
            for j in range(8):
                temp[j] |= ((block[i] >> TRANSPOSE[i][j]) & 1) << i
        block = temp

        block = xor(block, MASK)
    return block

def decrypt(block, key):
    assert len(block) == 8
    assert len(key) == KEYLEN
    block = bytearray(block)

    for r in range(ROUNDS-1,-1,-1):
        block = xor(block, MASK)
        tmp_block = [BitVec("x{}".format(i), 8) for i in range(8)]
        s = Solver()
        temp = [[] for _ in range(8)]
        for i in range(8):
            for j in range(8):
                temp[j].append(f"(((tmp_block[{i}] >> TRANSPOSE[{i}][{j}]) & 1) << {i})")
        fmt = "s.add({} == {})"
        for i in range(len(temp)):
            exec(fmt.format('|'.join(temp[i]),block[i]))
        s.check()
        model = s.model()
        new_block = []
        for i in tmp_block:
            new_block.append(model[i].as_long())
        for i in range(8):
            new_block[i] = rl(new_block[i], RR[i])
            new_block[i] = SBOX.index(new_block[i])
        block = bytearray(xor(new_block, key[r*4:(r+2)*4]))
    return block
            
def attack(ct_block,pt_block):
    assert len(ct_block) == 8
    assert len(pt_block) == 8

    block = bytearray(ct_block)
    block = xor(block, MASK)
    tmp_block = [BitVec("z{}".format(i), 8) for i in range(8)]
    s = Solver()
    temp = [[] for _ in range(8)]
    for i in range(8):
        for j in range(8):
            temp[j].append(f"(((tmp_block[{i}] >> TRANSPOSE[{i}][{j}]) & 1) << {i})")
    fmt = "s.add(({}) == {})"
    for i in range(len(temp)):
        exec(fmt.format('|'.join(temp[i]),block[i]))
    s.check()
    model = s.model()
    new_block = []
    for i in tmp_block:
        new_block.append(model[i].as_long())
        
    for i in range(8):
        new_block[i] = rl(new_block[i], RR[i])
        new_block[i] = SBOX.index(new_block[i])
    check = []
    block2 = bytearray(pt_block)
    res = [BitVecVal(0, 8) for i in range(8)]

    block3 = [0 for _ in range(8)]
    for i in range(8):
        block3[i] = z3sbox[(key[i]^block2[i])]
        block3[i] = z3rr(block3[i], RR[i])
    for i in range(8):
        for j in range(8):
            res[j] |= ((((block3[i] >> TRANSPOSE[i][j]) & 1) << i))&0xff
    
    for i in range(8):
        s2.add((res[i]^MASK[i]) == (key[4+i]^new_block[i]))
    # print(s2.check())

def ecb(pt, key):
    if len(pt) % 8 != 0:
        pt = pt.ljust(len(pt) + (8 - len(pt) % 8), b"\x00")

    out = b""
    for i in range(0, len(pt), 8):
        out += encrypt(pt[i:i+8], key)
    return out

def ecb_dec(ct, key):
    out = ""
    for i in range(0, len(ct), 8):
        out += decrypt(ct[i:i+8], key).decode()
    return out


s2 = Solver()
z3sbox = Array('sbox', BitVecSort(8), BitVecSort(8))
s2.add([Select(z3sbox, i) == n for i, n in enumerate(SBOX)])
key = [BitVec("x{}".format(i), 8) for i in range(12)]
pairs = [["4b0c569de9bf6510", "3298255d5314ad33"], ["5d81105912c7f421", "805146efee62f09f"], ["6e23f94180be2378", "207a88ced8ab64d1"], ["9751eeee344a8c74", "0b561354ebbb50fa"], ["f4fbf94509aaea25", "4ba4dc46bbde5c63"], ["3e571e4e9604769e", "10820c181de8c1df"], ["1f7b64083d9121e8", "0523ce32dd7a9f02"], ["69b3dfd8765d4267", "23c8d59a34553207"]]
for i in pairs:
    pt = bytes.fromhex(i[0])
    ct = bytes.fromhex(i[1])
    attack(ct,pt)
s2.check()
model = s2.model()
leaked = []
for i in key:
    leaked.append(model[i].as_long())
print(pairs)
leaked_key = bytes(leaked)
assert(decrypt(bytes.fromhex(pairs[1][1]),leaked_key).hex()==pairs[1][0])

ct_flag = bytes.fromhex("ceb51064c084e640690c31bf55c1df4950bc81b484f559dce0ae7d509aa0fe07f7ee127e9ecb05eb4b1b58b99494f72c0b4f3f5fe351c1cb")
print(ecb_dec(ct_flag,leaked_key))

