#!/usr/bin/python3

static_val=[]
class SolverEquation(gdb.Command):
    def __init__ (self):
        super (SolverEquation, self).__init__ ("solve-equation",gdb.COMMAND_OBSCURE)

    def invoke (self, arg, from_tty):
        global static_val
        gdb.execute("start")
        arch = gdb.selected_frame().architecture()
        # for i in range(40):
        while True:
            gdb.execute("si")
            try:
                current_pc = addr2num(gdb.selected_frame().read_register("pc"))
            except Exception as e:
                print(static_val)    
            # print(current_pc)
            disa = arch.disassemble(current_pc)[0]
            # print(disa["asm"])
            if('sub    al,' in disa["asm"]):
                static_val.append(disa["asm"])
            elif('BYTE PTR [rip+0x7]' in disa["asm"]):
                gdb.execute("set $al=0")
        print(static_val)
def addr2num(addr):
    try:
        return int(addr)  # Python 3
    except:
        return long(addr) # Python 2
SolverEquation()