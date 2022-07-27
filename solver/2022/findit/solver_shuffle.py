
import math
import functools

reduce = functools.reduce
gcd = math.gcd

def egcd(a, b):
    if a == 0:
        return (b, 0, 1)
    else:
        g, x, y = egcd(b % a, a)
        return (g, y - (b // a) * x, x)

def modinv(b, n):
    g, x, _ = egcd(b, n)
    if g == 1:
        return x % n

def crack_unknown_increment(states, modulus, multiplier):
    increment = (states[1] - states[0]*multiplier) % modulus
    return modulus, multiplier, increment

def crack_unknown_multiplier(states, modulus):
    multiplier = (states[2] - states[1]) * modinv(states[1] - states[0], modulus) % modulus
    return crack_unknown_increment(states, modulus, multiplier)

def crack_unknown_modulus(states):
    diffs = [s1 - s0 for s0, s1 in zip(states, states[1:])]
    zeroes = [t2*t0 - t1*t1 for t0, t1, t2 in zip(diffs, diffs[1:], diffs[2:])]
    modulus = abs(reduce(gcd, zeroes))
    return crack_unknown_multiplier(states, modulus)

class prng_lcg:

    def __init__(self, seed, m,n,c):
        self.state = seed  # the "seed"
        self.m = m
        self.n = n
        self.c = c

    def next(self):
        self.state = (self.state * self.m + self.c) % self.n
        return self.state

    def prev(self):
        self.state = (self.state - self.c) % self.n
        return int(self.state)


list_num = [990533, 5928762, 3081967, 4467492, 2395420, 4185481, 3145024, 1571952, 6423870, 5575354, 5508961, 679844, 3583044, 465152, 1747215, 6431758, 4800983, 3645878, 5217012, 3830895, 3421389, 3121743, 6111812, 2014360, 6791068, 4277394, 7171740, 729986, 805727, 1689328, 1022671, 2500329, 6257405]
import requests

r = requests.session()
url = 'http://47.243.63.167:13401/'
submit = 'cek.php?tebak={}'
resp = r.get(url)
num = resp.text.split(', <')[0]
list_num = list(map(int,num.split(', ')))
# print(list_num)
n = 0
i = 0
while n==0: 
    try:
        n, m , c = crack_unknown_modulus(list_num[i:])
    except Exception as e:
        i += 1
gen = prng_lcg(list_num[0],m,n,c)
for i in range(len(list_num)):
    if(i==len(list_num)-1):
        # print(gen.next())
        resp = r.get((url+submit).format(gen.next()))
        print(resp.text)
    else:
        gen.next()
