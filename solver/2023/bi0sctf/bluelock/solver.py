import xxtea

a = "47 B5 17 85 79 AF E1 AA 57 24 EC 7A 3C 9A AF C1 A0 B7 2D C0 29 51 C4 0B 5B 9C A1 79 60 82 00 D4 B1 ED D5 4A".split(" ")
b = [int(i,16) for i in a]

key = bytes.fromhex("b09b7800abababababababababababab")
dec = xxtea.decrypt(bytes(b), key, padding=False)
print(dec)