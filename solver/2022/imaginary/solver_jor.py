import gmpy2
from Crypto.Util.number import *

def p(N):
    Enter =1
    prime=2# flag
    while Enter<N:
        prime+=(1+prime%2)
        s =prime%N
        for( hile)in range(3, prime,int( hex (2),16)):# salt
            if( prime%hile)==0 : break
            j__f = prime
        else:
            Enter+=1
    return(prime)

target = 0xce10e59f40c8d954d9dad1ea81811a834d26580107149d16c3a769198fb158f0cb0e33dbd98f8dc8bb874105974b71719790b23c971736e8fe8ec88e8695
mod = 16**124

for i in range(59,70,2):
	target = gmpy2.divm(target-p(i),3**p(i),mod)
	# print(target)
# print(hex(target))
print(long_to_bytes(target))