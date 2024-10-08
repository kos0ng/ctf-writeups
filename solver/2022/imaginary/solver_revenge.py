from z3 import *

a=[BitVec("x{}".format(i), 8) for i in range(24)]
s=Solver()
s.add(87*a[7]+56*a[10]+41*a[7]+22*a[3]+44*a[3]==81*a[6]+79*a[12]+40*a[22]+37*a[15]+66*a[12]-10364)
s.add(63*a[3]+76*a[0]+93*a[5]+64*a[3]+17*a[6]==74*a[23]+30*a[11]+21*a[9]+63*a[8]+66*a[23]+405)
s.add(24*a[2]+7*a[8]+81*a[23]+42*a[6]+30*a[20]==35*a[10]+4*a[14]+87*a[18]+88*a[5]+46*a[10]-1649)
s.add(27*a[5]+34*a[12]+16*a[0]+39*a[7]+89*a[10]==58*a[17]+22*a[20]+6*a[14]+20*a[4]+1*a[14]+7194)
s.add(36*a[19]+8*a[5]+43*a[23]+73*a[23]+78*a[3]==31*a[0]+15*a[22]+66*a[12]+48*a[21]+5*a[12]+9943)
s.add(18*a[23]+76*a[20]+94*a[18]+1*a[0]+87*a[5]==90*a[17]+20*a[13]+86*a[2]+28*a[12]+89*a[0]-7968)
s.add(68*a[18]+78*a[7]+31*a[10]+45*a[9]+73*a[13]==23*a[23]+14*a[7]+91*a[12]+99*a[4]+8*a[8]-445)
s.add(28*a[4]+42*a[16]+39*a[16]+3*a[20]+63*a[1]==11*a[10]+31*a[19]+9*a[19]+30*a[8]+74*a[16]+2148)
s.add(78*a[21]+4*a[15]+62*a[18]+84*a[7]+96*a[16]==24*a[7]+23*a[14]+94*a[3]+46*a[2]+67*a[17]+7330)
s.add(53*a[3]+77*a[18]+61*a[23]+81*a[16]+30*a[15]==70*a[16]+89*a[22]+4*a[13]+23*a[15]+94*a[18]+9747)
s.add(90*a[20]+70*a[10]+53*a[0]+26*a[5]+29*a[20]==73*a[6]+21*a[21]+6*a[23]+88*a[17]+43*a[1]+3403)
s.add(62*a[3]+59*a[10]+88*a[0]+77*a[9]+37*a[5]==88*a[12]+81*a[9]+49*a[17]+81*a[16]+28*a[2]-2875)
s.add(49*a[21]+62*a[12]+39*a[19]+6*a[2]+33*a[18]==65*a[14]+40*a[11]+51*a[3]+38*a[14]+61*a[17]+1787)
s.add(98*a[4]+29*a[16]+91*a[16]+25*a[13]+94*a[20]==41*a[17]+63*a[3]+61*a[7]+28*a[10]+89*a[7]+17506)
s.add(95*a[0]+24*a[2]+11*a[13]+40*a[3]+85*a[18]==37*a[9]+49*a[3]+15*a[2]+51*a[11]+71*a[6]+8832)
s.add(81*a[7]+15*a[6]+83*a[21]+51*a[10]+25*a[15]==78*a[16]+36*a[18]+89*a[8]+74*a[9]+28*a[15]-5576)
s.add(5*a[12]+55*a[15]+38*a[23]+79*a[18]+73*a[2]==7*a[6]+68*a[13]+46*a[19]+56*a[23]+84*a[15]-1064)
s.add(94*a[21]+46*a[8]+21*a[14]+46*a[0]+49*a[17]==81*a[8]+97*a[8]+82*a[4]+4*a[6]+67*a[8]-10410)
s.add(83*a[17]+89*a[21]+57*a[21]+19*a[19]+42*a[3]==12*a[8]+7*a[0]+83*a[9]+8*a[10]+79*a[5]+20536)
s.add(30*a[19]+67*a[17]+10*a[1]+13*a[2]+47*a[1]==87*a[10]+95*a[11]+9*a[15]+41*a[3]+80*a[16]-11542)
s.add(33*a[4]+85*a[22]+88*a[19]+11*a[19]+65*a[3]==2*a[12]+83*a[15]+51*a[3]+53*a[2]+4*a[15]+2150)
s.add(16*a[13]+6*a[21]+19*a[23]+49*a[21]+48*a[9]==96*a[4]+60*a[7]+73*a[11]+79*a[9]+67*a[13]-17330)
s.add(15*a[14]+72*a[0]+60*a[2]+66*a[17]+57*a[14]==43*a[5]+79*a[2]+3*a[16]+17*a[1]+64*a[6]+4715)
s.add(46*a[8]+93*a[3]+59*a[20]+15*a[14]+84*a[6]==49*a[18]+46*a[14]+41*a[6]+37*a[1]+98*a[13]+3571)
s.add(19*a[3]+96*a[19]+38*a[22]+34*a[5]+27*a[14]==61*a[21]+74*a[10]+1*a[10]+86*a[17]+62*a[21]-14623)
s.add(8*a[11]+13*a[23]+70*a[20]+4*a[14]+25*a[16]==47*a[13]+56*a[9]+14*a[16]+14*a[5]+47*a[19]-2509)
s.add(56*a[16]+35*a[7]+71*a[15]+82*a[11]+43*a[18]==89*a[9]+5*a[20]+38*a[10]+16*a[17]+16*a[8]+13008)
s.add(60*a[22]+16*a[2]+79*a[3]+5*a[22]+99*a[7]==22*a[20]+75*a[11]+31*a[6]+4*a[15]+53*a[3]+1557)
s.add(99*a[13]+17*a[8]+43*a[22]+35*a[15]+63*a[11]==75*a[15]+65*a[11]+44*a[17]+68*a[14]+71*a[6]-6000)
s.add(96*a[15]+77*a[19]+70*a[22]+36*a[5]+40*a[12]==92*a[8]+78*a[21]+18*a[13]+27*a[19]+64*a[19]-2898)
s.add(64*a[9]+94*a[17]+20*a[16]+57*a[6]+76*a[5]==57*a[2]+66*a[21]+82*a[0]+95*a[15]+70*a[19]-16423)
s.add(35*a[1]+43*a[22]+7*a[21]+88*a[9]+72*a[11]==79*a[6]+66*a[17]+43*a[1]+80*a[6]+13*a[6]-16177)
s.check()
flag=""
model=s.model()
print(model)
for i in a:
    flag+=chr(model[i].as_long())
print(flag)