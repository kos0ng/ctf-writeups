jumbler = []
jumbler.extend([2**n for n in range(300)])
jumbler.extend([3**n for n in range(300)])
jumbler.extend([4**n for n in range(300)])
jumbler.extend([5**n for n in range(300)])
jumbler.extend([6**n for n in range(300)])
jumbler.extend([7**n for n in range(300)])
jumbler.extend([8**n for n in range(300)])
jumbler.extend([9**n for n in range(300)])


dictt = {}
for i in jumbler:
  if(str(i)[0] in dictt):
    dictt[str(i)[0]] += 1
  else:
    dictt[str(i)[0]] = 0

# print(dictt)
for i in dictt:
  print(i,dictt[i])