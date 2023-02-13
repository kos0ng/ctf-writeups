from z3 import *

a1 = [BitVec("x{}".format(i), 8) for i in range(38)]
s = Solver()
s.add(((a1[34] ^ a1[23] * 7 ^ ~a1[36] + 13) & 0xFF) == 0xB6 )
s.add(((a1[37] ^ a1[10] * 7 ^ ~a1[21] + 13) & 0xFF) == 0xDF )
s.add(((a1[24] ^ a1[23] * 7 ^ ~a1[19] + 13) & 0xFF) == 0xCD )
s.add(((a1[25] ^ a1[13] * 7 ^ ~a1[23] + 13) & 0xFF) == 0x90 )
s.add(((a1[6] ^ a1[27] * 7 ^ ~a1[25] + 13) & 0xFF) == 0x8A )
s.add(((a1[4] ^ a1[32] * 7 ^ ~a1[22] + 13) & 0xFF) == 0xE3 )
s.add(((a1[25] ^ a1[19] * 7 ^ ~a1[1] + 13) & 0xFF) == 0x6B )
s.add(((a1[22] ^ a1[7] * 7 ^ ~a1[29] + 13) & 0xFF) == 0x55 )
s.add(((a1[15] ^ a1[10] * 7 ^ ~a1[20] + 13) & 0xFF) == 0xBC )
s.add(((a1[29] ^ a1[16] * 7 ^ ~a1[12] + 13) & 0xFF) == 0x58 )
s.add(((a1[35] ^ a1[4] * 7 ^ ~a1[33] + 13) & 0xFF) == 0x54 )
s.add(((a1[36] ^ a1[2] * 7 ^ ~a1[4] + 13) & 0xFF) == 0x67 )
s.add(((a1[26] ^ a1[3] * 7 ^ ~a1[1] + 13) & 0xFF) == 0xD8 )
s.add(((a1[12] ^ a1[6] * 7 ^ ~a1[18] + 13) & 0xFF) == 0xA5 )
s.add(((a1[12] ^ a1[28] * 7 ^ ~a1[36] + 13) & 0xFF) == 0x97 )
s.add(((a1[20] ^ a1[0] * 7 ^ ~a1[21] + 13) & 0xFF) == 0x65 )
s.add(((a1[27] ^ a1[36] * 7 ^ ~a1[14] + 13) & 0xFF) == 0xF8 )
s.add(((a1[35] ^ a1[2] * 7 ^ ~a1[19] + 13) & 0xFF) == 0x2C )
s.add(((a1[13] ^ a1[11] * 7 ^ ~a1[33] + 13) & 0xFF) == 0xF2 )
s.add(((a1[33] ^ a1[11] * 7 ^ ~a1[3] + 13) & 0xFF) == 0xEB )
s.add(((a1[31] ^ a1[37] * 7 ^ ~a1[29] + 13) & 0xFF) == 0xF8 )
s.add(((a1[1] ^ a1[33] * 7 ^ ~a1[31] + 13) & 0xFF) == 0x21 )
s.add(((a1[34] ^ a1[22] * 7 ^ ~a1[35] + 13) & 0xFF) == 0x54 )
s.add(((a1[36] ^ a1[16] * 7 ^ ~a1[4] + 13) & 0xFF) == 0x4B )
s.add(((a1[8] ^ a1[3] * 7 ^ ~a1[10] + 13) & 0xFF) == 0xD6 )
s.add(((a1[20] ^ a1[5] * 7 ^ ~a1[12] + 13) & 0xFF) == 0xC1 )
s.add(((a1[28] ^ a1[34] * 7 ^ ~a1[16] + 13) & 0xFF) == 0xD2 )
s.add(((a1[3] ^ a1[35] * 7 ^ ~a1[9] + 13) & 0xFF) == 0xCD )
s.add(((a1[27] ^ a1[22] * 7 ^ ~a1[2] + 13) & 0xFF) == 0x2E )
s.add(((a1[27] ^ a1[18] * 7 ^ ~a1[9] + 13) & 0xFF) == 0x36 )
s.add(((a1[3] ^ a1[29] * 7 ^ ~a1[22] + 13) & 0xFF) == 0x20 )
s.add(((a1[24] ^ a1[4] * 7 ^ ~a1[13] + 13) & 0xFF) == 0x63 )
s.add(((a1[22] ^ a1[16] * 7 ^ ~a1[13] + 13) & 0xFF) == 0x6C )
s.add(((a1[12] ^ a1[8] * 7 ^ ~a1[30] + 13) & 0xFF) == 0x75 )
s.add(((a1[25] ^ a1[27] * 7 ^ ~a1[35] + 13) & 0xFF) == 0x92 )
s.add(((a1[16] ^ a1[10] * 7 ^ ~a1[14] + 13) & 0xFF) == 0xFA )
s.add(((a1[21] ^ a1[25] * 7 ^ ~a1[12] + 13) & 0xFF) == 0xC3 )
s.add(((a1[26] ^ a1[10] * 7 ^ ~a1[30] + 13) & 0xFF) == 0xCB )
s.add(((a1[20] ^ a1[2] * 7 ^ ~a1[1] + 13) & 0xFF) == 0x2F )
s.add(((a1[34] ^ a1[12] * 7 ^ ~a1[27] + 13) & 0xFF) == 0x79 )
s.add(((a1[19] ^ a1[34] * 7 ^ ~a1[20] + 13) & 0xFF) == 0xF6 )
s.add(((a1[25] ^ a1[22] * 7 ^ ~a1[14] + 13) & 0xFF) == 0x3D )
s.add(((a1[19] ^ a1[28] * 7 ^ ~a1[37] + 13) & 0xFF) == 0xBD )
s.add(((a1[24] ^ a1[9] * 7 ^ ~a1[17] + 13) & 0xFF) == 0xB9)
s.check()
flag = ""
model = s.model()
print(model)
for i in a1:
    flag += chr(model[i].as_long())
print(flag)