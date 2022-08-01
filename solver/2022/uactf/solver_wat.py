from Crypto.Util.number import *

target = [0x78,0x41,0x44,0x54,0x6b,0x07,0x65,0x31,0x49,0xbe,0x7a,0x30,0x58,0xbe,0x36,0x33,0x86,0xbd,0x6e,0x79,0x13,0x6e,0x31,0x37,0x13,0x78,0x33,0x07]

inp = 'AAAABBBBCCCCDDDDEEEEFFFFGGGG'
length = len(inp)
pcStack4 = [ord(i) for i in inp]

# def unhackable(param1, param2, param3):
#     tmp = 0
#     print("Z",hex(param1))
#     for uStack20 in range(0x20):
#       print((param1 & 1 << (uStack20 & 0x1f)))
#       if((((param1 & (1 << (uStack20 & 0x1f))) >> (uStack20 & 0x1f)) + ((param2 & (1 << (uStack20 & 0x1f))) >> (uStack20 & 0x1f))) % param3 != 0):
#         tmp = tmp | (1 << (uStack20 & 0x1f))
#     print("R",hex(tmp))
#     return tmp

# for i in range(length):
#   if(pcStack4[i]==ord('_')):
#     pcStack4[i] = chr(pcStack4[i]<<1)
#   if(ord('z') < pcStack4[i]):
#     pcStack4[i] = pcStack4[i] >> 4

# for i in range(0,length,2):
#   pcStack4[i] = pcStack4[i] - 3

# for i in range(length-2,-1,-2):
#   pcStack4[i] = pcStack4[i] + 0x04
# res = []

# for i in range(length//4):
#   z = ''.join(map(chr,pcStack4[i:i+4]))
#   z = bytes_to_long(z.encode()[::-1])
#   tmp = unhackable(z-0x45,0x69,2)
#   # pcStack4[i*4] = tmp
#   res.append(tmp)

# print(res)

length = len(target)
for i in range(len(target)//4):
  target[i*4] = (target[i*4]^0x69)+0x45
for i in range(0,length,2):
  target[i] = target[i] - 4
for i in range(length-2,-1,-2):
  target[i] = target[i] + 3
for i in range(length):
  if(target[i]>>1==ord('_')):
    print(i,'_')
  else:
    print(i,target[i],chr(target[i]<<4),chr(target[i]&0xff))

# UACTF{d1d_y0u_533_my_n07_x2}