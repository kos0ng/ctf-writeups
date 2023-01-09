import sys
import zlib

def apple(s, a, b):
    arr = list(s)
    tmp = arr[a]
    arr[a] = arr[b]
    arr[b] = tmp
    return "".join(arr)

def banana(s, a, b):
    arr = list(s)
    arr[a] = chr(ord(arr[a]) ^ ord(arr[b]))
    return "".join(arr)

def carrot(s, a, b):
    arr = bytearray(s)
    tmp = arr[a]
    arr[a] = arr[b]
    arr[b] = tmp
    return bytes(arr)

def donut(s, a, b):
    arr = bytearray(s)
    arr[b] ^= arr[a]
    return bytes(arr)


# def scramble1(flag):
#     pos = 36
#     print('pos = 36')
#     while True:
#         if pos == 0:
#             flag = banana(flag, 25, 41)
#             pos = 29
#             print('pos = 29')
#         elif pos == 1:
#             flag = apple(flag, 4, 21)
#             pos = 31
#             print('pos = 31')
#         elif pos == 2:
#             flag = banana(flag, 24, 41)
#             pos = 41
#             print('pos = 41')
#         elif pos == 3:
#             flag = banana(flag, 16, 24)
#             pos = 37
#             print('pos = 37')
#         elif pos == 4:
#             flag = banana(flag, 0, 43)
#             pos = 32
#             print('pos = 32')
#         elif pos == 5:
#             flag = banana(flag, 24, 2)
#             pos = 16
#             print('pos = 16')
#         elif pos == 6:
#             flag = apple(flag, 18, 29)
#             pos = 38
#             print('pos = 38')
#         elif pos == 7:
#             flag = banana(flag, 28, 43)
#             pos = 39
#             print('pos = 39')
#         elif pos == 8:
#             flag = banana(flag, 25, 26)
#             pos = 12
#             print('pos = 12')
#         elif pos == 9:
#             flag = apple(flag, 4, 43)
#             pos = 10
#             print('pos = 10')
#         elif pos == 10:
#             flag = apple(flag, 15, 42)
#             pos = 26
#             print('pos = 26')
#         elif pos == 11:
#             flag = banana(flag, 33, 13)
#             pos = 14
#             print('pos = 14')
#         elif pos == 12:
#             flag = banana(flag, 43, 2)
#             pos = 24
#             print('pos = 24')
#         elif pos == 13:
#             flag = apple(flag, 7, 32)
#             pos = 33
#             print('pos = 33')
#         elif pos == 14:
#             flag = banana(flag, 20, 38)
#             pos = 27
#             print('pos = 27')
#         elif pos == 15:
#             flag = banana(flag, 16, 29)
#             pos = 28
#             print('pos = 28')
#         elif pos == 16:
#             flag = apple(flag, 8, 15)
#             pos = 0
#             print('            pos = 0')
#         elif pos == 17:
#             flag = apple(flag, 17, 9)
#             pos = 21
#             print('pos = 21')
#         elif pos == 18:
#             flag = apple(flag, 37, 32)
#             pos = 22
#             print('pos = 22')
#         elif pos == 19:
#             flag = banana(flag, 34, 13)
#             pos = 3
#             print('            pos = 3')
#         elif pos == 20:
#             flag = apple(flag, 21, 17)
#             pos = 7
#             print('            pos = 7')
#         elif pos == 21:
#             flag = banana(flag, 8, 38)
#             pos = 2
#             print('            pos = 2')
#         elif pos == 22:
#             flag = apple(flag, 13, 25)
#             pos = 30
#             print('pos = 30')
#         elif pos == 23:
#             flag = banana(flag, 33, 37)
#             pos = 17
#             print('pos = 17')
#         elif pos == 24:
#             flag = banana(flag, 15, 22)
#             pos = 6
#             print('            pos = 6')
#         elif pos == 25:
#             flag = apple(flag, 24, 15)
#             pos = 43
#             print('pos = 43')
#         elif pos == 26:
#             flag = banana(flag, 37, 26)
#             pos = 11
#             print('pos = 11')
#         elif pos == 27:
#             flag = apple(flag, 9, 0)
#             pos = 25
#             print('pos = 25')
#         elif pos == 28:
#             flag = banana(flag, 32, 0)
#             pos = 42
#             print('pos = 42')
#         elif pos == 29:
#             flag = banana(flag, 24, 26)
#             pos = 47
#             print('pos = 47')
#         elif pos == 30:
#             flag = apple(flag, 1, 2)
#             pos = 9
#             print('            pos = 9')
#         elif pos == 31:
#             flag = banana(flag, 18, 27)
#             pos = 15
#             print('pos = 15')
#         elif pos == 32:
#             flag = apple(flag, 26, 28)
#             pos = 49
#             print('pos = 49')
#         elif pos == 33:
#             flag = banana(flag, 24, 16)
#             pos = 1
#             print('            pos = 1')
#         elif pos == 34:
#             flag = banana(flag, 11, 39)
#             pos = 46
#             print('pos = 46')
#         elif pos == 35:
#             flag = banana(flag, 19, 22)
#             pos = 50
#             print('pos = 50')
#         elif pos == 36:
#             flag = apple(flag, 28, 27)
#             pos = 5
#             print('            pos = 5')
#         elif pos == 37:
#             flag = apple(flag, 13, 15)
#             pos = 44
#             print('pos = 44')
#         elif pos == 38:
#             flag = banana(flag, 6, 29)
#             pos = 23
#             print('pos = 23')
#         elif pos == 39:
#             flag = apple(flag, 15, 37)
#             pos = 40
#             print('pos = 40')
#         elif pos == 40:
#             flag = apple(flag, 40, 23)
#             pos = 4
#             print('            pos = 4')
#         elif pos == 41:
#             flag = apple(flag, 28, 0)
#             pos = 18
#             print('pos = 18')
#         elif pos == 42:
#             flag = banana(flag, 41, 19)
#             pos = 19
#             print('pos = 19')
#         elif pos == 43:
#             flag = apple(flag, 7, 5)
#             pos = 20
#             print('pos = 20')
#         elif pos == 44:
#             flag = banana(flag, 12, 40)
#             pos = 35
#             print('pos = 35')
#         elif pos == 45:
#             flag = apple(flag, 19, 30)
#             pos = 48
#             print('pos = 48')
#         elif pos == 46:
#             flag = apple(flag, 15, 4)
#             pos = 13
#             print('pos = 13')
#         elif pos == 47:
#             flag = apple(flag, 17, 11)
#             pos = 45
#             print('pos = 45')
#         elif pos == 48:
#             flag = banana(flag, 8, 28)
#             pos = 8
#             print('            pos = 8')
#         elif pos == 49:
#             flag = banana(flag, 19, 9)
#             pos = 34
#             print('pos = 34')
#         elif pos == 50:
#             return flag

