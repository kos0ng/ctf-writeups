a=[0x410a4335494a0942,0x0b0ef2f50be619f0,0x4f0a3a064a35282b]
b=['********','CENSORED','********']
flag=""
for i in range(len(a)):
	flag+=(hex(int(b[i][::-1].encode('hex'),16)+a[i]))[2:].decode('hex')[::-1]
print "zer0pts{"+flag+"}"