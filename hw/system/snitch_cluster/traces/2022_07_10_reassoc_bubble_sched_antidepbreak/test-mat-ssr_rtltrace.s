       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800030d0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800030d0, (wrb) ra  <-- 4120, goto 0x800030d0
       0      269        M 0x800030d0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800040d0
       0      270        M 0x800030d4 addi    gp, gp, -264           #; gp  = 0x800040d0, (wrb) gp  <-- 0x80003fc8
       0      271        M 0x800030d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030d8
       0      272        M 0x800030dc jalr    ra, ra, 964            #; ra  = 0x800030d8, (wrb) ra  <-- 0x800030e0, goto 0x8000349c
       0      292        M 0x8000349c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x800034a0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x800034a4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x800034a8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x800034ac lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x800034b0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x800034b4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x800034b8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x800034bc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x800034c0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x800034c4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x800034c8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x800034cc ret                            #; ra  = 0x800030e0, goto 0x800030e0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800030e0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800030e4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800030e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030e8
       0      508        M 0x800030ec jalr    ra, ra, 1036           #; ra  = 0x800030e8, (wrb) ra  <-- 0x800030f0, goto 0x800034f4
       0      523        M 0x800034f4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x800034f8 ret                            #; ra  = 0x800030f0, goto 0x800030f0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800030f0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800030f4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800030f8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800030fc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80003100 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80003104 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80004104
       0      551        M 0x80003108 addi    t0, t0, -2004          #; t0  = 0x80004104, (wrb) t0  <-- 0x80003930
       0      552        M 0x8000310c auipc   t1, 0x1                #; (wrb) t1  <-- 0x8000410c
       0      562        M 0x80003110 addi    t1, t1, -2008          #; t1  = 0x8000410c, (wrb) t1  <-- 0x80003934
       0      563        M 0x80003114 bge     t0, t1, pc + 16        #; t0  = 0x80003930, t1  = 0x80003934, not taken
       0      564        M 0x80003118 sw      zero, 0(t0)            #; t0  = 0x80003930, 0 ~~> Word[0x80003930]
       0      565        M 0x8000311c addi    t0, t0, 4              #; t0  = 0x80003930, (wrb) t0  <-- 0x80003934
       0      573        M 0x80003120 blt     t0, t1, pc - 8         #; t0  = 0x80003934, t1  = 0x80003934, not taken
       0      574        M 0x80003124 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80003128 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000312c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80003130 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80003134 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80003138 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000313c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80003140 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80003144 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80003148 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000314c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80003150 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80003154 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80003158 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000315c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80003160 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80003164 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80003168 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000316c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80003170 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80003174 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80003178 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000317c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80003180 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80003184 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80003188 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000318c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80003190 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80003194 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80003198 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000319c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800031a0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800031a4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800031a8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800031ac fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800031b0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800031b4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800031b8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800031b8
       0      684        M 0x800031bc lw      t0, 900(t0)            #; t0  = 0x800031b8, t0  <~~ Word[0x8000353c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800031c0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800031c4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800031c8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800031c8
       0      708        M 0x800031cc lw      t2, 880(t2)            #; t2  = 0x800031c8, t2  <~~ Word[0x80003538]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800031d0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800031d4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800031d8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800031dc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800031e0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800031e4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800031e8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800031ec sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800031f0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800031f0
       0      762        M 0x800031f4 addi    t0, t0, 1496           #; t0  = 0x800031f0, (wrb) t0  <-- 0x800037c8
       0      763        M 0x800031f8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800031f8
       0      764        M 0x800031fc addi    t1, t1, 1488           #; t1  = 0x800031f8, (wrb) t1  <-- 0x800037c8
       0      775        M 0x80003200 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003200
       0      776        M 0x80003204 addi    t2, t2, 1480           #; t2  = 0x80003200, (wrb) t2  <-- 0x800037c8
       0      777        M 0x80003208 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80003208
       0      778        M 0x8000320c addi    t3, t3, 1488           #; t3  = 0x80003208, (wrb) t3  <-- 0x800037d8
       0      787        M 0x80003210 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800037c8, (wrb) sp  <-- 0x80123738
       0      788        M 0x80003214 sub     sp, sp, t1             #; sp  = 0x80123738, t1  = 0x800037c8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80003218 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800037c8, (wrb) sp  <-- 0x80123738
       0      790        M 0x8000321c sub     sp, sp, t3             #; sp  = 0x80123738, t3  = 0x800037d8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80003220 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80003224 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80003228 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000322c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80003230 bge     t0, t1, pc + 24        #; t0  = 0x800037c8, t1  = 0x800037c8, taken, goto 0x80003248
       0      823        M 0x80003248 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003248
       0      824        M 0x8000324c addi    t0, t0, 1408           #; t0  = 0x80003248, (wrb) t0  <-- 0x800037c8
       0      835        M 0x80003250 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003250
       0      836        M 0x80003254 addi    t1, t1, 1416           #; t1  = 0x80003250, (wrb) t1  <-- 0x800037d8
       0      837        M 0x80003258 bge     t0, t1, pc + 20        #; t0  = 0x800037c8, t1  = 0x800037d8, not taken
       0      838        M 0x8000325c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80003260 addi    t0, t0, 4              #; t0  = 0x800037c8, (wrb) t0  <-- 0x800037cc
       0      848        M 0x80003264 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80003268 blt     t0, t2, pc - 12        #; t0  = 0x800037cc, t2  = 0x800037c8, not taken
       0      850        M 0x8000326c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80003270 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80003274 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80003278 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000327c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80003280 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80003284 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003284
       0      877        M 0x80003288 jalr    ra, ra, -1804          #; ra  = 0x80003284, (wrb) ra  <-- 0x8000328c, goto 0x80002b78
       0      899        M 0x80002b78 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x80002b7c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002b80 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002b84 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002b88 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x80002b8c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1029        M                                           #; (lsu) a7  <-- 1
       0     1030        M 0x80002b90 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1031        M 0x80002b94 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1060        M 0x80002b98 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1061        M 0x80002b9c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1062        M 0x80002ba0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1063        M 0x80002ba4 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1065        M                                           #; (acc) a0  <-- 0x02580533
       0     1069        M                                           #; (lsu) t0  <-- 8
       0     1070        M 0x80002ba8 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1071        M 0x80002bac sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1074        M 0x80002bb0 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1075        M 0x80002bb4 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1076        M 0x80002bb8 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1079        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1080        M 0x80002bbc sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1087        M 0x80002bc0 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1088        M 0x80002bc4 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1109        M                                           #; (lsu) a0  <-- 0x80000000
       0     1110        M 0x80002bc8 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1111        M 0x80002bcc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1112        M 0x80002bd0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1149        M                                           #; (lsu) a0  <-- 0
       0     1150        M 0x80002bd4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1151        M 0x80002bd8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1170        M 0x80002bdc sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1171        M 0x80002be0 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x80002be4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1181        M 0x80002be8 sub     a3, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a3  <-- 0x0001df30
       0     1182        M 0x80002bec sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1183        M 0x80002bf0 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1184        M 0x80002bf4 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1200        M                                           #; (lsu) a0  <-- 0x00020000
       0     1201        M 0x80002bf8 add     t3, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) t3  <-- 0x00120000
       0     1202        M 0x80002bfc addi    a1, t3, 400            #; t3  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1203        M 0x80002c00 sltu    t4, t3, a0             #; t3  = 0x00120000, a0  = 0x00020000, (wrb) t4  <-- 0
       0     1204        M 0x80002c04 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80002c08 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1206        M 0x80002c0c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1214        M 0x80002c10 add     t5, t3, a1             #; t3  = 0x00120000, a1  = 0x00010000, (wrb) t5  <-- 0x00130000
       0     1215        M 0x80002c14 sltu    a1, t5, t3             #; t5  = 0x00130000, t3  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80002c18 sw      t5, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1217        M 0x80002c1c add     a1, t4, a1             #; t4  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1228        M 0x80002c20 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1229        M 0x80002c24 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x80002c28 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80002c2c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x80002c30 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1241        M 0x80002c34 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1242        M 0x80002c38 add     a0, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1243        M 0x80002c3c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1252        M 0x80002c40 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1253        M 0x80002c44 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1255        M 0x80002c48 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x80002c4c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x80002c50 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x80002c54 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1269        M                                           #; (lsu) a0  <-- 8
       0     1270        M 0x80002c58 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1271        M 0x80002c5c lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x80002c60 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1278        M 0x80002c64 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1279        M 0x80002c68 li      a1, 1096               #; (wrb) a1  <-- 1096
       0     1280        M 0x80002c6c mul     a0, a7, a1             #; a7  = 0, a1  = 1096
       0     1288        M 0x80002c70 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003c70
       0     1289        M 0x80002c74 addi    a1, a1, -828           #; a1  = 0x80003c70, (wrb) a1  <-- 0x80003934
       0     1290        M 0x80002c78 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003934, (wrb) a0  <-- 0x80003934
       0     1291        M 0x80002c7c sw      zero, 0(a0)            #; a0  = 0x80003934, 0 ~~> Word[0x80003934]
       0     1300        M 0x80002c80 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1301        M 0x80002c84 lw      t6, 48(a4)             #; a4  = 4132, t6  <~~ Word[0x00001054]
       0     1302        M 0x80002c88 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1303        M 0x80002c8c addi    a4, t3, 384            #; t3  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1312        M 0x80002c90 sw      a3, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1333        M 0x80002c94 sw      t3, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1334        M 0x80002c98 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1335        M 0x80002c9c lui     a3, 0x0                #; (wrb) a3  <-- 0
       0     1342        M                                           #; (lsu) t6  <-- 0xffff0000
       0     1343        M 0x80002ca0 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1344        M 0x80002ca4 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1345        M 0x80002ca8 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1346        M 0x80002cac sw      t6, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1347        M 0x80002cb0 lw      a0, 0(a1)              #; a1  = 0x80003934, a0  <~~ Word[0x80003934]
       0     1348        M 0x80002cb4 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1362        M                                           #; (lsu) a0  <-- 0
       0     1363        M 0x80002cb8 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1364        M 0x80002cbc andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1365        M 0x80002cc0 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1366        M 0x80002cc4 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1367        M 0x80002cc8 add     a0, a3, tp             #; a3  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1368        M 0x80002ccc lui     a5, 0x0                #; (wrb) a5  <-- 0
       0     1369        M 0x80002cd0 sw      t6, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1370        M 0x80002cd4 add     a0, a5, tp             #; a5  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1371        M 0x80002cd8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1372        M 0x80002cdc ret                            #; ra  = 0x8000328c, goto 0x8000328c
       0     1383        M 0x8000328c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1386        M                                           #; (lsu) a0  <-- 0
       0     1387        M 0x80003290 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1390        M                                           #; (lsu) a1  <-- 8
       0     1391        M 0x80003294 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1394        M                                           #; (lsu) a2  <-- 0x00100000
       0     1395        M 0x80003298 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1398        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1399        M 0x8000329c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1400        M 0x800032a0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1401        M 0x800032a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800032a4
       0     1402        M 0x800032a8 addi    t0, t0, 60             #; t0  = 0x800032a4, (wrb) t0  <-- 0x800032e0
       0     1403        M 0x800032ac csrw    mtvec, t0              #; t0  = 0x800032e0, (lsu) a4  <-- 4132
       0     1412        M 0x800032b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800032b0
       0     1413        M 0x800032b4 jalr    ra, ra, 544            #; ra  = 0x800032b0, (wrb) ra  <-- 0x800032b8, goto 0x800034d0
       0     1428        M 0x800034d0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1429        M 0x800034d4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800032b8 ~~> Word[0x0011ff5c]
       0     1430        M 0x800034d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800034d8
       0     1431        M 0x800034dc jalr    ra, ra, -2008          #; ra  = 0x800034d8, (wrb) ra  <-- 0x800034e0, goto 0x80002d00
       0     1450        M 0x80002d00 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1451        M 0x80002d04 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1452        M 0x80002d08 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1455        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1456        M 0x80002d0c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1460        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1462        M 0x80002d10 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1463        M 0x80002d14 ret                            #; ra  = 0x800034e0, goto 0x800034e0
       0     1466        M                                           #; (lsu) a0  <-- 0x00120190
       0     1467        M 0x800034e0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1496        M                                           #; (lsu) a0  <-- 0
       0     1497        M 0x800034e4 mv      zero, a0               #; a0  = 0
       0     1498        M 0x800034e8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1499        M 0x800034ec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1501        M                                           #; (lsu) ra  <-- 0x800032b8
       0     1502        M 0x800034f0 ret                            #; ra  = 0x800032b8, goto 0x800032b8
       0     1506        M 0x800032b8 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x800002b8
       0     1507        M 0x800032bc jalr    ra, ra, 892            #; ra  = 0x800002b8, (wrb) ra  <-- 0x800032c0, goto 0x80000634
       0     1512        M 0x80000634 addi    sp, sp, -64            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff20
       0     1513        M 0x80000638 sw      ra, 60(sp)             #; sp  = 0x0011ff20, 0x800032c0 ~~> Word[0x0011ff5c]
       0     1514        M 0x8000063c sw      s0, 56(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff58]
       0     1515        M 0x80000640 sw      s1, 52(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff54]
       0     1516        M 0x80000644 sw      s2, 48(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff50]
       0     1517        M 0x80000648 sw      s3, 44(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff4c]
       0     1518        M 0x8000064c sw      s4, 40(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff48]
       0     1528        M 0x80000650 sw      s5, 36(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff44]
       0     1529        M 0x80000654 sw      s6, 32(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff40]
       0     1532        M 0x80000658 fsd     fs0, 24(sp)            #; 0.0 ~~> Doub[0x0011ff38]
       0     1533        M 0x8000065c fsd     fs1, 16(sp)            #; 0.0 ~~> Doub[0x0011ff30]
       0     1540        M 0x80000660 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1541        M 0x80000664 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1542        M 0x80000668 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1543        M 0x8000066c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1545        M                                           #; (lsu) a1  <-- 0
       0     1552        M 0x80000670 bnez    a1, pc + 2200          #; a1  = 0, not taken
       0     1553        M 0x80000674 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1554        M 0x80000678 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1555        M 0x8000067c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1558        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1564        M 0x80000680 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1567        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1568        M 0x80000684 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1571        M                                           #; (lsu) s0  <-- 0x00100000
       0     1572        M 0x80000688 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1575        M                                           #; (lsu) a1  <-- 0x00100000
       0     1576        M 0x8000068c lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1579        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1580        M 0x80000690 addi    a2, s0, 240            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000f0
       0     1581        M 0x80000694 add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1582        M 0x80000698 bgeu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x001000f0, taken, goto 0x800006c4
       0     1606        M 0x800006c4 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1607        M 0x800006c8 mv      s0, a2                 #; a2  = 0x001000f0, (wrb) s0  <-- 0x001000f0
       0     1608        M 0x800006cc sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1619        M 0x800006d0 addi    a2, s0, 336            #; s0  = 0x001000f0, (wrb) a2  <-- 0x00100240
       0     1620        M 0x800006d4 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x00100240, taken, goto 0x800006a8
       0     1621        M 0x800006a8 mv      s6, s0                 #; s0  = 0x001000f0, (wrb) s6  <-- 0x001000f0
       0     1622        M 0x800006ac mv      s0, a2                 #; a2  = 0x00100240, (wrb) s0  <-- 0x00100240
       0     1635        M 0x800006b0 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100240 ~~> Word[0x0011ffc8]
       0     1636        M 0x800006b4 addi    a2, s0, 280            #; s0  = 0x00100240, (wrb) a2  <-- 0x00100358
       0     1637        M 0x800006b8 bltu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x00100358, not taken
       0     1638        M 0x800006bc sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100358 ~~> Word[0x0011ffc8]
       0     1639        M 0x800006c0 j       pc + 0x28              #; goto 0x800006e8
       0     1658        M 0x800006e8 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1659        M 0x800006ec srli    a1, s2, 20             #; s2  = 0x00100000, (wrb) a1  <-- 1
       0     1670        M 0x800006f0 addi    a0, s2, 232            #; s2  = 0x00100000, (wrb) a0  <-- 0x001000e8
       0     1671        M 0x800006f4 auipc   a6, 0x3                #; (wrb) a6  <-- 0x800036f4
       0     1672        M 0x800006f8 addi    a6, a6, 228            #; a6  = 0x800036f4, (wrb) a6  <-- 0x800037d8
       0     1673        M 0x800006fc addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     1682        M 0x80000700 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1683        M 0x80000704 sltu    a0, a0, a2             #; a0  = 0x001000e8, a2  = 0x00120001, (wrb) a0  <-- 1
       0     1684        M 0x80000708 and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     1685        M 0x8000070c beqz    a0, pc + 404           #; a0  = 1, not taken
       0     1694        M 0x80000710 li      a0, 8                  #; (wrb) a0  <-- 8
       0     1695        M 0x80000714 li      a1, 29                 #; (wrb) a1  <-- 29
       0     1696        M 0x80000718 li      a2, 64                 #; (wrb) a2  <-- 64
       0     1697        M 0x8000071c li      a3, 192                #; (wrb) a3  <-- 192
       0     1706        M 0x80000720 li      a5, 32                 #; (wrb) a5  <-- 32
       0     1707        M 0x80000724 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003724
       0     1708        M 0x80000728 addi    a4, a4, 212            #; a4  = 0x80003724, (wrb) a4  <-- 0x800037f8
       0     1711        M 0x8000072c fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x800037d8]
       0     1718        M 0x80000730 scfgw   a1, a2                 #; a1  = 29, a2  = 64
       0     1719        M 0x80000734 scfgw   a0, a3                 #; a0  = 8, a3  = 192
       0     1720        M 0x80000738 scfgw   zero, a5               #; a5  = 32
                         M                                           #; (f:lsu) ft3  <-- 3.141
       0     1721        M 0x8000073c scfgwi  s2, 896                #; s2  = 0x00100000
       0     1731        M 0x80000744 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003744
                         M 0x80000740 csrrsi  a1, ssr, 1             #; 
       0     1732        M 0x80000748 addi    a2, a2, 164            #; a2  = 0x80003744, (wrb) a2  <-- 0x800037e8
       0     1733        M 0x8000074c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000374c
       0     1742        M 0x80000750 addi    a3, a3, 164            #; a3  = 0x8000374c, (wrb) a3  <-- 0x800037f0
       0     1743        M 0x80000754 auipc   a5, 0x3                #; (wrb) a5  <-- 0x80003754
       0     1744        M 0x80000758 addi    a5, a5, 172            #; a5  = 0x80003754, (wrb) a5  <-- 0x80003800
       0     1745        M 0x8000075c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000375c
       0     1754        M 0x80000760 addi    a0, a0, 132            #; a0  = 0x8000375c, (wrb) a0  <-- 0x800037e0
       0     1756        M 0x80000768 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003768
       0     1757        M 0x8000076c addi    a4, a4, 184            #; a4  = 0x80003768, (wrb) a4  <-- 0x80003820
                         M 0x80000764 fld     ft7, 0(a4)             #; ft7  <~~ Doub[0x800037f8]
       0     1766        M                                           #; (f:lsu) ft7  <-- 15.705
       0     1767        M 0x80000774 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003774
       0     1768        M 0x80000778 addi    a1, a1, 148            #; a1  = 0x80003774, (wrb) a1  <-- 0x80003808
                         M 0x80000770 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800037e8]
       0     1769        M 0x8000077c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000377c
       0     1777        M                                           #; (f:lsu) ft5  <-- 9.423
       0     1778        M 0x80000780 addi    a2, a2, 148            #; a2  = 0x8000377c, (wrb) a2  <-- 0x80003810
       0     1781        M 0x8000078c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000378c
                         M 0x80000784 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800037f0]
       0     1782        M 0x80000788 fld     fa0, 0(a5)             #; fa0  <~~ Doub[0x80003800]
       0     1790        M 0x80000790 addi    a3, a3, 140            #; a3  = 0x8000378c, (wrb) a3  <-- 0x80003818
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     1791        M 0x80000794 auipc   a5, 0x3                #; (wrb) a5  <-- 0x80003794
                         M                                           #; (f:lsu) fa0  <-- 18.846
       0     1792        M 0x80000798 addi    a5, a5, 148            #; a5  = 0x80003794, (wrb) a5  <-- 0x80003828
       0     1795        M 0x8000079c fld     fa4, 0(a4)             #; fa4  <~~ Doub[0x80003820]
       0     1803        M 0x800007a4 auipc   a4, 0x3                #; (wrb) a4  <-- 0x800037a4
       0     1804        M 0x800007a8 addi    a4, a4, 164            #; a4  = 0x800037a4, (wrb) a4  <-- 0x80003848
                         M 0x800007a0 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800037e0], (f:lsu) fa4  <-- 31.41
       0     1807        M 0x800007ac fld     fa1, 0(a1)             #; fa1  <~~ Doub[0x80003808]
       0     1813        M                                           #; (f:lsu) ft4  <-- 6.282
       0     1815        M 0x800007b4 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037b4
       0     1816        M 0x800007b8 addi    a1, a1, 124            #; a1  = 0x800037b4, (wrb) a1  <-- 0x80003830
                         M 0x800007b0 fld     fa2, 0(a2)             #; fa2  <~~ Doub[0x80003810], (f:lsu) fa1  <-- 21.9870000
       0     1817        M 0x800007bc auipc   a2, 0x3                #; (wrb) a2  <-- 0x800037bc
       0     1825        M                                           #; (f:lsu) fa2  <-- 25.128
       0     1826        M 0x800007c0 addi    a2, a2, 124            #; a2  = 0x800037bc, (wrb) a2  <-- 0x80003838
       0     1829        M 0x800007cc auipc   a3, 0x3                #; (wrb) a3  <-- 0x800037cc
                         M 0x800007c4 fld     fa3, 0(a3)             #; fa3  <~~ Doub[0x80003818]
       0     1830        M 0x800007c8 fld     fa5, 0(a5)             #; fa5  <~~ Doub[0x80003828]
       0     1838        M 0x800007d0 addi    a3, a3, 116            #; a3  = 0x800037cc, (wrb) a3  <-- 0x80003840
                         M                                           #; (f:lsu) fa3  <-- 28.269
       0     1839        M                                           #; (f:lsu) fa5  <-- 34.551
       0     1840        M 0x800007d8 auipc   a5, 0x3                #; (wrb) a5  <-- 0x800037d8
       0     1841        M 0x800007dc addi    a5, a5, 120            #; a5  = 0x800037d8, (wrb) a5  <-- 0x80003850
                         M 0x800007d4 fld     fa7, 0(a4)             #; fa7  <~~ Doub[0x80003848]
       0     1850        M 0x800007e0 auipc   a4, 0x3                #; (wrb) a4  <-- 0x800037e0
                         M                                           #; (f:lsu) fa7  <-- 47.115
       0     1851        M 0x800007e4 addi    a4, a4, 144            #; a4  = 0x800037e0, (wrb) a4  <-- 0x80003870
       0     1854        M 0x800007e8 fld     fa6, 0(a1)             #; fa6  <~~ Doub[0x80003830]
       0     1855        M 0x800007ec fld     fs1, 0(a2)             #; fs1  <~~ Doub[0x80003838]
       0     1863        M 0x800007f4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800037f4
                         M                                           #; (f:lsu) fa6  <-- 37.692
       0     1864        M 0x800007f8 addi    a2, a2, 108            #; a2  = 0x800037f4, (wrb) a2  <-- 0x80003860
                         M 0x800007f0 fld     ft10, 0(a3)            #; ft10 <~~ Doub[0x80003840], (f:lsu) fs1  <-- 40.833
       0     1865        M 0x800007fc auipc   a3, 0x3                #; (wrb) a3  <-- 0x800037fc
       0     1873        M                                           #; (f:lsu) ft10 <-- 43.9740000
       0     1874        M 0x80000800 addi    a3, a3, 108            #; a3  = 0x800037fc, (wrb) a3  <-- 0x80003868
       0     1875        M 0x80000804 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003804
       0     1876        M 0x80000808 addi    a1, a1, 84             #; a1  = 0x80003804, (wrb) a1  <-- 0x80003858
       0     1879        M 0x8000080c fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
       0     1880        M                                           #; (f:fpu) ft0  <-- 3.141
       0     1888        M 0x80000810 fld     ft8, 0(a5)             #; ft8  <~~ Doub[0x80003850]
       0     1889        M 0x80000814 fld     ft11, 0(a2)            #; ft11 <~~ Doub[0x80003860]
       0     1897        M                                           #; (f:lsu) ft8  <-- 50.256
       0     1898        M 0x80000818 fld     fs0, 0(a3)             #; fs0  <~~ Doub[0x80003868], (f:lsu) ft11 <-- 56.538
       0     1899        M 0x8000081c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     1900        M 0x80000820 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.423, ft5  = 9.423, (f:fpu) ft0  <-- 6.282
       0     1901        M 0x80000824 fsgnj.d ft0, ft6, ft6          #; ft6  = 12.564, ft6  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1902        M 0x80000828 fsgnj.d ft0, ft7, ft7          #; ft7  = 15.705, ft7  = 15.705, (f:fpu) ft0  <-- 12.564
       0     1903        M 0x8000082c fsgnj.d ft0, fa0, fa0          #; fa0  = 18.846, fa0  = 18.846, (f:fpu) ft0  <-- 15.705
       0     1904        M                                           #; (f:fpu) ft0  <-- 18.846
       0     1907        M                                           #; (f:lsu) fs0  <-- 59.679
       0     1912        M 0x80000830 fsgnj.d ft0, fa1, fa1          #; fa1  = 21.9870000, fa1  = 21.9870000
       0     1913        M 0x80000834 fsgnj.d ft0, fa2, fa2          #; fa2  = 25.128, fa2  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     1914        M 0x80000838 fsgnj.d ft0, fa3, fa3          #; fa3  = 28.269, fa3  = 28.269, (f:fpu) ft0  <-- 25.128
       0     1915        M 0x8000083c fsgnj.d ft0, fa4, fa4          #; fa4  = 31.41, fa4  = 31.41, (f:fpu) ft0  <-- 28.269
       0     1916        M                                           #; (f:fpu) ft0  <-- 31.41
       0     1924        M 0x80000840 fsgnj.d ft0, fa5, fa5          #; fa5  = 34.551, fa5  = 34.551
       0     1925        M 0x80000844 fld     fa5, 0(a1)             #; fa5  <~~ Doub[0x80003858], (f:fpu) ft0  <-- 34.551
       0     1926        M 0x80000848 fsgnj.d ft0, fa6, fa6          #; fa6  = 37.692, fa6  = 37.692
       0     1927        M 0x8000084c fsgnj.d ft0, fs1, fs1          #; fs1  = 40.833, fs1  = 40.833, (f:fpu) ft0  <-- 37.692
       0     1928        M                                           #; (f:fpu) ft0  <-- 40.833
       0     1934        M                                           #; (f:lsu) fa5  <-- 53.397
       0     1936        M 0x80000850 fld     fs1, 0(a4)             #; fs1  <~~ Doub[0x80003870]
       0     1937        M 0x80000854 fsgnj.d ft0, ft10, ft10        #; ft10 = 43.9740000, ft10 = 43.9740000
       0     1938        M 0x80000858 fsgnj.d ft0, fa7, fa7          #; fa7  = 47.115, fa7  = 47.115, (f:fpu) ft0  <-- 43.9740000
       0     1939        M 0x8000085c fsgnj.d ft0, ft8, ft8          #; ft8  = 50.256, ft8  = 50.256, (f:fpu) ft0  <-- 47.115
       0     1940        M                                           #; (f:fpu) ft0  <-- 50.256
       0     1945        M                                           #; (f:lsu) fs1  <-- 62.82
       0     1948        M 0x80000860 fsgnj.d ft0, fa5, fa5          #; fa5  = 53.397, fa5  = 53.397
       0     1949        M 0x80000864 fsgnj.d ft0, ft11, ft11        #; ft11 = 56.538, ft11 = 56.538, (f:fpu) ft0  <-- 53.397
       0     1950        M 0x80000868 fsgnj.d ft0, fs0, fs0          #; fs0  = 59.679, fs0  = 59.679, (f:fpu) ft0  <-- 56.538
       0     1951        M 0x8000086c fsgnj.d ft0, fs1, fs1          #; fs1  = 62.82, fs1  = 62.82, (f:fpu) ft0  <-- 59.679
       0     1952        M                                           #; (f:fpu) ft0  <-- 62.82
       0     1960        M 0x80000870 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
       0     1961        M 0x80000874 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
       0     1962        M 0x80000878 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.423, ft5  = 9.423, (f:fpu) ft0  <-- 6.282
       0     1963        M 0x8000087c fsgnj.d ft0, ft6, ft6          #; ft6  = 12.564, ft6  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1964        M                                           #; (f:fpu) ft0  <-- 12.564
       0     1972        M 0x80000880 fsgnj.d ft0, ft7, ft7          #; ft7  = 15.705, ft7  = 15.705
       0     1973        M 0x80000884 fsgnj.d ft0, fa0, fa0          #; fa0  = 18.846, fa0  = 18.846, (f:fpu) ft0  <-- 15.705
       0     1974        M 0x80000888 fsgnj.d ft0, fa1, fa1          #; fa1  = 21.9870000, fa1  = 21.9870000, (f:fpu) ft0  <-- 18.846
       0     1975        M 0x8000088c fsgnj.d ft0, fa2, fa2          #; fa2  = 25.128, fa2  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     1976        M                                           #; (f:fpu) ft0  <-- 25.128
       0     1984        M 0x80000890 fsgnj.d ft0, fa3, fa3          #; fa3  = 28.269, fa3  = 28.269
       0     1985        M 0x8000089c j       pc + 0x54              #; goto 0x800008f0
                         M 0x80000894 fsgnj.d ft0, fa4, fa4          #; fa4  = 31.41, fa4  = 31.41, (f:fpu) ft0  <-- 28.269
       0     1986        M 0x80000898 csrrci  a5, ssr, 1             #; (f:fpu) ft0  <-- 31.41
       0     1994        M 0x800008f0 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1995        M 0x800008f4 srli    a1, s6, 20             #; s6  = 0x001000f0, (wrb) a1  <-- 1
       0     1996        M 0x800008f8 addi    a0, s6, 328            #; s6  = 0x001000f0, (wrb) a0  <-- 0x00100238
       0     1997        M 0x800008fc addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     2006        M 0x80000900 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     2007        M 0x80000904 sltu    a0, a0, a2             #; a0  = 0x00100238, a2  = 0x00120001, (wrb) a0  <-- 1
       0     2008        M 0x80000908 and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     2009        M 0x8000090c beqz    a0, pc + 124           #; a0  = 1, not taken
       0     2018        M 0x80000910 li      a2, 41                 #; (wrb) a2  <-- 41
       0     2019        M 0x80000914 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2021        M 0x8000091c li      a0, 8                  #; (wrb) a0  <-- 8
       0     2022        M 0x80000918 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x800037d8]
       0     2030        M 0x80000920 li      a4, 32                 #; (wrb) a4  <-- 32
       0     2031        M 0x80000924 li      a1, 0                  #; (wrb) a1  <-- 0
                         M                                           #; (f:lsu) ft3  <-- 3.141
       0     2032        M 0x80000928 scfgw   a2, a3                 #; a2  = 41, a3  = 64
       0     2033        M 0x8000092c li      a3, 192                #; (wrb) a3  <-- 192
       0     2042        M 0x80000930 li      a2, 42                 #; (wrb) a2  <-- 42
       0     2043        M 0x80000934 scfgw   a0, a3                 #; a0  = 8, a3  = 192
       0     2044        M 0x80000938 lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
       0     2045        M 0x8000093c scfgw   zero, a4               #; a4  = 32
       0     2054        M 0x80000940 li      a3, 1                  #; (wrb) a3  <-- 1
       0     2055        M 0x80000944 li      a4, 20                 #; (wrb) a4  <-- 20
       0     2056        M 0x80000948 scfgwi  s6, 896                #; s6  = 0x001000f0
       0     2058        M 0x8000094c csrrsi  a5, ssr, 1             #; 
       0     2066        M 0x80000950 addi    a0, a0, -819           #; a0  = 0xccccd000, (wrb) a0  <-- 0xcccccccd
       0     2067        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 0, a0  = 0xcccccccd
       0     2068        M 0x80000958 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     2069        M 0x8000095c addi    a2, a2, -1             #; a2  = 42, (wrb) a2  <-- 41
       0     2078        M 0x80000960 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     2079        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2082        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2083        M 0x80000968 sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
       0     2084        M 0x8000096c addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
       0     2091        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2092        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2093        M 0x8000097c bnez    a2, pc - 40            #; a2  = 41, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2094        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 1, a0  = 0xcccccccd
       0     2095        M 0x80000958 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
       0     2096        M 0x8000095c addi    a2, a2, -1             #; a2  = 41, (wrb) a2  <-- 40
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2097        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2098        M 0x80000960 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 3.141
       0     2099        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2102        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2103        M 0x80000968 sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
       0     2104        M 0x8000096c addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
       0     2106        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2107        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2108        M 0x8000097c bnez    a2, pc - 40            #; a2  = 40, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2109        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 2, a0  = 0xcccccccd
       0     2110        M 0x80000958 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
       0     2111        M 0x8000095c addi    a2, a2, -1             #; a2  = 40, (wrb) a2  <-- 39
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2112        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2113        M 0x80000960 srli    a5, a5, 4              #; a5  = 1, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 6.282
       0     2114        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2117        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2118        M 0x80000968 sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
       0     2119        M 0x8000096c addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
       0     2121        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2122        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2123        M 0x8000097c bnez    a2, pc - 40            #; a2  = 39, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2124        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 3, a0  = 0xcccccccd
       0     2125        M 0x80000958 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
       0     2126        M 0x8000095c addi    a2, a2, -1             #; a2  = 39, (wrb) a2  <-- 38
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2127        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2128        M 0x80000960 srli    a5, a5, 4              #; a5  = 2, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 9.423
       0     2129        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2132        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2133        M 0x80000968 sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
       0     2134        M 0x8000096c addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
       0     2136        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2137        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2138        M 0x8000097c bnez    a2, pc - 40            #; a2  = 38, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2139        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 4, a0  = 0xcccccccd
       0     2140        M 0x80000958 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
       0     2141        M 0x8000095c addi    a2, a2, -1             #; a2  = 38, (wrb) a2  <-- 37
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2142        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2143        M 0x80000960 srli    a5, a5, 4              #; a5  = 3, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 12.564
       0     2144        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2147        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2148        M 0x80000968 sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
       0     2149        M 0x8000096c addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
       0     2151        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2152        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2153        M 0x8000097c bnez    a2, pc - 40            #; a2  = 37, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2154        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 5, a0  = 0xcccccccd
       0     2155        M 0x80000958 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
       0     2156        M 0x8000095c addi    a2, a2, -1             #; a2  = 37, (wrb) a2  <-- 36
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2157        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2158        M 0x80000960 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 15.705
       0     2159        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2162        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2163        M 0x80000968 sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
       0     2164        M 0x8000096c addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
       0     2166        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2167        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2168        M 0x8000097c bnez    a2, pc - 40            #; a2  = 36, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2169        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 6, a0  = 0xcccccccd
       0     2170        M 0x80000958 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
       0     2171        M 0x8000095c addi    a2, a2, -1             #; a2  = 36, (wrb) a2  <-- 35
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2172        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2173        M 0x80000960 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 18.846
       0     2174        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2177        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2178        M 0x80000968 sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
       0     2179        M 0x8000096c addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
       0     2181        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2182        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2183        M 0x8000097c bnez    a2, pc - 40            #; a2  = 35, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2184        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 7, a0  = 0xcccccccd
       0     2185        M 0x80000958 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
       0     2186        M 0x8000095c addi    a2, a2, -1             #; a2  = 35, (wrb) a2  <-- 34
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2187        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2188        M 0x80000960 srli    a5, a5, 4              #; a5  = 5, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2189        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2192        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2193        M 0x80000968 sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
       0     2194        M 0x8000096c addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
       0     2196        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2197        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2198        M 0x8000097c bnez    a2, pc - 40            #; a2  = 34, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2199        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 8, a0  = 0xcccccccd
       0     2200        M 0x80000958 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
       0     2201        M 0x8000095c addi    a2, a2, -1             #; a2  = 34, (wrb) a2  <-- 33
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2202        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2203        M 0x80000960 srli    a5, a5, 4              #; a5  = 6, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 25.128
       0     2204        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2207        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2208        M 0x80000968 sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
       0     2209        M 0x8000096c addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
       0     2211        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2212        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2213        M 0x8000097c bnez    a2, pc - 40            #; a2  = 33, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2214        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 9, a0  = 0xcccccccd
       0     2215        M 0x80000958 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
       0     2216        M 0x8000095c addi    a2, a2, -1             #; a2  = 33, (wrb) a2  <-- 32
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2217        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2218        M 0x80000960 srli    a5, a5, 4              #; a5  = 7, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 28.269
       0     2219        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2222        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2223        M 0x80000968 sub     a5, a3, a5             #; a3  = 10, a5  = 0, (wrb) a5  <-- 10
       0     2224        M 0x8000096c addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
       0     2226        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2227        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2228        M 0x8000097c bnez    a2, pc - 40            #; a2  = 32, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2229        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 10, a0  = 0xcccccccd
       0     2230        M 0x80000958 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
       0     2231        M 0x8000095c addi    a2, a2, -1             #; a2  = 32, (wrb) a2  <-- 31
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2232        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2233        M 0x80000960 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 31.41
       0     2234        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2237        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2238        M 0x80000968 sub     a5, a3, a5             #; a3  = 11, a5  = 0, (wrb) a5  <-- 11
       0     2239        M 0x8000096c addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
       0     2241        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2242        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2243        M 0x8000097c bnez    a2, pc - 40            #; a2  = 31, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2244        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 11, a0  = 0xcccccccd
       0     2245        M 0x80000958 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
       0     2246        M 0x8000095c addi    a2, a2, -1             #; a2  = 31, (wrb) a2  <-- 30
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2247        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2248        M 0x80000960 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 34.551
       0     2249        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2252        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2253        M 0x80000968 sub     a5, a3, a5             #; a3  = 12, a5  = 0, (wrb) a5  <-- 12
       0     2254        M 0x8000096c addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
       0     2256        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2257        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2258        M 0x8000097c bnez    a2, pc - 40            #; a2  = 30, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2259        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 12, a0  = 0xcccccccd
       0     2260        M 0x80000958 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
       0     2261        M 0x8000095c addi    a2, a2, -1             #; a2  = 30, (wrb) a2  <-- 29
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2262        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2263        M 0x80000960 srli    a5, a5, 4              #; a5  = 9, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 37.692
       0     2264        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2267        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2268        M 0x80000968 sub     a5, a3, a5             #; a3  = 13, a5  = 0, (wrb) a5  <-- 13
       0     2269        M 0x8000096c addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
       0     2271        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2272        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2273        M 0x8000097c bnez    a2, pc - 40            #; a2  = 29, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2274        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 13, a0  = 0xcccccccd
       0     2275        M 0x80000958 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
       0     2276        M 0x8000095c addi    a2, a2, -1             #; a2  = 29, (wrb) a2  <-- 28
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2277        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2278        M 0x80000960 srli    a5, a5, 4              #; a5  = 10, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 40.833
       0     2279        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2282        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2283        M 0x80000968 sub     a5, a3, a5             #; a3  = 14, a5  = 0, (wrb) a5  <-- 14
       0     2284        M 0x8000096c addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
       0     2286        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     2287        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2288        M 0x8000097c bnez    a2, pc - 40            #; a2  = 28, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2289        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 14, a0  = 0xcccccccd
       0     2290        M 0x80000958 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
       0     2291        M 0x8000095c addi    a2, a2, -1             #; a2  = 28, (wrb) a2  <-- 27
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2292        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2293        M 0x80000960 srli    a5, a5, 4              #; a5  = 11, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2294        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2297        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2298        M 0x80000968 sub     a5, a3, a5             #; a3  = 15, a5  = 0, (wrb) a5  <-- 15
       0     2299        M 0x8000096c addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
       0     2301        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     2302        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2303        M 0x8000097c bnez    a2, pc - 40            #; a2  = 27, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2304        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 15, a0  = 0xcccccccd
       0     2305        M 0x80000958 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
       0     2306        M 0x8000095c addi    a2, a2, -1             #; a2  = 27, (wrb) a2  <-- 26
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2307        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     2308        M 0x80000960 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 47.115
       0     2309        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2312        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2313        M 0x80000968 sub     a5, a3, a5             #; a3  = 16, a5  = 0, (wrb) a5  <-- 16
       0     2314        M 0x8000096c addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
       0     2316        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     2317        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2318        M 0x8000097c bnez    a2, pc - 40            #; a2  = 26, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     2319        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 16, a0  = 0xcccccccd
       0     2320        M 0x80000958 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
       0     2321        M 0x8000095c addi    a2, a2, -1             #; a2  = 26, (wrb) a2  <-- 25
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     2322        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     2323        M 0x80000960 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 50.256
       0     2324        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2327        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2328        M 0x80000968 sub     a5, a3, a5             #; a3  = 17, a5  = 0, (wrb) a5  <-- 17
       0     2329        M 0x8000096c addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
       0     2331        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     2332        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2333        M 0x8000097c bnez    a2, pc - 40            #; a2  = 25, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     2334        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 17, a0  = 0xcccccccd
       0     2335        M 0x80000958 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
       0     2336        M 0x8000095c addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     2337        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     2338        M 0x80000960 srli    a5, a5, 4              #; a5  = 13, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 53.397
       0     2339        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2342        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2343        M 0x80000968 sub     a5, a3, a5             #; a3  = 18, a5  = 0, (wrb) a5  <-- 18
       0     2344        M 0x8000096c addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
       0     2346        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     2347        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2348        M 0x8000097c bnez    a2, pc - 40            #; a2  = 24, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     2349        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 18, a0  = 0xcccccccd
       0     2350        M 0x80000958 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
       0     2351        M 0x8000095c addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     2352        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     2353        M 0x80000960 srli    a5, a5, 4              #; a5  = 14, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 56.538
       0     2354        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2357        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2358        M 0x80000968 sub     a5, a3, a5             #; a3  = 19, a5  = 0, (wrb) a5  <-- 19
       0     2359        M 0x8000096c addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
       0     2361        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     2362        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2363        M 0x8000097c bnez    a2, pc - 40            #; a2  = 23, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     2364        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 19, a0  = 0xcccccccd
       0     2365        M 0x80000958 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
       0     2366        M 0x8000095c addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     2367        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     2368        M 0x80000960 srli    a5, a5, 4              #; a5  = 15, (wrb) a5  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 59.679
       0     2369        M 0x80000964 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2372        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2373        M 0x80000968 sub     a5, a3, a5             #; a3  = 20, a5  = 0, (wrb) a5  <-- 20
       0     2374        M 0x8000096c addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
       0     2376        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     2377        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2378        M 0x8000097c bnez    a2, pc - 40            #; a2  = 22, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     2379        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 20, a0  = 0xcccccccd
       0     2380        M 0x80000958 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
       0     2381        M 0x8000095c addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     2382        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     2383        M 0x80000960 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 62.82
       0     2384        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2387        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2388        M 0x80000968 sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
       0     2389        M 0x8000096c addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
       0     2391        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2392        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2393        M 0x8000097c bnez    a2, pc - 40            #; a2  = 21, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2394        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 21, a0  = 0xcccccccd
       0     2395        M 0x80000958 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
       0     2396        M 0x8000095c addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2397        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2398        M 0x80000960 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 3.141
       0     2399        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2402        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2403        M 0x80000968 sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
       0     2404        M 0x8000096c addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
       0     2406        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2407        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2408        M 0x8000097c bnez    a2, pc - 40            #; a2  = 20, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2409        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 22, a0  = 0xcccccccd
       0     2410        M 0x80000958 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
       0     2411        M 0x8000095c addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2412        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2413        M 0x80000960 srli    a5, a5, 4              #; a5  = 17, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 6.282
       0     2414        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2417        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2418        M 0x80000968 sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
       0     2419        M 0x8000096c addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
       0     2421        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2422        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2423        M 0x8000097c bnez    a2, pc - 40            #; a2  = 19, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2424        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 23, a0  = 0xcccccccd
       0     2425        M 0x80000958 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
       0     2426        M 0x8000095c addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2427        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2428        M 0x80000960 srli    a5, a5, 4              #; a5  = 18, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 9.423
       0     2429        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2432        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2433        M 0x80000968 sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
       0     2434        M 0x8000096c addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
       0     2436        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2437        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2438        M 0x8000097c bnez    a2, pc - 40            #; a2  = 18, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2439        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 24, a0  = 0xcccccccd
       0     2440        M 0x80000958 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
       0     2441        M 0x8000095c addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2442        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2443        M 0x80000960 srli    a5, a5, 4              #; a5  = 19, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 12.564
       0     2444        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2447        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2448        M 0x80000968 sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
       0     2449        M 0x8000096c addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
       0     2451        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2452        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2453        M 0x8000097c bnez    a2, pc - 40            #; a2  = 17, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2454        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 25, a0  = 0xcccccccd
       0     2455        M 0x80000958 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
       0     2456        M 0x8000095c addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2457        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2458        M 0x80000960 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 15.705
       0     2459        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2462        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2463        M 0x80000968 sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
       0     2464        M 0x8000096c addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
       0     2466        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2467        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2468        M 0x8000097c bnez    a2, pc - 40            #; a2  = 16, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2469        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 26, a0  = 0xcccccccd
       0     2470        M 0x80000958 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
       0     2471        M 0x8000095c addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2472        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2473        M 0x80000960 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 18.846
       0     2474        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2477        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2478        M 0x80000968 sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
       0     2479        M 0x8000096c addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
       0     2481        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2482        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2483        M 0x8000097c bnez    a2, pc - 40            #; a2  = 15, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2484        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 27, a0  = 0xcccccccd
       0     2485        M 0x80000958 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
       0     2486        M 0x8000095c addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2487        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2488        M 0x80000960 srli    a5, a5, 4              #; a5  = 21, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2489        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2492        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2493        M 0x80000968 sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
       0     2494        M 0x8000096c addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
       0     2496        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2497        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2498        M 0x8000097c bnez    a2, pc - 40            #; a2  = 14, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2499        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 28, a0  = 0xcccccccd
       0     2500        M 0x80000958 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
       0     2501        M 0x8000095c addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2502        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2503        M 0x80000960 srli    a5, a5, 4              #; a5  = 22, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 25.128
       0     2504        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2507        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2508        M 0x80000968 sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
       0     2509        M 0x8000096c addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
       0     2511        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2512        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2513        M 0x8000097c bnez    a2, pc - 40            #; a2  = 13, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2514        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 29, a0  = 0xcccccccd
       0     2515        M 0x80000958 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
       0     2516        M 0x8000095c addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2517        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2518        M 0x80000960 srli    a5, a5, 4              #; a5  = 23, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 28.269
       0     2519        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2522        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2523        M 0x80000968 sub     a5, a3, a5             #; a3  = 30, a5  = 20, (wrb) a5  <-- 10
       0     2524        M 0x8000096c addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
       0     2526        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2527        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2528        M 0x8000097c bnez    a2, pc - 40            #; a2  = 12, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2529        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 30, a0  = 0xcccccccd
       0     2530        M 0x80000958 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
       0     2531        M 0x8000095c addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2532        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2533        M 0x80000960 srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 31.41
       0     2534        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2537        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2538        M 0x80000968 sub     a5, a3, a5             #; a3  = 31, a5  = 20, (wrb) a5  <-- 11
       0     2539        M 0x8000096c addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
       0     2541        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2542        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2543        M 0x8000097c bnez    a2, pc - 40            #; a2  = 11, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2544        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 31, a0  = 0xcccccccd
       0     2545        M 0x80000958 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
       0     2546        M 0x8000095c addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2547        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2548        M 0x80000960 srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 34.551
       0     2549        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2552        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2553        M 0x80000968 sub     a5, a3, a5             #; a3  = 32, a5  = 20, (wrb) a5  <-- 12
       0     2554        M 0x8000096c addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
       0     2556        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2557        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2558        M 0x8000097c bnez    a2, pc - 40            #; a2  = 10, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2559        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 32, a0  = 0xcccccccd
       0     2560        M 0x80000958 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
       0     2561        M 0x8000095c addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2562        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2563        M 0x80000960 srli    a5, a5, 4              #; a5  = 25, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 37.692
       0     2564        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2567        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2568        M 0x80000968 sub     a5, a3, a5             #; a3  = 33, a5  = 20, (wrb) a5  <-- 13
       0     2569        M 0x8000096c addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
       0     2571        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2572        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2573        M 0x8000097c bnez    a2, pc - 40            #; a2  = 9, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2574        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 33, a0  = 0xcccccccd
       0     2575        M 0x80000958 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
       0     2576        M 0x8000095c addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2577        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2578        M 0x80000960 srli    a5, a5, 4              #; a5  = 26, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 40.833
       0     2579        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2582        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2583        M 0x80000968 sub     a5, a3, a5             #; a3  = 34, a5  = 20, (wrb) a5  <-- 14
       0     2584        M 0x8000096c addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
       0     2586        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     2587        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2588        M 0x8000097c bnez    a2, pc - 40            #; a2  = 8, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2589        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 34, a0  = 0xcccccccd
       0     2590        M 0x80000958 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
       0     2591        M 0x8000095c addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2592        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2593        M 0x80000960 srli    a5, a5, 4              #; a5  = 27, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2594        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2597        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2598        M 0x80000968 sub     a5, a3, a5             #; a3  = 35, a5  = 20, (wrb) a5  <-- 15
       0     2599        M 0x8000096c addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
       0     2601        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     2602        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2603        M 0x8000097c bnez    a2, pc - 40            #; a2  = 7, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2604        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 35, a0  = 0xcccccccd
       0     2605        M 0x80000958 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
       0     2606        M 0x8000095c addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2607        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     2608        M 0x80000960 srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 47.115
       0     2609        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2612        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2613        M 0x80000968 sub     a5, a3, a5             #; a3  = 36, a5  = 20, (wrb) a5  <-- 16
       0     2614        M 0x8000096c addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
       0     2616        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     2617        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2618        M 0x8000097c bnez    a2, pc - 40            #; a2  = 6, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     2619        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 36, a0  = 0xcccccccd
       0     2620        M 0x80000958 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
       0     2621        M 0x8000095c addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     2622        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     2623        M 0x80000960 srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 50.256
       0     2624        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2627        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2628        M 0x80000968 sub     a5, a3, a5             #; a3  = 37, a5  = 20, (wrb) a5  <-- 17
       0     2629        M 0x8000096c addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
       0     2631        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     2632        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2633        M 0x8000097c bnez    a2, pc - 40            #; a2  = 5, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     2634        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 37, a0  = 0xcccccccd
       0     2635        M 0x80000958 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
       0     2636        M 0x8000095c addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     2637        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     2638        M 0x80000960 srli    a5, a5, 4              #; a5  = 29, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 53.397
       0     2639        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2642        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2643        M 0x80000968 sub     a5, a3, a5             #; a3  = 38, a5  = 20, (wrb) a5  <-- 18
       0     2644        M 0x8000096c addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
       0     2646        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     2647        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2648        M 0x8000097c bnez    a2, pc - 40            #; a2  = 4, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     2649        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 38, a0  = 0xcccccccd
       0     2650        M 0x80000958 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
       0     2651        M 0x8000095c addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     2652        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     2653        M 0x80000960 srli    a5, a5, 4              #; a5  = 30, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 56.538
       0     2654        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2657        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2658        M 0x80000968 sub     a5, a3, a5             #; a3  = 39, a5  = 20, (wrb) a5  <-- 19
       0     2659        M 0x8000096c addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
       0     2661        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     2662        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2663        M 0x8000097c bnez    a2, pc - 40            #; a2  = 3, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     2664        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 39, a0  = 0xcccccccd
       0     2665        M 0x80000958 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
       0     2666        M 0x8000095c addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     2667        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     2668        M 0x80000960 srli    a5, a5, 4              #; a5  = 31, (wrb) a5  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 59.679
       0     2669        M 0x80000964 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2672        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2673        M 0x80000968 sub     a5, a3, a5             #; a3  = 40, a5  = 20, (wrb) a5  <-- 20
       0     2674        M 0x8000096c addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
       0     2676        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     2677        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2678        M 0x8000097c bnez    a2, pc - 40            #; a2  = 2, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     2679        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 40, a0  = 0xcccccccd
       0     2680        M 0x80000958 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
       0     2681        M 0x8000095c addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     2682        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     2683        M 0x80000960 srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
                         M                                           #; (f:fpu) ft0  <-- 62.82
       0     2684        M 0x80000964 mul     a5, a5, a4             #; a5  = 2, a4  = 20
       0     2687        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2688        M 0x80000968 sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
       0     2689        M 0x8000096c addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
       0     2691        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2692        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2693        M 0x8000097c bnez    a2, pc - 40            #; a2  = 1, taken, goto 0x80000954
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2694        M 0x80000954 mulhu   a5, a1, a0             #; a1  = 41, a0  = 0xcccccccd
       0     2695        M 0x80000958 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
       0     2696        M 0x8000095c addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2697        M                                           #; (acc) a5  <-- 0x0047d793
                         M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2698        M 0x80000960 srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
                         M                                           #; (f:fpu) ft0  <-- 3.141
       0     2699        M 0x80000964 mul     a5, a5, a4             #; a5  = 2, a4  = 20
       0     2702        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2703        M 0x80000968 sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
       0     2704        M 0x8000096c addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
       0     2706        M 0x80000970 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2707        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2708        M 0x8000097c bnez    a2, pc - 40            #; a2  = 0, not taken
                         M 0x80000974 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2711        M                                           #; (f:fpu) ft4  <-- 6.282
       0     2712        M 0x80000978 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2713        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2721        M 0x80000984 j       pc + 0x54              #; goto 0x800009d8
                         M 0x80000980 csrrci  a0, ssr, 1             #; 
       0     2732        M 0x800009d8 li      a3, 5                  #; (wrb) a3  <-- 5
       0     2733        M 0x800009dc li      a4, 6                  #; (wrb) a4  <-- 6
       0     2744        M 0x800009e0 li      a5, 7                  #; (wrb) a5  <-- 7
       0     2745        M 0x800009e4 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     2746        M 0x800009e8 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     2747        M 0x800009ec mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     2756        M 0x800009f0 li      s3, 6                  #; (wrb) s3  <-- 6
       0     2757        M 0x800009f4 auipc   ra, 0x2                #; (wrb) ra  <-- 0x800029f4
       0     2758        M 0x800009f8 jalr    ra, ra, 1004           #; ra  = 0x800029f4, (wrb) ra  <-- 0x800009fc, goto 0x80002de0
       0     2779        M 0x80002de0 addi    sp, sp, -32            #; sp  = 0x0011ff20, (wrb) sp  <-- 0x0011ff00
       0     2780        M 0x80002de4 sw      ra, 28(sp)             #; sp  = 0x0011ff00, 0x800009fc ~~> Word[0x0011ff1c]
       0     2781        M 0x80002de8 sw      s0, 24(sp)             #; sp  = 0x0011ff00, 0x00100240 ~~> Word[0x0011ff18]
       0     2782        M 0x80002dec sw      s1, 20(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff14]
       0     2791        M 0x80002df0 sw      s2, 16(sp)             #; sp  = 0x0011ff00, 0x00100000 ~~> Word[0x0011ff10]
       0     2792        M 0x80002df4 sw      s3, 12(sp)             #; sp  = 0x0011ff00, 6 ~~> Word[0x0011ff0c]
       0     2793        M 0x80002df8 mv      s2, a3                 #; a3  = 5, (wrb) s2  <-- 5
       0     2794        M 0x80002dfc slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     2803        M 0x80002e00 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     2804        M 0x80002e04 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     2805        M 0x80002e08 bnez    a3, pc + 684           #; a3  = 0, not taken
       0     2806        M 0x80002e0c addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
       0     2815        M 0x80002e10 addi    t4, s2, -1             #; s2  = 5, (wrb) t4  <-- 4
       0     2816        M 0x80002e14 slli    s0, a5, 3              #; a5  = 7, (wrb) s0  <-- 56
       0     2817        M 0x80002e18 mv      s3, a0                 #; a0  = 0x00100240, (wrb) s3  <-- 0x00100240
       0     2818        M 0x80002e1c slli    s1, a6, 3              #; a6  = 6, (wrb) s1  <-- 48
       0     2827        M 0x80002e20 add     a3, s1, a0             #; s1  = 48, a0  = 0x00100240, (wrb) a3  <-- 0x00100270
       0     2828        M 0x80002e24 mul     a0, s0, t4             #; s0  = 56, t4  = 4
       0     2831        M                                           #; (acc) a3  <-- 0x00a686b3
       0     2832        M 0x80002e28 add     a3, a3, a0             #; a3  = 0x00100270, a0  = 224, (wrb) a3  <-- 0x00100350
       0     2833        M 0x80002e2c bge     zero, a4, pc + 388     #; a4  = 6, not taken
       0     2839        M 0x80002e30 addi    t2, a4, -1             #; a4  = 6, (wrb) t2  <-- 5
       0     2840        M 0x80002e34 slli    t3, a4, 3              #; a4  = 6, (wrb) t3  <-- 48
       0     2841        M 0x80002e38 slli    t1, t2, 3              #; t2  = 5, (wrb) t1  <-- 40
       0     2842        M 0x80002e3c mul     a0, t3, t4             #; t3  = 48, t4  = 4
       0     2851        M 0x80002e40 mul     t0, s0, t2             #; s0  = 56, t2  = 5
       0     2852        M 0x80002e44 add     a7, t1, a1             #; t1  = 40, a1  = 0x00100000, (wrb) a7  <-- 0x00100028
       0     2853        M 0x80002e48 add     t5, a7, a0             #; a7  = 0x00100028, a0  = 192, (wrb) t5  <-- 0x001000e8
       0     2854        M                                           #; (acc) a0  <-- 0x00c28533
       0     2855        M 0x80002e4c add     a0, t0, a2             #; t0  = 280, a2  = 0x001000f0, (wrb) a0  <-- 0x00100208
       0     2863        M 0x80002e50 add     a7, s1, a0             #; s1  = 48, a0  = 0x00100208, (wrb) a7  <-- 0x00100238
       0     2864        M 0x80002e54 sltu    a0, a3, a1             #; a3  = 0x00100350, a1  = 0x00100000, (wrb) a0  <-- 0
       0     2865        M 0x80002e58 sltu    s1, t5, s3             #; t5  = 0x001000e8, s3  = 0x00100240, (wrb) s1  <-- 1
       0     2866        M 0x80002e5c or      t6, s1, a0             #; s1  = 1, a0  = 0, (wrb) t6  <-- 1
       0     2875        M 0x80002e60 sltu    s1, a3, a2             #; a3  = 0x00100350, a2  = 0x001000f0, (wrb) s1  <-- 0
       0     2876        M 0x80002e64 sltu    a0, a7, s3             #; a7  = 0x00100238, s3  = 0x00100240, (wrb) a0  <-- 1
       0     2877        M 0x80002e68 or      a0, s1, a0             #; s1  = 0, a0  = 1, (wrb) a0  <-- 1
       0     2878        M 0x80002e6c and     t6, t6, a0             #; t6  = 1, a0  = 1, (wrb) t6  <-- 1
       0     2887        M 0x80002e70 srli    a0, s3, 20             #; s3  = 0x00100240, (wrb) a0  <-- 1
       0     2888        M 0x80002e74 snez    s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
       0     2889        M 0x80002e78 lui     a0, 0x120              #; (wrb) a0  <-- 0x00120000
       0     2890        M 0x80002e7c addi    a0, a0, 1              #; a0  = 0x00120000, (wrb) a0  <-- 0x00120001
       0     2899        M 0x80002e80 sltu    a3, a3, a0             #; a3  = 0x00100350, a0  = 0x00120001, (wrb) a3  <-- 1
       0     2900        M 0x80002e84 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     2901        M 0x80002e88 and     t6, a3, t6             #; a3  = 1, t6  = 1, (wrb) t6  <-- 1
       0     2902        M 0x80002e8c srli    a3, a1, 20             #; a1  = 0x00100000, (wrb) a3  <-- 1
       0     2911        M 0x80002e90 snez    s1, a3                 #; a3  = 1, (wrb) s1  <-- 1
       0     2912        M 0x80002e94 sltu    a3, t5, a0             #; t5  = 0x001000e8, a0  = 0x00120001, (wrb) a3  <-- 1
       0     2913        M 0x80002e98 sltu    a0, a7, a0             #; a7  = 0x00100238, a0  = 0x00120001, (wrb) a0  <-- 1
       0     2914        M 0x80002e9c and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     2923        M 0x80002ea0 srli    s1, a2, 20             #; a2  = 0x001000f0, (wrb) s1  <-- 1
       0     2924        M 0x80002ea4 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
       0     2925        M 0x80002ea8 and     a3, a3, t6             #; a3  = 1, t6  = 1, (wrb) a3  <-- 1
       0     2926        M 0x80002eac and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     2935        M 0x80002eb0 and     a0, a0, a3             #; a0  = 1, a3  = 1, (wrb) a0  <-- 1
       0     2936        M 0x80002eb4 beqz    a0, pc + 408           #; a0  = 1, not taken
       0     2937        M 0x80002eb8 li      s1, 64                 #; (wrb) s1  <-- 64
       0     2938        M 0x80002ebc li      t3, 8                  #; (wrb) t3  <-- 8
       0     2947        M 0x80002ec0 li      a0, 192                #; (wrb) a0  <-- 192
       0     2948        M 0x80002ec4 sub     t1, zero, t1           #; t1  = 40, (wrb) t1  <-- -40
       0     2949        M 0x80002ec8 li      a3, 0                  #; (wrb) a3  <-- 0
       0     2951        M 0x80002ecc fcvt.d.w ft3, zero             #; ac1  = 0
       0     2952        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2959        M 0x80002ed0 scfgw   a6, s1                 #; a6  = 6, s1  = 64
       0     2960        M 0x80002ed4 scfgw   t3, a0                 #; t3  = 8, a0  = 192
       0     2961        M 0x80002ed8 li      a0, 96                 #; (wrb) a0  <-- 96
       0     2962        M 0x80002edc li      s1, 1                  #; (wrb) s1  <-- 1
       0     2971        M 0x80002ee0 scfgw   t4, a0                 #; t4  = 4, a0  = 96
       0     2972        M 0x80002ee4 li      a0, 224                #; (wrb) a0  <-- 224
       0     2973        M 0x80002ee8 addi    t6, s1, 256            #; s1  = 1, (wrb) t6  <-- 257
       0     2974        M 0x80002eec scfgw   t3, a0                 #; t3  = 8, a0  = 224, (acc) ra  <-- 0x00ae20ab
       0     2983        M 0x80002ef0 li      a0, 32                 #; (wrb) a0  <-- 32
       0     2984        M 0x80002ef4 scfgw   zero, a0               #; a0  = 32
       0     2985        M 0x80002ef8 addi    a0, s1, 64             #; s1  = 1, (wrb) a0  <-- 65
       0     2986        M 0x80002efc scfgwi  s3, 928                #; s3  = 0x00100240
       0     2995        M 0x80002f00 scfgw   t2, a0                 #; t2  = 5, a0  = 65
       0     2996        M 0x80002f04 addi    a0, s1, 192            #; s1  = 1, (wrb) a0  <-- 193
       0     2997        M 0x80002f08 scfgw   t3, a0                 #; t3  = 8, a0  = 193
       0     2998        M 0x80002f0c addi    a0, s1, 96             #; s1  = 1, (wrb) a0  <-- 97
       0     3007        M 0x80002f10 scfgw   a6, a0                 #; a6  = 6, a0  = 97
       0     3008        M 0x80002f14 addi    a0, s1, 224            #; s1  = 1, (wrb) a0  <-- 225
       0     3009        M 0x80002f18 scfgw   t1, a0                 #; t1  = -40, a0  = 225
       0     3010        M 0x80002f1c addi    a0, s1, 128            #; s1  = 1, (wrb) a0  <-- 129
       0     3019        M 0x80002f20 scfgw   t4, a0                 #; t4  = 4, a0  = 129
       0     3020        M 0x80002f24 addi    a0, s1, 32             #; s1  = 1, (wrb) a0  <-- 33
       0     3021        M 0x80002f28 scfgw   t3, t6                 #; t3  = 8, t6  = 257
       0     3022        M 0x80002f2c scfgw   zero, a0               #; a0  = 33, (acc) ra  <-- 0x00a020ab
       0     3031        M 0x80002f30 li      a0, 2                  #; (wrb) a0  <-- 2
       0     3032        M 0x80002f34 scfgwi  a1, 833                #; a1  = 0x00100000
       0     3033        M 0x80002f38 addi    a1, a0, 64             #; a0  = 2, (wrb) a1  <-- 66
       0     3034        M 0x80002f3c addi    s1, a0, 192            #; a0  = 2, (wrb) s1  <-- 194
       0     3043        M 0x80002f40 scfgw   t2, a1                 #; t2  = 5, a1  = 66
       0     3044        M 0x80002f44 scfgw   s0, s1                 #; s0  = 56, s1  = 194
       0     3045        M 0x80002f48 addi    s1, a0, 96             #; a0  = 2, (wrb) s1  <-- 98
       0     3046        M 0x80002f4c sub     a1, t3, t0             #; t3  = 8, t0  = 280, (wrb) a1  <-- -272
       0     3055        M 0x80002f50 addi    s0, a0, 224            #; a0  = 2, (wrb) s0  <-- 226
       0     3056        M 0x80002f54 scfgw   a6, s1                 #; a6  = 6, s1  = 98
       0     3057        M 0x80002f58 scfgw   a1, s0                 #; a1  = -272, s0  = 226
       0     3058        M 0x80002f5c addi    s1, a0, 128            #; a0  = 2, (wrb) s1  <-- 130
       0     3067        M 0x80002f60 addi    s0, a0, 256            #; a0  = 2, (wrb) s0  <-- 258
       0     3068        M 0x80002f64 sub     a1, zero, a7           #; a7  = 0x00100238, (wrb) a1  <-- 0xffeffdc8
       0     3069        M 0x80002f68 addi    a0, a0, 32             #; a0  = 2, (wrb) a0  <-- 34
       0     3070        M 0x80002f6c scfgw   t4, s1                 #; t4  = 4, s1  = 130
       0     3079        M 0x80002f70 scfgw   a1, s0                 #; a1  = 0xffeffdc8, s0  = 258
       0     3080        M 0x80002f74 scfgw   zero, a0               #; a0  = 34
       0     3081        M 0x80002f78 scfgwi  a2, 834                #; a2  = 0x001000f0
       0     3082        M                                           #; (acc) a2  <-- 0x7c00e673
       0     3083        M 0x80002f7c csrrsi  a2, ssr, 1             #; 
       0     3091        M 0x80002f80 li      a0, 0                  #; (wrb) a0  <-- 0
       0     3092        M 0x80002f84 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3094        M 0x80002f8c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3095        M 0x80002f88 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3096        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3105        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 5, taken, goto 0x80002f8c
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 0.0
       0     3106        M 0x80002f8c addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3108        M                                           #; (f:fpu) ft4  <-- 9.865881
       0     3109        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 4, taken, goto 0x80002f8c
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.865881, ft4  = 9.865881
       0     3110        M 0x80002f8c addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 9.865881, (f:fpu) ft0  <-- 9.865881
       0     3113        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 3, taken, goto 0x80002f8c
                         M                                           #; (f:fpu) ft4  <-- 167.7199770
       0     3114        M 0x80002f8c addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 167.7199770, ft4  = 167.7199770
       0     3115        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 167.7199770, (f:fpu) ft0  <-- 167.7199770
       0     3117        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 2, taken, goto 0x80002f8c
       0     3118        M 0x80002f8c addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 611.6846220
       0     3119        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 611.6846220, ft4  = 611.6846220
       0     3120        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 611.6846220, (f:fpu) ft0  <-- 611.6846220
       0     3121        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 1, taken, goto 0x80002f8c
       0     3122        M 0x80002f8c addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3123        M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3124        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 690.6116700, ft4  = 690.6116700
       0     3125        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 0, not taken
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 15.705, ft4  = 690.6116700, (f:fpu) ft0  <-- 690.6116700
       0     3126        M 0x80002f9c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3128        M                                           #; (f:fpu) ft4  <-- 1134.5763150
       0     3129        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 1134.5763150, ft4  = 1134.5763150
       0     3130        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 18.846, ft4  = 1134.5763150, (f:fpu) ft0  <-- 1134.5763150
       0     3133        M                                           #; (f:fpu) ft4  <-- 2081.7008910
       0     3134        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 2081.7008910, ft4  = 2081.7008910
       0     3135        M                                           #; (f:fpu) ft0  <-- 2081.7008910
       0     3138        M 0x80002fa0 bne     a0, a5, pc - 28        #; a0  = 1, a5  = 7, taken, goto 0x80002f84
       0     3139        M 0x80002f84 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3141        M 0x80002f8c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3142        M 0x80002f88 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3143        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3144        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 5, taken, goto 0x80002f8c
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 3.141, ft4  = 0.0
       0     3145        M 0x80002f8c addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3147        M                                           #; (f:fpu) ft4  <-- 19.7317620
       0     3148        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 4, taken, goto 0x80002f8c
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 19.7317620, ft4  = 19.7317620
       0     3149        M 0x80002f8c addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 6.282, ft4  = 19.7317620, (f:fpu) ft0  <-- 19.7317620
       0     3152        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 3, taken, goto 0x80002f8c
                         M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     3153        M 0x80002f8c addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 197.3176200, ft4  = 197.3176200
       0     3154        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 9.423, ft4  = 197.3176200, (f:fpu) ft0  <-- 197.3176200
       0     3156        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 2, taken, goto 0x80002f8c
       0     3157        M 0x80002f8c addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 670.8799080
       0     3158        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 670.8799080, ft4  = 670.8799080
       0     3159        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 12.564, ft4  = 670.8799080, (f:fpu) ft0  <-- 670.8799080
       0     3160        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 1, taken, goto 0x80002f8c
       0     3161        M 0x80002f8c addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3162        M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3163        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 789.2704800, ft4  = 789.2704800
       0     3164        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 0, not taken
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 15.705, ft4  = 789.2704800, (f:fpu) ft0  <-- 789.2704800
       0     3165        M 0x80002f9c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3166        M 0x80002fa0 bne     a0, a5, pc - 28        #; a0  = 2, a5  = 7, taken, goto 0x80002f84
       0     3167        M 0x80002f84 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 1282.5645300
       0     3168        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 1282.5645300, ft4  = 1282.5645300
       0     3169        M 0x80002f8c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 18.846, ft4  = 1282.5645300, (f:fpu) ft0  <-- 1282.5645300
       0     3172        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 5, taken, goto 0x80002f8c
                         M                                           #; (f:fpu) ft4  <-- 2288.8843920
       0     3173        M 0x80002f8c addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 2288.8843920, ft4  = 2288.8843920
       0     3174        M 0x80002f88 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2288.8843920
       0     3175        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3176        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 4, taken, goto 0x80002f8c
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 3.141, ft4  = 0.0
       0     3177        M 0x80002f8c addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3179        M                                           #; (f:fpu) ft4  <-- 29.5976430
       0     3180        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 3, taken, goto 0x80002f8c
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 29.5976430, ft4  = 29.5976430
       0     3181        M 0x80002f8c addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 6.282, ft4  = 29.5976430, (f:fpu) ft0  <-- 29.5976430
       0     3184        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 2, taken, goto 0x80002f8c
                         M                                           #; (f:fpu) ft4  <-- 226.9152630
       0     3185        M 0x80002f8c addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 226.9152630, ft4  = 226.9152630
       0     3186        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 9.423, ft4  = 226.9152630, (f:fpu) ft0  <-- 226.9152630
       0     3188        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 1, taken, goto 0x80002f8c
       0     3189        M 0x80002f8c addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 730.0751940
       0     3190        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 730.0751940, ft4  = 730.0751940
       0     3191        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 12.564, ft4  = 730.0751940, (f:fpu) ft0  <-- 730.0751940
       0     3192        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 0, not taken
       0     3193        M 0x80002f9c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3194        M 0x80002fa0 bne     a0, a5, pc - 28        #; a0  = 3, a5  = 7, taken, goto 0x80002f84
                         M                                           #; (f:fpu) ft4  <-- 887.9292900
       0     3195        M 0x80002f84 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 887.9292900, ft4  = 887.9292900
       0     3196        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 15.705, ft4  = 887.9292900, (f:fpu) ft0  <-- 887.9292900
       0     3197        M 0x80002f8c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3199        M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3200        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 5, taken, goto 0x80002f8c
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 1430.5527450, ft4  = 1430.5527450
       0     3201        M 0x80002f8c addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 18.846, ft4  = 1430.5527450, (f:fpu) ft0  <-- 1430.5527450
       0     3204        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 4, taken, goto 0x80002f8c
                         M                                           #; (f:fpu) ft4  <-- 2496.0678930
       0     3205        M 0x80002f8c addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 2496.0678930, ft4  = 2496.0678930
       0     3206        M 0x80002f88 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2496.0678930
       0     3207        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3208        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 3, taken, goto 0x80002f8c
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 3.141, ft4  = 0.0
       0     3209        M 0x80002f8c addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3211        M                                           #; (f:fpu) ft4  <-- 39.4635240
       0     3212        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 2, taken, goto 0x80002f8c
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 39.4635240, ft4  = 39.4635240
       0     3213        M 0x80002f8c addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 6.282, ft4  = 39.4635240, (f:fpu) ft0  <-- 39.4635240
       0     3216        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 1, taken, goto 0x80002f8c
                         M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     3217        M 0x80002f8c addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 256.5129060, ft4  = 256.5129060
       0     3218        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 9.423, ft4  = 256.5129060, (f:fpu) ft0  <-- 256.5129060
       0     3220        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 0, not taken
       0     3221        M 0x80002f9c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3222        M 0x80002fa0 bne     a0, a5, pc - 28        #; a0  = 4, a5  = 7, taken, goto 0x80002f84
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 789.2704800, ft4  = 789.2704800
       0     3223        M 0x80002f84 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 12.564, ft4  = 789.2704800, (f:fpu) ft0  <-- 789.2704800
       0     3225        M 0x80002f8c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3226        M                                           #; (f:fpu) ft4  <-- 986.5881000
       0     3227        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 986.5881000, ft4  = 986.5881000
       0     3228        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 5, taken, goto 0x80002f8c
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 15.705, ft4  = 986.5881000, (f:fpu) ft0  <-- 986.5881000
       0     3229        M 0x80002f8c addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3231        M                                           #; (f:fpu) ft4  <-- 1578.5409600
       0     3232        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 4, taken, goto 0x80002f8c
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 1578.5409600, ft4  = 1578.5409600
       0     3233        M 0x80002f8c addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 18.846, ft4  = 1578.5409600, (f:fpu) ft0  <-- 1578.5409600
       0     3236        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 3, taken, goto 0x80002f8c
                         M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     3237        M 0x80002f8c addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 2703.2513940, ft4  = 2703.2513940
       0     3238        M 0x80002f88 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2703.2513940
       0     3239        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3240        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 2, taken, goto 0x80002f8c
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 3.141, ft4  = 0.0
       0     3241        M 0x80002f8c addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3243        M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     3244        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 1, taken, goto 0x80002f8c
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 49.3294050, ft4  = 49.3294050
       0     3245        M 0x80002f8c addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 6.282, ft4  = 49.3294050, (f:fpu) ft0  <-- 49.3294050
       0     3248        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 286.1105490
       0     3249        M 0x80002f9c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 286.1105490, ft4  = 286.1105490
       0     3250        M 0x80002fa0 bne     a0, a5, pc - 28        #; a0  = 5, a5  = 7, taken, goto 0x80002f84
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 9.423, ft4  = 286.1105490, (f:fpu) ft0  <-- 286.1105490
       0     3251        M 0x80002f84 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3253        M 0x80002f8c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3254        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 848.4657660, ft4  = 848.4657660
       0     3255        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 12.564, ft4  = 848.4657660, (f:fpu) ft0  <-- 848.4657660
       0     3256        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 5, taken, goto 0x80002f8c
       0     3257        M 0x80002f8c addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3258        M                                           #; (f:fpu) ft4  <-- 1085.2469100
       0     3259        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 1085.2469100, ft4  = 1085.2469100
       0     3260        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 4, taken, goto 0x80002f8c
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 15.705, ft4  = 1085.2469100, (f:fpu) ft0  <-- 1085.2469100
       0     3261        M 0x80002f8c addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3263        M                                           #; (f:fpu) ft4  <-- 1726.5291750
       0     3264        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 3, taken, goto 0x80002f8c
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 1726.5291750, ft4  = 1726.5291750
       0     3265        M 0x80002f8c addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 18.846, ft4  = 1726.5291750, (f:fpu) ft0  <-- 1726.5291750
       0     3268        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 2, taken, goto 0x80002f8c
                         M                                           #; (f:fpu) ft4  <-- 2910.4348950
       0     3269        M 0x80002f8c addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 2910.4348950, ft4  = 2910.4348950
       0     3270        M 0x80002f88 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2910.4348950
       0     3271        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3272        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 1, taken, goto 0x80002f8c
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 3.141, ft4  = 0.0
       0     3273        M 0x80002f8c addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3275        M                                           #; (f:fpu) ft4  <-- 59.1952860
       0     3276        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 0, not taken
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.1952860, ft4  = 59.1952860
       0     3277        M 0x80002f9c addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 6.282, ft4  = 59.1952860, (f:fpu) ft0  <-- 59.1952860
       0     3278        M 0x80002fa0 bne     a0, a5, pc - 28        #; a0  = 6, a5  = 7, taken, goto 0x80002f84
       0     3279        M 0x80002f84 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3280        M                                           #; (f:fpu) ft4  <-- 315.7081920
       0     3281        M 0x80002f8c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 315.7081920, ft4  = 315.7081920
       0     3282        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 9.423, ft4  = 315.7081920, (f:fpu) ft0  <-- 315.7081920
       0     3284        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 5, taken, goto 0x80002f8c
       0     3285        M 0x80002f8c addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 907.6610520
       0     3286        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 907.6610520, ft4  = 907.6610520
       0     3287        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 12.564, ft4  = 907.6610520, (f:fpu) ft0  <-- 907.6610520
       0     3288        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 4, taken, goto 0x80002f8c
       0     3289        M 0x80002f8c addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3290        M                                           #; (f:fpu) ft4  <-- 1183.9057200
       0     3291        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 1183.9057200, ft4  = 1183.9057200
       0     3292        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 3, taken, goto 0x80002f8c
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 15.705, ft4  = 1183.9057200, (f:fpu) ft0  <-- 1183.9057200
       0     3293        M 0x80002f8c addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3295        M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     3296        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 2, taken, goto 0x80002f8c
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 1874.5173900, ft4  = 1874.5173900
       0     3297        M 0x80002f8c addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 18.846, ft4  = 1874.5173900, (f:fpu) ft0  <-- 1874.5173900
       0     3300        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 1, taken, goto 0x80002f8c
                         M                                           #; (f:fpu) ft4  <-- 1933.7126760
       0     3301        M 0x80002f8c addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 1933.7126760, ft4  = 1933.7126760
       0     3302        M 0x80002f88 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1933.7126760
       0     3303        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3304        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 0, not taken
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 3.141, ft4  = 0.0
       0     3305        M 0x80002f9c addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
       0     3306        M 0x80002fa0 bne     a0, a5, pc - 28        #; a0  = 7, a5  = 7, not taken
       0     3307        M 0x80002fa4 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3308        M 0x80002fa8 bne     a3, s2, pc - 40        #; a3  = 1, s2  = 5, taken, goto 0x80002f80
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 69.0611670, ft4  = 69.0611670
       0     3309        M 0x80002f80 li      a0, 0                  #; (wrb) a0  <-- 0
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 6.282, ft4  = 69.0611670, (f:fpu) ft0  <-- 69.0611670
       0     3310        M 0x80002f84 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3312        M 0x80002f8c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     3313        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 345.3058350, ft4  = 345.3058350
       0     3314        M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 9.423, ft4  = 345.3058350, (f:fpu) ft0  <-- 345.3058350
       0     3315        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 5, taken, goto 0x80002f8c
       0     3316        M 0x80002f8c addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3317        M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     3318        M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 374.9034780, ft4  = 374.9034780
       0     3319        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 4, taken, goto 0x80002f8c
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 12.564, ft4  = 374.9034780, (f:fpu) ft0  <-- 374.9034780
       0     3320        M 0x80002f8c addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3322        M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3323        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 3, taken, goto 0x80002f8c
                         M 0x80002f94 fsgnj.d ft0, ft4, ft4          #; ft4  = 690.6116700, ft4  = 690.6116700
       0     3324        M 0x80002f8c addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f90 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 15.705, ft4  = 690.6116700
       0     3327        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 2, taken, goto 0x80002f8c
                         M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3328        M 0x80002f8c addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3331        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 1, taken, goto 0x80002f8c
       0     3332        M 0x80002f8c addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3335        M 0x80002f98 bnez    a1, pc - 12            #; a1  = 0, not taken
       0     3336        M 0x80002f9c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3337        M 0x80002fa0 bne     a0, a5, pc - 28        #; a0  = 1, a5  = 7, taken, goto 0x80002f84
       0     3338        M 0x80002f84 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3340        M 0x80002f8c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5

## Performance metrics

Performance metrics for section 0 @ (12, 3340):
snitch_loads                                    38
snitch_stores                                   63
fpss_stores                                      2
fpss_loads                                      21
snitch_avg_load_latency                    17.7632
snitch_occupancy                            0.2716
snitch_fseq_rel_offloads                    0.2632
fseq_yield                                  0.9443
fseq_fpu_yield                              0.9443
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.6014
fpss_avg_load_latency                          9.0
fpss_occupancy                              0.0916
fpss_fpu_occupancy                          0.0829
fpss_fpu_rel_occupancy                      0.9049
cycles                                        3329
total_ipc                                   0.3632
