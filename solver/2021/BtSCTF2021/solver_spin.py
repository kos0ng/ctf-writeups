import string

enc = "]1nH^oa86K2z0kL+z*NzmLQ%Rz/Kp+_zSOSt:"
flag = ""
for i in enc:
	tmp = chr(ord(i)-0x1b)
	if(tmp not in string.printable[:-6]):
		tmp = chr(ord(tmp)+94)
	flag += tmp
print flag