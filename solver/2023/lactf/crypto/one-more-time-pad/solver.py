a = bytes.fromhex("200e0d13461a055b4e592b0054543902462d1000042b045f1c407f18581b56194c150c13030f0a5110593606111c3e1f5e305e174571431e")
pt = b"Long ago, the four nations lived together in harmony ..."

flag = ""
for i in range(len(a)):
	flag += chr(a[i]^pt[i%len(pt)])
print(flag)