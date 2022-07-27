#!/usr/bin/python3

cnt=0
class SolverEquation(gdb.Command):
    def __init__ (self):
        super (SolverEquation, self).__init__ ("solve-equation",gdb.COMMAND_OBSCURE) 

    def invoke (self, arg, from_tty):
        global cnt
        gdb.execute("b *0x555555555094",to_string=True)
        gdb.execute("b *0x555555555031",to_string=True)
        input_val=[0x555555557038,0x555555557050,0x555555557058,0x555555557060,0x555555557068,0x555555557070,0x555555557078]
        while True:
            gdb.execute("c",to_string=True)
            tmp = gdb.execute("x/gx $rbp+$rbx*8",to_string=True)
            op2 = int(tmp.split(":")[0].strip(),16)
            if(op2 in input_val):
                tmp = gdb.execute("p $rax",to_string=True)
                op3 = int(tmp.split("=")[1].strip(),16)
                print(cnt,hex(op2),hex(op3))
                cnt+=1
                break
            else:
                print(cnt,hex(op2))
                cnt+=1 
            gdb.execute("nexti",to_string=True)
SolverEquation()