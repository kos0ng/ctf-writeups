import string

arr = ['\x1f','\x1e','\x18','\x19','\x1e','\x12','\x18','\x1e','\x12','\x1d','\x19','\x19','\x1c','\x1e','\x1d','\x1e','\x1b']
flag = []
for j in arr:
  tmp = []
  for i in string.printable[:-6]:
    if((ord(i)^0x14)>>2==ord(j)):
      tmp.append(i)
  flag.append(tmp)
for i in flag:
  print i

# for i in arr:
#   flag += chr((ord(i)<<2)^0x14)
# print flag