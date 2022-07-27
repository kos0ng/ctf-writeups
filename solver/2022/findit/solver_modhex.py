import string

key = 25

def decode(flag):
    flag = flag.strip()
    encode1 = []
    encode2 = []
    final = []
    for i in flag.split(' '):
        encode2.append(int(i,16))
    for i in encode2:
        encode1.append(i//key)
    flagNumber = []
    for i in encode1:
        tmp = i
        while(tmp>37):
            tmp -= 37
        flagNumber.append(tmp)
    # print(flagNumber)
    for i in flagNumber:
        zz = []
        tmp = i
        while tmp<=125:
            tmp2 = chr(tmp)
            if( tmp2 in string.printable[:-6] ):
                zz.append(tmp2)
            tmp+=32
        final.append(zz)
    return final


tmp = decode('3872 340D C4E 24EA 1E5F 3B47 34A3 2134 3EE4 92E 1B3F B9F 28A0 2D37')
for i in tmp:
    print(i)