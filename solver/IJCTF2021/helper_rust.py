#!/usr/bin/python3
import json

static_val=[]
class SolverEquation(gdb.Command):
    def __init__ (self):
        super (SolverEquation, self).__init__ ("solve-equation",gdb.COMMAND_OBSCURE)

    def invoke (self, arg, from_tty):
        global static_val
        gdb.execute("b *0x555555561530")
        gdb.execute("b *0x555555561812")
        for i in range(0xff+1):
            gdb.execute("r < junk")
            gdb.execute("set $rax="+str(i))
            gdb.execute("c")
            arr_loop = []
            rcx = gdb.execute("x/gx $rcx",to_string=True)
            r8 = gdb.execute("x/gx $r8",to_string=True)
            rcx = rcx.strip().split(":\t")[1]
            r8 = r8.strip().split(":\t")[1]
            for j in range(40):
                value_rcx = parse(gdb.execute("x/40gx "+str(rcx),to_string=True))
                value_r8 = parse(gdb.execute("x/40gx "+str(r8),to_string=True))
                arr_loop.append([value_rcx,value_r8])
                gdb.execute("c")
            static_val.append(arr_loop)
        # print(static_val)
        with open('array.txt', 'w') as f:
            f.write(json.dumps(static_val))

def parse(f):
    f = f.split("\n")
    result = []
    for i in f:
        tmp = i.split("\t")
        for j in range(1,len(tmp)):
            result.append(int(tmp[j],16))
    return result

def addr2num(addr):
    try:
        return int(addr)&0xff  # Python 3
    except:
        return long(addr) # Python 2
SolverEquation()