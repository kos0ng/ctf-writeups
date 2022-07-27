#!/usr/bin/python3
import string

var_chk = []
var_buf = []
var_inp = []
class SolverEquation(gdb.Command):
    def __init__ (self):
        super (SolverEquation, self).__init__ ("solve-equation",gdb.COMMAND_OBSCURE)

    def get_flag(self):
        # algorithm
        # first
        # rdx = *(0x555555559060 + input[i]) -> 0x7
        # rbp-0x34 = 0x00000501
        # 0x00000501>>0x9 -> 2 (defining register)
        # 0x555555559232 = 0x7

        # second
        # ecx = 0x30
        # eax = [rbp-0x34] -> 0x302
        # eax &= 0xf
        # rdx = eax
        # 230 + rdx (defining register) -> 232
        # edx = 0x7
        # eax = [rbp-0x34] -> 0x302
        # eax >>= 0x9
        # edx + ecx -> 0x37
        # 231 -> 0x37

        # third
        # ecx = 0x37
        # eax = 0x302
        # eax &= 0xf
        # 232 -> 0x1
        # ecx + edx = 0x38 (0x37 + 0x1)

        # fourth
        # edx = 0x59
        # eax = 0x501
        # cmp al,dl (0x38,0x59)
        
        ori = string.printable[:32]
        flag = [0]*32
        payload = 0x41
        add = []
        for i in var_inp:
            add.append(i - var_buf[payload] - payload)
        
        res = []
        for j in range(len(var_chk)):
            for i in string.printable[:-6]:
                tmp = ord(i)
                if(tmp + var_buf[tmp] + add[j] == var_chk[j]&0xff):
                    res.append(i)
        
        for i in range(len(ori)):
            flag[i] = res[var_buf[:32].index(ord(ori[i]))]
        return ''.join(flag)
    
    def invoke (self, arg, from_tty):
        # finding add value by mapping with input A
        f = open("x.txt","w")
        f.write("A"*32)
        f.close()
        arch = gdb.selected_frame().architecture()
        gdb.execute("del")
        gdb.execute("b *0x555555555216") # debugging purpose , check edi = 0xffffffff (finding address of our input)
        gdb.execute("r < x.txt")
        for i in range(526):
            gdb.execute("c")
        gdb.execute("del")
        gdb.execute("rwatch *0x555555559231") # address of our input, processed by the algorithm
        for i in range(7):
            gdb.execute("c")
        dl = addr2num(gdb.selected_frame().read_register("dl"))
        al = addr2num(gdb.selected_frame().read_register("al"))
        current_pc = addr2num(gdb.selected_frame().read_register("pc"))
        disa = arch.disassemble(current_pc)[0]
        var_chk.append(dl)
        var_inp.append(al)
        gdb.execute("c")
        while len(var_chk)!=32:
            current_pc = addr2num(gdb.selected_frame().read_register("pc"))
            disa = arch.disassemble(current_pc)[0]
            if(disa["asm"] == "cmp    dl,al"):
                dl = addr2num(gdb.selected_frame().read_register("dl"))
                al = addr2num(gdb.selected_frame().read_register("al"))
                var_chk.append(dl)
                var_inp.append(al)
            gdb.execute("c")
        
        f = open("x.txt","w")
        f.write(string.printable[:32])
        f.close()
        
        # find substition index and get buf var
        arch = gdb.selected_frame().architecture()
        gdb.execute("del")
        gdb.execute("b *0x555555555216") # debugging purpose , check edi = 0xffffffff (finding address of our input)
        gdb.execute("r < x.txt")
        for i in range(526):
            gdb.execute("c")
        gdb.execute("del")
        gdb.execute("rwatch *0x555555559231")  # address of our input, processed by the algorithm
        for i in range(7):
            gdb.execute("c")
        al = addr2num(gdb.selected_frame().read_register("al"))
        current_pc = addr2num(gdb.selected_frame().read_register("pc"))
        disa = arch.disassemble(current_pc)[0]
        var_inp.append(al)
        gdb.execute("c")
        while len(var_chk)!=32:
            current_pc = addr2num(gdb.selected_frame().read_register("pc"))
            disa = arch.disassemble(current_pc)[0]
            if(disa["asm"] == "cmp    dl,al"):
                al = addr2num(gdb.selected_frame().read_register("al"))
                var_inp.append(al)
            gdb.execute("c")
        tmp = gdb.execute("x/256bx 0x555555559060",to_string=True)
        tmp = tmp.split("\n")
        for i in tmp[:-1]:
            tmp2 = i.split("\t")
            for j in tmp2[1:]:
                var_buf.append(int(j,16))
        
        flag = self.get_flag()
        print(flag)

        
def addr2num(addr):
    try:
        return int(addr)  # Python 3
    except:
        return long(addr) # Python 2
SolverEquation()