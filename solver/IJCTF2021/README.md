# Reverse Engineering - IJCTF 2021
Quick overview about my approach to solve RE challenges in IJCTF 2021
## Sanity - 100 pts
- Breakpoint on address that call strcmp function
- See argument on that strcmp function , one of them must be a flag
## Hello World - 738 pts
- There are encrypted section of assembly ( part of x and y function )
- Breakpoint on hardware access to our input
- Analyze the x and y ( after decrypted )
- each two bytes has a mapped value , so by generating the mapped value ( ciphertext ) and the original value ( plaintext ) we can solve this chall
- Final solver : [solver_hello.py](IJCTF2021/solver_hello.py)
## Family - 940 pts
- This chall is about playing with ptrace
- Int 3 called to trigger ptrace
- Executed instruction ( in function 0x8049248 ) is based on that value filled before ptrace called ( eax - function 0x804948F ) , also with another value such as input per byte that passed to instruction in function 0x804948F
- So determine order of instructions and what it means by analyze function 0x8049248 and 0x804948F
- Final solver : [solver_family.py](IJCTF2021/solver_family.py)
## Time - 988 pts
- Find comparison value in function 0x140B
```
v1 = sub_1257(i, 53LL, 899LL);
if ( v0 != sub_1257(v1, 67LL, 899LL) )
	v4 = 1;
```
- We need to make v0 same as return value from sub_1257(v1, 67LL, 899LL)
- Data on 0x4080 and 0x41a0 passed to function on 0x2008,0x2028,0x2040,and 0x2062
- 0x42C0 hold list of instruction consisting of 0x2008,0x2028,0x2040,and 0x2062 function
- 0x43E0 hold list of instruction consisting of 0x2008,0x2028,0x2040,and 0x2062 function
- List of instruction in 0x42C0 with argument from address 0x4080 used to generate value that will be compared with the value of comparison
- List of instruction in 0x43E0 used to generate flag with argument from 0x41a0
- The value on 0x4080 and 0x41a0 are shuffled ( random ) but paired , 0x4080 + x swap with 0x4080 + y , so 0x41a0 + x will be swapped with 0x41a0 + y too
- The value on 0x42C0 and 0x43e0 are shuffled ( random ) but paired , 0x42c0 + x swap with 0x42c0 + y , so 0x43e0 + x will be swapped with 0x43e0 + y too
- All of list instruction in 0x42C0 and 0x43E0 have the same value for its argument ( paired )
- So we can solve this by determining the order of instruction in 0x43E0 based on 0x42C0
- Final solver : [solver_time.py](IJCTF2021/solver_time.py)
## Derusting - 999 pts
- Created using rust 
- Our input length will be padded to even length , so there is null byte added at the end if our input length is odd
- Initial value for map and order is list of index based on our input. if our input length is 4 so the initial value is [0,1,2,3]
- There is seed used to generate random value , the seed is based on our input ( xor each other of our input )
- Map and order value will be shuffled
- Order variable used as index of our input that will be calculated with xor ( saved in enc variable )
- Map variable used to shuffled the order of the input after calculated with xor ( saved in enc variable )
- Last value of our input will be added to the end of enc variable
- So we can solve this by bruteforcing the seed ( only one byte ) , get the map and order value then reverse the function
- Map the enc variable to its original order based on map variable
- Because we only know the last byte we need to find the that last byte value and then we can reverse the xor
```
# example
# res[0] = flag[3] ^ flag[2]
# res[1] = flag[2] ^ flag[1]
# res[2] = flag[1] ^ flag[4]
# res[3] = flag[4] ^ flag[0]
# res[4] = flag[0] ^ flag[5]
```
- Determine flag[5] value position based on order variable then calculate other value with known value
- For that example the order of getting flag value based on above example is :
 ```
 flag[5] -> flag[0] -> flag[4] -> flag[1] -> flag[2] -> flag[3]
 ```
 - The process of mapping and xoring with a shuffled index is n times , where n is the length of our input
 - There is another script that i used to dump the map and order value ( [helper_rust.py](IJCTF2021/helper_rust.py) )
 - Final solver : [solver_rust.py](IJCTF2021/solver_rust.py)
