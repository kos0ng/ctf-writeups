buf = [0xb0, 0xb2, 0xb3, 0xe1, 0xb6, 0xe5, 0xb0, 0xb6, 0xe6, 0xb3, 0xe4, 0x0, 0x0, 0x0, 0x0, 0x0]
swift = ""
for i in buf:
	swift += chr(i^0x80)
print(swift)

# r 023a6e06f3d 6e06f3bd3b2 e464e54b09