from Crypto.Util.number import *
import string

p = 2130660241
PR.<a> = PolynomialRing(GF(2130660241))
b = 885790857*1311175533 - (1311175533*a*a*2) - (a*17*1311175533)
# print(b)
f = 6*b + 105*a + 5*a*b - 4*a**2 - 519498219
# print(f)
_ = f.roots()
flag = [0  for i in range(4)]
for x1, z in _:
    x2 = int(1311175533 * (885790857 - 2*x1**2 - 17*x1) % p)
    x3 = int(inverse_mod(105 - 5*x2, p) * (1759856675 - 5*x2*x2) % p)
    x4 = int(inverse_mod(303 - 4*x3, p) * (287468906 - 5*x3*x3) % p)
    tmp = [int(x1), x2, x3, x4]
    for i in range(len(tmp)):
        try:
            tmp2 = long_to_bytes(tmp[i]).decode()
            if(all(c in string.printable for c in tmp2)):
                flag[i] = tmp2
        except Exception as e:
            continue
print(''.join(flag))