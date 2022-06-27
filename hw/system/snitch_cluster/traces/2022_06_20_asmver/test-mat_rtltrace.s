       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800031a0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800031a0, (wrb) ra  <-- 4120, goto 0x800031a0
       0      269        M 0x800031a0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800041a0
       0      270        M 0x800031a4 addi    gp, gp, -280           #; gp  = 0x800041a0, (wrb) gp  <-- 0x80004088
       0      271        M 0x800031a8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800031a8
       0      272        M 0x800031ac jalr    ra, ra, 964            #; ra  = 0x800031a8, (wrb) ra  <-- 0x800031b0, goto 0x8000356c
       0      292        M 0x8000356c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80003570 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80003574 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80003578 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x8000357c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80003580 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80003584 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80003588 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x8000358c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80003590 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80003594 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80003598 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x8000359c ret                            #; ra  = 0x800031b0, goto 0x800031b0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800031b0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800031b4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800031b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800031b8
       0      508        M 0x800031bc jalr    ra, ra, 1036           #; ra  = 0x800031b8, (wrb) ra  <-- 0x800031c0, goto 0x800035c4
       0      523        M 0x800035c4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x800035c8 ret                            #; ra  = 0x800031c0, goto 0x800031c0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800031c0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800031c4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800031c8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800031cc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800031d0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800031d4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800031d4
       0      551        M 0x800031d8 addi    t0, t0, 1924           #; t0  = 0x800031d4, (wrb) t0  <-- 0x80003958
       0      552        M 0x800031dc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800031dc
       0      562        M 0x800031e0 addi    t1, t1, 1920           #; t1  = 0x800031dc, (wrb) t1  <-- 0x8000395c
       0      563        M 0x800031e4 bge     t0, t1, pc + 16        #; t0  = 0x80003958, t1  = 0x8000395c, not taken
       0      564        M 0x800031e8 sw      zero, 0(t0)            #; t0  = 0x80003958, 0 ~~> Word[0x80003958]
       0      565        M 0x800031ec addi    t0, t0, 4              #; t0  = 0x80003958, (wrb) t0  <-- 0x8000395c
       0      573        M 0x800031f0 blt     t0, t1, pc - 8         #; t0  = 0x8000395c, t1  = 0x8000395c, not taken
       0      574        M 0x800031f4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800031f8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800031fc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80003200 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80003204 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80003208 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000320c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80003210 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80003214 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80003218 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000321c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80003220 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80003224 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80003228 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000322c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80003230 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80003234 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80003238 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000323c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80003240 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80003244 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80003248 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000324c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80003250 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80003254 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80003258 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000325c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80003260 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80003264 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80003268 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000326c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80003270 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80003274 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80003278 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000327c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80003280 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80003284 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80003288 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003288
       0      684        M 0x8000328c lw      t0, 900(t0)            #; t0  = 0x80003288, t0  <~~ Word[0x8000360c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80003290 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80003294 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80003298 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003298
       0      708        M 0x8000329c lw      t2, 880(t2)            #; t2  = 0x80003298, t2  <~~ Word[0x80003608]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800032a0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800032a4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800032a8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800032ac sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800032b0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800032b4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800032b8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800032bc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800032c0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800032c0
       0      762        M 0x800032c4 addi    t0, t0, 1480           #; t0  = 0x800032c0, (wrb) t0  <-- 0x80003888
       0      763        M 0x800032c8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800032c8
       0      764        M 0x800032cc addi    t1, t1, 1472           #; t1  = 0x800032c8, (wrb) t1  <-- 0x80003888
       0      775        M 0x800032d0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800032d0
       0      776        M 0x800032d4 addi    t2, t2, 1464           #; t2  = 0x800032d0, (wrb) t2  <-- 0x80003888
       0      777        M 0x800032d8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800032d8
       0      778        M 0x800032dc addi    t3, t3, 1472           #; t3  = 0x800032d8, (wrb) t3  <-- 0x80003898
       0      787        M 0x800032e0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003888, (wrb) sp  <-- 0x801237f8
       0      788        M 0x800032e4 sub     sp, sp, t1             #; sp  = 0x801237f8, t1  = 0x80003888, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x800032e8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003888, (wrb) sp  <-- 0x801237f8
       0      790        M 0x800032ec sub     sp, sp, t3             #; sp  = 0x801237f8, t3  = 0x80003898, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x800032f0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x800032f4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x800032f8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x800032fc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80003300 bge     t0, t1, pc + 24        #; t0  = 0x80003888, t1  = 0x80003888, taken, goto 0x80003318
       0      823        M 0x80003318 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003318
       0      824        M 0x8000331c addi    t0, t0, 1392           #; t0  = 0x80003318, (wrb) t0  <-- 0x80003888
       0      835        M 0x80003320 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003320
       0      836        M 0x80003324 addi    t1, t1, 1400           #; t1  = 0x80003320, (wrb) t1  <-- 0x80003898
       0      837        M 0x80003328 bge     t0, t1, pc + 20        #; t0  = 0x80003888, t1  = 0x80003898, not taken
       0      838        M 0x8000332c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80003330 addi    t0, t0, 4              #; t0  = 0x80003888, (wrb) t0  <-- 0x8000388c
       0      848        M 0x80003334 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80003338 blt     t0, t2, pc - 12        #; t0  = 0x8000388c, t2  = 0x80003888, not taken
       0      850        M 0x8000333c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80003340 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80003344 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80003348 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000334c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80003350 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80003354 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003354
       0      877        M 0x80003358 jalr    ra, ra, -1060          #; ra  = 0x80003354, (wrb) ra  <-- 0x8000335c, goto 0x80002f30
       0      898        M 0x80002f30 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002f34 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002f38 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x80002f3c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002f40 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002f44 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002f48 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x80002f4c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002f50 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002f54 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002f58 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x80002f5c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002f60 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002f64 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002f68 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x80002f6c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002f70 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002f74 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002f78 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002f7c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002f80 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002f84 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002f88 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002f8c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002f90 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002f94 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002f98 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002f9c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002fa0 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002fa4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002fa8 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002fac add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002fb0 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002fb4 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002fb8 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002fbc srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x80002fc0 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x80002fc4 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x80002fc8 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002fcc sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x80002fd0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x80002fd4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x80002fd8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002fdc sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80002fe0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x80002fe4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x80002fe8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x80002fec sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x80002ff0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x80002ff4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x80002ff8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002ffc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x80003000 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x80003004 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x80003008 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x8000300c remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x80003010 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x80003014 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x80003018 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x8000301c li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80003020 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x80003024 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80004024
       0     1281        M 0x80003028 addi    a1, a1, -1736          #; a1  = 0x80004024, (wrb) a1  <-- 0x8000395c
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x8000302c add     a0, a0, a1             #; a0  = 0, a1  = 0x8000395c, (wrb) a0  <-- 0x8000395c
       0     1291        M 0x80003030 sw      zero, 0(a0)            #; a0  = 0x8000395c, 0 ~~> Word[0x8000395c]
       0     1292        M 0x80003034 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80003038 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x8000303c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80003040 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80003044 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80003048 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000304c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80003050 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80003054 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80003058 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000305c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80003060 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80003064 lw      a0, 0(a1)              #; a1  = 0x8000395c, a0  <~~ Word[0x8000395c]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80003068 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x8000306c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x80003070 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x80003074 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x80003078 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x8000307c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x80003080 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x80003084 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x80003088 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x8000308c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x80003090 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x80003094 ret                            #; ra  = 0x8000335c, goto 0x8000335c
       0     1415        M 0x8000335c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80003360 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80003364 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80003368 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x8000336c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80003370 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80003374 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003374
       0     1434        M 0x80003378 addi    t0, t0, 60             #; t0  = 0x80003374, (wrb) t0  <-- 0x800033b0
       0     1435        M 0x8000337c csrw    mtvec, t0              #; t0  = 0x800033b0, (lsu) a4  <-- 4132
       0     1443        M 0x80003380 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003380
       0     1444        M 0x80003384 jalr    ra, ra, 544            #; ra  = 0x80003380, (wrb) ra  <-- 0x80003388, goto 0x800035a0
       0     1460        M 0x800035a0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x800035a4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80003388 ~~> Word[0x0011ff5c]
       0     1462        M 0x800035a8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800035a8
       0     1463        M 0x800035ac jalr    ra, ra, -1264          #; ra  = 0x800035a8, (wrb) ra  <-- 0x800035b0, goto 0x800030b8
       0     1481        M 0x800030b8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x800030bc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x800030c0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x800030c4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x800030c8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x800030cc ret                            #; ra  = 0x800035b0, goto 0x800035b0
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x800035b0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x800035b4 mv      zero, a0               #; a0  = 0
       0     1537        M 0x800035b8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x800035bc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x80003388
       0     1541        M 0x800035c0 ret                            #; ra  = 0x80003388, goto 0x80003388
       0     1545        M 0x80003388 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x80000388
       0     1546        M 0x8000338c jalr    ra, ra, 684            #; ra  = 0x80000388, (wrb) ra  <-- 0x80003390, goto 0x80000634
       0     1551        M 0x80000634 addi    sp, sp, -192           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fea0
       0     1552        M 0x80000638 sw      ra, 188(sp)            #; sp  = 0x0011fea0, 0x80003390 ~~> Word[0x0011ff5c]
       0     1553        M 0x8000063c sw      s0, 184(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff58]
       0     1554        M 0x80000640 sw      s1, 180(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff54]
       0     1555        M 0x80000644 sw      s2, 176(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff50]
       0     1556        M 0x80000648 sw      s3, 172(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff4c]
       0     1557        M 0x8000064c sw      s4, 168(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff48]
       0     1567        M 0x80000650 sw      s5, 164(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff44]
       0     1568        M 0x80000654 sw      s6, 160(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff40]
       0     1571        M 0x80000658 fsd     fs0, 152(sp)           #; 0.0 ~~> Doub[0x0011ff38]
       0     1572        M 0x8000065c fsd     fs1, 144(sp)           #; 0.0 ~~> Doub[0x0011ff30]
       0     1581        M 0x80000660 fsd     fs2, 136(sp)           #; 0.0 ~~> Doub[0x0011ff28]
       0     1582        M 0x80000664 fsd     fs3, 128(sp)           #; 0.0 ~~> Doub[0x0011ff20]
       0     1583        M 0x80000668 fsd     fs4, 120(sp)           #; 0.0 ~~> Doub[0x0011ff18]
       0     1584        M 0x8000066c fsd     fs5, 112(sp)           #; 0.0 ~~> Doub[0x0011ff10]
       0     1593        M 0x80000670 fsd     fs6, 104(sp)           #; 0.0 ~~> Doub[0x0011ff08]
       0     1594        M 0x80000674 fsd     fs7, 96(sp)            #; 0.0 ~~> Doub[0x0011ff00]
       0     1595        M 0x80000678 fsd     fs8, 88(sp)            #; 0.0 ~~> Doub[0x0011fef8]
       0     1596        M 0x8000067c fsd     fs9, 80(sp)            #; 0.0 ~~> Doub[0x0011fef0]
       0     1605        M 0x80000688 lui     a0, 0x0                #; (wrb) a0  <-- 0
                         M 0x80000680 fsd     fs10, 72(sp)           #; 0.0 ~~> Doub[0x0011fee8]
       0     1606        M 0x8000068c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000684 fsd     fs11, 64(sp)           #; 0.0 ~~> Doub[0x0011fee0]
       0     1615        M 0x80000690 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1616        M 0x80000694 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1618        M                                           #; (lsu) a1  <-- 0
       0     1619        M 0x80000698 bnez    a1, pc + 2132          #; a1  = 0, not taken
       0     1620        M 0x8000069c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1627        M 0x800006a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1628        M 0x800006a4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1631        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1632        M 0x800006a8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1635        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1636        M 0x800006ac lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1639        M                                           #; (lsu) s0  <-- 0x00100000
       0     1643        M 0x800006b0 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1646        M                                           #; (lsu) a1  <-- 0x00100000
       0     1647        M 0x800006b4 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1648        M 0x800006b8 addi    a2, s0, 240            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000f0
       0     1650        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1651        M 0x800006bc add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1656        M 0x800006c0 bgeu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x001000f0, taken, goto 0x800006ec
       0     1682        M 0x800006ec mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1695        M 0x800006f0 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1696        M 0x800006f4 mv      s0, a2                 #; a2  = 0x001000f0, (wrb) s0  <-- 0x001000f0
       0     1697        M 0x800006f8 addi    a2, s0, 336            #; s0  = 0x001000f0, (wrb) a2  <-- 0x00100240
       0     1698        M 0x800006fc bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x00100240, taken, goto 0x800006d0
       0     1699        M 0x800006d0 mv      s6, s0                 #; s0  = 0x001000f0, (wrb) s6  <-- 0x001000f0
       0     1700        M 0x800006d4 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100240 ~~> Word[0x0011ffc8]
       0     1701        M 0x800006d8 mv      s0, a2                 #; a2  = 0x00100240, (wrb) s0  <-- 0x00100240
       0     1702        M 0x800006dc addi    a2, s0, 280            #; s0  = 0x00100240, (wrb) a2  <-- 0x00100358
       0     1703        M 0x800006e0 bltu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x00100358, not taken
       0     1704        M 0x800006e4 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100358 ~~> Word[0x0011ffc8]
       0     1705        M 0x800006e8 j       pc + 0x28              #; goto 0x80000710
       0     1718        M 0x80000710 srli    a0, s2, 20             #; s2  = 0x00100000, (wrb) a0  <-- 1
       0     1719        M 0x80000714 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     1720        M 0x80000718 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     1721        M 0x8000071c addi    a1, a1, -231           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011ff19
       0     1734        M 0x80000720 sltu    a1, s2, a1             #; s2  = 0x00100000, a1  = 0x0011ff19, (wrb) a1  <-- 1
       0     1735        M 0x80000724 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     1736        M 0x80000728 auipc   a6, 0x3                #; (wrb) a6  <-- 0x80003728
       0     1737        M 0x8000072c addi    a6, a6, 368            #; a6  = 0x80003728, (wrb) a6  <-- 0x80003898
       0     1761        M 0x80000730 li      a1, 0                  #; (wrb) a1  <-- 0
       0     1762        M 0x80000734 beqz    a0, pc + 120           #; a0  = 1, not taken
       0     1763        M 0x80000738 li      a0, 8                  #; (wrb) a0  <-- 8
       0     1764        M 0x8000073c li      a2, 29                 #; (wrb) a2  <-- 29
       0     1773        M 0x80000740 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1774        M 0x80000744 li      a4, 192                #; (wrb) a4  <-- 192
       0     1775        M 0x80000748 scfgw   a2, a3                 #; a2  = 29, a3  = 64
       0     1776        M 0x8000074c scfgw   a0, a4                 #; a0  = 8, a4  = 192
       0     1785        M 0x80000750 li      a0, 32                 #; (wrb) a0  <-- 32
       0     1786        M 0x80000754 scfgw   zero, a0               #; a0  = 32
       0     1787        M 0x80000758 scfgwi  s2, 896                #; s2  = 0x00100000
       0     1789        M 0x8000075c csrsi   ssr, 1                 #; 
       0     1797        M 0x80000760 li      a2, 30                 #; (wrb) a2  <-- 30
       0     1798        M 0x80000764 li      a3, 1                  #; (wrb) a3  <-- 1
       0     1800        M 0x8000076c lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
       0     1801        M 0x80000768 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x80003898]
       0     1809        M 0x80000770 addi    a4, a0, -819           #; a0  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
       0     1810        M 0x80000774 li      a5, 20                 #; (wrb) a5  <-- 20
                         M                                           #; (f:lsu) ft3  <-- 3.141
       0     1811        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 0, a4  = 0xcccccccd
       0     1814        M                                           #; (acc) a0  <-- 0x00455513
       0     1815        M 0x8000077c srli    a0, a0, 4              #; a0  = 0, (wrb) a0  <-- 0
       0     1821        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     1824        M                                           #; (acc) a0  <-- 0x40a68533
       0     1825        M 0x80000784 sub     a0, a3, a0             #; a3  = 1, a0  = 0, (wrb) a0  <-- 1
       0     1827        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 1
       0     1828        M                                           #; (f:fpu) ft4  <-- 1.0
       0     1829        M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     1832        M                                           #; (f:fpu) ft4  <-- 3.141
       0     1834        M 0x80000794 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     1835        M 0x80000798 addi    a2, a2, -1             #; a2  = 30, (wrb) a2  <-- 29
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     1836        M 0x8000079c addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M                                           #; (f:fpu) ft0  <-- 3.141
       0     1845        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 29, taken, goto 0x80000778
       0     1846        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 1, a4  = 0xcccccccd
       0     1849        M                                           #; (acc) a0  <-- 0x00455513
       0     1850        M 0x8000077c srli    a0, a0, 4              #; a0  = 0, (wrb) a0  <-- 0
       0     1851        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     1854        M                                           #; (acc) a0  <-- 0x40a68533
       0     1855        M 0x80000784 sub     a0, a3, a0             #; a3  = 2, a0  = 0, (wrb) a0  <-- 2
       0     1857        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 2
       0     1858        M                                           #; (f:fpu) ft4  <-- 2.0
       0     1859        M 0x80000794 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     1860        M 0x80000798 addi    a2, a2, -1             #; a2  = 29, (wrb) a2  <-- 28
       0     1861        M 0x8000079c addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
       0     1862        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 28, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     1863        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 2, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     1864        M                                           #; (f:fpu) ft0  <-- 6.282
       0     1866        M                                           #; (acc) a0  <-- 0x00455513
       0     1867        M 0x8000077c srli    a0, a0, 4              #; a0  = 1, (wrb) a0  <-- 0
       0     1868        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     1871        M                                           #; (acc) a0  <-- 0x40a68533
       0     1872        M 0x80000784 sub     a0, a3, a0             #; a3  = 3, a0  = 0, (wrb) a0  <-- 3
       0     1874        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 3
       0     1875        M                                           #; (f:fpu) ft4  <-- 3.0
       0     1876        M 0x80000794 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     1877        M 0x80000798 addi    a2, a2, -1             #; a2  = 28, (wrb) a2  <-- 27
       0     1878        M 0x8000079c addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
       0     1879        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 27, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     1880        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 3, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     1881        M                                           #; (f:fpu) ft0  <-- 9.423
       0     1883        M                                           #; (acc) a0  <-- 0x00455513
       0     1884        M 0x8000077c srli    a0, a0, 4              #; a0  = 2, (wrb) a0  <-- 0
       0     1885        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     1888        M                                           #; (acc) a0  <-- 0x40a68533
       0     1889        M 0x80000784 sub     a0, a3, a0             #; a3  = 4, a0  = 0, (wrb) a0  <-- 4
       0     1891        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 4
       0     1892        M                                           #; (f:fpu) ft4  <-- 4.0
       0     1893        M 0x80000794 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     1894        M 0x80000798 addi    a2, a2, -1             #; a2  = 27, (wrb) a2  <-- 26
       0     1895        M 0x8000079c addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
       0     1896        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 26, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     1897        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 4, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     1898        M                                           #; (f:fpu) ft0  <-- 12.564
       0     1900        M                                           #; (acc) a0  <-- 0x00455513
       0     1901        M 0x8000077c srli    a0, a0, 4              #; a0  = 3, (wrb) a0  <-- 0
       0     1902        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     1905        M                                           #; (acc) a0  <-- 0x40a68533
       0     1906        M 0x80000784 sub     a0, a3, a0             #; a3  = 5, a0  = 0, (wrb) a0  <-- 5
       0     1908        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 5
       0     1909        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1910        M 0x80000794 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     1911        M 0x80000798 addi    a2, a2, -1             #; a2  = 26, (wrb) a2  <-- 25
       0     1912        M 0x8000079c addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
       0     1913        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 25, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     1914        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 5, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     1915        M                                           #; (f:fpu) ft0  <-- 15.705
       0     1917        M                                           #; (acc) a0  <-- 0x00455513
       0     1918        M 0x8000077c srli    a0, a0, 4              #; a0  = 4, (wrb) a0  <-- 0
       0     1919        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     1922        M                                           #; (acc) a0  <-- 0x40a68533
       0     1923        M 0x80000784 sub     a0, a3, a0             #; a3  = 6, a0  = 0, (wrb) a0  <-- 6
       0     1925        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 6
       0     1926        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1927        M 0x80000794 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     1928        M 0x80000798 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
       0     1929        M 0x8000079c addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
       0     1930        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 24, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     1931        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 6, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     1932        M                                           #; (f:fpu) ft0  <-- 18.846
       0     1934        M                                           #; (acc) a0  <-- 0x00455513
       0     1935        M 0x8000077c srli    a0, a0, 4              #; a0  = 4, (wrb) a0  <-- 0
       0     1936        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     1939        M                                           #; (acc) a0  <-- 0x40a68533
       0     1940        M 0x80000784 sub     a0, a3, a0             #; a3  = 7, a0  = 0, (wrb) a0  <-- 7
       0     1942        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 7
       0     1943        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1944        M 0x80000794 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     1945        M 0x80000798 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
       0     1946        M 0x8000079c addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
       0     1947        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 23, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     1948        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 7, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     1949        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     1951        M                                           #; (acc) a0  <-- 0x00455513
       0     1952        M 0x8000077c srli    a0, a0, 4              #; a0  = 5, (wrb) a0  <-- 0
       0     1953        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     1956        M                                           #; (acc) a0  <-- 0x40a68533
       0     1957        M 0x80000784 sub     a0, a3, a0             #; a3  = 8, a0  = 0, (wrb) a0  <-- 8
       0     1959        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 8
       0     1960        M                                           #; (f:fpu) ft4  <-- 8.0
       0     1961        M 0x80000794 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     1962        M 0x80000798 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
       0     1963        M 0x8000079c addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
       0     1964        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 22, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     1965        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 8, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     1966        M                                           #; (f:fpu) ft0  <-- 25.128
       0     1968        M                                           #; (acc) a0  <-- 0x00455513
       0     1969        M 0x8000077c srli    a0, a0, 4              #; a0  = 6, (wrb) a0  <-- 0
       0     1970        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     1973        M                                           #; (acc) a0  <-- 0x40a68533
       0     1974        M 0x80000784 sub     a0, a3, a0             #; a3  = 9, a0  = 0, (wrb) a0  <-- 9
       0     1976        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 9
       0     1977        M                                           #; (f:fpu) ft4  <-- 9.0
       0     1978        M 0x80000794 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     1979        M 0x80000798 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
       0     1980        M 0x8000079c addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
       0     1981        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 21, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     1982        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 9, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     1983        M                                           #; (f:fpu) ft0  <-- 28.269
       0     1985        M                                           #; (acc) a0  <-- 0x00455513
       0     1986        M 0x8000077c srli    a0, a0, 4              #; a0  = 7, (wrb) a0  <-- 0
       0     1987        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     1990        M                                           #; (acc) a0  <-- 0x40a68533
       0     1991        M 0x80000784 sub     a0, a3, a0             #; a3  = 10, a0  = 0, (wrb) a0  <-- 10
       0     1993        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 10
       0     1994        M                                           #; (f:fpu) ft4  <-- 10.0
       0     1995        M 0x80000794 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     1996        M 0x80000798 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
       0     1997        M 0x8000079c addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
       0     1998        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 20, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     1999        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 10, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2000        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2002        M                                           #; (acc) a0  <-- 0x00455513
       0     2003        M 0x8000077c srli    a0, a0, 4              #; a0  = 8, (wrb) a0  <-- 0
       0     2004        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     2007        M                                           #; (acc) a0  <-- 0x40a68533
       0     2008        M 0x80000784 sub     a0, a3, a0             #; a3  = 11, a0  = 0, (wrb) a0  <-- 11
       0     2010        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 11
       0     2011        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2012        M 0x80000794 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2013        M 0x80000798 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
       0     2014        M 0x8000079c addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
       0     2015        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 19, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2016        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 11, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2017        M                                           #; (f:fpu) ft0  <-- 34.551
       0     2019        M                                           #; (acc) a0  <-- 0x00455513
       0     2020        M 0x8000077c srli    a0, a0, 4              #; a0  = 8, (wrb) a0  <-- 0
       0     2021        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     2024        M                                           #; (acc) a0  <-- 0x40a68533
       0     2025        M 0x80000784 sub     a0, a3, a0             #; a3  = 12, a0  = 0, (wrb) a0  <-- 12
       0     2027        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 12
       0     2028        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2029        M 0x80000794 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2030        M 0x80000798 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
       0     2031        M 0x8000079c addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
       0     2032        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 18, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2033        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 12, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2034        M                                           #; (f:fpu) ft0  <-- 37.692
       0     2036        M                                           #; (acc) a0  <-- 0x00455513
       0     2037        M 0x8000077c srli    a0, a0, 4              #; a0  = 9, (wrb) a0  <-- 0
       0     2038        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     2041        M                                           #; (acc) a0  <-- 0x40a68533
       0     2042        M 0x80000784 sub     a0, a3, a0             #; a3  = 13, a0  = 0, (wrb) a0  <-- 13
       0     2044        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 13
       0     2045        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2046        M 0x80000794 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2047        M 0x80000798 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
       0     2048        M 0x8000079c addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
       0     2049        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 17, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2050        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 13, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2051        M                                           #; (f:fpu) ft0  <-- 40.833
       0     2053        M                                           #; (acc) a0  <-- 0x00455513
       0     2054        M 0x8000077c srli    a0, a0, 4              #; a0  = 10, (wrb) a0  <-- 0
       0     2055        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     2058        M                                           #; (acc) a0  <-- 0x40a68533
       0     2059        M 0x80000784 sub     a0, a3, a0             #; a3  = 14, a0  = 0, (wrb) a0  <-- 14
       0     2061        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 14
       0     2062        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2063        M 0x80000794 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2064        M 0x80000798 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
       0     2065        M 0x8000079c addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
       0     2066        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 16, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2067        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 14, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2068        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2070        M                                           #; (acc) a0  <-- 0x00455513
       0     2071        M 0x8000077c srli    a0, a0, 4              #; a0  = 11, (wrb) a0  <-- 0
       0     2072        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     2075        M                                           #; (acc) a0  <-- 0x40a68533
       0     2076        M 0x80000784 sub     a0, a3, a0             #; a3  = 15, a0  = 0, (wrb) a0  <-- 15
       0     2078        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 15
       0     2079        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2080        M 0x80000794 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2081        M 0x80000798 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
       0     2082        M 0x8000079c addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
       0     2083        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 15, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2084        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 15, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     2085        M                                           #; (f:fpu) ft0  <-- 47.115
       0     2087        M                                           #; (acc) a0  <-- 0x00455513
       0     2088        M 0x8000077c srli    a0, a0, 4              #; a0  = 12, (wrb) a0  <-- 0
       0     2089        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     2092        M                                           #; (acc) a0  <-- 0x40a68533
       0     2093        M 0x80000784 sub     a0, a3, a0             #; a3  = 16, a0  = 0, (wrb) a0  <-- 16
       0     2095        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 16
       0     2096        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2097        M 0x80000794 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     2098        M 0x80000798 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
       0     2099        M 0x8000079c addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
       0     2100        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 14, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     2101        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 16, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     2102        M                                           #; (f:fpu) ft0  <-- 50.256
       0     2104        M                                           #; (acc) a0  <-- 0x00455513
       0     2105        M 0x8000077c srli    a0, a0, 4              #; a0  = 12, (wrb) a0  <-- 0
       0     2106        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     2109        M                                           #; (acc) a0  <-- 0x40a68533
       0     2110        M 0x80000784 sub     a0, a3, a0             #; a3  = 17, a0  = 0, (wrb) a0  <-- 17
       0     2112        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 17
       0     2113        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2114        M 0x80000794 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     2115        M 0x80000798 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
       0     2116        M 0x8000079c addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
       0     2117        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 13, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     2118        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 17, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     2119        M                                           #; (f:fpu) ft0  <-- 53.397
       0     2121        M                                           #; (acc) a0  <-- 0x00455513
       0     2122        M 0x8000077c srli    a0, a0, 4              #; a0  = 13, (wrb) a0  <-- 0
       0     2123        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     2126        M                                           #; (acc) a0  <-- 0x40a68533
       0     2127        M 0x80000784 sub     a0, a3, a0             #; a3  = 18, a0  = 0, (wrb) a0  <-- 18
       0     2129        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 18
       0     2130        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2131        M 0x80000794 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     2132        M 0x80000798 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
       0     2133        M 0x8000079c addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
       0     2134        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 12, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     2135        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 18, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     2136        M                                           #; (f:fpu) ft0  <-- 56.538
       0     2138        M                                           #; (acc) a0  <-- 0x00455513
       0     2139        M 0x8000077c srli    a0, a0, 4              #; a0  = 14, (wrb) a0  <-- 0
       0     2140        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     2143        M                                           #; (acc) a0  <-- 0x40a68533
       0     2144        M 0x80000784 sub     a0, a3, a0             #; a3  = 19, a0  = 0, (wrb) a0  <-- 19
       0     2146        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 19
       0     2147        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2148        M 0x80000794 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     2149        M 0x80000798 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
       0     2150        M 0x8000079c addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
       0     2151        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 11, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     2152        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 19, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     2153        M                                           #; (f:fpu) ft0  <-- 59.679
       0     2155        M                                           #; (acc) a0  <-- 0x00455513
       0     2156        M 0x8000077c srli    a0, a0, 4              #; a0  = 15, (wrb) a0  <-- 0
       0     2157        M 0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
       0     2160        M                                           #; (acc) a0  <-- 0x40a68533
       0     2161        M 0x80000784 sub     a0, a3, a0             #; a3  = 20, a0  = 0, (wrb) a0  <-- 20
       0     2163        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 20
       0     2164        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2165        M 0x80000794 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     2166        M 0x80000798 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
       0     2167        M 0x8000079c addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
       0     2168        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 10, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     2169        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 20, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     2170        M                                           #; (f:fpu) ft0  <-- 62.82
       0     2172        M                                           #; (acc) a0  <-- 0x00455513
       0     2173        M 0x8000077c srli    a0, a0, 4              #; a0  = 16, (wrb) a0  <-- 1
       0     2174        M 0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
       0     2177        M                                           #; (acc) a0  <-- 0x40a68533
       0     2178        M 0x80000784 sub     a0, a3, a0             #; a3  = 21, a0  = 20, (wrb) a0  <-- 1
       0     2180        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 1
       0     2181        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2182        M 0x80000794 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2183        M 0x80000798 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
       0     2184        M 0x8000079c addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
       0     2185        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 9, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2186        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 21, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2187        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2189        M                                           #; (acc) a0  <-- 0x00455513
       0     2190        M 0x8000077c srli    a0, a0, 4              #; a0  = 16, (wrb) a0  <-- 1
       0     2191        M 0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
       0     2194        M                                           #; (acc) a0  <-- 0x40a68533
       0     2195        M 0x80000784 sub     a0, a3, a0             #; a3  = 22, a0  = 20, (wrb) a0  <-- 2
       0     2197        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 2
       0     2198        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2199        M 0x80000794 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2200        M 0x80000798 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
       0     2201        M 0x8000079c addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
       0     2202        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 8, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2203        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 22, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2204        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2206        M                                           #; (acc) a0  <-- 0x00455513
       0     2207        M 0x8000077c srli    a0, a0, 4              #; a0  = 17, (wrb) a0  <-- 1
       0     2208        M 0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
       0     2211        M                                           #; (acc) a0  <-- 0x40a68533
       0     2212        M 0x80000784 sub     a0, a3, a0             #; a3  = 23, a0  = 20, (wrb) a0  <-- 3
       0     2214        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 3
       0     2215        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2216        M 0x80000794 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2217        M 0x80000798 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
       0     2218        M 0x8000079c addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
       0     2219        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 7, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2220        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 23, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2221        M                                           #; (f:fpu) ft0  <-- 9.423
       0     2223        M                                           #; (acc) a0  <-- 0x00455513
       0     2224        M 0x8000077c srli    a0, a0, 4              #; a0  = 18, (wrb) a0  <-- 1
       0     2225        M 0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
       0     2228        M                                           #; (acc) a0  <-- 0x40a68533
       0     2229        M 0x80000784 sub     a0, a3, a0             #; a3  = 24, a0  = 20, (wrb) a0  <-- 4
       0     2231        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 4
       0     2232        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2233        M 0x80000794 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2234        M 0x80000798 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
       0     2235        M 0x8000079c addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
       0     2236        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 6, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2237        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 24, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2238        M                                           #; (f:fpu) ft0  <-- 12.564
       0     2240        M                                           #; (acc) a0  <-- 0x00455513
       0     2241        M 0x8000077c srli    a0, a0, 4              #; a0  = 19, (wrb) a0  <-- 1
       0     2242        M 0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
       0     2245        M                                           #; (acc) a0  <-- 0x40a68533
       0     2246        M 0x80000784 sub     a0, a3, a0             #; a3  = 25, a0  = 20, (wrb) a0  <-- 5
       0     2248        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 5
       0     2249        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2250        M 0x80000794 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2251        M 0x80000798 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     2252        M 0x8000079c addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
       0     2253        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 5, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2254        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 25, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2255        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2257        M                                           #; (acc) a0  <-- 0x00455513
       0     2258        M 0x8000077c srli    a0, a0, 4              #; a0  = 20, (wrb) a0  <-- 1
       0     2259        M 0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
       0     2262        M                                           #; (acc) a0  <-- 0x40a68533
       0     2263        M 0x80000784 sub     a0, a3, a0             #; a3  = 26, a0  = 20, (wrb) a0  <-- 6
       0     2265        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 6
       0     2266        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2267        M 0x80000794 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2268        M 0x80000798 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     2269        M 0x8000079c addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
       0     2270        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 4, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2271        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 26, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2272        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2274        M                                           #; (acc) a0  <-- 0x00455513
       0     2275        M 0x8000077c srli    a0, a0, 4              #; a0  = 20, (wrb) a0  <-- 1
       0     2276        M 0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
       0     2279        M                                           #; (acc) a0  <-- 0x40a68533
       0     2280        M 0x80000784 sub     a0, a3, a0             #; a3  = 27, a0  = 20, (wrb) a0  <-- 7
       0     2282        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 7
       0     2283        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2284        M 0x80000794 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2285        M 0x80000798 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     2286        M 0x8000079c addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
       0     2287        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 3, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2288        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 27, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2289        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2291        M                                           #; (acc) a0  <-- 0x00455513
       0     2292        M 0x8000077c srli    a0, a0, 4              #; a0  = 21, (wrb) a0  <-- 1
       0     2293        M 0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
       0     2296        M                                           #; (acc) a0  <-- 0x40a68533
       0     2297        M 0x80000784 sub     a0, a3, a0             #; a3  = 28, a0  = 20, (wrb) a0  <-- 8
       0     2299        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 8
       0     2300        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2301        M 0x80000794 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2302        M 0x80000798 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     2303        M 0x8000079c addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
       0     2304        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 2, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2305        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 28, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2306        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2308        M                                           #; (acc) a0  <-- 0x00455513
       0     2309        M 0x8000077c srli    a0, a0, 4              #; a0  = 22, (wrb) a0  <-- 1
       0     2310        M 0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
       0     2313        M                                           #; (acc) a0  <-- 0x40a68533
       0     2314        M 0x80000784 sub     a0, a3, a0             #; a3  = 29, a0  = 20, (wrb) a0  <-- 9
       0     2316        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 9
       0     2317        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2318        M 0x80000794 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2319        M 0x80000798 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     2320        M 0x8000079c addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
       0     2321        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 1, taken, goto 0x80000778
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2322        M 0x80000778 mulhu   a0, a1, a4             #; a1  = 29, a4  = 0xcccccccd
                         M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2323        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2325        M                                           #; (acc) a0  <-- 0x00455513
       0     2326        M 0x8000077c srli    a0, a0, 4              #; a0  = 23, (wrb) a0  <-- 1
       0     2327        M 0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
       0     2330        M                                           #; (acc) a0  <-- 0x40a68533
       0     2331        M 0x80000784 sub     a0, a3, a0             #; a3  = 30, a0  = 20, (wrb) a0  <-- 10
       0     2333        M 0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 10
       0     2334        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2335        M 0x80000794 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
                         M 0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2336        M 0x80000798 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     2337        M 0x8000079c addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
       0     2338        M 0x800007a0 bnez    a2, pc - 40            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2339        M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2340        M 0x800007a8 j       pc + 0x50              #; goto 0x800007f8
                         M 0x800007a4 csrci   ssr, 1                 #; (f:fpu) ft0  <-- 31.41
       0     2351        M 0x800007f8 srli    a0, s6, 20             #; s6  = 0x001000f0, (wrb) a0  <-- 1
       0     2352        M 0x800007fc snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     2363        M 0x80000800 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     2364        M 0x80000804 addi    a1, a1, -327           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011feb9
       0     2365        M 0x80000808 sltu    a1, s6, a1             #; s6  = 0x001000f0, a1  = 0x0011feb9, (wrb) a1  <-- 1
       0     2366        M 0x8000080c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     2375        M 0x80000810 beqz    a0, pc + 124           #; a0  = 1, not taken
       0     2376        M 0x80000814 li      a1, 0                  #; (wrb) a1  <-- 0
       0     2377        M 0x80000818 li      a0, 8                  #; (wrb) a0  <-- 8
       0     2378        M 0x8000081c li      a2, 41                 #; (wrb) a2  <-- 41
       0     2387        M 0x80000820 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2388        M 0x80000824 scfgw   a2, a3                 #; a2  = 41, a3  = 64
       0     2389        M 0x80000828 li      a2, 192                #; (wrb) a2  <-- 192
       0     2390        M 0x8000082c scfgw   a0, a2                 #; a0  = 8, a2  = 192
       0     2399        M 0x80000830 li      a0, 32                 #; (wrb) a0  <-- 32
       0     2400        M 0x80000834 scfgw   zero, a0               #; a0  = 32
       0     2401        M 0x80000838 scfgwi  s6, 896                #; s6  = 0x001000f0
       0     2403        M 0x8000083c csrsi   ssr, 1                 #; 
       0     2411        M 0x80000840 li      a2, 42                 #; (wrb) a2  <-- 42
       0     2412        M 0x80000844 li      a3, 1                  #; (wrb) a3  <-- 1
       0     2414        M 0x8000084c lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
       0     2415        M 0x80000848 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x80003898]
       0     2423        M 0x80000850 addi    a0, a0, -819           #; a0  = 0xccccd000, (wrb) a0  <-- 0xcccccccd
       0     2424        M 0x80000854 li      a4, 20                 #; (wrb) a4  <-- 20
                         M                                           #; (f:lsu) ft3  <-- 3.141
       0     2425        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 0, a0  = 0xcccccccd
       0     2428        M                                           #; (acc) a5  <-- 0x0047d793
       0     2429        M 0x8000085c srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     2435        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2438        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2439        M 0x80000864 sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
       0     2441        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2442        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2443        M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2446        M                                           #; (f:fpu) ft4  <-- 3.141
       0     2448        M 0x80000874 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     2449        M 0x80000878 addi    a2, a2, -1             #; a2  = 42, (wrb) a2  <-- 41
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2450        M 0x8000087c addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M                                           #; (f:fpu) ft0  <-- 3.141
       0     2459        M 0x80000880 bnez    a2, pc - 40            #; a2  = 41, taken, goto 0x80000858
       0     2460        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 1, a0  = 0xcccccccd
       0     2463        M                                           #; (acc) a5  <-- 0x0047d793
       0     2464        M 0x8000085c srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     2465        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2468        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2469        M 0x80000864 sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
       0     2471        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2472        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2473        M 0x80000874 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2474        M 0x80000878 addi    a2, a2, -1             #; a2  = 41, (wrb) a2  <-- 40
       0     2475        M 0x8000087c addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
       0     2476        M 0x80000880 bnez    a2, pc - 40            #; a2  = 40, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2477        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 2, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2478        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2480        M                                           #; (acc) a5  <-- 0x0047d793
       0     2481        M 0x8000085c srli    a5, a5, 4              #; a5  = 1, (wrb) a5  <-- 0
       0     2482        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2485        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2486        M 0x80000864 sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
       0     2488        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2489        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2490        M 0x80000874 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2491        M 0x80000878 addi    a2, a2, -1             #; a2  = 40, (wrb) a2  <-- 39
       0     2492        M 0x8000087c addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
       0     2493        M 0x80000880 bnez    a2, pc - 40            #; a2  = 39, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2494        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 3, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2495        M                                           #; (f:fpu) ft0  <-- 9.423
       0     2497        M                                           #; (acc) a5  <-- 0x0047d793
       0     2498        M 0x8000085c srli    a5, a5, 4              #; a5  = 2, (wrb) a5  <-- 0
       0     2499        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2502        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2503        M 0x80000864 sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
       0     2505        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2506        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2507        M 0x80000874 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2508        M 0x80000878 addi    a2, a2, -1             #; a2  = 39, (wrb) a2  <-- 38
       0     2509        M 0x8000087c addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
       0     2510        M 0x80000880 bnez    a2, pc - 40            #; a2  = 38, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2511        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 4, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2512        M                                           #; (f:fpu) ft0  <-- 12.564
       0     2514        M                                           #; (acc) a5  <-- 0x0047d793
       0     2515        M 0x8000085c srli    a5, a5, 4              #; a5  = 3, (wrb) a5  <-- 0
       0     2516        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2519        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2520        M 0x80000864 sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
       0     2522        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2523        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2524        M 0x80000874 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2525        M 0x80000878 addi    a2, a2, -1             #; a2  = 38, (wrb) a2  <-- 37
       0     2526        M 0x8000087c addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
       0     2527        M 0x80000880 bnez    a2, pc - 40            #; a2  = 37, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2528        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 5, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2529        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2531        M                                           #; (acc) a5  <-- 0x0047d793
       0     2532        M 0x8000085c srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
       0     2533        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2536        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2537        M 0x80000864 sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
       0     2539        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2540        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2541        M 0x80000874 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2542        M 0x80000878 addi    a2, a2, -1             #; a2  = 37, (wrb) a2  <-- 36
       0     2543        M 0x8000087c addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
       0     2544        M 0x80000880 bnez    a2, pc - 40            #; a2  = 36, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2545        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 6, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2546        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2548        M                                           #; (acc) a5  <-- 0x0047d793
       0     2549        M 0x8000085c srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
       0     2550        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2553        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2554        M 0x80000864 sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
       0     2556        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2557        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2558        M 0x80000874 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2559        M 0x80000878 addi    a2, a2, -1             #; a2  = 36, (wrb) a2  <-- 35
       0     2560        M 0x8000087c addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
       0     2561        M 0x80000880 bnez    a2, pc - 40            #; a2  = 35, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2562        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 7, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2563        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2565        M                                           #; (acc) a5  <-- 0x0047d793
       0     2566        M 0x8000085c srli    a5, a5, 4              #; a5  = 5, (wrb) a5  <-- 0
       0     2567        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2570        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2571        M 0x80000864 sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
       0     2573        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2574        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2575        M 0x80000874 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2576        M 0x80000878 addi    a2, a2, -1             #; a2  = 35, (wrb) a2  <-- 34
       0     2577        M 0x8000087c addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
       0     2578        M 0x80000880 bnez    a2, pc - 40            #; a2  = 34, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2579        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 8, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2580        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2582        M                                           #; (acc) a5  <-- 0x0047d793
       0     2583        M 0x8000085c srli    a5, a5, 4              #; a5  = 6, (wrb) a5  <-- 0
       0     2584        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2587        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2588        M 0x80000864 sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
       0     2590        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2591        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2592        M 0x80000874 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2593        M 0x80000878 addi    a2, a2, -1             #; a2  = 34, (wrb) a2  <-- 33
       0     2594        M 0x8000087c addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
       0     2595        M 0x80000880 bnez    a2, pc - 40            #; a2  = 33, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2596        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 9, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2597        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2599        M                                           #; (acc) a5  <-- 0x0047d793
       0     2600        M 0x8000085c srli    a5, a5, 4              #; a5  = 7, (wrb) a5  <-- 0
       0     2601        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2604        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2605        M 0x80000864 sub     a5, a3, a5             #; a3  = 10, a5  = 0, (wrb) a5  <-- 10
       0     2607        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2608        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2609        M 0x80000874 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2610        M 0x80000878 addi    a2, a2, -1             #; a2  = 33, (wrb) a2  <-- 32
       0     2611        M 0x8000087c addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
       0     2612        M 0x80000880 bnez    a2, pc - 40            #; a2  = 32, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2613        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 10, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2614        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2616        M                                           #; (acc) a5  <-- 0x0047d793
       0     2617        M 0x8000085c srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
       0     2618        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2621        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2622        M 0x80000864 sub     a5, a3, a5             #; a3  = 11, a5  = 0, (wrb) a5  <-- 11
       0     2624        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2625        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2626        M 0x80000874 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2627        M 0x80000878 addi    a2, a2, -1             #; a2  = 32, (wrb) a2  <-- 31
       0     2628        M 0x8000087c addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
       0     2629        M 0x80000880 bnez    a2, pc - 40            #; a2  = 31, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2630        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 11, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2631        M                                           #; (f:fpu) ft0  <-- 34.551
       0     2633        M                                           #; (acc) a5  <-- 0x0047d793
       0     2634        M 0x8000085c srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
       0     2635        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2638        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2639        M 0x80000864 sub     a5, a3, a5             #; a3  = 12, a5  = 0, (wrb) a5  <-- 12
       0     2641        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2642        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2643        M 0x80000874 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2644        M 0x80000878 addi    a2, a2, -1             #; a2  = 31, (wrb) a2  <-- 30
       0     2645        M 0x8000087c addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
       0     2646        M 0x80000880 bnez    a2, pc - 40            #; a2  = 30, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2647        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 12, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2648        M                                           #; (f:fpu) ft0  <-- 37.692
       0     2650        M                                           #; (acc) a5  <-- 0x0047d793
       0     2651        M 0x8000085c srli    a5, a5, 4              #; a5  = 9, (wrb) a5  <-- 0
       0     2652        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2655        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2656        M 0x80000864 sub     a5, a3, a5             #; a3  = 13, a5  = 0, (wrb) a5  <-- 13
       0     2658        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2659        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2660        M 0x80000874 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2661        M 0x80000878 addi    a2, a2, -1             #; a2  = 30, (wrb) a2  <-- 29
       0     2662        M 0x8000087c addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
       0     2663        M 0x80000880 bnez    a2, pc - 40            #; a2  = 29, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2664        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 13, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2665        M                                           #; (f:fpu) ft0  <-- 40.833
       0     2667        M                                           #; (acc) a5  <-- 0x0047d793
       0     2668        M 0x8000085c srli    a5, a5, 4              #; a5  = 10, (wrb) a5  <-- 0
       0     2669        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2672        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2673        M 0x80000864 sub     a5, a3, a5             #; a3  = 14, a5  = 0, (wrb) a5  <-- 14
       0     2675        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     2676        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2677        M 0x80000874 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2678        M 0x80000878 addi    a2, a2, -1             #; a2  = 29, (wrb) a2  <-- 28
       0     2679        M 0x8000087c addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
       0     2680        M 0x80000880 bnez    a2, pc - 40            #; a2  = 28, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2681        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 14, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2682        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2684        M                                           #; (acc) a5  <-- 0x0047d793
       0     2685        M 0x8000085c srli    a5, a5, 4              #; a5  = 11, (wrb) a5  <-- 0
       0     2686        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2689        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2690        M 0x80000864 sub     a5, a3, a5             #; a3  = 15, a5  = 0, (wrb) a5  <-- 15
       0     2692        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     2693        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2694        M 0x80000874 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2695        M 0x80000878 addi    a2, a2, -1             #; a2  = 28, (wrb) a2  <-- 27
       0     2696        M 0x8000087c addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
       0     2697        M 0x80000880 bnez    a2, pc - 40            #; a2  = 27, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2698        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 15, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     2699        M                                           #; (f:fpu) ft0  <-- 47.115
       0     2701        M                                           #; (acc) a5  <-- 0x0047d793
       0     2702        M 0x8000085c srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
       0     2703        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2706        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2707        M 0x80000864 sub     a5, a3, a5             #; a3  = 16, a5  = 0, (wrb) a5  <-- 16
       0     2709        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     2710        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2711        M 0x80000874 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     2712        M 0x80000878 addi    a2, a2, -1             #; a2  = 27, (wrb) a2  <-- 26
       0     2713        M 0x8000087c addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
       0     2714        M 0x80000880 bnez    a2, pc - 40            #; a2  = 26, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     2715        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 16, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     2716        M                                           #; (f:fpu) ft0  <-- 50.256
       0     2718        M                                           #; (acc) a5  <-- 0x0047d793
       0     2719        M 0x8000085c srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
       0     2720        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2723        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2724        M 0x80000864 sub     a5, a3, a5             #; a3  = 17, a5  = 0, (wrb) a5  <-- 17
       0     2726        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     2727        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2728        M 0x80000874 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     2729        M 0x80000878 addi    a2, a2, -1             #; a2  = 26, (wrb) a2  <-- 25
       0     2730        M 0x8000087c addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
       0     2731        M 0x80000880 bnez    a2, pc - 40            #; a2  = 25, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     2732        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 17, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     2733        M                                           #; (f:fpu) ft0  <-- 53.397
       0     2735        M                                           #; (acc) a5  <-- 0x0047d793
       0     2736        M 0x8000085c srli    a5, a5, 4              #; a5  = 13, (wrb) a5  <-- 0
       0     2737        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2740        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2741        M 0x80000864 sub     a5, a3, a5             #; a3  = 18, a5  = 0, (wrb) a5  <-- 18
       0     2743        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     2744        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2745        M 0x80000874 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     2746        M 0x80000878 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
       0     2747        M 0x8000087c addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
       0     2748        M 0x80000880 bnez    a2, pc - 40            #; a2  = 24, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     2749        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 18, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     2750        M                                           #; (f:fpu) ft0  <-- 56.538
       0     2752        M                                           #; (acc) a5  <-- 0x0047d793
       0     2753        M 0x8000085c srli    a5, a5, 4              #; a5  = 14, (wrb) a5  <-- 0
       0     2754        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2757        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2758        M 0x80000864 sub     a5, a3, a5             #; a3  = 19, a5  = 0, (wrb) a5  <-- 19
       0     2760        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     2761        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2762        M 0x80000874 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     2763        M 0x80000878 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
       0     2764        M 0x8000087c addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
       0     2765        M 0x80000880 bnez    a2, pc - 40            #; a2  = 23, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     2766        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 19, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     2767        M                                           #; (f:fpu) ft0  <-- 59.679
       0     2769        M                                           #; (acc) a5  <-- 0x0047d793
       0     2770        M 0x8000085c srli    a5, a5, 4              #; a5  = 15, (wrb) a5  <-- 0
       0     2771        M 0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2774        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2775        M 0x80000864 sub     a5, a3, a5             #; a3  = 20, a5  = 0, (wrb) a5  <-- 20
       0     2777        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     2778        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2779        M 0x80000874 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     2780        M 0x80000878 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
       0     2781        M 0x8000087c addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
       0     2782        M 0x80000880 bnez    a2, pc - 40            #; a2  = 22, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     2783        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 20, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     2784        M                                           #; (f:fpu) ft0  <-- 62.82
       0     2786        M                                           #; (acc) a5  <-- 0x0047d793
       0     2787        M 0x8000085c srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
       0     2788        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2791        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2792        M 0x80000864 sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
       0     2794        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2795        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2796        M 0x80000874 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2797        M 0x80000878 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
       0     2798        M 0x8000087c addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
       0     2799        M 0x80000880 bnez    a2, pc - 40            #; a2  = 21, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2800        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 21, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2801        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2803        M                                           #; (acc) a5  <-- 0x0047d793
       0     2804        M 0x8000085c srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
       0     2805        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2808        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2809        M 0x80000864 sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
       0     2811        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2812        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2813        M 0x80000874 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2814        M 0x80000878 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
       0     2815        M 0x8000087c addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
       0     2816        M 0x80000880 bnez    a2, pc - 40            #; a2  = 20, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2817        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 22, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2818        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2820        M                                           #; (acc) a5  <-- 0x0047d793
       0     2821        M 0x8000085c srli    a5, a5, 4              #; a5  = 17, (wrb) a5  <-- 1
       0     2822        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2825        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2826        M 0x80000864 sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
       0     2828        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2829        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2830        M 0x80000874 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2831        M 0x80000878 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
       0     2832        M 0x8000087c addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
       0     2833        M 0x80000880 bnez    a2, pc - 40            #; a2  = 19, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2834        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 23, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2835        M                                           #; (f:fpu) ft0  <-- 9.423
       0     2837        M                                           #; (acc) a5  <-- 0x0047d793
       0     2838        M 0x8000085c srli    a5, a5, 4              #; a5  = 18, (wrb) a5  <-- 1
       0     2839        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2842        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2843        M 0x80000864 sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
       0     2845        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2846        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2847        M 0x80000874 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2848        M 0x80000878 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
       0     2849        M 0x8000087c addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
       0     2850        M 0x80000880 bnez    a2, pc - 40            #; a2  = 18, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2851        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 24, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2852        M                                           #; (f:fpu) ft0  <-- 12.564
       0     2854        M                                           #; (acc) a5  <-- 0x0047d793
       0     2855        M 0x8000085c srli    a5, a5, 4              #; a5  = 19, (wrb) a5  <-- 1
       0     2856        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2859        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2860        M 0x80000864 sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
       0     2862        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2863        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2864        M 0x80000874 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2865        M 0x80000878 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
       0     2866        M 0x8000087c addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
       0     2867        M 0x80000880 bnez    a2, pc - 40            #; a2  = 17, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2868        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 25, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2869        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2871        M                                           #; (acc) a5  <-- 0x0047d793
       0     2872        M 0x8000085c srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
       0     2873        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2876        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2877        M 0x80000864 sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
       0     2879        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2880        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2881        M 0x80000874 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2882        M 0x80000878 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
       0     2883        M 0x8000087c addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
       0     2884        M 0x80000880 bnez    a2, pc - 40            #; a2  = 16, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2885        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 26, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2886        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2888        M                                           #; (acc) a5  <-- 0x0047d793
       0     2889        M 0x8000085c srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
       0     2890        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2893        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2894        M 0x80000864 sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
       0     2896        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2897        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2898        M 0x80000874 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2899        M 0x80000878 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
       0     2900        M 0x8000087c addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
       0     2901        M 0x80000880 bnez    a2, pc - 40            #; a2  = 15, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2902        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 27, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2903        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2905        M                                           #; (acc) a5  <-- 0x0047d793
       0     2906        M 0x8000085c srli    a5, a5, 4              #; a5  = 21, (wrb) a5  <-- 1
       0     2907        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2910        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2911        M 0x80000864 sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
       0     2913        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2914        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2915        M 0x80000874 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2916        M 0x80000878 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
       0     2917        M 0x8000087c addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
       0     2918        M 0x80000880 bnez    a2, pc - 40            #; a2  = 14, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2919        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 28, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2920        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2922        M                                           #; (acc) a5  <-- 0x0047d793
       0     2923        M 0x8000085c srli    a5, a5, 4              #; a5  = 22, (wrb) a5  <-- 1
       0     2924        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2927        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2928        M 0x80000864 sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
       0     2930        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2931        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2932        M 0x80000874 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2933        M 0x80000878 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
       0     2934        M 0x8000087c addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
       0     2935        M 0x80000880 bnez    a2, pc - 40            #; a2  = 13, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2936        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 29, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2937        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2939        M                                           #; (acc) a5  <-- 0x0047d793
       0     2940        M 0x8000085c srli    a5, a5, 4              #; a5  = 23, (wrb) a5  <-- 1
       0     2941        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2944        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2945        M 0x80000864 sub     a5, a3, a5             #; a3  = 30, a5  = 20, (wrb) a5  <-- 10
       0     2947        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2948        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2949        M 0x80000874 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2950        M 0x80000878 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
       0     2951        M 0x8000087c addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
       0     2952        M 0x80000880 bnez    a2, pc - 40            #; a2  = 12, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2953        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 30, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2954        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2956        M                                           #; (acc) a5  <-- 0x0047d793
       0     2957        M 0x8000085c srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
       0     2958        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2961        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2962        M 0x80000864 sub     a5, a3, a5             #; a3  = 31, a5  = 20, (wrb) a5  <-- 11
       0     2964        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2965        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2966        M 0x80000874 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2967        M 0x80000878 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
       0     2968        M 0x8000087c addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
       0     2969        M 0x80000880 bnez    a2, pc - 40            #; a2  = 11, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2970        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 31, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2971        M                                           #; (f:fpu) ft0  <-- 34.551
       0     2973        M                                           #; (acc) a5  <-- 0x0047d793
       0     2974        M 0x8000085c srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
       0     2975        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2978        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2979        M 0x80000864 sub     a5, a3, a5             #; a3  = 32, a5  = 20, (wrb) a5  <-- 12
       0     2981        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2982        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2983        M 0x80000874 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2984        M 0x80000878 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
       0     2985        M 0x8000087c addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
       0     2986        M 0x80000880 bnez    a2, pc - 40            #; a2  = 10, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2987        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 32, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2988        M                                           #; (f:fpu) ft0  <-- 37.692
       0     2990        M                                           #; (acc) a5  <-- 0x0047d793
       0     2991        M 0x8000085c srli    a5, a5, 4              #; a5  = 25, (wrb) a5  <-- 1
       0     2992        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2995        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2996        M 0x80000864 sub     a5, a3, a5             #; a3  = 33, a5  = 20, (wrb) a5  <-- 13
       0     2998        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2999        M                                           #; (f:fpu) ft4  <-- 13.0
       0     3000        M 0x80000874 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     3001        M 0x80000878 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
       0     3002        M 0x8000087c addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
       0     3003        M 0x80000880 bnez    a2, pc - 40            #; a2  = 9, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     3004        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 33, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     3005        M                                           #; (f:fpu) ft0  <-- 40.833
       0     3007        M                                           #; (acc) a5  <-- 0x0047d793
       0     3008        M 0x8000085c srli    a5, a5, 4              #; a5  = 26, (wrb) a5  <-- 1
       0     3009        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3012        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3013        M 0x80000864 sub     a5, a3, a5             #; a3  = 34, a5  = 20, (wrb) a5  <-- 14
       0     3015        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     3016        M                                           #; (f:fpu) ft4  <-- 14.0
       0     3017        M 0x80000874 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     3018        M 0x80000878 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
       0     3019        M 0x8000087c addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
       0     3020        M 0x80000880 bnez    a2, pc - 40            #; a2  = 8, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     3021        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 34, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     3022        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     3024        M                                           #; (acc) a5  <-- 0x0047d793
       0     3025        M 0x8000085c srli    a5, a5, 4              #; a5  = 27, (wrb) a5  <-- 1
       0     3026        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3029        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3030        M 0x80000864 sub     a5, a3, a5             #; a3  = 35, a5  = 20, (wrb) a5  <-- 15
       0     3032        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     3033        M                                           #; (f:fpu) ft4  <-- 15.0
       0     3034        M 0x80000874 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     3035        M 0x80000878 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
       0     3036        M 0x8000087c addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
       0     3037        M 0x80000880 bnez    a2, pc - 40            #; a2  = 7, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     3038        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 35, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     3039        M                                           #; (f:fpu) ft0  <-- 47.115
       0     3041        M                                           #; (acc) a5  <-- 0x0047d793
       0     3042        M 0x8000085c srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
       0     3043        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3046        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3047        M 0x80000864 sub     a5, a3, a5             #; a3  = 36, a5  = 20, (wrb) a5  <-- 16
       0     3049        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     3050        M                                           #; (f:fpu) ft4  <-- 16.0
       0     3051        M 0x80000874 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     3052        M 0x80000878 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
       0     3053        M 0x8000087c addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
       0     3054        M 0x80000880 bnez    a2, pc - 40            #; a2  = 6, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     3055        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 36, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     3056        M                                           #; (f:fpu) ft0  <-- 50.256
       0     3058        M                                           #; (acc) a5  <-- 0x0047d793
       0     3059        M 0x8000085c srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
       0     3060        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3063        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3064        M 0x80000864 sub     a5, a3, a5             #; a3  = 37, a5  = 20, (wrb) a5  <-- 17
       0     3066        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     3067        M                                           #; (f:fpu) ft4  <-- 17.0
       0     3068        M 0x80000874 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     3069        M 0x80000878 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3070        M 0x8000087c addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
       0     3071        M 0x80000880 bnez    a2, pc - 40            #; a2  = 5, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     3072        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 37, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     3073        M                                           #; (f:fpu) ft0  <-- 53.397
       0     3075        M                                           #; (acc) a5  <-- 0x0047d793
       0     3076        M 0x8000085c srli    a5, a5, 4              #; a5  = 29, (wrb) a5  <-- 1
       0     3077        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3080        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3081        M 0x80000864 sub     a5, a3, a5             #; a3  = 38, a5  = 20, (wrb) a5  <-- 18
       0     3083        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     3084        M                                           #; (f:fpu) ft4  <-- 18.0
       0     3085        M 0x80000874 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     3086        M 0x80000878 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3087        M 0x8000087c addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
       0     3088        M 0x80000880 bnez    a2, pc - 40            #; a2  = 4, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     3089        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 38, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     3090        M                                           #; (f:fpu) ft0  <-- 56.538
       0     3092        M                                           #; (acc) a5  <-- 0x0047d793
       0     3093        M 0x8000085c srli    a5, a5, 4              #; a5  = 30, (wrb) a5  <-- 1
       0     3094        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3097        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3098        M 0x80000864 sub     a5, a3, a5             #; a3  = 39, a5  = 20, (wrb) a5  <-- 19
       0     3100        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     3101        M                                           #; (f:fpu) ft4  <-- 19.0
       0     3102        M 0x80000874 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     3103        M 0x80000878 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3104        M 0x8000087c addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
       0     3105        M 0x80000880 bnez    a2, pc - 40            #; a2  = 3, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     3106        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 39, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     3107        M                                           #; (f:fpu) ft0  <-- 59.679
       0     3109        M                                           #; (acc) a5  <-- 0x0047d793
       0     3110        M 0x8000085c srli    a5, a5, 4              #; a5  = 31, (wrb) a5  <-- 1
       0     3111        M 0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3114        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3115        M 0x80000864 sub     a5, a3, a5             #; a3  = 40, a5  = 20, (wrb) a5  <-- 20
       0     3117        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     3118        M                                           #; (f:fpu) ft4  <-- 20.0
       0     3119        M 0x80000874 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     3120        M 0x80000878 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3121        M 0x8000087c addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
       0     3122        M 0x80000880 bnez    a2, pc - 40            #; a2  = 2, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     3123        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 40, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     3124        M                                           #; (f:fpu) ft0  <-- 62.82
       0     3126        M                                           #; (acc) a5  <-- 0x0047d793
       0     3127        M 0x8000085c srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
       0     3128        M 0x80000860 mul     a5, a5, a4             #; a5  = 2, a4  = 20
       0     3131        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3132        M 0x80000864 sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
       0     3134        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     3135        M                                           #; (f:fpu) ft4  <-- 1.0
       0     3136        M 0x80000874 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     3137        M 0x80000878 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3138        M 0x8000087c addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
       0     3139        M 0x80000880 bnez    a2, pc - 40            #; a2  = 1, taken, goto 0x80000858
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     3140        M 0x80000858 mulhu   a5, a1, a0             #; a1  = 41, a0  = 0xcccccccd
                         M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     3141        M                                           #; (f:fpu) ft0  <-- 3.141
       0     3143        M                                           #; (acc) a5  <-- 0x0047d793
       0     3144        M 0x8000085c srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
       0     3145        M 0x80000860 mul     a5, a5, a4             #; a5  = 2, a4  = 20
       0     3148        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3149        M 0x80000864 sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
       0     3151        M 0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     3152        M                                           #; (f:fpu) ft4  <-- 2.0
       0     3153        M 0x80000874 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
                         M 0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     3154        M 0x80000878 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3155        M 0x8000087c addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
       0     3156        M 0x80000880 bnez    a2, pc - 40            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     3157        M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     3158        M 0x80000888 j       pc + 0x54              #; goto 0x800008dc
                         M 0x80000884 csrci   ssr, 1                 #; (f:fpu) ft0  <-- 6.282
       0     3169        M 0x800008dc li      a3, 5                  #; (wrb) a3  <-- 5
       0     3181        M 0x800008e0 li      a4, 6                  #; (wrb) a4  <-- 6
       0     3182        M 0x800008e4 li      a5, 7                  #; (wrb) a5  <-- 7
       0     3183        M 0x800008e8 li      s3, 6                  #; (wrb) s3  <-- 6
       0     3184        M 0x800008ec mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     3193        M 0x800008f0 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     3194        M 0x800008f4 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     3195        M 0x800008f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008f8
       0     3196        M 0x800008fc jalr    ra, ra, 1612           #; ra  = 0x800008f8, (wrb) ra  <-- 0x80000900, goto 0x80000f44
       0     3207        M 0x80000f44 addi    sp, sp, -48            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe70
       0     3208        M 0x80000f48 sw      ra, 44(sp)             #; sp  = 0x0011fe70, 0x80000900 ~~> Word[0x0011fe9c]
       0     3209        M 0x80000f4c sw      s0, 40(sp)             #; sp  = 0x0011fe70, 0x00100240 ~~> Word[0x0011fe98]
       0     3210        M 0x80000f50 sw      s1, 36(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe94]
       0     3211        M 0x80000f54 sw      s2, 32(sp)             #; sp  = 0x0011fe70, 0x00100000 ~~> Word[0x0011fe90]
       0     3212        M 0x80000f58 sw      s3, 28(sp)             #; sp  = 0x0011fe70, 6 ~~> Word[0x0011fe8c]
       0     3213        M 0x80000f5c sw      s4, 24(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe88]
       0     3222        M 0x80000f60 sw      s5, 20(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe84]
       0     3223        M 0x80000f64 sw      s6, 16(sp)             #; sp  = 0x0011fe70, 0x001000f0 ~~> Word[0x0011fe80]
       0     3224        M 0x80000f68 sw      s7, 12(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe7c]
       0     3225        M 0x80000f6c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
       0     3234        M 0x80000f70 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     3235        M 0x80000f74 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     3236        M 0x80000f78 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     3237        M 0x80000f7c bnez    a3, pc + 820           #; a3  = 0, not taken
       0     3246        M 0x80000f80 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
       0     3247        M 0x80000f84 addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
       0     3248        M 0x80000f88 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
       0     3249        M 0x80000f8c addi    t2, s6, -1             #; s6  = 5, (wrb) t2  <-- 4
       0     3258        M 0x80000f90 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
       0     3259        M 0x80000f94 mul     a0, s2, t2             #; s2  = 56, t2  = 4
       0     3262        M                                           #; (acc) a0  <-- 0x00ae8533
       0     3263        M 0x80000f98 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
       0     3264        M 0x80000f9c add     s4, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) s4  <-- 0x00100350
       0     3270        M 0x80000fa0 sltu    a3, s4, a0             #; s4  = 0x00100350, a0  = 272, (wrb) a3  <-- 0
       0     3271        M 0x80000fa4 bge     zero, a4, pc + 80      #; a4  = 6, not taken
       0     3272        M 0x80000fa8 addi    t0, a4, -1             #; a4  = 6, (wrb) t0  <-- 5
       0     3273        M 0x80000fac slli    t1, t0, 3              #; t0  = 5, (wrb) t1  <-- 40
       0     3282        M 0x80000fb0 slli    s5, a4, 3              #; a4  = 6, (wrb) s5  <-- 48
       0     3283        M 0x80000fb4 mul     a0, s5, t2             #; s5  = 48, t2  = 4
       0     3286        M                                           #; (acc) t6  <-- 0x00a30fb3
       0     3287        M 0x80000fb8 add     t6, t1, a0             #; t1  = 40, a0  = 192, (wrb) t6  <-- 232
       0     3288        M 0x80000fbc add     t5, t6, a1             #; t6  = 232, a1  = 0x00100000, (wrb) t5  <-- 0x001000e8
       0     3294        M 0x80000fc0 mul     a7, s2, t0             #; s2  = 56, t0  = 5
       0     3295        M 0x80000fc4 beqz    a3, pc + 112           #; a3  = 0, taken, goto 0x80001034
       0     3317        M 0x80001034 sltu    a0, s4, a1             #; s4  = 0x00100350, a1  = 0x00100000, (wrb) a0  <-- 0
       0     3318        M 0x80001038 add     t3, a7, t4             #; a7  = 280, t4  = 48, (wrb) t3  <-- 328
       0     3319        M 0x8000103c bgeu    t5, t6, pc - 104       #; t5  = 0x001000e8, t6  = 232, taken, goto 0x80000fd4
       0     3320        M 0x80000fd4 sltu    s0, t5, s7             #; t5  = 0x001000e8, s7  = 0x00100240, (wrb) s0  <-- 1
       0     3321        M 0x80000fd8 add     s3, t3, a2             #; t3  = 328, a2  = 0x001000f0, (wrb) s3  <-- 0x00100238
       0     3322        M 0x80000fdc bnez    a3, pc + 112           #; a3  = 0, not taken
       0     3332        M 0x80000fe0 sltu    s1, s4, a2             #; s4  = 0x00100350, a2  = 0x001000f0, (wrb) s1  <-- 0
       0     3333        M 0x80000fe4 or      a0, s0, a0             #; s0  = 1, a0  = 0, (wrb) a0  <-- 1
       0     3334        M 0x80000fe8 bltu    s3, t3, pc + 112       #; s3  = 0x00100238, t3  = 328, not taken
       0     3335        M 0x80000fec sltu    s0, s3, s7             #; s3  = 0x00100238, s7  = 0x00100240, (wrb) s0  <-- 1
       0     3344        M 0x80000ff0 j       pc + 0x6c              #; goto 0x8000105c
       0     3356        M 0x8000105c or      s0, s1, s0             #; s1  = 0, s0  = 1, (wrb) s0  <-- 1
       0     3368        M 0x80001060 and     s0, a0, s0             #; a0  = 1, s0  = 1, (wrb) s0  <-- 1
       0     3369        M 0x80001064 srli    a0, s7, 20             #; s7  = 0x00100240, (wrb) a0  <-- 1
       0     3370        M 0x80001068 snez    s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
       0     3371        M 0x8000106c lui     a0, 0x120              #; (wrb) a0  <-- 0x00120000
       0     3380        M 0x80001070 addi    a0, a0, 1              #; a0  = 0x00120000, (wrb) a0  <-- 0x00120001
       0     3381        M 0x80001074 beqz    a3, pc + 12            #; a3  = 0, taken, goto 0x80001080
       0     3392        M 0x80001080 sltu    a3, s4, a0             #; s4  = 0x00100350, a0  = 0x00120001, (wrb) a3  <-- 1
       0     3393        M 0x80001084 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     3394        M 0x80001088 and     a3, a3, s0             #; a3  = 1, s0  = 1, (wrb) a3  <-- 1
       0     3395        M 0x8000108c srli    s0, a1, 20             #; a1  = 0x00100000, (wrb) s0  <-- 1
       0     3404        M 0x80001090 snez    s0, s0                 #; s0  = 1, (wrb) s0  <-- 1
       0     3405        M 0x80001094 bgeu    t5, t6, pc + 12        #; t5  = 0x001000e8, t6  = 232, taken, goto 0x800010a0
       0     3416        M 0x800010a0 sltu    s1, t5, a0             #; t5  = 0x001000e8, a0  = 0x00120001, (wrb) s1  <-- 1
       0     3417        M 0x800010a4 and     s1, s0, s1             #; s0  = 1, s1  = 1, (wrb) s1  <-- 1
       0     3418        M 0x800010a8 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     3419        M 0x800010ac srli    s1, a2, 20             #; a2  = 0x001000f0, (wrb) s1  <-- 1
       0     3428        M 0x800010b0 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
       0     3429        M 0x800010b4 bgeu    s3, t3, pc + 12        #; s3  = 0x00100238, t3  = 328, taken, goto 0x800010c0
       0     3440        M 0x800010c0 sltu    a0, s3, a0             #; s3  = 0x00100238, a0  = 0x00120001, (wrb) a0  <-- 1
       0     3441        M 0x800010c4 and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     3442        M 0x800010c8 and     a0, a0, a3             #; a0  = 1, a3  = 1, (wrb) a0  <-- 1
       0     3443        M 0x800010cc beqz    a0, pc + 264           #; a0  = 1, not taken
       0     3452        M 0x800010d0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     3453        M 0x800010d4 li      t4, 8                  #; (wrb) t4  <-- 8
       0     3454        M 0x800010d8 li      s1, 64                 #; (wrb) s1  <-- 64
       0     3455        M 0x800010dc scfgw   a6, s1                 #; a6  = 6, s1  = 64
       0     3464        M 0x800010e0 li      s1, 192                #; (wrb) s1  <-- 192
       0     3465        M 0x800010e4 scfgw   t4, s1                 #; t4  = 8, s1  = 192
       0     3466        M 0x800010e8 li      s1, 96                 #; (wrb) s1  <-- 96
       0     3467        M 0x800010ec scfgw   t2, s1                 #; t2  = 4, s1  = 96
       0     3476        M 0x800010f0 li      s1, 224                #; (wrb) s1  <-- 224
       0     3477        M 0x800010f4 scfgw   t4, s1                 #; t4  = 8, s1  = 224
       0     3478        M 0x800010f8 li      s1, 32                 #; (wrb) s1  <-- 32
       0     3479        M 0x800010fc scfgw   zero, s1               #; s1  = 32
       0     3488        M 0x80001100 scfgwi  s7, 928                #; s7  = 0x00100240
       0     3489        M 0x80001104 li      s1, 1                  #; (wrb) s1  <-- 1
       0     3490        M 0x80001108 addi    s0, s1, 64             #; s1  = 1, (wrb) s0  <-- 65
       0     3491        M 0x8000110c scfgw   t0, s0                 #; t0  = 5, s0  = 65, (acc) ra  <-- 0x0082a0ab
       0     3500        M 0x80001110 addi    s0, s1, 192            #; s1  = 1, (wrb) s0  <-- 193
       0     3501        M 0x80001114 scfgw   t4, s0                 #; t4  = 8, s0  = 193
       0     3502        M 0x80001118 sub     s0, zero, t1           #; t1  = 40, (wrb) s0  <-- -40
       0     3503        M 0x8000111c addi    a3, s1, 96             #; s1  = 1, (wrb) a3  <-- 97
       0     3512        M 0x80001120 scfgw   a6, a3                 #; a6  = 6, a3  = 97
       0     3513        M 0x80001124 addi    a3, s1, 224            #; s1  = 1, (wrb) a3  <-- 225
       0     3514        M 0x80001128 scfgw   s0, a3                 #; s0  = -40, a3  = 225
       0     3515        M 0x8000112c addi    a3, s1, 128            #; s1  = 1, (wrb) a3  <-- 129
       0     3524        M 0x80001130 addi    s0, s1, 256            #; s1  = 1, (wrb) s0  <-- 257
       0     3525        M 0x80001134 scfgw   t2, a3                 #; t2  = 4, a3  = 129
       0     3526        M 0x80001138 scfgw   t4, s0                 #; t4  = 8, s0  = 257
       0     3527        M 0x8000113c addi    a3, s1, 32             #; s1  = 1, (wrb) a3  <-- 33
       0     3536        M 0x80001140 scfgw   zero, a3               #; a3  = 33
       0     3537        M 0x80001144 scfgwi  a1, 833                #; a1  = 0x00100000
       0     3538        M 0x80001148 li      a1, 2                  #; (wrb) a1  <-- 2
       0     3539        M 0x8000114c addi    a3, a1, 64             #; a1  = 2, (wrb) a3  <-- 66
       0     3548        M 0x80001150 addi    s1, a1, 192            #; a1  = 2, (wrb) s1  <-- 194
       0     3549        M 0x80001154 scfgw   t0, a3                 #; t0  = 5, a3  = 66
       0     3550        M 0x80001158 scfgw   s2, s1                 #; s2  = 56, s1  = 194
       0     3551        M 0x8000115c sub     a3, t4, a7             #; t4  = 8, a7  = 280, (wrb) a3  <-- -272
       0     3560        M 0x80001160 addi    s1, a1, 96             #; a1  = 2, (wrb) s1  <-- 98
       0     3561        M 0x80001164 addi    s0, a1, 224            #; a1  = 2, (wrb) s0  <-- 226
       0     3562        M 0x80001168 scfgw   a6, s1                 #; a6  = 6, s1  = 98
       0     3563        M 0x8000116c scfgw   a3, s0                 #; a3  = -272, s0  = 226
       0     3572        M 0x80001170 sub     a3, zero, t3           #; t3  = 328, (wrb) a3  <-- -328
       0     3573        M 0x80001174 addi    s1, a1, 128            #; a1  = 2, (wrb) s1  <-- 130
       0     3574        M 0x80001178 addi    s0, a1, 256            #; a1  = 2, (wrb) s0  <-- 258
       0     3575        M 0x8000117c scfgw   t2, s1                 #; t2  = 4, s1  = 130
       0     3584        M 0x80001180 scfgw   a3, s0                 #; a3  = -328, s0  = 258
       0     3585        M 0x80001184 addi    a1, a1, 32             #; a1  = 2, (wrb) a1  <-- 34
       0     3586        M 0x80001188 scfgw   zero, a1               #; a1  = 34
       0     3587        M 0x8000118c scfgwi  a2, 834                #; a2  = 0x001000f0
       0     3597        M 0x80001190 csrsi   ssr, 1                 #; 
       0     3598        M 0x80001198 li      a1, 0                  #; (wrb) a1  <-- 0
                         M 0x80001194 fcvt.d.w ft3, zero             #; ac1  = 0
       0     3599        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3610        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3611        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
       0     3612        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 3.141
       0     3613        M                                           #; (f:fpu) ft6  <-- 3.141
       0     3621        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
       0     3622        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 3.141, ft4  = 0.0
       0     3624        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     3625        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 6.282
       0     3626        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 9.865881
       0     3627        M                                           #; (f:fpu) ft6  <-- 25.128
       0     3628        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 6.282, ft4  = 9.865881
       0     3629        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     3630        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 9.423
       0     3631        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 47.115
       0     3632        M                                           #; (f:fpu) ft4  <-- 167.7199770
       0     3633        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 9.423, ft4  = 167.7199770
       0     3634        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     3635        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 12.564
       0     3636        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     3637        M                                           #; (f:fpu) ft4  <-- 611.6846220
       0     3638        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 12.564, ft4  = 611.6846220
       0     3639        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
       0     3640        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 15.705
       0     3641        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 28.269
       0     3642        M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3643        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 15.705, ft4  = 690.6116700
       0     3644        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     3645        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 18.846
       0     3646        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 50.256
       0     3647        M 0x800011b8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 1134.5763150
       0     3648        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 18.846, ft4  = 1134.5763150
       0     3651        M                                           #; (f:fpu) ft4  <-- 2081.7008910
       0     3652        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2081.7008910, ft4  = 2081.7008910
       0     3653        M                                           #; (f:fpu) ft0  <-- 2081.7008910
       0     3659        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 1, a5  = 7, taken, goto 0x8000119c
       0     3660        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3663        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3664        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
       0     3665        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 3.141
       0     3666        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     3667        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 3.141, ft4  = 0.0
       0     3669        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     3670        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 6.282
       0     3671        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 19.7317620
       0     3672        M                                           #; (f:fpu) ft6  <-- 28.269
       0     3673        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 6.282, ft4  = 19.7317620
       0     3674        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     3675        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 9.423
       0     3676        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 50.256
       0     3677        M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     3678        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 9.423, ft4  = 197.3176200
       0     3679        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     3680        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 12.564
       0     3681        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 9.423
       0     3682        M                                           #; (f:fpu) ft4  <-- 670.8799080
       0     3683        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 12.564, ft4  = 670.8799080
       0     3684        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
       0     3685        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 15.705
       0     3686        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 31.41
       0     3687        M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3688        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 15.705, ft4  = 789.2704800
       0     3689        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     3690        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 18.846
       0     3691        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 53.397
       0     3692        M 0x800011b8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 1282.5645300
       0     3693        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 18.846, ft4  = 1282.5645300
       0     3694        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 2, a5  = 7, taken, goto 0x8000119c
       0     3695        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3696        M                                           #; (f:fpu) ft4  <-- 2288.8843920
       0     3697        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2288.8843920, ft4  = 2288.8843920
       0     3698        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2288.8843920
       0     3699        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
       0     3700        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 3.141
       0     3701        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 9.423
       0     3702        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 3.141, ft4  = 0.0
       0     3704        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     3705        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 6.282
       0     3706        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 29.5976430
       0     3707        M                                           #; (f:fpu) ft6  <-- 31.41
       0     3708        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 6.282, ft4  = 29.5976430
       0     3709        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     3710        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 9.423
       0     3711        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 53.397
       0     3712        M                                           #; (f:fpu) ft4  <-- 226.9152630
       0     3713        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 9.423, ft4  = 226.9152630
       0     3714        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     3715        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 12.564
       0     3716        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 12.564
       0     3717        M                                           #; (f:fpu) ft4  <-- 730.0751940
       0     3718        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 12.564, ft4  = 730.0751940
       0     3719        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
       0     3720        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 15.705
       0     3721        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 34.551
       0     3722        M                                           #; (f:fpu) ft4  <-- 887.9292900
       0     3723        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 15.705, ft4  = 887.9292900
       0     3724        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     3725        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 18.846
       0     3726        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 56.538
       0     3727        M 0x800011b8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3728        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 18.846, ft4  = 1430.5527450
       0     3729        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 3, a5  = 7, taken, goto 0x8000119c
       0     3730        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3731        M                                           #; (f:fpu) ft4  <-- 2496.0678930
       0     3732        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2496.0678930, ft4  = 2496.0678930
       0     3733        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2496.0678930
       0     3734        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
       0     3735        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 3.141
       0     3736        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 12.564
       0     3737        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 3.141, ft4  = 0.0
       0     3739        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     3740        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 6.282
       0     3741        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 39.4635240
       0     3742        M                                           #; (f:fpu) ft6  <-- 34.551
       0     3743        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 6.282, ft4  = 39.4635240
       0     3744        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     3745        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 9.423
       0     3746        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 56.538
       0     3747        M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     3748        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 9.423, ft4  = 256.5129060
       0     3749        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     3750        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 12.564
       0     3751        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 15.705
       0     3752        M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3753        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 12.564, ft4  = 789.2704800
       0     3754        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
       0     3755        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 15.705
       0     3756        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 37.692
       0     3757        M                                           #; (f:fpu) ft4  <-- 986.5881000
       0     3758        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 15.705, ft4  = 986.5881000
       0     3759        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     3760        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 18.846
       0     3761        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 59.679
       0     3762        M 0x800011b8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 1578.5409600
       0     3763        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 18.846, ft4  = 1578.5409600
       0     3764        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 4, a5  = 7, taken, goto 0x8000119c
       0     3765        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3766        M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     3767        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2703.2513940, ft4  = 2703.2513940
       0     3768        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2703.2513940
       0     3769        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
       0     3770        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 3.141
       0     3771        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 15.705
       0     3772        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 3.141, ft4  = 0.0
       0     3774        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     3775        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 6.282
       0     3776        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     3777        M                                           #; (f:fpu) ft6  <-- 37.692
       0     3778        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 6.282, ft4  = 49.3294050
       0     3779        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     3780        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 9.423
       0     3781        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 59.679
       0     3782        M                                           #; (f:fpu) ft4  <-- 286.1105490
       0     3783        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 9.423, ft4  = 286.1105490
       0     3784        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     3785        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 12.564
       0     3786        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 18.846
       0     3787        M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3788        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 12.564, ft4  = 848.4657660
       0     3789        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
       0     3790        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 15.705
       0     3791        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 40.833
       0     3792        M                                           #; (f:fpu) ft4  <-- 1085.2469100
       0     3793        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 15.705, ft4  = 1085.2469100
       0     3794        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     3795        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 18.846
       0     3796        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 62.82
       0     3797        M 0x800011b8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 1726.5291750
       0     3798        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 18.846, ft4  = 1726.5291750
       0     3799        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 5, a5  = 7, taken, goto 0x8000119c
       0     3800        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3801        M                                           #; (f:fpu) ft4  <-- 2910.4348950
       0     3802        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2910.4348950, ft4  = 2910.4348950
       0     3803        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2910.4348950
       0     3804        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
       0     3805        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 3.141
       0     3806        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 18.846
       0     3807        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 3.141, ft4  = 0.0
       0     3809        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     3810        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 6.282
       0     3811        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 59.1952860
       0     3812        M                                           #; (f:fpu) ft6  <-- 40.833
       0     3813        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 6.282, ft4  = 59.1952860
       0     3814        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     3815        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 9.423
       0     3816        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 62.82
       0     3817        M                                           #; (f:fpu) ft4  <-- 315.7081920
       0     3818        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 9.423, ft4  = 315.7081920
       0     3819        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     3820        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 12.564
       0     3821        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 21.9870000
       0     3822        M                                           #; (f:fpu) ft4  <-- 907.6610520
       0     3823        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 12.564, ft4  = 907.6610520
       0     3824        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
       0     3825        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 15.705
       0     3826        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 43.9740000
       0     3827        M                                           #; (f:fpu) ft4  <-- 1183.9057200
       0     3828        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 15.705, ft4  = 1183.9057200
       0     3829        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     3830        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 18.846
       0     3831        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     3832        M 0x800011b8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     3833        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 18.846, ft4  = 1874.5173900
       0     3834        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 6, a5  = 7, taken, goto 0x8000119c
       0     3835        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3836        M                                           #; (f:fpu) ft4  <-- 1933.7126760
       0     3837        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 1933.7126760, ft4  = 1933.7126760
       0     3838        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1933.7126760
       0     3839        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
       0     3840        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 3.141
       0     3841        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 21.9870000
       0     3842        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 3.141, ft4  = 0.0
       0     3844        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     3845        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 6.282
       0     3846        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3847        M                                           #; (f:fpu) ft6  <-- 43.9740000
       0     3848        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 6.282, ft4  = 69.0611670
       0     3849        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     3850        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 9.423
       0     3851        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     3852        M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     3853        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 9.423, ft4  = 345.3058350
       0     3854        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     3855        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 12.564
       0     3856        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 25.128
       0     3857        M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     3858        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 12.564, ft4  = 374.9034780
       0     3859        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
       0     3860        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 15.705
       0     3861        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 47.115
       0     3862        M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3863        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 15.705, ft4  = 690.6116700
       0     3864        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     3865        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 18.846
       0     3866        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     3867        M 0x800011b8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3868        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 18.846, ft4  = 1430.5527450
       0     3869        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 7, a5  = 7, not taken
       0     3870        M 0x800011c4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3871        M 0x800011c8 bne     a0, s6, pc - 48        #; a0  = 1, s6  = 5, taken, goto 0x80001198
                         M                                           #; (f:fpu) ft4  <-- 1548.9433170
       0     3872        M 0x80001198 li      a1, 0                  #; (wrb) a1  <-- 0
                         M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 1548.9433170, ft4  = 1548.9433170
       0     3873        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft0  <-- 1548.9433170
       0     3876        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3877        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
       0     3878        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 21.9870000
       0     3879        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     3880        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 21.9870000, ft4  = 0.0
       0     3882        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     3883        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 25.128
       0     3884        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3885        M                                           #; (f:fpu) ft6  <-- 25.128
       0     3886        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 25.128, ft4  = 69.0611670
       0     3887        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     3888        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 28.269
       0     3889        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 47.115
       0     3890        M                                           #; (f:fpu) ft4  <-- 700.4775510
       0     3891        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 28.269, ft4  = 700.4775510
       0     3892        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     3893        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 31.41
       0     3894        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     3895        M                                           #; (f:fpu) ft4  <-- 2032.3714860
       0     3896        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 31.41, ft4  = 2032.3714860
       0     3897        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
       0     3898        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 34.551
       0     3899        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 28.269
       0     3900        M                                           #; (f:fpu) ft4  <-- 2229.6891060
       0     3901        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 34.551, ft4  = 2229.6891060
       0     3902        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
       0     3903        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 37.692
       0     3904        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 50.256
       0     3905        M 0x800011b8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     3906        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 37.692, ft4  = 3206.4113250
       0     3907        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 1, a5  = 7, taken, goto 0x8000119c
       0     3908        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3909        M                                           #; (f:fpu) ft4  <-- 5100.6604770
       0     3910        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5100.6604770, ft4  = 5100.6604770
       0     3911        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5100.6604770
       0     3912        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
       0     3913        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 21.9870000
       0     3914        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     3915        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 21.9870000, ft4  = 0.0
       0     3917        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     3918        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 25.128
       0     3919        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 138.1223340
       0     3920        M                                           #; (f:fpu) ft6  <-- 28.269
       0     3921        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 25.128, ft4  = 138.1223340
       0     3922        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     3923        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 28.269
       0     3924        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 50.256
       0     3925        M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3926        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 28.269, ft4  = 848.4657660
       0     3927        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     3928        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 31.41
       0     3929        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 9.423
       0     3930        M                                           #; (f:fpu) ft4  <-- 2269.1526300
       0     3931        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 31.41, ft4  = 2269.1526300
       0     3932        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
       0     3933        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 34.551
       0     3934        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 31.41
       0     3935        M                                           #; (f:fpu) ft4  <-- 2565.1290600
       0     3936        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 34.551, ft4  = 2565.1290600
       0     3937        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
       0     3938        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 37.692
       0     3939        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 53.397
       0     3940        M 0x800011b8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 3650.3759700
       0     3941        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 37.692, ft4  = 3650.3759700
       0     3942        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 2, a5  = 7, taken, goto 0x8000119c
       0     3943        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3944        M                                           #; (f:fpu) ft4  <-- 5663.0156940
       0     3945        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5663.0156940, ft4  = 5663.0156940
       0     3946        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5663.0156940
       0     3947        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
       0     3948        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 21.9870000
       0     3949        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 9.423
       0     3950        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 21.9870000, ft4  = 0.0
       0     3952        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     3953        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 25.128
       0     3954        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 207.1835010
       0     3955        M                                           #; (f:fpu) ft6  <-- 31.41
       0     3956        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 25.128, ft4  = 207.1835010
       0     3957        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     3958        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 28.269
       0     3959        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 53.397
       0     3960        M                                           #; (f:fpu) ft4  <-- 996.4539810
       0     3961        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 28.269, ft4  = 996.4539810
       0     3962        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     3963        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 31.41
       0     3964        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 12.564
       0     3965        M                                           #; (f:fpu) ft4  <-- 2505.9337740
       0     3966        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 31.41, ft4  = 2505.9337740
       0     3967        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
       0     3968        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 34.551
       0     3969        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 34.551
       0     3970        M                                           #; (f:fpu) ft4  <-- 2900.5690140
       0     3971        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 34.551, ft4  = 2900.5690140
       0     3972        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
       0     3973        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 37.692
       0     3974        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 56.538
       0     3975        M 0x800011b8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     3976        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 37.692, ft4  = 4094.3406150
       0     3977        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 3, a5  = 7, taken, goto 0x8000119c
       0     3978        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3979        M                                           #; (f:fpu) ft4  <-- 6225.3709110
       0     3980        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 6225.3709110, ft4  = 6225.3709110
       0     3981        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6225.3709110
       0     3982        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
       0     3983        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 21.9870000
       0     3984        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 12.564
       0     3985        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 21.9870000, ft4  = 0.0
       0     3987        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     3988        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 25.128
       0     3989        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 276.2446680
       0     3990        M                                           #; (f:fpu) ft6  <-- 34.551
       0     3991        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 25.128, ft4  = 276.2446680
       0     3992        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     3993        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 28.269
       0     3994        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 56.538
       0     3995        M                                           #; (f:fpu) ft4  <-- 1144.4421960
       0     3996        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 28.269, ft4  = 1144.4421960
       0     3997        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     3998        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 31.41
       0     3999        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 15.705
       0     4000        M                                           #; (f:fpu) ft4  <-- 2742.7149180
       0     4001        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 31.41, ft4  = 2742.7149180
       0     4002        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
       0     4003        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 34.551
       0     4004        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 37.692
       0     4005        M                                           #; (f:fpu) ft4  <-- 3236.0089680
       0     4006        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 34.551, ft4  = 3236.0089680
       0     4007        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
       0     4008        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 37.692
       0     4009        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 59.679
       0     4010        M 0x800011b8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 4538.3052600
       0     4011        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 37.692, ft4  = 4538.3052600
       0     4012        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 4, a5  = 7, taken, goto 0x8000119c
       0     4013        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4014        M                                           #; (f:fpu) ft4  <-- 6787.7261280
       0     4015        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 6787.7261280, ft4  = 6787.7261280
       0     4016        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6787.7261280
       0     4017        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
       0     4018        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 21.9870000
       0     4019        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 15.705
       0     4020        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 21.9870000, ft4  = 0.0
       0     4022        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     4023        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 25.128
       0     4024        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     4025        M                                           #; (f:fpu) ft6  <-- 37.692
       0     4026        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 25.128, ft4  = 345.3058350
       0     4027        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     4028        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 28.269
       0     4029        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 59.679
       0     4030        M                                           #; (f:fpu) ft4  <-- 1292.4304110
       0     4031        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 28.269, ft4  = 1292.4304110
       0     4032        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     4033        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 31.41
       0     4034        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 18.846
       0     4035        M                                           #; (f:fpu) ft4  <-- 2979.4960620
       0     4036        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 31.41, ft4  = 2979.4960620
       0     4037        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
       0     4038        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 34.551
       0     4039        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 40.833
       0     4040        M                                           #; (f:fpu) ft4  <-- 3571.4489220
       0     4041        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 34.551, ft4  = 3571.4489220
       0     4042        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
       0     4043        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 37.692
       0     4044        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 62.82
       0     4045        M 0x800011b8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4982.2699050
       0     4046        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 37.692, ft4  = 4982.2699050
       0     4047        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 5, a5  = 7, taken, goto 0x8000119c
       0     4048        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4049        M                                           #; (f:fpu) ft4  <-- 7350.0813450
       0     4050        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 7350.0813450, ft4  = 7350.0813450
       0     4051        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7350.0813450
       0     4052        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
       0     4053        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 21.9870000
       0     4054        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 18.846
       0     4055        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 21.9870000, ft4  = 0.0
       0     4057        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     4058        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 25.128
       0     4059        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 414.3670020
       0     4060        M                                           #; (f:fpu) ft6  <-- 40.833
       0     4061        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 25.128, ft4  = 414.3670020
       0     4062        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     4063        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 28.269
       0     4064        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 62.82
       0     4065        M                                           #; (f:fpu) ft4  <-- 1440.4186260
       0     4066        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 28.269, ft4  = 1440.4186260
       0     4067        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     4068        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 31.41
       0     4069        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 21.9870000
       0     4070        M                                           #; (f:fpu) ft4  <-- 3216.2772060
       0     4071        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 31.41, ft4  = 3216.2772060
       0     4072        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
       0     4073        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 34.551
       0     4074        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 43.9740000
       0     4075        M                                           #; (f:fpu) ft4  <-- 3906.8888760
       0     4076        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 34.551, ft4  = 3906.8888760
       0     4077        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
       0     4078        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 37.692
       0     4079        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4080        M 0x800011b8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 5426.2345500
       0     4081        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 37.692, ft4  = 5426.2345500
       0     4082        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 6, a5  = 7, taken, goto 0x8000119c
       0     4083        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4084        M                                           #; (f:fpu) ft4  <-- 5544.6251220
       0     4085        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5544.6251220, ft4  = 5544.6251220
       0     4086        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5544.6251220
       0     4087        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
       0     4088        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 21.9870000
       0     4089        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 21.9870000
       0     4090        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 21.9870000, ft4  = 0.0
       0     4092        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     4093        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 25.128
       0     4094        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 483.4281690
       0     4095        M                                           #; (f:fpu) ft6  <-- 43.9740000
       0     4096        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 25.128, ft4  = 483.4281690
       0     4097        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     4098        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 28.269
       0     4099        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4100        M                                           #; (f:fpu) ft4  <-- 1588.4068410
       0     4101        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 28.269, ft4  = 1588.4068410
       0     4102        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     4103        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 31.41
       0     4104        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 25.128
       0     4105        M                                           #; (f:fpu) ft4  <-- 1677.1997700
       0     4106        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 31.41, ft4  = 1677.1997700
       0     4107        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
       0     4108        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 34.551
       0     4109        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 47.115
       0     4110        M                                           #; (f:fpu) ft4  <-- 2466.4702500
       0     4111        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 34.551, ft4  = 2466.4702500
       0     4112        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
       0     4113        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 37.692
       0     4114        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     4115        M 0x800011b8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     4116        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 37.692, ft4  = 4094.3406150
       0     4117        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 7, a5  = 7, not taken
       0     4118        M 0x800011c4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4119        M 0x800011c8 bne     a0, s6, pc - 48        #; a0  = 2, s6  = 5, taken, goto 0x80001198
                         M                                           #; (f:fpu) ft4  <-- 4331.1217590
       0     4120        M 0x80001198 li      a1, 0                  #; (wrb) a1  <-- 0
                         M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4331.1217590, ft4  = 4331.1217590
       0     4121        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft0  <-- 4331.1217590
       0     4124        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4125        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
       0     4126        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 40.833
       0     4127        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4128        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 40.833, ft4  = 0.0
       0     4130        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
       0     4131        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 43.9740000
       0     4132        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 128.2564530
       0     4133        M                                           #; (f:fpu) ft6  <-- 25.128
       0     4134        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 43.9740000, ft4  = 128.2564530
       0     4135        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
       0     4136        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 47.115
       0     4137        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 47.115
       0     4138        M                                           #; (f:fpu) ft4  <-- 1233.2351250
       0     4139        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 47.115, ft4  = 1233.2351250
       0     4140        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
       0     4141        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 50.256
       0     4142        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     4143        M                                           #; (f:fpu) ft4  <-- 3453.0583500
       0     4144        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 50.256, ft4  = 3453.0583500
       0     4145        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
       0     4146        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 53.397
       0     4147        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 28.269
       0     4148        M                                           #; (f:fpu) ft4  <-- 3768.7665420
       0     4149        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 53.397, ft4  = 3768.7665420
       0     4150        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
       0     4151        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 56.538
       0     4152        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 50.256
       0     4153        M 0x800011b8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 5278.2463350
       0     4154        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 56.538, ft4  = 5278.2463350
       0     4155        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 1, a5  = 7, taken, goto 0x8000119c
       0     4156        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4157        M                                           #; (f:fpu) ft4  <-- 8119.6200630
       0     4158        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 8119.6200630, ft4  = 8119.6200630
       0     4159        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 8119.6200630
       0     4160        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
       0     4161        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 40.833
       0     4162        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     4163        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 40.833, ft4  = 0.0
       0     4165        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
       0     4166        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 43.9740000
       0     4167        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     4168        M                                           #; (f:fpu) ft6  <-- 28.269
       0     4169        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 43.9740000, ft4  = 256.5129060
       0     4170        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
       0     4171        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 47.115
       0     4172        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 50.256
       0     4173        M                                           #; (f:fpu) ft4  <-- 1499.6139120
       0     4174        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 47.115, ft4  = 1499.6139120
       0     4175        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
       0     4176        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 50.256
       0     4177        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 9.423
       0     4178        M                                           #; (f:fpu) ft4  <-- 3867.4253520
       0     4179        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 50.256, ft4  = 3867.4253520
       0     4180        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
       0     4181        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 53.397
       0     4182        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 31.41
       0     4183        M                                           #; (f:fpu) ft4  <-- 4340.9876400
       0     4184        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 53.397, ft4  = 4340.9876400
       0     4185        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
       0     4186        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 56.538
       0     4187        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 53.397
       0     4188        M 0x800011b8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 6018.1874100
       0     4189        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 56.538, ft4  = 6018.1874100
       0     4190        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 2, a5  = 7, taken, goto 0x8000119c
       0     4191        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4192        M                                           #; (f:fpu) ft4  <-- 9037.1469960
       0     4193        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 9037.1469960, ft4  = 9037.1469960
       0     4194        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9037.1469960
       0     4195        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
       0     4196        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 40.833
       0     4197        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 9.423
       0     4198        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 40.833, ft4  = 0.0
       0     4200        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
       0     4201        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 43.9740000
       0     4202        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 384.7693590
       0     4203        M                                           #; (f:fpu) ft6  <-- 31.41
       0     4204        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 43.9740000, ft4  = 384.7693590
       0     4205        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
       0     4206        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 47.115
       0     4207        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 53.397
       0     4208        M                                           #; (f:fpu) ft4  <-- 1765.9926990
       0     4209        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 47.115, ft4  = 1765.9926990
       0     4210        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
       0     4211        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 50.256
       0     4212        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 12.564
       0     4213        M                                           #; (f:fpu) ft4  <-- 4281.7923540
       0     4214        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 50.256, ft4  = 4281.7923540
       0     4215        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
       0     4216        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 53.397
       0     4217        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 34.551
       0     4218        M                                           #; (f:fpu) ft4  <-- 4913.2087380
       0     4219        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 53.397, ft4  = 4913.2087380
       0     4220        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
       0     4221        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 56.538
       0     4222        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 56.538
       0     4223        M 0x800011b8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 6758.1284850
       0     4224        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 56.538, ft4  = 6758.1284850
       0     4225        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 3, a5  = 7, taken, goto 0x8000119c
       0     4226        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4227        M                                           #; (f:fpu) ft4  <-- 9954.6739290
       0     4228        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 9954.6739290, ft4  = 9954.6739290
       0     4229        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9954.6739290
       0     4230        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
       0     4231        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 40.833
       0     4232        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 12.564
       0     4233        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 40.833, ft4  = 0.0
       0     4235        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
       0     4236        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 43.9740000
       0     4237        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 513.0258120
       0     4238        M                                           #; (f:fpu) ft6  <-- 34.551
       0     4239        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 43.9740000, ft4  = 513.0258120
       0     4240        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
       0     4241        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 47.115
       0     4242        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 56.538
       0     4243        M                                           #; (f:fpu) ft4  <-- 2032.3714860
       0     4244        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 47.115, ft4  = 2032.3714860
       0     4245        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
       0     4246        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 50.256
       0     4247        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 15.705
       0     4248        M                                           #; (f:fpu) ft4  <-- 4696.1593560
       0     4249        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 50.256, ft4  = 4696.1593560
       0     4250        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
       0     4251        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 53.397
       0     4252        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 37.692
       0     4253        M                                           #; (f:fpu) ft4  <-- 5485.4298360
       0     4254        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 53.397, ft4  = 5485.4298360
       0     4255        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
       0     4256        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 56.538
       0     4257        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 59.679
       0     4258        M 0x800011b8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 7498.0695600
       0     4259        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 56.538, ft4  = 7498.0695600
       0     4260        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 4, a5  = 7, taken, goto 0x8000119c
       0     4261        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4262        M                                           #; (f:fpu) ft4  <-- 10872.2008620
       0     4263        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 10872.2008620, ft4  = 10872.2008620
       0     4264        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 10872.2008620
       0     4265        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
       0     4266        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 40.833
       0     4267        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 15.705
       0     4268        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 40.833, ft4  = 0.0
       0     4270        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
       0     4271        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 43.9740000
       0     4272        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 641.2822650
       0     4273        M                                           #; (f:fpu) ft6  <-- 37.692
       0     4274        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 43.9740000, ft4  = 641.2822650
       0     4275        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
       0     4276        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 47.115
       0     4277        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 59.679
       0     4278        M                                           #; (f:fpu) ft4  <-- 2298.7502730
       0     4279        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 47.115, ft4  = 2298.7502730
       0     4280        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
       0     4281        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 50.256
       0     4282        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 18.846
       0     4283        M                                           #; (f:fpu) ft4  <-- 5110.5263580
       0     4284        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 50.256, ft4  = 5110.5263580
       0     4285        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
       0     4286        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 53.397
       0     4287        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 40.833
       0     4288        M                                           #; (f:fpu) ft4  <-- 6057.6509340
       0     4289        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 53.397, ft4  = 6057.6509340
       0     4290        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
       0     4291        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 56.538
       0     4292        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 62.82
       0     4293        M 0x800011b8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 8238.0106350
       0     4294        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 56.538, ft4  = 8238.0106350
       0     4295        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 5, a5  = 7, taken, goto 0x8000119c
       0     4296        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4297        M                                           #; (f:fpu) ft4  <-- 11789.7277950
       0     4298        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 11789.7277950, ft4  = 11789.7277950
       0     4299        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 11789.7277950
       0     4300        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
       0     4301        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 40.833
       0     4302        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 18.846
       0     4303        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 40.833, ft4  = 0.0
       0     4305        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
       0     4306        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 43.9740000
       0     4307        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 769.5387180
       0     4308        M                                           #; (f:fpu) ft6  <-- 40.833
       0     4309        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 43.9740000, ft4  = 769.5387180
       0     4310        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
       0     4311        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 47.115
       0     4312        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 62.82
       0     4313        M                                           #; (f:fpu) ft4  <-- 2565.1290600
       0     4314        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 47.115, ft4  = 2565.1290600
       0     4315        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
       0     4316        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 50.256
       0     4317        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 21.9870000
       0     4318        M                                           #; (f:fpu) ft4  <-- 5524.8933600
       0     4319        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 50.256, ft4  = 5524.8933600
       0     4320        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
       0     4321        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 53.397
       0     4322        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 43.9740000
       0     4323        M                                           #; (f:fpu) ft4  <-- 6629.8720320
       0     4324        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 53.397, ft4  = 6629.8720320
       0     4325        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
       0     4326        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 56.538
       0     4327        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4328        M 0x800011b8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 8977.9517100
       0     4329        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 56.538, ft4  = 8977.9517100
       0     4330        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 6, a5  = 7, taken, goto 0x8000119c
       0     4331        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4332        M                                           #; (f:fpu) ft4  <-- 9155.5375680
       0     4333        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 9155.5375680, ft4  = 9155.5375680
       0     4334        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9155.5375680
       0     4335        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
       0     4336        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 40.833
       0     4337        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 21.9870000
       0     4338        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 40.833, ft4  = 0.0
       0     4340        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
       0     4341        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 43.9740000
       0     4342        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 897.7951710
       0     4343        M                                           #; (f:fpu) ft6  <-- 43.9740000
       0     4344        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 43.9740000, ft4  = 897.7951710
       0     4345        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
       0     4346        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 47.115
       0     4347        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4348        M                                           #; (f:fpu) ft4  <-- 2831.5078470
       0     4349        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 47.115, ft4  = 2831.5078470
       0     4350        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
       0     4351        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 50.256
       0     4352        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 25.128
       0     4353        M                                           #; (f:fpu) ft4  <-- 2979.4960620
       0     4354        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 50.256, ft4  = 2979.4960620
       0     4355        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
       0     4356        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 53.397
       0     4357        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 47.115
       0     4358        M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4359        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 53.397, ft4  = 4242.3288300
       0     4360        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
       0     4361        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 56.538
       0     4362        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     4363        M 0x800011b8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 6758.1284850
       0     4364        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 56.538, ft4  = 6758.1284850
       0     4365        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 7, a5  = 7, not taken
       0     4366        M 0x800011c4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4367        M 0x800011c8 bne     a0, s6, pc - 48        #; a0  = 3, s6  = 5, taken, goto 0x80001198
                         M                                           #; (f:fpu) ft4  <-- 7113.3002010
       0     4368        M 0x80001198 li      a1, 0                  #; (wrb) a1  <-- 0
                         M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 7113.3002010, ft4  = 7113.3002010
       0     4369        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft0  <-- 7113.3002010
       0     4372        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4373        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
       0     4374        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 59.679
       0     4375        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4376        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 59.679, ft4  = 0.0
       0     4378        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
       0     4379        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 62.82
       0     4380        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 187.4517390
       0     4381        M                                           #; (f:fpu) ft6  <-- 25.128
       0     4382        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 62.82, ft4  = 187.4517390
       0     4383        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
       0     4384        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 3.141
       0     4385        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 47.115
       0     4386        M                                           #; (f:fpu) ft4  <-- 1765.9926990
       0     4387        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 3.141, ft4  = 1765.9926990
       0     4388        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     4389        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 6.282
       0     4390        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     4391        M                                           #; (f:fpu) ft4  <-- 1913.9809140
       0     4392        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 6.282, ft4  = 1913.9809140
       0     4393        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     4394        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 9.423
       0     4395        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 28.269
       0     4396        M                                           #; (f:fpu) ft4  <-- 1953.4444380
       0     4397        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 9.423, ft4  = 1953.4444380
       0     4398        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     4399        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 12.564
       0     4400        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 50.256
       0     4401        M 0x800011b8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 2219.8232250
       0     4402        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 12.564, ft4  = 2219.8232250
       0     4403        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 1, a5  = 7, taken, goto 0x8000119c
       0     4404        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4405        M                                           #; (f:fpu) ft4  <-- 2851.2396090
       0     4406        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2851.2396090, ft4  = 2851.2396090
       0     4407        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2851.2396090
       0     4408        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
       0     4409        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 59.679
       0     4410        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     4411        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 59.679, ft4  = 0.0
       0     4413        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
       0     4414        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 62.82
       0     4415        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     4416        M                                           #; (f:fpu) ft6  <-- 28.269
       0     4417        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 62.82, ft4  = 374.9034780
       0     4418        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
       0     4419        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 3.141
       0     4420        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 50.256
       0     4421        M                                           #; (f:fpu) ft4  <-- 2150.7620580
       0     4422        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 3.141, ft4  = 2150.7620580
       0     4423        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     4424        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 6.282
       0     4425        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 9.423
       0     4426        M                                           #; (f:fpu) ft4  <-- 2308.6161540
       0     4427        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 6.282, ft4  = 2308.6161540
       0     4428        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     4429        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 9.423
       0     4430        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 31.41
       0     4431        M                                           #; (f:fpu) ft4  <-- 2367.8114400
       0     4432        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 9.423, ft4  = 2367.8114400
       0     4433        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     4434        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 12.564
       0     4435        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 53.397
       0     4436        M 0x800011b8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2663.7878700
       0     4437        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 12.564, ft4  = 2663.7878700
       0     4438        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 2, a5  = 7, taken, goto 0x8000119c
       0     4439        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4440        M                                           #; (f:fpu) ft4  <-- 3334.6677780
       0     4441        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 3334.6677780, ft4  = 3334.6677780
       0     4442        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3334.6677780
       0     4443        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
       0     4444        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 59.679
       0     4445        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 9.423
       0     4446        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 59.679, ft4  = 0.0
       0     4448        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
       0     4449        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 62.82
       0     4450        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 562.3552170
       0     4451        M                                           #; (f:fpu) ft6  <-- 31.41
       0     4452        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 62.82, ft4  = 562.3552170
       0     4453        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
       0     4454        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 3.141
       0     4455        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 53.397
       0     4456        M                                           #; (f:fpu) ft4  <-- 2535.5314170
       0     4457        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 3.141, ft4  = 2535.5314170
       0     4458        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     4459        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 6.282
       0     4460        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 12.564
       0     4461        M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     4462        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 6.282, ft4  = 2703.2513940
       0     4463        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     4464        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 9.423
       0     4465        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 34.551
       0     4466        M                                           #; (f:fpu) ft4  <-- 2782.1784420
       0     4467        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 9.423, ft4  = 2782.1784420
       0     4468        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     4469        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 12.564
       0     4470        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 56.538
       0     4471        M 0x800011b8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 3107.7525150
       0     4472        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 12.564, ft4  = 3107.7525150
       0     4473        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 3, a5  = 7, taken, goto 0x8000119c
       0     4474        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4475        M                                           #; (f:fpu) ft4  <-- 3818.0959470
       0     4476        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 3818.0959470, ft4  = 3818.0959470
       0     4477        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3818.0959470
       0     4478        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
       0     4479        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 59.679
       0     4480        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 12.564
       0     4481        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 59.679, ft4  = 0.0
       0     4483        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
       0     4484        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 62.82
       0     4485        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 749.8069560
       0     4486        M                                           #; (f:fpu) ft6  <-- 34.551
       0     4487        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 62.82, ft4  = 749.8069560
       0     4488        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
       0     4489        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 3.141
       0     4490        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 56.538
       0     4491        M                                           #; (f:fpu) ft4  <-- 2920.3007760
       0     4492        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 3.141, ft4  = 2920.3007760
       0     4493        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     4494        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 6.282
       0     4495        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 15.705
       0     4496        M                                           #; (f:fpu) ft4  <-- 3097.8866340
       0     4497        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 6.282, ft4  = 3097.8866340
       0     4498        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     4499        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 9.423
       0     4500        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 37.692
       0     4501        M                                           #; (f:fpu) ft4  <-- 3196.5454440
       0     4502        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 9.423, ft4  = 3196.5454440
       0     4503        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     4504        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 12.564
       0     4505        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 59.679
       0     4506        M 0x800011b8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 3551.7171600
       0     4507        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 12.564, ft4  = 3551.7171600
       0     4508        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 4, a5  = 7, taken, goto 0x8000119c
       0     4509        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4510        M                                           #; (f:fpu) ft4  <-- 4301.5241160
       0     4511        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4301.5241160, ft4  = 4301.5241160
       0     4512        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4301.5241160
       0     4513        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
       0     4514        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 59.679
       0     4515        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 15.705
       0     4516        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 59.679, ft4  = 0.0
       0     4518        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
       0     4519        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 62.82
       0     4520        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 937.2586950
       0     4521        M                                           #; (f:fpu) ft6  <-- 37.692
       0     4522        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 62.82, ft4  = 937.2586950
       0     4523        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
       0     4524        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 3.141
       0     4525        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 59.679
       0     4526        M                                           #; (f:fpu) ft4  <-- 3305.0701350
       0     4527        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 3.141, ft4  = 3305.0701350
       0     4528        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     4529        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 6.282
       0     4530        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 18.846
       0     4531        M                                           #; (f:fpu) ft4  <-- 3492.5218740
       0     4532        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 6.282, ft4  = 3492.5218740
       0     4533        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     4534        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 9.423
       0     4535        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 40.833
       0     4536        M                                           #; (f:fpu) ft4  <-- 3610.9124460
       0     4537        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 9.423, ft4  = 3610.9124460
       0     4538        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     4539        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 12.564
       0     4540        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 62.82
       0     4541        M 0x800011b8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3995.6818050
       0     4542        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 12.564, ft4  = 3995.6818050
       0     4543        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 5, a5  = 7, taken, goto 0x8000119c
       0     4544        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4545        M                                           #; (f:fpu) ft4  <-- 4784.9522850
       0     4546        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4784.9522850, ft4  = 4784.9522850
       0     4547        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4784.9522850
       0     4548        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
       0     4549        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 59.679
       0     4550        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 18.846
       0     4551        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 59.679, ft4  = 0.0
       0     4553        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
       0     4554        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 62.82
       0     4555        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 1124.7104340
       0     4556        M                                           #; (f:fpu) ft6  <-- 40.833
       0     4557        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 62.82, ft4  = 1124.7104340
       0     4558        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
       0     4559        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 3.141
       0     4560        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 62.82
       0     4561        M                                           #; (f:fpu) ft4  <-- 3689.8394940
       0     4562        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 3.141, ft4  = 3689.8394940
       0     4563        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     4564        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 6.282
       0     4565        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 21.9870000
       0     4566        M                                           #; (f:fpu) ft4  <-- 3887.1571140
       0     4567        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 6.282, ft4  = 3887.1571140
       0     4568        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     4569        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 9.423
       0     4570        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 43.9740000
       0     4571        M                                           #; (f:fpu) ft4  <-- 4025.2794480
       0     4572        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 9.423, ft4  = 4025.2794480
       0     4573        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     4574        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 12.564
       0     4575        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4576        M 0x800011b8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 4439.6464500
       0     4577        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 12.564, ft4  = 4439.6464500
       0     4578        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 6, a5  = 7, taken, goto 0x8000119c
       0     4579        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4580        M                                           #; (f:fpu) ft4  <-- 4479.1099740
       0     4581        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4479.1099740, ft4  = 4479.1099740
       0     4582        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4479.1099740
       0     4583        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
       0     4584        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 59.679
       0     4585        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 21.9870000
       0     4586        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 59.679, ft4  = 0.0
       0     4588        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
       0     4589        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 62.82
       0     4590        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 1312.1621730
       0     4591        M                                           #; (f:fpu) ft6  <-- 43.9740000
       0     4592        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 62.82, ft4  = 1312.1621730
       0     4593        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
       0     4594        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 3.141
       0     4595        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4596        M                                           #; (f:fpu) ft4  <-- 4074.6088530
       0     4597        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 3.141, ft4  = 4074.6088530
       0     4598        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     4599        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 6.282
       0     4600        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 25.128
       0     4601        M                                           #; (f:fpu) ft4  <-- 4084.4747340
       0     4602        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 6.282, ft4  = 4084.4747340
       0     4603        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
       0     4604        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 9.423
       0     4605        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 47.115
       0     4606        M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4607        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 9.423, ft4  = 4242.3288300
       0     4608        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     4609        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 12.564
       0     4610        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     4611        M 0x800011b8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 4686.2934750
       0     4612        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 12.564, ft4  = 4686.2934750
       0     4613        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 7, a5  = 7, not taken
       0     4614        M 0x800011c4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4615        M 0x800011c8 bne     a0, s6, pc - 48        #; a0  = 4, s6  = 5, taken, goto 0x80001198
                         M                                           #; (f:fpu) ft4  <-- 4765.2205230
       0     4616        M 0x80001198 li      a1, 0                  #; (wrb) a1  <-- 0
                         M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4765.2205230, ft4  = 4765.2205230
       0     4617        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft0  <-- 4765.2205230
       0     4620        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4621        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
       0     4622        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 15.705
       0     4623        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4624        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 15.705, ft4  = 0.0
       0     4626        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     4627        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 18.846
       0     4628        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     4629        M                                           #; (f:fpu) ft6  <-- 25.128
       0     4630        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 18.846, ft4  = 49.3294050
       0     4631        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
       0     4632        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 21.9870000
       0     4633        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 47.115
       0     4634        M                                           #; (f:fpu) ft4  <-- 522.8916930
       0     4635        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 21.9870000, ft4  = 522.8916930
       0     4636        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     4637        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 25.128
       0     4638        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     4639        M                                           #; (f:fpu) ft4  <-- 1558.8091980
       0     4640        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 25.128, ft4  = 1558.8091980
       0     4641        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     4642        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 28.269
       0     4643        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 28.269
       0     4644        M                                           #; (f:fpu) ft4  <-- 1716.6632940
       0     4645        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 28.269, ft4  = 1716.6632940
       0     4646        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     4647        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 31.41
       0     4648        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 50.256
       0     4649        M 0x800011b8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 2515.7996550
       0     4650        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 31.41, ft4  = 2515.7996550
       0     4651        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 1, a5  = 7, taken, goto 0x8000119c
       0     4652        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4653        M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     4654        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4094.3406150, ft4  = 4094.3406150
       0     4655        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4094.3406150
       0     4656        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
       0     4657        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 15.705
       0     4658        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     4659        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 15.705, ft4  = 0.0
       0     4661        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     4662        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 18.846
       0     4663        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 98.65881
       0     4664        M                                           #; (f:fpu) ft6  <-- 28.269
       0     4665        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 18.846, ft4  = 98.65881
       0     4666        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
       0     4667        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 21.9870000
       0     4668        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 50.256
       0     4669        M                                           #; (f:fpu) ft4  <-- 631.4163840
       0     4670        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 21.9870000, ft4  = 631.4163840
       0     4671        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     4672        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 25.128
       0     4673        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 9.423
       0     4674        M                                           #; (f:fpu) ft4  <-- 1736.3950560
       0     4675        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 25.128, ft4  = 1736.3950560
       0     4676        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     4677        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 28.269
       0     4678        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 31.41
       0     4679        M                                           #; (f:fpu) ft4  <-- 1973.1762000
       0     4680        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 28.269, ft4  = 1973.1762000
       0     4681        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     4682        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 31.41
       0     4683        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 53.397
       0     4684        M 0x800011b8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2861.1054900
       0     4685        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 31.41, ft4  = 2861.1054900
       0     4686        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 2, a5  = 7, taken, goto 0x8000119c
       0     4687        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4688        M                                           #; (f:fpu) ft4  <-- 4538.3052600
       0     4689        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4538.3052600, ft4  = 4538.3052600
       0     4690        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4538.3052600
       0     4691        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
       0     4692        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 15.705
       0     4693        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 9.423
       0     4694        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 15.705, ft4  = 0.0
       0     4696        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     4697        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 18.846
       0     4698        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 147.9882150
       0     4699        M                                           #; (f:fpu) ft6  <-- 31.41
       0     4700        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 18.846, ft4  = 147.9882150
       0     4701        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
       0     4702        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 21.9870000
       0     4703        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 53.397
       0     4704        M                                           #; (f:fpu) ft4  <-- 739.9410750
       0     4705        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 21.9870000, ft4  = 739.9410750
       0     4706        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     4707        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 25.128
       0     4708        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 12.564
       0     4709        M                                           #; (f:fpu) ft4  <-- 1913.9809140
       0     4710        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 25.128, ft4  = 1913.9809140
       0     4711        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     4712        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 28.269
       0     4713        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 34.551
       0     4714        M                                           #; (f:fpu) ft4  <-- 2229.6891060
       0     4715        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 28.269, ft4  = 2229.6891060
       0     4716        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     4717        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 31.41
       0     4718        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 56.538
       0     4719        M 0x800011b8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     4720        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 31.41, ft4  = 3206.4113250
       0     4721        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 3, a5  = 7, taken, goto 0x8000119c
       0     4722        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4723        M                                           #; (f:fpu) ft4  <-- 4982.2699050
       0     4724        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4982.2699050, ft4  = 4982.2699050
       0     4725        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4982.2699050
       0     4726        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
       0     4727        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 15.705
       0     4728        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 12.564
       0     4729        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 15.705, ft4  = 0.0
       0     4731        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     4732        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 18.846
       0     4733        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     4734        M                                           #; (f:fpu) ft6  <-- 34.551
       0     4735        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 18.846, ft4  = 197.3176200
       0     4736        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
       0     4737        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 21.9870000
       0     4738        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 56.538
       0     4739        M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     4740        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 21.9870000, ft4  = 848.4657660
       0     4741        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     4742        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 25.128
       0     4743        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 15.705
       0     4744        M                                           #; (f:fpu) ft4  <-- 2091.5667720
       0     4745        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 25.128, ft4  = 2091.5667720
       0     4746        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     4747        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 28.269
       0     4748        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 37.692
       0     4749        M                                           #; (f:fpu) ft4  <-- 2486.2020120
       0     4750        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 28.269, ft4  = 2486.2020120
       0     4751        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     4752        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 31.41
       0     4753        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 59.679
       0     4754        M 0x800011b8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 3551.7171600
       0     4755        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 31.41, ft4  = 3551.7171600
       0     4756        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 4, a5  = 7, taken, goto 0x8000119c
       0     4757        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4758        M                                           #; (f:fpu) ft4  <-- 5426.2345500
       0     4759        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5426.2345500, ft4  = 5426.2345500
       0     4760        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5426.2345500
       0     4761        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
       0     4762        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 15.705
       0     4763        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 15.705
       0     4764        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 15.705, ft4  = 0.0
       0     4766        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     4767        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 18.846
       0     4768        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 246.6470250
       0     4769        M                                           #; (f:fpu) ft6  <-- 37.692
       0     4770        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 18.846, ft4  = 246.6470250
       0     4771        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
       0     4772        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 21.9870000
       0     4773        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 59.679
       0     4774        M                                           #; (f:fpu) ft4  <-- 956.9904570
       0     4775        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 21.9870000, ft4  = 956.9904570
       0     4776        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     4777        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 25.128
       0     4778        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 18.846
       0     4779        M                                           #; (f:fpu) ft4  <-- 2269.1526300
       0     4780        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 25.128, ft4  = 2269.1526300
       0     4781        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     4782        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 28.269
       0     4783        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 40.833
       0     4784        M                                           #; (f:fpu) ft4  <-- 2742.7149180
       0     4785        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 28.269, ft4  = 2742.7149180
       0     4786        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     4787        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 31.41
       0     4788        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 62.82
       0     4789        M 0x800011b8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3897.0229950
       0     4790        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 31.41, ft4  = 3897.0229950
       0     4791        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 5, a5  = 7, taken, goto 0x8000119c
       0     4792        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4793        M                                           #; (f:fpu) ft4  <-- 5870.1991950
       0     4794        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5870.1991950, ft4  = 5870.1991950
       0     4795        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5870.1991950
       0     4796        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
       0     4797        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 15.705
       0     4798        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 18.846
       0     4799        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 15.705, ft4  = 0.0
       0     4801        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     4802        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 18.846
       0     4803        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 295.9764300
       0     4804        M                                           #; (f:fpu) ft6  <-- 40.833
       0     4805        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 18.846, ft4  = 295.9764300
       0     4806        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
       0     4807        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 21.9870000
       0     4808        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 62.82
       0     4809        M                                           #; (f:fpu) ft4  <-- 1065.5151480
       0     4810        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 21.9870000, ft4  = 1065.5151480
       0     4811        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     4812        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 25.128
       0     4813        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 21.9870000
       0     4814        M                                           #; (f:fpu) ft4  <-- 2446.7384880
       0     4815        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 25.128, ft4  = 2446.7384880
       0     4816        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     4817        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 28.269
       0     4818        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 43.9740000
       0     4819        M                                           #; (f:fpu) ft4  <-- 2999.2278240
       0     4820        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 28.269, ft4  = 2999.2278240
       0     4821        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     4822        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 31.41
       0     4823        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4824        M 0x800011b8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4825        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 31.41, ft4  = 4242.3288300
       0     4826        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 6, a5  = 7, taken, goto 0x8000119c
       0     4827        M 0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4828        M                                           #; (f:fpu) ft4  <-- 4340.9876400
       0     4829        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4340.9876400, ft4  = 4340.9876400
       0     4830        M 0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4340.9876400
       0     4831        M 0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
       0     4832        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 15.705
       0     4833        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 21.9870000
       0     4834        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 15.705, ft4  = 0.0
       0     4836        M 0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     4837        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 18.846
       0     4838        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     4839        M                                           #; (f:fpu) ft6  <-- 43.9740000
       0     4840        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 18.846, ft4  = 345.3058350
       0     4841        M 0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
       0     4842        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 21.9870000
       0     4843        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 3.141
       0     4844        M                                           #; (f:fpu) ft4  <-- 1174.0398390
       0     4845        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 21.9870000, ft4  = 1174.0398390
       0     4846        M 0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
       0     4847        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 25.128
       0     4848        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 25.128
       0     4849        M                                           #; (f:fpu) ft4  <-- 1243.1010060
       0     4850        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 25.128, ft4  = 1243.1010060
       0     4851        M 0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
       0     4852        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 28.269
       0     4853        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                         M                                           #; (f:fpu) ft6  <-- 47.115
       0     4854        M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     4855        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 28.269, ft4  = 1874.5173900
       0     4856        M 0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     4857        M 0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 31.41
       0     4858        M 0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 6.282
       0     4859        M 0x800011b8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     4860        M 0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 31.41, ft4  = 3206.4113250
       0     4861        M 0x800011c0 bne     a1, a5, pc - 36        #; a1  = 7, a5  = 7, not taken
       0     4862        M 0x800011c4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4863        M 0x800011c8 bne     a0, s6, pc - 48        #; a0  = 5, s6  = 5, not taken
                         M                                           #; (f:fpu) ft4  <-- 3403.7289450
       0     4864        M 0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 3403.7289450, ft4  = 3403.7289450
       0     4865        M 0x800011cc csrci   ssr, 1                 #; (f:fpu) ft0  <-- 3403.7289450
       0     4876        M 0x800011d0 j       pc + 0xe0              #; goto 0x800012b0
       0     4888        M 0x800012b0 lw      s7, 12(sp)             #; sp  = 0x0011fe70, s7  <~~ Word[0x0011fe7c]
       0     4891        M                                           #; (lsu) s7  <-- 0
       0     4892        M 0x800012b4 lw      s6, 16(sp)             #; sp  = 0x0011fe70, s6  <~~ Word[0x0011fe80]
       0     4895        M                                           #; (lsu) s6  <-- 0x001000f0
       0     4896        M 0x800012b8 lw      s5, 20(sp)             #; sp  = 0x0011fe70, s5  <~~ Word[0x0011fe84]
       0     4899        M                                           #; (lsu) s5  <-- 0
       0     4900        M 0x800012bc lw      s4, 24(sp)             #; sp  = 0x0011fe70, s4  <~~ Word[0x0011fe88]
       0     4903        M                                           #; (lsu) s4  <-- 0
       0     4904        M 0x800012c0 lw      s3, 28(sp)             #; sp  = 0x0011fe70, s3  <~~ Word[0x0011fe8c]
       0     4907        M                                           #; (lsu) s3  <-- 6
       0     4908        M 0x800012c4 lw      s2, 32(sp)             #; sp  = 0x0011fe70, s2  <~~ Word[0x0011fe90]
       0     4911        M                                           #; (lsu) s2  <-- 0x00100000
       0     4912        M 0x800012c8 lw      s1, 36(sp)             #; sp  = 0x0011fe70, s1  <~~ Word[0x0011fe94]
       0     4915        M                                           #; (lsu) s1  <-- 0
       0     4916        M 0x800012cc lw      s0, 40(sp)             #; sp  = 0x0011fe70, s0  <~~ Word[0x0011fe98]
       0     4919        M                                           #; (lsu) s0  <-- 0x00100240
       0     4920        M 0x800012d0 lw      ra, 44(sp)             #; sp  = 0x0011fe70, ra  <~~ Word[0x0011fe9c]
       0     4921        M 0x800012d4 addi    sp, sp, 48             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fea0
       0     4923        M                                           #; (lsu) ra  <-- 0x80000900
       0     4924        M 0x800012d8 ret                            #; ra  = 0x80000900, goto 0x80000900
       0     4931        M 0x80000900 li      a3, 5                  #; (wrb) a3  <-- 5
       0     4932        M 0x80000904 li      a4, 6                  #; (wrb) a4  <-- 6
       0     4933        M 0x80000908 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     4934        M 0x8000090c mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     4943        M 0x80000910 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     4944        M 0x80000914 li      a5, 0                  #; (wrb) a5  <-- 0
       0     4945        M 0x80000918 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000918
       0     4946        M 0x8000091c jalr    ra, ra, 1580           #; ra  = 0x80000918, (wrb) ra  <-- 0x80000920, goto 0x80000f44
       0     4957        M 0x80000f44 addi    sp, sp, -48            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe70
       0     4958        M 0x80000f48 sw      ra, 44(sp)             #; sp  = 0x0011fe70, 0x80000920 ~~> Word[0x0011fe9c]
       0     4959        M 0x80000f4c sw      s0, 40(sp)             #; sp  = 0x0011fe70, 0x00100240 ~~> Word[0x0011fe98]
       0     4960        M 0x80000f50 sw      s1, 36(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe94]
       0     4961        M 0x80000f54 sw      s2, 32(sp)             #; sp  = 0x0011fe70, 0x00100000 ~~> Word[0x0011fe90]
       0     4962        M 0x80000f58 sw      s3, 28(sp)             #; sp  = 0x0011fe70, 6 ~~> Word[0x0011fe8c]
       0     4963        M 0x80000f5c sw      s4, 24(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe88]
       0     4964        M 0x80000f60 sw      s5, 20(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe84]
       0     4965        M 0x80000f64 sw      s6, 16(sp)             #; sp  = 0x0011fe70, 0x001000f0 ~~> Word[0x0011fe80]
       0     4966        M 0x80000f68 sw      s7, 12(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe7c]
       0     4967        M 0x80000f6c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
       0     4968        M 0x80000f70 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     4969        M 0x80000f74 slti    s1, a5, 1              #; a5  = 0, (wrb) s1  <-- 1
       0     4970        M 0x80000f78 or      a3, a3, s1             #; a3  = 0, s1  = 1, (wrb) a3  <-- 1
       0     4971        M 0x80000f7c bnez    a3, pc + 820           #; a3  = 1, taken, goto 0x800012b0
       0     4974        M 0x800012b0 lw      s7, 12(sp)             #; sp  = 0x0011fe70, s7  <~~ Word[0x0011fe7c]
       0     4977        M                                           #; (lsu) s7  <-- 0
       0     4978        M 0x800012b4 lw      s6, 16(sp)             #; sp  = 0x0011fe70, s6  <~~ Word[0x0011fe80]
       0     4981        M                                           #; (lsu) s6  <-- 0x001000f0
       0     4982        M 0x800012b8 lw      s5, 20(sp)             #; sp  = 0x0011fe70, s5  <~~ Word[0x0011fe84]
       0     4985        M                                           #; (lsu) s5  <-- 0
       0     4986        M 0x800012bc lw      s4, 24(sp)             #; sp  = 0x0011fe70, s4  <~~ Word[0x0011fe88]
       0     4989        M                                           #; (lsu) s4  <-- 0
       0     4990        M 0x800012c0 lw      s3, 28(sp)             #; sp  = 0x0011fe70, s3  <~~ Word[0x0011fe8c]
       0     4993        M                                           #; (lsu) s3  <-- 6
       0     4994        M 0x800012c4 lw      s2, 32(sp)             #; sp  = 0x0011fe70, s2  <~~ Word[0x0011fe90]
       0     4997        M                                           #; (lsu) s2  <-- 0x00100000
       0     4998        M 0x800012c8 lw      s1, 36(sp)             #; sp  = 0x0011fe70, s1  <~~ Word[0x0011fe94]
       0     5001        M                                           #; (lsu) s1  <-- 0
       0     5002        M 0x800012cc lw      s0, 40(sp)             #; sp  = 0x0011fe70, s0  <~~ Word[0x0011fe98]
       0     5005        M                                           #; (lsu) s0  <-- 0x00100240
       0     5006        M 0x800012d0 lw      ra, 44(sp)             #; sp  = 0x0011fe70, ra  <~~ Word[0x0011fe9c]
       0     5007        M 0x800012d4 addi    sp, sp, 48             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fea0
       0     5009        M                                           #; (lsu) ra  <-- 0x80000920
       0     5010        M 0x800012d8 ret                            #; ra  = 0x80000920, goto 0x80000920
       0     5013        M 0x80000920 srli    a0, s0, 20             #; s0  = 0x00100240, (wrb) a0  <-- 1
       0     5014        M 0x80000924 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     5015        M 0x80000928 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     5016        M 0x8000092c addi    a1, a1, -271           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011fef1
       0     5025        M 0x80000930 sltu    a1, s0, a1             #; s0  = 0x00100240, a1  = 0x0011fef1, (wrb) a1  <-- 1
       0     5026        M 0x80000934 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     5027        M 0x80000938 beqz    a0, pc + 808           #; a0  = 1, not taken
       0     5028        M 0x8000093c li      s4, 8                  #; (wrb) s4  <-- 8
       0     5037        M 0x80000940 li      a0, 64                 #; (wrb) a0  <-- 64
       0     5038        M 0x80000944 li      a1, 192                #; (wrb) a1  <-- 192
       0     5039        M 0x80000948 scfgw   s3, a0                 #; s3  = 6, a0  = 64
       0     5040        M 0x8000094c scfgw   s4, a1                 #; s4  = 8, a1  = 192
       0     5049        M 0x80000950 li      s5, 4                  #; (wrb) s5  <-- 4
       0     5050        M 0x80000954 li      a0, 96                 #; (wrb) a0  <-- 96
       0     5051        M 0x80000958 li      a1, 224                #; (wrb) a1  <-- 224
       0     5052        M 0x8000095c scfgw   s5, a0                 #; s5  = 4, a0  = 96
       0     5061        M 0x80000960 scfgw   s4, a1                 #; s4  = 8, a1  = 224
       0     5062        M 0x80000964 li      a0, 32                 #; (wrb) a0  <-- 32
       0     5063        M 0x80000968 scfgw   zero, a0               #; a0  = 32
       0     5064        M 0x8000096c scfgwi  s0, 800                #; s0  = 0x00100240
       0     5074        M 0x80000970 csrsi   ssr, 1                 #; 
       0     5076        M 0x80000974 fsgnj.d ft3, ft0, ft0          #; ft0  = 2081.7008910, ft0  = 2081.7008910
       0     5077        M                                           #; (f:fpu) ft3  <-- 2081.7008910
       0     5078        M 0x80000978 fsd     ft3, 48(sp)            #; 2081.7008910 ~~> Doub[0x0011fed0]
       0     5079        M 0x8000097c fsgnj.d ft3, ft0, ft0          #; ft0  = 2288.8843920, ft0  = 2288.8843920
       0     5080        M                                           #; (f:fpu) ft3  <-- 2288.8843920
       0     5087        M 0x80000980 fsd     ft3, 40(sp)            #; 2288.8843920 ~~> Doub[0x0011fec8]
       0     5088        M 0x80000984 fsgnj.d ft3, ft0, ft0          #; ft0  = 2496.0678930, ft0  = 2496.0678930
       0     5089        M                                           #; (f:fpu) ft3  <-- 2496.0678930
       0     5090        M 0x80000988 fsd     ft3, 32(sp)            #; 2496.0678930 ~~> Doub[0x0011fec0]
       0     5091        M 0x8000098c fsgnj.d ft3, ft0, ft0          #; ft0  = 2703.2513940, ft0  = 2703.2513940
       0     5092        M                                           #; (f:fpu) ft3  <-- 2703.2513940
       0     5099        M 0x80000990 fsd     ft3, 24(sp)            #; 2703.2513940 ~~> Doub[0x0011feb8]
       0     5100        M 0x80000994 fsgnj.d ft3, ft0, ft0          #; ft0  = 2910.4348950, ft0  = 2910.4348950
       0     5101        M                                           #; (f:fpu) ft3  <-- 2910.4348950
       0     5102        M 0x80000998 fsd     ft3, 16(sp)            #; 2910.4348950 ~~> Doub[0x0011feb0]
       0     5103        M 0x8000099c fsgnj.d ft3, ft0, ft0          #; ft0  = 1933.7126760, ft0  = 1933.7126760
       0     5104        M                                           #; (f:fpu) ft3  <-- 1933.7126760
       0     5111        M 0x800009a0 fsd     ft3, 8(sp)             #; 1933.7126760 ~~> Doub[0x0011fea8]
       0     5112        M 0x800009a4 fsgnj.d fa1, ft0, ft0          #; ft0  = 1548.9433170, ft0  = 1548.9433170
       0     5113        M 0x800009a8 fsgnj.d fa2, ft0, ft0          #; ft0  = 5100.6604770, ft0  = 5100.6604770, (f:fpu) fa1  <-- 1548.9433170
       0     5114        M 0x800009ac fsgnj.d fa3, ft0, ft0          #; ft0  = 5663.0156940, ft0  = 5663.0156940, (f:fpu) fa2  <-- 5100.6604770
       0     5115        M                                           #; (f:fpu) fa3  <-- 5663.0156940
       0     5123        M 0x800009b0 fsgnj.d fa4, ft0, ft0          #; ft0  = 6225.3709110, ft0  = 6225.3709110
       0     5124        M 0x800009b4 fsgnj.d fa5, ft0, ft0          #; ft0  = 6787.7261280, ft0  = 6787.7261280, (f:fpu) fa4  <-- 6225.3709110
       0     5125        M 0x800009b8 fsgnj.d fa6, ft0, ft0          #; ft0  = 7350.0813450, ft0  = 7350.0813450, (f:fpu) fa5  <-- 6787.7261280
       0     5126        M 0x800009bc fsgnj.d fa7, ft0, ft0          #; ft0  = 5544.6251220, ft0  = 5544.6251220, (f:fpu) fa6  <-- 7350.0813450
       0     5127        M                                           #; (f:fpu) fa7  <-- 5544.6251220
       0     5135        M 0x800009c0 fsgnj.d ft8, ft0, ft0          #; ft0  = 4331.1217590, ft0  = 4331.1217590
       0     5136        M 0x800009c4 fsgnj.d ft9, ft0, ft0          #; ft0  = 8119.6200630, ft0  = 8119.6200630, (f:fpu) ft8  <-- 4331.1217590
       0     5137        M 0x800009c8 fsgnj.d ft10, ft0, ft0         #; ft0  = 9037.1469960, ft0  = 9037.1469960, (f:fpu) ft9  <-- 8119.6200630
       0     5138        M 0x800009cc fsgnj.d ft11, ft0, ft0         #; ft0  = 9954.6739290, ft0  = 9954.6739290, (f:fpu) ft10 <-- 9037.1469960
       0     5139        M                                           #; (f:fpu) ft11 <-- 9954.6739290
       0     5147        M 0x800009d0 fsgnj.d fs0, ft0, ft0          #; ft0  = 10872.2008620, ft0  = 10872.2008620
       0     5148        M 0x800009d4 fsgnj.d fs1, ft0, ft0          #; ft0  = 11789.7277950, ft0  = 11789.7277950, (f:fpu) fs0  <-- 10872.2008620
       0     5149        M 0x800009d8 fsgnj.d fs2, ft0, ft0          #; ft0  = 9155.5375680, ft0  = 9155.5375680, (f:fpu) fs1  <-- 11789.7277950
       0     5150        M 0x800009dc fsgnj.d fs3, ft0, ft0          #; ft0  = 7113.3002010, ft0  = 7113.3002010, (f:fpu) fs2  <-- 9155.5375680
       0     5151        M                                           #; (f:fpu) fs3  <-- 7113.3002010
       0     5159        M 0x800009e0 fsgnj.d fs4, ft0, ft0          #; ft0  = 2851.2396090, ft0  = 2851.2396090
       0     5160        M 0x800009e4 fsgnj.d fs5, ft0, ft0          #; ft0  = 3334.6677780, ft0  = 3334.6677780, (f:fpu) fs4  <-- 2851.2396090
       0     5161        M 0x800009e8 fsgnj.d fs6, ft0, ft0          #; ft0  = 3818.0959470, ft0  = 3818.0959470, (f:fpu) fs5  <-- 3334.6677780
       0     5162        M 0x800009ec fsgnj.d fs7, ft0, ft0          #; ft0  = 4301.5241160, ft0  = 4301.5241160, (f:fpu) fs6  <-- 3818.0959470
       0     5163        M                                           #; (f:fpu) fs7  <-- 4301.5241160
       0     5171        M 0x800009f0 fsgnj.d fs8, ft0, ft0          #; ft0  = 4784.9522850, ft0  = 4784.9522850
       0     5172        M 0x800009f4 fsgnj.d fs9, ft0, ft0          #; ft0  = 4479.1099740, ft0  = 4479.1099740, (f:fpu) fs8  <-- 4784.9522850
       0     5173        M 0x800009f8 fsgnj.d fs10, ft0, ft0         #; ft0  = 4765.2205230, ft0  = 4765.2205230, (f:fpu) fs9  <-- 4479.1099740
       0     5174        M 0x800009fc fsgnj.d fs11, ft0, ft0         #; ft0  = 4094.3406150, ft0  = 4094.3406150, (f:fpu) fs10 <-- 4765.2205230
       0     5175        M                                           #; (f:fpu) fs11 <-- 4094.3406150
       0     5183        M 0x80000a00 fsgnj.d fa0, ft0, ft0          #; ft0  = 4538.3052600, ft0  = 4538.3052600
       0     5184        M 0x80000a04 fsgnj.d ft7, ft0, ft0          #; ft0  = 4982.2699050, ft0  = 4982.2699050, (f:fpu) fa0  <-- 4538.3052600
       0     5185        M 0x80000a08 fsgnj.d ft6, ft0, ft0          #; ft0  = 5426.2345500, ft0  = 5426.2345500, (f:fpu) ft7  <-- 4982.2699050
       0     5186        M 0x80000a0c fsgnj.d ft5, ft0, ft0          #; ft0  = 5870.1991950, ft0  = 5870.1991950, (f:fpu) ft6  <-- 5426.2345500
       0     5187        M                                           #; (f:fpu) ft5  <-- 5870.1991950
       0     5195        M 0x80000a10 fsgnj.d ft4, ft0, ft0          #; ft0  = 4340.9876400, ft0  = 4340.9876400
       0     5196        M 0x80000a14 fsgnj.d ft3, ft0, ft0          #; ft0  = 3403.7289450, ft0  = 3403.7289450, (f:fpu) ft4  <-- 4340.9876400
       0     5197        M 0x80000a18 csrci   ssr, 1                 #; (f:fpu) ft3  <-- 3403.7289450
       0     5199        M 0x80000a1c fld     ft0, 48(sp)            #; ft0  <~~ Doub[0x0011fed0]
       0     5200        M                                           #; (f:lsu) ft0  <-- 2081.7008910
       0     5207        M 0x80000a20 fld     ft1, 40(sp)            #; ft1  <~~ Doub[0x0011fec8]
       0     5208        M                                           #; (f:lsu) ft1  <-- 2288.8843920
       0     5209        M 0x80000a24 fadd.d  ft0, ft1, ft0          #; ft1  = 2288.8843920, ft0  = 2081.7008910
       0     5210        M 0x80000a28 fld     ft1, 32(sp)            #; ft1  <~~ Doub[0x0011fec0]
       0     5211        M                                           #; (f:lsu) ft1  <-- 2496.0678930
       0     5212        M                                           #; (f:fpu) ft0  <-- 4370.5852830
       0     5213        M 0x80000a2c fadd.d  ft0, ft1, ft0          #; ft1  = 2496.0678930, ft0  = 4370.5852830
       0     5216        M                                           #; (f:fpu) ft0  <-- 6866.6531760
       0     5219        M 0x80000a30 fld     ft1, 24(sp)            #; ft1  <~~ Doub[0x0011feb8]
       0     5220        M                                           #; (f:lsu) ft1  <-- 2703.2513940
       0     5221        M 0x80000a34 fadd.d  ft0, ft1, ft0          #; ft1  = 2703.2513940, ft0  = 6866.6531760
       0     5222        M 0x80000a38 fld     ft1, 16(sp)            #; ft1  <~~ Doub[0x0011feb0]
       0     5223        M                                           #; (f:lsu) ft1  <-- 2910.4348950
       0     5224        M                                           #; (f:fpu) ft0  <-- 9569.9045700
       0     5225        M 0x80000a3c fadd.d  ft0, ft1, ft0          #; ft1  = 2910.4348950, ft0  = 9569.9045700
       0     5228        M                                           #; (f:fpu) ft0  <-- 12480.3394650
       0     5231        M 0x80000a40 fld     ft1, 8(sp)             #; ft1  <~~ Doub[0x0011fea8]
       0     5232        M                                           #; (f:lsu) ft1  <-- 1933.7126760
       0     5233        M 0x80000a44 fadd.d  ft0, ft1, ft0          #; ft1  = 1933.7126760, ft0  = 12480.3394650
       0     5236        M                                           #; (f:fpu) ft0  <-- 14414.0521410
       0     5237        M 0x80000a48 fadd.d  ft0, fa1, ft0          #; fa1  = 1548.9433170, ft0  = 14414.0521410
       0     5240        M                                           #; (f:fpu) ft0  <-- 15962.9954580
       0     5241        M 0x80000a4c fadd.d  ft0, fa2, ft0          #; fa2  = 5100.6604770, ft0  = 15962.9954580
       0     5244        M                                           #; (f:fpu) ft0  <-- 21063.6559350
       0     5245        M 0x80000a50 fadd.d  ft0, fa3, ft0          #; fa3  = 5663.0156940, ft0  = 21063.6559350
       0     5248        M                                           #; (f:fpu) ft0  <-- 26726.6716290
       0     5249        M 0x80000a54 fadd.d  ft0, fa4, ft0          #; fa4  = 6225.3709110, ft0  = 26726.6716290
       0     5252        M                                           #; (f:fpu) ft0  <-- 32952.0425400
       0     5253        M 0x80000a58 fadd.d  ft0, fa5, ft0          #; fa5  = 6787.7261280, ft0  = 32952.0425400
       0     5256        M                                           #; (f:fpu) ft0  <-- 39739.7686680
       0     5257        M 0x80000a5c fadd.d  ft0, fa6, ft0          #; fa6  = 7350.0813450, ft0  = 39739.7686680
       0     5260        M                                           #; (f:fpu) ft0  <-- 47089.8500130
       0     5261        M 0x80000a60 fadd.d  ft0, fa7, ft0          #; fa7  = 5544.6251220, ft0  = 47089.8500130
       0     5264        M                                           #; (f:fpu) ft0  <-- 52634.4751350
       0     5265        M 0x80000a64 fadd.d  ft0, ft8, ft0          #; ft8  = 4331.1217590, ft0  = 52634.4751350
       0     5268        M                                           #; (f:fpu) ft0  <-- 56965.5968940
       0     5269        M 0x80000a68 fadd.d  ft0, ft9, ft0          #; ft9  = 8119.6200630, ft0  = 56965.5968940
       0     5272        M                                           #; (f:fpu) ft0  <-- 65085.2169570
       0     5273        M 0x80000a6c fadd.d  ft0, ft10, ft0         #; ft10 = 9037.1469960, ft0  = 65085.2169570
       0     5276        M                                           #; (f:fpu) ft0  <-- 74122.3639530
       0     5277        M 0x80000a70 fadd.d  ft0, ft11, ft0         #; ft11 = 9954.6739290, ft0  = 74122.3639530
       0     5280        M                                           #; (f:fpu) ft0  <-- 84077.0378820
       0     5281        M 0x80000a74 fadd.d  ft0, fs0, ft0          #; fs0  = 10872.2008620, ft0  = 84077.0378820
       0     5284        M                                           #; (f:fpu) ft0  <-- 94949.2387440
       0     5285        M 0x80000a78 fadd.d  ft0, fs1, ft0          #; fs1  = 11789.7277950, ft0  = 94949.2387440
       0     5288        M                                           #; (f:fpu) ft0  <-- 106738.9665390
       0     5289        M 0x80000a7c fadd.d  ft0, fs2, ft0          #; fs2  = 9155.5375680, ft0  = 106738.9665390
       0     5292        M                                           #; (f:fpu) ft0  <-- 115894.5041070
       0     5293        M 0x80000a80 fadd.d  ft0, fs3, ft0          #; fs3  = 7113.3002010, ft0  = 115894.5041070
       0     5296        M                                           #; (f:fpu) ft0  <-- 123007.8043080
       0     5297        M 0x80000a84 fadd.d  ft0, fs4, ft0          #; fs4  = 2851.2396090, ft0  = 123007.8043080
       0     5300        M                                           #; (f:fpu) ft0  <-- 125859.0439170
       0     5301        M 0x80000a88 fadd.d  ft0, fs5, ft0          #; fs5  = 3334.6677780, ft0  = 125859.0439170
       0     5304        M                                           #; (f:fpu) ft0  <-- 129193.7116950
       0     5305        M 0x80000a8c fadd.d  ft0, fs6, ft0          #; fs6  = 3818.0959470, ft0  = 129193.7116950
       0     5308        M                                           #; (f:fpu) ft0  <-- 133011.8076420
       0     5309        M 0x80000a90 fadd.d  ft0, fs7, ft0          #; fs7  = 4301.5241160, ft0  = 133011.8076420
       0     5312        M                                           #; (f:fpu) ft0  <-- 137313.3317580
       0     5313        M 0x80000a94 fadd.d  ft0, fs8, ft0          #; fs8  = 4784.9522850, ft0  = 137313.3317580
       0     5316        M                                           #; (f:fpu) ft0  <-- 142098.2840430
       0     5317        M 0x80000a98 fadd.d  ft0, fs9, ft0          #; fs9  = 4479.1099740, ft0  = 142098.2840430
       0     5320        M                                           #; (f:fpu) ft0  <-- 146577.3940170
       0     5321        M 0x80000a9c fadd.d  ft0, fs10, ft0         #; fs10 = 4765.2205230, ft0  = 146577.3940170
       0     5324        M                                           #; (f:fpu) ft0  <-- 151342.6145400
       0     5325        M 0x80000ac0 li      a3, 5                  #; (wrb) a3  <-- 5
                         M 0x80000aa0 fadd.d  ft0, fs11, ft0         #; fs11 = 4094.3406150, ft0  = 151342.6145400
       0     5326        M 0x80000ac4 li      a5, 7                  #; (wrb) a5  <-- 7
       0     5327        M 0x80000ac8 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     5328        M 0x80000acc mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
                         M                                           #; (f:fpu) ft0  <-- 155436.9551550
       0     5329        M 0x80000aa4 fadd.d  ft0, fa0, ft0          #; fa0  = 4538.3052600, ft0  = 155436.9551550
       0     5332        M                                           #; (f:fpu) ft0  <-- 159975.2604150
       0     5333        M 0x80000aa8 fadd.d  ft0, ft7, ft0          #; ft7  = 4982.2699050, ft0  = 159975.2604150
       0     5336        M                                           #; (f:fpu) ft0  <-- 164957.5303200
       0     5337        M 0x80000ad0 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
                         M 0x80000aac fadd.d  ft0, ft6, ft0          #; ft6  = 5426.2345500, ft0  = 164957.5303200
       0     5338        M 0x80000ad4 li      a4, 0                  #; (wrb) a4  <-- 0
       0     5339        M 0x80000ad8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000ad8
       0     5340        M 0x80000adc jalr    ra, ra, 1132           #; ra  = 0x80000ad8, (wrb) ra  <-- 0x80000ae0, goto 0x80000f44
                         M                                           #; (f:fpu) ft0  <-- 170383.7648700
       0     5341        M 0x80000ab0 fadd.d  ft0, ft5, ft0          #; ft5  = 5870.1991950, ft0  = 170383.7648700
       0     5344        M                                           #; (f:fpu) ft0  <-- 176253.9640650
       0     5345        M 0x80000ab4 fadd.d  ft0, ft4, ft0          #; ft4  = 4340.9876400, ft0  = 176253.9640650
       0     5348        M                                           #; (f:fpu) ft0  <-- 180594.9517050
       0     5349        M 0x80000ab8 fadd.d  ft0, ft3, ft0          #; ft3  = 3403.7289450, ft0  = 180594.9517050
       0     5351        M 0x80000f44 addi    sp, sp, -48            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe70
       0     5352        M 0x80000f48 sw      ra, 44(sp)             #; sp  = 0x0011fe70, 0x80000ae0 ~~> Word[0x0011fe9c]
                         M                                           #; (f:fpu) ft0  <-- 183998.6806500
       0     5353        M 0x80000f4c sw      s0, 40(sp)             #; sp  = 0x0011fe70, 0x00100240 ~~> Word[0x0011fe98]
                         M 0x80000abc fsd     ft0, 48(sp)            #; 183998.6806500 ~~> Doub[0x0011fed0]
       0     5355        M 0x80000f50 sw      s1, 36(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe94]
       0     5356        M 0x80000f54 sw      s2, 32(sp)             #; sp  = 0x0011fe70, 0x00100000 ~~> Word[0x0011fe90]
       0     5357        M 0x80000f58 sw      s3, 28(sp)             #; sp  = 0x0011fe70, 6 ~~> Word[0x0011fe8c]
       0     5358        M 0x80000f5c sw      s4, 24(sp)             #; sp  = 0x0011fe70, 8 ~~> Word[0x0011fe88]
       0     5359        M 0x80000f60 sw      s5, 20(sp)             #; sp  = 0x0011fe70, 4 ~~> Word[0x0011fe84]
       0     5360        M 0x80000f64 sw      s6, 16(sp)             #; sp  = 0x0011fe70, 0x001000f0 ~~> Word[0x0011fe80]
       0     5361        M 0x80000f68 sw      s7, 12(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe7c]
       0     5362        M 0x80000f6c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
       0     5363        M 0x80000f70 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     5364        M 0x80000f74 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     5365        M 0x80000f78 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     5366        M 0x80000f7c bnez    a3, pc + 820           #; a3  = 0, not taken
       0     5367        M 0x80000f80 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
       0     5368        M 0x80000f84 addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
       0     5369        M 0x80000f88 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
       0     5370        M 0x80000f8c addi    t2, s6, -1             #; s6  = 5, (wrb) t2  <-- 4
       0     5371        M 0x80000f90 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
       0     5372        M 0x80000f94 mul     a0, s2, t2             #; s2  = 56, t2  = 4
       0     5375        M                                           #; (acc) a0  <-- 0x00ae8533
       0     5376        M 0x80000f98 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
       0     5377        M 0x80000f9c add     s4, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) s4  <-- 0x00100350
       0     5378        M 0x80000fa0 sltu    a3, s4, a0             #; s4  = 0x00100350, a0  = 272, (wrb) a3  <-- 0
       0     5379        M 0x80000fa4 bge     zero, a4, pc + 80      #; a4  = 0, taken, goto 0x80000ff4
       0     5383        M 0x80000ff4 srli    a0, s7, 20             #; s7  = 0x00100240, (wrb) a0  <-- 1
       0     5384        M 0x80000ff8 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     5385        M 0x80000ffc beqz    a3, pc + 584           #; a3  = 0, taken, goto 0x80001244
       0     5406        M 0x80001244 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     5407        M 0x80001248 addi    a1, a1, 1              #; a1  = 0x00120000, (wrb) a1  <-- 0x00120001
       0     5408        M 0x8000124c sltu    a1, s4, a1             #; s4  = 0x00100350, a1  = 0x00120001, (wrb) a1  <-- 1
       0     5418        M 0x80001250 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     5419        M 0x80001254 beqz    a0, pc - 584           #; a0  = 1, not taken
       0     5420        M 0x80001258 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5421        M 0x8000125c li      a1, 8                  #; (wrb) a1  <-- 8
       0     5432        M 0x80001260 li      a2, 64                 #; (wrb) a2  <-- 64
       0     5433        M 0x80001264 scfgw   a6, a2                 #; a6  = 6, a2  = 64
       0     5434        M 0x80001268 li      a2, 192                #; (wrb) a2  <-- 192
       0     5435        M 0x8000126c scfgw   a1, a2                 #; a1  = 8, a2  = 192
       0     5444        M 0x80001270 li      a2, 96                 #; (wrb) a2  <-- 96
       0     5445        M 0x80001274 li      a3, 224                #; (wrb) a3  <-- 224
       0     5446        M 0x80001278 scfgw   t2, a2                 #; t2  = 4, a2  = 96
       0     5447        M 0x8000127c scfgw   a1, a3                 #; a1  = 8, a3  = 224
       0     5456        M 0x80001280 li      a1, 32                 #; (wrb) a1  <-- 32
       0     5457        M 0x80001284 scfgw   zero, a1               #; a1  = 32
       0     5458        M 0x80001288 scfgwi  s7, 928                #; s7  = 0x00100240
       0     5460        M 0x8000128c csrsi   ssr, 1                 #; 
       0     5469        M 0x80001294 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
                         M 0x80001290 fcvt.d.w ft3, zero             #; ac1  = 0
       0     5470        M 0x80001298 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     5473        M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5474        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5480        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80001298
       0     5481        M 0x80001298 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     5483        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80001298
       0     5484        M 0x80001298 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5485        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5486        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80001298
       0     5487        M 0x80001298 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5488        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5489        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80001298
       0     5490        M 0x80001298 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5491        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5492        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80001298
       0     5493        M 0x80001298 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5494        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5495        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80001298
       0     5496        M 0x80001298 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5497        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5498        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     5499        M 0x800012a4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5500        M 0x800012a8 bne     a0, s6, pc - 20        #; a0  = 1, s6  = 5, taken, goto 0x80001294
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5501        M 0x80001294 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     5502        M 0x80001298 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     5504        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80001298
       0     5505        M 0x80001298 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5506        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5507        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80001298
       0     5508        M 0x80001298 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5509        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5510        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80001298
       0     5511        M 0x80001298 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5512        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5513        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80001298
       0     5514        M 0x80001298 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5515        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5516        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80001298
       0     5517        M 0x80001298 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5518        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5519        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80001298
       0     5520        M 0x80001298 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5521        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5522        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     5523        M 0x800012a4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5524        M 0x800012a8 bne     a0, s6, pc - 20        #; a0  = 2, s6  = 5, taken, goto 0x80001294
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5525        M 0x80001294 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     5526        M 0x80001298 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     5528        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80001298
       0     5529        M 0x80001298 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5530        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5531        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80001298
       0     5532        M 0x80001298 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5533        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5534        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80001298
       0     5535        M 0x80001298 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5536        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5537        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80001298
       0     5538        M 0x80001298 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5539        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5540        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80001298
       0     5541        M 0x80001298 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5542        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5543        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80001298
       0     5544        M 0x80001298 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5545        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5546        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     5547        M 0x800012a4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5548        M 0x800012a8 bne     a0, s6, pc - 20        #; a0  = 3, s6  = 5, taken, goto 0x80001294
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5549        M 0x80001294 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     5550        M 0x80001298 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     5552        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80001298
       0     5553        M 0x80001298 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5554        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5555        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80001298
       0     5556        M 0x80001298 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5557        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5558        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80001298
       0     5559        M 0x80001298 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5560        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5561        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80001298
       0     5562        M 0x80001298 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5563        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5564        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80001298
       0     5565        M 0x80001298 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5566        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5567        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80001298
       0     5568        M 0x80001298 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5569        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5570        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     5571        M 0x800012a4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5572        M 0x800012a8 bne     a0, s6, pc - 20        #; a0  = 4, s6  = 5, taken, goto 0x80001294
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5573        M 0x80001294 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     5574        M 0x80001298 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     5576        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80001298
       0     5577        M 0x80001298 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5578        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5579        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80001298
       0     5580        M 0x80001298 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5581        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5582        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80001298
       0     5583        M 0x80001298 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5584        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5585        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80001298
       0     5586        M 0x80001298 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5587        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5588        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80001298
       0     5589        M 0x80001298 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5590        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5591        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80001298
       0     5592        M 0x80001298 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5593        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5594        M 0x800012a0 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     5595        M 0x800012a4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                         M 0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5596        M 0x800012a8 bne     a0, s6, pc - 20        #; a0  = 5, s6  = 5, not taken
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5598        M 0x800012ac csrci   ssr, 1                 #; 
       0     5600        M 0x800012b0 lw      s7, 12(sp)             #; sp  = 0x0011fe70, s7  <~~ Word[0x0011fe7c]
       0     5603        M                                           #; (lsu) s7  <-- 0
       0     5604        M 0x800012b4 lw      s6, 16(sp)             #; sp  = 0x0011fe70, s6  <~~ Word[0x0011fe80]
       0     5607        M                                           #; (lsu) s6  <-- 0x001000f0
       0     5608        M 0x800012b8 lw      s5, 20(sp)             #; sp  = 0x0011fe70, s5  <~~ Word[0x0011fe84]
       0     5611        M                                           #; (lsu) s5  <-- 4
       0     5612        M 0x800012bc lw      s4, 24(sp)             #; sp  = 0x0011fe70, s4  <~~ Word[0x0011fe88]
       0     5615        M                                           #; (lsu) s4  <-- 8
       0     5616        M 0x800012c0 lw      s3, 28(sp)             #; sp  = 0x0011fe70, s3  <~~ Word[0x0011fe8c]
       0     5619        M                                           #; (lsu) s3  <-- 6
       0     5620        M 0x800012c4 lw      s2, 32(sp)             #; sp  = 0x0011fe70, s2  <~~ Word[0x0011fe90]
       0     5623        M                                           #; (lsu) s2  <-- 0x00100000
       0     5624        M 0x800012c8 lw      s1, 36(sp)             #; sp  = 0x0011fe70, s1  <~~ Word[0x0011fe94]
       0     5627        M                                           #; (lsu) s1  <-- 0
       0     5628        M 0x800012cc lw      s0, 40(sp)             #; sp  = 0x0011fe70, s0  <~~ Word[0x0011fe98]
       0     5631        M                                           #; (lsu) s0  <-- 0x00100240
       0     5632        M 0x800012d0 lw      ra, 44(sp)             #; sp  = 0x0011fe70, ra  <~~ Word[0x0011fe9c]
       0     5633        M 0x800012d4 addi    sp, sp, 48             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fea0
       0     5635        M                                           #; (lsu) ra  <-- 0x80000ae0
       0     5636        M 0x800012d8 ret                            #; ra  = 0x80000ae0, goto 0x80000ae0
       0     5639        M 0x80000ae0 li      a0, 64                 #; (wrb) a0  <-- 64
       0     5640        M 0x80000ae4 li      a1, 192                #; (wrb) a1  <-- 192
       0     5641        M 0x80000ae8 scfgw   s3, a0                 #; s3  = 6, a0  = 64
       0     5642        M 0x80000aec scfgw   s4, a1                 #; s4  = 8, a1  = 192
       0     5651        M 0x80000af0 li      a0, 96                 #; (wrb) a0  <-- 96
       0     5652        M 0x80000af4 li      a1, 224                #; (wrb) a1  <-- 224
       0     5653        M 0x80000af8 scfgw   s5, a0                 #; s5  = 4, a0  = 96
       0     5654        M 0x80000afc scfgw   s4, a1                 #; s4  = 8, a1  = 224
       0     5663        M 0x80000b00 li      a0, 32                 #; (wrb) a0  <-- 32
       0     5664        M 0x80000b04 scfgw   zero, a0               #; a0  = 32
       0     5665        M 0x80000b08 scfgwi  s0, 800                #; s0  = 0x00100240
       0     5667        M 0x80000b0c csrsi   ssr, 1                 #; 
       0     5677        M 0x80000b10 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5678        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5679        M 0x80000b14 fsd     ft3, 40(sp)            #; 0.0 ~~> Doub[0x0011fec8]
       0     5680        M 0x80000b18 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5681        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5682        M 0x80000b1c fsd     ft3, 32(sp)            #; 0.0 ~~> Doub[0x0011fec0]
       0     5689        M 0x80000b20 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5690        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5691        M 0x80000b24 fsd     ft3, 24(sp)            #; 0.0 ~~> Doub[0x0011feb8]
       0     5692        M 0x80000b28 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5693        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5694        M 0x80000b2c fsd     ft3, 16(sp)            #; 0.0 ~~> Doub[0x0011feb0]
       0     5701        M 0x80000b30 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5702        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5703        M 0x80000b34 fsd     ft3, 8(sp)             #; 0.0 ~~> Doub[0x0011fea8]
       0     5704        M 0x80000b38 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5705        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5706        M 0x80000b3c fsd     ft3, 0(sp)             #; 0.0 ~~> Doub[0x0011fea0]
       0     5713        M 0x80000b40 fsgnj.d fa1, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5714        M 0x80000b44 fsgnj.d fa2, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa1  <-- 0.0
       0     5715        M 0x80000b48 fsgnj.d fa3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa2  <-- 0.0
       0     5716        M 0x80000b4c fsgnj.d fa4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa3  <-- 0.0
       0     5717        M                                           #; (f:fpu) fa4  <-- 0.0
       0     5725        M 0x80000b50 fsgnj.d fa5, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5726        M 0x80000b54 fsgnj.d fa6, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa5  <-- 0.0
       0     5727        M 0x80000b58 fsgnj.d fa7, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa6  <-- 0.0
       0     5728        M 0x80000b5c fsgnj.d ft8, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa7  <-- 0.0
       0     5729        M                                           #; (f:fpu) ft8  <-- 0.0
       0     5737        M 0x80000b60 fsgnj.d ft9, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5738        M 0x80000b64 fsgnj.d ft10, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft9  <-- 0.0
       0     5739        M 0x80000b68 fsgnj.d ft11, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft10 <-- 0.0
       0     5740        M 0x80000b6c fsgnj.d fs1, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft11 <-- 0.0
       0     5741        M                                           #; (f:fpu) fs1  <-- 0.0
       0     5749        M 0x80000b70 fsgnj.d fs2, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5750        M 0x80000b74 fsgnj.d fs3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs2  <-- 0.0
       0     5751        M 0x80000b78 fsgnj.d fs4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs3  <-- 0.0
       0     5752        M 0x80000b7c fsgnj.d fs5, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs4  <-- 0.0
       0     5753        M                                           #; (f:fpu) fs5  <-- 0.0
       0     5761        M 0x80000b80 fsgnj.d fs6, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5762        M 0x80000b84 fsgnj.d fs7, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs6  <-- 0.0
       0     5763        M 0x80000b88 fsgnj.d fs8, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs7  <-- 0.0
       0     5764        M 0x80000b8c fsgnj.d fs9, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs8  <-- 0.0
       0     5765        M                                           #; (f:fpu) fs9  <-- 0.0
       0     5773        M 0x80000b90 fsgnj.d fs10, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     5774        M 0x80000b94 fsgnj.d fs11, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs10 <-- 0.0
       0     5775        M 0x80000b98 fsgnj.d fs0, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs11 <-- 0.0
       0     5776        M 0x80000b9c fsgnj.d fa0, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs0  <-- 0.0
       0     5777        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5785        M 0x80000ba0 fsgnj.d ft7, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5786        M 0x80000ba4 fsgnj.d ft6, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft7  <-- 0.0
       0     5787        M 0x80000ba8 fsgnj.d ft5, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft6  <-- 0.0
       0     5788        M 0x80000bac fsgnj.d ft4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft5  <-- 0.0
       0     5789        M                                           #; (f:fpu) ft4  <-- 0.0
       0     5797        M 0x80000bb0 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5798        M 0x80000bb4 csrci   ssr, 1                 #; (f:fpu) ft3  <-- 0.0
       0     5800        M 0x80000bb8 fld     ft0, 40(sp)            #; ft0  <~~ Doub[0x0011fec8]
       0     5801        M 0x80000bbc fld     ft1, 32(sp)            #; ft1  <~~ Doub[0x0011fec0], (f:lsu) ft0  <-- 0.0
       0     5802        M                                           #; (f:lsu) ft1  <-- 0.0
       0     5809        M 0x80000bc0 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
       0     5810        M 0x80000bc4 fld     ft1, 24(sp)            #; ft1  <~~ Doub[0x0011feb8]
       0     5811        M                                           #; (f:lsu) ft1  <-- 0.0
       0     5812        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5813        M 0x80000bc8 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
       0     5814        M 0x80000bcc fld     ft1, 16(sp)            #; ft1  <~~ Doub[0x0011feb0]
       0     5815        M                                           #; (f:lsu) ft1  <-- 0.0
       0     5816        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5821        M 0x80000bd0 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
       0     5822        M 0x80000bd4 fld     ft1, 8(sp)             #; ft1  <~~ Doub[0x0011fea8]
       0     5823        M                                           #; (f:lsu) ft1  <-- 0.0
       0     5824        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5825        M 0x80000bd8 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
       0     5826        M 0x80000bdc fld     ft1, 0(sp)             #; ft1  <~~ Doub[0x0011fea0]
       0     5827        M                                           #; (f:lsu) ft1  <-- 0.0
       0     5828        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5833        M 0x80000be0 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
       0     5836        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5837        M 0x80000be4 fadd.d  ft0, fa1, ft0          #; fa1  = 0.0, ft0  = 0.0
       0     5840        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5841        M 0x80000be8 fadd.d  ft0, fa2, ft0          #; fa2  = 0.0, ft0  = 0.0
       0     5844        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5845        M 0x80000bec fadd.d  ft0, fa3, ft0          #; fa3  = 0.0, ft0  = 0.0
       0     5848        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5849        M 0x80000bf0 fadd.d  ft0, fa4, ft0          #; fa4  = 0.0, ft0  = 0.0
       0     5852        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5853        M 0x80000bf4 fadd.d  ft0, fa5, ft0          #; fa5  = 0.0, ft0  = 0.0
       0     5856        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5857        M 0x80000bf8 fadd.d  ft0, fa6, ft0          #; fa6  = 0.0, ft0  = 0.0
       0     5860        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5861        M 0x80000bfc fadd.d  ft0, fa7, ft0          #; fa7  = 0.0, ft0  = 0.0
       0     5864        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5865        M 0x80000c00 fadd.d  ft0, ft8, ft0          #; ft8  = 0.0, ft0  = 0.0
       0     5868        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5869        M 0x80000c04 fadd.d  ft0, ft9, ft0          #; ft9  = 0.0, ft0  = 0.0
       0     5872        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5873        M 0x80000c08 fadd.d  ft0, ft10, ft0         #; ft10 = 0.0, ft0  = 0.0
       0     5876        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5877        M 0x80000c0c fadd.d  ft0, ft11, ft0         #; ft11 = 0.0, ft0  = 0.0
       0     5880        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5881        M 0x80000c10 fadd.d  ft0, fs1, ft0          #; fs1  = 0.0, ft0  = 0.0
       0     5884        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5885        M 0x80000c14 fadd.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     5888        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5889        M 0x80000c18 fadd.d  ft0, fs3, ft0          #; fs3  = 0.0, ft0  = 0.0
       0     5892        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5893        M 0x80000c1c fadd.d  ft0, fs4, ft0          #; fs4  = 0.0, ft0  = 0.0
       0     5896        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5897        M 0x80000c20 fadd.d  ft0, fs5, ft0          #; fs5  = 0.0, ft0  = 0.0
       0     5900        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5901        M 0x80000c24 fadd.d  ft0, fs6, ft0          #; fs6  = 0.0, ft0  = 0.0
       0     5904        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5905        M 0x80000c28 fadd.d  ft0, fs7, ft0          #; fs7  = 0.0, ft0  = 0.0
       0     5908        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5909        M 0x80000c2c fadd.d  ft0, fs8, ft0          #; fs8  = 0.0, ft0  = 0.0
       0     5912        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5913        M 0x80000c30 fadd.d  ft0, fs9, ft0          #; fs9  = 0.0, ft0  = 0.0
       0     5916        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5917        M 0x80000c34 fadd.d  ft0, fs10, ft0         #; fs10 = 0.0, ft0  = 0.0
       0     5918        M 0x80000c5c j       pc + 0x24c             #; goto 0x80000ea8
       0     5920        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5921        M 0x80000c38 fadd.d  ft0, fs11, ft0         #; fs11 = 0.0, ft0  = 0.0
       0     5924        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5925        M 0x80000c3c fadd.d  ft0, fs0, ft0          #; fs0  = 0.0, ft0  = 0.0
       0     5926        M 0x80000c40 fld     fs0, 48(sp)            #; fs0  <~~ Doub[0x0011fed0]
       0     5927        M 0x80000ea8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003ea8
                         M                                           #; (f:lsu) fs0  <-- 183998.6806500
       0     5928        M 0x80000eac addi    a0, a0, -1544          #; a0  = 0x80003ea8, (wrb) a0  <-- 0x800038a0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5929        M 0x80000c44 fadd.d  ft0, fa0, ft0          #; fa0  = 0.0, ft0  = 0.0
       0     5932        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5933        M 0x80000c48 fadd.d  ft0, ft7, ft0          #; ft7  = 0.0, ft0  = 0.0
       0     5936        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5937        M 0x80000c4c fadd.d  ft0, ft6, ft0          #; ft6  = 0.0, ft0  = 0.0
       0     5940        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5941        M 0x80000c50 fadd.d  ft0, ft5, ft0          #; ft5  = 0.0, ft0  = 0.0
       0     5944        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5945        M 0x80000c54 fadd.d  ft0, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     5948        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5949        M 0x80000c58 fadd.d  ft0, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
       0     5950        M 0x80000eb0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800038a0]
       0     5952        M 0x80000ec4 lw      a2, 56(sp)             #; sp  = 0x0011fea0, a2  <~~ Word[0x0011fed8]
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5959        M                                           #; (f:lsu) ft1  <-- -183998.6806500
       0     5960        M 0x80000eb4 fadd.d  ft1, fs0, ft1          #; fs0  = 183998.6806500, ft1  = -183998.6806500
       0     5961        M                                           #; (lsu) a2  <-- 0
       0     5962        M 0x80000ec8 lw      a3, 60(sp)             #; sp  = 0x0011fea0, a3  <~~ Word[0x0011fedc]
       0     5963        M 0x80000ecc auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002ecc
                         M                                           #; (f:fpu) ft1  <-- -0.0000000
       0     5964        M 0x80000ed0 addi    a0, a0, 1865           #; a0  = 0x80002ecc, (wrb) a0  <-- 0x80003615
                         M 0x80000eb8 fadd.d  ft0, ft1, ft0          #; ft1  = -0.0000000, ft0  = 0.0
       0     5965        M 0x80000ed4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000ed4
       0     5966        M 0x80000ed8 jalr    ra, ra, 1032           #; ra  = 0x80000ed4, (wrb) ra  <-- 0x80000edc, goto 0x800012dc
       0     5967        M                                           #; (lsu) a3  <-- 0
                         M                                           #; (f:fpu) ft0  <-- -0.0000000
       0     5968        M 0x80000ebc fsgnjx.d fs0, ft0, ft0         #; ft0  = -0.0000000, ft0  = -0.0000000
       0     5969        M 0x800012dc addi    sp, sp, -48            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe70
                         M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     5970        M 0x80000ec0 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fed8]
       0     5972        M 0x800012e0 sw      ra, 12(sp)             #; sp  = 0x0011fe70, 0x80000edc ~~> Word[0x0011fe7c]
       0     5973        M 0x800012e4 mv      t0, a0                 #; a0  = 0x80003615, (wrb) t0  <-- 0x80003615
       0     5974        M 0x800012e8 sw      a7, 44(sp)             #; sp  = 0x0011fe70, 280 ~~> Word[0x0011fe9c]
       0     5975        M 0x800012ec sw      a6, 40(sp)             #; sp  = 0x0011fe70, 6 ~~> Word[0x0011fe98]
       0     5984        M 0x800012f0 sw      a5, 36(sp)             #; sp  = 0x0011fe70, 7 ~~> Word[0x0011fe94]
       0     5985        M 0x800012f4 sw      a4, 32(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe90]
       0     5986        M 0x800012f8 sw      a3, 28(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe8c]
       0     5987        M 0x800012fc sw      a2, 24(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe88]
       0     5996        M 0x80001300 sw      a1, 20(sp)             #; sp  = 0x0011fe70, 224 ~~> Word[0x0011fe84]
       0     5997        M 0x80001304 addi    a0, sp, 20             #; sp  = 0x0011fe70, (wrb) a0  <-- 0x0011fe84
       0     5998        M 0x80001308 sw      a0, 8(sp)              #; sp  = 0x0011fe70, 0x0011fe84 ~~> Word[0x0011fe78]
       0     5999        M 0x8000130c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000230c
       0     6008        M 0x80001310 addi    a0, a0, -988           #; a0  = 0x8000230c, (wrb) a0  <-- 0x80001f30
       0     6009        M 0x80001314 addi    a1, sp, 7              #; sp  = 0x0011fe70, (wrb) a1  <-- 0x0011fe77
       0     6010        M 0x80001318 li      a2, -1                 #; (wrb) a2  <-- -1
       0     6011        M 0x8000131c addi    a4, sp, 20             #; sp  = 0x0011fe70, (wrb) a4  <-- 0x0011fe84
       0     6020        M 0x80001320 mv      a3, t0                 #; t0  = 0x80003615, (wrb) a3  <-- 0x80003615
       0     6021        M 0x80001324 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80001324
       0     6022        M 0x80001328 jalr    ra, ra, 20             #; ra  = 0x80001324, (wrb) ra  <-- 0x8000132c, goto 0x80001338
       0     6032        M 0x80001338 addi    sp, sp, -112           #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fe00
       0     6033        M 0x8000133c sw      ra, 108(sp)            #; sp  = 0x0011fe00, 0x8000132c ~~> Word[0x0011fe6c]
       0     6044        M 0x80001340 sw      s0, 104(sp)            #; sp  = 0x0011fe00, 0x00100240 ~~> Word[0x0011fe68]
       0     6045        M 0x80001344 sw      s1, 100(sp)            #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe64]
       0     6046        M 0x80001348 sw      s2, 96(sp)             #; sp  = 0x0011fe00, 0x00100000 ~~> Word[0x0011fe60]
       0     6047        M 0x8000134c sw      s3, 92(sp)             #; sp  = 0x0011fe00, 6 ~~> Word[0x0011fe5c]
       0     6056        M 0x80001350 sw      s4, 88(sp)             #; sp  = 0x0011fe00, 8 ~~> Word[0x0011fe58]
       0     6057        M 0x80001354 sw      s5, 84(sp)             #; sp  = 0x0011fe00, 4 ~~> Word[0x0011fe54]
       0     6058        M 0x80001358 sw      s6, 80(sp)             #; sp  = 0x0011fe00, 0x001000f0 ~~> Word[0x0011fe50]
       0     6059        M 0x8000135c sw      s7, 76(sp)             #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe4c]
       0     6068        M 0x80001360 sw      s8, 72(sp)             #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe48]
       0     6069        M 0x80001364 sw      s9, 68(sp)             #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe44]
       0     6070        M 0x80001368 sw      s10, 64(sp)            #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe40]
       0     6071        M 0x8000136c sw      s11, 60(sp)            #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe3c]
       0     6080        M 0x80001370 mv      s3, a4                 #; a4  = 0x0011fe84, (wrb) s3  <-- 0x0011fe84
       0     6081        M 0x80001374 mv      s0, a3                 #; a3  = 0x80003615, (wrb) s0  <-- 0x80003615
       0     6082        M 0x80001378 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     6083        M 0x8000137c mv      s4, a1                 #; a1  = 0x0011fe77, (wrb) s4  <-- 0x0011fe77
       0     6092        M 0x80001380 beqz    a1, pc + 12            #; a1  = 0x0011fe77, not taken
       0     6093        M 0x80001384 mv      s2, a0                 #; a0  = 0x80001f30, (wrb) s2  <-- 0x80001f30
       0     6094        M 0x80001388 j       pc + 0xc               #; goto 0x80001394
       0     6104        M 0x80001394 li      s8, 0                  #; (wrb) s8  <-- 0
       0     6105        M 0x80001398 li      s6, 37                 #; (wrb) s6  <-- 37
       0     6106        M 0x8000139c li      s11, 16                #; (wrb) s11 <-- 16
       0     6116        M 0x800013a0 li      s7, 46                 #; (wrb) s7  <-- 46
       0     6117        M 0x800013a4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     6118        M 0x800013a8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     6119        M 0x800013ac sw      a0, 24(sp)             #; sp  = 0x0011fe00, 2048 ~~> Word[0x0011fe18]
       0     6128        M 0x800013b0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     6129        M 0x800013b4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     6130        M 0x800013b8 sw      a0, 16(sp)             #; sp  = 0x0011fe00, 65535 ~~> Word[0x0011fe10]
       0     6131        M 0x800013bc addi    s10, s0, 2             #; s0  = 0x80003615, (wrb) s10 <-- 0x80003617
       0     6140        M 0x800013c0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     6141        M 0x800013c4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     6142        M 0x800013c8 lbu     a0, 0(s0)              #; s0  = 0x80003615, a0  <~~ Byte[0x80003615]
       0     6153        M                                           #; (lsu) a0  <-- 101
       0     6154        M 0x800013cc beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     6155        M 0x800013d0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     6156        M 0x800013d4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     6157        M 0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     6158        M 0x800013dc mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     6167        M 0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6168        M 0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
       0     6190        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     6191        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6192        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6193        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6202        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     6203        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     6204        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     6205        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6216        M                                           #; (lsu) a4  <-- 0
       0     6217        M 0x80001f50 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     6218        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 1 ~~> Word[0x8000395c]
       0     6219        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 0, (wrb) a4  <-- 0x8000395c
       0     6220        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000395c, 101 ~~> Byte[0x800039a4]
       0     6226        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6242        M                                           #; (lsu) a4  <-- 1
       0     6243        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     6244        M 0x80001f68 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     6245        M 0x80001f6c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     6246        M 0x80001f70 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     6247        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6248        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     6269        M 0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
       0     6283        M 0x800013e8 addi    s0, s0, 1              #; s0  = 0x80003615, (wrb) s0  <-- 0x80003616
       0     6284        M 0x800013ec addi    s10, s10, 1            #; s10 = 0x80003617, (wrb) s10 <-- 0x80003618
       0     6286        M 0x800013f0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     6287        M 0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x80003616, a0  <~~ Byte[0x80003616]
       0     6298        M                                           #; (lsu) a0  <-- 114
       0     6299        M 0x800013f8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800013d0
       0     6300        M 0x800013d0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     6301        M 0x800013d4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     6302        M 0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     6303        M 0x800013dc mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     6304        M 0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6305        M 0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
       0     6308        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     6309        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6310        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6311        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6312        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     6313        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     6314        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6315        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     6316        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6327        M                                           #; (lsu) a4  <-- 1
       0     6328        M 0x80001f50 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     6329        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 2 ~~> Word[0x8000395c]
       0     6330        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 1, (wrb) a4  <-- 0x8000395d
       0     6331        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000395d, 114 ~~> Byte[0x800039a5]
       0     6332        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6353        M                                           #; (lsu) a4  <-- 2
       0     6354        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     6355        M 0x80001f68 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     6356        M 0x80001f6c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     6357        M 0x80001f70 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     6358        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6359        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     6362        M 0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
       0     6367        M 0x800013e8 addi    s0, s0, 1              #; s0  = 0x80003616, (wrb) s0  <-- 0x80003617
       0     6368        M 0x800013ec addi    s10, s10, 1            #; s10 = 0x80003618, (wrb) s10 <-- 0x80003619
       0     6370        M 0x800013f0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     6371        M 0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x80003617, a0  <~~ Byte[0x80003617]
       0     6382        M                                           #; (lsu) a0  <-- 114
       0     6383        M 0x800013f8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800013d0
       0     6384        M 0x800013d0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     6385        M 0x800013d4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     6386        M 0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     6387        M 0x800013dc mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     6388        M 0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6389        M 0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
       0     6392        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     6393        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6394        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6395        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6396        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     6397        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     6398        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6399        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     6400        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6411        M                                           #; (lsu) a4  <-- 2
       0     6412        M 0x80001f50 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     6413        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 3 ~~> Word[0x8000395c]
       0     6414        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 2, (wrb) a4  <-- 0x8000395e
       0     6415        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000395e, 114 ~~> Byte[0x800039a6]
       0     6416        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6437        M                                           #; (lsu) a4  <-- 3
       0     6438        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     6439        M 0x80001f68 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     6440        M 0x80001f6c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     6441        M 0x80001f70 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     6442        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6443        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     6446        M 0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
       0     6451        M 0x800013e8 addi    s0, s0, 1              #; s0  = 0x80003617, (wrb) s0  <-- 0x80003618
       0     6452        M 0x800013ec addi    s10, s10, 1            #; s10 = 0x80003619, (wrb) s10 <-- 0x8000361a
       0     6454        M 0x800013f0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     6455        M 0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x80003618, a0  <~~ Byte[0x80003618]
       0     6466        M                                           #; (lsu) a0  <-- 111
       0     6467        M 0x800013f8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800013d0
       0     6468        M 0x800013d0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     6469        M 0x800013d4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     6470        M 0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     6471        M 0x800013dc mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     6472        M 0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6473        M 0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
       0     6476        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     6477        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6478        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6479        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6480        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     6481        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     6482        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6483        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     6484        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6495        M                                           #; (lsu) a4  <-- 3
       0     6496        M 0x80001f50 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     6497        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 4 ~~> Word[0x8000395c]
       0     6498        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 3, (wrb) a4  <-- 0x8000395f
       0     6499        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000395f, 111 ~~> Byte[0x800039a7]
       0     6500        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6521        M                                           #; (lsu) a4  <-- 4
       0     6522        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     6523        M 0x80001f68 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     6524        M 0x80001f6c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     6525        M 0x80001f70 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     6526        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6527        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     6530        M 0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
       0     6535        M 0x800013e8 addi    s0, s0, 1              #; s0  = 0x80003618, (wrb) s0  <-- 0x80003619
       0     6536        M 0x800013ec addi    s10, s10, 1            #; s10 = 0x8000361a, (wrb) s10 <-- 0x8000361b
       0     6538        M 0x800013f0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     6539        M 0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x80003619, a0  <~~ Byte[0x80003619]
       0     6550        M                                           #; (lsu) a0  <-- 114
       0     6551        M 0x800013f8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800013d0
       0     6552        M 0x800013d0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     6553        M 0x800013d4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     6554        M 0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     6555        M 0x800013dc mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     6556        M 0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6557        M 0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
       0     6560        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     6561        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6562        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6563        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6564        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     6565        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     6566        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6567        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     6568        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6579        M                                           #; (lsu) a4  <-- 4
       0     6580        M 0x80001f50 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     6581        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 5 ~~> Word[0x8000395c]
       0     6582        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 4, (wrb) a4  <-- 0x80003960
       0     6583        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003960, 114 ~~> Byte[0x800039a8]
       0     6584        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6605        M                                           #; (lsu) a4  <-- 5
       0     6606        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     6607        M 0x80001f68 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     6608        M 0x80001f6c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     6609        M 0x80001f70 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     6610        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6611        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     6614        M 0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
       0     6619        M 0x800013e8 addi    s0, s0, 1              #; s0  = 0x80003619, (wrb) s0  <-- 0x8000361a
       0     6620        M 0x800013ec addi    s10, s10, 1            #; s10 = 0x8000361b, (wrb) s10 <-- 0x8000361c
       0     6622        M 0x800013f0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     6623        M 0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x8000361a, a0  <~~ Byte[0x8000361a]
       0     6634        M                                           #; (lsu) a0  <-- 32
       0     6635        M 0x800013f8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800013d0
       0     6636        M 0x800013d0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6637        M 0x800013d4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     6638        M 0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     6639        M 0x800013dc mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     6640        M 0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6641        M 0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
       0     6644        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6645        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6646        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6647        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6648        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     6649        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     6650        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6651        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     6652        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6663        M                                           #; (lsu) a4  <-- 5
       0     6664        M 0x80001f50 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     6665        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 6 ~~> Word[0x8000395c]
       0     6666        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 5, (wrb) a4  <-- 0x80003961
       0     6667        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003961, 32 ~~> Byte[0x800039a9]
       0     6668        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6689        M                                           #; (lsu) a4  <-- 6
       0     6690        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     6691        M 0x80001f68 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     6692        M 0x80001f6c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6693        M 0x80001f70 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6694        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6695        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     6698        M 0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
       0     6703        M 0x800013e8 addi    s0, s0, 1              #; s0  = 0x8000361a, (wrb) s0  <-- 0x8000361b
       0     6704        M 0x800013ec addi    s10, s10, 1            #; s10 = 0x8000361c, (wrb) s10 <-- 0x8000361d
       0     6706        M 0x800013f0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6707        M 0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x8000361b, a0  <~~ Byte[0x8000361b]
       0     6718        M                                           #; (lsu) a0  <-- 61
       0     6719        M 0x800013f8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800013d0
       0     6720        M 0x800013d0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6721        M 0x800013d4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6722        M 0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     6723        M 0x800013dc mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6724        M 0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6725        M 0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
       0     6728        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6729        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6730        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6731        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6732        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     6733        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     6734        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6735        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     6736        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6747        M                                           #; (lsu) a4  <-- 6
       0     6748        M 0x80001f50 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6749        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 7 ~~> Word[0x8000395c]
       0     6750        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 6, (wrb) a4  <-- 0x80003962
       0     6751        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003962, 61 ~~> Byte[0x800039aa]
       0     6752        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6773        M                                           #; (lsu) a4  <-- 7
       0     6774        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6775        M 0x80001f68 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6776        M 0x80001f6c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6777        M 0x80001f70 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6778        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6779        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     6782        M 0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
       0     6787        M 0x800013e8 addi    s0, s0, 1              #; s0  = 0x8000361b, (wrb) s0  <-- 0x8000361c
       0     6788        M 0x800013ec addi    s10, s10, 1            #; s10 = 0x8000361d, (wrb) s10 <-- 0x8000361e
       0     6790        M 0x800013f0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6791        M 0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x8000361c, a0  <~~ Byte[0x8000361c]
       0     6802        M                                           #; (lsu) a0  <-- 32
       0     6803        M 0x800013f8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800013d0
       0     6804        M 0x800013d0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6805        M 0x800013d4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6806        M 0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     6807        M 0x800013dc mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6808        M 0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6809        M 0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
       0     6812        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6813        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6814        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6815        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6816        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     6817        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     6818        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6819        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     6820        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6831        M                                           #; (lsu) a4  <-- 7
       0     6832        M 0x80001f50 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6833        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 8 ~~> Word[0x8000395c]
       0     6834        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 7, (wrb) a4  <-- 0x80003963
       0     6835        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003963, 32 ~~> Byte[0x800039ab]
       0     6836        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     6857        M                                           #; (lsu) a4  <-- 8
       0     6858        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6859        M 0x80001f68 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6860        M 0x80001f6c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6861        M 0x80001f70 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6862        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6863        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     6866        M 0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
       0     6871        M 0x800013e8 addi    s0, s0, 1              #; s0  = 0x8000361c, (wrb) s0  <-- 0x8000361d
       0     6872        M 0x800013ec addi    s10, s10, 1            #; s10 = 0x8000361e, (wrb) s10 <-- 0x8000361f
       0     6874        M 0x800013f0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6875        M 0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x8000361d, a0  <~~ Byte[0x8000361d]
       0     6886        M                                           #; (lsu) a0  <-- 37
       0     6887        M 0x800013f8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800013d0
       0     6888        M 0x800013d0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80001400
       0     6900        M 0x80001400 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6901        M 0x80001404 j       pc + 0x10              #; goto 0x80001414
       0     6912        M 0x80001414 lbu     a0, -1(s10)            #; s10 = 0x8000361f, a0  <~~ Byte[0x8000361e]
       0     6923        M                                           #; (lsu) a0  <-- 102
       0     6924        M 0x80001418 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     6925        M 0x8000141c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80001454
       0     6937        M 0x80001454 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     6938        M 0x80001458 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     6939        M 0x8000145c addi    a1, s10, -1            #; s10 = 0x8000361f, (wrb) a1  <-- 0x8000361e
       0     6949        M 0x80001460 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6950        M 0x80001464 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800014e0
       0     6972        M 0x800014e0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6973        M 0x800014e4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80001534
       0     6995        M 0x80001534 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6996        M 0x80001538 mv      s10, a1                #; a1  = 0x8000361e, (wrb) s10 <-- 0x8000361e
       0     6997        M 0x8000153c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     7018        M 0x80001540 li      s7, 0                  #; (wrb) s7  <-- 0
       0     7019        M 0x80001544 j       pc + 0xc               #; goto 0x80001550
       0     7030        M 0x80001550 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     7031        M 0x80001554 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     7032        M 0x80001558 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     7033        M 0x8000155c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     7042        M 0x80001560 li      a2, 9                  #; (wrb) a2  <-- 9
       0     7043        M 0x80001564 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x800015c8
       0     7065        M 0x800015c8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     7066        M 0x800015cc li      a2, 83                 #; (wrb) a2  <-- 83
       0     7077        M 0x800015d0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     7078        M 0x800015d4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     7079        M 0x800015d8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x800035d8
       0     7080        M 0x800015dc addi    a2, a2, 188            #; a2  = 0x800035d8, (wrb) a2  <-- 0x80003694
       0     7089        M 0x800015e0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003694, (wrb) a1  <-- 0x80003798
       0     7090        M 0x800015e4 lw      a2, 0(a1)              #; a1  = 0x80003798, a2  <~~ Word[0x80003798]
       0     7091        M 0x800015e8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     7092        M 0x800015ec li      s8, 16                 #; (wrb) s8  <-- 16
       0     7101        M                                           #; (lsu) a2  <-- 0x80001620
       0     7102        M 0x800015f0 jr      a2                     #; a2  = 0x80001620, goto 0x80001620
       0     7124        M 0x80001620 li      a1, 70                 #; (wrb) a1  <-- 70
       0     7125        M 0x80001624 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x8000162c
       0     7126        M 0x8000162c addi    a0, s3, 7              #; s3  = 0x0011fe84, (wrb) a0  <-- 0x0011fe8b
       0     7136        M 0x80001630 andi    a0, a0, -8             #; a0  = 0x0011fe8b, (wrb) a0  <-- 0x0011fe88
       0     7138        M 0x80001638 addi    s3, a0, 8              #; a0  = 0x0011fe88, (wrb) s3  <-- 0x0011fe90
       0     7139        M 0x8000163c mv      a0, s2                 #; s2  = 0x80001f30, (wrb) a0  <-- 0x80001f30
                         M 0x80001634 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fe88]
       0     7140        M                                           #; (f:lsu) fa0  <-- 0.0
       0     7148        M 0x80001640 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     7149        M 0x80001644 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     7150        M 0x80001648 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7151        M 0x8000164c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     7160        M 0x80001650 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     7161        M 0x80001654 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     7162        M 0x80001658 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002658
       0     7163        M 0x8000165c jalr    ra, ra, -1656          #; ra  = 0x80002658, (wrb) ra  <-- 0x80001660, goto 0x80001fe0
       0     7174        M 0x80001fe0 addi    sp, sp, -112           #; sp  = 0x0011fe00, (wrb) sp  <-- 0x0011fd90
       0     7175        M 0x80001fe4 sw      ra, 108(sp)            #; sp  = 0x0011fd90, 0x80001660 ~~> Word[0x0011fdfc]
       0     7176        M 0x80001fe8 sw      s0, 104(sp)            #; sp  = 0x0011fd90, 0 ~~> Word[0x0011fdf8]
       0     7177        M 0x80001fec sw      s1, 100(sp)            #; sp  = 0x0011fd90, 8 ~~> Word[0x0011fdf4]
       0     7186        M 0x80001ff0 sw      s2, 96(sp)             #; sp  = 0x0011fd90, 0x80001f30 ~~> Word[0x0011fdf0]
       0     7187        M 0x80001ff4 sw      s3, 92(sp)             #; sp  = 0x0011fd90, 0x0011fe90 ~~> Word[0x0011fdec]
       0     7188        M 0x80001ff8 sw      s4, 88(sp)             #; sp  = 0x0011fd90, 0x0011fe77 ~~> Word[0x0011fde8]
       0     7189        M 0x80001ffc sw      s5, 84(sp)             #; sp  = 0x0011fd90, -1 ~~> Word[0x0011fde4]
       0     7198        M 0x80002000 sw      s6, 80(sp)             #; sp  = 0x0011fd90, 0 ~~> Word[0x0011fde0]
       0     7199        M 0x80002004 sw      s7, 76(sp)             #; sp  = 0x0011fd90, 0 ~~> Word[0x0011fddc]
       0     7200        M 0x80002008 sw      s8, 72(sp)             #; sp  = 0x0011fd90, 16 ~~> Word[0x0011fdd8]
       0     7201        M 0x8000200c sw      s9, 68(sp)             #; sp  = 0x0011fd90, 8 ~~> Word[0x0011fdd4]
       0     7210        M 0x80002010 sw      s10, 64(sp)            #; sp  = 0x0011fd90, 0x8000361e ~~> Word[0x0011fdd0]
       0     7213        M 0x80002014 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fdc8]
       0     7214        M 0x80002018 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fdc0]
       0     7215        M 0x8000201c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fdb8]
       0     7222        M 0x80002020 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80004020
       0     7223        M 0x80002024 addi    s1, s1, -1904          #; s1  = 0x80004020, (wrb) s1  <-- 0x800038b0
       0     7226        M 0x80002028 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800038b0]
       0     7234        M 0x80002030 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     7235        M 0x80002034 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     7236        M 0x80002038 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x8000202c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     7237        M 0x8000203c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     7246        M 0x80002040 mv      s6, a1                 #; a1  = 0x0011fe77, (wrb) s6  <-- 0x0011fe77
       0     7247        M 0x80002044 mv      s7, a0                 #; a0  = 0x80001f30, (wrb) s7  <-- 0x80001f30
       0     7248        M 0x80002048 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80002138
       0     7270        M 0x8000213c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000313c
       0     7271        M 0x80002138 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     7272        M                                           #; (f:fpu) fs0  <-- 0.0
       0     7281        M 0x80002140 addi    a0, a0, 1916           #; a0  = 0x8000313c, (wrb) a0  <-- 0x800038b8
       0     7284        M 0x80002144 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800038b8]
       0     7293        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     7294        M 0x80002148 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     7296        M                                           #; (acc) t3  <-- 0x00051e63
       0     7297        M 0x8000214c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80002168
       0     7309        M 0x80002168 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003168
       0     7310        M 0x8000216c addi    a0, a0, 1880           #; a0  = 0x80003168, (wrb) a0  <-- 0x800038c0
       0     7322        M 0x80002174 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003174
       0     7323        M 0x80002178 addi    a0, a0, 1876           #; a0  = 0x80003174, (wrb) a0  <-- 0x800038c8
                         M 0x80002170 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800038c0]
       0     7326        M 0x8000217c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800038c8]
       0     7332        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     7334        M 0x80002180 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     7335        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     7336        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x80002184 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     7338        M                                           #; (acc) a0  <-- 0x00b57533
       0     7339        M 0x80002188 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     7340        M 0x8000218c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80002288
       0     7356        M 0x80002288 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     7357        M 0x8000228c li      s8, 6                  #; (wrb) s8  <-- 6
       0     7368        M 0x80002290 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80002298
       0     7369        M 0x80002298 li      a0, 10                 #; (wrb) a0  <-- 10
       0     7372        M 0x8000229c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     7373        M                                           #; (f:fpu) fs2  <-- 0.0
       0     7380        M 0x800022a0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800022d8
       0     7403        M 0x800022d8 li      s0, 0                  #; (wrb) s0  <-- 0
       0     7404        M 0x800022dc slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     7415        M 0x800022e0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800032e0
       0     7416        M 0x800022e4 addi    a1, a1, 1288           #; a1  = 0x800032e0, (wrb) a1  <-- 0x800037e8
       0     7417        M 0x800022e8 add     a0, a0, a1             #; a0  = 48, a1  = 0x800037e8, (wrb) a0  <-- 0x80003818
       0     7420        M 0x800022ec fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003818]
       0     7428        M 0x800022f0 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     7429        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     7432        M 0x800022f4 fcvt.d.w ft0, s1               #; ac1  = 0
       0     7433        M                                           #; (f:fpu) ft0  <-- 0.0
       0     7434        M 0x800022f8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     7437        M                                           #; (f:fpu) ft0  <-- 0.0
       0     7438        M 0x800022fc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     7439        M 0x80002300 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003300
       0     7440        M 0x80002304 addi    a0, a0, 1488           #; a0  = 0x80003300, (wrb) a0  <-- 0x800038d0
       0     7441        M                                           #; (f:fpu) ft2  <-- 0.0
       0     7443        M 0x80002308 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800038d0]
       0     7444        M 0x8000230c fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     7452        M 0x80002310 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     7453        M                                           #; (f:fpu) ft3  <-- 0.0
       0     7454        M 0x80002314 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     7457        M                                           #; (f:fpu) ft2  <-- 0.0
       0     7458        M 0x80002318 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     7461        M 0x8000231c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000233c
       0     7475        M 0x8000233c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     7486        M 0x80002340 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80002354
       0     7499        M 0x80002358 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80002354 fcvt.d.w fs1, zero             #; ac1  = 0
       0     7500        M 0x8000235c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     7510        M 0x80002360 addi    a1, sp, 8              #; sp  = 0x0011fd90, (wrb) a1  <-- 0x0011fd98
       0     7511        M 0x80002364 add     t1, a1, s0             #; a1  = 0x0011fd98, s0  = 0, (wrb) t1  <-- 0x0011fd98
       0     7512        M 0x80002368 li      t0, 32                 #; (wrb) t0  <-- 32
       0     7513        M 0x8000236c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     7522        M 0x80002370 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     7523        M 0x80002374 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     7524        M 0x80002378 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7525        M 0x8000237c li      a7, 9                  #; (wrb) a7  <-- 9
       0     7534        M 0x80002380 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     7535        M 0x80002384 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     7536        M 0x80002388 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     7539        M                                           #; (acc) a0  <-- 0x00355513
       0     7540        M 0x8000238c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     7546        M 0x80002390 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     7549        M                                           #; (acc) a3  <-- 0x40d586b3
       0     7550        M 0x80002394 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     7551        M 0x80002398 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     7552        M 0x8000239c add     a5, t1, a2             #; t1  = 0x0011fd98, a2  = 0, (wrb) a5  <-- 0x0011fd98
       0     7558        M 0x800023a0 sb      a3, 0(a5)              #; a5  = 0x0011fd98, 48 ~~> Byte[0x0011fd98]
       0     7559        M 0x800023a4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     7560        M 0x800023a8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     7561        M 0x800023ac add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     7573        M 0x800023b0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     7574        M 0x800023b4 li      a3, 30                 #; (wrb) a3  <-- 30
       0     7575        M 0x800023b8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     7576        M 0x800023bc xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     7585        M 0x800023c0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     7586        M 0x800023c4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     7587        M 0x800023c8 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     7588        M 0x800023cc addi    a0, sp, 8              #; sp  = 0x0011fd90, (wrb) a0  <-- 0x0011fd98
       0     7597        M 0x800023d0 add     a0, a0, s0             #; a0  = 0x0011fd98, s0  = 0, (wrb) a0  <-- 0x0011fd98
       0     7598        M 0x800023d4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     7599        M 0x800023d8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     7600        M 0x800023dc add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     7609        M 0x800023e0 li      a1, 31                 #; (wrb) a1  <-- 31
       0     7610        M 0x800023e4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     7611        M 0x800023e8 add     a0, a0, a2             #; a0  = 0x0011fd98, a2  = 1, (wrb) a0  <-- 0x0011fd99
       0     7612        M 0x800023ec mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     7621        M 0x800023f0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800023f8
       0     7622        M 0x800023f8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     7623        M 0x800023fc li      a1, 48                 #; (wrb) a1  <-- 48
       0     7633        M 0x80002400 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000400
       0     7634        M 0x80002404 jalr    ra, ra, -1024          #; ra  = 0x80000400, (wrb) ra  <-- 0x80002408, goto 0x80000000
       0     7656        M 0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
       0     7657        M 0x80000004 mv      a4, a0                 #; a0  = 0x0011fd99, (wrb) a4  <-- 0x0011fd99
       0     7658        M 0x80000008 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x80000044
       0     7679        M 0x80000044 sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     7680        M 0x80000048 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     7681        M 0x8000004c auipc   t0, 0x0                #; (wrb) t0  <-- 0x8000004c
       0     7691        M 0x80000050 add     a3, a3, t0             #; a3  = 40, t0  = 0x8000004c, (wrb) a3  <-- 0x80000074
       0     7692        M 0x80000054 jalr    zero, a3, 12           #; a3  = 0x80000074, goto 0x80000080
       0     7714        M 0x80000080 sb      a1, 4(a4)              #; a4  = 0x0011fd99, 48 ~~> Byte[0x0011fd9d]
       0     7715        M 0x80000084 sb      a1, 3(a4)              #; a4  = 0x0011fd99, 48 ~~> Byte[0x0011fd9c]
       0     7716        M 0x80000088 sb      a1, 2(a4)              #; a4  = 0x0011fd99, 48 ~~> Byte[0x0011fd9b]
       0     7717        M 0x8000008c sb      a1, 1(a4)              #; a4  = 0x0011fd99, 48 ~~> Byte[0x0011fd9a]
       0     7726        M 0x80000090 sb      a1, 0(a4)              #; a4  = 0x0011fd99, 48 ~~> Byte[0x0011fd99]
       0     7727        M 0x80000094 ret                            #; ra  = 0x80002408, goto 0x80002408
       0     7740        M 0x80002408 li      a0, 0                  #; (wrb) a0  <-- 0
       0     7741        M 0x8000240c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     7743        M 0x80002410 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     7744        M 0x80002414 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     7745        M 0x80002418 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     7746        M 0x8000241c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7755        M 0x80002420 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7756        M 0x80002424 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000240c
       0     7757        M 0x8000240c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     7758        M 0x80002410 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     7759        M 0x80002414 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     7760        M 0x80002418 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     7761        M 0x8000241c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7762        M 0x80002420 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     7763        M 0x80002424 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000240c
       0     7764        M 0x8000240c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     7765        M 0x80002410 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     7766        M 0x80002414 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     7767        M 0x80002418 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     7768        M 0x8000241c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7769        M 0x80002420 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     7770        M 0x80002424 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000240c
       0     7771        M 0x8000240c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     7772        M 0x80002410 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     7773        M 0x80002414 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     7774        M 0x80002418 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     7775        M 0x8000241c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7776        M 0x80002420 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     7777        M 0x80002424 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000240c
       0     7778        M 0x8000240c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     7779        M 0x80002410 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     7780        M 0x80002414 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     7781        M 0x80002418 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     7782        M 0x8000241c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     7783        M 0x80002420 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     7784        M 0x80002424 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     7785        M 0x80002428 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     7786        M 0x8000242c j       pc + 0x28              #; goto 0x80002454
       0     7797        M 0x80002454 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     7798        M 0x80002458 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     7799        M 0x8000245c addi    a1, sp, 8              #; sp  = 0x0011fd90, (wrb) a1  <-- 0x0011fd98
       0     7809        M 0x80002460 add     a0, a1, a0             #; a1  = 0x0011fd98, a0  = 6, (wrb) a0  <-- 0x0011fd9e
       0     7810        M 0x80002464 li      a1, 46                 #; (wrb) a1  <-- 46
       0     7811        M 0x80002468 sb      a1, 0(a0)              #; a0  = 0x0011fd9e, 46 ~~> Byte[0x0011fd9e]
       0     7812        M 0x8000246c j       pc + 0x8               #; goto 0x80002474
       0     7821        M 0x80002474 li      a0, 32                 #; (wrb) a0  <-- 32
       0     7822        M 0x80002478 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     7823        M 0x8000247c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     7833        M 0x80002480 li      t0, 32                 #; (wrb) t0  <-- 32
       0     7835        M 0x80002488 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80002484 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     7836        M 0x8000248c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     7845        M 0x80002490 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7846        M 0x80002494 addi    a3, sp, 8              #; sp  = 0x0011fd90, (wrb) a3  <-- 0x0011fd98
       0     7847        M 0x80002498 li      a4, 18                 #; (wrb) a4  <-- 18
       0     7848        M 0x8000249c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     7857        M 0x800024a0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     7860        M                                           #; (acc) a5  <-- 0x01f55793
       0     7861        M 0x800024a4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     7862        M 0x800024a8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     7863        M 0x800024ac add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     7869        M 0x800024b0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     7872        M                                           #; (acc) a5  <-- 0x40f487b3
       0     7873        M 0x800024b4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     7874        M 0x800024b8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     7875        M 0x800024bc addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     7881        M 0x800024c0 add     s0, a3, s0             #; a3  = 0x0011fd98, s0  = 7, (wrb) s0  <-- 0x0011fd9f
       0     7882        M 0x800024c4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     7883        M 0x800024c8 sb      a5, 0(s0)              #; s0  = 0x0011fd9f, 48 ~~> Byte[0x0011fd9f]
       0     7884        M 0x800024cc mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     7893        M 0x800024d0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     7894        M 0x800024d4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     7895        M 0x800024d8 j       pc + 0x8               #; goto 0x800024e0
       0     7907        M 0x800024e0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     7908        M 0x800024e4 li      a0, 1                  #; (wrb) a0  <-- 1
       0     7909        M 0x800024e8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002554
       0     7930        M 0x80002554 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7931        M 0x80002558 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     7932        M 0x8000255c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002574
       0     7953        M 0x80002574 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     7954        M 0x80002578 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     7955        M 0x8000257c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     7965        M 0x80002580 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x800025ac
       0     7988        M 0x800025ac snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     8000        M 0x800025b0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     8001        M 0x800025b4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     8002        M 0x800025b8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     8003        M 0x800025bc andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     8012        M 0x800025c0 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     8013        M 0x800025c4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800025f0
       0     8035        M 0x800025f0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     8036        M 0x800025f4 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     8037        M 0x800025f8 addi    s9, sp, 7              #; sp  = 0x0011fd90, (wrb) s9  <-- 0x0011fd97
       0     8038        M 0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 8, (wrb) a0  <-- 0x0011fd9f
       0     8047        M 0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9f, a0  <~~ Byte[0x0011fd9f]
       0     8048        M 0x80002604 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     8049        M 0x80002608 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     8050        M 0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     8051        M                                           #; (lsu) a0  <-- 48
       0     8059        M 0x80002610 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     8060        M 0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8061        M 0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
       0     8073        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8074        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8075        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8076        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8077        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     8078        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     8079        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8080        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     8081        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8092        M                                           #; (lsu) a4  <-- 8
       0     8093        M 0x80001f50 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     8094        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 9 ~~> Word[0x8000395c]
       0     8095        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 8, (wrb) a4  <-- 0x80003964
       0     8096        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003964, 48 ~~> Byte[0x800039ac]
       0     8097        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8118        M                                           #; (lsu) a4  <-- 9
       0     8119        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     8120        M 0x80001f68 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     8121        M 0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8122        M 0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8123        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8124        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     8127        M 0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
       0     8132        M 0x8000261c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     8135        M 0x80002620 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     8136        M 0x80002624 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800025fc
       0     8138        M 0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 7, (wrb) a0  <-- 0x0011fd9e
       0     8141        M 0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9e, a0  <~~ Byte[0x0011fd9e]
       0     8142        M 0x80002604 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     8143        M 0x80002608 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     8144        M 0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     8145        M 0x80002610 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     8146        M 0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8147        M 0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
       0     8148        M                                           #; (lsu) a0  <-- 46
       0     8150        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     8151        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8152        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8153        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8154        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     8155        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     8156        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8157        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     8158        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8169        M                                           #; (lsu) a4  <-- 9
       0     8170        M 0x80001f50 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     8171        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 10 ~~> Word[0x8000395c]
       0     8172        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 9, (wrb) a4  <-- 0x80003965
       0     8173        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003965, 46 ~~> Byte[0x800039ad]
       0     8174        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8195        M                                           #; (lsu) a4  <-- 10
       0     8196        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     8197        M 0x80001f68 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     8198        M 0x80001f6c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     8199        M 0x80001f70 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     8200        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8201        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     8204        M 0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
       0     8209        M 0x8000261c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     8212        M 0x80002620 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     8213        M 0x80002624 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800025fc
       0     8215        M 0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 6, (wrb) a0  <-- 0x0011fd9d
       0     8218        M 0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9d, a0  <~~ Byte[0x0011fd9d]
       0     8219        M 0x80002604 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     8220        M 0x80002608 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     8221        M 0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     8222        M 0x80002610 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     8223        M 0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8224        M 0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
       0     8225        M                                           #; (lsu) a0  <-- 48
       0     8227        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8228        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8229        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8230        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8231        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     8232        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     8233        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8234        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     8235        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8246        M                                           #; (lsu) a4  <-- 10
       0     8247        M 0x80001f50 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     8248        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 11 ~~> Word[0x8000395c]
       0     8249        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 10, (wrb) a4  <-- 0x80003966
       0     8250        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003966, 48 ~~> Byte[0x800039ae]
       0     8251        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8272        M                                           #; (lsu) a4  <-- 11
       0     8273        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     8274        M 0x80001f68 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     8275        M 0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8276        M 0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8277        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8278        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     8281        M 0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
       0     8286        M 0x8000261c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     8289        M 0x80002620 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     8290        M 0x80002624 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800025fc
       0     8292        M 0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 5, (wrb) a0  <-- 0x0011fd9c
       0     8295        M 0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9c, a0  <~~ Byte[0x0011fd9c]
       0     8296        M 0x80002604 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     8297        M 0x80002608 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     8298        M 0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     8299        M 0x80002610 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     8300        M 0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8301        M 0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
       0     8302        M                                           #; (lsu) a0  <-- 48
       0     8304        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8305        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8306        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8307        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8308        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     8309        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     8310        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8311        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     8312        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8323        M                                           #; (lsu) a4  <-- 11
       0     8324        M 0x80001f50 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     8325        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 12 ~~> Word[0x8000395c]
       0     8326        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 11, (wrb) a4  <-- 0x80003967
       0     8327        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003967, 48 ~~> Byte[0x800039af]
       0     8328        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8349        M                                           #; (lsu) a4  <-- 12
       0     8350        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     8351        M 0x80001f68 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     8352        M 0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8353        M 0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8354        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8355        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     8358        M 0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
       0     8363        M 0x8000261c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     8366        M 0x80002620 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     8367        M 0x80002624 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800025fc
       0     8369        M 0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 4, (wrb) a0  <-- 0x0011fd9b
       0     8372        M 0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9b, a0  <~~ Byte[0x0011fd9b]
       0     8373        M 0x80002604 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     8374        M 0x80002608 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     8375        M 0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     8376        M 0x80002610 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     8377        M 0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8378        M 0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
       0     8379        M                                           #; (lsu) a0  <-- 48
       0     8381        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8382        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8383        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8384        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8385        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     8386        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     8387        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8388        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     8389        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8400        M                                           #; (lsu) a4  <-- 12
       0     8401        M 0x80001f50 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     8402        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 13 ~~> Word[0x8000395c]
       0     8403        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 12, (wrb) a4  <-- 0x80003968
       0     8404        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003968, 48 ~~> Byte[0x800039b0]
       0     8405        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8426        M                                           #; (lsu) a4  <-- 13
       0     8427        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     8428        M 0x80001f68 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     8429        M 0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8430        M 0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8431        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8432        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     8435        M 0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
       0     8440        M 0x8000261c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     8443        M 0x80002620 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     8444        M 0x80002624 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800025fc
       0     8446        M 0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 3, (wrb) a0  <-- 0x0011fd9a
       0     8449        M 0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9a, a0  <~~ Byte[0x0011fd9a]
       0     8450        M 0x80002604 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     8451        M 0x80002608 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     8452        M 0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     8453        M 0x80002610 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     8454        M 0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8455        M 0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
       0     8456        M                                           #; (lsu) a0  <-- 48
       0     8458        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8459        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8460        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8461        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8462        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     8463        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     8464        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8465        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     8466        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8477        M                                           #; (lsu) a4  <-- 13
       0     8478        M 0x80001f50 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     8479        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 14 ~~> Word[0x8000395c]
       0     8480        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 13, (wrb) a4  <-- 0x80003969
       0     8481        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003969, 48 ~~> Byte[0x800039b1]
       0     8482        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8503        M                                           #; (lsu) a4  <-- 14
       0     8504        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     8505        M 0x80001f68 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     8506        M 0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8507        M 0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8508        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8509        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     8512        M 0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
       0     8517        M 0x8000261c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     8520        M 0x80002620 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     8521        M 0x80002624 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800025fc
       0     8523        M 0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 2, (wrb) a0  <-- 0x0011fd99
       0     8526        M 0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd99, a0  <~~ Byte[0x0011fd99]
       0     8527        M 0x80002604 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     8528        M 0x80002608 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     8529        M 0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     8530        M 0x80002610 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     8531        M 0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8532        M 0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
       0     8533        M                                           #; (lsu) a0  <-- 48
       0     8535        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8536        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8537        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8538        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8539        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     8540        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     8541        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8542        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     8543        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8554        M                                           #; (lsu) a4  <-- 14
       0     8555        M 0x80001f50 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     8556        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 15 ~~> Word[0x8000395c]
       0     8557        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 14, (wrb) a4  <-- 0x8000396a
       0     8558        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000396a, 48 ~~> Byte[0x800039b2]
       0     8559        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8580        M                                           #; (lsu) a4  <-- 15
       0     8581        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     8582        M 0x80001f68 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     8583        M 0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8584        M 0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8585        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8586        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     8589        M 0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
       0     8594        M 0x8000261c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     8597        M 0x80002620 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     8598        M 0x80002624 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800025fc
       0     8600        M 0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 1, (wrb) a0  <-- 0x0011fd98
       0     8603        M 0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd98, a0  <~~ Byte[0x0011fd98]
       0     8604        M 0x80002604 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     8605        M 0x80002608 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     8606        M 0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     8607        M 0x80002610 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     8608        M 0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8609        M 0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
       0     8610        M                                           #; (lsu) a0  <-- 48
       0     8612        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8613        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8614        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8615        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8616        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     8617        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     8618        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8619        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     8620        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8631        M                                           #; (lsu) a4  <-- 15
       0     8632        M 0x80001f50 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     8633        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 16 ~~> Word[0x8000395c]
       0     8634        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 15, (wrb) a4  <-- 0x8000396b
       0     8635        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000396b, 48 ~~> Byte[0x800039b3]
       0     8636        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8657        M                                           #; (lsu) a4  <-- 16
       0     8658        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     8659        M 0x80001f68 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     8660        M 0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8661        M 0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8662        M 0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8663        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
       0     8666        M 0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
       0     8671        M 0x8000261c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     8674        M 0x80002620 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     8675        M 0x80002624 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     8676        M 0x80002628 j       pc + 0x8               #; goto 0x80002630
       0     8688        M 0x80002630 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     8689        M 0x80002634 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     8690        M 0x80002638 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     8691        M 0x8000263c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     8700        M 0x80002640 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     8701        M 0x80002644 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002674
       0     8723        M 0x80002674 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     8724        M 0x80002678 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     8727        M 0x8000267c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fdb8]
       0     8728        M                                           #; (f:lsu) fs2  <-- 0.0
       0     8737        M 0x80002688 lw      s10, 64(sp)            #; sp  = 0x0011fd90, s10 <~~ Word[0x0011fdd0]
                         M 0x80002680 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fdc0]
       0     8738        M 0x80002684 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fdc8], (f:lsu) fs1  <-- 0.0
       0     8739        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     8741        M                                           #; (lsu) s10 <-- 0x8000361e
       0     8742        M 0x8000268c lw      s9, 68(sp)             #; sp  = 0x0011fd90, s9  <~~ Word[0x0011fdd4]
       0     8745        M                                           #; (lsu) s9  <-- 8
       0     8747        M 0x80002690 lw      s8, 72(sp)             #; sp  = 0x0011fd90, s8  <~~ Word[0x0011fdd8]
       0     8750        M                                           #; (lsu) s8  <-- 16
       0     8751        M 0x80002694 lw      s7, 76(sp)             #; sp  = 0x0011fd90, s7  <~~ Word[0x0011fddc]
       0     8754        M                                           #; (lsu) s7  <-- 0
       0     8755        M 0x80002698 lw      s6, 80(sp)             #; sp  = 0x0011fd90, s6  <~~ Word[0x0011fde0]
       0     8758        M                                           #; (lsu) s6  <-- 0
       0     8759        M 0x8000269c lw      s5, 84(sp)             #; sp  = 0x0011fd90, s5  <~~ Word[0x0011fde4]
       0     8762        M                                           #; (lsu) s5  <-- -1
       0     8763        M 0x800026a0 lw      s4, 88(sp)             #; sp  = 0x0011fd90, s4  <~~ Word[0x0011fde8]
       0     8766        M                                           #; (lsu) s4  <-- 0x0011fe77
       0     8767        M 0x800026a4 lw      s3, 92(sp)             #; sp  = 0x0011fd90, s3  <~~ Word[0x0011fdec]
       0     8770        M                                           #; (lsu) s3  <-- 0x0011fe90
       0     8771        M 0x800026a8 lw      s2, 96(sp)             #; sp  = 0x0011fd90, s2  <~~ Word[0x0011fdf0]
       0     8774        M                                           #; (lsu) s2  <-- 0x80001f30
       0     8775        M 0x800026ac lw      s1, 100(sp)            #; sp  = 0x0011fd90, s1  <~~ Word[0x0011fdf4]
       0     8778        M                                           #; (lsu) s1  <-- 8
       0     8779        M 0x800026b0 lw      s0, 104(sp)            #; sp  = 0x0011fd90, s0  <~~ Word[0x0011fdf8]
       0     8782        M                                           #; (lsu) s0  <-- 0
       0     8783        M 0x800026b4 lw      ra, 108(sp)            #; sp  = 0x0011fd90, ra  <~~ Word[0x0011fdfc]
       0     8784        M 0x800026b8 addi    sp, sp, 112            #; sp  = 0x0011fd90, (wrb) sp  <-- 0x0011fe00
       0     8786        M                                           #; (lsu) ra  <-- 0x80001660
       0     8787        M 0x800026bc ret                            #; ra  = 0x80001660, goto 0x80001660
       0     8790        M 0x80001660 j       pc + 0x7c0             #; goto 0x80001e20
       0     8802        M 0x80001e20 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     8803        M 0x80001e24 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8804        M 0x80001e28 li      s7, 46                 #; (wrb) s7  <-- 46
       0     8805        M 0x80001e2c addi    s0, s10, 1             #; s10 = 0x8000361e, (wrb) s0  <-- 0x8000361f
       0     8814        M 0x80001e30 j       pc - 0xa74             #; goto 0x800013bc
       0     8817        M 0x800013bc addi    s10, s0, 2             #; s0  = 0x8000361f, (wrb) s10 <-- 0x80003621
       0     8820        M 0x800013c0 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     8821        M 0x800013c4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8822        M 0x800013c8 lbu     a0, 0(s0)              #; s0  = 0x8000361f, a0  <~~ Byte[0x8000361f]
       0     8833        M                                           #; (lsu) a0  <-- 10
       0     8834        M 0x800013cc beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     8835        M 0x800013d0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     8836        M 0x800013d4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     8837        M 0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     8838        M 0x800013dc mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     8839        M 0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8840        M 0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
       0     8844        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     8845        M 0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8846        M 0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8847        M 0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8848        M 0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
       0     8849        M 0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
       0     8850        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8851        M 0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
       0     8852        M 0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8863        M                                           #; (lsu) a4  <-- 16
       0     8864        M 0x80001f50 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     8865        M 0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 17 ~~> Word[0x8000395c]
       0     8866        M 0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 16, (wrb) a4  <-- 0x8000396c
       0     8867        M 0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000396c, 10 ~~> Byte[0x800039b4]
       0     8868        M 0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
       0     8889        M                                           #; (lsu) a4  <-- 17
       0     8890        M 0x80001f64 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     8891        M 0x80001f68 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     8892        M 0x80001f6c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     8893        M 0x80001f70 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     8894        M 0x80001f74 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     8895        M 0x80001f78 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     8896        M 0x80001f7c add     a0, a3, a2             #; a3  = 0x8000395c, a2  = 0, (wrb) a0  <-- 0x8000395c
       0     8897        M 0x80001f80 addi    a2, a0, 72             #; a0  = 0x8000395c, (wrb) a2  <-- 0x800039a4
       0     8898        M 0x80001f84 sw      zero, 12(a0)           #; a0  = 0x8000395c, 0 ~~> Word[0x80003968]
       0     8899        M 0x80001f88 li      a3, 64                 #; (wrb) a3  <-- 64
       0     8900        M 0x80001f8c sw      a3, 8(a0)              #; a0  = 0x8000395c, 64 ~~> Word[0x80003964]
       0     8909        M 0x80001f90 sw      zero, 20(a0)           #; a0  = 0x8000395c, 0 ~~> Word[0x80003970]
       0     8910        M 0x80001f94 li      a3, 1                  #; (wrb) a3  <-- 1
       0     8911        M 0x80001f98 sw      a3, 16(a0)             #; a0  = 0x8000395c, 1 ~~> Word[0x8000396c]
       0     8912        M 0x80001f9c sw      zero, 28(a0)           #; a0  = 0x8000395c, 0 ~~> Word[0x80003978]
       0     8921        M 0x80001fa0 sw      a2, 24(a0)             #; a0  = 0x8000395c, 0x800039a4 ~~> Word[0x80003974]
       0     8924        M 0x80001fa4 lw      a2, 0(a1)              #; a1  = 0x8000395c, a2  <~~ Word[0x8000395c]
       0     8925        M 0x80001fa8 addi    a3, a0, 8              #; a0  = 0x8000395c, (wrb) a3  <-- 0x80003964
       0     8926        M 0x80001fac sw      zero, 36(a0)           #; a0  = 0x8000395c, 0 ~~> Word[0x80003980]
       0     8946        M                                           #; (lsu) a2  <-- 17
       0     8947        M 0x80001fb0 sw      a2, 32(a0)             #; a0  = 0x8000395c, 17 ~~> Word[0x8000397c]
       0     8948        M 0x80001fb4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003fb4
       0     8949        M 0x80001fb8 addi    a0, a0, -1908          #; a0  = 0x80003fb4, (wrb) a0  <-- 0x80003840
       0     8950        M 0x80001fbc sw      a3, 0(a0)              #; a0  = 0x80003840, 0x80003964 ~~> Word[0x80003840]
       0     8951        M 0x80001fc0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003fc0
       0     8952        M 0x80001fc4 addi    a0, a0, -1856          #; a0  = 0x80003fc0, (wrb) a0  <-- 0x80003880
       0     8953        M 0x80001fc8 lw      a2, 0(a0)              #; a0  = 0x80003880, a2  <~~ Word[0x80003880]
       0     8976        M                                           #; (lsu) a2  <-- 0
       0     8977        M 0x80001fcc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001fc8
       0     8978        M 0x80001fc8 lw      a2, 0(a0)              #; a0  = 0x80003880, a2  <~~ Word[0x80003880]
       0     8989        M                                           #; (lsu) a2  <-- 0
       0     8990        M 0x80001fcc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001fc8
       0     8991        M 0x80001fc8 lw      a2, 0(a0)              #; a0  = 0x80003880, a2  <~~ Word[0x80003880]
       0     9002        M                                           #; (lsu) a2  <-- 0
       0     9003        M 0x80001fcc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001fc8
       0     9004        M 0x80001fc8 lw      a2, 0(a0)              #; a0  = 0x80003880, a2  <~~ Word[0x80003880]
       0     9015        M                                           #; (lsu) a2  <-- 1
       0     9016        M 0x80001fcc beqz    a2, pc - 4             #; a2  = 1, not taken
       0     9019        M 0x80001fd0 sw      zero, 0(a0)            #; a0  = 0x80003880, 0 ~~> Word[0x80003880]
       0     9020        M 0x80001fd4 sw      zero, 0(a1)            #; a1  = 0x8000395c, 0 ~~> Word[0x8000395c]
       0     9021        M 0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
       0     9024        M 0x800013e8 addi    s0, s0, 1              #; s0  = 0x8000361f, (wrb) s0  <-- 0x80003620
       0     9025        M 0x800013ec addi    s10, s10, 1            #; s10 = 0x80003621, (wrb) s10 <-- 0x80003622
       0     9027        M 0x800013f0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     9028        M 0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x80003620, a0  <~~ Byte[0x80003620]
       0     9042        M                                           #; (lsu) a0  <-- 0
       0     9043        M 0x800013f8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     9044        M 0x800013fc j       pc + 0xad8             #; goto 0x80001ed4
       0     9056        M 0x80001ed4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     9057        M 0x80001ed8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001ee0
       0     9068        M 0x80001ee0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     9069        M 0x80001ee4 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
       0     9070        M 0x80001ee8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9071        M 0x80001eec jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x80001ef0, goto 0x80001f30
       0     9082        M 0x80001f30 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001fd8
       0     9087        M 0x80001fd8 ret                            #; ra  = 0x80001ef0, goto 0x80001ef0
       0     9088        M 0x80001ef0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     9089        M 0x80001ef4 lw      s11, 60(sp)            #; sp  = 0x0011fe00, s11 <~~ Word[0x0011fe3c]
       0     9092        M                                           #; (lsu) s11 <-- 0
       0     9093        M 0x80001ef8 lw      s10, 64(sp)            #; sp  = 0x0011fe00, s10 <~~ Word[0x0011fe40]
       0     9096        M                                           #; (lsu) s10 <-- 0
       0     9097        M 0x80001efc lw      s9, 68(sp)             #; sp  = 0x0011fe00, s9  <~~ Word[0x0011fe44]
       0     9100        M                                           #; (lsu) s9  <-- 0
       0     9102        M 0x80001f00 lw      s8, 72(sp)             #; sp  = 0x0011fe00, s8  <~~ Word[0x0011fe48]
       0     9105        M                                           #; (lsu) s8  <-- 0
       0     9106        M 0x80001f04 lw      s7, 76(sp)             #; sp  = 0x0011fe00, s7  <~~ Word[0x0011fe4c]
       0     9109        M                                           #; (lsu) s7  <-- 0
       0     9110        M 0x80001f08 lw      s6, 80(sp)             #; sp  = 0x0011fe00, s6  <~~ Word[0x0011fe50]
       0     9113        M                                           #; (lsu) s6  <-- 0x001000f0
       0     9114        M 0x80001f0c lw      s5, 84(sp)             #; sp  = 0x0011fe00, s5  <~~ Word[0x0011fe54]
       0     9117        M                                           #; (lsu) s5  <-- 4
       0     9118        M 0x80001f10 lw      s4, 88(sp)             #; sp  = 0x0011fe00, s4  <~~ Word[0x0011fe58]
       0     9121        M                                           #; (lsu) s4  <-- 8
       0     9122        M 0x80001f14 lw      s3, 92(sp)             #; sp  = 0x0011fe00, s3  <~~ Word[0x0011fe5c]
       0     9125        M                                           #; (lsu) s3  <-- 6
       0     9126        M 0x80001f18 lw      s2, 96(sp)             #; sp  = 0x0011fe00, s2  <~~ Word[0x0011fe60]
       0     9129        M                                           #; (lsu) s2  <-- 0x00100000
       0     9130        M 0x80001f1c lw      s1, 100(sp)            #; sp  = 0x0011fe00, s1  <~~ Word[0x0011fe64]
       0     9133        M                                           #; (lsu) s1  <-- 0
       0     9134        M 0x80001f20 lw      s0, 104(sp)            #; sp  = 0x0011fe00, s0  <~~ Word[0x0011fe68]
       0     9137        M                                           #; (lsu) s0  <-- 0x00100240
       0     9138        M 0x80001f24 lw      ra, 108(sp)            #; sp  = 0x0011fe00, ra  <~~ Word[0x0011fe6c]
       0     9139        M 0x80001f28 addi    sp, sp, 112            #; sp  = 0x0011fe00, (wrb) sp  <-- 0x0011fe70
       0     9141        M                                           #; (lsu) ra  <-- 0x8000132c
       0     9142        M 0x80001f2c ret                            #; ra  = 0x8000132c, goto 0x8000132c
       0     9145        M 0x8000132c lw      ra, 12(sp)             #; sp  = 0x0011fe70, ra  <~~ Word[0x0011fe7c]
       0     9148        M 0x80001330 addi    sp, sp, 48             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fea0
       0     9149        M                                           #; (lsu) ra  <-- 0x80000edc
       0     9150        M 0x80001334 ret                            #; ra  = 0x80000edc, goto 0x80000edc
       0     9153        M 0x80000edc auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003edc
       0     9165        M 0x80000ee0 addi    a0, a0, -1588          #; a0  = 0x80003edc, (wrb) a0  <-- 0x800038a8
       0     9168        M 0x80000ee4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800038a8]
       0     9177        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     9178        M 0x80000ee8 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0     9180        M                                           #; (acc) s9  <-- 0x05013c87
                         M 0x80000eec fld     fs11, 64(sp)           #; fs11 <~~ Doub[0x0011fee0]
       0     9181        M 0x80000ef0 fld     fs10, 72(sp)           #; fs10 <~~ Doub[0x0011fee8], (f:lsu) fs11 <-- 0.0
       0     9182        M 0x80000ef4 fld     fs9, 80(sp)            #; fs9  <~~ Doub[0x0011fef0], (f:lsu) fs10 <-- 0.0
       0     9183        M 0x80000ef8 fld     fs8, 88(sp)            #; fs8  <~~ Doub[0x0011fef8], (f:lsu) fs9  <-- 0.0
       0     9184        M 0x80000efc fld     fs7, 96(sp)            #; fs7  <~~ Doub[0x0011ff00], (f:lsu) fs8  <-- 0.0
       0     9185        M 0x80000f00 fld     fs6, 104(sp)           #; fs6  <~~ Doub[0x0011ff08], (f:lsu) fs7  <-- 0.0
       0     9186        M 0x80000f04 fld     fs5, 112(sp)           #; fs5  <~~ Doub[0x0011ff10], (f:lsu) fs6  <-- 0.0
       0     9187        M 0x80000f08 fld     fs4, 120(sp)           #; fs4  <~~ Doub[0x0011ff18], (f:lsu) fs5  <-- 0.0
       0     9188        M 0x80000f0c fld     fs3, 128(sp)           #; fs3  <~~ Doub[0x0011ff20], (f:lsu) fs4  <-- 0.0
       0     9189        M 0x80000f10 fld     fs2, 136(sp)           #; fs2  <~~ Doub[0x0011ff28], (f:lsu) fs3  <-- 0.0
       0     9190        M 0x80000f1c lw      s6, 160(sp)            #; sp  = 0x0011fea0, s6  <~~ Word[0x0011ff40]
                         M 0x80000f14 fld     fs1, 144(sp)           #; fs1  <~~ Doub[0x0011ff30], (f:lsu) fs2  <-- 0.0
       0     9191        M 0x80000f18 fld     fs0, 152(sp)           #; fs0  <~~ Doub[0x0011ff38], (f:lsu) fs1  <-- 0.0
       0     9192        M                                           #; (f:lsu) fs0  <-- 0.0
       0     9194        M                                           #; (lsu) s6  <-- 0
       0     9199        M 0x80000f20 lw      s5, 164(sp)            #; sp  = 0x0011fea0, s5  <~~ Word[0x0011ff44]
       0     9202        M                                           #; (lsu) s5  <-- 0
       0     9203        M 0x80000f24 lw      s4, 168(sp)            #; sp  = 0x0011fea0, s4  <~~ Word[0x0011ff48]
       0     9206        M                                           #; (lsu) s4  <-- 0
       0     9207        M 0x80000f28 lw      s3, 172(sp)            #; sp  = 0x0011fea0, s3  <~~ Word[0x0011ff4c]
       0     9210        M                                           #; (lsu) s3  <-- 0
       0     9211        M 0x80000f2c lw      s2, 176(sp)            #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff50]
       0     9214        M                                           #; (lsu) s2  <-- 0
       0     9215        M 0x80000f30 lw      s1, 180(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff54]
       0     9218        M                                           #; (lsu) s1  <-- 0
       0     9219        M 0x80000f34 lw      s0, 184(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff58]
       0     9222        M                                           #; (lsu) s0  <-- 0
       0     9223        M 0x80000f38 lw      ra, 188(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff5c]
       0     9224        M 0x80000f3c addi    sp, sp, 192            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff60
       0     9226        M                                           #; (lsu) ra  <-- 0x80003390
       0     9227        M 0x80000f40 ret                            #; ra  = 0x80003390, goto 0x80003390
       0     9239        M 0x80003390 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     9240        M 0x80003394 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003394
       0     9241        M 0x80003398 jalr    ra, ra, 524            #; ra  = 0x80003394, (wrb) ra  <-- 0x8000339c, goto 0x800035a0
       0     9253        M 0x800035a0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     9254        M 0x800035a4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000339c ~~> Word[0x0011ff5c]
       0     9255        M 0x800035a8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800035a8
       0     9256        M 0x800035ac jalr    ra, ra, -1264          #; ra  = 0x800035a8, (wrb) ra  <-- 0x800035b0, goto 0x800030b8
       0     9268        M 0x800030b8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     9269        M 0x800030bc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     9280        M 0x800030c0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     9283        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     9284        M 0x800030c4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     9287        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     9288        M 0x800030c8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     9289        M 0x800030cc ret                            #; ra  = 0x800035b0, goto 0x800035b0
       0     9291        M                                           #; (lsu) a0  <-- 0x00120190
       0     9292        M 0x800035b0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     9302        M                                           #; (lsu) a0  <-- 0
       0     9303        M 0x800035b4 mv      zero, a0               #; a0  = 0
       0     9304        M 0x800035b8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     9305        M 0x800035bc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     9307        M                                           #; (lsu) ra  <-- 0x8000339c
       0     9308        M 0x800035c0 ret                            #; ra  = 0x8000339c, goto 0x8000339c
       0     9311        M 0x8000339c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     9315        M 0x800033a0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800033a0
       0     9316        M 0x800033a4 jalr    ra, ra, 556            #; ra  = 0x800033a0, (wrb) ra  <-- 0x800033a8, goto 0x800035cc
       0     9317        M 0x800035cc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     9318        M 0x800035d0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     9319        M 0x800035d4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800033a8 ~~> Word[0x0011ff5c]
       0     9320        M 0x800035d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800035d8
       0     9321        M 0x800035dc jalr    ra, ra, -1344          #; ra  = 0x800035d8, (wrb) ra  <-- 0x800035e0, goto 0x80003098
       0     9342        M 0x80003098 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     9343        M 0x8000309c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     9354        M 0x800030a0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     9357        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     9358        M 0x800030a4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     9363        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     9364        M 0x800030a8 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     9365        M 0x800030ac csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9367        M                                           #; (lsu) a0  <-- 0
       0     9368        M 0x800030b0 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     9369        M 0x800030b4 ret                            #; ra  = 0x800035e0, goto 0x800035e0
       0     9370        M 0x800035e0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     9373        M                                           #; (lsu) t0  <-- 0
       0     9374        M 0x800035e4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     9375        M 0x800035e8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     9376        M 0x800035ec bnez    a0, pc + 24            #; a0  = 0, not taken
       0     9377        M                                           #; (lsu) ra  <-- 0x800033a8
       0     9380        M 0x800035f0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     9381        M 0x800035f4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     9382        M 0x800035f8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800035f8
       0     9383        M 0x800035fc addi    t1, t1, 584            #; t1  = 0x800035f8, (wrb) t1  <-- 0x80003840
       0     9391        M 0x80003600 sw      t0, 0(t1)              #; t1  = 0x80003840, 1 ~~> Word[0x80003840]
       0     9392        M 0x80003604 ret                            #; ra  = 0x800033a8, goto 0x800033a8
       0     9405        M 0x800033a8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 9405):
snitch_loads                                   171
snitch_stores                                  178
fpss_stores                                     29
fpss_loads                                      39
snitch_avg_load_latency                    10.2281
snitch_occupancy                            0.2922
snitch_fseq_rel_offloads                    0.3084
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.7955
fpss_avg_load_latency                       3.0513
fpss_occupancy                              0.1303
fpss_fpu_occupancy                          0.1218
fpss_fpu_rel_occupancy                      0.9346
cycles                                        9394
total_ipc                                   0.4225