def scramble2(flag):
    pos = 48
    while True:
        if pos == 0:
            flag = carrot(flag, 13, 25)
            pos = 5
    
        elif pos == 1:
            flag = donut(flag, 16, 4)
            pos = 42
    
        elif pos == 2:
            flag = carrot(flag, 22, 4)
            pos = 41
    
        elif pos == 3:
            flag = donut(flag, 39, 47)
            pos = 44
    
        elif pos == 4:
            flag = carrot(flag, 29, 41)
            pos = 17
    
        elif pos == 5:
            flag = donut(flag, 18, 36)
            pos = 13
    
        elif pos == 6:
            flag = donut(flag, 25, 23)
            pos = 31
    
        elif pos == 7:
            flag = donut(flag, 37, 49)
            pos = 39
    
        elif pos == 8:
            flag = donut(flag, 23, 30)
            pos = 24
    
        elif pos == 9:
            flag = carrot(flag, 32, 11)
            pos = 38
    
        elif pos == 10:
            flag = donut(flag, 24, 14)
            pos = 3
    
        elif pos == 11:
            flag = donut(flag, 31, 23)
            pos = 26
    
        elif pos == 12:
            flag = donut(flag, 25, 9)
            pos = 36
    
        elif pos == 13:
            flag = carrot(flag, 37, 0)
            pos = 37
    
        elif pos == 14:
            flag = donut(flag, 30, 35)
            pos = 32
    
        elif pos == 15:
            flag = carrot(flag, 21, 2)
            pos = 27
    
        elif pos == 16:
            flag = carrot(flag, 23, 44)
            pos = 19
    
        elif pos == 17:
            flag = carrot(flag, 1, 51)
            pos = 29
    
        elif pos == 18:
            flag = carrot(flag, 21, 16)
            pos = 35
    
        elif pos == 19:
            flag = carrot(flag, 35, 33)
            pos = 34
    
        elif pos == 20:
            flag = carrot(flag, 18, 1)
            pos = 30
    
        elif pos == 21:
            flag = carrot(flag, 3, 27)
            pos = 45
    
        elif pos == 22:
            flag = donut(flag, 2, 13)
            pos = 18
    
        elif pos == 23:
            flag = donut(flag, 27, 50)
            pos = 10
    
        elif pos == 24:
            flag = carrot(flag, 27, 45)
            pos = 20
    
        elif pos == 25:
            flag = carrot(flag, 49, 35)
            pos = 6
    
        elif pos == 26:
            flag = carrot(flag, 13, 40)
            pos = 4
    
        elif pos == 27:
            flag = carrot(flag, 47, 50)
            pos = 8
    
        elif pos == 28:
            flag = donut(flag, 0, 1)
            pos = 43
    
        elif pos == 29:
            flag = donut(flag, 3, 34)
            pos = 49
    
        elif pos == 30:
            flag = donut(flag, 50, 7)
            pos = 11
    
        elif pos == 31:
            flag = donut(flag, 41, 9)
            pos = 23
    
        elif pos == 32:
            flag = donut(flag, 44, 50)
            pos = 16
    
        elif pos == 33:
            flag = carrot(flag, 19, 29)
            pos = 15
    
        elif pos == 34:
            flag = carrot(flag, 34, 47)
            pos = 40
    
        elif pos == 35:
            flag = carrot(flag, 24, 3)
            pos = 47
    
        elif pos == 36:
            flag = carrot(flag, 14, 37)
            pos = 0
    
        elif pos == 37:
            flag = donut(flag, 21, 29)
            pos = 25
    
        elif pos == 38:
            flag = donut(flag, 29, 1)
            pos = 1
    
        elif pos == 39:
            flag = carrot(flag, 23, 37)
            pos = 33
    
        elif pos == 40:
            flag = carrot(flag, 29, 44)
            pos = 12
    
        elif pos == 41:
            flag = donut(flag, 19, 39)
            pos = 50
    
        elif pos == 42:
            flag = carrot(flag, 8, 37)
            pos = 28
    
        elif pos == 43:
            flag = donut(flag, 40, 25)
            pos = 21
    
        elif pos == 44:
            flag = donut(flag, 46, 14)
            pos = 7
    
        elif pos == 45:
            flag = donut(flag, 36, 39)
            pos = 22
    
        elif pos == 46:
            flag = carrot(flag, 44, 6)
            pos = 9
    
        elif pos == 47:
            flag = carrot(flag, 46, 28)
            pos = 14
    
        elif pos == 48:
            flag = donut(flag, 16, 50)
            pos = 46
    
        elif pos == 49:
            flag = carrot(flag, 29, 10)
            pos = 2
    
        elif pos == 50:
            return flag

