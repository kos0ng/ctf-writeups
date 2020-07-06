#!/usr/bin/env python2

import string
from hashlib import md5
from itertools import izip, cycle
import base64
import time

def xorer(data, key): 
    return bytearray(a^b for a, b in zip(*map(bytearray, [data, key]))) 

flag="SQD@G^KRCH@D^VCPAXHnYCoSUPEDYWD\\oQBEL"

for i in range(1589414400,1589414400+100000):
	timestamp = i
	key = md5(str(int(timestamp))).hexdigest()
	my_hexdata = key
	scale = 16 
	num_of_bits = 8
	noobda = bin(int(my_hexdata, scale))[2:].zfill(num_of_bits)
	tmp=xorer(flag,noobda)
	# print tmp
	if "batpwn{cryptography" in tmp:
		print tmp




