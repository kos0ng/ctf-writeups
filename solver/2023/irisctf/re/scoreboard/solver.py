init = 23
arr = [[2999, 'a i'],[10401, 'idc'],[11131, 'aty'],[9676, 'aey'],[12649, 'ost'],[10937, 'ary'],[11054, 'ase'],[10937, 'ary'],[11619, 'tea'],[9676, 'aey'],[11179, 'oe '],[12011, 'xem'],[11519, 'axy'],[2983, 'a y'],[2983, 'a y'],[10646, 'aoy'],[12655, 'nti'],[9987, 'ahe'],[9987, 'ahe'],[9288, 'aay'],[0,'monke'],[9288, 'aay'],[10875, 'cor'],[11236, 'ilh'],[9932, 'ySo'],[10295, 'egl'],[9496, 'ack'],[11554, 'oie'],[11009, 'ene'],[8215, 'lMe'],[5476, 'ILH'],[10937, 'ary'],[10811, 'ela'],[9848, 'eb2'],[4647, 'ED-'],[11729, 'azi'],[4609, 'i-t'],[10199, 'cha'],[3341, 'l s'],[3132, 'e d'],[3214, 'h r'],[3453, 'o c'],[3659, 'M1r'],[0,'invalid'],[3736, 'M2r'],[11236, 'ilh'],[10293, 'egn'],[10293, 'egn']]
page = [i+1 for i in range(len(arr))]
arr.append([11280, 'ep ']) #web
arr.append([5112, 'o/i']) #login
arr.append([11284, 'drt']) #profile
arr.append([10102, 'eec']) #welcome
arr.append([10100, 'eee']) #reverse
arr.append([6685, 'aFi']) #radio freq
arr.append([10688, 'ekw']) #networks
arr.append([11241, 'ilc']) #misc
arr.append([11554, 'oie']) #forensic
arr.append([11630, 'rgp']) #crypto
arr.append([3263, 'i a']) #binex
page.append("web")
page.append("login")
page.append("profile")
page.append("welcome")
page.append("reverse")
page.append("radio")
page.append("netw")
page.append("misc")
page.append("forens")
page.append("cryp")
page.append("binex")
 
target = [11079, 191606, 3268856, 55573815, 944761540, 16060949443, 273036143794, 4641614456128, 78907445765417, 1341426578018774, 22804251826330438, 387672281047629000, 6590428777809699685, 1356824780507595637, 4619277194919580898, 4740736018794679490, 6805536024671356146, 5013647977155751471, 11445039316809579231, 10098227648667334030]

# print(tmp)

# tmp = init*0x11 + arr[0][0]

# tmp2 = tmp*0x11 + arr[0][0]
# print(tmp2)
val = 23
key = ""
orderr = []
track = []
for i in range(len(target)):
	found = False
	for k,j in enumerate(arr):
		tmp = val*0x11 + j[0]
		tmp &= 0xffffffffffffffff
		if(tmp==target[i]):
			orderr.append(page[k])
			track.append(tmp)
			val = tmp
			key += j[1]
			found = True
			break
	if(found==False):
		print("???",i)
print(track)
print(key)
print(orderr)
print(len(orderr))