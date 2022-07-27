#!/usr/bin/python3

static_val=[]
counter=0
class SolverEquation(gdb.Command):
    def __init__ (self):
        super (SolverEquation, self).__init__ ("solve-equation",gdb.COMMAND_OBSCURE)

    def invoke (self, arg, from_tty):
        global static_val
        global counter
        tmp = ['1' for i in range(16)]
        for i in range(1):
            gdb.execute("file picture_shuru")
            # gdb.execute("b *0x555555554b8d")
            with open("input", "w") as f:
                tmp[12] = '5'
                f.write(''.join(tmp))
                # print('ere')    
            gdb.execute('r < input')
            check = gdb.execute('x/bx $rax+13',to_string=True)
            # val = addr2num(gdb.selected_frame().read_register("$rax"))
            check = int(check.strip().split(":\t")[1],16)
            target = 0x7c
            init = 0x78
            print("First Check",check!=init)
            print(counter,check,check==target)
            print("Correct Val : ",chr(check^target^ord('2')))
            # static_val.append(check)
            # print('here')
            # gdb.execute('delete')
            gdb.execute('kill')
        counter+=1
        #     gdb.execute("file picture_shuru")
        # print(static_val)
            # if(val == 0x7c):
            #     print(i)
            #     break
        # gdb.execute("r ")
        # gdb.execute("b *0x555555554b8d")
        # for i in range(0x14):
        #     gdb.execute("c",to_string=True)
        #     val = addr2num(gdb.selected_frame().read_register("r9d"))
        #     static_val.append(val)
        # print(static_val)
def addr2num(addr):
    try:
        return int(addr)&0xff  # Python 3
    except:
        return long(addr) # Python 2
SolverEquation()