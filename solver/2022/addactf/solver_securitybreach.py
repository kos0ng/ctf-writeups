from Crypto.Util.number import *
from z3 import *

v1 = [0 for i in range(59)]
v1[0] = 0x110904;
v1[1] = 0x2A00B06;
v1[2] = 0x2310C00;
v1[3] = 53873929;
v1[4] = 33755658;
v1[5] = 251659273;
v1[6] = 1711541250;
v1[7] = 1175851010;
v1[8] = 470942466;
v1[9] = 1578046466;
v1[10] = 335872514;
v1[11] = 18026242;
v1[12] = 0xBB0A0900;
v1[13] = 18025731;
v1[14] = 26214420;
v1[15] = 30543633;
v1[16] = 15405833;
v1[17] = 47780360;
v1[18] = 18421015;
v1[19] = 9176330;
v1[20] = 47253256;
v1[21] = 1572867;
v1[22] = 48431639;
v1[23] = 38147082;
v1[24] = 51643650;
v1[25] = 67113219;
v1[26] = 67345168;
v1[27] = 101647124;
v1[28] = 1379076;
v1[29] = 61279754;
v1[30] = 16847883;
v1[31] = 302170132;
v1[32] = 84169476;
v1[33] = 118686211;
v1[34] = 218104880;
v1[35] = 437262082;
v1[36] = 18290180;
v1[37] = 8192786;
v1[38] = 11142154;
v1[39] = 61278734;
v1[40] = 151062787;
v1[41] = 83994127;
v1[42] = 352496151;
v1[43] = 16843538;
v1[44] = 67218448;
v1[45] = 335852566;
v1[46] = 218300419;
v1[47] = 336003822;
v1[48] = 353108591;
v1[49] = 184615478;
v1[50] = 100794951;
v1[51] = 386073099;
v1[52] = 84017414;
v1[53] = 101450092;
v1[54] = 33751274;
v1[55] = 68354273;
v1[56] = 269615523;
v1[57] = 34342001;
v1[58] = 5;

s = Solver()
v2 = [BitVec("x{}".format(i), 8) for i in range(24)]
tmp = b""
for i in v1:
  tmp += long_to_bytes(i)[::-1].ljust(4,b"\x00")
tmp = list(tmp)
counter = 0
while tmp[counter]!=5:
  if(tmp[counter]==1):
    fmt = "s.add(v2[{}] * v2[{}] == {})"
    exec(fmt.format(tmp[counter+1],tmp[counter+2],tmp[counter+3]))
  elif(tmp[counter]==2):
    fmt = "s.add(v2[{}] ^ v2[{}] == {})"
    exec(fmt.format(tmp[counter+1],tmp[counter+2],tmp[counter+3]))
  elif(tmp[counter]==3):
    fmt = "s.add(v2[{}] >= v2[{}])"
    exec(fmt.format(tmp[counter+1],tmp[counter+2]))
    counter -= 1
  elif(tmp[counter]==4):
    fmt = "s.add(v2[{}] < v2[{}])"
    exec(fmt.format(tmp[counter+1],tmp[counter+2]))
    counter -= 1
  elif(tmp[counter]==0):
    # print(tmp,j)
    fmt = "s.add(v2[{}] + v2[{}] == {})"
    exec(fmt.format(tmp[counter+1],tmp[counter+2],tmp[counter+3]))
  else:
    print("fail",counter)
    break
  counter += 4

s.check()
flag=""
model=s.model()
for i in v2:
    flag+=chr(model[i].as_long())
print(flag)