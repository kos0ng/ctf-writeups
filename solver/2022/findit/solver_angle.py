import string

target = "110' 260' 50' 110' 240' 0' 290' 20' 0' 280' 20' 120' 40' 300' 0' 110' 230' 90' 300' 0' 340' 350' 290' 260' 110' 240' 170' 350' 110' 120'"
target = target.replace("'","")
list_string = string.digits + string.ascii_uppercase
# print(target)
# target = [10,120]
flag = ""
for i in target.split(' '):
	if(i=='0'):
		flag += ' '
	else:
		flag += list_string[(int(i)//10)-1]
		# print(i,list_string[(int(i)//10)-1])
print("FindITCTF{"+flag+"}")
# FindITCTF{AP4AN S1 R1B3T AM8T XYSPANGYAB}