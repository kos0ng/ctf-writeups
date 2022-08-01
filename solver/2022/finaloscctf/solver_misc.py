from pwn import *

arr = [['100,deepfakes',
'200,4',
'300,teguh aprianto',
'400,electronic sniffing dog',
'500,ardyan vicky ramadhan']
,
['100,log4j',
'200,starlabs',
'300,CVE-2022-1096',
'400,starlink',
'500,World Backup Day'
]
,
['100,Julius Caesar',
'200,creeper',
'300,the reaper',
'400,The Homeless Hacker',
'500,susan headley']
,
['100,moth',
'300,0',
'400,infinity',
'500,Princess of Parallelograms'
]
,
['100,Muhammad Rafi Ammar',
'200,Yose Hendra Naibaho',
'300,agus setiyandi and raymond leon sembiring',
'400,26 September 2013',
'500,d9775a0ba138a29c57d2e1d79697bfe4']]

cat = ["Sound Familiar","Cybersecurity Now","Cybersecurity History","Computer Programming","OSINT"]
point = ["100","200","300","400","500"]

r = remote("128.199.210.141",62911)
r.recvuntil("!\n")
r.sendline("ready")
for j,i in enumerate(arr):
	tmp_cat = cat[j]
	for k in i:
		r.recvuntil("500\n\n")
		tmp_k = k.split(',')
		point = tmp_k[0]
		answer = tmp_k[1]
		trig = " ".join([tmp_cat,point])
		r.sendline(trig)
		r.recvuntil("Your answer:")
		r.sendline(answer)
		r.recvline()
		# print(trig,answer)
		# print(r.recvline())
		r.recvline()
r.interactive()