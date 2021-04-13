import string

list_char = list(string.ascii_lowercase)
key = ['?' for i in list_char]
f = open("out.txt","r")
target = f.read()
f.close()
# target = "jnjjo wow psh jpat{kjgzs}"

known = "qufxtcvbmywzdghkoiasr"
plain = "actfordingehsupwylkbm"
for i in range(len(plain)):
	key[list_char.index(plain[i])] = known[i]
print(key)

dec = ""
for i in target:
	if(i in key):
		dec += list_char[key.index(i)]
	else:
		dec += i
	# elif(i == ' '):
	# 	dec += ' '
	# else:
	# 	dec += '?'
print(dec)

flag = "qufx{awowvuqwdqcrtcwibawdgsdfbfgfbtm}"
counter = 0
for i in flag:
	if(i in known):
		counter+=1
if(counter==len(flag)-2):
	print("You got it!")