def unscramble1(flag):
    arr = [36,5,16,0,29,47,45,48,8,12,24,6,38,23,17,21,2,41,18,22,30,9,10,26,11,14,27,25,43,20,7,39,40,4,32,49,34,46,13,33,1,31,15,28,42,19,3,37,44,35,50]
    for pos in arr[::-1]:
        if pos == 0:
            flag = banana(flag, 25, 41)
            pos = 29
        elif pos == 1:
            flag = apple(flag, 4, 21)
            pos = 31
        elif pos == 2:
            flag = banana(flag, 24, 41)
            pos = 41
        elif pos == 3:
            flag = banana(flag, 16, 24)
            pos = 37
        elif pos == 4:
            flag = banana(flag, 0, 43)
            pos = 32
        elif pos == 5:
            flag = banana(flag, 24, 2)
            pos = 16
        elif pos == 6:
            flag = apple(flag, 18, 29)
            pos = 38
        elif pos == 7:
            flag = banana(flag, 28, 43)
            pos = 39
        elif pos == 8:
            flag = banana(flag, 25, 26)
            pos = 12
        elif pos == 9:
            flag = apple(flag, 4, 43)
            pos = 10
        elif pos == 10:
            flag = apple(flag, 15, 42)
            pos = 26
        elif pos == 11:
            flag = banana(flag, 33, 13)
            pos = 14
        elif pos == 12:
            flag = banana(flag, 43, 2)
            pos = 24
        elif pos == 13:
            flag = apple(flag, 7, 32)
            pos = 33
        elif pos == 14:
            flag = banana(flag, 20, 38)
            pos = 27
        elif pos == 15:
            flag = banana(flag, 16, 29)
            pos = 28
        elif pos == 16:
            flag = apple(flag, 8, 15)
            pos = 0
        elif pos == 17:
            flag = apple(flag, 17, 9)
            pos = 21
        elif pos == 18:
            flag = apple(flag, 37, 32)
            pos = 22
        elif pos == 19:
            flag = banana(flag, 34, 13)
            pos = 3
        elif pos == 20:
            flag = apple(flag, 21, 17)
            pos = 7
        elif pos == 21:
            flag = banana(flag, 8, 38)
            pos = 2
        elif pos == 22:
            flag = apple(flag, 13, 25)
            pos = 30
        elif pos == 23:
            flag = banana(flag, 33, 37)
            pos = 17
        elif pos == 24:
            flag = banana(flag, 15, 22)
            pos = 6
        elif pos == 25:
            flag = apple(flag, 24, 15)
            pos = 43
        elif pos == 26:
            flag = banana(flag, 37, 26)
            pos = 11
        elif pos == 27:
            flag = apple(flag, 9, 0)
            pos = 25
        elif pos == 28:
            flag = banana(flag, 32, 0)
            pos = 42
        elif pos == 29:
            flag = banana(flag, 24, 26)
            pos = 47
        elif pos == 30:
            flag = apple(flag, 1, 2)
            pos = 9
        elif pos == 31:
            flag = banana(flag, 18, 27)
            pos = 15
        elif pos == 32:
            flag = apple(flag, 26, 28)
            pos = 49
        elif pos == 33:
            flag = banana(flag, 24, 16)
            pos = 1
        elif pos == 34:
            flag = banana(flag, 11, 39)
            pos = 46
        elif pos == 35:
            flag = banana(flag, 19, 22)
            pos = 50
        elif pos == 36:
            flag = apple(flag, 28, 27)
            pos = 5
        elif pos == 37:
            flag = apple(flag, 13, 15)
            pos = 44
        elif pos == 38:
            flag = banana(flag, 6, 29)
            pos = 23
        elif pos == 39:
            flag = apple(flag, 15, 37)
            pos = 40
        elif pos == 40:
            flag = apple(flag, 40, 23)
            pos = 4
        elif pos == 41:
            flag = apple(flag, 28, 0)
            pos = 18
        elif pos == 42:
            flag = banana(flag, 41, 19)
            pos = 19
        elif pos == 43:
            flag = apple(flag, 7, 5)
            pos = 20
        elif pos == 44:
            flag = banana(flag, 12, 40)
            pos = 35
        elif pos == 45:
            flag = apple(flag, 19, 30)
            pos = 48
        elif pos == 46:
            flag = apple(flag, 15, 4)
            pos = 13
        elif pos == 47:
            flag = apple(flag, 17, 11)
            pos = 45
        elif pos == 48:
            flag = banana(flag, 8, 28)
            pos = 8
        elif pos == 49:
            flag = banana(flag, 19, 9)
            pos = 34
    return flag

