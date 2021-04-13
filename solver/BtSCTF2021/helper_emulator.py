#!/usr/bin/python3

static_val=[]
class SolverEquation(gdb.Command):
    def __init__ (self):
        super (SolverEquation, self).__init__ ("solve-equation",gdb.COMMAND_OBSCURE)

    def invoke (self, arg, from_tty):
        global static_val
        gdb.execute("b *0x555555555910")
        for i in range(25):
            gdb.execute("c",to_string=True)
            val = addr2num(gdb.selected_frame().read_register("eax"))
            gdb.execute("set $edx=$eax",to_string=True)
            static_val.append(val)
        print(''.join(map(chr,static_val)))

def addr2num(addr):
    try:
        return int(addr)&0xff  # Python 3
    except:
        return long(addr) # Python 2
SolverEquation()