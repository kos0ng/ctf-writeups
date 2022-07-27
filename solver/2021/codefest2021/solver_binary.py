from PIL import Image

tmp = Image.new("RGB", (80,54))
f=open("qr.txt","r")
qr = f.read()
f.close()

pixel = []
for i in qr:
	if(i=='1'):
		pixel.append((255,255,255))
	else:
		pixel.append((0,0,0))
tmp.putdata(pixel)
tmp = tmp.resize((800, 540), Image.ANTIALIAS)
tmp.save('qr.png')
