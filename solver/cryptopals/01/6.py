import base64
import string

def s2b(a):
	res = ""
	for i in a:
		res += bin(ord(i))[2:].rjust(8,"0")
	return res

def check(a,b):
	cnt = 0
	for i in range(min(len(a),len(b))):
		if(a[i]!=b[i]):
			cnt += 1
	return cnt

def lowest_hamming_distance(data,min_length,max_length):
	result = {}
	for i in range(min_length,max_length+1):
		distance = 0
		for j in range(0,len(data),i):
			first = s2b(data[j:j+i])
			second = s2b(data[j+i:j+2*i])
			distance += check(first,second)/float(i)
		result[i] = distance/(len(data)/i)
	result = sorted(result.items(), key=lambda x: x[1])
	lowest = result[0]
	return lowest[0]

def create_blocks(data,keysize):
	result = ['' for i in range(keysize)]
	for i in range(len(data)):
		result[i%keysize] += data[i]
	return result

def get_score(message):
    score = 0
    freq = {'a': 0.0812, 'b': 0.0149, 'c': 0.0271, 'd': 0.0432,
    'e': 0.1202, 'f': 0.0230, 'g': 0.0202, 'h': 0.0592, 'i': 0.0731,
    'j': 0.001, 'k': 0.0069, 'l': 0.0398, 'm': 0.0261, 'n': 0.0695,
    'o': 0.0768, 'p': 0.0182, 'q': 0.0011, 'r': 0.0602, 's': 0.0628,
    't': 0.091, 'u': 0.0288, 'v': 0.0111, 'w': 0.0209, 'x': 0.0017,
    'y': 0.0211, 'z': 0.0007, ' ': .13}
    for c in message:
        score += freq.get(c, 0)
    return score/len(message)

def find_key(blocks):
	key = ""
	for ind,i in enumerate(blocks):
		highscore = 0
		for j in range(0x100):
			tmp = ""
			for x in i:
				tmp += chr(ord(x)^j)
			score = get_score(tmp)
			if(score>highscore):
				tmp_key = chr(j)
				highscore = score
		key += tmp_key
	return key

# def find_key(blocks):
# 	key = [[] for i in range(len(blocks))]
# 	for ind,i in enumerate(blocks):
# 		for j in range(0x100):
# 			tmp = ""
# 			for x in i:
# 				tmp += chr(ord(x)^j)
# 			if(all(c in string.printable for c in tmp)):
# 				key[ind].append(chr(j))
# 	return key

def decode(data,key):
	res = ""
	for i in range(len(data)):
		res += chr(ord(data[i])^ord(key[i%len(key)]))
	return res


f = open("6.txt").read()
f = base64.b64decode(f)
lowest = lowest_hamming_distance(f,2,40)
blocks = create_blocks(f,lowest)
key = find_key(blocks)
print decode(f,key)