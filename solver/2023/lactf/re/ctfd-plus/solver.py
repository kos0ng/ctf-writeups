#!/usr/bin/python3

static_val = ""
class SolverEquation(gdb.Command):
    def __init__ (self):
        super (SolverEquation, self).__init__ ("solve-equation",gdb.COMMAND_OBSCURE)

    def invoke (self, arg, from_tty):
        global static_val
        gdb.execute("del")
        gdb.execute("b *0x55555555510b")
        gdb.execute("r < input.txt")
        for i in range(46):
            val = addr2num(gdb.selected_frame().read_register("al"))
            gdb.execute("set $al=0x41",to_string=True)
            static_val += chr(val)
            gdb.execute("c",to_string=True)
        print(static_val)

def addr2num(addr):
    try:
        return int(addr)&0xff  # Python 3
    except:
        return long(addr) # Python 2
SolverEquation()