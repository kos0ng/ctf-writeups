f=open("anime.jpg","rb")
tmp = f.read()
f.close()
f=open("anime.zip","wb")
tmp2 = b"\x50"
tmp2 += tmp[0x586d9+1:]
f.write(tmp2)
f.close()