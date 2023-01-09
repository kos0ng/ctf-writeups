from Crypto.Cipher import AES

key = bytes.fromhex("13371337133713371337133713371337")
f = open("db.sqlite3","rb").read()
g = open("challenge_enc.sqlite3","rb").read()

known_pt = f[:16]
known_ct = g[:16]
cipher = AES.new(key, AES.MODE_ECB)
ct_iv = []
for i in range(16):
	ct_iv.append(known_pt[i]^known_ct[i])
leaked_iv = cipher.decrypt(bytes(ct_iv))
print(leaked_iv)

cipher = AES.new(key, AES.MODE_OFB, leaked_iv)
pt = cipher.decrypt(g)
out = open("dec.sqlite3","wb")
out.write(pt)
out.close()
