       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80003100
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80003100, (wrb) ra  <-- 4120, goto 0x80003100
       0      269        M 0x80003100 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80004100
       0      270        M 0x80003104 addi    gp, gp, -248           #; gp  = 0x80004100, (wrb) gp  <-- 0x80004008
       0      271        M 0x80003108 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003108
       0      272        M 0x8000310c jalr    ra, ra, 964            #; ra  = 0x80003108, (wrb) ra  <-- 0x80003110, goto 0x800034cc
       0      292        M 0x800034cc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x800034d0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x800034d4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x800034d8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x800034dc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x800034e0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x800034e4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x800034e8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x800034ec mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x800034f0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x800034f4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x800034f8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x800034fc ret                            #; ra  = 0x80003110, goto 0x80003110
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80003110 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80003114 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80003118 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003118
       0      508        M 0x8000311c jalr    ra, ra, 1036           #; ra  = 0x80003118, (wrb) ra  <-- 0x80003120, goto 0x80003524
       0      523        M 0x80003524 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80003528 ret                            #; ra  = 0x80003120, goto 0x80003120
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80003120 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80003124 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80003128 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000312c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80003130 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80003134 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003134
       0      551        M 0x80003138 addi    t0, t0, 1948           #; t0  = 0x80003134, (wrb) t0  <-- 0x800038d0
       0      552        M 0x8000313c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000313c
       0      562        M 0x80003140 addi    t1, t1, 1944           #; t1  = 0x8000313c, (wrb) t1  <-- 0x800038d4
       0      563        M 0x80003144 bge     t0, t1, pc + 16        #; t0  = 0x800038d0, t1  = 0x800038d4, not taken
       0      564        M 0x80003148 sw      zero, 0(t0)            #; t0  = 0x800038d0, 0 ~~> Word[0x800038d0]
       0      565        M 0x8000314c addi    t0, t0, 4              #; t0  = 0x800038d0, (wrb) t0  <-- 0x800038d4
       0      573        M 0x80003150 blt     t0, t1, pc - 8         #; t0  = 0x800038d4, t1  = 0x800038d4, not taken
       0      574        M 0x80003154 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80003158 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000315c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80003160 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80003164 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80003168 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000316c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80003170 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80003174 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80003178 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000317c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80003180 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80003184 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80003188 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000318c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80003190 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80003194 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80003198 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000319c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800031a0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800031a4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800031a8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800031ac fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800031b0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800031b4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800031b8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800031bc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800031c0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800031c4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800031c8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800031cc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800031d0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800031d4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800031d8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800031dc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800031e0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800031e4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800031e8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800031e8
       0      684        M 0x800031ec lw      t0, 900(t0)            #; t0  = 0x800031e8, t0  <~~ Word[0x8000356c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800031f0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800031f4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800031f8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800031f8
       0      708        M 0x800031fc lw      t2, 880(t2)            #; t2  = 0x800031f8, t2  <~~ Word[0x80003568]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80003200 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80003204 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80003208 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000320c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80003210 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80003214 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80003218 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000321c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80003220 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003220
       0      762        M 0x80003224 addi    t0, t0, 1512           #; t0  = 0x80003220, (wrb) t0  <-- 0x80003808
       0      763        M 0x80003228 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003228
       0      764        M 0x8000322c addi    t1, t1, 1504           #; t1  = 0x80003228, (wrb) t1  <-- 0x80003808
       0      775        M 0x80003230 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003230
       0      776        M 0x80003234 addi    t2, t2, 1496           #; t2  = 0x80003230, (wrb) t2  <-- 0x80003808
       0      777        M 0x80003238 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80003238
       0      778        M 0x8000323c addi    t3, t3, 1504           #; t3  = 0x80003238, (wrb) t3  <-- 0x80003818
       0      787        M 0x80003240 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003808, (wrb) sp  <-- 0x80123778
       0      788        M 0x80003244 sub     sp, sp, t1             #; sp  = 0x80123778, t1  = 0x80003808, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80003248 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003808, (wrb) sp  <-- 0x80123778
       0      790        M 0x8000324c sub     sp, sp, t3             #; sp  = 0x80123778, t3  = 0x80003818, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80003250 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80003254 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80003258 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000325c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80003260 bge     t0, t1, pc + 24        #; t0  = 0x80003808, t1  = 0x80003808, taken, goto 0x80003278
       0      823        M 0x80003278 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003278
       0      824        M 0x8000327c addi    t0, t0, 1424           #; t0  = 0x80003278, (wrb) t0  <-- 0x80003808
       0      835        M 0x80003280 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003280
       0      836        M 0x80003284 addi    t1, t1, 1432           #; t1  = 0x80003280, (wrb) t1  <-- 0x80003818
       0      837        M 0x80003288 bge     t0, t1, pc + 20        #; t0  = 0x80003808, t1  = 0x80003818, not taken
       0      838        M 0x8000328c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80003290 addi    t0, t0, 4              #; t0  = 0x80003808, (wrb) t0  <-- 0x8000380c
       0      848        M 0x80003294 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80003298 blt     t0, t2, pc - 12        #; t0  = 0x8000380c, t2  = 0x80003808, not taken
       0      850        M 0x8000329c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x800032a0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x800032a4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x800032a8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x800032ac sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x800032b0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x800032b4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800032b4
       0      877        M 0x800032b8 jalr    ra, ra, -1064          #; ra  = 0x800032b4, (wrb) ra  <-- 0x800032bc, goto 0x80002e8c
       0      899        M 0x80002e8c sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      912        M 0x80002e90 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      913        M 0x80002e94 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      931        M                                           #; (lsu) t1  <-- 0
       0      932        M 0x80002e98 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      933        M 0x80002e9c lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      971        M                                           #; (lsu) a6  <-- 1
       0      972        M 0x80002ea0 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1011        M                                           #; (lsu) a7  <-- 1
       0     1012        M 0x80002ea4 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1013        M 0x80002ea8 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1016        M                                           #; (acc) a0  <-- 0x02580533
       0     1040        M                                           #; (lsu) t0  <-- 8
       0     1041        M 0x80002eac mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1044        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1045        M 0x80002eb0 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1046        M 0x80002eb4 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1047        M 0x80002eb8 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1048        M 0x80002ebc divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M 0x80002ec0 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1055        M 0x80002ec4 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1056        M 0x80002ec8 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1057        M 0x80002ecc sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1067        M 0x80002ed0 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1068        M 0x80002ed4 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x80002ed8 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x80002edc sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x80002ee0 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80002ee4 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80002ee8 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x80002eec sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1180        M                                           #; (lsu) a1  <-- 1
       0     1181        M 0x80002ef0 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1182        M 0x80002ef4 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1183        M 0x80002ef8 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1184        M 0x80002efc sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1185        M 0x80002f00 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1186        M 0x80002f04 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1201        M                                           #; (lsu) a0  <-- 0x00020000
       0     1202        M 0x80002f08 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1203        M 0x80002f0c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1204        M 0x80002f10 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80002f14 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1206        M 0x80002f18 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1207        M 0x80002f1c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1215        M 0x80002f20 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80002f24 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1217        M 0x80002f28 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1218        M 0x80002f2c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1228        M 0x80002f30 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1229        M 0x80002f34 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x80002f38 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80002f3c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x80002f40 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1241        M 0x80002f44 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1244        M 0x80002f48 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1245        M 0x80002f4c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1252        M 0x80002f50 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1253        M 0x80002f54 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1254        M 0x80002f58 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x80002f5c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x80002f60 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x80002f64 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1267        M                                           #; (lsu) a0  <-- 8
       0     1268        M 0x80002f68 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1269        M 0x80002f6c lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x80002f70 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M 0x80002f74 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1278        M 0x80002f78 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80002f7c mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1288        M 0x80002f80 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003f80
       0     1289        M 0x80002f84 addi    a1, a1, -1708          #; a1  = 0x80003f80, (wrb) a1  <-- 0x800038d4
       0     1290        M 0x80002f88 add     a0, a0, a1             #; a0  = 0, a1  = 0x800038d4, (wrb) a0  <-- 0x800038d4
       0     1291        M 0x80002f8c sw      zero, 0(a0)            #; a0  = 0x800038d4, 0 ~~> Word[0x800038d4]
       0     1300        M 0x80002f90 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1367        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1368        M 0x80002f94 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1369        M 0x80002f98 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1370        M 0x80002f9c sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1371        M 0x80002fa0 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1372        M 0x80002fa4 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1373        M 0x80002fa8 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1374        M 0x80002fac andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1375        M 0x80002fb0 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1376        M 0x80002fb4 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1377        M 0x80002fb8 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1378        M 0x80002fbc sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1379        M 0x80002fc0 lw      a0, 0(a1)              #; a1  = 0x800038d4, a0  <~~ Word[0x800038d4]
       0     1390        M                                           #; (lsu) a0  <-- 0
       0     1391        M 0x80002fc4 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1392        M 0x80002fc8 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1393        M 0x80002fcc sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1394        M 0x80002fd0 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1395        M 0x80002fd4 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1396        M 0x80002fd8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1397        M 0x80002fdc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1398        M 0x80002fe0 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x80002fe4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x80002fe8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x80002fec sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1406        M 0x80002ff0 ret                            #; ra  = 0x800032bc, goto 0x800032bc
       0     1421        M 0x800032bc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1424        M                                           #; (lsu) a0  <-- 0
       0     1425        M 0x800032c0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1428        M                                           #; (lsu) a1  <-- 8
       0     1429        M 0x800032c4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1432        M                                           #; (lsu) a2  <-- 0x00100000
       0     1433        M 0x800032c8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1436        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1437        M 0x800032cc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1438        M 0x800032d0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1439        M 0x800032d4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800032d4
       0     1440        M 0x800032d8 addi    t0, t0, 60             #; t0  = 0x800032d4, (wrb) t0  <-- 0x80003310
       0     1441        M 0x800032dc csrw    mtvec, t0              #; t0  = 0x80003310, (lsu) a4  <-- 4132
       0     1449        M 0x800032e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800032e0
       0     1450        M 0x800032e4 jalr    ra, ra, 544            #; ra  = 0x800032e0, (wrb) ra  <-- 0x800032e8, goto 0x80003500
       0     1466        M 0x80003500 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1467        M 0x80003504 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800032e8 ~~> Word[0x0011ff5c]
       0     1468        M 0x80003508 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003508
       0     1469        M 0x8000350c jalr    ra, ra, -1268          #; ra  = 0x80003508, (wrb) ra  <-- 0x80003510, goto 0x80003014
       0     1487        M 0x80003014 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1488        M 0x80003018 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1489        M 0x8000301c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1492        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1499        M 0x80003020 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1503        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1504        M 0x80003024 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1505        M 0x80003028 ret                            #; ra  = 0x80003510, goto 0x80003510
       0     1507        M                                           #; (lsu) a0  <-- 0x00120190
       0     1508        M 0x80003510 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1537        M                                           #; (lsu) a0  <-- 0
       0     1538        M 0x80003514 mv      zero, a0               #; a0  = 0
       0     1539        M 0x80003518 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1540        M 0x8000351c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1542        M                                           #; (lsu) ra  <-- 0x800032e8
       0     1543        M 0x80003520 ret                            #; ra  = 0x800032e8, goto 0x800032e8
       0     1547        M 0x800032e8 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x800002e8
       0     1548        M 0x800032ec jalr    ra, ra, 844            #; ra  = 0x800002e8, (wrb) ra  <-- 0x800032f0, goto 0x80000634
       0     1553        M 0x80000634 addi    sp, sp, -784           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fc50
       0     1554        M 0x80000638 sw      ra, 780(sp)            #; sp  = 0x0011fc50, 0x800032f0 ~~> Word[0x0011ff5c]
       0     1557        M 0x8000063c fsd     fs0, 768(sp)           #; 0.0 ~~> Doub[0x0011ff50]
       0     1558        M 0x80000640 fsd     fs1, 760(sp)           #; 0.0 ~~> Doub[0x0011ff48]
       0     1559        M 0x80000644 fsd     fs2, 752(sp)           #; 0.0 ~~> Doub[0x0011ff40]
       0     1560        M 0x80000648 fsd     fs3, 744(sp)           #; 0.0 ~~> Doub[0x0011ff38]
       0     1561        M 0x8000064c fsd     fs4, 736(sp)           #; 0.0 ~~> Doub[0x0011ff30]
       0     1571        M 0x80000650 fsd     fs5, 728(sp)           #; 0.0 ~~> Doub[0x0011ff28]
       0     1573        M 0x80000654 fsd     fs6, 720(sp)           #; 0.0 ~~> Doub[0x0011ff20]
       0     1574        M 0x80000658 fsd     fs7, 712(sp)           #; 0.0 ~~> Doub[0x0011ff18]
       0     1575        M 0x8000065c fsd     fs8, 704(sp)           #; 0.0 ~~> Doub[0x0011ff10]
       0     1583        M 0x80000660 fsd     fs9, 696(sp)           #; 0.0 ~~> Doub[0x0011ff08]
       0     1584        M 0x8000066c lui     a0, 0x0                #; (wrb) a0  <-- 0
                         M 0x80000664 fsd     fs10, 688(sp)          #; 0.0 ~~> Doub[0x0011ff00]
       0     1585        M 0x80000668 fsd     fs11, 680(sp)          #; 0.0 ~~> Doub[0x0011fef8]
       0     1593        M 0x80000670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1594        M 0x80000674 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1595        M 0x80000678 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1597        M                                           #; (lsu) a1  <-- 0
       0     1598        M 0x8000067c beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000684
       0     1605        M 0x80000684 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1606        M 0x80000688 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1607        M 0x8000068c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1610        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1619        M 0x80000690 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1622        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1623        M 0x80000694 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1627        M                                           #; (lsu) a0  <-- 0x00100000
       0     1628        M 0x80000698 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1631        M                                           #; (lsu) a1  <-- 0x00100000
       0     1632        M 0x8000069c lw      a4, 84(a2)             #; a2  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1633        M 0x800006a0 addi    a3, a0, 864            #; a0  = 0x00100000, (wrb) a3  <-- 0x00100360
       0     1635        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1636        M 0x800006a4 add     a1, a4, a1             #; a4  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1637        M 0x800006a8 bgeu    a1, a3, pc + 12        #; a1  = 0x0011df30, a3  = 0x00100360, taken, goto 0x800006b4
       0     1648        M 0x800006b4 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     1649        M 0x800006b8 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1650        M 0x800006bc lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     1661        M 0x800006c0 addi    a4, a4, -855           #; a4  = 0x00120000, (wrb) a4  <-- 0x0011fca9
       0     1662        M 0x800006c4 sltu    a4, a0, a4             #; a0  = 0x00100000, a4  = 0x0011fca9, (wrb) a4  <-- 1
       0     1663        M 0x800006c8 and     a1, a1, a4             #; a1  = 1, a4  = 1, (wrb) a1  <-- 1
       0     1664        M 0x800006cc sw      a3, 88(a2)             #; a2  = 0x0011ff70, 0x00100360 ~~> Word[0x0011ffc8]
       0     1674        M 0x800006d0 beqz    a1, pc + 280           #; a1  = 1, not taken
       0     1675        M 0x800006d4 li      a2, 8                  #; (wrb) a2  <-- 8
       0     1676        M 0x800006d8 li      a3, 107                #; (wrb) a3  <-- 107
       0     1677        M 0x800006dc li      a4, 64                 #; (wrb) a4  <-- 64
       0     1688        M 0x800006e0 li      a5, 192                #; (wrb) a5  <-- 192
       0     1689        M 0x800006e4 scfgw   a3, a4                 #; a3  = 107, a4  = 64
       0     1690        M 0x800006e8 scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     1691        M 0x800006ec li      a2, 32                 #; (wrb) a2  <-- 32
       0     1715        M 0x800006f0 scfgw   zero, a2               #; a2  = 32
       0     1716        M 0x800006f4 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1718        M 0x800006fc li      a2, 1                  #; (wrb) a2  <-- 1
                         M 0x800006f8 csrrsi  a2, ssr, 1             #; 
       0     1727        M 0x80000700 li      a3, 109                #; (wrb) a3  <-- 109
       0     1729        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 1
       0     1730        M 0x8000070c addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1731        M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1732        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1739        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 2, a3  = 109, taken, goto 0x80000704
       0     1741        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 2
       0     1742        M 0x8000070c addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1743        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 3, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1744        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1745        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 3
       0     1746        M 0x8000070c addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1747        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 4, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1748        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1749        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 4
       0     1750        M 0x8000070c addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1751        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 5, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1752        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1753        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 5
       0     1754        M 0x8000070c addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1755        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 6, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1756        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1757        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 6
       0     1758        M 0x8000070c addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1759        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 7, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1760        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1761        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 7
       0     1762        M 0x8000070c addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1763        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 8, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1764        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1765        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 8
       0     1766        M 0x8000070c addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     1767        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 9, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1768        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1769        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 9
       0     1770        M 0x8000070c addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     1771        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 10, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     1772        M                                           #; (f:fpu) ft0  <-- 9.0
       0     1773        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 10
       0     1774        M 0x8000070c addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 10.0
       0     1775        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 11, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.0, ft3  = 10.0
       0     1776        M                                           #; (f:fpu) ft0  <-- 10.0
       0     1777        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 11
       0     1778        M 0x8000070c addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 11.0
       0     1779        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 12, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 11.0, ft3  = 11.0
       0     1780        M                                           #; (f:fpu) ft0  <-- 11.0
       0     1781        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 12
       0     1782        M 0x8000070c addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 12.0
       0     1783        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 13, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 12.0, ft3  = 12.0
       0     1784        M                                           #; (f:fpu) ft0  <-- 12.0
       0     1785        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 13
       0     1786        M 0x8000070c addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 13.0
       0     1787        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 14, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 13.0, ft3  = 13.0
       0     1788        M                                           #; (f:fpu) ft0  <-- 13.0
       0     1789        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 14
       0     1790        M 0x8000070c addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 14.0
       0     1791        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 15, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 14.0, ft3  = 14.0
       0     1792        M                                           #; (f:fpu) ft0  <-- 14.0
       0     1793        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 15
       0     1794        M 0x8000070c addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 15.0
       0     1795        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 16, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.0, ft3  = 15.0
       0     1796        M                                           #; (f:fpu) ft0  <-- 15.0
       0     1797        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 16
       0     1798        M 0x8000070c addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 16.0
       0     1799        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 17, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 16.0, ft3  = 16.0
       0     1800        M                                           #; (f:fpu) ft0  <-- 16.0
       0     1801        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 17
       0     1802        M 0x8000070c addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 17.0
       0     1803        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 18, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 17.0, ft3  = 17.0
       0     1804        M                                           #; (f:fpu) ft0  <-- 17.0
       0     1805        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 18
       0     1806        M 0x8000070c addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 18.0
       0     1807        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 19, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 18.0, ft3  = 18.0
       0     1808        M                                           #; (f:fpu) ft0  <-- 18.0
       0     1809        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 19
       0     1810        M 0x8000070c addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 19.0
       0     1811        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 20, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 19.0, ft3  = 19.0
       0     1812        M                                           #; (f:fpu) ft0  <-- 19.0
       0     1813        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 20
       0     1814        M 0x8000070c addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 20.0
       0     1815        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 21, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 20.0, ft3  = 20.0
       0     1816        M                                           #; (f:fpu) ft0  <-- 20.0
       0     1817        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 21
       0     1818        M 0x8000070c addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 21.0
       0     1819        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 22, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.0, ft3  = 21.0
       0     1820        M                                           #; (f:fpu) ft0  <-- 21.0
       0     1821        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 22
       0     1822        M 0x8000070c addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 22.0
       0     1823        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 23, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 22.0, ft3  = 22.0
       0     1824        M                                           #; (f:fpu) ft0  <-- 22.0
       0     1825        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 23
       0     1826        M 0x8000070c addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 23.0
       0     1827        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 24, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 23.0, ft3  = 23.0
       0     1828        M                                           #; (f:fpu) ft0  <-- 23.0
       0     1829        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 24
       0     1830        M 0x8000070c addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 24.0
       0     1831        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 25, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 24.0, ft3  = 24.0
       0     1832        M                                           #; (f:fpu) ft0  <-- 24.0
       0     1833        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 25
       0     1834        M 0x8000070c addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 25.0
       0     1835        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 26, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 25.0, ft3  = 25.0
       0     1836        M                                           #; (f:fpu) ft0  <-- 25.0
       0     1837        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 26
       0     1838        M 0x8000070c addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 26.0
       0     1839        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 27, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 26.0, ft3  = 26.0
       0     1840        M                                           #; (f:fpu) ft0  <-- 26.0
       0     1841        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 27
       0     1842        M 0x8000070c addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 27.0
       0     1843        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 28, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 27.0, ft3  = 27.0
       0     1844        M                                           #; (f:fpu) ft0  <-- 27.0
       0     1845        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 28
       0     1846        M 0x8000070c addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 28.0
       0     1847        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 29, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.0, ft3  = 28.0
       0     1848        M                                           #; (f:fpu) ft0  <-- 28.0
       0     1849        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 29
       0     1850        M 0x8000070c addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 29.0
       0     1851        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 30, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 29.0, ft3  = 29.0
       0     1852        M                                           #; (f:fpu) ft0  <-- 29.0
       0     1853        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 30
       0     1854        M 0x8000070c addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 30.0
       0     1855        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 31, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 30.0, ft3  = 30.0
       0     1856        M                                           #; (f:fpu) ft0  <-- 30.0
       0     1857        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 31
       0     1858        M 0x8000070c addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 31.0
       0     1859        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 32, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 31.0, ft3  = 31.0
       0     1860        M                                           #; (f:fpu) ft0  <-- 31.0
       0     1861        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 32
       0     1862        M 0x8000070c addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 32.0
       0     1863        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 33, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 32.0, ft3  = 32.0
       0     1864        M                                           #; (f:fpu) ft0  <-- 32.0
       0     1865        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 33
       0     1866        M 0x8000070c addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 33.0
       0     1867        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 34, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 33.0, ft3  = 33.0
       0     1868        M                                           #; (f:fpu) ft0  <-- 33.0
       0     1869        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 34
       0     1870        M 0x8000070c addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 34.0
       0     1871        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 35, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 34.0, ft3  = 34.0
       0     1872        M                                           #; (f:fpu) ft0  <-- 34.0
       0     1873        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 35
       0     1874        M 0x8000070c addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 35.0
       0     1875        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 36, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 35.0, ft3  = 35.0
       0     1876        M                                           #; (f:fpu) ft0  <-- 35.0
       0     1877        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 36
       0     1878        M 0x8000070c addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 36.0
       0     1879        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 37, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 36.0, ft3  = 36.0
       0     1880        M                                           #; (f:fpu) ft0  <-- 36.0
       0     1881        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 37
       0     1882        M 0x8000070c addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 37.0
       0     1883        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 38, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 37.0, ft3  = 37.0
       0     1884        M                                           #; (f:fpu) ft0  <-- 37.0
       0     1885        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 38
       0     1886        M 0x8000070c addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 38.0
       0     1887        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 39, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 38.0, ft3  = 38.0
       0     1888        M                                           #; (f:fpu) ft0  <-- 38.0
       0     1889        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 39
       0     1890        M 0x8000070c addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 39.0
       0     1891        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 40, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 39.0, ft3  = 39.0
       0     1892        M                                           #; (f:fpu) ft0  <-- 39.0
       0     1893        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 40
       0     1894        M 0x8000070c addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 40.0
       0     1895        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 41, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 40.0, ft3  = 40.0
       0     1896        M                                           #; (f:fpu) ft0  <-- 40.0
       0     1897        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 41
       0     1898        M 0x8000070c addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 41.0
       0     1899        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 42, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 41.0, ft3  = 41.0
       0     1900        M                                           #; (f:fpu) ft0  <-- 41.0
       0     1901        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 42
       0     1902        M 0x8000070c addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 42.0
       0     1903        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 43, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 42.0, ft3  = 42.0
       0     1904        M                                           #; (f:fpu) ft0  <-- 42.0
       0     1905        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 43
       0     1906        M 0x8000070c addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 43.0
       0     1907        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 44, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 43.0, ft3  = 43.0
       0     1908        M                                           #; (f:fpu) ft0  <-- 43.0
       0     1909        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 44
       0     1910        M 0x8000070c addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 44.0
       0     1911        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 45, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 44.0, ft3  = 44.0
       0     1912        M                                           #; (f:fpu) ft0  <-- 44.0
       0     1913        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 45
       0     1914        M 0x8000070c addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 45.0
       0     1915        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 46, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 45.0, ft3  = 45.0
       0     1916        M                                           #; (f:fpu) ft0  <-- 45.0
       0     1917        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 46
       0     1918        M 0x8000070c addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 46.0
       0     1919        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 47, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 46.0, ft3  = 46.0
       0     1920        M                                           #; (f:fpu) ft0  <-- 46.0
       0     1921        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 47
       0     1922        M 0x8000070c addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 47.0
       0     1923        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 48, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 47.0, ft3  = 47.0
       0     1924        M                                           #; (f:fpu) ft0  <-- 47.0
       0     1925        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 48
       0     1926        M 0x8000070c addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 48.0
       0     1927        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 49, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 48.0, ft3  = 48.0
       0     1928        M                                           #; (f:fpu) ft0  <-- 48.0
       0     1929        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 49
       0     1930        M 0x8000070c addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 49.0
       0     1931        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 50, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 49.0, ft3  = 49.0
       0     1932        M                                           #; (f:fpu) ft0  <-- 49.0
       0     1933        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 50
       0     1934        M 0x8000070c addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 50.0
       0     1935        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 51, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 50.0, ft3  = 50.0
       0     1936        M                                           #; (f:fpu) ft0  <-- 50.0
       0     1937        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 51
       0     1938        M 0x8000070c addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 51.0
       0     1939        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 52, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 51.0, ft3  = 51.0
       0     1940        M                                           #; (f:fpu) ft0  <-- 51.0
       0     1941        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 52
       0     1942        M 0x8000070c addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 52.0
       0     1943        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 53, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 52.0, ft3  = 52.0
       0     1944        M                                           #; (f:fpu) ft0  <-- 52.0
       0     1945        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 53
       0     1946        M 0x8000070c addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 53.0
       0     1947        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 54, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 53.0, ft3  = 53.0
       0     1948        M                                           #; (f:fpu) ft0  <-- 53.0
       0     1949        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 54
       0     1950        M 0x8000070c addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 54.0
       0     1951        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 55, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 54.0, ft3  = 54.0
       0     1952        M                                           #; (f:fpu) ft0  <-- 54.0
       0     1953        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 55
       0     1954        M 0x8000070c addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 55.0
       0     1955        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 56, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 55.0, ft3  = 55.0
       0     1956        M                                           #; (f:fpu) ft0  <-- 55.0
       0     1957        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 56
       0     1958        M 0x8000070c addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 56.0
       0     1959        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 57, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 56.0, ft3  = 56.0
       0     1960        M                                           #; (f:fpu) ft0  <-- 56.0
       0     1961        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 57
       0     1962        M 0x8000070c addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 57.0
       0     1963        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 58, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 57.0, ft3  = 57.0
       0     1964        M                                           #; (f:fpu) ft0  <-- 57.0
       0     1965        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 58
       0     1966        M 0x8000070c addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 58.0
       0     1967        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 59, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 58.0, ft3  = 58.0
       0     1968        M                                           #; (f:fpu) ft0  <-- 58.0
       0     1969        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 59
       0     1970        M 0x8000070c addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 59.0
       0     1971        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 60, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 59.0, ft3  = 59.0
       0     1972        M                                           #; (f:fpu) ft0  <-- 59.0
       0     1973        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 60
       0     1974        M 0x8000070c addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 60.0
       0     1975        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 61, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 60.0, ft3  = 60.0
       0     1976        M                                           #; (f:fpu) ft0  <-- 60.0
       0     1977        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 61
       0     1978        M 0x8000070c addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 61.0
       0     1979        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 62, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 61.0, ft3  = 61.0
       0     1980        M                                           #; (f:fpu) ft0  <-- 61.0
       0     1981        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 62
       0     1982        M 0x8000070c addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 62.0
       0     1983        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 63, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 62.0, ft3  = 62.0
       0     1984        M                                           #; (f:fpu) ft0  <-- 62.0
       0     1985        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 63
       0     1986        M 0x8000070c addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 63.0
       0     1987        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 64, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 63.0, ft3  = 63.0
       0     1988        M                                           #; (f:fpu) ft0  <-- 63.0
       0     1989        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 64
       0     1990        M 0x8000070c addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 64.0
       0     1991        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 65, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 64.0, ft3  = 64.0
       0     1992        M                                           #; (f:fpu) ft0  <-- 64.0
       0     1993        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 65
       0     1994        M 0x8000070c addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 65.0
       0     1995        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 66, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 65.0, ft3  = 65.0
       0     1996        M                                           #; (f:fpu) ft0  <-- 65.0
       0     1997        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 66
       0     1998        M 0x8000070c addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 66.0
       0     1999        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 67, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 66.0, ft3  = 66.0
       0     2000        M                                           #; (f:fpu) ft0  <-- 66.0
       0     2001        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 67
       0     2002        M 0x8000070c addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 67.0
       0     2003        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 68, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 67.0, ft3  = 67.0
       0     2004        M                                           #; (f:fpu) ft0  <-- 67.0
       0     2005        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 68
       0     2006        M 0x8000070c addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 68.0
       0     2007        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 69, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 68.0, ft3  = 68.0
       0     2008        M                                           #; (f:fpu) ft0  <-- 68.0
       0     2009        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 69
       0     2010        M 0x8000070c addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 69.0
       0     2011        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 70, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 69.0, ft3  = 69.0
       0     2012        M                                           #; (f:fpu) ft0  <-- 69.0
       0     2013        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 70
       0     2014        M 0x8000070c addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 70.0
       0     2015        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 71, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 70.0, ft3  = 70.0
       0     2016        M                                           #; (f:fpu) ft0  <-- 70.0
       0     2017        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 71
       0     2018        M 0x8000070c addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 71.0
       0     2019        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 72, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 71.0, ft3  = 71.0
       0     2020        M                                           #; (f:fpu) ft0  <-- 71.0
       0     2021        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 72
       0     2022        M 0x8000070c addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 72.0
       0     2023        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 73, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 72.0, ft3  = 72.0
       0     2024        M                                           #; (f:fpu) ft0  <-- 72.0
       0     2025        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 73
       0     2026        M 0x8000070c addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 73.0
       0     2027        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 74, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 73.0, ft3  = 73.0
       0     2028        M                                           #; (f:fpu) ft0  <-- 73.0
       0     2029        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 74
       0     2030        M 0x8000070c addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 74.0
       0     2031        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 75, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 74.0, ft3  = 74.0
       0     2032        M                                           #; (f:fpu) ft0  <-- 74.0
       0     2033        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 75
       0     2034        M 0x8000070c addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 75.0
       0     2035        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 76, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 75.0, ft3  = 75.0
       0     2036        M                                           #; (f:fpu) ft0  <-- 75.0
       0     2037        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 76
       0     2038        M 0x8000070c addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 76.0
       0     2039        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 77, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 76.0, ft3  = 76.0
       0     2040        M                                           #; (f:fpu) ft0  <-- 76.0
       0     2041        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 77
       0     2042        M 0x8000070c addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 77.0
       0     2043        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 78, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 77.0, ft3  = 77.0
       0     2044        M                                           #; (f:fpu) ft0  <-- 77.0
       0     2045        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 78
       0     2046        M 0x8000070c addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 78.0
       0     2047        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 79, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 78.0, ft3  = 78.0
       0     2048        M                                           #; (f:fpu) ft0  <-- 78.0
       0     2049        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 79
       0     2050        M 0x8000070c addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 79.0
       0     2051        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 80, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 79.0, ft3  = 79.0
       0     2052        M                                           #; (f:fpu) ft0  <-- 79.0
       0     2053        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 80
       0     2054        M 0x8000070c addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 80.0
       0     2055        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 81, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 80.0, ft3  = 80.0
       0     2056        M                                           #; (f:fpu) ft0  <-- 80.0
       0     2057        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 81
       0     2058        M 0x8000070c addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 81.0
       0     2059        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 82, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 81.0, ft3  = 81.0
       0     2060        M                                           #; (f:fpu) ft0  <-- 81.0
       0     2061        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 82
       0     2062        M 0x8000070c addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 82.0
       0     2063        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 83, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 82.0, ft3  = 82.0
       0     2064        M                                           #; (f:fpu) ft0  <-- 82.0
       0     2065        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 83
       0     2066        M 0x8000070c addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 83.0
       0     2067        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 84, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 83.0, ft3  = 83.0
       0     2068        M                                           #; (f:fpu) ft0  <-- 83.0
       0     2069        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 84
       0     2070        M 0x8000070c addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 84.0
       0     2071        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 85, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 84.0, ft3  = 84.0
       0     2072        M                                           #; (f:fpu) ft0  <-- 84.0
       0     2073        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 85
       0     2074        M 0x8000070c addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 85.0
       0     2075        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 86, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 85.0, ft3  = 85.0
       0     2076        M                                           #; (f:fpu) ft0  <-- 85.0
       0     2077        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 86
       0     2078        M 0x8000070c addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 86.0
       0     2079        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 87, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 86.0, ft3  = 86.0
       0     2080        M                                           #; (f:fpu) ft0  <-- 86.0
       0     2081        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 87
       0     2082        M 0x8000070c addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 87.0
       0     2083        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 88, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 87.0, ft3  = 87.0
       0     2084        M                                           #; (f:fpu) ft0  <-- 87.0
       0     2085        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 88
       0     2086        M 0x8000070c addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 88.0
       0     2087        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 89, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 88.0, ft3  = 88.0
       0     2088        M                                           #; (f:fpu) ft0  <-- 88.0
       0     2089        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 89
       0     2090        M 0x8000070c addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 89.0
       0     2091        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 90, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 89.0, ft3  = 89.0
       0     2092        M                                           #; (f:fpu) ft0  <-- 89.0
       0     2093        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 90
       0     2094        M 0x8000070c addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 90.0
       0     2095        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 91, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 90.0, ft3  = 90.0
       0     2096        M                                           #; (f:fpu) ft0  <-- 90.0
       0     2097        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 91
       0     2098        M 0x8000070c addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 91.0
       0     2099        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 92, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 91.0, ft3  = 91.0
       0     2100        M                                           #; (f:fpu) ft0  <-- 91.0
       0     2101        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 92
       0     2102        M 0x8000070c addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 92.0
       0     2103        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 93, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 92.0, ft3  = 92.0
       0     2104        M                                           #; (f:fpu) ft0  <-- 92.0
       0     2105        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 93
       0     2106        M 0x8000070c addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 93.0
       0     2107        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 94, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 93.0, ft3  = 93.0
       0     2108        M                                           #; (f:fpu) ft0  <-- 93.0
       0     2109        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 94
       0     2110        M 0x8000070c addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 94.0
       0     2111        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 95, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 94.0, ft3  = 94.0
       0     2112        M                                           #; (f:fpu) ft0  <-- 94.0
       0     2113        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 95
       0     2114        M 0x8000070c addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 95.0
       0     2115        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 96, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 95.0, ft3  = 95.0
       0     2116        M                                           #; (f:fpu) ft0  <-- 95.0
       0     2117        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 96
       0     2118        M 0x8000070c addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 96.0
       0     2119        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 97, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 96.0, ft3  = 96.0
       0     2120        M                                           #; (f:fpu) ft0  <-- 96.0
       0     2121        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 97
       0     2122        M 0x8000070c addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 97.0
       0     2123        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 98, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 97.0, ft3  = 97.0
       0     2124        M                                           #; (f:fpu) ft0  <-- 97.0
       0     2125        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 98
       0     2126        M 0x8000070c addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
                         M                                           #; (f:fpu) ft3  <-- 98.0
       0     2127        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 99, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 98.0, ft3  = 98.0
       0     2128        M                                           #; (f:fpu) ft0  <-- 98.0
       0     2129        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 99
       0     2130        M 0x8000070c addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
                         M                                           #; (f:fpu) ft3  <-- 99.0
       0     2131        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 100, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 99.0, ft3  = 99.0
       0     2132        M                                           #; (f:fpu) ft0  <-- 99.0
       0     2133        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 100
       0     2134        M 0x8000070c addi    a2, a2, 1              #; a2  = 100, (wrb) a2  <-- 101
                         M                                           #; (f:fpu) ft3  <-- 100.0
       0     2135        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 101, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 100.0, ft3  = 100.0
       0     2136        M                                           #; (f:fpu) ft0  <-- 100.0
       0     2137        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 101
       0     2138        M 0x8000070c addi    a2, a2, 1              #; a2  = 101, (wrb) a2  <-- 102
                         M                                           #; (f:fpu) ft3  <-- 101.0
       0     2139        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 102, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 101.0, ft3  = 101.0
       0     2140        M                                           #; (f:fpu) ft0  <-- 101.0
       0     2141        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 102
       0     2142        M 0x8000070c addi    a2, a2, 1              #; a2  = 102, (wrb) a2  <-- 103
                         M                                           #; (f:fpu) ft3  <-- 102.0
       0     2143        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 103, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 102.0, ft3  = 102.0
       0     2144        M                                           #; (f:fpu) ft0  <-- 102.0
       0     2145        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 103
       0     2146        M 0x8000070c addi    a2, a2, 1              #; a2  = 103, (wrb) a2  <-- 104
                         M                                           #; (f:fpu) ft3  <-- 103.0
       0     2147        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 104, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 103.0, ft3  = 103.0
       0     2148        M                                           #; (f:fpu) ft0  <-- 103.0
       0     2149        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 104
       0     2150        M 0x8000070c addi    a2, a2, 1              #; a2  = 104, (wrb) a2  <-- 105
                         M                                           #; (f:fpu) ft3  <-- 104.0
       0     2151        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 105, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 104.0, ft3  = 104.0
       0     2152        M                                           #; (f:fpu) ft0  <-- 104.0
       0     2153        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 105
       0     2154        M 0x8000070c addi    a2, a2, 1              #; a2  = 105, (wrb) a2  <-- 106
                         M                                           #; (f:fpu) ft3  <-- 105.0
       0     2155        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 106, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 105.0, ft3  = 105.0
       0     2156        M                                           #; (f:fpu) ft0  <-- 105.0
       0     2157        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 106
       0     2158        M 0x8000070c addi    a2, a2, 1              #; a2  = 106, (wrb) a2  <-- 107
                         M                                           #; (f:fpu) ft3  <-- 106.0
       0     2159        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 107, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 106.0, ft3  = 106.0
       0     2160        M                                           #; (f:fpu) ft0  <-- 106.0
       0     2161        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 107
       0     2162        M 0x8000070c addi    a2, a2, 1              #; a2  = 107, (wrb) a2  <-- 108
                         M                                           #; (f:fpu) ft3  <-- 107.0
       0     2163        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 108, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 107.0, ft3  = 107.0
       0     2164        M                                           #; (f:fpu) ft0  <-- 107.0
       0     2165        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 108
       0     2166        M 0x8000070c addi    a2, a2, 1              #; a2  = 108, (wrb) a2  <-- 109
                         M                                           #; (f:fpu) ft3  <-- 108.0
       0     2167        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 109, a3  = 109, not taken
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 108.0, ft3  = 108.0
       0     2168        M                                           #; (f:fpu) ft0  <-- 108.0
       0     2169        M 0x80000718 beqz    a1, pc + 240           #; a1  = 1, not taken
                         M 0x80000714 csrrci  a2, ssr, 1             #; 
       0     2170        M 0x8000071c li      a2, 8                  #; (wrb) a2  <-- 8
       0     2180        M 0x80000720 li      a1, 11                 #; (wrb) a1  <-- 11
       0     2181        M 0x80000724 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2182        M 0x80000728 li      a4, 192                #; (wrb) a4  <-- 192
       0     2183        M 0x8000072c scfgw   a1, a3                 #; a1  = 11, a3  = 64
       0     2192        M 0x80000730 scfgw   a2, a4                 #; a2  = 8, a4  = 192
       0     2193        M 0x80000734 li      a3, 96                 #; (wrb) a3  <-- 96
       0     2194        M 0x80000738 li      a4, 224                #; (wrb) a4  <-- 224
       0     2195        M 0x8000073c scfgw   a2, a3                 #; a2  = 8, a3  = 96, (acc) ra  <-- 0x00d620ab
       0     2204        M 0x80000740 scfgw   a2, a4                 #; a2  = 8, a4  = 224
       0     2205        M 0x80000744 li      a3, 32                 #; (wrb) a3  <-- 32
       0     2206        M 0x80000748 scfgw   zero, a3               #; a3  = 32
       0     2207        M 0x8000074c scfgwi  a0, 800                #; a0  = 0x00100000
       0     2217        M 0x80000750 csrrsi  a3, ssr, 1             #; 
       0     2219        M 0x80000754 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     2220        M                                           #; (f:fpu) ft3  <-- 1.0
       0     2221        M 0x80000758 fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
       0     2222        M 0x8000075c fcvt.d.w ft4, zero             #; ac1  = 0
       0     2223        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2224        M                                           #; (f:fpu) ft3  <-- 3.0
       0     2228        M 0x80000760 li      a1, 104                #; (wrb) a1  <-- 104
       0     2230        M 0x80000764 frep    105, 1, 0b1100, 2      #; outer, 105 issues
       0     2232        M 0x80000768 fadd.d  ft3, ft3, ft0          #; [0764 0:0], ft3  = 3.0, ft0  = 3.0
       0     2235        M                                           #; (f:fpu) ft3  <-- 6.0

## Performance metrics

Performance metrics for section 0 @ (12, 2235):
snitch_loads                                    38
snitch_stores                                   49
fpss_stores                                     12
fpss_loads                                       0
snitch_avg_load_latency                       18.0
snitch_occupancy                            0.2158
snitch_fseq_rel_offloads                      0.36
fseq_yield                                  0.9889
fseq_fpu_yield                              0.9889
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.0159
fpss_avg_load_latency                            0
fpss_occupancy                              0.1201
fpss_fpu_occupancy                          0.1133
fpss_fpu_rel_occupancy                      0.9438
cycles                                        2224
total_ipc                                   0.3359