def unscramble2(flag):
    arr = [48,46,9,38,1,42,28,43,21,45,22,18,35,47,14,32,16,19,34,40,12,36,0,5,13,37,25,6,31,23,10,3,44,7,39,33,15,27,8,24,20,30,11,26,4,17,29,49,2,41,50]
    # while True:
    for pos in arr[::-1]:
        if pos == 0:
            flag = carrot(flag, 13, 25)
        elif pos == 1:
            flag = donut(flag, 16, 4)
        elif pos == 2:
            flag = carrot(flag, 22, 4)
        elif pos == 3:
            flag = donut(flag, 39, 47)
        elif pos == 4:
            flag = carrot(flag, 29, 41)
        elif pos == 5:
            flag = donut(flag, 18, 36)
        elif pos == 6:
            flag = donut(flag, 25, 23)
        elif pos == 7:
            flag = donut(flag, 37, 49)
        elif pos == 8:
            flag = donut(flag, 23, 30)
        elif pos == 9:
            flag = carrot(flag, 32, 11)
        elif pos == 10:
            flag = donut(flag, 24, 14)
        elif pos == 11:
            flag = donut(flag, 31, 23)
        elif pos == 12:
            flag = donut(flag, 25, 9)
        elif pos == 13:
            flag = carrot(flag, 37, 0)
        elif pos == 14:
            flag = donut(flag, 30, 35)
        elif pos == 15:
            flag = carrot(flag, 21, 2)
        elif pos == 16:
            flag = carrot(flag, 23, 44)
        elif pos == 17:
            flag = carrot(flag, 1, 51)
        elif pos == 18:
            flag = carrot(flag, 21, 16)
        elif pos == 19:
            flag = carrot(flag, 35, 33)
        elif pos == 20:
            flag = carrot(flag, 18, 1)
        elif pos == 21:
            flag = carrot(flag, 3, 27)
        elif pos == 22:
            flag = donut(flag, 2, 13)
        elif pos == 23:
            flag = donut(flag, 27, 50)
        elif pos == 24:
            flag = carrot(flag, 27, 45)
        elif pos == 25:
            flag = carrot(flag, 49, 35)
        elif pos == 26:
            flag = carrot(flag, 13, 40)
        elif pos == 27:
            flag = carrot(flag, 47, 50)
        elif pos == 28:
            flag = donut(flag, 0, 1)
        elif pos == 29:
            flag = donut(flag, 3, 34)
        elif pos == 30:
            flag = donut(flag, 50, 7)
        elif pos == 31:
            flag = donut(flag, 41, 9)
        elif pos == 32:
            flag = donut(flag, 44, 50)
        elif pos == 33:
            flag = carrot(flag, 19, 29)
        elif pos == 34:
            flag = carrot(flag, 34, 47)
        elif pos == 35:
            flag = carrot(flag, 24, 3)
        elif pos == 36:
            flag = carrot(flag, 14, 37)
        elif pos == 37:
            flag = donut(flag, 21, 29)
        elif pos == 38:
            flag = donut(flag, 29, 1)
        elif pos == 39:
            flag = carrot(flag, 23, 37)
        elif pos == 40:
            flag = carrot(flag, 29, 44)
        elif pos == 41:
            flag = donut(flag, 19, 39)
        elif pos == 42:
            flag = carrot(flag, 8, 37)
        elif pos == 43:
            flag = donut(flag, 40, 25)
        elif pos == 44:
            flag = donut(flag, 46, 14)
        elif pos == 45:
            flag = donut(flag, 36, 39)
        elif pos == 46:
            flag = carrot(flag, 44, 6)
        elif pos == 47:
            flag = carrot(flag, 46, 28)
        elif pos == 48:
            flag = donut(flag, 16, 50)
        elif pos == 49:
            flag = carrot(flag, 29, 10)
    return flag

