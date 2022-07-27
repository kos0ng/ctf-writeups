#!/usr/bin/python3
import random

seed=1590782400
test=[150,2,103,102,192,216,52,128,9,144,10,201,209,226,22,10,80,5,102,195,23,71,77,63,111,116,219,22,113,89,187,232,198,53,146,112,119,209,64,79,236,179]
random.seed(seed)
for i in range(42):
	for j in range(len(test)):	
		tmp=random.randint(0,255)
		test[j]=test[j]^tmp
	if(test[0]==99):
		print(''.join(map(chr,test)))
