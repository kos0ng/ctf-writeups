f = open('lasttransmission.txt','r').read()
dec = ''
for i in f.split(' '):
	dec += chr(int(i,2))
print(dec)