import string
payload = string.printable[:52]
# tmp = payload
# print(tmp)
# a = scramble1(tmp)
# print(a)
# print(unscramble1(a))
# res = scramble2(payload.encode())
# print(unscramble2(res))

# def main():
#     if len(sys.argv) <= 1:
#         print("Missing argument")
#         exit(1)

#     flag_to_check = sys.argv[1]

#     flag_length = len(flag_to_check)
#     if flag_length < 44:
#         print("Incorrect")
#         exit(1)

#     scramble1(flag_to_check)

#     flag_compressed = zlib.compress(flag_to_check.encode("utf-8"))

#     flag_compressed_length = len(flag_compressed)
#     if flag_compressed_length < 52:
#         print("Incorrect")
#         exit(1)

#     scramble2(flag_compressed)

#     if flag_compressed == b'x\x9c\xcb,\xca,N.I\xab.\xc9\xc8,\x8e7,\x8eOIM3\xcc3,1\xce\xa9\x8c7\x89/\xa8,\xc90\xc8\x8bO\xcc)2L\xcf(\xa9\x05\x00\x83\x0c\x10\xf9':
#         print("Correct!")
#     else:
#         print("Incorrect!")
flag_ct = b'x\x9c\xcb,\xca,N.I\xab.\xc9\xc8,\x8e7,\x8eOIM3\xcc3,1\xce\xa9\x8c7\x89/\xa8,\xc90\xc8\x8bO\xcc)2L\xcf(\xa9\x05\x00\x83\x0c\x10\xf9'
# flag_ct = string.printable[:52].encode()
# tmp = scramble2(flag_/)
# tmp = unscramble2(flag_ct)
# print(tmp)
# print(unscramble2(tmp)==flag_ct)
# print(len(tmp))
print(zlib.decompress(flag_ct))
# print(zlib.decompress(tmp))

# main()