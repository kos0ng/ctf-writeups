import string

flag=[0]*10
r3="AQLbN"
varc=list(r3)
r3="-="
var10=list(r3)
# r3=var18
# r3=r3[7]
for i in string.printable[:-6]:
	# r1=r3
	r1=ord(i)
	r2=r1
	r2=r2<<1
	r2=r2+r1
	r3=r2<<6
	r3=r3-r2
	r3=r3<<1
	r3=r3+r1
	r3=r3<<1
	r2=r3
	for j in string.printable[:-6]:
		r3=r2+ord(j)
		r2=0x1225C
		if(r3==r2):
			flag[0]=i
			flag[9]=j
			break
# r3=var18
# # r3=r3+9
# # r3=r3[8:16]
# r3=r3[15]
# r3=r2+r3
# r2=0x1225C
# cmp r3 r2
# if(r3!=r2) lose

# r3=var18
# r3=r3+1
# r2=r3[byte]
# r3=var18
# r3=r3[8]
# r3=r3[byte]
# r3=r3^r2
# r3=r3&0xff
# r3=r3<<1
# cmp r3 0xe
# if(r3!=0xe) lose

x=[]
y=[]
for i in string.printable[:-6]:
	r2=ord(i)
	for j in string.printable[:-6]:
		r3=ord(j)^r2
		r3=r3&0xff
		r3=r3<<1
		if(r3==0xe):
			x.append(j)
			y.append(i)

# r3=var18
# r3=r3+8
# r3=r3[byte]
# r2=0x4ec4ec4f
# r1=r2*r3[lsd]
# r3=r2*r3[msd]
# r3=r3>>2
# r3=r3&0xff
# r2=r3
# r3=var18
# r3=r3[byte]
# r3=r2+r3
# cmp r3 0x66 (f)
# if(r3!=0x66) lose

#fail
# def msb(i):
# 	a = bin(i)[2:]
# 	a = '0'*(64-len(a))+a
# 	b = a[0:32] # gets first SEVEN characters of string a 
# 	c = int(b,2) 
# 	return c

# for i in x:
# 	r2=0x4ec4ec4f
# 	tmp=r2*ord(i)
# 	r3=msb(tmp)
# 	r3=r3>>2
# 	r3=r3&0xff
# 	r2=r3
# 	r3=ord('b')
# 	r3=r2+r3
# 	if(r3==0x66):
# 		print "x",i
		# break


# r3=var18
# r3=r3+1
# r3=r3[byte]
# r0=r3
# r3=var18
# r3=r3+9
# r3=r3[byte]
# r1=r3
# r3=r1
# r3=r3<<1
# r3=r3+r1
# r2=r3<<3
# r2=r2-r3
# r2=r2<<1
# r3=r2+r1
# r3=r0|r3
# r2=0x833
# if(r3!=r2) lose

for i in y:
	r0=ord(i)
	r3=ord(flag[9])
	r1=r3
	r3=r1
	r3=r3<<1
	r3=r3+r1
	r2=r3<<3
	r2=r2-r3
	r2=r2<<1
	r3=r2+r1
	r3=r0|r3
	r2=0x833
	if(r3==r2):
		flag[1]=i
		flag[8]=x[y.index(i)]
		break


# r3=var18
# r3=r3+7
# r3=r3[byte]
# if(r3!=0x69(i)) lose

flag[7]='i'

# r3=0
# var8=r3


# r3=var8
# if(r3<=4) loop

# loop:
# r3=var8
# r3=r3+2
# r2=r3
# r3=var18
# r3=r3+r2
# r2=r3[byte]
# r3=var8
# cmp r3 0
# r3=r3&1
# if r3 is less than zero, set r3 to 0 - r3
# r1=r3
# r3=var10
# r3=r3+r1
# r3=r3[byte]
# r3=r3^r2
# r2=r3&0xff
# r3=var8
# r1=varc
# r3=r1+r3
# r3=r3[byte]
# if(r2==r3) : false fail
# r3=var8
# r3=r3+1
# var8=r3

var8=0
r3=var8
z=[]
while(var8<=4):
	r3=var8
	r3=r3+2
	count=r3
	# r3=r3
	# r3=r3+r2
	# r2=r3[byte]
	# r2=r3[r2]
	print count
	for j in string.printable[:-6]:
		r2=ord(j)
		r3=var8
		# cmp r3 0
		# if(r3==0):
		# 	r3=r3&1
		# if r3 is less than zero, set r3 to 0 - r3
		r3=r3&1
		# print "r3 ",r3
		if(r3<0):
			r3=0-r3
		r1=r3
		r3=var10
		# r3=r3+r1
		r3=ord(r3[r1])
		r3=r3^r2
		r2=r3&0xff
		r3=var8
		r1=varc
		# r3=r1+r3
		r3=r1[r3]
		if(r2==ord(r3)):
			flag[count]=j
	# print r3
	# print z
	r3=var8
	r3=r3+1
	var8=r3
print 'd33p{'+''.join(flag)+'}'