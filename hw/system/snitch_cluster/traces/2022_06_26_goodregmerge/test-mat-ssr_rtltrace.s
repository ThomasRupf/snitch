       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800030e0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800030e0, (wrb) ra  <-- 4120, goto 0x800030e0
       0      269        M 0x800030e0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800040e0
       0      270        M 0x800030e4 addi    gp, gp, -280           #; gp  = 0x800040e0, (wrb) gp  <-- 0x80003fc8
       0      271        M 0x800030e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030e8
       0      272        M 0x800030ec jalr    ra, ra, 964            #; ra  = 0x800030e8, (wrb) ra  <-- 0x800030f0, goto 0x800034ac
       0      292        M 0x800034ac mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x800034b0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x800034b4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x800034b8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x800034bc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x800034c0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x800034c4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x800034c8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x800034cc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x800034d0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x800034d4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x800034d8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x800034dc ret                            #; ra  = 0x800030f0, goto 0x800030f0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800030f0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800030f4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800030f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030f8
       0      508        M 0x800030fc jalr    ra, ra, 1036           #; ra  = 0x800030f8, (wrb) ra  <-- 0x80003100, goto 0x80003504
       0      523        M 0x80003504 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80003508 ret                            #; ra  = 0x80003100, goto 0x80003100
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80003100 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80003104 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80003108 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000310c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80003110 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80003114 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80004114
       0      551        M 0x80003118 addi    t0, t0, -2020          #; t0  = 0x80004114, (wrb) t0  <-- 0x80003930
       0      552        M 0x8000311c auipc   t1, 0x1                #; (wrb) t1  <-- 0x8000411c
       0      562        M 0x80003120 addi    t1, t1, -2024          #; t1  = 0x8000411c, (wrb) t1  <-- 0x80003934
       0      563        M 0x80003124 bge     t0, t1, pc + 16        #; t0  = 0x80003930, t1  = 0x80003934, not taken
       0      564        M 0x80003128 sw      zero, 0(t0)            #; t0  = 0x80003930, 0 ~~> Word[0x80003930]
       0      565        M 0x8000312c addi    t0, t0, 4              #; t0  = 0x80003930, (wrb) t0  <-- 0x80003934
       0      573        M 0x80003130 blt     t0, t1, pc - 8         #; t0  = 0x80003934, t1  = 0x80003934, not taken
       0      574        M 0x80003134 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80003138 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000313c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80003140 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80003144 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80003148 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000314c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80003150 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80003154 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80003158 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000315c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80003160 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80003164 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80003168 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000316c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80003170 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80003174 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80003178 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000317c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80003180 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80003184 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80003188 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000318c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80003190 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80003194 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80003198 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000319c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800031a0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800031a4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800031a8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800031ac fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800031b0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800031b4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800031b8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800031bc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800031c0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800031c4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800031c8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800031c8
       0      684        M 0x800031cc lw      t0, 900(t0)            #; t0  = 0x800031c8, t0  <~~ Word[0x8000354c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800031d0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800031d4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800031d8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800031d8
       0      708        M 0x800031dc lw      t2, 880(t2)            #; t2  = 0x800031d8, t2  <~~ Word[0x80003548]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800031e0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800031e4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800031e8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800031ec sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800031f0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800031f4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800031f8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800031fc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80003200 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003200
       0      762        M 0x80003204 addi    t0, t0, 1480           #; t0  = 0x80003200, (wrb) t0  <-- 0x800037c8
       0      763        M 0x80003208 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003208
       0      764        M 0x8000320c addi    t1, t1, 1472           #; t1  = 0x80003208, (wrb) t1  <-- 0x800037c8
       0      775        M 0x80003210 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003210
       0      776        M 0x80003214 addi    t2, t2, 1464           #; t2  = 0x80003210, (wrb) t2  <-- 0x800037c8
       0      777        M 0x80003218 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80003218
       0      778        M 0x8000321c addi    t3, t3, 1472           #; t3  = 0x80003218, (wrb) t3  <-- 0x800037d8
       0      787        M 0x80003220 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800037c8, (wrb) sp  <-- 0x80123738
       0      788        M 0x80003224 sub     sp, sp, t1             #; sp  = 0x80123738, t1  = 0x800037c8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80003228 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800037c8, (wrb) sp  <-- 0x80123738
       0      790        M 0x8000322c sub     sp, sp, t3             #; sp  = 0x80123738, t3  = 0x800037d8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80003230 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80003234 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80003238 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000323c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80003240 bge     t0, t1, pc + 24        #; t0  = 0x800037c8, t1  = 0x800037c8, taken, goto 0x80003258
       0      823        M 0x80003258 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003258
       0      824        M 0x8000325c addi    t0, t0, 1392           #; t0  = 0x80003258, (wrb) t0  <-- 0x800037c8
       0      835        M 0x80003260 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003260
       0      836        M 0x80003264 addi    t1, t1, 1400           #; t1  = 0x80003260, (wrb) t1  <-- 0x800037d8
       0      837        M 0x80003268 bge     t0, t1, pc + 20        #; t0  = 0x800037c8, t1  = 0x800037d8, not taken
       0      838        M 0x8000326c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80003270 addi    t0, t0, 4              #; t0  = 0x800037c8, (wrb) t0  <-- 0x800037cc
       0      848        M 0x80003274 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80003278 blt     t0, t2, pc - 12        #; t0  = 0x800037cc, t2  = 0x800037c8, not taken
       0      850        M 0x8000327c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80003280 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80003284 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80003288 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000328c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80003290 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80003294 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003294
       0      877        M 0x80003298 jalr    ra, ra, -1968          #; ra  = 0x80003294, (wrb) ra  <-- 0x8000329c, goto 0x80002ae4
       0      899        M 0x80002ae4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x80002ae8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x80002aec lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x80002af0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002af4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002af8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002afc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x80002b00 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002b04 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002b08 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002b0c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x80002b10 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002b14 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002b18 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002b1c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x80002b20 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002b24 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002b28 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002b2c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002b30 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002b34 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002b38 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002b3c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002b40 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002b44 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002b48 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002b4c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002b50 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002b54 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002b58 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002b5c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002b60 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002b64 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002b68 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002b6c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002b70 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x80002b74 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x80002b78 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x80002b7c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002b80 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x80002b84 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x80002b88 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x80002b8c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002b90 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x80002b94 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x80002b98 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x80002b9c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x80002ba0 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x80002ba4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x80002ba8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x80002bac sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002bb0 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x80002bb4 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x80002bb8 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x80002bbc sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x80002bc0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x80002bc4 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x80002bc8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x80002bcc sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80002bd0 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80002bd4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80002bd8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003bd8
       0     1273        M 0x80002bdc addi    a1, a1, -676           #; a1  = 0x80003bd8, (wrb) a1  <-- 0x80003934
       0     1282        M 0x80002be0 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003934, (wrb) a0  <-- 0x80003934
       0     1283        M 0x80002be4 sw      zero, 0(a0)            #; a0  = 0x80003934, 0 ~~> Word[0x80003934]
       0     1284        M 0x80002be8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x80002bec sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x80002bf0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x80002bf4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x80002bf8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x80002bfc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x80002c00 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x80002c04 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x80002c08 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x80002c0c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x80002c10 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x80002c14 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x80002c18 lw      a0, 0(a1)              #; a1  = 0x80003934, a0  <~~ Word[0x80003934]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x80002c1c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002c20 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002c24 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x80002c28 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x80002c2c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x80002c30 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x80002c34 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x80002c38 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x80002c3c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80002c40 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80002c44 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80002c48 ret                            #; ra  = 0x8000329c, goto 0x8000329c
       0     1406        M 0x8000329c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x800032a0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x800032a4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x800032a8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x800032ac lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x800032b0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x800032b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800032b4
       0     1425        M 0x800032b8 addi    t0, t0, 60             #; t0  = 0x800032b4, (wrb) t0  <-- 0x800032f0
       0     1426        M 0x800032bc csrw    mtvec, t0              #; t0  = 0x800032f0, (lsu) a4  <-- 4132
       0     1434        M 0x800032c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800032c0
       0     1435        M 0x800032c4 jalr    ra, ra, 544            #; ra  = 0x800032c0, (wrb) ra  <-- 0x800032c8, goto 0x800034e0
       0     1451        M 0x800034e0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x800034e4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800032c8 ~~> Word[0x0011ff5c]
       0     1453        M 0x800034e8 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800024e8
       0     1454        M 0x800034ec jalr    ra, ra, 1924           #; ra  = 0x800024e8, (wrb) ra  <-- 0x800034f0, goto 0x80002c6c
       0     1472        M 0x80002c6c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x80002c70 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80002c74 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80002c78 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x80002c7c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x80002c80 ret                            #; ra  = 0x800034f0, goto 0x800034f0
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x800034f0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x800034f4 mv      zero, a0               #; a0  = 0
       0     1529        M 0x800034f8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x800034fc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x800032c8
       0     1533        M 0x80003500 ret                            #; ra  = 0x800032c8, goto 0x800032c8
       0     1537        M 0x800032c8 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x800002c8
       0     1538        M 0x800032cc jalr    ra, ra, 876            #; ra  = 0x800002c8, (wrb) ra  <-- 0x800032d0, goto 0x80000634
       0     1543        M 0x80000634 addi    sp, sp, -48            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff30
       0     1544        M 0x80000638 sw      ra, 44(sp)             #; sp  = 0x0011ff30, 0x800032d0 ~~> Word[0x0011ff5c]
       0     1545        M 0x8000063c sw      s0, 40(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff58]
       0     1546        M 0x80000640 sw      s1, 36(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff54]
       0     1547        M 0x80000644 sw      s2, 32(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff50]
       0     1548        M 0x80000648 sw      s3, 28(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff4c]
       0     1549        M 0x8000064c sw      s4, 24(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff48]
       0     1559        M 0x80000650 sw      s5, 20(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff44]
       0     1560        M 0x80000654 sw      s6, 16(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff40]
       0     1562        M 0x8000065c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1563        M 0x80000658 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff38]
       0     1571        M 0x80000660 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1572        M 0x80000664 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1573        M 0x80000668 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1575        M                                           #; (lsu) a1  <-- 0
       0     1576        M 0x8000066c bnez    a1, pc + 2040          #; a1  = 0, not taken
       0     1583        M 0x80000670 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1584        M 0x80000674 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1585        M 0x80000678 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1588        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1589        M 0x8000067c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1592        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1596        M 0x80000680 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1599        M                                           #; (lsu) s0  <-- 0x00100000
       0     1600        M 0x80000684 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1603        M                                           #; (lsu) a1  <-- 0x00100000
       0     1604        M 0x80000688 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1605        M 0x8000068c addi    a2, s0, 240            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000f0
       0     1607        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1611        M 0x80000690 add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1612        M 0x80000694 bgeu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x001000f0, taken, goto 0x800006c0
       0     1638        M 0x800006c0 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1639        M 0x800006c4 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1640        M 0x800006c8 mv      s0, a2                 #; a2  = 0x001000f0, (wrb) s0  <-- 0x001000f0
       0     1641        M 0x800006cc addi    a2, s0, 336            #; s0  = 0x001000f0, (wrb) a2  <-- 0x00100240
       0     1665        M 0x800006d0 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x00100240, taken, goto 0x800006a4
       0     1666        M 0x800006a4 mv      s6, s0                 #; s0  = 0x001000f0, (wrb) s6  <-- 0x001000f0
       0     1667        M 0x800006a8 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100240 ~~> Word[0x0011ffc8]
       0     1668        M 0x800006ac mv      s0, a2                 #; a2  = 0x00100240, (wrb) s0  <-- 0x00100240
       0     1678        M 0x800006b0 addi    a2, s0, 280            #; s0  = 0x00100240, (wrb) a2  <-- 0x00100358
       0     1679        M 0x800006b4 bltu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x00100358, not taken
       0     1680        M 0x800006b8 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100358 ~~> Word[0x0011ffc8]
       0     1681        M 0x800006bc j       pc + 0x28              #; goto 0x800006e4
       0     1690        M 0x800006e4 srli    a0, s2, 20             #; s2  = 0x00100000, (wrb) a0  <-- 1
       0     1691        M 0x800006e8 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     1692        M 0x800006ec lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     1702        M 0x800006f0 addi    a1, a1, -231           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011ff19
       0     1703        M 0x800006f4 sltu    a1, s2, a1             #; s2  = 0x00100000, a1  = 0x0011ff19, (wrb) a1  <-- 1
       0     1704        M 0x800006f8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     1705        M 0x800006fc auipc   a6, 0x3                #; (wrb) a6  <-- 0x800036fc
       0     1714        M 0x80000700 addi    a6, a6, 220            #; a6  = 0x800036fc, (wrb) a6  <-- 0x800037d8
       0     1715        M 0x80000704 beqz    a0, pc + 404           #; a0  = 1, not taken
       0     1716        M 0x80000708 li      a0, 8                  #; (wrb) a0  <-- 8
       0     1717        M 0x8000070c li      a1, 29                 #; (wrb) a1  <-- 29
       0     1726        M 0x80000710 li      a2, 64                 #; (wrb) a2  <-- 64
       0     1727        M 0x80000714 li      a3, 192                #; (wrb) a3  <-- 192
       0     1728        M 0x80000718 scfgw   a1, a2                 #; a1  = 29, a2  = 64
       0     1729        M 0x8000071c scfgw   a0, a3                 #; a0  = 8, a3  = 192
       0     1738        M 0x80000720 li      a0, 32                 #; (wrb) a0  <-- 32
       0     1739        M 0x80000724 scfgw   zero, a0               #; a0  = 32
       0     1740        M 0x80000728 scfgwi  s2, 896                #; s2  = 0x00100000
       0     1742        M 0x8000072c csrrsi  a0, ssr, 1             #; 
       0     1751        M 0x80000734 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003734
       0     1752        M 0x80000738 addi    a0, a0, 172            #; a0  = 0x80003734, (wrb) a0  <-- 0x800037e0
                         M 0x80000730 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x800037d8]
       0     1755        M 0x8000073c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800037e0]
       0     1761        M                                           #; (f:lsu) ft3  <-- 3.141
       0     1762        M 0x80000740 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003740
       0     1763        M 0x80000744 addi    a0, a0, 168            #; a0  = 0x80003740, (wrb) a0  <-- 0x800037e8
       0     1764        M                                           #; (f:lsu) ft4  <-- 6.282
       0     1765        M 0x8000074c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000374c
       0     1766        M 0x80000748 fld     ft5, 0(a0)             #; ft5  <~~ Doub[0x800037e8]
       0     1774        M 0x80000750 addi    a0, a0, 164            #; a0  = 0x8000374c, (wrb) a0  <-- 0x800037f0
       0     1775        M                                           #; (f:lsu) ft5  <-- 9.423
       0     1777        M 0x80000754 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x800037f0]
       0     1778        M 0x80000758 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
       0     1779        M 0x8000075c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
       0     1780        M                                           #; (f:fpu) ft0  <-- 6.282
       0     1786        M                                           #; (f:lsu) ft6  <-- 12.564
       0     1788        M 0x80000768 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003768
                         M 0x80000760 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.423, ft5  = 9.423
       0     1789        M 0x8000076c addi    a0, a0, 144            #; a0  = 0x80003768, (wrb) a0  <-- 0x800037f8
                         M 0x80000764 fsgnj.d ft0, ft6, ft6          #; ft6  = 12.564, ft6  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1790        M                                           #; (f:fpu) ft0  <-- 12.564
       0     1799        M 0x80000774 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003774
       0     1800        M 0x80000778 addi    a0, a0, 140            #; a0  = 0x80003774, (wrb) a0  <-- 0x80003800
                         M 0x80000770 fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x800037f8]
       0     1803        M 0x8000077c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x80003800]
       0     1809        M                                           #; (f:lsu) ft7  <-- 15.705
       0     1810        M 0x80000780 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003780
       0     1811        M 0x80000784 addi    a0, a0, 136            #; a0  = 0x80003780, (wrb) a0  <-- 0x80003808
       0     1812        M                                           #; (f:lsu) fa0  <-- 18.846
       0     1813        M 0x8000078c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000378c
       0     1814        M 0x80000788 fld     fa1, 0(a0)             #; fa1  <~~ Doub[0x80003808]
       0     1822        M 0x80000790 addi    a0, a0, 132            #; a0  = 0x8000378c, (wrb) a0  <-- 0x80003810
       0     1823        M                                           #; (f:lsu) fa1  <-- 21.9870000
       0     1825        M 0x80000794 fld     fa2, 0(a0)             #; fa2  <~~ Doub[0x80003810]
       0     1826        M 0x80000798 fsgnj.d ft0, ft7, ft7          #; ft7  = 15.705, ft7  = 15.705
       0     1827        M 0x8000079c fsgnj.d ft0, fa0, fa0          #; fa0  = 18.846, fa0  = 18.846, (f:fpu) ft0  <-- 15.705
       0     1828        M                                           #; (f:fpu) ft0  <-- 18.846
       0     1834        M                                           #; (f:lsu) fa2  <-- 25.128
       0     1836        M 0x800007a8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037a8
                         M 0x800007a0 fsgnj.d ft0, fa1, fa1          #; fa1  = 21.9870000, fa1  = 21.9870000
       0     1837        M 0x800007ac addi    a0, a0, 112            #; a0  = 0x800037a8, (wrb) a0  <-- 0x80003818
                         M 0x800007a4 fsgnj.d ft0, fa2, fa2          #; fa2  = 25.128, fa2  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     1838        M                                           #; (f:fpu) ft0  <-- 25.128
       0     1847        M 0x800007b4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037b4
       0     1848        M 0x800007b8 addi    a0, a0, 108            #; a0  = 0x800037b4, (wrb) a0  <-- 0x80003820
                         M 0x800007b0 fld     fa3, 0(a0)             #; fa3  <~~ Doub[0x80003818]
       0     1851        M 0x800007bc fld     fa4, 0(a0)             #; fa4  <~~ Doub[0x80003820]
       0     1857        M                                           #; (f:lsu) fa3  <-- 28.269
       0     1858        M 0x800007c0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037c0
       0     1859        M 0x800007c4 addi    a0, a0, 104            #; a0  = 0x800037c0, (wrb) a0  <-- 0x80003828
       0     1860        M                                           #; (f:lsu) fa4  <-- 31.41
       0     1861        M 0x800007cc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037cc
       0     1862        M 0x800007c8 fld     fa5, 0(a0)             #; fa5  <~~ Doub[0x80003828]
       0     1870        M 0x800007d0 addi    a0, a0, 100            #; a0  = 0x800037cc, (wrb) a0  <-- 0x80003830
       0     1871        M                                           #; (f:lsu) fa5  <-- 34.551
       0     1873        M 0x800007d4 fld     fa6, 0(a0)             #; fa6  <~~ Doub[0x80003830]
       0     1874        M 0x800007d8 fsgnj.d ft0, fa3, fa3          #; fa3  = 28.269, fa3  = 28.269
       0     1875        M 0x800007dc fsgnj.d ft0, fa4, fa4          #; fa4  = 31.41, fa4  = 31.41, (f:fpu) ft0  <-- 28.269
       0     1876        M                                           #; (f:fpu) ft0  <-- 31.41
       0     1882        M                                           #; (f:lsu) fa6  <-- 37.692
       0     1884        M 0x800007e8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037e8
                         M 0x800007e0 fsgnj.d ft0, fa5, fa5          #; fa5  = 34.551, fa5  = 34.551
       0     1885        M 0x800007ec addi    a0, a0, 80             #; a0  = 0x800037e8, (wrb) a0  <-- 0x80003838
                         M 0x800007e4 fsgnj.d ft0, fa6, fa6          #; fa6  = 37.692, fa6  = 37.692, (f:fpu) ft0  <-- 34.551
       0     1886        M                                           #; (f:fpu) ft0  <-- 37.692
       0     1895        M 0x800007f4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037f4
       0     1896        M 0x800007f8 addi    a0, a0, 76             #; a0  = 0x800037f4, (wrb) a0  <-- 0x80003840
                         M 0x800007f0 fld     fa5, 0(a0)             #; fa5  <~~ Doub[0x80003838]
       0     1899        M 0x800007fc fld     fa6, 0(a0)             #; fa6  <~~ Doub[0x80003840]
       0     1905        M                                           #; (f:lsu) fa5  <-- 40.833
       0     1906        M 0x80000800 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003800
       0     1907        M 0x80000804 addi    a0, a0, 72             #; a0  = 0x80003800, (wrb) a0  <-- 0x80003848
       0     1908        M                                           #; (f:lsu) fa6  <-- 43.9740000
       0     1909        M 0x8000080c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000380c
       0     1910        M 0x80000808 fld     fa7, 0(a0)             #; fa7  <~~ Doub[0x80003848]
       0     1918        M 0x80000810 addi    a0, a0, 68             #; a0  = 0x8000380c, (wrb) a0  <-- 0x80003850
       0     1919        M                                           #; (f:lsu) fa7  <-- 47.115
       0     1921        M 0x80000814 fld     ft8, 0(a0)             #; ft8  <~~ Doub[0x80003850]
       0     1922        M 0x80000818 fsgnj.d ft0, fa5, fa5          #; fa5  = 40.833, fa5  = 40.833
       0     1923        M 0x8000081c fsgnj.d ft0, fa6, fa6          #; fa6  = 43.9740000, fa6  = 43.9740000, (f:fpu) ft0  <-- 40.833
       0     1924        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     1930        M                                           #; (f:lsu) ft8  <-- 50.256
       0     1932        M 0x80000828 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003828
                         M 0x80000820 fsgnj.d ft0, fa7, fa7          #; fa7  = 47.115, fa7  = 47.115
       0     1933        M 0x8000082c addi    a0, a0, 48             #; a0  = 0x80003828, (wrb) a0  <-- 0x80003858
                         M 0x80000824 fsgnj.d ft0, ft8, ft8          #; ft8  = 50.256, ft8  = 50.256, (f:fpu) ft0  <-- 47.115
       0     1934        M                                           #; (f:fpu) ft0  <-- 50.256
       0     1943        M 0x80000834 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003834
       0     1944        M 0x80000838 addi    a0, a0, 44             #; a0  = 0x80003834, (wrb) a0  <-- 0x80003860
                         M 0x80000830 fld     fa5, 0(a0)             #; fa5  <~~ Doub[0x80003858]
       0     1947        M 0x8000083c fld     fa6, 0(a0)             #; fa6  <~~ Doub[0x80003860]
       0     1953        M                                           #; (f:lsu) fa5  <-- 53.397
       0     1954        M 0x80000840 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003840
       0     1955        M 0x80000844 addi    a0, a0, 40             #; a0  = 0x80003840, (wrb) a0  <-- 0x80003868
       0     1956        M                                           #; (f:lsu) fa6  <-- 56.538
       0     1957        M 0x8000084c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000384c
       0     1958        M 0x80000848 fld     fa7, 0(a0)             #; fa7  <~~ Doub[0x80003868]
       0     1966        M 0x80000850 addi    a0, a0, 36             #; a0  = 0x8000384c, (wrb) a0  <-- 0x80003870
       0     1967        M                                           #; (f:lsu) fa7  <-- 59.679
       0     1969        M 0x80000854 fld     ft8, 0(a0)             #; ft8  <~~ Doub[0x80003870]
       0     1970        M 0x80000858 fsgnj.d ft0, fa5, fa5          #; fa5  = 53.397, fa5  = 53.397
       0     1971        M 0x8000085c fsgnj.d ft0, fa6, fa6          #; fa6  = 56.538, fa6  = 56.538, (f:fpu) ft0  <-- 53.397
       0     1972        M                                           #; (f:fpu) ft0  <-- 56.538
       0     1978        M                                           #; (f:lsu) ft8  <-- 62.82
       0     1980        M 0x80000860 fsgnj.d ft0, fa7, fa7          #; fa7  = 59.679, fa7  = 59.679
       0     1981        M 0x80000864 fsgnj.d ft0, ft8, ft8          #; ft8  = 62.82, ft8  = 62.82, (f:fpu) ft0  <-- 59.679
       0     1982        M 0x80000868 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141, (f:fpu) ft0  <-- 62.82
       0     1983        M 0x8000086c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
       0     1984        M                                           #; (f:fpu) ft0  <-- 6.282
       0     1992        M 0x80000870 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.423, ft5  = 9.423
       0     1993        M 0x80000874 fsgnj.d ft0, ft6, ft6          #; ft6  = 12.564, ft6  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1994        M 0x80000878 fsgnj.d ft0, ft7, ft7          #; ft7  = 15.705, ft7  = 15.705, (f:fpu) ft0  <-- 12.564
       0     1995        M 0x8000087c fsgnj.d ft0, fa0, fa0          #; fa0  = 18.846, fa0  = 18.846, (f:fpu) ft0  <-- 15.705
       0     1996        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2004        M 0x80000880 fsgnj.d ft0, fa1, fa1          #; fa1  = 21.9870000, fa1  = 21.9870000
       0     2005        M 0x80000884 fsgnj.d ft0, fa2, fa2          #; fa2  = 25.128, fa2  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     2006        M 0x80000888 fsgnj.d ft0, fa3, fa3          #; fa3  = 28.269, fa3  = 28.269, (f:fpu) ft0  <-- 25.128
       0     2007        M 0x8000088c fsgnj.d ft0, fa4, fa4          #; fa4  = 31.41, fa4  = 31.41, (f:fpu) ft0  <-- 28.269
       0     2008        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2015        M 0x80000894 j       pc + 0x54              #; goto 0x800008e8
                         M 0x80000890 csrrci  a0, ssr, 1             #; 
       0     2026        M 0x800008e8 srli    a0, s6, 20             #; s6  = 0x001000f0, (wrb) a0  <-- 1
       0     2027        M 0x800008ec snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     2038        M 0x800008f0 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     2039        M 0x800008f4 addi    a1, a1, -327           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011feb9
       0     2040        M 0x800008f8 sltu    a1, s6, a1             #; s6  = 0x001000f0, a1  = 0x0011feb9, (wrb) a1  <-- 1
       0     2041        M 0x800008fc and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     2050        M 0x80000900 beqz    a0, pc + 124           #; a0  = 1, not taken
       0     2051        M 0x80000904 li      a1, 0                  #; (wrb) a1  <-- 0
       0     2052        M 0x80000908 li      a0, 8                  #; (wrb) a0  <-- 8
       0     2053        M 0x8000090c li      a2, 41                 #; (wrb) a2  <-- 41
       0     2062        M 0x80000910 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2063        M 0x80000914 scfgw   a2, a3                 #; a2  = 41, a3  = 64
       0     2064        M 0x80000918 li      a2, 192                #; (wrb) a2  <-- 192
       0     2065        M 0x8000091c scfgw   a0, a2                 #; a0  = 8, a2  = 192
       0     2074        M 0x80000920 li      a0, 32                 #; (wrb) a0  <-- 32
       0     2075        M 0x80000924 scfgw   zero, a0               #; a0  = 32
       0     2076        M 0x80000928 scfgwi  s6, 896                #; s6  = 0x001000f0
       0     2078        M 0x8000092c csrrsi  a0, ssr, 1             #; 
       0     2086        M 0x80000930 li      a2, 42                 #; (wrb) a2  <-- 42
       0     2087        M 0x80000934 li      a3, 1                  #; (wrb) a3  <-- 1
       0     2089        M 0x8000093c lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
       0     2090        M 0x80000938 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x800037d8]
       0     2098        M 0x80000940 addi    a0, a0, -819           #; a0  = 0xccccd000, (wrb) a0  <-- 0xcccccccd
       0     2099        M 0x80000944 li      a4, 20                 #; (wrb) a4  <-- 20
                         M                                           #; (f:lsu) ft3  <-- 3.141
       0     2100        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 0, a0  = 0xcccccccd
       0     2103        M                                           #; (acc) a5  <-- 0x0047d793
       0     2104        M 0x8000094c srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     2110        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2113        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2114        M 0x80000954 sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
       0     2116        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2117        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2118        M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2121        M                                           #; (f:fpu) ft4  <-- 3.141
       0     2123        M 0x80000964 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     2124        M 0x80000968 addi    a2, a2, -1             #; a2  = 42, (wrb) a2  <-- 41
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2125        M 0x8000096c addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M                                           #; (f:fpu) ft0  <-- 3.141
       0     2134        M 0x80000970 bnez    a2, pc - 40            #; a2  = 41, taken, goto 0x80000948
       0     2135        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 1, a0  = 0xcccccccd
       0     2138        M                                           #; (acc) a5  <-- 0x0047d793
       0     2139        M 0x8000094c srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     2140        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2143        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2144        M 0x80000954 sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
       0     2146        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2147        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2148        M 0x80000964 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2149        M 0x80000968 addi    a2, a2, -1             #; a2  = 41, (wrb) a2  <-- 40
       0     2150        M 0x8000096c addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
       0     2151        M 0x80000970 bnez    a2, pc - 40            #; a2  = 40, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2152        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 2, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2153        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2155        M                                           #; (acc) a5  <-- 0x0047d793
       0     2156        M 0x8000094c srli    a5, a5, 4              #; a5  = 1, (wrb) a5  <-- 0
       0     2157        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2160        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2161        M 0x80000954 sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
       0     2163        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2164        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2165        M 0x80000964 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2166        M 0x80000968 addi    a2, a2, -1             #; a2  = 40, (wrb) a2  <-- 39
       0     2167        M 0x8000096c addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
       0     2168        M 0x80000970 bnez    a2, pc - 40            #; a2  = 39, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2169        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 3, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2170        M                                           #; (f:fpu) ft0  <-- 9.423
       0     2172        M                                           #; (acc) a5  <-- 0x0047d793
       0     2173        M 0x8000094c srli    a5, a5, 4              #; a5  = 2, (wrb) a5  <-- 0
       0     2174        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2177        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2178        M 0x80000954 sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
       0     2180        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2181        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2182        M 0x80000964 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2183        M 0x80000968 addi    a2, a2, -1             #; a2  = 39, (wrb) a2  <-- 38
       0     2184        M 0x8000096c addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
       0     2185        M 0x80000970 bnez    a2, pc - 40            #; a2  = 38, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2186        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 4, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2187        M                                           #; (f:fpu) ft0  <-- 12.564
       0     2189        M                                           #; (acc) a5  <-- 0x0047d793
       0     2190        M 0x8000094c srli    a5, a5, 4              #; a5  = 3, (wrb) a5  <-- 0
       0     2191        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2194        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2195        M 0x80000954 sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
       0     2197        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2198        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2199        M 0x80000964 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2200        M 0x80000968 addi    a2, a2, -1             #; a2  = 38, (wrb) a2  <-- 37
       0     2201        M 0x8000096c addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
       0     2202        M 0x80000970 bnez    a2, pc - 40            #; a2  = 37, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2203        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 5, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2204        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2206        M                                           #; (acc) a5  <-- 0x0047d793
       0     2207        M 0x8000094c srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
       0     2208        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2211        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2212        M 0x80000954 sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
       0     2214        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2215        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2216        M 0x80000964 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2217        M 0x80000968 addi    a2, a2, -1             #; a2  = 37, (wrb) a2  <-- 36
       0     2218        M 0x8000096c addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
       0     2219        M 0x80000970 bnez    a2, pc - 40            #; a2  = 36, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2220        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 6, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2221        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2223        M                                           #; (acc) a5  <-- 0x0047d793
       0     2224        M 0x8000094c srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
       0     2225        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2228        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2229        M 0x80000954 sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
       0     2231        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2232        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2233        M 0x80000964 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2234        M 0x80000968 addi    a2, a2, -1             #; a2  = 36, (wrb) a2  <-- 35
       0     2235        M 0x8000096c addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
       0     2236        M 0x80000970 bnez    a2, pc - 40            #; a2  = 35, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2237        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 7, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2238        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2240        M                                           #; (acc) a5  <-- 0x0047d793
       0     2241        M 0x8000094c srli    a5, a5, 4              #; a5  = 5, (wrb) a5  <-- 0
       0     2242        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2245        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2246        M 0x80000954 sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
       0     2248        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2249        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2250        M 0x80000964 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2251        M 0x80000968 addi    a2, a2, -1             #; a2  = 35, (wrb) a2  <-- 34
       0     2252        M 0x8000096c addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
       0     2253        M 0x80000970 bnez    a2, pc - 40            #; a2  = 34, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2254        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 8, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2255        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2257        M                                           #; (acc) a5  <-- 0x0047d793
       0     2258        M 0x8000094c srli    a5, a5, 4              #; a5  = 6, (wrb) a5  <-- 0
       0     2259        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2262        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2263        M 0x80000954 sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
       0     2265        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2266        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2267        M 0x80000964 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2268        M 0x80000968 addi    a2, a2, -1             #; a2  = 34, (wrb) a2  <-- 33
       0     2269        M 0x8000096c addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
       0     2270        M 0x80000970 bnez    a2, pc - 40            #; a2  = 33, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2271        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 9, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2272        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2274        M                                           #; (acc) a5  <-- 0x0047d793
       0     2275        M 0x8000094c srli    a5, a5, 4              #; a5  = 7, (wrb) a5  <-- 0
       0     2276        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2279        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2280        M 0x80000954 sub     a5, a3, a5             #; a3  = 10, a5  = 0, (wrb) a5  <-- 10
       0     2282        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2283        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2284        M 0x80000964 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2285        M 0x80000968 addi    a2, a2, -1             #; a2  = 33, (wrb) a2  <-- 32
       0     2286        M 0x8000096c addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
       0     2287        M 0x80000970 bnez    a2, pc - 40            #; a2  = 32, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2288        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 10, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2289        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2291        M                                           #; (acc) a5  <-- 0x0047d793
       0     2292        M 0x8000094c srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
       0     2293        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2296        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2297        M 0x80000954 sub     a5, a3, a5             #; a3  = 11, a5  = 0, (wrb) a5  <-- 11
       0     2299        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2300        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2301        M 0x80000964 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2302        M 0x80000968 addi    a2, a2, -1             #; a2  = 32, (wrb) a2  <-- 31
       0     2303        M 0x8000096c addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
       0     2304        M 0x80000970 bnez    a2, pc - 40            #; a2  = 31, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2305        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 11, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2306        M                                           #; (f:fpu) ft0  <-- 34.551
       0     2308        M                                           #; (acc) a5  <-- 0x0047d793
       0     2309        M 0x8000094c srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
       0     2310        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2313        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2314        M 0x80000954 sub     a5, a3, a5             #; a3  = 12, a5  = 0, (wrb) a5  <-- 12
       0     2316        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2317        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2318        M 0x80000964 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2319        M 0x80000968 addi    a2, a2, -1             #; a2  = 31, (wrb) a2  <-- 30
       0     2320        M 0x8000096c addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
       0     2321        M 0x80000970 bnez    a2, pc - 40            #; a2  = 30, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2322        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 12, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2323        M                                           #; (f:fpu) ft0  <-- 37.692
       0     2325        M                                           #; (acc) a5  <-- 0x0047d793
       0     2326        M 0x8000094c srli    a5, a5, 4              #; a5  = 9, (wrb) a5  <-- 0
       0     2327        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2330        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2331        M 0x80000954 sub     a5, a3, a5             #; a3  = 13, a5  = 0, (wrb) a5  <-- 13
       0     2333        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2334        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2335        M 0x80000964 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2336        M 0x80000968 addi    a2, a2, -1             #; a2  = 30, (wrb) a2  <-- 29
       0     2337        M 0x8000096c addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
       0     2338        M 0x80000970 bnez    a2, pc - 40            #; a2  = 29, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2339        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 13, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2340        M                                           #; (f:fpu) ft0  <-- 40.833
       0     2342        M                                           #; (acc) a5  <-- 0x0047d793
       0     2343        M 0x8000094c srli    a5, a5, 4              #; a5  = 10, (wrb) a5  <-- 0
       0     2344        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2347        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2348        M 0x80000954 sub     a5, a3, a5             #; a3  = 14, a5  = 0, (wrb) a5  <-- 14
       0     2350        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     2351        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2352        M 0x80000964 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2353        M 0x80000968 addi    a2, a2, -1             #; a2  = 29, (wrb) a2  <-- 28
       0     2354        M 0x8000096c addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
       0     2355        M 0x80000970 bnez    a2, pc - 40            #; a2  = 28, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2356        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 14, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2357        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2359        M                                           #; (acc) a5  <-- 0x0047d793
       0     2360        M 0x8000094c srli    a5, a5, 4              #; a5  = 11, (wrb) a5  <-- 0
       0     2361        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2364        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2365        M 0x80000954 sub     a5, a3, a5             #; a3  = 15, a5  = 0, (wrb) a5  <-- 15
       0     2367        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     2368        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2369        M 0x80000964 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2370        M 0x80000968 addi    a2, a2, -1             #; a2  = 28, (wrb) a2  <-- 27
       0     2371        M 0x8000096c addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
       0     2372        M 0x80000970 bnez    a2, pc - 40            #; a2  = 27, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2373        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 15, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     2374        M                                           #; (f:fpu) ft0  <-- 47.115
       0     2376        M                                           #; (acc) a5  <-- 0x0047d793
       0     2377        M 0x8000094c srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
       0     2378        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2381        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2382        M 0x80000954 sub     a5, a3, a5             #; a3  = 16, a5  = 0, (wrb) a5  <-- 16
       0     2384        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     2385        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2386        M 0x80000964 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     2387        M 0x80000968 addi    a2, a2, -1             #; a2  = 27, (wrb) a2  <-- 26
       0     2388        M 0x8000096c addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
       0     2389        M 0x80000970 bnez    a2, pc - 40            #; a2  = 26, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     2390        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 16, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     2391        M                                           #; (f:fpu) ft0  <-- 50.256
       0     2393        M                                           #; (acc) a5  <-- 0x0047d793
       0     2394        M 0x8000094c srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
       0     2395        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2398        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2399        M 0x80000954 sub     a5, a3, a5             #; a3  = 17, a5  = 0, (wrb) a5  <-- 17
       0     2401        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     2402        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2403        M 0x80000964 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     2404        M 0x80000968 addi    a2, a2, -1             #; a2  = 26, (wrb) a2  <-- 25
       0     2405        M 0x8000096c addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
       0     2406        M 0x80000970 bnez    a2, pc - 40            #; a2  = 25, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     2407        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 17, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     2408        M                                           #; (f:fpu) ft0  <-- 53.397
       0     2410        M                                           #; (acc) a5  <-- 0x0047d793
       0     2411        M 0x8000094c srli    a5, a5, 4              #; a5  = 13, (wrb) a5  <-- 0
       0     2412        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2415        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2416        M 0x80000954 sub     a5, a3, a5             #; a3  = 18, a5  = 0, (wrb) a5  <-- 18
       0     2418        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     2419        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2420        M 0x80000964 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     2421        M 0x80000968 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
       0     2422        M 0x8000096c addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
       0     2423        M 0x80000970 bnez    a2, pc - 40            #; a2  = 24, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     2424        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 18, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     2425        M                                           #; (f:fpu) ft0  <-- 56.538
       0     2427        M                                           #; (acc) a5  <-- 0x0047d793
       0     2428        M 0x8000094c srli    a5, a5, 4              #; a5  = 14, (wrb) a5  <-- 0
       0     2429        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2432        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2433        M 0x80000954 sub     a5, a3, a5             #; a3  = 19, a5  = 0, (wrb) a5  <-- 19
       0     2435        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     2436        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2437        M 0x80000964 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     2438        M 0x80000968 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
       0     2439        M 0x8000096c addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
       0     2440        M 0x80000970 bnez    a2, pc - 40            #; a2  = 23, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     2441        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 19, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     2442        M                                           #; (f:fpu) ft0  <-- 59.679
       0     2444        M                                           #; (acc) a5  <-- 0x0047d793
       0     2445        M 0x8000094c srli    a5, a5, 4              #; a5  = 15, (wrb) a5  <-- 0
       0     2446        M 0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2449        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2450        M 0x80000954 sub     a5, a3, a5             #; a3  = 20, a5  = 0, (wrb) a5  <-- 20
       0     2452        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     2453        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2454        M 0x80000964 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     2455        M 0x80000968 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
       0     2456        M 0x8000096c addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
       0     2457        M 0x80000970 bnez    a2, pc - 40            #; a2  = 22, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     2458        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 20, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     2459        M                                           #; (f:fpu) ft0  <-- 62.82
       0     2461        M                                           #; (acc) a5  <-- 0x0047d793
       0     2462        M 0x8000094c srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
       0     2463        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2466        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2467        M 0x80000954 sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
       0     2469        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2470        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2471        M 0x80000964 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2472        M 0x80000968 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
       0     2473        M 0x8000096c addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
       0     2474        M 0x80000970 bnez    a2, pc - 40            #; a2  = 21, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2475        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 21, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2476        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2478        M                                           #; (acc) a5  <-- 0x0047d793
       0     2479        M 0x8000094c srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
       0     2480        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2483        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2484        M 0x80000954 sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
       0     2486        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2487        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2488        M 0x80000964 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2489        M 0x80000968 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
       0     2490        M 0x8000096c addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
       0     2491        M 0x80000970 bnez    a2, pc - 40            #; a2  = 20, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2492        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 22, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2493        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2495        M                                           #; (acc) a5  <-- 0x0047d793
       0     2496        M 0x8000094c srli    a5, a5, 4              #; a5  = 17, (wrb) a5  <-- 1
       0     2497        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2500        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2501        M 0x80000954 sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
       0     2503        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2504        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2505        M 0x80000964 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2506        M 0x80000968 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
       0     2507        M 0x8000096c addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
       0     2508        M 0x80000970 bnez    a2, pc - 40            #; a2  = 19, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2509        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 23, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2510        M                                           #; (f:fpu) ft0  <-- 9.423
       0     2512        M                                           #; (acc) a5  <-- 0x0047d793
       0     2513        M 0x8000094c srli    a5, a5, 4              #; a5  = 18, (wrb) a5  <-- 1
       0     2514        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2517        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2518        M 0x80000954 sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
       0     2520        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2521        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2522        M 0x80000964 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2523        M 0x80000968 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
       0     2524        M 0x8000096c addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
       0     2525        M 0x80000970 bnez    a2, pc - 40            #; a2  = 18, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2526        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 24, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2527        M                                           #; (f:fpu) ft0  <-- 12.564
       0     2529        M                                           #; (acc) a5  <-- 0x0047d793
       0     2530        M 0x8000094c srli    a5, a5, 4              #; a5  = 19, (wrb) a5  <-- 1
       0     2531        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2534        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2535        M 0x80000954 sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
       0     2537        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2538        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2539        M 0x80000964 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2540        M 0x80000968 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
       0     2541        M 0x8000096c addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
       0     2542        M 0x80000970 bnez    a2, pc - 40            #; a2  = 17, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2543        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 25, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2544        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2546        M                                           #; (acc) a5  <-- 0x0047d793
       0     2547        M 0x8000094c srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
       0     2548        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2551        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2552        M 0x80000954 sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
       0     2554        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2555        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2556        M 0x80000964 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2557        M 0x80000968 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
       0     2558        M 0x8000096c addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
       0     2559        M 0x80000970 bnez    a2, pc - 40            #; a2  = 16, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2560        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 26, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2561        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2563        M                                           #; (acc) a5  <-- 0x0047d793
       0     2564        M 0x8000094c srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
       0     2565        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2568        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2569        M 0x80000954 sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
       0     2571        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2572        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2573        M 0x80000964 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2574        M 0x80000968 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
       0     2575        M 0x8000096c addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
       0     2576        M 0x80000970 bnez    a2, pc - 40            #; a2  = 15, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2577        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 27, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2578        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2580        M                                           #; (acc) a5  <-- 0x0047d793
       0     2581        M 0x8000094c srli    a5, a5, 4              #; a5  = 21, (wrb) a5  <-- 1
       0     2582        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2585        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2586        M 0x80000954 sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
       0     2588        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2589        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2590        M 0x80000964 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2591        M 0x80000968 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
       0     2592        M 0x8000096c addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
       0     2593        M 0x80000970 bnez    a2, pc - 40            #; a2  = 14, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2594        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 28, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2595        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2597        M                                           #; (acc) a5  <-- 0x0047d793
       0     2598        M 0x8000094c srli    a5, a5, 4              #; a5  = 22, (wrb) a5  <-- 1
       0     2599        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2602        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2603        M 0x80000954 sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
       0     2605        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2606        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2607        M 0x80000964 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2608        M 0x80000968 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
       0     2609        M 0x8000096c addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
       0     2610        M 0x80000970 bnez    a2, pc - 40            #; a2  = 13, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2611        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 29, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2612        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2614        M                                           #; (acc) a5  <-- 0x0047d793
       0     2615        M 0x8000094c srli    a5, a5, 4              #; a5  = 23, (wrb) a5  <-- 1
       0     2616        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2619        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2620        M 0x80000954 sub     a5, a3, a5             #; a3  = 30, a5  = 20, (wrb) a5  <-- 10
       0     2622        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2623        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2624        M 0x80000964 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2625        M 0x80000968 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
       0     2626        M 0x8000096c addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
       0     2627        M 0x80000970 bnez    a2, pc - 40            #; a2  = 12, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2628        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 30, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2629        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2631        M                                           #; (acc) a5  <-- 0x0047d793
       0     2632        M 0x8000094c srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
       0     2633        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2636        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2637        M 0x80000954 sub     a5, a3, a5             #; a3  = 31, a5  = 20, (wrb) a5  <-- 11
       0     2639        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2640        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2641        M 0x80000964 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2642        M 0x80000968 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
       0     2643        M 0x8000096c addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
       0     2644        M 0x80000970 bnez    a2, pc - 40            #; a2  = 11, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2645        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 31, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2646        M                                           #; (f:fpu) ft0  <-- 34.551
       0     2648        M                                           #; (acc) a5  <-- 0x0047d793
       0     2649        M 0x8000094c srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
       0     2650        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2653        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2654        M 0x80000954 sub     a5, a3, a5             #; a3  = 32, a5  = 20, (wrb) a5  <-- 12
       0     2656        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2657        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2658        M 0x80000964 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2659        M 0x80000968 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
       0     2660        M 0x8000096c addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
       0     2661        M 0x80000970 bnez    a2, pc - 40            #; a2  = 10, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2662        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 32, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2663        M                                           #; (f:fpu) ft0  <-- 37.692
       0     2665        M                                           #; (acc) a5  <-- 0x0047d793
       0     2666        M 0x8000094c srli    a5, a5, 4              #; a5  = 25, (wrb) a5  <-- 1
       0     2667        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2670        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2671        M 0x80000954 sub     a5, a3, a5             #; a3  = 33, a5  = 20, (wrb) a5  <-- 13
       0     2673        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2674        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2675        M 0x80000964 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2676        M 0x80000968 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
       0     2677        M 0x8000096c addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
       0     2678        M 0x80000970 bnez    a2, pc - 40            #; a2  = 9, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2679        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 33, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2680        M                                           #; (f:fpu) ft0  <-- 40.833
       0     2682        M                                           #; (acc) a5  <-- 0x0047d793
       0     2683        M 0x8000094c srli    a5, a5, 4              #; a5  = 26, (wrb) a5  <-- 1
       0     2684        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2687        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2688        M 0x80000954 sub     a5, a3, a5             #; a3  = 34, a5  = 20, (wrb) a5  <-- 14
       0     2690        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     2691        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2692        M 0x80000964 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2693        M 0x80000968 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
       0     2694        M 0x8000096c addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
       0     2695        M 0x80000970 bnez    a2, pc - 40            #; a2  = 8, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2696        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 34, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2697        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2699        M                                           #; (acc) a5  <-- 0x0047d793
       0     2700        M 0x8000094c srli    a5, a5, 4              #; a5  = 27, (wrb) a5  <-- 1
       0     2701        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2704        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2705        M 0x80000954 sub     a5, a3, a5             #; a3  = 35, a5  = 20, (wrb) a5  <-- 15
       0     2707        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     2708        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2709        M 0x80000964 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2710        M 0x80000968 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
       0     2711        M 0x8000096c addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
       0     2712        M 0x80000970 bnez    a2, pc - 40            #; a2  = 7, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2713        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 35, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     2714        M                                           #; (f:fpu) ft0  <-- 47.115
       0     2716        M                                           #; (acc) a5  <-- 0x0047d793
       0     2717        M 0x8000094c srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
       0     2718        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2721        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2722        M 0x80000954 sub     a5, a3, a5             #; a3  = 36, a5  = 20, (wrb) a5  <-- 16
       0     2724        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     2725        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2726        M 0x80000964 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     2727        M 0x80000968 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
       0     2728        M 0x8000096c addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
       0     2729        M 0x80000970 bnez    a2, pc - 40            #; a2  = 6, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     2730        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 36, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     2731        M                                           #; (f:fpu) ft0  <-- 50.256
       0     2733        M                                           #; (acc) a5  <-- 0x0047d793
       0     2734        M 0x8000094c srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
       0     2735        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2738        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2739        M 0x80000954 sub     a5, a3, a5             #; a3  = 37, a5  = 20, (wrb) a5  <-- 17
       0     2741        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     2742        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2743        M 0x80000964 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     2744        M 0x80000968 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     2745        M 0x8000096c addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
       0     2746        M 0x80000970 bnez    a2, pc - 40            #; a2  = 5, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     2747        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 37, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     2748        M                                           #; (f:fpu) ft0  <-- 53.397
       0     2750        M                                           #; (acc) a5  <-- 0x0047d793
       0     2751        M 0x8000094c srli    a5, a5, 4              #; a5  = 29, (wrb) a5  <-- 1
       0     2752        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2755        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2756        M 0x80000954 sub     a5, a3, a5             #; a3  = 38, a5  = 20, (wrb) a5  <-- 18
       0     2758        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     2759        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2760        M 0x80000964 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     2761        M 0x80000968 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     2762        M 0x8000096c addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
       0     2763        M 0x80000970 bnez    a2, pc - 40            #; a2  = 4, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     2764        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 38, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     2765        M                                           #; (f:fpu) ft0  <-- 56.538
       0     2767        M                                           #; (acc) a5  <-- 0x0047d793
       0     2768        M 0x8000094c srli    a5, a5, 4              #; a5  = 30, (wrb) a5  <-- 1
       0     2769        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2772        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2773        M 0x80000954 sub     a5, a3, a5             #; a3  = 39, a5  = 20, (wrb) a5  <-- 19
       0     2775        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     2776        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2777        M 0x80000964 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     2778        M 0x80000968 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     2779        M 0x8000096c addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
       0     2780        M 0x80000970 bnez    a2, pc - 40            #; a2  = 3, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     2781        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 39, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     2782        M                                           #; (f:fpu) ft0  <-- 59.679
       0     2784        M                                           #; (acc) a5  <-- 0x0047d793
       0     2785        M 0x8000094c srli    a5, a5, 4              #; a5  = 31, (wrb) a5  <-- 1
       0     2786        M 0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2789        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2790        M 0x80000954 sub     a5, a3, a5             #; a3  = 40, a5  = 20, (wrb) a5  <-- 20
       0     2792        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     2793        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2794        M 0x80000964 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     2795        M 0x80000968 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     2796        M 0x8000096c addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
       0     2797        M 0x80000970 bnez    a2, pc - 40            #; a2  = 2, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     2798        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 40, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     2799        M                                           #; (f:fpu) ft0  <-- 62.82
       0     2801        M                                           #; (acc) a5  <-- 0x0047d793
       0     2802        M 0x8000094c srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
       0     2803        M 0x80000950 mul     a5, a5, a4             #; a5  = 2, a4  = 20
       0     2806        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2807        M 0x80000954 sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
       0     2809        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2810        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2811        M 0x80000964 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2812        M 0x80000968 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     2813        M 0x8000096c addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
       0     2814        M 0x80000970 bnez    a2, pc - 40            #; a2  = 1, taken, goto 0x80000948
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2815        M 0x80000948 mulhu   a5, a1, a0             #; a1  = 41, a0  = 0xcccccccd
                         M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2816        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2818        M                                           #; (acc) a5  <-- 0x0047d793
       0     2819        M 0x8000094c srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
       0     2820        M 0x80000950 mul     a5, a5, a4             #; a5  = 2, a4  = 20
       0     2823        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2824        M 0x80000954 sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
       0     2826        M 0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2827        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2828        M 0x80000964 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
                         M 0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2829        M 0x80000968 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     2830        M 0x8000096c addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
       0     2831        M 0x80000970 bnez    a2, pc - 40            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2832        M 0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2833        M 0x80000978 j       pc + 0x54              #; goto 0x800009cc
                         M 0x80000974 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 6.282
       0     2844        M 0x800009cc li      a3, 5                  #; (wrb) a3  <-- 5
       0     2856        M 0x800009d0 li      a4, 6                  #; (wrb) a4  <-- 6
       0     2857        M 0x800009d4 li      a5, 7                  #; (wrb) a5  <-- 7
       0     2858        M 0x800009d8 li      s3, 6                  #; (wrb) s3  <-- 6
       0     2859        M 0x800009dc mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     2868        M 0x800009e0 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     2869        M 0x800009e4 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     2870        M 0x800009e8 auipc   ra, 0x2                #; (wrb) ra  <-- 0x800029e8
       0     2871        M 0x800009ec jalr    ra, ra, 868            #; ra  = 0x800029e8, (wrb) ra  <-- 0x800009f0, goto 0x80002d4c
       0     2891        M 0x80002d4c addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
       0     2903        M 0x80002d50 sw      ra, 44(sp)             #; sp  = 0x0011ff00, 0x800009f0 ~~> Word[0x0011ff2c]
       0     2904        M 0x80002d54 sw      s0, 40(sp)             #; sp  = 0x0011ff00, 0x00100240 ~~> Word[0x0011ff28]
       0     2905        M 0x80002d58 sw      s1, 36(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff24]
       0     2906        M 0x80002d5c sw      s2, 32(sp)             #; sp  = 0x0011ff00, 0x00100000 ~~> Word[0x0011ff20]
       0     2915        M 0x80002d60 sw      s3, 28(sp)             #; sp  = 0x0011ff00, 6 ~~> Word[0x0011ff1c]
       0     2916        M 0x80002d64 sw      s4, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
       0     2917        M 0x80002d68 sw      s5, 20(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff14]
       0     2918        M 0x80002d6c sw      s6, 16(sp)             #; sp  = 0x0011ff00, 0x001000f0 ~~> Word[0x0011ff10]
       0     2927        M 0x80002d70 sw      s7, 12(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff0c]
       0     2928        M 0x80002d74 mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
       0     2929        M 0x80002d78 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     2930        M 0x80002d7c slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     2939        M 0x80002d80 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     2940        M 0x80002d84 bnez    a3, pc + 808           #; a3  = 0, not taken
       0     2941        M 0x80002d88 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
       0     2942        M 0x80002d8c addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
       0     2951        M 0x80002d90 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
       0     2952        M 0x80002d94 addi    t3, s6, -1             #; s6  = 5, (wrb) t3  <-- 4
       0     2953        M 0x80002d98 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
       0     2954        M 0x80002d9c mul     a0, s2, t3             #; s2  = 56, t3  = 4
       0     2963        M 0x80002da0 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
       0     2964        M 0x80002da4 add     t6, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) t6  <-- 0x00100350
       0     2965        M 0x80002da8 sltu    a0, t6, a0             #; t6  = 0x00100350, a0  = 272, (wrb) a0  <-- 0
       0     2966        M 0x80002dac bge     zero, a4, pc + 80      #; a4  = 6, not taken
       0     2975        M 0x80002db0 addi    a7, a4, -1             #; a4  = 6, (wrb) a7  <-- 5
       0     2976        M 0x80002db4 slli    t1, a7, 3              #; a7  = 5, (wrb) t1  <-- 40
       0     2977        M 0x80002db8 slli    s5, a4, 3              #; a4  = 6, (wrb) s5  <-- 48
       0     2978        M 0x80002dbc mul     s0, s5, t3             #; s5  = 48, t3  = 4
       0     2987        M 0x80002dc0 mul     t0, s2, a7             #; s2  = 56, a7  = 5
       0     2990        M                                           #; (acc) t2  <-- 0x01d283b3
       0     2991        M 0x80002dc4 add     t2, t0, t4             #; t0  = 280, t4  = 48, (wrb) t2  <-- 328
       0     2992        M 0x80002dc8 add     t5, t2, a2             #; t2  = 328, a2  = 0x001000f0, (wrb) t5  <-- 0x00100238
       0     2993        M 0x80002dcc beqz    a0, pc + 112           #; a0  = 0, taken, goto 0x80002e3c
       0     3010        M 0x80002e3c sltu    a3, t6, a2             #; t6  = 0x00100350, a2  = 0x001000f0, (wrb) a3  <-- 0
       0     3022        M 0x80002e40 add     s3, t1, s0             #; t1  = 40, s0  = 192, (wrb) s3  <-- 232
       0     3023        M 0x80002e44 bgeu    t5, t2, pc - 104       #; t5  = 0x00100238, t2  = 328, taken, goto 0x80002ddc
       0     3024        M 0x80002ddc sltu    s0, t5, s7             #; t5  = 0x00100238, s7  = 0x00100240, (wrb) s0  <-- 1
       0     3036        M 0x80002de0 add     s4, s3, a1             #; s3  = 232, a1  = 0x00100000, (wrb) s4  <-- 0x001000e8
       0     3037        M 0x80002de4 bnez    a0, pc + 112           #; a0  = 0, not taken
       0     3038        M 0x80002de8 sltu    s1, t6, a1             #; t6  = 0x00100350, a1  = 0x00100000, (wrb) s1  <-- 0
       0     3039        M 0x80002dec or      a3, a3, s0             #; a3  = 0, s0  = 1, (wrb) a3  <-- 1
       0     3048        M 0x80002df0 bltu    s4, s3, pc + 112       #; s4  = 0x001000e8, s3  = 232, not taken
       0     3049        M 0x80002df4 sltu    s0, s4, s7             #; s4  = 0x001000e8, s7  = 0x00100240, (wrb) s0  <-- 1
       0     3050        M 0x80002df8 j       pc + 0x6c              #; goto 0x80002e64
       0     3060        M 0x80002e64 or      s0, s0, s1             #; s0  = 1, s1  = 0, (wrb) s0  <-- 1
       0     3061        M 0x80002e68 and     s0, a3, s0             #; a3  = 1, s0  = 1, (wrb) s0  <-- 1
       0     3062        M 0x80002e6c srli    a3, s7, 20             #; s7  = 0x00100240, (wrb) a3  <-- 1
       0     3072        M 0x80002e70 snez    s1, a3                 #; a3  = 1, (wrb) s1  <-- 1
       0     3073        M 0x80002e74 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     3074        M 0x80002e78 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     3075        M 0x80002e7c beqz    a0, pc + 12            #; a0  = 0, taken, goto 0x80002e88
       0     3084        M 0x80002e88 sltu    a0, t6, a3             #; t6  = 0x00100350, a3  = 0x00120001, (wrb) a0  <-- 1
       0     3085        M 0x80002e8c and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     3096        M 0x80002e90 and     a0, a0, s0             #; a0  = 1, s0  = 1, (wrb) a0  <-- 1
       0     3097        M 0x80002e94 srli    s1, a1, 20             #; a1  = 0x00100000, (wrb) s1  <-- 1
       0     3098        M 0x80002e98 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
       0     3099        M 0x80002e9c bgeu    s4, s3, pc + 12        #; s4  = 0x001000e8, s3  = 232, taken, goto 0x80002ea8
       0     3108        M 0x80002ea8 sltu    s0, s4, a3             #; s4  = 0x001000e8, a3  = 0x00120001, (wrb) s0  <-- 1
       0     3109        M 0x80002eac and     s1, s1, s0             #; s1  = 1, s0  = 1, (wrb) s1  <-- 1
       0     3120        M 0x80002eb0 and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     3121        M 0x80002eb4 srli    s1, a2, 20             #; a2  = 0x001000f0, (wrb) s1  <-- 1
       0     3122        M 0x80002eb8 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
       0     3123        M 0x80002ebc bgeu    t5, t2, pc + 12        #; t5  = 0x00100238, t2  = 328, taken, goto 0x80002ec8
       0     3132        M 0x80002ec8 sltu    a3, t5, a3             #; t5  = 0x00100238, a3  = 0x00120001, (wrb) a3  <-- 1
       0     3133        M 0x80002ecc and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     3144        M 0x80002ed0 and     a0, a3, a0             #; a3  = 1, a0  = 1, (wrb) a0  <-- 1
       0     3145        M 0x80002ed4 beqz    a0, pc + 252           #; a0  = 1, not taken
       0     3146        M 0x80002ed8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     3147        M 0x80002edc li      t4, 8                  #; (wrb) t4  <-- 8
       0     3156        M 0x80002ee0 li      s1, 64                 #; (wrb) s1  <-- 64
       0     3157        M 0x80002ee4 scfgw   a6, s1                 #; a6  = 6, s1  = 64
       0     3158        M 0x80002ee8 li      s1, 192                #; (wrb) s1  <-- 192
       0     3159        M 0x80002eec scfgw   t4, s1                 #; t4  = 8, s1  = 192
       0     3168        M 0x80002ef0 li      s1, 96                 #; (wrb) s1  <-- 96
       0     3169        M 0x80002ef4 scfgw   t3, s1                 #; t3  = 4, s1  = 96
       0     3170        M 0x80002ef8 li      s1, 224                #; (wrb) s1  <-- 224
       0     3171        M 0x80002efc scfgw   t4, s1                 #; t4  = 8, s1  = 224
       0     3180        M 0x80002f00 li      s1, 32                 #; (wrb) s1  <-- 32
       0     3181        M 0x80002f04 scfgw   zero, s1               #; s1  = 32
       0     3182        M 0x80002f08 scfgwi  s7, 928                #; s7  = 0x00100240
       0     3183        M 0x80002f0c li      s1, 1                  #; (wrb) s1  <-- 1
       0     3192        M 0x80002f10 addi    s0, s1, 64             #; s1  = 1, (wrb) s0  <-- 65
       0     3193        M 0x80002f14 scfgw   a7, s0                 #; a7  = 5, s0  = 65
       0     3194        M 0x80002f18 addi    s0, s1, 192            #; s1  = 1, (wrb) s0  <-- 193
       0     3195        M 0x80002f1c scfgw   t4, s0                 #; t4  = 8, s0  = 193
       0     3204        M 0x80002f20 sub     s0, zero, t1           #; t1  = 40, (wrb) s0  <-- -40
       0     3205        M 0x80002f24 addi    a3, s1, 96             #; s1  = 1, (wrb) a3  <-- 97
       0     3206        M 0x80002f28 scfgw   a6, a3                 #; a6  = 6, a3  = 97
       0     3207        M 0x80002f2c addi    a3, s1, 224            #; s1  = 1, (wrb) a3  <-- 225
       0     3216        M 0x80002f30 scfgw   s0, a3                 #; s0  = -40, a3  = 225
       0     3217        M 0x80002f34 addi    a3, s1, 128            #; s1  = 1, (wrb) a3  <-- 129
       0     3218        M 0x80002f38 addi    s0, s1, 256            #; s1  = 1, (wrb) s0  <-- 257
       0     3219        M 0x80002f3c scfgw   t3, a3                 #; t3  = 4, a3  = 129, (acc) ra  <-- 0x00de20ab
       0     3228        M 0x80002f40 scfgw   t4, s0                 #; t4  = 8, s0  = 257
       0     3229        M 0x80002f44 addi    a3, s1, 32             #; s1  = 1, (wrb) a3  <-- 33
       0     3230        M 0x80002f48 scfgw   zero, a3               #; a3  = 33
       0     3231        M 0x80002f4c scfgwi  a1, 833                #; a1  = 0x00100000
       0     3240        M 0x80002f50 li      a1, 2                  #; (wrb) a1  <-- 2
       0     3241        M 0x80002f54 addi    a3, a1, 64             #; a1  = 2, (wrb) a3  <-- 66
       0     3242        M 0x80002f58 addi    s1, a1, 192            #; a1  = 2, (wrb) s1  <-- 194
       0     3243        M 0x80002f5c scfgw   a7, a3                 #; a7  = 5, a3  = 66
       0     3252        M 0x80002f60 scfgw   s2, s1                 #; s2  = 56, s1  = 194
       0     3253        M 0x80002f64 sub     a3, t4, t0             #; t4  = 8, t0  = 280, (wrb) a3  <-- -272
       0     3254        M 0x80002f68 addi    s1, a1, 96             #; a1  = 2, (wrb) s1  <-- 98
       0     3255        M 0x80002f6c addi    s0, a1, 224            #; a1  = 2, (wrb) s0  <-- 226
       0     3264        M 0x80002f70 scfgw   a6, s1                 #; a6  = 6, s1  = 98
       0     3265        M 0x80002f74 scfgw   a3, s0                 #; a3  = -272, s0  = 226
       0     3266        M 0x80002f78 sub     a3, zero, t2           #; t2  = 328, (wrb) a3  <-- -328
       0     3267        M 0x80002f7c addi    s1, a1, 128            #; a1  = 2, (wrb) s1  <-- 130
       0     3276        M 0x80002f80 addi    s0, a1, 256            #; a1  = 2, (wrb) s0  <-- 258
       0     3277        M 0x80002f84 scfgw   t3, s1                 #; t3  = 4, s1  = 130
       0     3278        M 0x80002f88 scfgw   a3, s0                 #; a3  = -328, s0  = 258
       0     3279        M 0x80002f8c addi    a1, a1, 32             #; a1  = 2, (wrb) a1  <-- 34
       0     3288        M 0x80002f90 scfgw   zero, a1               #; a1  = 34
       0     3289        M 0x80002f94 scfgwi  a2, 834                #; a2  = 0x001000f0
       0     3291        M                                           #; (acc) gp  <-- 0xd20001d3
                         M 0x80002f98 csrrsi  a1, ssr, 1             #; 
       0     3292        M 0x80002f9c fcvt.d.w ft3, zero             #; ac1  = 0
       0     3293        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3300        M 0x80002fa0 li      a1, 0                  #; (wrb) a1  <-- 0
       0     3301        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3303        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3304        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3305        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3313        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
       0     3314        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 0.0
       0     3316        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
       0     3317        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 9.865881
       0     3318        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 9.865881
       0     3319        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3320        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3321        M                                           #; (f:fpu) ft4  <-- 167.7199770
       0     3322        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 167.7199770
       0     3323        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3325        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 611.6846220
       0     3326        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 611.6846220
       0     3328        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3329        M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3330        M 0x80002fbc addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 15.705, ft4  = 690.6116700
       0     3333        M                                           #; (f:fpu) ft4  <-- 1134.5763150
       0     3334        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 18.846, ft4  = 1134.5763150
       0     3337        M                                           #; (f:fpu) ft4  <-- 2081.7008910
       0     3338        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2081.7008910, ft4  = 2081.7008910
       0     3339        M                                           #; (f:fpu) ft0  <-- 2081.7008910
       0     3341        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80002fa4
       0     3342        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3344        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3345        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3346        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3347        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 3.141, ft4  = 0.0
       0     3349        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
       0     3350        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 19.7317620
       0     3351        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 6.282, ft4  = 19.7317620
       0     3352        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3353        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3354        M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     3355        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 9.423, ft4  = 197.3176200
       0     3356        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3358        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 670.8799080
       0     3359        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 12.564, ft4  = 670.8799080
       0     3361        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3362        M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3363        M 0x80002fbc addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 15.705, ft4  = 789.2704800
       0     3364        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80002fa4
       0     3365        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3366        M                                           #; (f:fpu) ft4  <-- 1282.5645300
       0     3367        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 18.846, ft4  = 1282.5645300
       0     3369        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
       0     3370        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 2288.8843920
       0     3371        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2288.8843920, ft4  = 2288.8843920
       0     3372        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2288.8843920
       0     3373        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3374        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 3.141, ft4  = 0.0
       0     3375        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3376        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3377        M                                           #; (f:fpu) ft4  <-- 29.5976430
       0     3378        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 6.282, ft4  = 29.5976430
       0     3379        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3381        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 226.9152630
       0     3382        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 9.423, ft4  = 226.9152630
       0     3384        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3385        M                                           #; (f:fpu) ft4  <-- 730.0751940
       0     3386        M 0x80002fbc addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 12.564, ft4  = 730.0751940
       0     3387        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80002fa4
       0     3388        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3389        M                                           #; (f:fpu) ft4  <-- 887.9292900
       0     3390        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 15.705, ft4  = 887.9292900
       0     3392        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
       0     3393        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3394        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 18.846, ft4  = 1430.5527450
       0     3395        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
       0     3396        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3397        M                                           #; (f:fpu) ft4  <-- 2496.0678930
       0     3398        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2496.0678930, ft4  = 2496.0678930
       0     3399        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2496.0678930
       0     3400        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3401        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 3.141, ft4  = 0.0
       0     3402        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3404        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 39.4635240
       0     3405        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 6.282, ft4  = 39.4635240
       0     3407        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3408        M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     3409        M 0x80002fbc addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 9.423, ft4  = 256.5129060
       0     3410        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80002fa4
       0     3411        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3412        M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3413        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 12.564, ft4  = 789.2704800
       0     3415        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
       0     3416        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 986.5881000
       0     3417        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 15.705, ft4  = 986.5881000
       0     3418        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
       0     3419        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3420        M                                           #; (f:fpu) ft4  <-- 1578.5409600
       0     3421        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 18.846, ft4  = 1578.5409600
       0     3422        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3424        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     3425        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2703.2513940, ft4  = 2703.2513940
       0     3426        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2703.2513940
       0     3427        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3428        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 3.141, ft4  = 0.0
       0     3430        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3431        M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     3432        M 0x80002fbc addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 6.282, ft4  = 49.3294050
       0     3433        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80002fa4
       0     3434        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3435        M                                           #; (f:fpu) ft4  <-- 286.1105490
       0     3436        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 9.423, ft4  = 286.1105490
       0     3438        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
       0     3439        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3440        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 12.564, ft4  = 848.4657660
       0     3441        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
       0     3442        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3443        M                                           #; (f:fpu) ft4  <-- 1085.2469100
       0     3444        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 15.705, ft4  = 1085.2469100
       0     3445        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3447        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 1726.5291750
       0     3448        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 18.846, ft4  = 1726.5291750
       0     3450        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
       0     3451        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 2910.4348950
       0     3452        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2910.4348950, ft4  = 2910.4348950
       0     3453        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2910.4348950
       0     3454        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3455        M 0x80002fbc addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 3.141, ft4  = 0.0
       0     3456        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80002fa4
       0     3457        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3458        M                                           #; (f:fpu) ft4  <-- 59.1952860
       0     3459        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 6.282, ft4  = 59.1952860
       0     3461        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
       0     3462        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 315.7081920
       0     3463        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 9.423, ft4  = 315.7081920
       0     3464        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
       0     3465        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3466        M                                           #; (f:fpu) ft4  <-- 907.6610520
       0     3467        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 12.564, ft4  = 907.6610520
       0     3468        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3470        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 1183.9057200
       0     3471        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 15.705, ft4  = 1183.9057200
       0     3473        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
       0     3474        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     3475        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 18.846, ft4  = 1874.5173900
       0     3476        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3478        M 0x80002fbc addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 1933.7126760
       0     3479        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 1933.7126760, ft4  = 1933.7126760
       0     3480        M 0x80002fc4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                         M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1933.7126760
       0     3481        M 0x80002fc8 bne     a0, s6, pc - 40        #; a0  = 1, s6  = 5, taken, goto 0x80002fa0
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3482        M 0x80002fa0 li      a1, 0                  #; (wrb) a1  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 3.141, ft4  = 0.0
       0     3483        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3485        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3486        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 6.282, ft4  = 69.0611670
       0     3487        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
       0     3488        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3489        M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     3490        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 9.423, ft4  = 345.3058350
       0     3491        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3493        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     3494        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 12.564, ft4  = 374.9034780
       0     3496        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3497        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3498        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 15.705, ft4  = 690.6116700
       0     3499        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
       0     3500        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3501        M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3502        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 18.846, ft4  = 1430.5527450
       0     3504        M 0x80002fbc addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     3505        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80002fa4
                         M                                           #; (f:fpu) ft4  <-- 1548.9433170
       0     3506        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 1548.9433170, ft4  = 1548.9433170
       0     3507        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1548.9433170
       0     3508        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3509        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 21.9870000, ft4  = 0.0
       0     3510        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
       0     3511        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3512        M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3513        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 25.128, ft4  = 69.0611670
       0     3514        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3516        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 700.4775510
       0     3517        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 28.269, ft4  = 700.4775510
       0     3519        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3520        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 2032.3714860
       0     3521        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 31.41, ft4  = 2032.3714860
       0     3522        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
       0     3523        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3524        M                                           #; (f:fpu) ft4  <-- 2229.6891060
       0     3525        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 34.551, ft4  = 2229.6891060
       0     3527        M 0x80002fbc addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
       0     3528        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80002fa4
                         M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     3529        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 37.692, ft4  = 3206.4113250
       0     3531        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3532        M                                           #; (f:fpu) ft4  <-- 5100.6604770
       0     3533        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 5100.6604770, ft4  = 5100.6604770
       0     3534        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5100.6604770
       0     3535        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3536        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 21.9870000, ft4  = 0.0
       0     3537        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3539        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 138.1223340
       0     3540        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 25.128, ft4  = 138.1223340
       0     3542        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3543        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3544        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 28.269, ft4  = 848.4657660
       0     3545        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
       0     3546        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3547        M                                           #; (f:fpu) ft4  <-- 2269.1526300
       0     3548        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 31.41, ft4  = 2269.1526300
       0     3550        M 0x80002fbc addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
       0     3551        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80002fa4
                         M                                           #; (f:fpu) ft4  <-- 2565.1290600
       0     3552        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 34.551, ft4  = 2565.1290600
       0     3554        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3555        M                                           #; (f:fpu) ft4  <-- 3650.3759700
       0     3556        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 37.692, ft4  = 3650.3759700
       0     3557        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3559        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 5663.0156940
       0     3560        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 5663.0156940, ft4  = 5663.0156940
       0     3561        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5663.0156940
       0     3562        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3563        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 21.9870000, ft4  = 0.0
       0     3565        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3566        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 207.1835010
       0     3567        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 25.128, ft4  = 207.1835010
       0     3568        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
       0     3569        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3570        M                                           #; (f:fpu) ft4  <-- 996.4539810
       0     3571        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 28.269, ft4  = 996.4539810
       0     3573        M 0x80002fbc addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
       0     3574        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80002fa4
                         M                                           #; (f:fpu) ft4  <-- 2505.9337740
       0     3575        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 31.41, ft4  = 2505.9337740
       0     3577        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3578        M                                           #; (f:fpu) ft4  <-- 2900.5690140
       0     3579        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 34.551, ft4  = 2900.5690140
       0     3580        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3582        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     3583        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 37.692, ft4  = 4094.3406150
       0     3585        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3586        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 6225.3709110
       0     3587        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 6225.3709110, ft4  = 6225.3709110
       0     3588        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                         M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6225.3709110
       0     3589        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3590        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 21.9870000, ft4  = 0.0
       0     3591        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
       0     3592        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3593        M                                           #; (f:fpu) ft4  <-- 276.2446680
       0     3594        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 25.128, ft4  = 276.2446680
       0     3596        M 0x80002fbc addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
       0     3597        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80002fa4
                         M                                           #; (f:fpu) ft4  <-- 1144.4421960
       0     3598        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 28.269, ft4  = 1144.4421960
       0     3600        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3601        M                                           #; (f:fpu) ft4  <-- 2742.7149180
       0     3602        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 31.41, ft4  = 2742.7149180
       0     3603        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3605        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 3236.0089680
       0     3606        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 34.551, ft4  = 3236.0089680
       0     3608        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3609        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 4538.3052600
       0     3610        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 37.692, ft4  = 4538.3052600
       0     3611        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3612        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3613        M                                           #; (f:fpu) ft4  <-- 6787.7261280
       0     3614        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 6787.7261280, ft4  = 6787.7261280
       0     3615        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6787.7261280
       0     3616        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3617        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 21.9870000, ft4  = 0.0
       0     3619        M 0x80002fbc addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
       0     3620        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80002fa4
                         M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     3621        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 25.128, ft4  = 345.3058350
       0     3623        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3624        M                                           #; (f:fpu) ft4  <-- 1292.4304110
       0     3625        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 28.269, ft4  = 1292.4304110
       0     3626        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3628        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 2979.4960620
       0     3629        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 31.41, ft4  = 2979.4960620
       0     3631        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3632        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 3571.4489220
       0     3633        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 34.551, ft4  = 3571.4489220
       0     3634        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3635        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3636        M                                           #; (f:fpu) ft4  <-- 4982.2699050
       0     3637        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 37.692, ft4  = 4982.2699050
       0     3638        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3640        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 7350.0813450
       0     3641        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 7350.0813450, ft4  = 7350.0813450
       0     3642        M 0x80002fbc addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7350.0813450
       0     3643        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3644        M 0x80002fc4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 21.9870000, ft4  = 0.0
       0     3645        M 0x80002fc8 bne     a0, s6, pc - 40        #; a0  = 2, s6  = 5, taken, goto 0x80002fa0
       0     3646        M 0x80002fa0 li      a1, 0                  #; (wrb) a1  <-- 0
       0     3647        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 414.3670020
       0     3648        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 25.128, ft4  = 414.3670020
       0     3649        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3651        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 1440.4186260
       0     3652        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 28.269, ft4  = 1440.4186260
       0     3654        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
       0     3655        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 3216.2772060
       0     3656        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 31.41, ft4  = 3216.2772060
       0     3657        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3658        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3659        M                                           #; (f:fpu) ft4  <-- 3906.8888760
       0     3660        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 34.551, ft4  = 3906.8888760
       0     3661        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3663        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 5426.2345500
       0     3664        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 37.692, ft4  = 5426.2345500
       0     3666        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3667        M                                           #; (f:fpu) ft4  <-- 5544.6251220
       0     3668        M 0x80002fbc addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 5544.6251220, ft4  = 5544.6251220
       0     3669        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5544.6251220
       0     3670        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3671        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 21.9870000, ft4  = 0.0
       0     3672        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3674        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 483.4281690
       0     3675        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 25.128, ft4  = 483.4281690
       0     3677        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
       0     3678        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 1588.4068410
       0     3679        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 28.269, ft4  = 1588.4068410
       0     3680        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3681        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3682        M                                           #; (f:fpu) ft4  <-- 1677.1997700
       0     3683        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 31.41, ft4  = 1677.1997700
       0     3684        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3686        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 2466.4702500
       0     3687        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 34.551, ft4  = 2466.4702500
       0     3689        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3690        M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     3691        M 0x80002fbc addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 37.692, ft4  = 4094.3406150
       0     3692        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80002fa4
       0     3693        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3694        M                                           #; (f:fpu) ft4  <-- 4331.1217590
       0     3695        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4331.1217590, ft4  = 4331.1217590
       0     3696        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4331.1217590
       0     3697        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3698        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 40.833, ft4  = 0.0
       0     3699        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3701        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 128.2564530
       0     3702        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 43.9740000, ft4  = 128.2564530
       0     3704        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3705        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 1233.2351250
       0     3706        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 47.115, ft4  = 1233.2351250
       0     3707        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3708        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3709        M                                           #; (f:fpu) ft4  <-- 3453.0583500
       0     3710        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 50.256, ft4  = 3453.0583500
       0     3711        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3713        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 3768.7665420
       0     3714        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 53.397, ft4  = 3768.7665420
       0     3717        M 0x80002fbc addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 5278.2463350
       0     3718        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 56.538, ft4  = 5278.2463350
       0     3719        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3721        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 8119.6200630
       0     3722        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 8119.6200630, ft4  = 8119.6200630
       0     3723        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 8119.6200630
       0     3724        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3725        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 40.833, ft4  = 0.0
       0     3726        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3728        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     3729        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 43.9740000, ft4  = 256.5129060
       0     3731        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3732        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 1499.6139120
       0     3733        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 47.115, ft4  = 1499.6139120
       0     3734        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3735        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3736        M                                           #; (f:fpu) ft4  <-- 3867.4253520
       0     3737        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 50.256, ft4  = 3867.4253520
       0     3738        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3740        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 4340.9876400
       0     3741        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 53.397, ft4  = 4340.9876400
       0     3744        M 0x80002fbc addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 6018.1874100
       0     3745        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 56.538, ft4  = 6018.1874100
       0     3746        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3748        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 9037.1469960
       0     3749        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 9037.1469960, ft4  = 9037.1469960
       0     3750        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9037.1469960
       0     3751        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3752        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 40.833, ft4  = 0.0
       0     3753        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3755        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 384.7693590
       0     3756        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 43.9740000, ft4  = 384.7693590
       0     3758        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3759        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 1765.9926990
       0     3760        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 47.115, ft4  = 1765.9926990
       0     3761        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3762        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3763        M                                           #; (f:fpu) ft4  <-- 4281.7923540
       0     3764        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 50.256, ft4  = 4281.7923540
       0     3765        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3767        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 4913.2087380
       0     3768        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 53.397, ft4  = 4913.2087380
       0     3771        M 0x80002fbc addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 6758.1284850
       0     3772        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 56.538, ft4  = 6758.1284850
       0     3773        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3775        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 9954.6739290
       0     3776        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 9954.6739290, ft4  = 9954.6739290
       0     3777        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9954.6739290
       0     3778        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3779        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 40.833, ft4  = 0.0
       0     3780        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3782        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 513.0258120
       0     3783        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 43.9740000, ft4  = 513.0258120
       0     3785        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3786        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2032.3714860
       0     3787        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 47.115, ft4  = 2032.3714860
       0     3788        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3789        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3790        M                                           #; (f:fpu) ft4  <-- 4696.1593560
       0     3791        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 50.256, ft4  = 4696.1593560
       0     3792        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3794        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 5485.4298360
       0     3795        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 53.397, ft4  = 5485.4298360
       0     3798        M 0x80002fbc addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 7498.0695600
       0     3799        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 56.538, ft4  = 7498.0695600
       0     3800        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3802        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 10872.2008620
       0     3803        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 10872.2008620, ft4  = 10872.2008620
       0     3804        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 10872.2008620
       0     3805        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3806        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 40.833, ft4  = 0.0
       0     3807        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3809        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 641.2822650
       0     3810        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 43.9740000, ft4  = 641.2822650
       0     3812        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3813        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2298.7502730
       0     3814        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 47.115, ft4  = 2298.7502730
       0     3815        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3816        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3817        M                                           #; (f:fpu) ft4  <-- 5110.5263580
       0     3818        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 50.256, ft4  = 5110.5263580
       0     3819        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3821        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 6057.6509340
       0     3822        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 53.397, ft4  = 6057.6509340
       0     3825        M 0x80002fbc addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 8238.0106350
       0     3826        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 56.538, ft4  = 8238.0106350
       0     3827        M 0x80002fc4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3828        M 0x80002fc8 bne     a0, s6, pc - 40        #; a0  = 3, s6  = 5, taken, goto 0x80002fa0
       0     3829        M 0x80002fa0 li      a1, 0                  #; (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 11789.7277950
       0     3830        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 11789.7277950, ft4  = 11789.7277950
       0     3831        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 11789.7277950
       0     3832        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3833        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 40.833, ft4  = 0.0
       0     3834        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
       0     3835        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3836        M                                           #; (f:fpu) ft4  <-- 769.5387180
       0     3837        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 43.9740000, ft4  = 769.5387180
       0     3838        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3840        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 2565.1290600
       0     3841        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 47.115, ft4  = 2565.1290600
       0     3843        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3844        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 5524.8933600
       0     3845        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 50.256, ft4  = 5524.8933600
       0     3846        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
       0     3847        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3848        M                                           #; (f:fpu) ft4  <-- 6629.8720320
       0     3849        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 53.397, ft4  = 6629.8720320
       0     3852        M 0x80002fbc addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 8977.9517100
       0     3853        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 56.538, ft4  = 8977.9517100
       0     3854        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3856        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 9155.5375680
       0     3857        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 9155.5375680, ft4  = 9155.5375680
       0     3858        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9155.5375680
       0     3859        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3860        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 40.833, ft4  = 0.0
       0     3861        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3863        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 897.7951710
       0     3864        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 43.9740000, ft4  = 897.7951710
       0     3866        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3867        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2831.5078470
       0     3868        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 47.115, ft4  = 2831.5078470
       0     3869        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3870        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3871        M                                           #; (f:fpu) ft4  <-- 2979.4960620
       0     3872        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 50.256, ft4  = 2979.4960620
       0     3873        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3875        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     3876        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 53.397, ft4  = 4242.3288300
       0     3879        M 0x80002fbc addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 6758.1284850
       0     3880        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 56.538, ft4  = 6758.1284850
       0     3881        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3883        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 7113.3002010
       0     3884        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 7113.3002010, ft4  = 7113.3002010
       0     3885        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7113.3002010
       0     3886        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3887        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 59.679, ft4  = 0.0
       0     3888        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3890        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 187.4517390
       0     3891        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 62.82, ft4  = 187.4517390
       0     3893        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3894        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 1765.9926990
       0     3895        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 3.141, ft4  = 1765.9926990
       0     3896        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3897        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3898        M                                           #; (f:fpu) ft4  <-- 1913.9809140
       0     3899        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 6.282, ft4  = 1913.9809140
       0     3900        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3902        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 1953.4444380
       0     3903        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 9.423, ft4  = 1953.4444380
       0     3906        M 0x80002fbc addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 2219.8232250
       0     3907        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 12.564, ft4  = 2219.8232250
       0     3908        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3910        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 2851.2396090
       0     3911        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2851.2396090, ft4  = 2851.2396090
       0     3912        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2851.2396090
       0     3913        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3914        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 59.679, ft4  = 0.0
       0     3915        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3917        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     3918        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 62.82, ft4  = 374.9034780
       0     3920        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3921        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2150.7620580
       0     3922        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 3.141, ft4  = 2150.7620580
       0     3923        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3924        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3925        M                                           #; (f:fpu) ft4  <-- 2308.6161540
       0     3926        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 6.282, ft4  = 2308.6161540
       0     3927        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3929        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2367.8114400
       0     3930        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 9.423, ft4  = 2367.8114400
       0     3933        M 0x80002fbc addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 2663.7878700
       0     3934        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 12.564, ft4  = 2663.7878700
       0     3935        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3937        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3334.6677780
       0     3938        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 3334.6677780, ft4  = 3334.6677780
       0     3939        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3334.6677780
       0     3940        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3941        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 59.679, ft4  = 0.0
       0     3942        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3944        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 562.3552170
       0     3945        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 62.82, ft4  = 562.3552170
       0     3947        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3948        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2535.5314170
       0     3949        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 3.141, ft4  = 2535.5314170
       0     3950        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3951        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3952        M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     3953        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 6.282, ft4  = 2703.2513940
       0     3954        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3956        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2782.1784420
       0     3957        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 9.423, ft4  = 2782.1784420
       0     3960        M 0x80002fbc addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3107.7525150
       0     3961        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 12.564, ft4  = 3107.7525150
       0     3962        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3964        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3818.0959470
       0     3965        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 3818.0959470, ft4  = 3818.0959470
       0     3966        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3818.0959470
       0     3967        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3968        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 59.679, ft4  = 0.0
       0     3969        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3971        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 749.8069560
       0     3972        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 62.82, ft4  = 749.8069560
       0     3974        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     3975        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2920.3007760
       0     3976        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 3.141, ft4  = 2920.3007760
       0     3977        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     3978        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3979        M                                           #; (f:fpu) ft4  <-- 3097.8866340
       0     3980        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 6.282, ft4  = 3097.8866340
       0     3981        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3983        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 3196.5454440
       0     3984        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 9.423, ft4  = 3196.5454440
       0     3987        M 0x80002fbc addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 3551.7171600
       0     3988        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 12.564, ft4  = 3551.7171600
       0     3989        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3991        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4301.5241160
       0     3992        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4301.5241160, ft4  = 4301.5241160
       0     3993        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4301.5241160
       0     3994        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3995        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 59.679, ft4  = 0.0
       0     3996        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3998        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 937.2586950
       0     3999        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 62.82, ft4  = 937.2586950
       0     4001        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     4002        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 3305.0701350
       0     4003        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 3.141, ft4  = 3305.0701350
       0     4004        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     4005        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4006        M                                           #; (f:fpu) ft4  <-- 3492.5218740
       0     4007        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 6.282, ft4  = 3492.5218740
       0     4008        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4010        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 3610.9124460
       0     4011        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 9.423, ft4  = 3610.9124460
       0     4014        M 0x80002fbc addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 3995.6818050
       0     4015        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 12.564, ft4  = 3995.6818050
       0     4016        M 0x80002fc4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4017        M 0x80002fc8 bne     a0, s6, pc - 40        #; a0  = 4, s6  = 5, taken, goto 0x80002fa0
       0     4018        M 0x80002fa0 li      a1, 0                  #; (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 4784.9522850
       0     4019        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4784.9522850, ft4  = 4784.9522850
       0     4020        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4784.9522850
       0     4021        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     4022        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 59.679, ft4  = 0.0
       0     4023        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
       0     4024        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4025        M                                           #; (f:fpu) ft4  <-- 1124.7104340
       0     4026        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 62.82, ft4  = 1124.7104340
       0     4027        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     4029        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 3689.8394940
       0     4030        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 3.141, ft4  = 3689.8394940
       0     4032        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     4033        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 3887.1571140
       0     4034        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 6.282, ft4  = 3887.1571140
       0     4035        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
       0     4036        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4037        M                                           #; (f:fpu) ft4  <-- 4025.2794480
       0     4038        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 9.423, ft4  = 4025.2794480
       0     4041        M 0x80002fbc addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 4439.6464500
       0     4042        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 12.564, ft4  = 4439.6464500
       0     4043        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4045        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4479.1099740
       0     4046        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4479.1099740, ft4  = 4479.1099740
       0     4047        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4479.1099740
       0     4048        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4049        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 59.679, ft4  = 0.0
       0     4050        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4052        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 1312.1621730
       0     4053        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 62.82, ft4  = 1312.1621730
       0     4055        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     4056        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 4074.6088530
       0     4057        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 4074.6088530
       0     4058        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     4059        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4060        M                                           #; (f:fpu) ft4  <-- 4084.4747340
       0     4061        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 4084.4747340
       0     4062        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4064        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4065        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 4242.3288300
       0     4068        M 0x80002fbc addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 4686.2934750
       0     4069        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 4686.2934750
       0     4070        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4072        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4765.2205230
       0     4073        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4765.2205230, ft4  = 4765.2205230
       0     4074        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4765.2205230
       0     4075        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4076        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 15.705, ft4  = 0.0
       0     4077        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4079        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     4080        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 18.846, ft4  = 49.3294050
       0     4082        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     4083        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 522.8916930
       0     4084        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 21.9870000, ft4  = 522.8916930
       0     4085        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     4086        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4087        M                                           #; (f:fpu) ft4  <-- 1558.8091980
       0     4088        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 25.128, ft4  = 1558.8091980
       0     4089        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4091        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 1716.6632940
       0     4092        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 28.269, ft4  = 1716.6632940
       0     4095        M 0x80002fbc addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 2515.7996550
       0     4096        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 31.41, ft4  = 2515.7996550
       0     4097        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4099        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     4100        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4094.3406150, ft4  = 4094.3406150
       0     4101        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4094.3406150
       0     4102        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4103        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 15.705, ft4  = 0.0
       0     4104        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4106        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 98.65881
       0     4107        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 18.846, ft4  = 98.65881
       0     4109        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     4110        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 631.4163840
       0     4111        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 21.9870000, ft4  = 631.4163840
       0     4112        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     4113        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4114        M                                           #; (f:fpu) ft4  <-- 1736.3950560
       0     4115        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 25.128, ft4  = 1736.3950560
       0     4116        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4118        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 1973.1762000
       0     4119        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 28.269, ft4  = 1973.1762000
       0     4122        M 0x80002fbc addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 2861.1054900
       0     4123        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 31.41, ft4  = 2861.1054900
       0     4124        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4126        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4538.3052600
       0     4127        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4538.3052600, ft4  = 4538.3052600
       0     4128        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4538.3052600
       0     4129        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4130        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 15.705, ft4  = 0.0
       0     4131        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4133        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 147.9882150
       0     4134        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 18.846, ft4  = 147.9882150
       0     4136        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     4137        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 739.9410750
       0     4138        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 21.9870000, ft4  = 739.9410750
       0     4139        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     4140        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4141        M                                           #; (f:fpu) ft4  <-- 1913.9809140
       0     4142        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 25.128, ft4  = 1913.9809140
       0     4143        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4145        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2229.6891060
       0     4146        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 28.269, ft4  = 2229.6891060
       0     4149        M 0x80002fbc addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     4150        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 31.41, ft4  = 3206.4113250
       0     4151        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4153        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4982.2699050
       0     4154        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4982.2699050, ft4  = 4982.2699050
       0     4155        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4982.2699050
       0     4156        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4157        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 15.705, ft4  = 0.0
       0     4158        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4160        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     4161        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 18.846, ft4  = 197.3176200
       0     4163        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     4164        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     4165        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 21.9870000, ft4  = 848.4657660
       0     4166        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     4167        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4168        M                                           #; (f:fpu) ft4  <-- 2091.5667720
       0     4169        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 25.128, ft4  = 2091.5667720
       0     4170        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4172        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2486.2020120
       0     4173        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 28.269, ft4  = 2486.2020120
       0     4176        M 0x80002fbc addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 3551.7171600
       0     4177        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80002fa4
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 31.41, ft4  = 3551.7171600
       0     4178        M 0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4180        M 0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 5426.2345500
       0     4181        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 5426.2345500, ft4  = 5426.2345500
       0     4182        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5426.2345500
       0     4183        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4184        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 15.705, ft4  = 0.0
       0     4185        M 0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4187        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                         M                                           #; (f:fpu) ft4  <-- 246.6470250
       0     4188        M 0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 18.846, ft4  = 246.6470250
       0     4190        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
       0     4191        M 0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 956.9904570
       0     4192        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 21.9870000, ft4  = 956.9904570
       0     4193        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
       0     4194        M 0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4195        M                                           #; (f:fpu) ft4  <-- 2269.1526300
       0     4196        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 25.128, ft4  = 2269.1526300
       0     4197        M 0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4199        M 0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2742.7149180
       0     4200        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 28.269, ft4  = 2742.7149180
       0     4203        M 0x80002fbc addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 3897.0229950
       0     4204        M 0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 31.41, ft4  = 3897.0229950
       0     4205        M 0x80002fc4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4206        M 0x80002fc8 bne     a0, s6, pc - 40        #; a0  = 5, s6  = 5, not taken
       0     4207        M 0x80002fcc j       pc + 0xdc              #; goto 0x800030a8
                         M                                           #; (f:fpu) ft4  <-- 5870.1991950
       0     4208        M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 5870.1991950, ft4  = 5870.1991950
       0     4209        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5870.1991950
       0     4210        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4211        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 15.705, ft4  = 0.0
       0     4214        M                                           #; (f:fpu) ft4  <-- 295.9764300
       0     4215        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 18.846, ft4  = 295.9764300
       0     4218        M                                           #; (f:fpu) ft4  <-- 1065.5151480
       0     4219        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 21.9870000, ft4  = 1065.5151480
       0     4220        M 0x800030ac lw      s7, 12(sp)             #; sp  = 0x0011ff00, s7  <~~ Word[0x0011ff0c]
       0     4222        M                                           #; (f:fpu) ft4  <-- 2446.7384880
       0     4223        M                                           #; (lsu) s7  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 25.128, ft4  = 2446.7384880
       0     4226        M                                           #; (f:fpu) ft4  <-- 2999.2278240
       0     4227        M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 28.269, ft4  = 2999.2278240
       0     4230        M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4231        M 0x800030b0 lw      s6, 16(sp)             #; sp  = 0x0011ff00, s6  <~~ Word[0x0011ff10]
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 31.41, ft4  = 4242.3288300
       0     4234        M                                           #; (lsu) s6  <-- 0x001000f0
                         M                                           #; (f:fpu) ft4  <-- 4340.9876400
       0     4235        M 0x800030b4 lw      s5, 20(sp)             #; sp  = 0x0011ff00, s5  <~~ Word[0x0011ff14]
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4340.9876400, ft4  = 4340.9876400
       0     4236        M 0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4340.9876400
       0     4237        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4238        M                                           #; (lsu) s5  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 15.705, ft4  = 0.0
       0     4239        M 0x800030b8 lw      s4, 24(sp)             #; sp  = 0x0011ff00, s4  <~~ Word[0x0011ff18]
       0     4241        M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     4242        M                                           #; (lsu) s4  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 18.846, ft4  = 345.3058350
       0     4243        M 0x800030bc lw      s3, 28(sp)             #; sp  = 0x0011ff00, s3  <~~ Word[0x0011ff1c]
       0     4245        M                                           #; (f:fpu) ft4  <-- 1174.0398390
       0     4246        M                                           #; (lsu) s3  <-- 6
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 21.9870000, ft4  = 1174.0398390
       0     4247        M 0x800030c0 lw      s2, 32(sp)             #; sp  = 0x0011ff00, s2  <~~ Word[0x0011ff20]
       0     4249        M                                           #; (f:fpu) ft4  <-- 1243.1010060
       0     4250        M                                           #; (lsu) s2  <-- 0x00100000
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 25.128, ft4  = 1243.1010060
       0     4251        M 0x800030c4 lw      s1, 36(sp)             #; sp  = 0x0011ff00, s1  <~~ Word[0x0011ff24]
       0     4253        M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     4254        M                                           #; (lsu) s1  <-- 0
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 28.269, ft4  = 1874.5173900
       0     4255        M 0x800030c8 lw      s0, 40(sp)             #; sp  = 0x0011ff00, s0  <~~ Word[0x0011ff28]
       0     4257        M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     4258        M                                           #; (lsu) s0  <-- 0x00100240
                         M 0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 31.41, ft4  = 3206.4113250
       0     4259        M 0x800030cc lw      ra, 44(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff2c]
       0     4260        M 0x800030d0 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
       0     4261        M                                           #; (f:fpu) ft4  <-- 3403.7289450
       0     4262        M                                           #; (lsu) ra  <-- 0x800009f0
                         M 0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 3403.7289450, ft4  = 3403.7289450
       0     4263        M 0x800030d4 ret                            #; ra  = 0x800009f0, goto 0x800009f0
                         M 0x800030a8 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 3403.7289450
       0     4266        M 0x800009f0 li      a3, 5                  #; (wrb) a3  <-- 5
       0     4267        M 0x800009f4 li      a4, 6                  #; (wrb) a4  <-- 6
       0     4268        M 0x800009f8 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     4269        M 0x800009fc mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     4278        M 0x80000a00 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     4279        M 0x80000a04 li      a5, 0                  #; (wrb) a5  <-- 0
       0     4280        M 0x80000a08 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002a08
       0     4281        M 0x80000a0c jalr    ra, ra, 836            #; ra  = 0x80002a08, (wrb) ra  <-- 0x80000a10, goto 0x80002d4c
       0     4292        M 0x80002d4c addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
       0     4295        M 0x80002d50 sw      ra, 44(sp)             #; sp  = 0x0011ff00, 0x80000a10 ~~> Word[0x0011ff2c]
       0     4296        M 0x80002d54 sw      s0, 40(sp)             #; sp  = 0x0011ff00, 0x00100240 ~~> Word[0x0011ff28]
       0     4297        M 0x80002d58 sw      s1, 36(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff24]
       0     4298        M 0x80002d5c sw      s2, 32(sp)             #; sp  = 0x0011ff00, 0x00100000 ~~> Word[0x0011ff20]
       0     4299        M 0x80002d60 sw      s3, 28(sp)             #; sp  = 0x0011ff00, 6 ~~> Word[0x0011ff1c]
       0     4300        M 0x80002d64 sw      s4, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
       0     4301        M 0x80002d68 sw      s5, 20(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff14]
       0     4302        M 0x80002d6c sw      s6, 16(sp)             #; sp  = 0x0011ff00, 0x001000f0 ~~> Word[0x0011ff10]
       0     4303        M 0x80002d70 sw      s7, 12(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff0c]
       0     4304        M 0x80002d74 mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
       0     4305        M 0x80002d78 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     4306        M 0x80002d7c slti    s1, a5, 1              #; a5  = 0, (wrb) s1  <-- 1
       0     4307        M 0x80002d80 or      a3, a3, s1             #; a3  = 0, s1  = 1, (wrb) a3  <-- 1
       0     4308        M 0x80002d84 bnez    a3, pc + 808           #; a3  = 1, taken, goto 0x800030ac
       0     4312        M 0x800030ac lw      s7, 12(sp)             #; sp  = 0x0011ff00, s7  <~~ Word[0x0011ff0c]
       0     4315        M                                           #; (lsu) s7  <-- 0
       0     4316        M 0x800030b0 lw      s6, 16(sp)             #; sp  = 0x0011ff00, s6  <~~ Word[0x0011ff10]
       0     4319        M                                           #; (lsu) s6  <-- 0x001000f0
       0     4320        M 0x800030b4 lw      s5, 20(sp)             #; sp  = 0x0011ff00, s5  <~~ Word[0x0011ff14]
       0     4323        M                                           #; (lsu) s5  <-- 0
       0     4324        M 0x800030b8 lw      s4, 24(sp)             #; sp  = 0x0011ff00, s4  <~~ Word[0x0011ff18]
       0     4327        M                                           #; (lsu) s4  <-- 0
       0     4328        M 0x800030bc lw      s3, 28(sp)             #; sp  = 0x0011ff00, s3  <~~ Word[0x0011ff1c]
       0     4331        M                                           #; (lsu) s3  <-- 6
       0     4332        M 0x800030c0 lw      s2, 32(sp)             #; sp  = 0x0011ff00, s2  <~~ Word[0x0011ff20]
       0     4335        M                                           #; (lsu) s2  <-- 0x00100000
       0     4336        M 0x800030c4 lw      s1, 36(sp)             #; sp  = 0x0011ff00, s1  <~~ Word[0x0011ff24]
       0     4339        M                                           #; (lsu) s1  <-- 0
       0     4340        M 0x800030c8 lw      s0, 40(sp)             #; sp  = 0x0011ff00, s0  <~~ Word[0x0011ff28]
       0     4343        M                                           #; (lsu) s0  <-- 0x00100240
       0     4344        M 0x800030cc lw      ra, 44(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff2c]
       0     4345        M 0x800030d0 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
       0     4347        M                                           #; (lsu) ra  <-- 0x80000a10
       0     4348        M 0x800030d4 ret                            #; ra  = 0x80000a10, goto 0x80000a10
       0     4351        M 0x80000a10 srli    a0, s0, 20             #; s0  = 0x00100240, (wrb) a0  <-- 1
       0     4352        M 0x80000a14 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     4353        M 0x80000a18 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     4354        M 0x80000a1c addi    a1, a1, -271           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011fef1
       0     4363        M 0x80000a20 sltu    a1, s0, a1             #; s0  = 0x00100240, a1  = 0x0011fef1, (wrb) a1  <-- 1
       0     4364        M 0x80000a24 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4365        M 0x80000a28 beqz    a0, pc + 432           #; a0  = 1, not taken
       0     4366        M 0x80000a2c li      s4, 8                  #; (wrb) s4  <-- 8
       0     4375        M 0x80000a30 li      a0, 64                 #; (wrb) a0  <-- 64
       0     4376        M 0x80000a34 li      a1, 192                #; (wrb) a1  <-- 192
       0     4377        M 0x80000a38 scfgw   s3, a0                 #; s3  = 6, a0  = 64
       0     4378        M 0x80000a3c scfgw   s4, a1                 #; s4  = 8, a1  = 192
       0     4387        M 0x80000a40 li      s5, 4                  #; (wrb) s5  <-- 4
       0     4388        M 0x80000a44 li      a0, 96                 #; (wrb) a0  <-- 96
       0     4389        M 0x80000a48 li      a1, 224                #; (wrb) a1  <-- 224
       0     4390        M 0x80000a4c scfgw   s5, a0                 #; s5  = 4, a0  = 96
       0     4399        M 0x80000a50 scfgw   s4, a1                 #; s4  = 8, a1  = 224
       0     4400        M 0x80000a54 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4401        M 0x80000a58 scfgw   zero, a0               #; a0  = 32
       0     4402        M 0x80000a5c scfgwi  s0, 800                #; s0  = 0x00100240
       0     4412        M 0x80000a60 csrrsi  a0, ssr, 1             #; 
       0     4414        M 0x80000a64 fsgnj.d ft3, ft0, ft0          #; ft0  = 2081.7008910, ft0  = 2081.7008910
       0     4415        M                                           #; (f:fpu) ft3  <-- 2081.7008910
       0     4416        M 0x80000a68 fadd.d  ft3, ft0, ft3          #; ft0  = 2288.8843920, ft3  = 2081.7008910
       0     4419        M                                           #; (f:fpu) ft3  <-- 4370.5852830
       0     4420        M 0x80000a6c fadd.d  ft3, ft0, ft3          #; ft0  = 2496.0678930, ft3  = 4370.5852830
       0     4423        M                                           #; (f:fpu) ft3  <-- 6866.6531760
       0     4425        M 0x80000a70 fadd.d  ft3, ft0, ft3          #; ft0  = 2703.2513940, ft3  = 6866.6531760
       0     4428        M                                           #; (f:fpu) ft3  <-- 9569.9045700
       0     4429        M 0x80000a74 fadd.d  ft3, ft0, ft3          #; ft0  = 2910.4348950, ft3  = 9569.9045700
       0     4432        M                                           #; (f:fpu) ft3  <-- 12480.3394650
       0     4433        M 0x80000a78 fadd.d  ft3, ft0, ft3          #; ft0  = 1933.7126760, ft3  = 12480.3394650
       0     4436        M                                           #; (f:fpu) ft3  <-- 14414.0521410
       0     4437        M 0x80000a7c fadd.d  ft3, ft0, ft3          #; ft0  = 1548.9433170, ft3  = 14414.0521410
       0     4440        M                                           #; (f:fpu) ft3  <-- 15962.9954580
       0     4441        M 0x80000a80 fadd.d  ft3, ft0, ft3          #; ft0  = 5100.6604770, ft3  = 15962.9954580
       0     4444        M                                           #; (f:fpu) ft3  <-- 21063.6559350
       0     4445        M 0x80000a84 fadd.d  ft3, ft0, ft3          #; ft0  = 5663.0156940, ft3  = 21063.6559350
       0     4448        M                                           #; (f:fpu) ft3  <-- 26726.6716290
       0     4449        M 0x80000a88 fadd.d  ft3, ft0, ft3          #; ft0  = 6225.3709110, ft3  = 26726.6716290
       0     4452        M                                           #; (f:fpu) ft3  <-- 32952.0425400
       0     4453        M 0x80000a8c fadd.d  ft3, ft0, ft3          #; ft0  = 6787.7261280, ft3  = 32952.0425400
       0     4456        M                                           #; (f:fpu) ft3  <-- 39739.7686680
       0     4457        M 0x80000a90 fadd.d  ft3, ft0, ft3          #; ft0  = 7350.0813450, ft3  = 39739.7686680
       0     4460        M                                           #; (f:fpu) ft3  <-- 47089.8500130
       0     4461        M 0x80000a94 fadd.d  ft3, ft0, ft3          #; ft0  = 5544.6251220, ft3  = 47089.8500130
       0     4464        M                                           #; (f:fpu) ft3  <-- 52634.4751350
       0     4465        M 0x80000a98 fadd.d  ft3, ft0, ft3          #; ft0  = 4331.1217590, ft3  = 52634.4751350
       0     4468        M                                           #; (f:fpu) ft3  <-- 56965.5968940
       0     4469        M 0x80000a9c fadd.d  ft3, ft0, ft3          #; ft0  = 8119.6200630, ft3  = 56965.5968940
       0     4472        M                                           #; (f:fpu) ft3  <-- 65085.2169570
       0     4473        M 0x80000aa0 fadd.d  ft3, ft0, ft3          #; ft0  = 9037.1469960, ft3  = 65085.2169570
       0     4476        M                                           #; (f:fpu) ft3  <-- 74122.3639530
       0     4477        M 0x80000aa4 fadd.d  ft3, ft0, ft3          #; ft0  = 9954.6739290, ft3  = 74122.3639530
       0     4480        M                                           #; (f:fpu) ft3  <-- 84077.0378820
       0     4481        M 0x80000aa8 fadd.d  ft3, ft0, ft3          #; ft0  = 10872.2008620, ft3  = 84077.0378820
       0     4484        M                                           #; (f:fpu) ft3  <-- 94949.2387440
       0     4485        M 0x80000aac fadd.d  ft3, ft0, ft3          #; ft0  = 11789.7277950, ft3  = 94949.2387440
       0     4488        M                                           #; (f:fpu) ft3  <-- 106738.9665390
       0     4489        M 0x80000ab0 fadd.d  ft3, ft0, ft3          #; ft0  = 9155.5375680, ft3  = 106738.9665390
       0     4492        M                                           #; (f:fpu) ft3  <-- 115894.5041070
       0     4493        M 0x80000ab4 fadd.d  ft3, ft0, ft3          #; ft0  = 7113.3002010, ft3  = 115894.5041070
       0     4496        M                                           #; (f:fpu) ft3  <-- 123007.8043080
       0     4497        M 0x80000ab8 fadd.d  ft3, ft0, ft3          #; ft0  = 2851.2396090, ft3  = 123007.8043080
       0     4500        M                                           #; (f:fpu) ft3  <-- 125859.0439170
       0     4501        M 0x80000abc fadd.d  ft3, ft0, ft3          #; ft0  = 3334.6677780, ft3  = 125859.0439170
       0     4504        M                                           #; (f:fpu) ft3  <-- 129193.7116950
       0     4505        M 0x80000ac0 fadd.d  ft3, ft0, ft3          #; ft0  = 3818.0959470, ft3  = 129193.7116950
       0     4508        M                                           #; (f:fpu) ft3  <-- 133011.8076420
       0     4509        M 0x80000ac4 fadd.d  ft3, ft0, ft3          #; ft0  = 4301.5241160, ft3  = 133011.8076420
       0     4512        M                                           #; (f:fpu) ft3  <-- 137313.3317580
       0     4513        M 0x80000ac8 fadd.d  ft3, ft0, ft3          #; ft0  = 4784.9522850, ft3  = 137313.3317580
       0     4516        M                                           #; (f:fpu) ft3  <-- 142098.2840430
       0     4517        M 0x80000acc fadd.d  ft3, ft0, ft3          #; ft0  = 4479.1099740, ft3  = 142098.2840430
       0     4520        M 0x80000af4 li      a3, 5                  #; (wrb) a3  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 146577.3940170
       0     4521        M 0x80000af8 li      a5, 7                  #; (wrb) a5  <-- 7
                         M 0x80000ad0 fadd.d  ft3, ft0, ft3          #; ft0  = 4765.2205230, ft3  = 146577.3940170
       0     4522        M 0x80000afc mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     4524        M                                           #; (f:fpu) ft3  <-- 151342.6145400
       0     4525        M 0x80000ad4 fadd.d  ft3, ft0, ft3          #; ft0  = 4094.3406150, ft3  = 151342.6145400
       0     4528        M                                           #; (f:fpu) ft3  <-- 155436.9551550
       0     4529        M 0x80000ad8 fadd.d  ft3, ft0, ft3          #; ft0  = 4538.3052600, ft3  = 155436.9551550
       0     4531        M 0x80000b00 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     4532        M 0x80000b04 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
                         M                                           #; (f:fpu) ft3  <-- 159975.2604150
       0     4533        M 0x80000b08 li      a4, 0                  #; (wrb) a4  <-- 0
                         M 0x80000adc fadd.d  ft3, ft0, ft3          #; ft0  = 4982.2699050, ft3  = 159975.2604150
       0     4534        M 0x80000b0c auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002b0c
       0     4536        M                                           #; (f:fpu) ft3  <-- 164957.5303200
       0     4537        M 0x80000ae0 fadd.d  ft3, ft0, ft3          #; ft0  = 5426.2345500, ft3  = 164957.5303200
       0     4540        M                                           #; (f:fpu) ft3  <-- 170383.7648700
       0     4541        M 0x80000ae4 fadd.d  ft3, ft0, ft3          #; ft0  = 5870.1991950, ft3  = 170383.7648700
       0     4543        M 0x80000b10 jalr    ra, ra, 576            #; ra  = 0x80002b0c, (wrb) ra  <-- 0x80000b14, goto 0x80002d4c
       0     4544        M                                           #; (f:fpu) ft3  <-- 176253.9640650
       0     4545        M 0x80000ae8 fadd.d  ft3, ft0, ft3          #; ft0  = 4340.9876400, ft3  = 176253.9640650
       0     4548        M                                           #; (f:fpu) ft3  <-- 180594.9517050
       0     4549        M 0x80000aec fadd.d  fs0, ft0, ft3          #; ft0  = 3403.7289450, ft3  = 180594.9517050
       0     4550        M 0x80000af0 csrrci  a0, ssr, 1             #; 
       0     4552        M                                           #; (f:fpu) fs0  <-- 183998.6806500
       0     4557        M 0x80002d4c addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
       0     4560        M 0x80002d50 sw      ra, 44(sp)             #; sp  = 0x0011ff00, 0x80000b14 ~~> Word[0x0011ff2c]
       0     4561        M 0x80002d54 sw      s0, 40(sp)             #; sp  = 0x0011ff00, 0x00100240 ~~> Word[0x0011ff28]
       0     4562        M 0x80002d58 sw      s1, 36(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff24]
       0     4563        M 0x80002d5c sw      s2, 32(sp)             #; sp  = 0x0011ff00, 0x00100000 ~~> Word[0x0011ff20]
       0     4564        M 0x80002d60 sw      s3, 28(sp)             #; sp  = 0x0011ff00, 6 ~~> Word[0x0011ff1c]
       0     4565        M 0x80002d64 sw      s4, 24(sp)             #; sp  = 0x0011ff00, 8 ~~> Word[0x0011ff18]
       0     4566        M 0x80002d68 sw      s5, 20(sp)             #; sp  = 0x0011ff00, 4 ~~> Word[0x0011ff14]
       0     4567        M 0x80002d6c sw      s6, 16(sp)             #; sp  = 0x0011ff00, 0x001000f0 ~~> Word[0x0011ff10]
       0     4568        M 0x80002d70 sw      s7, 12(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff0c]
       0     4569        M 0x80002d74 mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
       0     4570        M 0x80002d78 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     4571        M 0x80002d7c slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     4572        M 0x80002d80 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     4573        M 0x80002d84 bnez    a3, pc + 808           #; a3  = 0, not taken
       0     4574        M 0x80002d88 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
       0     4575        M 0x80002d8c addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
       0     4576        M 0x80002d90 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
       0     4577        M 0x80002d94 addi    t3, s6, -1             #; s6  = 5, (wrb) t3  <-- 4
       0     4578        M 0x80002d98 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
       0     4579        M 0x80002d9c mul     a0, s2, t3             #; s2  = 56, t3  = 4
       0     4582        M                                           #; (acc) a0  <-- 0x00ae8533
       0     4583        M 0x80002da0 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
       0     4584        M 0x80002da4 add     t6, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) t6  <-- 0x00100350
       0     4585        M 0x80002da8 sltu    a0, t6, a0             #; t6  = 0x00100350, a0  = 272, (wrb) a0  <-- 0
       0     4586        M 0x80002dac bge     zero, a4, pc + 80      #; a4  = 0, taken, goto 0x80002dfc
       0     4589        M 0x80002dfc srli    a1, s7, 20             #; s7  = 0x00100240, (wrb) a1  <-- 1
       0     4601        M 0x80002e00 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     4602        M 0x80002e04 beqz    a0, pc + 572           #; a0  = 0, taken, goto 0x80003040
       0     4624        M 0x80003040 lui     a0, 0x120              #; (wrb) a0  <-- 0x00120000
       0     4625        M 0x80003044 addi    a0, a0, 1              #; a0  = 0x00120000, (wrb) a0  <-- 0x00120001
       0     4626        M 0x80003048 sltu    a0, t6, a0             #; t6  = 0x00100350, a0  = 0x00120001, (wrb) a0  <-- 1
       0     4627        M 0x8000304c and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4636        M 0x80003050 beqz    a0, pc - 572           #; a0  = 1, not taken
       0     4637        M 0x80003054 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4638        M 0x80003058 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4639        M 0x8000305c li      a2, 64                 #; (wrb) a2  <-- 64
       0     4649        M 0x80003060 scfgw   a6, a2                 #; a6  = 6, a2  = 64
       0     4650        M 0x80003064 li      a2, 192                #; (wrb) a2  <-- 192
       0     4651        M 0x80003068 scfgw   a1, a2                 #; a1  = 8, a2  = 192
       0     4652        M 0x8000306c li      a2, 96                 #; (wrb) a2  <-- 96
       0     4661        M 0x80003070 li      a3, 224                #; (wrb) a3  <-- 224
       0     4662        M 0x80003074 scfgw   t3, a2                 #; t3  = 4, a2  = 96
       0     4663        M 0x80003078 scfgw   a1, a3                 #; a1  = 8, a3  = 224
       0     4664        M 0x8000307c li      a1, 32                 #; (wrb) a1  <-- 32
       0     4673        M 0x80003080 scfgw   zero, a1               #; a1  = 32
       0     4674        M 0x80003084 scfgwi  s7, 928                #; s7  = 0x00100240
       0     4676        M                                           #; (acc) gp  <-- 0xd20001d3
                         M 0x80003088 csrrsi  a1, ssr, 1             #; 
       0     4677        M 0x8000308c fcvt.d.w ft3, zero             #; ac1  = 0
       0     4678        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4685        M 0x80003090 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     4687        M 0x80003098 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     4688        M 0x8000309c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4689        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4690        M 0x80003098 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     4691        M 0x8000309c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4692        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4693        M 0x80003098 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     4694        M 0x8000309c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4695        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4696        M 0x80003098 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     4697        M 0x8000309c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4698        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4699        M 0x80003098 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     4700        M 0x8000309c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4701        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4702        M 0x80003098 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     4703        M 0x8000309c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4704        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4705        M 0x80003098 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     4706        M 0x8000309c bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4707        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4709        M 0x800030a0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4710        M 0x800030a4 bne     a0, s6, pc - 20        #; a0  = 1, s6  = 5, taken, goto 0x80003090
       0     4711        M 0x80003090 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     4713        M 0x80003098 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     4714        M 0x8000309c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4715        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4716        M 0x80003098 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     4717        M 0x8000309c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4718        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4719        M 0x80003098 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     4720        M 0x8000309c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4721        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4722        M 0x80003098 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     4723        M 0x8000309c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4724        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4725        M 0x80003098 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     4726        M 0x8000309c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4727        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4728        M 0x80003098 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     4729        M 0x8000309c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4730        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4731        M 0x80003098 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     4732        M 0x8000309c bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4733        M 0x800030a0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4734        M 0x800030a4 bne     a0, s6, pc - 20        #; a0  = 2, s6  = 5, taken, goto 0x80003090
       0     4735        M 0x80003090 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     4737        M 0x80003098 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     4738        M 0x8000309c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4739        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4740        M 0x80003098 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     4741        M 0x8000309c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4742        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4743        M 0x80003098 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     4744        M 0x8000309c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4745        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4746        M 0x80003098 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     4747        M 0x8000309c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4748        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4749        M 0x80003098 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     4750        M 0x8000309c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4751        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4752        M 0x80003098 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     4753        M 0x8000309c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4754        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4755        M 0x80003098 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     4756        M 0x8000309c bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4757        M 0x800030a0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4758        M 0x800030a4 bne     a0, s6, pc - 20        #; a0  = 3, s6  = 5, taken, goto 0x80003090
       0     4759        M 0x80003090 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     4761        M 0x80003098 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     4762        M 0x8000309c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4763        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4764        M 0x80003098 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     4765        M 0x8000309c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4766        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4767        M 0x80003098 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     4768        M 0x8000309c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4769        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4770        M 0x80003098 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     4771        M 0x8000309c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4772        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4773        M 0x80003098 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     4774        M 0x8000309c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4775        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4776        M 0x80003098 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     4777        M 0x8000309c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4778        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4779        M 0x80003098 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     4780        M 0x8000309c bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4781        M 0x800030a0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4782        M 0x800030a4 bne     a0, s6, pc - 20        #; a0  = 4, s6  = 5, taken, goto 0x80003090
       0     4783        M 0x80003090 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     4785        M 0x80003098 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     4786        M 0x8000309c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4787        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4788        M 0x80003098 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     4789        M 0x8000309c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4790        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4791        M 0x80003098 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     4792        M 0x8000309c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4793        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4794        M 0x80003098 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     4795        M 0x8000309c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4796        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4797        M 0x80003098 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     4798        M 0x8000309c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4799        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4800        M 0x80003098 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     4801        M 0x8000309c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80003094
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4802        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4803        M 0x80003098 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     4804        M 0x8000309c bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4805        M 0x800030a0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4806        M 0x800030a4 bne     a0, s6, pc - 20        #; a0  = 5, s6  = 5, not taken
       0     4808        M 0x800030ac lw      s7, 12(sp)             #; sp  = 0x0011ff00, s7  <~~ Word[0x0011ff0c]
                         M 0x800030a8 csrrci  a0, ssr, 1             #; 
       0     4811        M                                           #; (lsu) s7  <-- 0
       0     4812        M 0x800030b0 lw      s6, 16(sp)             #; sp  = 0x0011ff00, s6  <~~ Word[0x0011ff10]
       0     4815        M                                           #; (lsu) s6  <-- 0x001000f0
       0     4816        M 0x800030b4 lw      s5, 20(sp)             #; sp  = 0x0011ff00, s5  <~~ Word[0x0011ff14]
       0     4819        M                                           #; (lsu) s5  <-- 4
       0     4820        M 0x800030b8 lw      s4, 24(sp)             #; sp  = 0x0011ff00, s4  <~~ Word[0x0011ff18]
       0     4823        M                                           #; (lsu) s4  <-- 8
       0     4824        M 0x800030bc lw      s3, 28(sp)             #; sp  = 0x0011ff00, s3  <~~ Word[0x0011ff1c]
       0     4827        M                                           #; (lsu) s3  <-- 6
       0     4828        M 0x800030c0 lw      s2, 32(sp)             #; sp  = 0x0011ff00, s2  <~~ Word[0x0011ff20]
       0     4831        M                                           #; (lsu) s2  <-- 0x00100000
       0     4832        M 0x800030c4 lw      s1, 36(sp)             #; sp  = 0x0011ff00, s1  <~~ Word[0x0011ff24]
       0     4835        M                                           #; (lsu) s1  <-- 0
       0     4836        M 0x800030c8 lw      s0, 40(sp)             #; sp  = 0x0011ff00, s0  <~~ Word[0x0011ff28]
       0     4839        M                                           #; (lsu) s0  <-- 0x00100240
       0     4840        M 0x800030cc lw      ra, 44(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff2c]
       0     4841        M 0x800030d0 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
       0     4843        M                                           #; (lsu) ra  <-- 0x80000b14
       0     4844        M 0x800030d4 ret                            #; ra  = 0x80000b14, goto 0x80000b14
       0     4847        M 0x80000b14 li      a0, 64                 #; (wrb) a0  <-- 64
       0     4848        M 0x80000b18 li      a1, 192                #; (wrb) a1  <-- 192
       0     4849        M 0x80000b1c scfgw   s3, a0                 #; s3  = 6, a0  = 64
       0     4850        M 0x80000b20 scfgw   s4, a1                 #; s4  = 8, a1  = 192
       0     4851        M 0x80000b24 li      a0, 96                 #; (wrb) a0  <-- 96
       0     4852        M 0x80000b28 li      a1, 224                #; (wrb) a1  <-- 224
       0     4853        M 0x80000b2c scfgw   s5, a0                 #; s5  = 4, a0  = 96, (acc) ra  <-- 0x00aaa0ab
       0     4862        M 0x80000b30 scfgw   s4, a1                 #; s4  = 8, a1  = 224
       0     4863        M 0x80000b34 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4864        M 0x80000b38 scfgw   zero, a0               #; a0  = 32
       0     4865        M 0x80000b3c scfgwi  s0, 800                #; s0  = 0x00100240
       0     4875        M 0x80000b40 csrrsi  a0, ssr, 1             #; 
       0     4877        M 0x80000b44 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     4878        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4879        M 0x80000b48 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4882        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4883        M 0x80000b4c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4886        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4888        M 0x80000b50 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4891        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4892        M 0x80000b54 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4895        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4896        M 0x80000b58 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4899        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4900        M 0x80000b5c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4903        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4904        M 0x80000b60 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4907        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4908        M 0x80000b64 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4911        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4912        M 0x80000b68 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4915        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4916        M 0x80000b6c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4919        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4920        M 0x80000b70 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4923        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4924        M 0x80000b74 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4927        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4928        M 0x80000b78 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4931        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4932        M 0x80000b7c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4935        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4936        M 0x80000b80 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4939        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4940        M 0x80000b84 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4943        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4944        M 0x80000b88 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4947        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4948        M 0x80000b8c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4951        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4952        M 0x80000b90 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4955        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4956        M 0x80000b94 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4959        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4960        M 0x80000b98 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4963        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4964        M 0x80000b9c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4967        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4968        M 0x80000ba0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4971        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4972        M 0x80000ba4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4975        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4976        M 0x80000ba8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4979        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4980        M 0x80000bac fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4983        M 0x80000bd4 j       pc + 0x24c             #; goto 0x80000e20
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4984        M 0x80000bb0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4987        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4988        M 0x80000bb4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4991        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4992        M 0x80000bb8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4994        M 0x80000e20 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003e20
       0     4995        M 0x80000e24 addi    a0, a0, -1448          #; a0  = 0x80003e20, (wrb) a0  <-- 0x80003878
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4996        M 0x80000bbc fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4999        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5000        M 0x80000bc0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5003        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5004        M 0x80000bc4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5007        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5008        M 0x80000bc8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5011        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5012        M 0x80000bcc fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5013        M 0x80000bd0 csrrci  a0, ssr, 1             #; 
       0     5015        M 0x80000e28 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003878], (f:fpu) ft3  <-- 0.0
       0     5018        M 0x80000e3c lw      a2, 0(sp)              #; sp  = 0x0011ff30, a2  <~~ Word[0x0011ff30]
       0     5024        M                                           #; (f:lsu) ft4  <-- -183998.6806500
       0     5025        M 0x80000e2c fadd.d  ft4, fs0, ft4          #; fs0  = 183998.6806500, ft4  = -183998.6806500
       0     5026        M                                           #; (lsu) a2  <-- 0
       0     5027        M 0x80000e40 lw      a3, 4(sp)              #; sp  = 0x0011ff30, a3  <~~ Word[0x0011ff34]
       0     5028        M 0x80000e44 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002e44
                         M                                           #; (f:fpu) ft4  <-- -0.0000000
       0     5029        M 0x80000e48 addi    a0, a0, 1809           #; a0  = 0x80002e44, (wrb) a0  <-- 0x80003555
                         M 0x80000e30 fadd.d  ft3, ft4, ft3          #; ft4  = -0.0000000, ft3  = 0.0
       0     5030        M 0x80000e4c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000e4c
       0     5031        M                                           #; (lsu) a3  <-- 0
       0     5032        M                                           #; (f:fpu) ft3  <-- -0.0000000
       0     5033        M 0x80000e34 fsgnjx.d fs0, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000
       0     5034        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     5035        M 0x80000e38 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff30]
       0     5039        M 0x80000e50 jalr    ra, ra, 68             #; ra  = 0x80000e4c, (wrb) ra  <-- 0x80000e54, goto 0x80000e90
       0     5053        M 0x80000e90 addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
       0     5054        M 0x80000e94 sw      ra, 12(sp)             #; sp  = 0x0011ff00, 0x80000e54 ~~> Word[0x0011ff0c]
       0     5055        M 0x80000e98 mv      t0, a0                 #; a0  = 0x80003555, (wrb) t0  <-- 0x80003555
       0     5056        M 0x80000e9c sw      a7, 44(sp)             #; sp  = 0x0011ff00, 5 ~~> Word[0x0011ff2c]
       0     5065        M 0x80000ea0 sw      a6, 40(sp)             #; sp  = 0x0011ff00, 6 ~~> Word[0x0011ff28]
       0     5066        M 0x80000ea4 sw      a5, 36(sp)             #; sp  = 0x0011ff00, 7 ~~> Word[0x0011ff24]
       0     5067        M 0x80000ea8 sw      a4, 32(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff20]
       0     5068        M 0x80000eac sw      a3, 28(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff1c]
       0     5077        M 0x80000eb0 sw      a2, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
       0     5078        M 0x80000eb4 sw      a1, 20(sp)             #; sp  = 0x0011ff00, 224 ~~> Word[0x0011ff14]
       0     5079        M 0x80000eb8 addi    a0, sp, 20             #; sp  = 0x0011ff00, (wrb) a0  <-- 0x0011ff14
       0     5080        M 0x80000ebc sw      a0, 8(sp)              #; sp  = 0x0011ff00, 0x0011ff14 ~~> Word[0x0011ff08]
       0     5089        M 0x80000ec0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ec0
       0     5090        M 0x80000ec4 addi    a0, a0, -988           #; a0  = 0x80001ec0, (wrb) a0  <-- 0x80001ae4
       0     5091        M 0x80000ec8 addi    a1, sp, 7              #; sp  = 0x0011ff00, (wrb) a1  <-- 0x0011ff07
       0     5092        M 0x80000ecc li      a2, -1                 #; (wrb) a2  <-- -1
       0     5101        M 0x80000ed0 addi    a4, sp, 20             #; sp  = 0x0011ff00, (wrb) a4  <-- 0x0011ff14
       0     5102        M 0x80000ed4 mv      a3, t0                 #; t0  = 0x80003555, (wrb) a3  <-- 0x80003555
       0     5103        M 0x80000ed8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000ed8
       0     5104        M 0x80000edc jalr    ra, ra, 20             #; ra  = 0x80000ed8, (wrb) ra  <-- 0x80000ee0, goto 0x80000eec
       0     5113        M 0x80000eec addi    sp, sp, -112           #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fe90
       0     5125        M 0x80000ef0 sw      ra, 108(sp)            #; sp  = 0x0011fe90, 0x80000ee0 ~~> Word[0x0011fefc]
       0     5126        M 0x80000ef4 sw      s0, 104(sp)            #; sp  = 0x0011fe90, 0x00100240 ~~> Word[0x0011fef8]
       0     5127        M 0x80000ef8 sw      s1, 100(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef4]
       0     5128        M 0x80000efc sw      s2, 96(sp)             #; sp  = 0x0011fe90, 0x00100000 ~~> Word[0x0011fef0]
       0     5137        M 0x80000f00 sw      s3, 92(sp)             #; sp  = 0x0011fe90, 6 ~~> Word[0x0011feec]
       0     5138        M 0x80000f04 sw      s4, 88(sp)             #; sp  = 0x0011fe90, 8 ~~> Word[0x0011fee8]
       0     5139        M 0x80000f08 sw      s5, 84(sp)             #; sp  = 0x0011fe90, 4 ~~> Word[0x0011fee4]
       0     5140        M 0x80000f0c sw      s6, 80(sp)             #; sp  = 0x0011fe90, 0x001000f0 ~~> Word[0x0011fee0]
       0     5149        M 0x80000f10 sw      s7, 76(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fedc]
       0     5150        M 0x80000f14 sw      s8, 72(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed8]
       0     5151        M 0x80000f18 sw      s9, 68(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed4]
       0     5152        M 0x80000f1c sw      s10, 64(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed0]
       0     5161        M 0x80000f20 sw      s11, 60(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fecc]
       0     5162        M 0x80000f24 mv      s3, a4                 #; a4  = 0x0011ff14, (wrb) s3  <-- 0x0011ff14
       0     5163        M 0x80000f28 mv      s0, a3                 #; a3  = 0x80003555, (wrb) s0  <-- 0x80003555
       0     5164        M 0x80000f2c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5173        M 0x80000f30 mv      s4, a1                 #; a1  = 0x0011ff07, (wrb) s4  <-- 0x0011ff07
       0     5174        M 0x80000f34 beqz    a1, pc + 12            #; a1  = 0x0011ff07, not taken
       0     5175        M 0x80000f38 mv      s2, a0                 #; a0  = 0x80001ae4, (wrb) s2  <-- 0x80001ae4
       0     5176        M 0x80000f3c j       pc + 0xc               #; goto 0x80000f48
       0     5185        M 0x80000f48 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5186        M 0x80000f4c li      s6, 37                 #; (wrb) s6  <-- 37
       0     5197        M 0x80000f50 li      s11, 16                #; (wrb) s11 <-- 16
       0     5198        M 0x80000f54 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5199        M 0x80000f58 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5200        M 0x80000f5c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5209        M 0x80000f60 sw      a0, 24(sp)             #; sp  = 0x0011fe90, 2048 ~~> Word[0x0011fea8]
       0     5210        M 0x80000f64 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5211        M 0x80000f68 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5212        M 0x80000f6c sw      a0, 16(sp)             #; sp  = 0x0011fe90, 65535 ~~> Word[0x0011fea0]
       0     5221        M 0x80000f70 addi    s10, s0, 2             #; s0  = 0x80003555, (wrb) s10 <-- 0x80003557
       0     5222        M 0x80000f74 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5223        M 0x80000f78 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5224        M 0x80000f7c lbu     a0, 0(s0)              #; s0  = 0x80003555, a0  <~~ Byte[0x80003555]
       0     5235        M                                           #; (lsu) a0  <-- 101
       0     5236        M 0x80000f80 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     5237        M 0x80000f84 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     5238        M 0x80000f88 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5239        M 0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5245        M 0x80000f90 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5246        M 0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5247        M 0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
       0     5268        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     5269        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5270        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5280        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5281        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     5282        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     5283        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5284        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     5292        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5303        M                                           #; (lsu) a4  <-- 0
       0     5304        M 0x80001b04 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5305        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 1 ~~> Word[0x80003934]
       0     5306        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 0, (wrb) a4  <-- 0x80003934
       0     5307        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003934, 101 ~~> Byte[0x8000397c]
       0     5308        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5329        M                                           #; (lsu) a4  <-- 1
       0     5330        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5331        M 0x80001b1c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5332        M 0x80001b20 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     5333        M 0x80001b24 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     5334        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5335        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     5355        M 0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
       0     5369        M 0x80000f9c addi    s0, s0, 1              #; s0  = 0x80003555, (wrb) s0  <-- 0x80003556
       0     5372        M 0x80000fa0 addi    s10, s10, 1            #; s10 = 0x80003557, (wrb) s10 <-- 0x80003558
       0     5373        M 0x80000fa4 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5374        M 0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x80003556, a0  <~~ Byte[0x80003556]
       0     5385        M                                           #; (lsu) a0  <-- 114
       0     5386        M 0x80000fac bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f84
       0     5387        M 0x80000f84 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5388        M 0x80000f88 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5389        M 0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5390        M 0x80000f90 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5391        M 0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5392        M 0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
       0     5395        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5396        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5397        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5398        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5399        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     5400        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     5401        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5402        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     5403        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5414        M                                           #; (lsu) a4  <-- 1
       0     5415        M 0x80001b04 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5416        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 2 ~~> Word[0x80003934]
       0     5417        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 1, (wrb) a4  <-- 0x80003935
       0     5418        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003935, 114 ~~> Byte[0x8000397d]
       0     5419        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5440        M                                           #; (lsu) a4  <-- 2
       0     5441        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     5442        M 0x80001b1c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     5443        M 0x80001b20 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5444        M 0x80001b24 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5445        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5446        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     5449        M 0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
       0     5454        M 0x80000f9c addi    s0, s0, 1              #; s0  = 0x80003556, (wrb) s0  <-- 0x80003557
       0     5457        M 0x80000fa0 addi    s10, s10, 1            #; s10 = 0x80003558, (wrb) s10 <-- 0x80003559
       0     5458        M 0x80000fa4 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5459        M 0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x80003557, a0  <~~ Byte[0x80003557]
       0     5470        M                                           #; (lsu) a0  <-- 114
       0     5471        M 0x80000fac bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f84
       0     5472        M 0x80000f84 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5473        M 0x80000f88 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5474        M 0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5475        M 0x80000f90 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5476        M 0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5477        M 0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
       0     5480        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5481        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5482        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5483        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5484        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     5485        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     5486        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5487        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     5488        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5499        M                                           #; (lsu) a4  <-- 2
       0     5500        M 0x80001b04 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     5501        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 3 ~~> Word[0x80003934]
       0     5502        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 2, (wrb) a4  <-- 0x80003936
       0     5503        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003936, 114 ~~> Byte[0x8000397e]
       0     5504        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5525        M                                           #; (lsu) a4  <-- 3
       0     5526        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     5527        M 0x80001b1c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     5528        M 0x80001b20 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5529        M 0x80001b24 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5530        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5531        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     5534        M 0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
       0     5539        M 0x80000f9c addi    s0, s0, 1              #; s0  = 0x80003557, (wrb) s0  <-- 0x80003558
       0     5542        M 0x80000fa0 addi    s10, s10, 1            #; s10 = 0x80003559, (wrb) s10 <-- 0x8000355a
       0     5543        M 0x80000fa4 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     5544        M 0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x80003558, a0  <~~ Byte[0x80003558]
       0     5555        M                                           #; (lsu) a0  <-- 111
       0     5556        M 0x80000fac bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000f84
       0     5557        M 0x80000f84 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     5558        M 0x80000f88 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     5559        M 0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5560        M 0x80000f90 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     5561        M 0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5562        M 0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
       0     5565        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     5566        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5567        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5568        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5569        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     5570        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     5571        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5572        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     5573        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5584        M                                           #; (lsu) a4  <-- 3
       0     5585        M 0x80001b04 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     5586        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 4 ~~> Word[0x80003934]
       0     5587        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 3, (wrb) a4  <-- 0x80003937
       0     5588        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003937, 111 ~~> Byte[0x8000397f]
       0     5589        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5610        M                                           #; (lsu) a4  <-- 4
       0     5611        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     5612        M 0x80001b1c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     5613        M 0x80001b20 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     5614        M 0x80001b24 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     5615        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5616        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     5619        M 0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
       0     5624        M 0x80000f9c addi    s0, s0, 1              #; s0  = 0x80003558, (wrb) s0  <-- 0x80003559
       0     5627        M 0x80000fa0 addi    s10, s10, 1            #; s10 = 0x8000355a, (wrb) s10 <-- 0x8000355b
       0     5628        M 0x80000fa4 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     5629        M 0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x80003559, a0  <~~ Byte[0x80003559]
       0     5640        M                                           #; (lsu) a0  <-- 114
       0     5641        M 0x80000fac bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f84
       0     5642        M 0x80000f84 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5643        M 0x80000f88 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     5644        M 0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5645        M 0x80000f90 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     5646        M 0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5647        M 0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
       0     5650        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5651        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5652        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5653        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5654        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     5655        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     5656        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5657        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     5658        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5669        M                                           #; (lsu) a4  <-- 4
       0     5670        M 0x80001b04 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     5671        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 5 ~~> Word[0x80003934]
       0     5672        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 4, (wrb) a4  <-- 0x80003938
       0     5673        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003938, 114 ~~> Byte[0x80003980]
       0     5674        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5695        M                                           #; (lsu) a4  <-- 5
       0     5696        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     5697        M 0x80001b1c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     5698        M 0x80001b20 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5699        M 0x80001b24 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5700        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5701        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     5704        M 0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
       0     5709        M 0x80000f9c addi    s0, s0, 1              #; s0  = 0x80003559, (wrb) s0  <-- 0x8000355a
       0     5712        M 0x80000fa0 addi    s10, s10, 1            #; s10 = 0x8000355b, (wrb) s10 <-- 0x8000355c
       0     5713        M 0x80000fa4 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     5714        M 0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x8000355a, a0  <~~ Byte[0x8000355a]
       0     5725        M                                           #; (lsu) a0  <-- 32
       0     5726        M 0x80000fac bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000f84
       0     5727        M 0x80000f84 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     5728        M 0x80000f88 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     5729        M 0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5730        M 0x80000f90 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     5731        M 0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5732        M 0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
       0     5735        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     5736        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5737        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5738        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5739        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     5740        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     5741        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5742        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     5743        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5754        M                                           #; (lsu) a4  <-- 5
       0     5755        M 0x80001b04 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     5756        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 6 ~~> Word[0x80003934]
       0     5757        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 5, (wrb) a4  <-- 0x80003939
       0     5758        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003939, 32 ~~> Byte[0x80003981]
       0     5759        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5780        M                                           #; (lsu) a4  <-- 6
       0     5781        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     5782        M 0x80001b1c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     5783        M 0x80001b20 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     5784        M 0x80001b24 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     5785        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5786        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     5789        M 0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
       0     5794        M 0x80000f9c addi    s0, s0, 1              #; s0  = 0x8000355a, (wrb) s0  <-- 0x8000355b
       0     5797        M 0x80000fa0 addi    s10, s10, 1            #; s10 = 0x8000355c, (wrb) s10 <-- 0x8000355d
       0     5798        M 0x80000fa4 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     5799        M 0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x8000355b, a0  <~~ Byte[0x8000355b]
       0     5810        M                                           #; (lsu) a0  <-- 61
       0     5811        M 0x80000fac bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000f84
       0     5812        M 0x80000f84 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     5813        M 0x80000f88 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     5814        M 0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5815        M 0x80000f90 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     5816        M 0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5817        M 0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
       0     5820        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     5821        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5822        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5823        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5824        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     5825        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     5826        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5827        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     5828        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5839        M                                           #; (lsu) a4  <-- 6
       0     5840        M 0x80001b04 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     5841        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 7 ~~> Word[0x80003934]
       0     5842        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 6, (wrb) a4  <-- 0x8000393a
       0     5843        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393a, 61 ~~> Byte[0x80003982]
       0     5844        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5865        M                                           #; (lsu) a4  <-- 7
       0     5866        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     5867        M 0x80001b1c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     5868        M 0x80001b20 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     5869        M 0x80001b24 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     5870        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5871        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     5874        M 0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
       0     5879        M 0x80000f9c addi    s0, s0, 1              #; s0  = 0x8000355b, (wrb) s0  <-- 0x8000355c
       0     5882        M 0x80000fa0 addi    s10, s10, 1            #; s10 = 0x8000355d, (wrb) s10 <-- 0x8000355e
       0     5883        M 0x80000fa4 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     5884        M 0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x8000355c, a0  <~~ Byte[0x8000355c]
       0     5895        M                                           #; (lsu) a0  <-- 32
       0     5896        M 0x80000fac bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000f84
       0     5897        M 0x80000f84 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     5898        M 0x80000f88 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     5899        M 0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5900        M 0x80000f90 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     5901        M 0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5902        M 0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
       0     5905        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     5906        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5907        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5908        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5909        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     5910        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     5911        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5912        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     5913        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5924        M                                           #; (lsu) a4  <-- 7
       0     5925        M 0x80001b04 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     5926        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 8 ~~> Word[0x80003934]
       0     5927        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 7, (wrb) a4  <-- 0x8000393b
       0     5928        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393b, 32 ~~> Byte[0x80003983]
       0     5929        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     5950        M                                           #; (lsu) a4  <-- 8
       0     5951        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     5952        M 0x80001b1c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     5953        M 0x80001b20 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     5954        M 0x80001b24 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     5955        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5956        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     5959        M 0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
       0     5964        M 0x80000f9c addi    s0, s0, 1              #; s0  = 0x8000355c, (wrb) s0  <-- 0x8000355d
       0     5967        M 0x80000fa0 addi    s10, s10, 1            #; s10 = 0x8000355e, (wrb) s10 <-- 0x8000355f
       0     5968        M 0x80000fa4 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     5969        M 0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x8000355d, a0  <~~ Byte[0x8000355d]
       0     5980        M                                           #; (lsu) a0  <-- 37
       0     5981        M 0x80000fac bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000f84
       0     5982        M 0x80000f84 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000fb4
       0     5994        M 0x80000fb4 li      s0, 0                  #; (wrb) s0  <-- 0
       0     5995        M 0x80000fb8 j       pc + 0x10              #; goto 0x80000fc8
       0     6006        M 0x80000fc8 lbu     a0, -1(s10)            #; s10 = 0x8000355f, a0  <~~ Byte[0x8000355e]
       0     6017        M                                           #; (lsu) a0  <-- 102
       0     6018        M 0x80000fcc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     6019        M 0x80000fd0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80001008
       0     6042        M 0x80001008 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     6043        M 0x8000100c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     6054        M 0x80001010 addi    a1, s10, -1            #; s10 = 0x8000355f, (wrb) a1  <-- 0x8000355e
       0     6055        M 0x80001014 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6056        M 0x80001018 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80001094
       0     6077        M 0x80001094 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6078        M 0x80001098 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x800010e8
       0     6100        M 0x800010e8 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6101        M 0x800010ec mv      s10, a1                #; a1  = 0x8000355e, (wrb) s10 <-- 0x8000355e
       0     6112        M 0x800010f0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     6113        M 0x800010f4 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6114        M 0x800010f8 j       pc + 0xc               #; goto 0x80001104
       0     6135        M 0x80001104 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     6136        M 0x80001108 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     6137        M 0x8000110c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     6147        M 0x80001110 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     6148        M 0x80001114 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6149        M 0x80001118 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x8000117c
       0     6170        M 0x8000117c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     6182        M 0x80001180 li      a2, 83                 #; (wrb) a2  <-- 83
       0     6183        M 0x80001184 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     6184        M 0x80001188 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     6185        M 0x8000118c auipc   a2, 0x2                #; (wrb) a2  <-- 0x8000318c
       0     6194        M 0x80001190 addi    a2, a2, 1096           #; a2  = 0x8000318c, (wrb) a2  <-- 0x800035d4
       0     6195        M 0x80001194 add     a1, a1, a2             #; a1  = 260, a2  = 0x800035d4, (wrb) a1  <-- 0x800036d8
       0     6196        M 0x80001198 lw      a2, 0(a1)              #; a1  = 0x800036d8, a2  <~~ Word[0x800036d8]
       0     6197        M 0x8000119c li      a1, 8                  #; (wrb) a1  <-- 8
       0     6206        M 0x800011a0 li      s8, 16                 #; (wrb) s8  <-- 16
       0     6207        M                                           #; (lsu) a2  <-- 0x800011d4
       0     6208        M 0x800011a4 jr      a2                     #; a2  = 0x800011d4, goto 0x800011d4
       0     6229        M 0x800011d4 li      a1, 70                 #; (wrb) a1  <-- 70
       0     6230        M 0x800011d8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800011e0
       0     6241        M 0x800011e0 addi    a0, s3, 7              #; s3  = 0x0011ff14, (wrb) a0  <-- 0x0011ff1b
       0     6242        M 0x800011e4 andi    a0, a0, -8             #; a0  = 0x0011ff1b, (wrb) a0  <-- 0x0011ff18
       0     6244        M 0x800011ec addi    s3, a0, 8              #; a0  = 0x0011ff18, (wrb) s3  <-- 0x0011ff20
       0     6245        M 0x800011e8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff18]
       0     6246        M                                           #; (f:lsu) fa0  <-- 0.0
       0     6253        M 0x800011f0 mv      a0, s2                 #; s2  = 0x80001ae4, (wrb) a0  <-- 0x80001ae4
       0     6254        M 0x800011f4 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6255        M 0x800011f8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6256        M 0x800011fc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6265        M 0x80001200 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     6266        M 0x80001204 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     6267        M 0x80001208 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     6268        M 0x8000120c auipc   ra, 0x1                #; (wrb) ra  <-- 0x8000220c
       0     6277        M 0x80001210 jalr    ra, ra, -1656          #; ra  = 0x8000220c, (wrb) ra  <-- 0x80001214, goto 0x80001b94
       0     6291        M 0x80001b94 addi    sp, sp, -112           #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe20
       0     6292        M 0x80001b98 sw      ra, 108(sp)            #; sp  = 0x0011fe20, 0x80001214 ~~> Word[0x0011fe8c]
       0     6293        M 0x80001b9c sw      s0, 104(sp)            #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe88]
       0     6303        M 0x80001ba0 sw      s1, 100(sp)            #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe84]
       0     6304        M 0x80001ba4 sw      s2, 96(sp)             #; sp  = 0x0011fe20, 0x80001ae4 ~~> Word[0x0011fe80]
       0     6305        M 0x80001ba8 sw      s3, 92(sp)             #; sp  = 0x0011fe20, 0x0011ff20 ~~> Word[0x0011fe7c]
       0     6306        M 0x80001bac sw      s4, 88(sp)             #; sp  = 0x0011fe20, 0x0011ff07 ~~> Word[0x0011fe78]
       0     6315        M 0x80001bb0 sw      s5, 84(sp)             #; sp  = 0x0011fe20, -1 ~~> Word[0x0011fe74]
       0     6316        M 0x80001bb4 sw      s6, 80(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe70]
       0     6317        M 0x80001bb8 sw      s7, 76(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe6c]
       0     6318        M 0x80001bbc sw      s8, 72(sp)             #; sp  = 0x0011fe20, 16 ~~> Word[0x0011fe68]
       0     6327        M 0x80001bc0 sw      s9, 68(sp)             #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe64]
       0     6328        M 0x80001bc4 sw      s10, 64(sp)            #; sp  = 0x0011fe20, 0x8000355e ~~> Word[0x0011fe60]
       0     6331        M 0x80001bc8 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe58]
       0     6332        M 0x80001bcc fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe50]
       0     6340        M 0x80001bd4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003bd4
       0     6341        M 0x80001bd8 addi    s1, s1, -844           #; s1  = 0x80003bd4, (wrb) s1  <-- 0x80003888
                         M 0x80001bd0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe48]
       0     6344        M 0x80001bdc fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003888]
       0     6352        M 0x80001be4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     6353        M 0x80001be8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6354        M 0x80001bec mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001be0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     6363        M 0x80001bf0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     6364        M 0x80001bf4 mv      s6, a1                 #; a1  = 0x0011ff07, (wrb) s6  <-- 0x0011ff07
       0     6365        M 0x80001bf8 mv      s7, a0                 #; a0  = 0x80001ae4, (wrb) s7  <-- 0x80001ae4
       0     6366        M 0x80001bfc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001cec
       0     6388        M 0x80001cec fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     6389        M                                           #; (f:fpu) fs0  <-- 0.0
       0     6398        M 0x80001cf0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003cf0
       0     6399        M 0x80001cf4 addi    a0, a0, -1120          #; a0  = 0x80003cf0, (wrb) a0  <-- 0x80003890
       0     6402        M 0x80001cf8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003890]
       0     6411        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6412        M 0x80001cfc fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6414        M                                           #; (acc) t3  <-- 0x00051e63
       0     6415        M 0x80001d00 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001d1c
       0     6422        M 0x80001d1c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d1c
       0     6434        M 0x80001d20 addi    a0, a0, -1156          #; a0  = 0x80003d1c, (wrb) a0  <-- 0x80003898
       0     6436        M 0x80001d28 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d28
       0     6437        M 0x80001d2c addi    a0, a0, -1160          #; a0  = 0x80003d28, (wrb) a0  <-- 0x800038a0
                         M 0x80001d24 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003898]
       0     6446        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     6448        M 0x80001d30 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800038a0]
       0     6449        M 0x80001d34 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     6451        M                                           #; (acc) a0  <-- 0x00b57533
       0     6457        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     6458        M 0x80001d38 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     6460        M                                           #; (acc) a0  <-- 0x00b57533
       0     6461        M 0x80001d3c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     6462        M 0x80001d40 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001e3c
       0     6485        M 0x80001e3c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     6497        M 0x80001e40 li      s8, 6                  #; (wrb) s8  <-- 6
       0     6498        M 0x80001e44 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001e4c
       0     6499        M 0x80001e4c li      a0, 10                 #; (wrb) a0  <-- 10
       0     6510        M 0x80001e54 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001e8c
       0     6511        M 0x80001e50 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     6512        M                                           #; (f:fpu) fs2  <-- 0.0
       0     6532        M 0x80001e8c li      s0, 0                  #; (wrb) s0  <-- 0
       0     6544        M 0x80001e90 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     6545        M 0x80001e94 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80003e94
       0     6546        M 0x80001e98 addi    a1, a1, -1900          #; a1  = 0x80003e94, (wrb) a1  <-- 0x80003728
       0     6547        M 0x80001e9c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003728, (wrb) a0  <-- 0x80003758
       0     6558        M 0x80001ea0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003758]
       0     6559        M 0x80001ea4 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     6563        M 0x80001ea8 fcvt.d.w ft0, s1               #; ac1  = 0
       0     6564        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6565        M 0x80001eac fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     6567        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     6568        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6569        M 0x80001eb4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003eb4
       0     6570        M 0x80001eb8 addi    a0, a0, -1548          #; a0  = 0x80003eb4, (wrb) a0  <-- 0x800038a8
                         M 0x80001eb0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     6573        M 0x80001ebc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800038a8], (f:fpu) ft2  <-- 0.0
       0     6581        M 0x80001ec0 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     6582        M                                           #; (f:lsu) ft0  <-- 0.5
       0     6583        M                                           #; (acc) gp  <-- 0xd21501d3
       0     6585        M 0x80001ec4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     6586        M                                           #; (f:fpu) ft3  <-- 0.0
       0     6587        M 0x80001ec8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     6590        M                                           #; (f:fpu) ft2  <-- 0.0
       0     6591        M 0x80001ecc fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6594        M 0x80001ed0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001ef0
       0     6616        M 0x80001ef0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6618        M                                           #; (acc) s4  <-- 0x00059a63
       0     6619        M 0x80001ef4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001f08
       0     6628        M 0x80001f0c beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001f08 fcvt.d.w fs1, zero             #; ac1  = 0
       0     6629        M                                           #; (f:fpu) fs1  <-- 0.0
       0     6639        M 0x80001f10 li      a2, 0                  #; (wrb) a2  <-- 0
       0     6640        M 0x80001f14 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     6641        M 0x80001f18 add     t1, a1, s0             #; a1  = 0x0011fe28, s0  = 0, (wrb) t1  <-- 0x0011fe28
       0     6642        M 0x80001f1c li      t0, 32                 #; (wrb) t0  <-- 32
       0     6651        M 0x80001f20 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     6652        M 0x80001f24 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     6653        M 0x80001f28 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     6654        M 0x80001f2c li      a6, 10                 #; (wrb) a6  <-- 10
       0     6663        M 0x80001f30 li      a7, 9                  #; (wrb) a7  <-- 9
       0     6664        M 0x80001f34 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     6665        M 0x80001f38 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     6666        M 0x80001f3c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     6675        M 0x80001f40 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     6676        M 0x80001f44 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     6679        M                                           #; (acc) a3  <-- 0x40d586b3
       0     6680        M 0x80001f48 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     6681        M 0x80001f4c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     6687        M 0x80001f50 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 0, (wrb) a5  <-- 0x0011fe28
       0     6688        M 0x80001f54 sb      a3, 0(a5)              #; a5  = 0x0011fe28, 48 ~~> Byte[0x0011fe28]
       0     6689        M 0x80001f58 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     6690        M 0x80001f5c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     6702        M 0x80001f60 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     6703        M 0x80001f64 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     6704        M 0x80001f68 li      a3, 30                 #; (wrb) a3  <-- 30
       0     6705        M 0x80001f6c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     6714        M 0x80001f70 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     6715        M 0x80001f74 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     6716        M 0x80001f78 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     6717        M 0x80001f7c bnez    a3, pc + 136           #; a3  = 0, not taken
       0     6726        M 0x80001f80 addi    a0, sp, 8              #; sp  = 0x0011fe20, (wrb) a0  <-- 0x0011fe28
       0     6727        M 0x80001f84 add     a0, a0, s0             #; a0  = 0x0011fe28, s0  = 0, (wrb) a0  <-- 0x0011fe28
       0     6728        M 0x80001f88 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     6729        M 0x80001f8c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     6738        M 0x80001f90 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     6739        M 0x80001f94 li      a1, 31                 #; (wrb) a1  <-- 31
       0     6740        M 0x80001f98 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     6741        M 0x80001f9c add     a0, a0, a2             #; a0  = 0x0011fe28, a2  = 1, (wrb) a0  <-- 0x0011fe29
       0     6750        M 0x80001fa0 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     6751        M 0x80001fa4 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001fac
       0     6752        M 0x80001fac addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     6762        M 0x80001fb0 li      a1, 48                 #; (wrb) a1  <-- 48
       0     6763        M 0x80001fb4 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7fffffb4
       0     6764        M 0x80001fb8 jalr    ra, ra, 1444           #; ra  = 0x7fffffb4, (wrb) ra  <-- 0x80001fbc, goto 0x80000558
       0     6785        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     6786        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe29, (wrb) a4  <-- 0x0011fe29
       0     6797        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     6820        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     6832        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     6833        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     6834        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     6835        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     6855        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2d]
       0     6856        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2c]
       0     6867        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2b]
       0     6868        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2a]
       0     6869        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe29]
       0     6870        M 0x800005ec ret                            #; ra  = 0x80001fbc, goto 0x80001fbc
       0     6881        M 0x80001fbc li      a0, 0                  #; (wrb) a0  <-- 0
       0     6884        M 0x80001fc0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     6885        M 0x80001fc4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     6886        M 0x80001fc8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     6887        M 0x80001fcc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     6896        M 0x80001fd0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6897        M 0x80001fd4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6898        M 0x80001fd8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fc0
       0     6899        M 0x80001fc0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     6900        M 0x80001fc4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     6901        M 0x80001fc8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     6902        M 0x80001fcc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     6903        M 0x80001fd0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6904        M 0x80001fd4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     6905        M 0x80001fd8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fc0
       0     6906        M 0x80001fc0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     6907        M 0x80001fc4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     6908        M 0x80001fc8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     6909        M 0x80001fcc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     6910        M 0x80001fd0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6911        M 0x80001fd4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     6912        M 0x80001fd8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fc0
       0     6913        M 0x80001fc0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     6914        M 0x80001fc4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     6915        M 0x80001fc8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     6916        M 0x80001fcc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     6917        M 0x80001fd0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6918        M 0x80001fd4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     6919        M 0x80001fd8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fc0
       0     6920        M 0x80001fc0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     6921        M 0x80001fc4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     6922        M 0x80001fc8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     6923        M 0x80001fcc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     6924        M 0x80001fd0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     6925        M 0x80001fd4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     6926        M 0x80001fd8 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     6927        M 0x80001fdc add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     6939        M 0x80001fe0 j       pc + 0x28              #; goto 0x80002008
       0     6951        M 0x80002008 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     6952        M 0x8000200c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     6963        M 0x80002010 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     6964        M 0x80002014 add     a0, a1, a0             #; a1  = 0x0011fe28, a0  = 6, (wrb) a0  <-- 0x0011fe2e
       0     6965        M 0x80002018 li      a1, 46                 #; (wrb) a1  <-- 46
       0     6966        M 0x8000201c sb      a1, 0(a0)              #; a0  = 0x0011fe2e, 46 ~~> Byte[0x0011fe2e]
       0     6975        M 0x80002020 j       pc + 0x8               #; goto 0x80002028
       0     6976        M 0x80002028 li      a0, 32                 #; (wrb) a0  <-- 32
       0     6977        M 0x8000202c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     6988        M 0x80002030 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     6989        M 0x80002034 li      t0, 32                 #; (wrb) t0  <-- 32
       0     6991        M 0x8000203c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80002038 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     7000        M 0x80002040 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     7001        M 0x80002044 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7002        M 0x80002048 addi    a3, sp, 8              #; sp  = 0x0011fe20, (wrb) a3  <-- 0x0011fe28
       0     7003        M 0x8000204c li      a4, 18                 #; (wrb) a4  <-- 18
       0     7012        M 0x80002050 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     7013        M 0x80002054 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     7016        M                                           #; (acc) a5  <-- 0x01f55793
       0     7017        M 0x80002058 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     7018        M 0x8000205c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     7024        M 0x80002060 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     7025        M 0x80002064 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     7028        M                                           #; (acc) a5  <-- 0x40f487b3
       0     7029        M 0x80002068 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     7030        M 0x8000206c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     7036        M 0x80002070 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     7037        M 0x80002074 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 7, (wrb) s0  <-- 0x0011fe2f
       0     7038        M 0x80002078 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     7039        M 0x8000207c sb      a5, 0(s0)              #; s0  = 0x0011fe2f, 48 ~~> Byte[0x0011fe2f]
       0     7048        M 0x80002080 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     7049        M 0x80002084 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     7050        M 0x80002088 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     7051        M 0x8000208c j       pc + 0x8               #; goto 0x80002094
       0     7063        M 0x80002094 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     7064        M 0x80002098 li      a0, 1                  #; (wrb) a0  <-- 1
       0     7065        M 0x8000209c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002108
       0     7086        M 0x80002108 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7087        M 0x8000210c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     7098        M 0x80002110 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002128
       0     7110        M 0x80002128 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     7111        M 0x8000212c bnez    a0, pc + 32            #; a0  = 0, not taken
       0     7122        M 0x80002130 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     7123        M 0x80002134 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002160
       0     7145        M 0x80002160 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     7146        M 0x80002164 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     7147        M 0x80002168 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7148        M 0x8000216c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7157        M 0x80002170 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     7158        M 0x80002174 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     7159        M 0x80002178 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800021a4
       0     7180        M 0x800021a4 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     7181        M 0x800021a8 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     7182        M 0x800021ac addi    s9, sp, 7              #; sp  = 0x0011fe20, (wrb) s9  <-- 0x0011fe27
       0     7192        M 0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 8, (wrb) a0  <-- 0x0011fe2f
       0     7193        M 0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2f, a0  <~~ Byte[0x0011fe2f]
       0     7194        M 0x800021b8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     7195        M 0x800021bc addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     7196        M                                           #; (lsu) a0  <-- 48
       0     7204        M 0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7205        M 0x800021c4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     7206        M 0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7207        M 0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
       0     7218        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7219        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7220        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7221        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7222        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     7223        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     7224        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7225        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     7226        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7237        M                                           #; (lsu) a4  <-- 8
       0     7238        M 0x80001b04 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     7239        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 9 ~~> Word[0x80003934]
       0     7240        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 8, (wrb) a4  <-- 0x8000393c
       0     7241        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393c, 48 ~~> Byte[0x80003984]
       0     7242        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7263        M                                           #; (lsu) a4  <-- 9
       0     7264        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     7265        M 0x80001b1c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     7266        M 0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7267        M 0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7268        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7269        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     7272        M 0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
       0     7277        M 0x800021d0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     7278        M 0x800021d4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     7279        M 0x800021d8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800021b0
       0     7280        M 0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 7, (wrb) a0  <-- 0x0011fe2e
       0     7281        M 0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2e, a0  <~~ Byte[0x0011fe2e]
       0     7282        M 0x800021b8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     7283        M 0x800021bc addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7284        M 0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7285        M 0x800021c4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7286        M 0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7287        M 0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
       0     7288        M                                           #; (lsu) a0  <-- 46
       0     7290        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     7291        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7292        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7293        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7294        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     7295        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     7296        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7297        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     7298        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7309        M                                           #; (lsu) a4  <-- 9
       0     7310        M 0x80001b04 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7311        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 10 ~~> Word[0x80003934]
       0     7312        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 9, (wrb) a4  <-- 0x8000393d
       0     7313        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393d, 46 ~~> Byte[0x80003985]
       0     7314        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7335        M                                           #; (lsu) a4  <-- 10
       0     7336        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7337        M 0x80001b1c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7338        M 0x80001b20 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     7339        M 0x80001b24 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     7340        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7341        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     7344        M 0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
       0     7349        M 0x800021d0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7350        M 0x800021d4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     7351        M 0x800021d8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800021b0
       0     7352        M 0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 6, (wrb) a0  <-- 0x0011fe2d
       0     7353        M 0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2d, a0  <~~ Byte[0x0011fe2d]
       0     7354        M 0x800021b8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     7355        M 0x800021bc addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7356        M 0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7357        M 0x800021c4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7358        M 0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7359        M 0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
       0     7360        M                                           #; (lsu) a0  <-- 48
       0     7362        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7363        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7364        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7365        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7366        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     7367        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     7368        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7369        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     7370        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7381        M                                           #; (lsu) a4  <-- 10
       0     7382        M 0x80001b04 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7383        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 11 ~~> Word[0x80003934]
       0     7384        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 10, (wrb) a4  <-- 0x8000393e
       0     7385        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393e, 48 ~~> Byte[0x80003986]
       0     7386        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7407        M                                           #; (lsu) a4  <-- 11
       0     7408        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7409        M 0x80001b1c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7410        M 0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7411        M 0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7412        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7413        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     7416        M 0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
       0     7421        M 0x800021d0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7422        M 0x800021d4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     7423        M 0x800021d8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800021b0
       0     7424        M 0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 5, (wrb) a0  <-- 0x0011fe2c
       0     7425        M 0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2c, a0  <~~ Byte[0x0011fe2c]
       0     7426        M 0x800021b8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     7427        M 0x800021bc addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7428        M 0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7429        M 0x800021c4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7430        M 0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7431        M 0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
       0     7432        M                                           #; (lsu) a0  <-- 48
       0     7434        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7435        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7436        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7437        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7438        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     7439        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     7440        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7441        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     7442        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7453        M                                           #; (lsu) a4  <-- 11
       0     7454        M 0x80001b04 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7455        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 12 ~~> Word[0x80003934]
       0     7456        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 11, (wrb) a4  <-- 0x8000393f
       0     7457        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393f, 48 ~~> Byte[0x80003987]
       0     7458        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7479        M                                           #; (lsu) a4  <-- 12
       0     7480        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7481        M 0x80001b1c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7482        M 0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7483        M 0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7484        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7485        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     7488        M 0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
       0     7493        M 0x800021d0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7494        M 0x800021d4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     7495        M 0x800021d8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800021b0
       0     7496        M 0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 4, (wrb) a0  <-- 0x0011fe2b
       0     7497        M 0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2b, a0  <~~ Byte[0x0011fe2b]
       0     7498        M 0x800021b8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     7499        M 0x800021bc addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     7500        M 0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7501        M 0x800021c4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     7502        M 0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7503        M 0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
       0     7504        M                                           #; (lsu) a0  <-- 48
       0     7506        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7507        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7508        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7509        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7510        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     7511        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     7512        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7513        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     7514        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7525        M                                           #; (lsu) a4  <-- 12
       0     7526        M 0x80001b04 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7527        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 13 ~~> Word[0x80003934]
       0     7528        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 12, (wrb) a4  <-- 0x80003940
       0     7529        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003940, 48 ~~> Byte[0x80003988]
       0     7530        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7551        M                                           #; (lsu) a4  <-- 13
       0     7552        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     7553        M 0x80001b1c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     7554        M 0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7555        M 0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7556        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7557        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     7560        M 0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
       0     7565        M 0x800021d0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     7566        M 0x800021d4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     7567        M 0x800021d8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800021b0
       0     7568        M 0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 3, (wrb) a0  <-- 0x0011fe2a
       0     7569        M 0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2a, a0  <~~ Byte[0x0011fe2a]
       0     7570        M 0x800021b8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     7571        M 0x800021bc addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     7572        M 0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7573        M 0x800021c4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     7574        M 0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7575        M 0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
       0     7576        M                                           #; (lsu) a0  <-- 48
       0     7578        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7579        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7580        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7581        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7582        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     7583        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     7584        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7585        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     7586        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7597        M                                           #; (lsu) a4  <-- 13
       0     7598        M 0x80001b04 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     7599        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 14 ~~> Word[0x80003934]
       0     7600        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 13, (wrb) a4  <-- 0x80003941
       0     7601        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003941, 48 ~~> Byte[0x80003989]
       0     7602        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7623        M                                           #; (lsu) a4  <-- 14
       0     7624        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     7625        M 0x80001b1c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     7626        M 0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7627        M 0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7628        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7629        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     7632        M 0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
       0     7637        M 0x800021d0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     7638        M 0x800021d4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     7639        M 0x800021d8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800021b0
       0     7640        M 0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 2, (wrb) a0  <-- 0x0011fe29
       0     7641        M 0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe29, a0  <~~ Byte[0x0011fe29]
       0     7642        M 0x800021b8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     7643        M 0x800021bc addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     7644        M 0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7645        M 0x800021c4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     7646        M 0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7647        M 0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
       0     7648        M                                           #; (lsu) a0  <-- 48
       0     7650        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7651        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7652        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7653        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7654        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     7655        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     7656        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7657        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     7658        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7669        M                                           #; (lsu) a4  <-- 14
       0     7670        M 0x80001b04 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     7671        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 15 ~~> Word[0x80003934]
       0     7672        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 14, (wrb) a4  <-- 0x80003942
       0     7673        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003942, 48 ~~> Byte[0x8000398a]
       0     7674        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7695        M                                           #; (lsu) a4  <-- 15
       0     7696        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     7697        M 0x80001b1c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     7698        M 0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7699        M 0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7700        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7701        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     7704        M 0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
       0     7709        M 0x800021d0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     7710        M 0x800021d4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     7711        M 0x800021d8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800021b0
       0     7712        M 0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 1, (wrb) a0  <-- 0x0011fe28
       0     7713        M 0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe28, a0  <~~ Byte[0x0011fe28]
       0     7714        M 0x800021b8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     7715        M 0x800021bc addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     7716        M 0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7717        M 0x800021c4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     7718        M 0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7719        M 0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
       0     7720        M                                           #; (lsu) a0  <-- 48
       0     7722        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7723        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7724        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7725        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7726        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     7727        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     7728        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7729        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     7730        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7741        M                                           #; (lsu) a4  <-- 15
       0     7742        M 0x80001b04 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     7743        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 16 ~~> Word[0x80003934]
       0     7744        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 15, (wrb) a4  <-- 0x80003943
       0     7745        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003943, 48 ~~> Byte[0x8000398b]
       0     7746        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7767        M                                           #; (lsu) a4  <-- 16
       0     7768        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     7769        M 0x80001b1c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     7770        M 0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7771        M 0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7772        M 0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7773        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
       0     7776        M 0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
       0     7781        M 0x800021d0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7782        M 0x800021d4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     7783        M 0x800021d8 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     7784        M 0x800021dc j       pc + 0x8               #; goto 0x800021e4
       0     7796        M 0x800021e4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     7797        M 0x800021e8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     7798        M 0x800021ec xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7808        M 0x800021f0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7809        M 0x800021f4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7810        M 0x800021f8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002228
       0     7831        M 0x80002228 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7832        M 0x8000222c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     7845        M 0x80002230 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe48]
       0     7846        M 0x8000223c lw      s10, 64(sp)            #; sp  = 0x0011fe20, s10 <~~ Word[0x0011fe60]
                         M 0x80002234 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe50], (f:lsu) fs2  <-- 0.0
       0     7847        M 0x80002238 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe58], (f:lsu) fs1  <-- 0.0
       0     7848        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     7850        M                                           #; (lsu) s10 <-- 0x8000355e
       0     7855        M 0x80002240 lw      s9, 68(sp)             #; sp  = 0x0011fe20, s9  <~~ Word[0x0011fe64]
       0     7858        M                                           #; (lsu) s9  <-- 8
       0     7859        M 0x80002244 lw      s8, 72(sp)             #; sp  = 0x0011fe20, s8  <~~ Word[0x0011fe68]
       0     7862        M                                           #; (lsu) s8  <-- 16
       0     7863        M 0x80002248 lw      s7, 76(sp)             #; sp  = 0x0011fe20, s7  <~~ Word[0x0011fe6c]
       0     7866        M                                           #; (lsu) s7  <-- 0
       0     7867        M 0x8000224c lw      s6, 80(sp)             #; sp  = 0x0011fe20, s6  <~~ Word[0x0011fe70]
       0     7870        M                                           #; (lsu) s6  <-- 0
       0     7871        M 0x80002250 lw      s5, 84(sp)             #; sp  = 0x0011fe20, s5  <~~ Word[0x0011fe74]
       0     7874        M                                           #; (lsu) s5  <-- -1
       0     7875        M 0x80002254 lw      s4, 88(sp)             #; sp  = 0x0011fe20, s4  <~~ Word[0x0011fe78]
       0     7878        M                                           #; (lsu) s4  <-- 0x0011ff07
       0     7879        M 0x80002258 lw      s3, 92(sp)             #; sp  = 0x0011fe20, s3  <~~ Word[0x0011fe7c]
       0     7882        M                                           #; (lsu) s3  <-- 0x0011ff20
       0     7883        M 0x8000225c lw      s2, 96(sp)             #; sp  = 0x0011fe20, s2  <~~ Word[0x0011fe80]
       0     7886        M                                           #; (lsu) s2  <-- 0x80001ae4
       0     7887        M 0x80002260 lw      s1, 100(sp)            #; sp  = 0x0011fe20, s1  <~~ Word[0x0011fe84]
       0     7890        M                                           #; (lsu) s1  <-- 8
       0     7891        M 0x80002264 lw      s0, 104(sp)            #; sp  = 0x0011fe20, s0  <~~ Word[0x0011fe88]
       0     7894        M                                           #; (lsu) s0  <-- 0
       0     7895        M 0x80002268 lw      ra, 108(sp)            #; sp  = 0x0011fe20, ra  <~~ Word[0x0011fe8c]
       0     7896        M 0x8000226c addi    sp, sp, 112            #; sp  = 0x0011fe20, (wrb) sp  <-- 0x0011fe90
       0     7898        M                                           #; (lsu) ra  <-- 0x80001214
       0     7899        M 0x80002270 ret                            #; ra  = 0x80001214, goto 0x80001214
       0     7911        M 0x80001214 j       pc + 0x7c0             #; goto 0x800019d4
       0     7914        M 0x800019d4 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     7915        M 0x800019d8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     7916        M 0x800019dc li      s7, 46                 #; (wrb) s7  <-- 46
       0     7926        M 0x800019e0 addi    s0, s10, 1             #; s10 = 0x8000355e, (wrb) s0  <-- 0x8000355f
       0     7927        M 0x800019e4 j       pc - 0xa74             #; goto 0x80000f70
       0     7938        M 0x80000f70 addi    s10, s0, 2             #; s0  = 0x8000355f, (wrb) s10 <-- 0x80003561
       0     7939        M 0x80000f74 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     7940        M 0x80000f78 li      s8, 10                 #; (wrb) s8  <-- 10
       0     7941        M 0x80000f7c lbu     a0, 0(s0)              #; s0  = 0x8000355f, a0  <~~ Byte[0x8000355f]
       0     7952        M                                           #; (lsu) a0  <-- 10
       0     7953        M 0x80000f80 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7954        M 0x80000f84 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7955        M 0x80000f88 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     7956        M 0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7962        M 0x80000f90 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     7963        M 0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7964        M 0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
       0     7976        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7977        M 0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7978        M 0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7979        M 0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7980        M 0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
       0     7981        M 0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
       0     7982        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7983        M 0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
       0     7984        M 0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     7995        M                                           #; (lsu) a4  <-- 16
       0     7996        M 0x80001b04 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     7997        M 0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 17 ~~> Word[0x80003934]
       0     7998        M 0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 16, (wrb) a4  <-- 0x80003944
       0     7999        M 0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003944, 10 ~~> Byte[0x8000398c]
       0     8000        M 0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
       0     8021        M                                           #; (lsu) a4  <-- 17
       0     8022        M 0x80001b18 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     8023        M 0x80001b1c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     8024        M 0x80001b20 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     8025        M 0x80001b24 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     8026        M 0x80001b28 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     8027        M 0x80001b2c bnez    a0, pc + 96            #; a0  = 0, not taken
       0     8028        M 0x80001b30 add     a0, a3, a2             #; a3  = 0x80003934, a2  = 0, (wrb) a0  <-- 0x80003934
       0     8029        M 0x80001b34 addi    a2, a0, 72             #; a0  = 0x80003934, (wrb) a2  <-- 0x8000397c
       0     8030        M 0x80001b38 sw      zero, 12(a0)           #; a0  = 0x80003934, 0 ~~> Word[0x80003940]
       0     8031        M 0x80001b3c li      a3, 64                 #; (wrb) a3  <-- 64
       0     8040        M 0x80001b40 sw      a3, 8(a0)              #; a0  = 0x80003934, 64 ~~> Word[0x8000393c]
       0     8041        M 0x80001b44 sw      zero, 20(a0)           #; a0  = 0x80003934, 0 ~~> Word[0x80003948]
       0     8042        M 0x80001b48 li      a3, 1                  #; (wrb) a3  <-- 1
       0     8043        M 0x80001b4c sw      a3, 16(a0)             #; a0  = 0x80003934, 1 ~~> Word[0x80003944]
       0     8052        M 0x80001b50 sw      zero, 28(a0)           #; a0  = 0x80003934, 0 ~~> Word[0x80003950]
       0     8053        M 0x80001b54 sw      a2, 24(a0)             #; a0  = 0x80003934, 0x8000397c ~~> Word[0x8000394c]
       0     8055        M 0x80001b58 lw      a2, 0(a1)              #; a1  = 0x80003934, a2  <~~ Word[0x80003934]
       0     8056        M 0x80001b5c addi    a3, a0, 8              #; a0  = 0x80003934, (wrb) a3  <-- 0x8000393c
       0     8065        M 0x80001b60 sw      zero, 36(a0)           #; a0  = 0x80003934, 0 ~~> Word[0x80003958]
       0     8084        M                                           #; (lsu) a2  <-- 17
       0     8085        M 0x80001b64 sw      a2, 32(a0)             #; a0  = 0x80003934, 17 ~~> Word[0x80003954]
       0     8086        M 0x80001b68 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003b68
       0     8087        M 0x80001b6c addi    a0, a0, -1000          #; a0  = 0x80003b68, (wrb) a0  <-- 0x80003780
       0     8088        M 0x80001b70 sw      a3, 0(a0)              #; a0  = 0x80003780, 0x8000393c ~~> Word[0x80003780]
       0     8089        M 0x80001b74 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003b74
       0     8090        M 0x80001b78 addi    a0, a0, -948           #; a0  = 0x80003b74, (wrb) a0  <-- 0x800037c0
       0     8091        M 0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
       0     8114        M                                           #; (lsu) a2  <-- 0
       0     8115        M 0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
       0     8116        M 0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
       0     8127        M                                           #; (lsu) a2  <-- 0
       0     8128        M 0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
       0     8129        M 0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
       0     8140        M                                           #; (lsu) a2  <-- 0
       0     8141        M 0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
       0     8142        M 0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
       0     8153        M                                           #; (lsu) a2  <-- 0
       0     8154        M 0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
       0     8155        M 0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
       0     8166        M                                           #; (lsu) a2  <-- 0
       0     8167        M 0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
       0     8168        M 0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
       0     8179        M                                           #; (lsu) a2  <-- 0
       0     8180        M 0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
       0     8181        M 0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
       0     8192        M                                           #; (lsu) a2  <-- 0
       0     8193        M 0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
       0     8194        M 0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
       0     8205        M                                           #; (lsu) a2  <-- 1
       0     8206        M 0x80001b80 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     8207        M 0x80001b84 sw      zero, 0(a0)            #; a0  = 0x800037c0, 0 ~~> Word[0x800037c0]
       0     8208        M 0x80001b88 sw      zero, 0(a1)            #; a1  = 0x80003934, 0 ~~> Word[0x80003934]
       0     8209        M 0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
       0     8212        M 0x80000f9c addi    s0, s0, 1              #; s0  = 0x8000355f, (wrb) s0  <-- 0x80003560
       0     8215        M 0x80000fa0 addi    s10, s10, 1            #; s10 = 0x80003561, (wrb) s10 <-- 0x80003562
       0     8216        M 0x80000fa4 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     8217        M 0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x80003560, a0  <~~ Byte[0x80003560]
       0     8230        M                                           #; (lsu) a0  <-- 0
       0     8231        M 0x80000fac bnez    a0, pc - 40            #; a0  = 0, not taken
       0     8243        M 0x80000fb0 j       pc + 0xad8             #; goto 0x80001a88
       0     8255        M 0x80001a88 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     8256        M 0x80001a8c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001a94
       0     8267        M 0x80001a94 li      a0, 0                  #; (wrb) a0  <-- 0
       0     8268        M 0x80001a98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     8269        M 0x80001a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8279        M 0x80001aa0 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80001aa4, goto 0x80001ae4
       0     8293        M 0x80001ae4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001b8c
       0     8298        M 0x80001b8c ret                            #; ra  = 0x80001aa4, goto 0x80001aa4
       0     8299        M 0x80001aa4 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     8300        M 0x80001aa8 lw      s11, 60(sp)            #; sp  = 0x0011fe90, s11 <~~ Word[0x0011fecc]
       0     8303        M                                           #; (lsu) s11 <-- 0
       0     8304        M 0x80001aac lw      s10, 64(sp)            #; sp  = 0x0011fe90, s10 <~~ Word[0x0011fed0]
       0     8307        M                                           #; (lsu) s10 <-- 0
       0     8308        M 0x80001ab0 lw      s9, 68(sp)             #; sp  = 0x0011fe90, s9  <~~ Word[0x0011fed4]
       0     8311        M                                           #; (lsu) s9  <-- 0
       0     8312        M 0x80001ab4 lw      s8, 72(sp)             #; sp  = 0x0011fe90, s8  <~~ Word[0x0011fed8]
       0     8315        M                                           #; (lsu) s8  <-- 0
       0     8316        M 0x80001ab8 lw      s7, 76(sp)             #; sp  = 0x0011fe90, s7  <~~ Word[0x0011fedc]
       0     8319        M                                           #; (lsu) s7  <-- 0
       0     8320        M 0x80001abc lw      s6, 80(sp)             #; sp  = 0x0011fe90, s6  <~~ Word[0x0011fee0]
       0     8323        M                                           #; (lsu) s6  <-- 0x001000f0
       0     8324        M 0x80001ac0 lw      s5, 84(sp)             #; sp  = 0x0011fe90, s5  <~~ Word[0x0011fee4]
       0     8327        M                                           #; (lsu) s5  <-- 4
       0     8328        M 0x80001ac4 lw      s4, 88(sp)             #; sp  = 0x0011fe90, s4  <~~ Word[0x0011fee8]
       0     8331        M                                           #; (lsu) s4  <-- 8
       0     8332        M 0x80001ac8 lw      s3, 92(sp)             #; sp  = 0x0011fe90, s3  <~~ Word[0x0011feec]
       0     8335        M                                           #; (lsu) s3  <-- 6
       0     8336        M 0x80001acc lw      s2, 96(sp)             #; sp  = 0x0011fe90, s2  <~~ Word[0x0011fef0]
       0     8339        M                                           #; (lsu) s2  <-- 0x00100000
       0     8340        M 0x80001ad0 lw      s1, 100(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011fef4]
       0     8343        M                                           #; (lsu) s1  <-- 0
       0     8344        M 0x80001ad4 lw      s0, 104(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011fef8]
       0     8347        M                                           #; (lsu) s0  <-- 0x00100240
       0     8348        M 0x80001ad8 lw      ra, 108(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011fefc]
       0     8349        M 0x80001adc addi    sp, sp, 112            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff00
       0     8351        M                                           #; (lsu) ra  <-- 0x80000ee0
       0     8352        M 0x80001ae0 ret                            #; ra  = 0x80000ee0, goto 0x80000ee0
       0     8364        M 0x80000ee0 lw      ra, 12(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff0c]
       0     8365        M 0x80000ee4 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
       0     8367        M                                           #; (lsu) ra  <-- 0x80000e54
       0     8368        M 0x80000ee8 ret                            #; ra  = 0x80000e54, goto 0x80000e54
       0     8387        M 0x80000e54 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003e54
       0     8388        M 0x80000e58 addi    a0, a0, -1492          #; a0  = 0x80003e54, (wrb) a0  <-- 0x80003880
       0     8391        M 0x80000e5c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003880]
       0     8400        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     8401        M 0x80000e68 lw      s6, 16(sp)             #; sp  = 0x0011ff30, s6  <~~ Word[0x0011ff40]
                         M 0x80000e60 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
       0     8403        M                                           #; (acc) s5  <-- 0x01412a83
                         M 0x80000e64 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff38]
       0     8404        M                                           #; (lsu) s6  <-- 0
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0     8405        M 0x80000e6c lw      s5, 20(sp)             #; sp  = 0x0011ff30, s5  <~~ Word[0x0011ff44]
       0     8408        M                                           #; (lsu) s5  <-- 0
       0     8411        M 0x80000e70 lw      s4, 24(sp)             #; sp  = 0x0011ff30, s4  <~~ Word[0x0011ff48]
       0     8414        M                                           #; (lsu) s4  <-- 0
       0     8415        M 0x80000e74 lw      s3, 28(sp)             #; sp  = 0x0011ff30, s3  <~~ Word[0x0011ff4c]
       0     8418        M                                           #; (lsu) s3  <-- 0
       0     8419        M 0x80000e78 lw      s2, 32(sp)             #; sp  = 0x0011ff30, s2  <~~ Word[0x0011ff50]
       0     8422        M                                           #; (lsu) s2  <-- 0
       0     8423        M 0x80000e7c lw      s1, 36(sp)             #; sp  = 0x0011ff30, s1  <~~ Word[0x0011ff54]
       0     8426        M                                           #; (lsu) s1  <-- 0
       0     8427        M 0x80000e80 lw      s0, 40(sp)             #; sp  = 0x0011ff30, s0  <~~ Word[0x0011ff58]
       0     8430        M                                           #; (lsu) s0  <-- 0
       0     8431        M 0x80000e84 lw      ra, 44(sp)             #; sp  = 0x0011ff30, ra  <~~ Word[0x0011ff5c]
       0     8432        M 0x80000e88 addi    sp, sp, 48             #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff60
       0     8434        M                                           #; (lsu) ra  <-- 0x800032d0
       0     8435        M 0x80000e8c ret                            #; ra  = 0x800032d0, goto 0x800032d0
       0     8438        M 0x800032d0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     8439        M 0x800032d4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800032d4
       0     8440        M 0x800032d8 jalr    ra, ra, 524            #; ra  = 0x800032d4, (wrb) ra  <-- 0x800032dc, goto 0x800034e0
       0     8443        M 0x800034e0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     8444        M 0x800034e4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800032dc ~~> Word[0x0011ff5c]
       0     8445        M 0x800034e8 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800024e8
       0     8446        M 0x800034ec jalr    ra, ra, 1924           #; ra  = 0x800024e8, (wrb) ra  <-- 0x800034f0, goto 0x80002c6c
       0     8449        M 0x80002c6c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     8452        M 0x80002c70 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     8453        M 0x80002c74 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     8456        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8457        M 0x80002c78 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     8460        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8461        M 0x80002c7c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     8462        M 0x80002c80 ret                            #; ra  = 0x800034f0, goto 0x800034f0
       0     8464        M                                           #; (lsu) a0  <-- 0x00120190
       0     8465        M 0x800034f0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     8475        M                                           #; (lsu) a0  <-- 0
       0     8476        M 0x800034f4 mv      zero, a0               #; a0  = 0
       0     8477        M 0x800034f8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     8478        M 0x800034fc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     8480        M                                           #; (lsu) ra  <-- 0x800032dc
       0     8481        M 0x80003500 ret                            #; ra  = 0x800032dc, goto 0x800032dc
       0     8484        M 0x800032dc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     8488        M 0x800032e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800032e0
       0     8489        M 0x800032e4 jalr    ra, ra, 556            #; ra  = 0x800032e0, (wrb) ra  <-- 0x800032e8, goto 0x8000350c
       0     8490        M 0x8000350c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     8491        M 0x80003510 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     8492        M 0x80003514 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800032e8 ~~> Word[0x0011ff5c]
       0     8493        M 0x80003518 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80002518
       0     8494        M 0x8000351c jalr    ra, ra, 1844           #; ra  = 0x80002518, (wrb) ra  <-- 0x80003520, goto 0x80002c4c
       0     8507        M 0x80002c4c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     8511        M 0x80002c50 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     8512        M 0x80002c54 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     8515        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8516        M 0x80002c58 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     8519        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8520        M 0x80002c5c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     8521        M 0x80002c60 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8523        M                                           #; (lsu) a0  <-- 0
       0     8524        M 0x80002c64 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     8525        M 0x80002c68 ret                            #; ra  = 0x80003520, goto 0x80003520
       0     8526        M 0x80003520 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     8529        M                                           #; (lsu) t0  <-- 0
       0     8530        M 0x80003524 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     8531        M 0x80003528 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     8532        M 0x8000352c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     8533        M                                           #; (lsu) ra  <-- 0x800032e8
       0     8537        M 0x80003530 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     8538        M 0x80003534 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     8539        M 0x80003538 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003538
       0     8540        M 0x8000353c addi    t1, t1, 584            #; t1  = 0x80003538, (wrb) t1  <-- 0x80003780
       0     8548        M 0x80003540 sw      t0, 0(t1)              #; t1  = 0x80003780, 1 ~~> Word[0x80003780]
       0     8549        M 0x80003544 ret                            #; ra  = 0x800032e8, goto 0x800032e8
       0     8564        M 0x800032e8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 8564):
snitch_loads                                   175
snitch_stores                                  178
fpss_stores                                      5
fpss_loads                                      34
snitch_avg_load_latency                    10.2571
snitch_occupancy                            0.2976
snitch_fseq_rel_offloads                    0.2027
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.0738
fpss_avg_load_latency                       7.8235
fpss_occupancy                              0.0756
fpss_fpu_occupancy                          0.0697
fpss_fpu_rel_occupancy                      0.9212
cycles                                        8553
total_ipc                                   0.3732
