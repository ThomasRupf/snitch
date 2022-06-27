       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002920
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002920, (wrb) ra  <-- 4120, goto 0x80002920
       0      269        M 0x80002920 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003920
       0      270        M 0x80002924 addi    gp, gp, -280           #; gp  = 0x80003920, (wrb) gp  <-- 0x80003808
       0      271        M 0x80002928 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002928
       0      272        M 0x8000292c jalr    ra, ra, 964            #; ra  = 0x80002928, (wrb) ra  <-- 0x80002930, goto 0x80002cec
       0      292        M 0x80002cec mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002cf0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002cf4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002cf8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002cfc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002d00 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002d04 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002d08 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002d0c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002d10 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002d14 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002d18 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002d1c ret                            #; ra  = 0x80002930, goto 0x80002930
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002930 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002934 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002938 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002938
       0      508        M 0x8000293c jalr    ra, ra, 1036           #; ra  = 0x80002938, (wrb) ra  <-- 0x80002940, goto 0x80002d44
       0      523        M 0x80002d44 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002d48 ret                            #; ra  = 0x80002940, goto 0x80002940
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002940 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002944 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002948 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000294c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002950 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002954 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002954
       0      551        M 0x80002958 addi    t0, t0, 1916           #; t0  = 0x80002954, (wrb) t0  <-- 0x800030d0
       0      552        M 0x8000295c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000295c
       0      562        M 0x80002960 addi    t1, t1, 1912           #; t1  = 0x8000295c, (wrb) t1  <-- 0x800030d4
       0      563        M 0x80002964 bge     t0, t1, pc + 16        #; t0  = 0x800030d0, t1  = 0x800030d4, not taken
       0      564        M 0x80002968 sw      zero, 0(t0)            #; t0  = 0x800030d0, 0 ~~> Word[0x800030d0]
       0      565        M 0x8000296c addi    t0, t0, 4              #; t0  = 0x800030d0, (wrb) t0  <-- 0x800030d4
       0      573        M 0x80002970 blt     t0, t1, pc - 8         #; t0  = 0x800030d4, t1  = 0x800030d4, not taken
       0      574        M 0x80002974 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002978 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000297c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002980 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002984 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002988 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000298c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002990 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002994 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002998 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000299c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800029a0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800029a4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800029a8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800029ac fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800029b0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800029b4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800029b8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800029bc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800029c0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800029c4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800029c8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800029cc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800029d0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800029d4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800029d8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800029dc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800029e0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800029e4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800029e8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800029ec fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800029f0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800029f4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800029f8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800029fc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002a00 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002a04 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002a08 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a08
       0      684        M 0x80002a0c lw      t0, 900(t0)            #; t0  = 0x80002a08, t0  <~~ Word[0x80002d8c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002a10 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002a14 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002a18 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a18
       0      708        M 0x80002a1c lw      t2, 880(t2)            #; t2  = 0x80002a18, t2  <~~ Word[0x80002d88]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002a20 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002a24 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002a28 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002a2c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002a30 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002a34 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002a38 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002a3c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002a40 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a40
       0      762        M 0x80002a44 addi    t0, t0, 1480           #; t0  = 0x80002a40, (wrb) t0  <-- 0x80003008
       0      763        M 0x80002a48 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a48
       0      764        M 0x80002a4c addi    t1, t1, 1472           #; t1  = 0x80002a48, (wrb) t1  <-- 0x80003008
       0      775        M 0x80002a50 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a50
       0      776        M 0x80002a54 addi    t2, t2, 1464           #; t2  = 0x80002a50, (wrb) t2  <-- 0x80003008
       0      777        M 0x80002a58 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002a58
       0      778        M 0x80002a5c addi    t3, t3, 1472           #; t3  = 0x80002a58, (wrb) t3  <-- 0x80003018
       0      787        M 0x80002a60 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003008, (wrb) sp  <-- 0x80122f78
       0      788        M 0x80002a64 sub     sp, sp, t1             #; sp  = 0x80122f78, t1  = 0x80003008, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002a68 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003008, (wrb) sp  <-- 0x80122f78
       0      790        M 0x80002a6c sub     sp, sp, t3             #; sp  = 0x80122f78, t3  = 0x80003018, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002a70 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002a74 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002a78 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002a7c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002a80 bge     t0, t1, pc + 24        #; t0  = 0x80003008, t1  = 0x80003008, taken, goto 0x80002a98
       0      823        M 0x80002a98 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a98
       0      824        M 0x80002a9c addi    t0, t0, 1392           #; t0  = 0x80002a98, (wrb) t0  <-- 0x80003008
       0      835        M 0x80002aa0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002aa0
       0      836        M 0x80002aa4 addi    t1, t1, 1400           #; t1  = 0x80002aa0, (wrb) t1  <-- 0x80003018
       0      837        M 0x80002aa8 bge     t0, t1, pc + 20        #; t0  = 0x80003008, t1  = 0x80003018, not taken
       0      838        M 0x80002aac sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002ab0 addi    t0, t0, 4              #; t0  = 0x80003008, (wrb) t0  <-- 0x8000300c
       0      848        M 0x80002ab4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002ab8 blt     t0, t2, pc - 12        #; t0  = 0x8000300c, t2  = 0x80003008, not taken
       0      850        M 0x80002abc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002ac0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002ac4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002ac8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002acc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002ad0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002ad4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ad4
       0      877        M 0x80002ad8 jalr    ra, ra, -1052          #; ra  = 0x80002ad4, (wrb) ra  <-- 0x80002adc, goto 0x800026b8
       0      899        M 0x800026b8 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x800026bc sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x800026c0 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x800026c4 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x800026c8 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x800026cc lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1020        M                                           #; (lsu) a7  <-- 1
       0     1021        M 0x800026d0 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1022        M 0x800026d4 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1025        M                                           #; (acc) a0  <-- 0x02580533
       0     1060        M                                           #; (lsu) t0  <-- 8
       0     1061        M 0x800026d8 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1064        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1065        M 0x800026dc sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1066        M 0x800026e0 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1067        M 0x800026e4 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1068        M 0x800026e8 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1071        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1072        M 0x800026ec sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1078        M 0x800026f0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1079        M 0x800026f4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1080        M 0x800026f8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1081        M 0x800026fc lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1090        M 0x80002700 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x80002704 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x80002708 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x8000270c sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80002710 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80002714 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x80002718 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x8000271c sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1181        M 0x80002720 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1182        M 0x80002724 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1183        M 0x80002728 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1184        M 0x8000272c sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1193        M 0x80002730 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1205        M                                           #; (lsu) a0  <-- 0x00020000
       0     1206        M 0x80002734 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1207        M 0x80002738 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1208        M 0x8000273c sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1209        M 0x80002740 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1210        M 0x80002744 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1211        M 0x80002748 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1212        M 0x8000274c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1220        M 0x80002750 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1221        M 0x80002754 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1222        M 0x80002758 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1223        M 0x8000275c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1233        M 0x80002760 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1234        M 0x80002764 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1235        M 0x80002768 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1236        M 0x8000276c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1245        M 0x80002770 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1246        M 0x80002774 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1247        M 0x80002778 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1248        M 0x8000277c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1257        M 0x80002780 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1258        M 0x80002784 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1262        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1263        M 0x80002788 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1266        M                                           #; (lsu) a1  <-- 0
       0     1267        M 0x8000278c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1269        M 0x80002790 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1270        M                                           #; (lsu) a0  <-- 8
       0     1271        M 0x80002794 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1272        M 0x80002798 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1273        M 0x8000279c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1281        M 0x800027a0 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1282        M 0x800027a4 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1283        M 0x800027a8 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1284        M 0x800027ac auipc   a1, 0x1                #; (wrb) a1  <-- 0x800037ac
       0     1293        M 0x800027b0 addi    a1, a1, -1752          #; a1  = 0x800037ac, (wrb) a1  <-- 0x800030d4
       0     1294        M 0x800027b4 add     a0, a0, a1             #; a0  = 0, a1  = 0x800030d4, (wrb) a0  <-- 0x800030d4
       0     1295        M 0x800027b8 sw      zero, 0(a0)            #; a0  = 0x800030d4, 0 ~~> Word[0x800030d4]
       0     1296        M 0x800027bc lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1344        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1345        M 0x800027c0 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1346        M 0x800027c4 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1347        M 0x800027c8 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1348        M 0x800027cc addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1349        M 0x800027d0 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1350        M 0x800027d4 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1351        M 0x800027d8 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1352        M 0x800027dc sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1362        M 0x800027e0 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1363        M 0x800027e4 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1364        M 0x800027e8 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x800027ec lw      a0, 0(a1)              #; a1  = 0x800030d4, a0  <~~ Word[0x800030d4]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x800027f0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x800027f4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x800027f8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x800027fc sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1387        M 0x80002800 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1388        M 0x80002804 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1389        M 0x80002808 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1390        M 0x8000280c sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x80002810 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x80002814 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x80002818 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1402        M 0x8000281c ret                            #; ra  = 0x80002adc, goto 0x80002adc
       0     1415        M 0x80002adc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002ae0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002ae4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002ae8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002aec lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002af0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002af4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002af4
       0     1434        M 0x80002af8 addi    t0, t0, 60             #; t0  = 0x80002af4, (wrb) t0  <-- 0x80002b30
       0     1435        M 0x80002afc csrw    mtvec, t0              #; t0  = 0x80002b30, (lsu) a4  <-- 4132
       0     1442        M 0x80002b00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b00
       0     1443        M 0x80002b04 jalr    ra, ra, 544            #; ra  = 0x80002b00, (wrb) ra  <-- 0x80002b08, goto 0x80002d20
       0     1456        M 0x80002d20 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1457        M 0x80002d24 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b08 ~~> Word[0x0011ff5c]
       0     1458        M 0x80002d28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d28
       0     1459        M 0x80002d2c jalr    ra, ra, -1256          #; ra  = 0x80002d28, (wrb) ra  <-- 0x80002d30, goto 0x80002840
       0     1480        M 0x80002840 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1481        M 0x80002844 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1482        M 0x80002848 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1485        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1486        M 0x8000284c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1490        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1492        M 0x80002850 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1493        M 0x80002854 ret                            #; ra  = 0x80002d30, goto 0x80002d30
       0     1496        M                                           #; (lsu) a0  <-- 0x00120190
       0     1497        M 0x80002d30 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1526        M                                           #; (lsu) a0  <-- 0
       0     1527        M 0x80002d34 mv      zero, a0               #; a0  = 0
       0     1528        M 0x80002d38 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1529        M 0x80002d3c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1531        M                                           #; (lsu) ra  <-- 0x80002b08
       0     1532        M 0x80002d40 ret                            #; ra  = 0x80002b08, goto 0x80002b08
       0     1536        M 0x80002b08 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000b08
       0     1537        M 0x80002b0c jalr    ra, ra, -1236          #; ra  = 0x80000b08, (wrb) ra  <-- 0x80002b10, goto 0x80000634
       0     1542        M 0x80000634 addi    sp, sp, -48            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff30
       0     1543        M 0x80000638 sw      ra, 44(sp)             #; sp  = 0x0011ff30, 0x80002b10 ~~> Word[0x0011ff5c]
       0     1544        M 0x8000063c sw      s0, 40(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff58]
       0     1545        M 0x80000640 sw      s1, 36(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff54]
       0     1546        M 0x80000644 sw      s2, 32(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff50]
       0     1547        M 0x80000648 sw      s3, 28(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff4c]
       0     1550        M 0x8000064c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff40]
       0     1558        M 0x80000650 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1559        M 0x80000654 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1560        M 0x80000658 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1561        M 0x8000065c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1563        M                                           #; (lsu) a1  <-- 0
       0     1570        M 0x80000660 bnez    a1, pc + 976           #; a1  = 0, not taken
       0     1571        M 0x80000664 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1572        M 0x80000668 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1573        M 0x8000066c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1576        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1582        M 0x80000670 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1585        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1586        M 0x80000674 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1589        M                                           #; (lsu) s0  <-- 0x00100000
       0     1590        M 0x80000678 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1593        M                                           #; (lsu) a1  <-- 0x00100000
       0     1594        M 0x8000067c lw      a2, 84(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc4]
       0     1595        M 0x80000680 addi    a3, s0, 80             #; s0  = 0x00100000, (wrb) a3  <-- 0x00100050
       0     1597        M                                           #; (lsu) a2  <-- 0x0001df30
       0     1598        M 0x80000684 add     a1, a2, a1             #; a2  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1599        M 0x80000688 bgeu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x00100050, taken, goto 0x800006b4
       0     1624        M 0x800006b4 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1625        M 0x800006b8 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1626        M 0x800006bc addi    a2, s0, 160            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000a0
       0     1648        M 0x800006c0 mv      s0, a3                 #; a3  = 0x00100050, (wrb) s0  <-- 0x00100050
       0     1649        M 0x800006c4 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x001000a0, taken, goto 0x80000698
       0     1650        M 0x80000698 mv      s1, s0                 #; s0  = 0x00100050, (wrb) s1  <-- 0x00100050
       0     1651        M 0x8000069c sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1662        M 0x800006a0 addi    a3, a2, 80             #; a2  = 0x001000a0, (wrb) a3  <-- 0x001000f0
       0     1663        M 0x800006a4 mv      s0, a2                 #; a2  = 0x001000a0, (wrb) s0  <-- 0x001000a0
       0     1664        M 0x800006a8 bltu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x001000f0, not taken
       0     1665        M 0x800006ac sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1666        M 0x800006b0 j       pc + 0x28              #; goto 0x800006d8
       0     1678        M 0x800006d8 lui     a0, 0x3ff6a            #; (wrb) a0  <-- 0x3ff6a000
       0     1679        M 0x800006dc addi    a0, a0, 144            #; a0  = 0x3ff6a000, (wrb) a0  <-- 0x3ff6a090
       0     1690        M 0x800006e0 sw      a0, 4(s2)              #; s2  = 0x00100000, 0x3ff6a090 ~~> Word[0x00100004]
       0     1691        M 0x800006e4 lui     a0, 0x2de01            #; (wrb) a0  <-- 0x2de01000
       0     1692        M 0x800006e8 addi    a0, a0, -741           #; a0  = 0x2de01000, (wrb) a0  <-- 0x2de00d1b
       0     1693        M 0x800006ec sw      a0, 0(s2)              #; s2  = 0x00100000, 0x2de00d1b ~~> Word[0x00100000]
       0     1702        M 0x800006f0 lui     a1, 0x4006a            #; (wrb) a1  <-- 0x4006a000
       0     1703        M 0x800006f4 addi    a6, a1, 144            #; a1  = 0x4006a000, (wrb) a6  <-- 0x4006a090
       0     1704        M 0x800006f8 sw      a6, 12(s2)             #; s2  = 0x00100000, 0x4006a090 ~~> Word[0x0010000c]
       0     1705        M 0x800006fc sw      a0, 8(s2)              #; s2  = 0x00100000, 0x2de00d1b ~~> Word[0x00100008]
       0     1714        M 0x80000700 lui     a1, 0x40110            #; (wrb) a1  <-- 0x40110000
       0     1715        M 0x80000704 addi    a7, a1, -1940          #; a1  = 0x40110000, (wrb) a7  <-- 0x4010f86c
       0     1716        M 0x80000708 sw      a7, 20(s2)             #; s2  = 0x00100000, 0x4010f86c ~~> Word[0x00100014]
       0     1717        M 0x8000070c lui     a1, 0x22681            #; (wrb) a1  <-- 0x22681000
       0     1726        M 0x80000710 addi    a1, a1, -1580          #; a1  = 0x22681000, (wrb) a1  <-- 0x226809d4
       0     1727        M 0x80000714 sw      a1, 16(s2)             #; s2  = 0x00100000, 0x226809d4 ~~> Word[0x00100010]
       0     1728        M 0x80000718 lui     a4, 0x4016a            #; (wrb) a4  <-- 0x4016a000
       0     1729        M 0x8000071c addi    t0, a4, 144            #; a4  = 0x4016a000, (wrb) t0  <-- 0x4016a090
       0     1738        M 0x80000720 sw      t0, 28(s2)             #; s2  = 0x00100000, 0x4016a090 ~~> Word[0x0010001c]
       0     1739        M 0x80000724 sw      a0, 24(s2)             #; s2  = 0x00100000, 0x2de00d1b ~~> Word[0x00100018]
       0     1740        M 0x80000728 lui     a5, 0x401c5            #; (wrb) a5  <-- 0x401c5000
       0     1741        M 0x8000072c addi    t1, a5, -1868          #; a5  = 0x401c5000, (wrb) t1  <-- 0x401c48b4
       0     1750        M 0x80000730 sw      t1, 36(s2)             #; s2  = 0x00100000, 0x401c48b4 ~~> Word[0x00100024]
       0     1751        M 0x80000734 lui     a2, 0x39581            #; (wrb) a2  <-- 0x39581000
       0     1752        M 0x80000738 addi    a2, a2, 98             #; a2  = 0x39581000, (wrb) a2  <-- 0x39581062
       0     1753        M 0x8000073c sw      a2, 32(s2)             #; s2  = 0x00100000, 0x39581062 ~~> Word[0x00100020]
       0     1762        M 0x80000740 lui     a3, 0x40210            #; (wrb) a3  <-- 0x40210000
       0     1763        M 0x80000744 addi    t2, a3, -1940          #; a3  = 0x40210000, (wrb) t2  <-- 0x4020f86c
       0     1764        M 0x80000748 sw      t2, 44(s2)             #; s2  = 0x00100000, 0x4020f86c ~~> Word[0x0010002c]
       0     1765        M 0x8000074c sw      a1, 40(s2)             #; s2  = 0x00100000, 0x226809d4 ~~> Word[0x00100028]
       0     1774        M 0x80000750 lui     a4, 0x4023d            #; (wrb) a4  <-- 0x4023d000
       0     1775        M 0x80000754 addi    t3, a4, -898           #; a4  = 0x4023d000, (wrb) t3  <-- 0x4023cc7e
       0     1776        M 0x80000758 sw      t3, 52(s2)             #; s2  = 0x00100000, 0x4023cc7e ~~> Word[0x00100034]
       0     1777        M 0x8000075c lui     a5, 0x28241            #; (wrb) a5  <-- 0x28241000
       0     1786        M 0x80000760 addi    t5, a5, -1160          #; a5  = 0x28241000, (wrb) t5  <-- 0x28240b78
       0     1787        M 0x80000764 sw      t5, 48(s2)             #; s2  = 0x00100000, 0x28240b78 ~~> Word[0x00100030]
       0     1788        M 0x80000768 lui     a3, 0x4026a            #; (wrb) a3  <-- 0x4026a000
       0     1789        M 0x8000076c addi    t4, a3, 144            #; a3  = 0x4026a000, (wrb) t4  <-- 0x4026a090
       0     1798        M 0x80000770 sw      t4, 60(s2)             #; s2  = 0x00100000, 0x4026a090 ~~> Word[0x0010003c]
       0     1799        M 0x80000774 sw      a0, 56(s2)             #; s2  = 0x00100000, 0x2de00d1b ~~> Word[0x00100038]
       0     1800        M 0x80000778 lui     a4, 0x40297            #; (wrb) a4  <-- 0x40297000
       0     1801        M 0x8000077c addi    t6, a4, 1186           #; a4  = 0x40297000, (wrb) t6  <-- 0x402974a2
       0     1810        M 0x80000780 sw      t6, 68(s2)             #; s2  = 0x00100000, 0x402974a2 ~~> Word[0x00100044]
       0     1811        M 0x80000784 lui     a3, 0x339c1            #; (wrb) a3  <-- 0x339c1000
       0     1812        M 0x80000788 addi    s3, a3, -322           #; a3  = 0x339c1000, (wrb) s3  <-- 0x339c0ebe
       0     1813        M 0x8000078c sw      s3, 64(s2)             #; s2  = 0x00100000, 0x339c0ebe ~~> Word[0x00100040]
       0     1822        M 0x80000790 sw      a2, 72(s2)             #; s2  = 0x00100000, 0x39581062 ~~> Word[0x00100048]
       0     1823        M 0x80000794 lui     a5, 0x402c5            #; (wrb) a5  <-- 0x402c5000
       0     1824        M 0x80000798 addi    a5, a5, -1868          #; a5  = 0x402c5000, (wrb) a5  <-- 0x402c48b4
       0     1825        M 0x8000079c sw      a5, 76(s2)             #; s2  = 0x00100000, 0x402c48b4 ~~> Word[0x0010004c]
       0     1834        M 0x800007a0 sw      a0, 0(s1)              #; s1  = 0x00100050, 0x2de00d1b ~~> Word[0x00100050]
       0     1835        M 0x800007a4 sw      a6, 4(s1)              #; s1  = 0x00100050, 0x4006a090 ~~> Word[0x00100054]
       0     1836        M 0x800007a8 sw      a1, 8(s1)              #; s1  = 0x00100050, 0x226809d4 ~~> Word[0x00100058]
       0     1837        M 0x800007ac sw      a7, 12(s1)             #; s1  = 0x00100050, 0x4010f86c ~~> Word[0x0010005c]
       0     1846        M 0x800007b0 sw      a0, 16(s1)             #; s1  = 0x00100050, 0x2de00d1b ~~> Word[0x00100060]
       0     1847        M 0x800007b4 sw      t0, 20(s1)             #; s1  = 0x00100050, 0x4016a090 ~~> Word[0x00100064]
       0     1848        M 0x800007b8 sw      a2, 24(s1)             #; s1  = 0x00100050, 0x39581062 ~~> Word[0x00100068]
       0     1849        M 0x800007bc sw      t1, 28(s1)             #; s1  = 0x00100050, 0x401c48b4 ~~> Word[0x0010006c]
       0     1858        M 0x800007c0 sw      a1, 32(s1)             #; s1  = 0x00100050, 0x226809d4 ~~> Word[0x00100070]
       0     1859        M 0x800007c4 sw      t2, 36(s1)             #; s1  = 0x00100050, 0x4020f86c ~~> Word[0x00100074]
       0     1860        M 0x800007c8 sw      t5, 40(s1)             #; s1  = 0x00100050, 0x28240b78 ~~> Word[0x00100078]
       0     1861        M 0x800007cc sw      t3, 44(s1)             #; s1  = 0x00100050, 0x4023cc7e ~~> Word[0x0010007c]
       0     1870        M 0x800007d0 sw      a0, 48(s1)             #; s1  = 0x00100050, 0x2de00d1b ~~> Word[0x00100080]
       0     1871        M 0x800007d4 sw      t4, 52(s1)             #; s1  = 0x00100050, 0x4026a090 ~~> Word[0x00100084]
       0     1872        M 0x800007d8 sw      s3, 56(s1)             #; s1  = 0x00100050, 0x339c0ebe ~~> Word[0x00100088]
       0     1873        M 0x800007dc sw      t6, 60(s1)             #; s1  = 0x00100050, 0x402974a2 ~~> Word[0x0010008c]
       0     1882        M 0x800007e0 sw      a2, 64(s1)             #; s1  = 0x00100050, 0x39581062 ~~> Word[0x00100090]
       0     1883        M 0x800007e4 sw      a5, 68(s1)             #; s1  = 0x00100050, 0x402c48b4 ~~> Word[0x00100094]
       0     1884        M 0x800007e8 lui     a4, 0x3f141            #; (wrb) a4  <-- 0x3f141000
       0     1885        M 0x800007ec addi    a4, a4, 517            #; a4  = 0x3f141000, (wrb) a4  <-- 0x3f141205
       0     1894        M 0x800007f0 sw      a4, 72(s1)             #; s1  = 0x00100050, 0x3f141205 ~~> Word[0x00100098]
       0     1895        M 0x800007f4 lui     a3, 0x402f2            #; (wrb) a3  <-- 0x402f2000
       0     1896        M 0x800007f8 addi    a3, a3, -826           #; a3  = 0x402f2000, (wrb) a3  <-- 0x402f1cc6
       0     1897        M 0x800007fc sw      a3, 76(s1)             #; s1  = 0x00100050, 0x402f1cc6 ~~> Word[0x0010009c]
       0     1906        M 0x80000800 sw      a1, 0(s0)              #; s0  = 0x001000a0, 0x226809d4 ~~> Word[0x001000a0]
       0     1907        M 0x80000804 sw      a7, 4(s0)              #; s0  = 0x001000a0, 0x4010f86c ~~> Word[0x001000a4]
       0     1908        M 0x80000808 sw      a0, 8(s0)              #; s0  = 0x001000a0, 0x2de00d1b ~~> Word[0x001000a8]
       0     1909        M 0x8000080c sw      t0, 12(s0)             #; s0  = 0x001000a0, 0x4016a090 ~~> Word[0x001000ac]
       0     1918        M 0x80000810 sw      a2, 16(s0)             #; s0  = 0x001000a0, 0x39581062 ~~> Word[0x001000b0]
       0     1919        M 0x80000814 sw      t1, 20(s0)             #; s0  = 0x001000a0, 0x401c48b4 ~~> Word[0x001000b4]
       0     1920        M 0x80000818 sw      a1, 24(s0)             #; s0  = 0x001000a0, 0x226809d4 ~~> Word[0x001000b8]
       0     1921        M 0x8000081c sw      t2, 28(s0)             #; s0  = 0x001000a0, 0x4020f86c ~~> Word[0x001000bc]
       0     1930        M 0x80000820 sw      t5, 32(s0)             #; s0  = 0x001000a0, 0x28240b78 ~~> Word[0x001000c0]
       0     1931        M 0x80000824 sw      t3, 36(s0)             #; s0  = 0x001000a0, 0x4023cc7e ~~> Word[0x001000c4]
       0     1932        M 0x80000828 sw      a0, 40(s0)             #; s0  = 0x001000a0, 0x2de00d1b ~~> Word[0x001000c8]
       0     1933        M 0x8000082c sw      t4, 44(s0)             #; s0  = 0x001000a0, 0x4026a090 ~~> Word[0x001000cc]
       0     1942        M 0x80000830 sw      s3, 48(s0)             #; s0  = 0x001000a0, 0x339c0ebe ~~> Word[0x001000d0]
       0     1943        M 0x80000834 sw      t6, 52(s0)             #; s0  = 0x001000a0, 0x402974a2 ~~> Word[0x001000d4]
       0     1944        M 0x80000838 sw      a2, 56(s0)             #; s0  = 0x001000a0, 0x39581062 ~~> Word[0x001000d8]
       0     1945        M 0x8000083c sw      a5, 60(s0)             #; s0  = 0x001000a0, 0x402c48b4 ~~> Word[0x001000dc]
       0     1954        M 0x80000840 sw      a4, 64(s0)             #; s0  = 0x001000a0, 0x3f141205 ~~> Word[0x001000e0]
       0     1955        M 0x80000844 sw      a3, 68(s0)             #; s0  = 0x001000a0, 0x402f1cc6 ~~> Word[0x001000e4]
       0     1956        M 0x80000848 sw      a1, 72(s0)             #; s0  = 0x001000a0, 0x226809d4 ~~> Word[0x001000e8]
       0     1957        M 0x8000084c lui     a0, 0x40310            #; (wrb) a0  <-- 0x40310000
       0     1966        M 0x80000850 addi    a0, a0, -1940          #; a0  = 0x40310000, (wrb) a0  <-- 0x4030f86c
       0     1967        M 0x80000854 sw      a0, 76(s0)             #; s0  = 0x001000a0, 0x4030f86c ~~> Word[0x001000ec]
       0     1968        M 0x80000858 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     1969        M 0x8000085c li      a1, 0                  #; (wrb) a1  <-- 0
       0     1978        M 0x80000860 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000860
       0     1979        M 0x80000864 jalr    ra, ra, 496            #; ra  = 0x80000860, (wrb) ra  <-- 0x80000868, goto 0x80000a50
       0     1992        M 0x80000a50 slli    a1, a1, 3              #; a1  = 0, (wrb) a1  <-- 0
       0     1993        M 0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 0, (wrb) a0  <-- 0x001000a0
       0     1994        M 0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a4]
       0     1995        M 0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a0]
       0     2004        M 0x80000a60 ret                            #; ra  = 0x80000868, goto 0x80000868
       0     2007        M 0x80000868 fld     ft0, 0(s2)             #; ft0  <~~ Doub[0x00100000]
       0     2008        M 0x8000086c fld     ft1, 0(s1)             #; ft1  <~~ Doub[0x00100050], (f:lsu) ft0  <-- 1.4142
       0     2009        M 0x80000870 fld     ft2, 0(s0)             #; ft2  <~~ Doub[0x001000a0], (f:lsu) ft1  <-- 2.8284
       0     2010        M 0x8000087c li      a1, 1                  #; (wrb) a1  <-- 1
                         M 0x80000874 fadd.d  ft0, ft0, ft1          #; ft0  = 1.4142, ft1  = 2.8284, (f:lsu) ft2  <-- 0.0
       0     2013        M                                           #; (f:fpu) ft0  <-- 4.2426000
       0     2014        M 0x80000878 fadd.d  fs0, ft0, ft2          #; ft0  = 4.2426000, ft2  = 0.0
       0     2017        M                                           #; (f:fpu) fs0  <-- 4.2426000
       0     2027        M 0x80000880 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2028        M 0x80000884 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000884
       0     2029        M 0x80000888 jalr    ra, ra, 460            #; ra  = 0x80000884, (wrb) ra  <-- 0x8000088c, goto 0x80000a50
       0     2030        M 0x80000a50 slli    a1, a1, 3              #; a1  = 1, (wrb) a1  <-- 8
       0     2031        M 0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 8, (wrb) a0  <-- 0x001000a8
       0     2032        M 0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000ac]
       0     2033        M 0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000a8]
       0     2034        M 0x80000a60 ret                            #; ra  = 0x8000088c, goto 0x8000088c
       0     2037        M 0x8000088c fld     ft0, 8(s2)             #; ft0  <~~ Doub[0x00100008]
       0     2038        M                                           #; (f:lsu) ft0  <-- 2.8284
       0     2041        M 0x80000890 fld     ft1, 8(s1)             #; ft1  <~~ Doub[0x00100058]
       0     2042        M 0x80000894 fld     ft2, 8(s0)             #; ft2  <~~ Doub[0x001000a8], (f:lsu) ft1  <-- 4.2426000
       0     2043        M 0x80000898 fadd.d  ft0, ft0, fs0          #; ft0  = 2.8284, fs0  = 4.2426000, (f:lsu) ft2  <-- 0.0
       0     2046        M                                           #; (f:fpu) ft0  <-- 7.071
       0     2047        M 0x8000089c fadd.d  ft0, ft0, ft1          #; ft0  = 7.071, ft1  = 4.2426000
       0     2050        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     2052        M 0x800008a4 li      a1, 2                  #; (wrb) a1  <-- 2
       0     2053        M 0x800008a8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x800008a0 fadd.d  fs0, ft0, ft2          #; ft0  = 11.3136, ft2  = 0.0
       0     2054        M 0x800008ac auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008ac
       0     2056        M                                           #; (f:fpu) fs0  <-- 11.3136
       0     2063        M 0x800008b0 jalr    ra, ra, 420            #; ra  = 0x800008ac, (wrb) ra  <-- 0x800008b4, goto 0x80000a50
       0     2064        M 0x80000a50 slli    a1, a1, 3              #; a1  = 2, (wrb) a1  <-- 16
       0     2065        M 0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 16, (wrb) a0  <-- 0x001000b0
       0     2066        M 0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b4]
       0     2067        M 0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b0]
       0     2068        M 0x80000a60 ret                            #; ra  = 0x800008b4, goto 0x800008b4
       0     2071        M 0x800008b4 fld     ft0, 16(s2)            #; ft0  <~~ Doub[0x00100010]
       0     2072        M 0x800008b8 fld     ft1, 16(s1)            #; ft1  <~~ Doub[0x00100060], (f:lsu) ft0  <-- 4.2426000
       0     2073        M 0x800008bc fld     ft2, 16(s0)            #; ft2  <~~ Doub[0x001000b0], (f:lsu) ft1  <-- 5.6568
       0     2074        M                                           #; (f:lsu) ft2  <-- 0.0
       0     2077        M 0x800008c0 fadd.d  ft0, ft0, fs0          #; ft0  = 4.2426000, fs0  = 11.3136
       0     2078        M 0x800008cc li      a1, 3                  #; (wrb) a1  <-- 3
       0     2080        M                                           #; (f:fpu) ft0  <-- 15.5562000
       0     2081        M 0x800008c4 fadd.d  ft0, ft0, ft1          #; ft0  = 15.5562000, ft1  = 5.6568
       0     2084        M                                           #; (f:fpu) ft0  <-- 21.2130000
       0     2085        M 0x800008c8 fadd.d  fs0, ft0, ft2          #; ft0  = 21.2130000, ft2  = 0.0
       0     2087        M 0x800008d0 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2088        M 0x800008d4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008d4
                         M                                           #; (f:fpu) fs0  <-- 21.2130000
       0     2089        M 0x800008d8 jalr    ra, ra, 380            #; ra  = 0x800008d4, (wrb) ra  <-- 0x800008dc, goto 0x80000a50
       0     2101        M 0x80000a50 slli    a1, a1, 3              #; a1  = 3, (wrb) a1  <-- 24
       0     2102        M 0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 24, (wrb) a0  <-- 0x001000b8
       0     2103        M 0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000bc]
       0     2104        M 0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000b8]
       0     2105        M 0x80000a60 ret                            #; ra  = 0x800008dc, goto 0x800008dc
       0     2108        M 0x800008dc fld     ft0, 24(s2)            #; ft0  <~~ Doub[0x00100018]
       0     2109        M 0x800008e0 fld     ft1, 24(s1)            #; ft1  <~~ Doub[0x00100068], (f:lsu) ft0  <-- 5.6568
       0     2110        M 0x800008e4 fld     ft2, 24(s0)            #; ft2  <~~ Doub[0x001000b8], (f:lsu) ft1  <-- 7.071
       0     2111        M 0x800008e8 fadd.d  ft0, ft0, fs0          #; ft0  = 5.6568, fs0  = 21.2130000, (f:lsu) ft2  <-- 0.0
       0     2114        M                                           #; (f:fpu) ft0  <-- 26.8698000
       0     2115        M 0x800008ec fadd.d  ft0, ft0, ft1          #; ft0  = 26.8698000, ft1  = 7.071
       0     2118        M                                           #; (f:fpu) ft0  <-- 33.9408000
       0     2121        M 0x800008f4 li      a1, 4                  #; (wrb) a1  <-- 4
       0     2122        M 0x800008f8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x800008f0 fadd.d  fs0, ft0, ft2          #; ft0  = 33.9408000, ft2  = 0.0
       0     2123        M 0x800008fc auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008fc
       0     2125        M                                           #; (f:fpu) fs0  <-- 33.9408000
       0     2132        M 0x80000900 jalr    ra, ra, 340            #; ra  = 0x800008fc, (wrb) ra  <-- 0x80000904, goto 0x80000a50
       0     2133        M 0x80000a50 slli    a1, a1, 3              #; a1  = 4, (wrb) a1  <-- 32
       0     2134        M 0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 32, (wrb) a0  <-- 0x001000c0
       0     2135        M 0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c4]
       0     2136        M 0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c0]
       0     2137        M 0x80000a60 ret                            #; ra  = 0x80000904, goto 0x80000904
       0     2140        M 0x80000904 fld     ft0, 32(s2)            #; ft0  <~~ Doub[0x00100020]
       0     2141        M 0x80000908 fld     ft1, 32(s1)            #; ft1  <~~ Doub[0x00100070], (f:lsu) ft0  <-- 7.071
       0     2142        M 0x8000090c fld     ft2, 32(s0)            #; ft2  <~~ Doub[0x001000c0], (f:lsu) ft1  <-- 8.4852000
       0     2143        M                                           #; (f:lsu) ft2  <-- 0.0
       0     2146        M 0x80000910 fadd.d  ft0, ft0, fs0          #; ft0  = 7.071, fs0  = 33.9408000
       0     2147        M 0x8000091c li      a1, 5                  #; (wrb) a1  <-- 5
       0     2149        M                                           #; (f:fpu) ft0  <-- 41.0118000
       0     2150        M 0x80000914 fadd.d  ft0, ft0, ft1          #; ft0  = 41.0118000, ft1  = 8.4852000
       0     2153        M                                           #; (f:fpu) ft0  <-- 49.4970000
       0     2154        M 0x80000918 fadd.d  fs0, ft0, ft2          #; ft0  = 49.4970000, ft2  = 0.0
       0     2156        M 0x80000920 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2157        M 0x80000924 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000924
                         M                                           #; (f:fpu) fs0  <-- 49.4970000
       0     2158        M 0x80000928 jalr    ra, ra, 300            #; ra  = 0x80000924, (wrb) ra  <-- 0x8000092c, goto 0x80000a50
       0     2159        M 0x80000a50 slli    a1, a1, 3              #; a1  = 5, (wrb) a1  <-- 40
       0     2160        M 0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 40, (wrb) a0  <-- 0x001000c8
       0     2161        M 0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000cc]
       0     2162        M 0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000c8]
       0     2163        M 0x80000a60 ret                            #; ra  = 0x8000092c, goto 0x8000092c
       0     2166        M 0x8000092c fld     ft0, 40(s2)            #; ft0  <~~ Doub[0x00100028]
       0     2167        M                                           #; (f:lsu) ft0  <-- 8.4852000
       0     2170        M 0x80000930 fld     ft1, 40(s1)            #; ft1  <~~ Doub[0x00100078]
       0     2171        M 0x80000934 fld     ft2, 40(s0)            #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 9.8994
       0     2172        M 0x80000938 fadd.d  ft0, ft0, fs0          #; ft0  = 8.4852000, fs0  = 49.4970000, (f:lsu) ft2  <-- 0.0
       0     2175        M                                           #; (f:fpu) ft0  <-- 57.9822000
       0     2176        M 0x8000093c fadd.d  ft0, ft0, ft1          #; ft0  = 57.9822000, ft1  = 9.8994
       0     2179        M                                           #; (f:fpu) ft0  <-- 67.8816000
       0     2181        M 0x80000944 li      a1, 6                  #; (wrb) a1  <-- 6
       0     2182        M 0x80000948 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000940 fadd.d  fs0, ft0, ft2          #; ft0  = 67.8816000, ft2  = 0.0
       0     2183        M 0x8000094c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000094c
       0     2185        M                                           #; (f:fpu) fs0  <-- 67.8816000
       0     2192        M 0x80000950 jalr    ra, ra, 260            #; ra  = 0x8000094c, (wrb) ra  <-- 0x80000954, goto 0x80000a50
       0     2206        M 0x80000a50 slli    a1, a1, 3              #; a1  = 6, (wrb) a1  <-- 48
       0     2207        M 0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 48, (wrb) a0  <-- 0x001000d0
       0     2208        M 0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d4]
       0     2209        M 0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d0]
       0     2210        M 0x80000a60 ret                            #; ra  = 0x80000954, goto 0x80000954
       0     2213        M 0x80000954 fld     ft0, 48(s2)            #; ft0  <~~ Doub[0x00100030]
       0     2214        M 0x80000958 fld     ft1, 48(s1)            #; ft1  <~~ Doub[0x00100080], (f:lsu) ft0  <-- 9.8994
       0     2215        M 0x8000095c fld     ft2, 48(s0)            #; ft2  <~~ Doub[0x001000d0], (f:lsu) ft1  <-- 11.3136
       0     2216        M 0x80000960 fadd.d  ft0, ft0, fs0          #; ft0  = 9.8994, fs0  = 67.8816000, (f:lsu) ft2  <-- 0.0
       0     2217        M 0x8000096c li      a1, 7                  #; (wrb) a1  <-- 7
       0     2219        M                                           #; (f:fpu) ft0  <-- 77.7810000
       0     2220        M 0x80000964 fadd.d  ft0, ft0, ft1          #; ft0  = 77.7810000, ft1  = 11.3136
       0     2223        M                                           #; (f:fpu) ft0  <-- 89.0946000
       0     2224        M 0x80000968 fadd.d  fs0, ft0, ft2          #; ft0  = 89.0946000, ft2  = 0.0
       0     2226        M 0x80000970 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2227        M 0x80000974 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000974
                         M                                           #; (f:fpu) fs0  <-- 89.0946000
       0     2228        M 0x80000978 jalr    ra, ra, 220            #; ra  = 0x80000974, (wrb) ra  <-- 0x8000097c, goto 0x80000a50
       0     2229        M 0x80000a50 slli    a1, a1, 3              #; a1  = 7, (wrb) a1  <-- 56
       0     2230        M 0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 56, (wrb) a0  <-- 0x001000d8
       0     2231        M 0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000dc]
       0     2232        M 0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000d8]
       0     2233        M 0x80000a60 ret                            #; ra  = 0x8000097c, goto 0x8000097c
       0     2236        M 0x8000097c fld     ft0, 56(s2)            #; ft0  <~~ Doub[0x00100038]
       0     2237        M                                           #; (f:lsu) ft0  <-- 11.3136
       0     2240        M 0x80000980 fld     ft1, 56(s1)            #; ft1  <~~ Doub[0x00100088]
       0     2241        M 0x80000984 fld     ft2, 56(s0)            #; ft2  <~~ Doub[0x001000d8], (f:lsu) ft1  <-- 12.7278000
       0     2242        M 0x80000988 fadd.d  ft0, ft0, fs0          #; ft0  = 11.3136, fs0  = 89.0946000, (f:lsu) ft2  <-- 0.0
       0     2245        M                                           #; (f:fpu) ft0  <-- 100.4082000
       0     2246        M 0x8000098c fadd.d  ft0, ft0, ft1          #; ft0  = 100.4082000, ft1  = 12.7278000
       0     2249        M                                           #; (f:fpu) ft0  <-- 113.1360000
       0     2251        M 0x80000994 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2252        M 0x80000998 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000990 fadd.d  fs0, ft0, ft2          #; ft0  = 113.1360000, ft2  = 0.0
       0     2253        M 0x8000099c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000099c
       0     2255        M                                           #; (f:fpu) fs0  <-- 113.1360000
       0     2262        M 0x800009a0 jalr    ra, ra, 180            #; ra  = 0x8000099c, (wrb) ra  <-- 0x800009a4, goto 0x80000a50
       0     2263        M 0x80000a50 slli    a1, a1, 3              #; a1  = 8, (wrb) a1  <-- 64
       0     2264        M 0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 64, (wrb) a0  <-- 0x001000e0
       0     2265        M 0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e4]
       0     2266        M 0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e0]
       0     2267        M 0x80000a60 ret                            #; ra  = 0x800009a4, goto 0x800009a4
       0     2270        M 0x800009a4 fld     ft0, 64(s2)            #; ft0  <~~ Doub[0x00100040]
       0     2271        M 0x800009a8 fld     ft1, 64(s1)            #; ft1  <~~ Doub[0x00100090], (f:lsu) ft0  <-- 12.7278000
       0     2272        M 0x800009ac fld     ft2, 64(s0)            #; ft2  <~~ Doub[0x001000e0], (f:lsu) ft1  <-- 14.142
       0     2273        M                                           #; (f:lsu) ft2  <-- 0.0
       0     2276        M 0x800009b0 fadd.d  ft0, ft0, fs0          #; ft0  = 12.7278000, fs0  = 113.1360000
       0     2277        M 0x800009bc li      a1, 9                  #; (wrb) a1  <-- 9
       0     2279        M                                           #; (f:fpu) ft0  <-- 125.8638000
       0     2280        M 0x800009b4 fadd.d  ft0, ft0, ft1          #; ft0  = 125.8638000, ft1  = 14.142
       0     2283        M                                           #; (f:fpu) ft0  <-- 140.0058
       0     2284        M 0x800009b8 fadd.d  fs0, ft0, ft2          #; ft0  = 140.0058, ft2  = 0.0
       0     2286        M 0x800009c0 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2287        M 0x800009c4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009c4
                         M                                           #; (f:fpu) fs0  <-- 140.0058
       0     2288        M 0x800009c8 jalr    ra, ra, 140            #; ra  = 0x800009c4, (wrb) ra  <-- 0x800009cc, goto 0x80000a50
       0     2300        M 0x80000a50 slli    a1, a1, 3              #; a1  = 9, (wrb) a1  <-- 72
       0     2301        M 0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 72, (wrb) a0  <-- 0x001000e8
       0     2302        M 0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000ec]
       0     2303        M 0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000e8]
       0     2304        M 0x80000a60 ret                            #; ra  = 0x800009cc, goto 0x800009cc
       0     2307        M 0x800009cc fld     ft0, 72(s2)            #; ft0  <~~ Doub[0x00100048]
       0     2308        M 0x800009d8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029d8
                         M 0x800009d0 fld     ft1, 72(s1)            #; ft1  <~~ Doub[0x00100098], (f:lsu) ft0  <-- 14.142
       0     2309        M 0x800009dc addi    a0, a0, 1600           #; a0  = 0x800029d8, (wrb) a0  <-- 0x80003018
                         M 0x800009d4 fld     ft2, 72(s0)            #; ft2  <~~ Doub[0x001000e8], (f:lsu) ft1  <-- 15.5562000
       0     2310        M                                           #; (f:lsu) ft2  <-- 0.0
       0     2321        M 0x800009e0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018]
       0     2322        M 0x800009e4 fadd.d  ft0, ft0, fs0          #; ft0  = 14.142, fs0  = 140.0058
       0     2325        M                                           #; (f:fpu) ft0  <-- 154.1478
       0     2326        M 0x800009e8 fadd.d  ft0, ft0, ft1          #; ft0  = 154.1478, ft1  = 15.5562000
       0     2329        M                                           #; (f:fpu) ft0  <-- 169.7040000
       0     2330        M 0x800009ec fadd.d  ft0, ft0, ft2          #; ft0  = 169.7040000, ft2  = 0.0, (f:lsu) ft3  <-- -169.704
       0     2333        M                                           #; (f:fpu) ft0  <-- 169.7040000
       0     2334        M 0x800009fc lw      a2, 8(sp)              #; sp  = 0x0011ff30, a2  <~~ Word[0x0011ff38]
                         M 0x800009f0 fadd.d  ft1, ft0, ft3          #; ft0  = 169.7040000, ft3  = -169.704
       0     2337        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft1  <-- -0.0000000
       0     2338        M 0x800009f4 fsgnjx.d fs0, ft1, ft1         #; ft1  = -0.0000000, ft1  = -0.0000000
       0     2339        M 0x800009f8 fsd     ft0, 8(sp)             #; 169.7040000 ~~> Doub[0x0011ff38], (f:fpu) fs0  <-- 0.0000000
       0     2343        M 0x80000a00 lw      a3, 12(sp)             #; sp  = 0x0011ff30, a3  <~~ Word[0x0011ff3c]
       0     2346        M                                           #; (lsu) a3  <-- 0x40653687
                         M 0x80000a04 fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff38]
       0     2347        M 0x80000a08 lw      a4, 8(sp)              #; sp  = 0x0011ff30, a4  <~~ Word[0x0011ff38]
       0     2350        M                                           #; (lsu) a4  <-- 0
       0     2351        M 0x80000a0c lw      a5, 12(sp)             #; sp  = 0x0011ff30, a5  <~~ Word[0x0011ff3c]
       0     2354        M                                           #; (lsu) a5  <-- 0x3d200000
       0     2355        M 0x80000a10 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a10
       0     2356        M 0x80000a14 addi    a0, a0, 901            #; a0  = 0x80002a10, (wrb) a0  <-- 0x80002d95
       0     2357        M 0x80000a18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a18
       0     2358        M 0x80000a1c jalr    ra, ra, 76             #; ra  = 0x80000a18, (wrb) ra  <-- 0x80000a20, goto 0x80000a64
       0     2359        M 0x80000a64 addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
       0     2360        M 0x80000a68 sw      ra, 12(sp)             #; sp  = 0x0011ff00, 0x80000a20 ~~> Word[0x0011ff0c]
       0     2361        M 0x80000a6c mv      t0, a0                 #; a0  = 0x80002d95, (wrb) t0  <-- 0x80002d95
       0     2362        M 0x80000a70 sw      a7, 44(sp)             #; sp  = 0x0011ff00, 0x4010f86c ~~> Word[0x0011ff2c]
       0     2363        M 0x80000a74 sw      a6, 40(sp)             #; sp  = 0x0011ff00, 0x4006a090 ~~> Word[0x0011ff28]
       0     2364        M 0x80000a78 sw      a5, 36(sp)             #; sp  = 0x0011ff00, 0x3d200000 ~~> Word[0x0011ff24]
       0     2365        M 0x80000a7c sw      a4, 32(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff20]
       0     2378        M 0x80000a80 sw      a3, 28(sp)             #; sp  = 0x0011ff00, 0x40653687 ~~> Word[0x0011ff1c]
       0     2379        M 0x80000a84 sw      a2, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
       0     2380        M 0x80000a88 sw      a1, 20(sp)             #; sp  = 0x0011ff00, 72 ~~> Word[0x0011ff14]
       0     2381        M 0x80000a8c addi    a0, sp, 20             #; sp  = 0x0011ff00, (wrb) a0  <-- 0x0011ff14
       0     2390        M 0x80000a90 sw      a0, 8(sp)              #; sp  = 0x0011ff00, 0x0011ff14 ~~> Word[0x0011ff08]
       0     2391        M 0x80000a94 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a94
       0     2392        M 0x80000a98 addi    a0, a0, -988           #; a0  = 0x80001a94, (wrb) a0  <-- 0x800016b8
       0     2393        M 0x80000a9c addi    a1, sp, 7              #; sp  = 0x0011ff00, (wrb) a1  <-- 0x0011ff07
       0     2402        M 0x80000aa0 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2403        M 0x80000aa4 addi    a4, sp, 20             #; sp  = 0x0011ff00, (wrb) a4  <-- 0x0011ff14
       0     2404        M 0x80000aa8 mv      a3, t0                 #; t0  = 0x80002d95, (wrb) a3  <-- 0x80002d95
       0     2405        M 0x80000aac auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000aac
       0     2414        M 0x80000ab0 jalr    ra, ra, 20             #; ra  = 0x80000aac, (wrb) ra  <-- 0x80000ab4, goto 0x80000ac0
       0     2426        M 0x80000ac0 addi    sp, sp, -112           #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fe90
       0     2427        M 0x80000ac4 sw      ra, 108(sp)            #; sp  = 0x0011fe90, 0x80000ab4 ~~> Word[0x0011fefc]
       0     2428        M 0x80000ac8 sw      s0, 104(sp)            #; sp  = 0x0011fe90, 0x001000a0 ~~> Word[0x0011fef8]
       0     2429        M 0x80000acc sw      s1, 100(sp)            #; sp  = 0x0011fe90, 0x00100050 ~~> Word[0x0011fef4]
       0     2438        M 0x80000ad0 sw      s2, 96(sp)             #; sp  = 0x0011fe90, 0x00100000 ~~> Word[0x0011fef0]
       0     2439        M 0x80000ad4 sw      s3, 92(sp)             #; sp  = 0x0011fe90, 0x339c0ebe ~~> Word[0x0011feec]
       0     2440        M 0x80000ad8 sw      s4, 88(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee8]
       0     2441        M 0x80000adc sw      s5, 84(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee4]
       0     2450        M 0x80000ae0 sw      s6, 80(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee0]
       0     2451        M 0x80000ae4 sw      s7, 76(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fedc]
       0     2452        M 0x80000ae8 sw      s8, 72(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed8]
       0     2453        M 0x80000aec sw      s9, 68(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed4]
       0     2462        M 0x80000af0 sw      s10, 64(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed0]
       0     2463        M 0x80000af4 sw      s11, 60(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fecc]
       0     2464        M 0x80000af8 mv      s3, a4                 #; a4  = 0x0011ff14, (wrb) s3  <-- 0x0011ff14
       0     2465        M 0x80000afc mv      s0, a3                 #; a3  = 0x80002d95, (wrb) s0  <-- 0x80002d95
       0     2474        M 0x80000b00 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2475        M 0x80000b04 mv      s4, a1                 #; a1  = 0x0011ff07, (wrb) s4  <-- 0x0011ff07
       0     2476        M 0x80000b08 beqz    a1, pc + 12            #; a1  = 0x0011ff07, not taken
       0     2477        M 0x80000b0c mv      s2, a0                 #; a0  = 0x800016b8, (wrb) s2  <-- 0x800016b8
       0     2486        M 0x80000b10 j       pc + 0xc               #; goto 0x80000b1c
       0     2487        M 0x80000b1c li      s8, 0                  #; (wrb) s8  <-- 0
       0     2499        M 0x80000b20 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2500        M 0x80000b24 li      s11, 16                #; (wrb) s11 <-- 16
       0     2501        M 0x80000b28 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2502        M 0x80000b2c lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2511        M 0x80000b30 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2512        M 0x80000b34 sw      a0, 24(sp)             #; sp  = 0x0011fe90, 2048 ~~> Word[0x0011fea8]
       0     2513        M 0x80000b38 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2514        M 0x80000b3c addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2523        M 0x80000b40 sw      a0, 16(sp)             #; sp  = 0x0011fe90, 65535 ~~> Word[0x0011fea0]
       0     2524        M 0x80000b44 addi    s10, s0, 2             #; s0  = 0x80002d95, (wrb) s10 <-- 0x80002d97
       0     2525        M 0x80000b48 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2526        M 0x80000b4c li      s8, 10                 #; (wrb) s8  <-- 10
       0     2535        M 0x80000b50 lbu     a0, 0(s0)              #; s0  = 0x80002d95, a0  <~~ Byte[0x80002d95]
       0     2546        M                                           #; (lsu) a0  <-- 101
       0     2547        M 0x80000b54 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2548        M 0x80000b58 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2549        M 0x80000b5c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2550        M 0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2551        M 0x80000b64 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2552        M 0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2553        M 0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
       0     2573        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2574        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2585        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2586        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2587        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     2588        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     2597        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     2598        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     2609        M                                           #; (lsu) a4  <-- 0
       0     2610        M 0x800016d8 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2611        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 1 ~~> Word[0x800030d4]
       0     2612        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 0, (wrb) a4  <-- 0x800030d4
       0     2613        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d4, 101 ~~> Byte[0x8000311c]
       0     2614        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     2635        M                                           #; (lsu) a4  <-- 1
       0     2636        M 0x800016ec addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2637        M 0x800016f0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2638        M 0x800016f4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2639        M 0x800016f8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2640        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2649        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     2672        M 0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
       0     2686        M 0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d95, (wrb) s0  <-- 0x80002d96
       0     2687        M 0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d97, (wrb) s10 <-- 0x80002d98
       0     2688        M 0x80000b78 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2689        M 0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d96, a0  <~~ Byte[0x80002d96]
       0     2700        M                                           #; (lsu) a0  <-- 114
       0     2701        M 0x80000b80 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b58
       0     2702        M 0x80000b58 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2703        M 0x80000b5c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2705        M 0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2706        M 0x80000b64 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2707        M 0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2708        M 0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
       0     2711        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2712        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2714        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2715        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2716        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     2717        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     2718        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2719        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     2720        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     2731        M                                           #; (lsu) a4  <-- 1
       0     2732        M 0x800016d8 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2733        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 2 ~~> Word[0x800030d4]
       0     2734        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 1, (wrb) a4  <-- 0x800030d5
       0     2735        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d5, 114 ~~> Byte[0x8000311d]
       0     2736        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     2757        M                                           #; (lsu) a4  <-- 2
       0     2758        M 0x800016ec addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2759        M 0x800016f0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2760        M 0x800016f4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2761        M 0x800016f8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2762        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2763        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     2768        M 0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
       0     2773        M 0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d96, (wrb) s0  <-- 0x80002d97
       0     2774        M 0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d98, (wrb) s10 <-- 0x80002d99
       0     2775        M 0x80000b78 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2776        M 0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d97, a0  <~~ Byte[0x80002d97]
       0     2787        M                                           #; (lsu) a0  <-- 114
       0     2788        M 0x80000b80 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b58
       0     2789        M 0x80000b58 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2790        M 0x80000b5c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2792        M 0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2793        M 0x80000b64 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2794        M 0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2795        M 0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
       0     2798        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2799        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2801        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2802        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2803        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     2804        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     2805        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2806        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     2807        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     2818        M                                           #; (lsu) a4  <-- 2
       0     2819        M 0x800016d8 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2820        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 3 ~~> Word[0x800030d4]
       0     2821        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 2, (wrb) a4  <-- 0x800030d6
       0     2822        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d6, 114 ~~> Byte[0x8000311e]
       0     2823        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     2844        M                                           #; (lsu) a4  <-- 3
       0     2845        M 0x800016ec addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2846        M 0x800016f0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2847        M 0x800016f4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2848        M 0x800016f8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2849        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2850        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     2855        M 0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
       0     2860        M 0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d97, (wrb) s0  <-- 0x80002d98
       0     2861        M 0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d99, (wrb) s10 <-- 0x80002d9a
       0     2862        M 0x80000b78 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2863        M 0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d98, a0  <~~ Byte[0x80002d98]
       0     2874        M                                           #; (lsu) a0  <-- 111
       0     2875        M 0x80000b80 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b58
       0     2876        M 0x80000b58 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2877        M 0x80000b5c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2879        M 0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2880        M 0x80000b64 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2881        M 0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2882        M 0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
       0     2885        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2886        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2888        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2889        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2890        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     2891        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     2892        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2893        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     2894        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     2905        M                                           #; (lsu) a4  <-- 3
       0     2906        M 0x800016d8 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2907        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 4 ~~> Word[0x800030d4]
       0     2908        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 3, (wrb) a4  <-- 0x800030d7
       0     2909        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d7, 111 ~~> Byte[0x8000311f]
       0     2910        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     2931        M                                           #; (lsu) a4  <-- 4
       0     2932        M 0x800016ec addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2933        M 0x800016f0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2934        M 0x800016f4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2935        M 0x800016f8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2936        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2937        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     2942        M 0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
       0     2947        M 0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d98, (wrb) s0  <-- 0x80002d99
       0     2948        M 0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d9a, (wrb) s10 <-- 0x80002d9b
       0     2949        M 0x80000b78 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2950        M 0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d99, a0  <~~ Byte[0x80002d99]
       0     2961        M                                           #; (lsu) a0  <-- 114
       0     2962        M 0x80000b80 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b58
       0     2963        M 0x80000b58 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2964        M 0x80000b5c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2966        M 0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2967        M 0x80000b64 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2968        M 0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2969        M 0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
       0     2972        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2973        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2975        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2976        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2977        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     2978        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     2979        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2980        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     2981        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     2992        M                                           #; (lsu) a4  <-- 4
       0     2993        M 0x800016d8 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2994        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 5 ~~> Word[0x800030d4]
       0     2995        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 4, (wrb) a4  <-- 0x800030d8
       0     2996        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d8, 114 ~~> Byte[0x80003120]
       0     2997        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     3018        M                                           #; (lsu) a4  <-- 5
       0     3019        M 0x800016ec addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3020        M 0x800016f0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3021        M 0x800016f4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3022        M 0x800016f8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3023        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3024        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     3029        M 0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
       0     3034        M 0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d99, (wrb) s0  <-- 0x80002d9a
       0     3035        M 0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d9b, (wrb) s10 <-- 0x80002d9c
       0     3036        M 0x80000b78 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3037        M 0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d9a, a0  <~~ Byte[0x80002d9a]
       0     3048        M                                           #; (lsu) a0  <-- 32
       0     3049        M 0x80000b80 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b58
       0     3050        M 0x80000b58 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3051        M 0x80000b5c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3053        M 0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3054        M 0x80000b64 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3055        M 0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3056        M 0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
       0     3059        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3060        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3062        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3063        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3064        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     3065        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     3066        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3067        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     3068        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     3079        M                                           #; (lsu) a4  <-- 5
       0     3080        M 0x800016d8 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3081        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 6 ~~> Word[0x800030d4]
       0     3082        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 5, (wrb) a4  <-- 0x800030d9
       0     3083        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d9, 32 ~~> Byte[0x80003121]
       0     3084        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     3105        M                                           #; (lsu) a4  <-- 6
       0     3106        M 0x800016ec addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3107        M 0x800016f0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3108        M 0x800016f4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3109        M 0x800016f8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3110        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3111        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     3116        M 0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
       0     3121        M 0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d9a, (wrb) s0  <-- 0x80002d9b
       0     3122        M 0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d9c, (wrb) s10 <-- 0x80002d9d
       0     3123        M 0x80000b78 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3124        M 0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d9b, a0  <~~ Byte[0x80002d9b]
       0     3135        M                                           #; (lsu) a0  <-- 61
       0     3136        M 0x80000b80 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b58
       0     3137        M 0x80000b58 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3138        M 0x80000b5c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3140        M 0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3141        M 0x80000b64 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3142        M 0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3143        M 0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
       0     3146        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3147        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3149        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3150        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3151        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     3152        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     3153        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3154        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     3155        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     3166        M                                           #; (lsu) a4  <-- 6
       0     3167        M 0x800016d8 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3168        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 7 ~~> Word[0x800030d4]
       0     3169        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 6, (wrb) a4  <-- 0x800030da
       0     3170        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030da, 61 ~~> Byte[0x80003122]
       0     3171        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     3192        M                                           #; (lsu) a4  <-- 7
       0     3193        M 0x800016ec addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3194        M 0x800016f0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3195        M 0x800016f4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3196        M 0x800016f8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3197        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3198        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     3203        M 0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
       0     3208        M 0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d9b, (wrb) s0  <-- 0x80002d9c
       0     3209        M 0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d9d, (wrb) s10 <-- 0x80002d9e
       0     3210        M 0x80000b78 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3211        M 0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d9c, a0  <~~ Byte[0x80002d9c]
       0     3222        M                                           #; (lsu) a0  <-- 32
       0     3223        M 0x80000b80 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b58
       0     3224        M 0x80000b58 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3225        M 0x80000b5c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3227        M 0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3228        M 0x80000b64 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3229        M 0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3230        M 0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
       0     3233        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3234        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3236        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3237        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3238        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     3239        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     3240        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3241        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     3242        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     3253        M                                           #; (lsu) a4  <-- 7
       0     3254        M 0x800016d8 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3255        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 8 ~~> Word[0x800030d4]
       0     3256        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 7, (wrb) a4  <-- 0x800030db
       0     3257        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030db, 32 ~~> Byte[0x80003123]
       0     3258        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     3279        M                                           #; (lsu) a4  <-- 8
       0     3280        M 0x800016ec addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3281        M 0x800016f0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3282        M 0x800016f4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3283        M 0x800016f8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3284        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3285        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     3290        M 0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
       0     3295        M 0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d9c, (wrb) s0  <-- 0x80002d9d
       0     3296        M 0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d9e, (wrb) s10 <-- 0x80002d9f
       0     3297        M 0x80000b78 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3298        M 0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d9d, a0  <~~ Byte[0x80002d9d]
       0     3309        M                                           #; (lsu) a0  <-- 37
       0     3310        M 0x80000b80 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b58
       0     3311        M 0x80000b58 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b88
       0     3312        M 0x80000b88 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3313        M 0x80000b8c j       pc + 0x10              #; goto 0x80000b9c
       0     3325        M 0x80000b9c lbu     a0, -1(s10)            #; s10 = 0x80002d9f, a0  <~~ Byte[0x80002d9e]
       0     3336        M                                           #; (lsu) a0  <-- 102
       0     3337        M 0x80000ba0 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3338        M 0x80000ba4 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000bdc
       0     3360        M 0x80000bdc addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3372        M 0x80000be0 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3373        M 0x80000be4 addi    a1, s10, -1            #; s10 = 0x80002d9f, (wrb) a1  <-- 0x80002d9e
       0     3374        M 0x80000be8 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3375        M 0x80000bec bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c68
       0     3395        M 0x80000c68 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3396        M 0x80000c6c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000cbc
       0     3418        M 0x80000cbc li      s6, 0                  #; (wrb) s6  <-- 0
       0     3430        M 0x80000cc0 mv      s10, a1                #; a1  = 0x80002d9e, (wrb) s10 <-- 0x80002d9e
       0     3431        M 0x80000cc4 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3432        M 0x80000cc8 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3433        M 0x80000ccc j       pc + 0xc               #; goto 0x80000cd8
       0     3453        M 0x80000cd8 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3454        M 0x80000cdc srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3465        M 0x80000ce0 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3466        M 0x80000ce4 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3467        M 0x80000ce8 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3468        M 0x80000cec bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d50
       0     3488        M 0x80000d50 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3489        M 0x80000d54 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3490        M 0x80000d58 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3491        M 0x80000d5c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3500        M 0x80000d60 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d60
       0     3501        M 0x80000d64 addi    a2, a2, 180            #; a2  = 0x80002d60, (wrb) a2  <-- 0x80002e14
       0     3502        M 0x80000d68 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e14, (wrb) a1  <-- 0x80002f18
       0     3503        M 0x80000d6c lw      a2, 0(a1)              #; a1  = 0x80002f18, a2  <~~ Word[0x80002f18]
       0     3512        M 0x80000d70 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3513        M 0x80000d74 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3514        M                                           #; (lsu) a2  <-- 0x80000da8
       0     3515        M 0x80000d78 jr      a2                     #; a2  = 0x80000da8, goto 0x80000da8
       0     3535        M 0x80000da8 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3536        M 0x80000dac bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000db4
       0     3547        M 0x80000db4 addi    a0, s3, 7              #; s3  = 0x0011ff14, (wrb) a0  <-- 0x0011ff1b
       0     3548        M 0x80000db8 andi    a0, a0, -8             #; a0  = 0x0011ff1b, (wrb) a0  <-- 0x0011ff18
       0     3551        M 0x80000dbc fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff18]
       0     3552        M                                           #; (f:lsu) fa0  <-- 169.7039795
       0     3559        M 0x80000dc0 addi    s3, a0, 8              #; a0  = 0x0011ff18, (wrb) s3  <-- 0x0011ff20
       0     3560        M 0x80000dc4 mv      a0, s2                 #; s2  = 0x800016b8, (wrb) a0  <-- 0x800016b8
       0     3561        M 0x80000dc8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3562        M 0x80000dcc mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3571        M 0x80000dd0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3572        M 0x80000dd4 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3573        M 0x80000dd8 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3574        M 0x80000ddc mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3583        M 0x80000de0 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001de0
       0     3584        M 0x80000de4 jalr    ra, ra, -1656          #; ra  = 0x80001de0, (wrb) ra  <-- 0x80000de8, goto 0x80001768
       0     3597        M 0x80001768 addi    sp, sp, -112           #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe20
       0     3598        M 0x8000176c sw      ra, 108(sp)            #; sp  = 0x0011fe20, 0x80000de8 ~~> Word[0x0011fe8c]
       0     3600        M 0x80001770 sw      s0, 104(sp)            #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe88]
       0     3601        M 0x80001774 sw      s1, 100(sp)            #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe84]
       0     3602        M 0x80001778 sw      s2, 96(sp)             #; sp  = 0x0011fe20, 0x800016b8 ~~> Word[0x0011fe80]
       0     3603        M 0x8000177c sw      s3, 92(sp)             #; sp  = 0x0011fe20, 0x0011ff20 ~~> Word[0x0011fe7c]
       0     3612        M 0x80001780 sw      s4, 88(sp)             #; sp  = 0x0011fe20, 0x0011ff07 ~~> Word[0x0011fe78]
       0     3613        M 0x80001784 sw      s5, 84(sp)             #; sp  = 0x0011fe20, -1 ~~> Word[0x0011fe74]
       0     3614        M 0x80001788 sw      s6, 80(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe70]
       0     3615        M 0x8000178c sw      s7, 76(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe6c]
       0     3624        M 0x80001790 sw      s8, 72(sp)             #; sp  = 0x0011fe20, 16 ~~> Word[0x0011fe68]
       0     3625        M 0x80001794 sw      s9, 68(sp)             #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe64]
       0     3626        M 0x80001798 sw      s10, 64(sp)            #; sp  = 0x0011fe20, 0x80002d9e ~~> Word[0x0011fe60]
       0     3629        M 0x8000179c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe58]
       0     3638        M 0x800017a8 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800037a8
                         M 0x800017a0 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe50]
       0     3639        M 0x800017ac addi    s1, s1, -1920          #; s1  = 0x800037a8, (wrb) s1  <-- 0x80003028
                         M 0x800017a4 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe48]
       0     3650        M 0x800017b8 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x800017b0 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003028]
       0     3651        M 0x800017bc mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     3659        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3660        M 0x800017c0 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800017b4 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 169.7039795
       0     3661        M 0x800017c4 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3662        M 0x800017c8 mv      s6, a1                 #; a1  = 0x0011ff07, (wrb) s6  <-- 0x0011ff07
       0     3663        M 0x800017cc mv      s7, a0                 #; a0  = 0x800016b8, (wrb) s7  <-- 0x800016b8
       0     3672        M 0x800017d0 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800018c0
       0     3696        M 0x800018c4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028c4
       0     3697        M 0x800018c8 addi    a0, a0, 1900           #; a0  = 0x800028c4, (wrb) a0  <-- 0x80003030
                         M 0x800018c0 fsgnj.d fs0, fa0, fa0          #; fa0  = 169.7039795, fa0  = 169.7039795
       0     3698        M                                           #; (f:fpu) fs0  <-- 169.7039795
       0     3700        M 0x800018cc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003030]
       0     3709        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3710        M 0x800018d0 fle.d   a0, fa0, ft0           #; fa0  = 169.7039795, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3712        M                                           #; (acc) t3  <-- 0x00051e63
       0     3713        M 0x800018d4 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018f0
       0     3730        M 0x800018f0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028f0
       0     3731        M 0x800018f4 addi    a0, a0, 1864           #; a0  = 0x800028f0, (wrb) a0  <-- 0x80003038
       0     3733        M 0x800018fc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028fc
       0     3734        M 0x800018f8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003038]
       0     3742        M 0x80001900 addi    a0, a0, 1860           #; a0  = 0x800028fc, (wrb) a0  <-- 0x80003040
       0     3743        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3745        M 0x80001904 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003040]
       0     3746        M 0x80001908 fle.d   a0, fs0, ft0           #; fs0  = 169.7039795, ft0  = 1000000000.0000000
       0     3754        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3755        M 0x8000190c fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 169.7039795
       0     3757        M                                           #; (acc) a0  <-- 0x00b57533
       0     3758        M 0x80001910 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3759        M 0x80001914 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a10
       0     3777        M 0x80001a10 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3778        M 0x80001a14 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3779        M 0x80001a18 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a20
       0     3789        M 0x80001a20 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3791        M 0x80001a28 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a60
       0     3792        M 0x80001a24 fsgnjx.d fs2, fs0, fs0         #; fs0  = 169.7039795, fs0  = 169.7039795
       0     3793        M                                           #; (f:fpu) fs2  <-- 169.7039795
       0     3812        M 0x80001a60 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3813        M 0x80001a64 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3814        M 0x80001a68 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a68
       0     3815        M 0x80001a6c addi    a1, a1, 1280           #; a1  = 0x80002a68, (wrb) a1  <-- 0x80002f68
       0     3824        M 0x80001a70 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002f68, (wrb) a0  <-- 0x80002f98
       0     3827        M 0x80001a74 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f98]
       0     3828        M 0x80001a78 fcvt.w.d s1, fs2               #; fs2  = 169.7039795
       0     3832        M 0x80001a7c fcvt.d.w ft0, s1               #; ac1  = 169
       0     3833        M                                           #; (f:fpu) ft0  <-- 169.0
       0     3836        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3838        M 0x80001a88 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a88
                         M 0x80001a80 fsub.d  ft0, fs2, ft0          #; fs2  = 169.7039795, ft0  = 169.0
       0     3839        M 0x80001a8c addi    a0, a0, 1472           #; a0  = 0x80002a88, (wrb) a0  <-- 0x80003048
       0     3841        M                                           #; (f:fpu) ft0  <-- 0.7039795
       0     3842        M 0x80001a84 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.7039795
       0     3845        M                                           #; (f:fpu) ft2  <-- 703979.4921875
       0     3850        M 0x80001a90 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003048]
       0     3851        M 0x80001a94 fcvt.wu.d a0, ft2              #; ft2  = 703979.4921875
       0     3853        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3855        M 0x80001a98 fcvt.d.wu ft3, a0              #; ac1  = 0x000abdeb
       0     3856        M                                           #; (f:fpu) ft3  <-- 703979.0
       0     3857        M 0x80001a9c fsub.d  ft2, ft2, ft3          #; ft2  = 703979.4921875, ft3  = 703979.0
       0     3859        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3860        M                                           #; (f:fpu) ft2  <-- 0.4921875
       0     3861        M 0x80001aa0 fle.d   a1, ft2, ft0           #; ft2  = 0.4921875, ft0  = 0.5
       0     3864        M 0x80001aa4 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001ac4
       0     3884        M 0x80001ac4 flt.d   a1, ft2, ft0           #; ft2  = 0.4921875, ft0  = 0.5
       0     3886        M                                           #; (acc) s4  <-- 0x00059a63
       0     3887        M 0x80001ac8 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001adc
       0     3896        M 0x80001adc fcvt.d.w fs1, zero             #; ac1  = 0
       0     3897        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3907        M 0x80001ae0 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     3908        M 0x80001ae4 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3909        M 0x80001ae8 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     3910        M 0x80001aec add     t1, a1, s0             #; a1  = 0x0011fe28, s0  = 0, (wrb) t1  <-- 0x0011fe28
       0     3919        M 0x80001af0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3920        M 0x80001af4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3921        M 0x80001af8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3922        M 0x80001afc addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3931        M 0x80001b00 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3932        M 0x80001b04 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3933        M 0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3934        M 0x80001b0c mv      a1, a0                 #; a0  = 0x000abdeb, (wrb) a1  <-- 0x000abdeb
       0     3943        M 0x80001b10 mulhu   a0, a0, t2             #; a0  = 0x000abdeb, t2  = 0xcccccccd
       0     3946        M                                           #; (acc) a0  <-- 0x00355513
       0     3947        M 0x80001b14 srli    a0, a0, 3              #; a0  = 0x000897ef, (wrb) a0  <-- 0x000112fd
       0     3948        M 0x80001b18 mul     a3, a0, a6             #; a0  = 0x000112fd, a6  = 10
       0     3951        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3952        M 0x80001b1c sub     a3, a1, a3             #; a1  = 0x000abdeb, a3  = 0x000abde2, (wrb) a3  <-- 9
       0     3955        M 0x80001b20 ori     a3, a3, 48             #; a3  = 9, (wrb) a3  <-- 57
       0     3956        M 0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 0, (wrb) a5  <-- 0x0011fe28
       0     3957        M 0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe28, 57 ~~> Byte[0x0011fe28]
       0     3958        M 0x80001b2c addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3967        M 0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000abdeb, taken, goto 0x80001b08
       0     3968        M 0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 1, not taken
       0     3969        M 0x80001b0c mv      a1, a0                 #; a0  = 0x000112fd, (wrb) a1  <-- 0x000112fd
       0     3970        M 0x80001b10 mulhu   a0, a0, t2             #; a0  = 0x000112fd, t2  = 0xcccccccd
       0     3973        M                                           #; (acc) a0  <-- 0x00355513
       0     3974        M 0x80001b14 srli    a0, a0, 3              #; a0  = 56317, (wrb) a0  <-- 7039
       0     3975        M 0x80001b18 mul     a3, a0, a6             #; a0  = 7039, a6  = 10
       0     3978        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3979        M 0x80001b1c sub     a3, a1, a3             #; a1  = 0x000112fd, a3  = 0x000112f6, (wrb) a3  <-- 7
       0     3980        M 0x80001b20 ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
       0     3981        M 0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 1, (wrb) a5  <-- 0x0011fe29
       0     3982        M 0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe29, 55 ~~> Byte[0x0011fe29]
       0     3983        M 0x80001b2c addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
       0     3984        M 0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000112fd, taken, goto 0x80001b08
       0     3985        M 0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 2, not taken
       0     3986        M 0x80001b0c mv      a1, a0                 #; a0  = 7039, (wrb) a1  <-- 7039
       0     3987        M 0x80001b10 mulhu   a0, a0, t2             #; a0  = 7039, t2  = 0xcccccccd
       0     3990        M                                           #; (acc) a0  <-- 0x00355513
       0     3991        M 0x80001b14 srli    a0, a0, 3              #; a0  = 5631, (wrb) a0  <-- 703
       0     3992        M 0x80001b18 mul     a3, a0, a6             #; a0  = 703, a6  = 10
       0     3995        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3996        M 0x80001b1c sub     a3, a1, a3             #; a1  = 7039, a3  = 7030, (wrb) a3  <-- 9
       0     3997        M 0x80001b20 ori     a3, a3, 48             #; a3  = 9, (wrb) a3  <-- 57
       0     3998        M 0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 2, (wrb) a5  <-- 0x0011fe2a
       0     3999        M 0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe2a, 57 ~~> Byte[0x0011fe2a]
       0     4000        M 0x80001b2c addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
       0     4001        M 0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7039, taken, goto 0x80001b08
       0     4002        M 0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 3, not taken
       0     4003        M 0x80001b0c mv      a1, a0                 #; a0  = 703, (wrb) a1  <-- 703
       0     4004        M 0x80001b10 mulhu   a0, a0, t2             #; a0  = 703, t2  = 0xcccccccd
       0     4007        M                                           #; (acc) a0  <-- 0x00355513
       0     4008        M 0x80001b14 srli    a0, a0, 3              #; a0  = 562, (wrb) a0  <-- 70
       0     4009        M 0x80001b18 mul     a3, a0, a6             #; a0  = 70, a6  = 10
       0     4012        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4013        M 0x80001b1c sub     a3, a1, a3             #; a1  = 703, a3  = 700, (wrb) a3  <-- 3
       0     4014        M 0x80001b20 ori     a3, a3, 48             #; a3  = 3, (wrb) a3  <-- 51
       0     4015        M 0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 3, (wrb) a5  <-- 0x0011fe2b
       0     4016        M 0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe2b, 51 ~~> Byte[0x0011fe2b]
       0     4017        M 0x80001b2c addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
       0     4018        M 0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 703, taken, goto 0x80001b08
       0     4019        M 0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 4, not taken
       0     4020        M 0x80001b0c mv      a1, a0                 #; a0  = 70, (wrb) a1  <-- 70
       0     4021        M 0x80001b10 mulhu   a0, a0, t2             #; a0  = 70, t2  = 0xcccccccd
       0     4024        M                                           #; (acc) a0  <-- 0x00355513
       0     4025        M 0x80001b14 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     4026        M 0x80001b18 mul     a3, a0, a6             #; a0  = 7, a6  = 10
       0     4029        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4030        M 0x80001b1c sub     a3, a1, a3             #; a1  = 70, a3  = 70, (wrb) a3  <-- 0
       0     4031        M 0x80001b20 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4032        M 0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 4, (wrb) a5  <-- 0x0011fe2c
       0     4033        M 0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe2c, 48 ~~> Byte[0x0011fe2c]
       0     4034        M 0x80001b2c addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
       0     4035        M 0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 70, taken, goto 0x80001b08
       0     4036        M 0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 5, not taken
       0     4037        M 0x80001b0c mv      a1, a0                 #; a0  = 7, (wrb) a1  <-- 7
       0     4038        M 0x80001b10 mulhu   a0, a0, t2             #; a0  = 7, t2  = 0xcccccccd
       0     4041        M                                           #; (acc) a0  <-- 0x00355513
       0     4042        M 0x80001b14 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
       0     4043        M 0x80001b18 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4046        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4047        M 0x80001b1c sub     a3, a1, a3             #; a1  = 7, a3  = 0, (wrb) a3  <-- 7
       0     4048        M 0x80001b20 ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
       0     4049        M 0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 5, (wrb) a5  <-- 0x0011fe2d
       0     4050        M 0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe2d, 55 ~~> Byte[0x0011fe2d]
       0     4051        M 0x80001b2c addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
       0     4052        M 0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7, not taken
       0     4053        M 0x80001b34 add     a0, s0, a2             #; s0  = 0, a2  = 6, (wrb) a0  <-- 6
       0     4054        M 0x80001b38 addi    a1, a0, -1             #; a0  = 6, (wrb) a1  <-- 5
       0     4055        M 0x80001b3c li      a3, 30                 #; (wrb) a3  <-- 30
       0     4065        M 0x80001b40 sltu    a3, a3, a1             #; a3  = 30, a1  = 5, (wrb) a3  <-- 0
       0     4066        M 0x80001b44 xor     a4, s8, a2             #; s8  = 6, a2  = 6, (wrb) a4  <-- 0
       0     4067        M 0x80001b48 seqz    a4, a4                 #; a4  = 0, (wrb) a4  <-- 1
       0     4068        M 0x80001b4c or      a3, a3, a4             #; a3  = 0, a4  = 1, (wrb) a3  <-- 1
       0     4077        M 0x80001b50 bnez    a3, pc + 136           #; a3  = 1, taken, goto 0x80001bd8
       0     4100        M 0x80001bd8 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4101        M 0x80001bdc beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4112        M 0x80001be0 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4113        M 0x80001be4 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     4114        M 0x80001be8 add     a0, a1, a0             #; a1  = 0x0011fe28, a0  = 6, (wrb) a0  <-- 0x0011fe2e
       0     4115        M 0x80001bec li      a1, 46                 #; (wrb) a1  <-- 46
       0     4124        M 0x80001bf0 sb      a1, 0(a0)              #; a0  = 0x0011fe2e, 46 ~~> Byte[0x0011fe2e]
       0     4125        M 0x80001bf4 j       pc + 0x8               #; goto 0x80001bfc
       0     4126        M 0x80001bfc li      a0, 32                 #; (wrb) a0  <-- 32
       0     4138        M 0x80001c00 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4139        M 0x80001c04 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4140        M 0x80001c08 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4142        M 0x80001c0c flt.d   s9, fs0, fs1           #; fs0  = 169.7039795, fs1  = 0.0
       0     4150        M 0x80001c10 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     4151        M 0x80001c14 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4152        M 0x80001c18 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4153        M 0x80001c1c addi    a3, sp, 8              #; sp  = 0x0011fe20, (wrb) a3  <-- 0x0011fe28
       0     4162        M 0x80001c20 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4163        M 0x80001c24 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4164        M 0x80001c28 mulh    a0, s1, a1             #; s1  = 169, a1  = 0x66666667
       0     4167        M                                           #; (acc) a5  <-- 0x01f55793
       0     4168        M 0x80001c2c srli    a5, a0, 31             #; a0  = 67, (wrb) a5  <-- 0
       0     4174        M 0x80001c30 srai    a0, a0, 2              #; a0  = 67, (wrb) a0  <-- 16
       0     4175        M 0x80001c34 add     a0, a0, a5             #; a0  = 16, a5  = 0, (wrb) a0  <-- 16
       0     4176        M 0x80001c38 mul     a5, a0, a6             #; a0  = 16, a6  = 10
       0     4179        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4180        M 0x80001c3c sub     a5, s1, a5             #; s1  = 169, a5  = 160, (wrb) a5  <-- 9
       0     4186        M 0x80001c40 addi    a5, a5, 48             #; a5  = 9, (wrb) a5  <-- 57
       0     4187        M 0x80001c44 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4188        M 0x80001c48 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 7, (wrb) s0  <-- 0x0011fe2f
       0     4189        M 0x80001c4c addi    a2, s1, 9              #; s1  = 169, (wrb) a2  <-- 178
       0     4198        M 0x80001c50 sb      a5, 0(s0)              #; s0  = 0x0011fe2f, 57 ~~> Byte[0x0011fe2f]
       0     4199        M 0x80001c54 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4200        M 0x80001c58 mv      s1, a0                 #; a0  = 16, (wrb) s1  <-- 16
       0     4201        M 0x80001c5c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 178, taken, goto 0x80001c24
       0     4202        M 0x80001c24 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 8, not taken
       0     4203        M 0x80001c28 mulh    a0, s1, a1             #; s1  = 16, a1  = 0x66666667
       0     4206        M                                           #; (acc) a5  <-- 0x01f55793
       0     4207        M 0x80001c2c srli    a5, a0, 31             #; a0  = 6, (wrb) a5  <-- 0
       0     4208        M 0x80001c30 srai    a0, a0, 2              #; a0  = 6, (wrb) a0  <-- 1
       0     4209        M 0x80001c34 add     a0, a0, a5             #; a0  = 1, a5  = 0, (wrb) a0  <-- 1
       0     4210        M 0x80001c38 mul     a5, a0, a6             #; a0  = 1, a6  = 10
       0     4213        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4214        M 0x80001c3c sub     a5, s1, a5             #; s1  = 16, a5  = 10, (wrb) a5  <-- 6
       0     4215        M 0x80001c40 addi    a5, a5, 48             #; a5  = 6, (wrb) a5  <-- 54
       0     4216        M 0x80001c44 addi    s8, s0, 1              #; s0  = 8, (wrb) s8  <-- 9
       0     4217        M 0x80001c48 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 8, (wrb) s0  <-- 0x0011fe30
       0     4218        M 0x80001c4c addi    a2, s1, 9              #; s1  = 16, (wrb) a2  <-- 25
       0     4219        M 0x80001c50 sb      a5, 0(s0)              #; s0  = 0x0011fe30, 54 ~~> Byte[0x0011fe30]
       0     4220        M 0x80001c54 mv      s0, s8                 #; s8  = 9, (wrb) s0  <-- 9
       0     4221        M 0x80001c58 mv      s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
       0     4222        M 0x80001c5c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 25, taken, goto 0x80001c24
       0     4223        M 0x80001c24 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 9, not taken
       0     4224        M 0x80001c28 mulh    a0, s1, a1             #; s1  = 1, a1  = 0x66666667
       0     4227        M                                           #; (acc) a5  <-- 0x01f55793
       0     4228        M 0x80001c2c srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4229        M 0x80001c30 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4230        M 0x80001c34 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4231        M 0x80001c38 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4234        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4235        M 0x80001c3c sub     a5, s1, a5             #; s1  = 1, a5  = 0, (wrb) a5  <-- 1
       0     4236        M 0x80001c40 addi    a5, a5, 48             #; a5  = 1, (wrb) a5  <-- 49
       0     4237        M 0x80001c44 addi    s8, s0, 1              #; s0  = 9, (wrb) s8  <-- 10
       0     4238        M 0x80001c48 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 9, (wrb) s0  <-- 0x0011fe31
       0     4239        M 0x80001c4c addi    a2, s1, 9              #; s1  = 1, (wrb) a2  <-- 10
       0     4240        M 0x80001c50 sb      a5, 0(s0)              #; s0  = 0x0011fe31, 49 ~~> Byte[0x0011fe31]
       0     4241        M 0x80001c54 mv      s0, s8                 #; s8  = 10, (wrb) s0  <-- 10
       0     4242        M 0x80001c58 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4243        M 0x80001c5c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 10, not taken
       0     4255        M 0x80001c60 j       pc + 0x8               #; goto 0x80001c68
       0     4256        M 0x80001c68 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4257        M 0x80001c6c li      a0, 1                  #; (wrb) a0  <-- 1
       0     4268        M 0x80001c70 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001cdc
       0     4291        M 0x80001cdc li      a0, 31                 #; (wrb) a0  <-- 31
       0     4303        M 0x80001ce0 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 10, not taken
       0     4304        M 0x80001ce4 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001cfc
       0     4315        M 0x80001cfc andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4327        M 0x80001d00 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4328        M 0x80001d04 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4329        M 0x80001d08 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d34
       0     4350        M 0x80001d34 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4351        M 0x80001d38 sltu    a1, s8, s2             #; s8  = 10, s2  = 0, (wrb) a1  <-- 0
       0     4352        M 0x80001d3c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4362        M 0x80001d40 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4363        M 0x80001d44 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4364        M 0x80001d48 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4365        M 0x80001d4c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d78
       0     4385        M 0x80001d78 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4386        M 0x80001d7c beqz    s8, pc + 56            #; s8  = 10, not taken
       0     4397        M 0x80001d80 addi    s9, sp, 7              #; sp  = 0x0011fe20, (wrb) s9  <-- 0x0011fe27
       0     4398        M 0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 10, (wrb) a0  <-- 0x0011fe31
       0     4399        M 0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe31, a0  <~~ Byte[0x0011fe31]
       0     4400        M 0x80001d8c addi    s10, s8, -1            #; s8  = 10, (wrb) s10 <-- 9
       0     4402        M                                           #; (lsu) a0  <-- 49
       0     4409        M 0x80001d90 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4410        M 0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4411        M 0x80001d98 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4412        M 0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4421        M 0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
       0     4424        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 49, not taken
       0     4425        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4427        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4428        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4429        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     4430        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     4431        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4432        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     4433        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4444        M                                           #; (lsu) a4  <-- 8
       0     4445        M 0x800016d8 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4446        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 9 ~~> Word[0x800030d4]
       0     4447        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 8, (wrb) a4  <-- 0x800030dc
       0     4448        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030dc, 49 ~~> Byte[0x80003124]
       0     4449        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4470        M                                           #; (lsu) a4  <-- 9
       0     4471        M 0x800016ec addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4472        M 0x800016f0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4473        M 0x800016f4 addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
       0     4474        M 0x800016f8 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
       0     4475        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4476        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     4481        M 0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
       0     4486        M 0x80001da4 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4487        M 0x80001da8 mv      s8, s10                #; s10 = 9, (wrb) s8  <-- 9
       0     4488        M 0x80001dac bnez    s10, pc - 40           #; s10 = 9, taken, goto 0x80001d84
       0     4489        M 0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 9, (wrb) a0  <-- 0x0011fe30
       0     4490        M 0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe30, a0  <~~ Byte[0x0011fe30]
       0     4491        M 0x80001d8c addi    s10, s8, -1            #; s8  = 9, (wrb) s10 <-- 8
       0     4492        M 0x80001d90 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4493        M 0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4494        M 0x80001d98 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4495        M 0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4496        M 0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
       0     4497        M                                           #; (lsu) a0  <-- 54
       0     4499        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 54, not taken
       0     4500        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4502        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4503        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4504        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     4505        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     4506        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4507        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     4508        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4519        M                                           #; (lsu) a4  <-- 9
       0     4520        M 0x800016d8 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4521        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 10 ~~> Word[0x800030d4]
       0     4522        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 9, (wrb) a4  <-- 0x800030dd
       0     4523        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030dd, 54 ~~> Byte[0x80003125]
       0     4524        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4545        M                                           #; (lsu) a4  <-- 10
       0     4546        M 0x800016ec addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4547        M 0x800016f0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4548        M 0x800016f4 addi    a0, a0, -10            #; a0  = 54, (wrb) a0  <-- 44
       0     4549        M 0x800016f8 snez    a0, a0                 #; a0  = 44, (wrb) a0  <-- 1
       0     4550        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4551        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     4556        M 0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
       0     4561        M 0x80001da4 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4562        M 0x80001da8 mv      s8, s10                #; s10 = 8, (wrb) s8  <-- 8
       0     4563        M 0x80001dac bnez    s10, pc - 40           #; s10 = 8, taken, goto 0x80001d84
       0     4564        M 0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 8, (wrb) a0  <-- 0x0011fe2f
       0     4565        M 0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2f, a0  <~~ Byte[0x0011fe2f]
       0     4566        M 0x80001d8c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4567        M 0x80001d90 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4568        M 0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4569        M 0x80001d98 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4570        M 0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4571        M 0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
       0     4572        M                                           #; (lsu) a0  <-- 57
       0     4574        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 57, not taken
       0     4575        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4577        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4578        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4579        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     4580        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     4581        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4582        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     4583        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4594        M                                           #; (lsu) a4  <-- 10
       0     4595        M 0x800016d8 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4596        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 11 ~~> Word[0x800030d4]
       0     4597        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 10, (wrb) a4  <-- 0x800030de
       0     4598        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030de, 57 ~~> Byte[0x80003126]
       0     4599        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4620        M                                           #; (lsu) a4  <-- 11
       0     4621        M 0x800016ec addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4622        M 0x800016f0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4623        M 0x800016f4 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
       0     4624        M 0x800016f8 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
       0     4625        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4626        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     4631        M 0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
       0     4636        M 0x80001da4 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4637        M 0x80001da8 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4638        M 0x80001dac bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d84
       0     4639        M 0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 7, (wrb) a0  <-- 0x0011fe2e
       0     4640        M 0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2e, a0  <~~ Byte[0x0011fe2e]
       0     4641        M 0x80001d8c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4642        M 0x80001d90 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4643        M 0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4644        M 0x80001d98 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4645        M 0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4646        M 0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
       0     4647        M                                           #; (lsu) a0  <-- 46
       0     4649        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4650        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4652        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4653        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4654        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     4655        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     4656        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4657        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     4658        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4669        M                                           #; (lsu) a4  <-- 11
       0     4670        M 0x800016d8 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4671        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 12 ~~> Word[0x800030d4]
       0     4672        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 11, (wrb) a4  <-- 0x800030df
       0     4673        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030df, 46 ~~> Byte[0x80003127]
       0     4674        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4695        M                                           #; (lsu) a4  <-- 12
       0     4696        M 0x800016ec addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4697        M 0x800016f0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4698        M 0x800016f4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4699        M 0x800016f8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4700        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4701        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     4706        M 0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
       0     4711        M 0x80001da4 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4712        M 0x80001da8 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4713        M 0x80001dac bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d84
       0     4714        M 0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 6, (wrb) a0  <-- 0x0011fe2d
       0     4715        M 0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2d, a0  <~~ Byte[0x0011fe2d]
       0     4716        M 0x80001d8c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4717        M 0x80001d90 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4718        M 0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4719        M 0x80001d98 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4720        M 0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4721        M 0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
       0     4722        M                                           #; (lsu) a0  <-- 55
       0     4724        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 55, not taken
       0     4725        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4727        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4728        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4729        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     4730        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     4731        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4732        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     4733        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4744        M                                           #; (lsu) a4  <-- 12
       0     4745        M 0x800016d8 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4746        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 13 ~~> Word[0x800030d4]
       0     4747        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 12, (wrb) a4  <-- 0x800030e0
       0     4748        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e0, 55 ~~> Byte[0x80003128]
       0     4749        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4770        M                                           #; (lsu) a4  <-- 13
       0     4771        M 0x800016ec addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4772        M 0x800016f0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4773        M 0x800016f4 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
       0     4774        M 0x800016f8 snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
       0     4775        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4776        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     4781        M 0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
       0     4786        M 0x80001da4 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4787        M 0x80001da8 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4788        M 0x80001dac bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d84
       0     4789        M 0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 5, (wrb) a0  <-- 0x0011fe2c
       0     4790        M 0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2c, a0  <~~ Byte[0x0011fe2c]
       0     4791        M 0x80001d8c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4792        M 0x80001d90 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4793        M 0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4794        M 0x80001d98 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4795        M 0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4796        M 0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
       0     4797        M                                           #; (lsu) a0  <-- 48
       0     4799        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4800        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4802        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4803        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4804        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     4805        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     4806        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4807        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     4808        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4819        M                                           #; (lsu) a4  <-- 13
       0     4820        M 0x800016d8 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4821        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 14 ~~> Word[0x800030d4]
       0     4822        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 13, (wrb) a4  <-- 0x800030e1
       0     4823        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e1, 48 ~~> Byte[0x80003129]
       0     4824        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4845        M                                           #; (lsu) a4  <-- 14
       0     4846        M 0x800016ec addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4847        M 0x800016f0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4848        M 0x800016f4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4849        M 0x800016f8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4850        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4851        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     4856        M 0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
       0     4861        M 0x80001da4 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4862        M 0x80001da8 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4863        M 0x80001dac bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d84
       0     4864        M 0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 4, (wrb) a0  <-- 0x0011fe2b
       0     4865        M 0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2b, a0  <~~ Byte[0x0011fe2b]
       0     4866        M 0x80001d8c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4867        M 0x80001d90 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4868        M 0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4869        M 0x80001d98 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4870        M 0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4871        M 0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
       0     4872        M                                           #; (lsu) a0  <-- 51
       0     4874        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 51, not taken
       0     4875        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4877        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4878        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4879        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     4880        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     4881        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4882        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     4883        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4894        M                                           #; (lsu) a4  <-- 14
       0     4895        M 0x800016d8 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4896        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 15 ~~> Word[0x800030d4]
       0     4897        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 14, (wrb) a4  <-- 0x800030e2
       0     4898        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e2, 51 ~~> Byte[0x8000312a]
       0     4899        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4920        M                                           #; (lsu) a4  <-- 15
       0     4921        M 0x800016ec addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4922        M 0x800016f0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4923        M 0x800016f4 addi    a0, a0, -10            #; a0  = 51, (wrb) a0  <-- 41
       0     4924        M 0x800016f8 snez    a0, a0                 #; a0  = 41, (wrb) a0  <-- 1
       0     4925        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4926        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     4931        M 0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
       0     4936        M 0x80001da4 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4937        M 0x80001da8 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4938        M 0x80001dac bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d84
       0     4939        M 0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 3, (wrb) a0  <-- 0x0011fe2a
       0     4940        M 0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2a, a0  <~~ Byte[0x0011fe2a]
       0     4941        M 0x80001d8c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4942        M 0x80001d90 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4943        M 0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4944        M 0x80001d98 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4945        M 0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4946        M 0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
       0     4947        M                                           #; (lsu) a0  <-- 57
       0     4949        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 57, not taken
       0     4950        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4952        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4953        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4954        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     4955        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     4956        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4957        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     4958        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4969        M                                           #; (lsu) a4  <-- 15
       0     4970        M 0x800016d8 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4971        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 16 ~~> Word[0x800030d4]
       0     4972        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 15, (wrb) a4  <-- 0x800030e3
       0     4973        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e3, 57 ~~> Byte[0x8000312b]
       0     4974        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     4995        M                                           #; (lsu) a4  <-- 16
       0     4996        M 0x800016ec addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4997        M 0x800016f0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4998        M 0x800016f4 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
       0     4999        M 0x800016f8 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
       0     5000        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5001        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     5006        M 0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
       0     5011        M 0x80001da4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5012        M 0x80001da8 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5013        M 0x80001dac bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d84
       0     5014        M 0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 2, (wrb) a0  <-- 0x0011fe29
       0     5015        M 0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe29, a0  <~~ Byte[0x0011fe29]
       0     5016        M 0x80001d8c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5017        M 0x80001d90 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
       0     5018        M 0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5019        M 0x80001d98 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
       0     5020        M 0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5021        M 0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
       0     5022        M                                           #; (lsu) a0  <-- 55
       0     5024        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 55, not taken
       0     5025        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5027        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5028        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5029        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     5030        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     5031        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5032        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     5033        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     5044        M                                           #; (lsu) a4  <-- 16
       0     5045        M 0x800016d8 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5046        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 17 ~~> Word[0x800030d4]
       0     5047        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 16, (wrb) a4  <-- 0x800030e4
       0     5048        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e4, 55 ~~> Byte[0x8000312c]
       0     5049        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     5070        M                                           #; (lsu) a4  <-- 17
       0     5071        M 0x800016ec addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5072        M 0x800016f0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5073        M 0x800016f4 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
       0     5074        M 0x800016f8 snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
       0     5075        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5076        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     5081        M 0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
       0     5086        M 0x80001da4 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     5087        M 0x80001da8 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5088        M 0x80001dac bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d84
       0     5089        M 0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 1, (wrb) a0  <-- 0x0011fe28
       0     5090        M 0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe28, a0  <~~ Byte[0x0011fe28]
       0     5091        M 0x80001d8c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5092        M 0x80001d90 addi    s1, s0, 1              #; s0  = 17, (wrb) s1  <-- 18
       0     5093        M 0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5094        M 0x80001d98 mv      a2, s0                 #; s0  = 17, (wrb) a2  <-- 17
       0     5095        M 0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5096        M 0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
       0     5097        M                                           #; (lsu) a0  <-- 57
       0     5099        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 57, not taken
       0     5100        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5102        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5103        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5104        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     5105        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     5106        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5107        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     5108        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     5119        M                                           #; (lsu) a4  <-- 17
       0     5120        M 0x800016d8 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
       0     5121        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 18 ~~> Word[0x800030d4]
       0     5122        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 17, (wrb) a4  <-- 0x800030e5
       0     5123        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e5, 57 ~~> Byte[0x8000312d]
       0     5124        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     5145        M                                           #; (lsu) a4  <-- 18
       0     5146        M 0x800016ec addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
       0     5147        M 0x800016f0 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
       0     5148        M 0x800016f4 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
       0     5149        M 0x800016f8 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
       0     5150        M 0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5151        M 0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
       0     5156        M 0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
       0     5161        M 0x80001da4 mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
       0     5162        M 0x80001da8 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5163        M 0x80001dac bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5175        M 0x80001db0 j       pc + 0x8               #; goto 0x80001db8
       0     5176        M 0x80001db8 sub     a0, s1, s4             #; s1  = 18, s4  = 8, (wrb) a0  <-- 10
       0     5177        M 0x80001dbc sltu    a0, a0, s2             #; a0  = 10, s2  = 0, (wrb) a0  <-- 0
       0     5188        M 0x80001dc0 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5189        M 0x80001dc4 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5190        M 0x80001dc8 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5191        M 0x80001dcc bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001dfc
       0     5211        M 0x80001dfc mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
       0     5223        M 0x80001e00 mv      a0, s0                 #; s0  = 18, (wrb) a0  <-- 18
       0     5226        M 0x80001e04 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe48]
       0     5227        M 0x80001e08 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe50], (f:lsu) fs2  <-- 0.0
       0     5228        M 0x80001e0c fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe58], (f:lsu) fs1  <-- 0.0
       0     5229        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5235        M 0x80001e10 lw      s10, 64(sp)            #; sp  = 0x0011fe20, s10 <~~ Word[0x0011fe60]
       0     5238        M                                           #; (lsu) s10 <-- 0x80002d9e
       0     5239        M 0x80001e14 lw      s9, 68(sp)             #; sp  = 0x0011fe20, s9  <~~ Word[0x0011fe64]
       0     5242        M                                           #; (lsu) s9  <-- 8
       0     5243        M 0x80001e18 lw      s8, 72(sp)             #; sp  = 0x0011fe20, s8  <~~ Word[0x0011fe68]
       0     5246        M                                           #; (lsu) s8  <-- 16
       0     5247        M 0x80001e1c lw      s7, 76(sp)             #; sp  = 0x0011fe20, s7  <~~ Word[0x0011fe6c]
       0     5250        M                                           #; (lsu) s7  <-- 0
       0     5251        M 0x80001e20 lw      s6, 80(sp)             #; sp  = 0x0011fe20, s6  <~~ Word[0x0011fe70]
       0     5254        M                                           #; (lsu) s6  <-- 0
       0     5255        M 0x80001e24 lw      s5, 84(sp)             #; sp  = 0x0011fe20, s5  <~~ Word[0x0011fe74]
       0     5258        M                                           #; (lsu) s5  <-- -1
       0     5259        M 0x80001e28 lw      s4, 88(sp)             #; sp  = 0x0011fe20, s4  <~~ Word[0x0011fe78]
       0     5262        M                                           #; (lsu) s4  <-- 0x0011ff07
       0     5263        M 0x80001e2c lw      s3, 92(sp)             #; sp  = 0x0011fe20, s3  <~~ Word[0x0011fe7c]
       0     5266        M                                           #; (lsu) s3  <-- 0x0011ff20
       0     5267        M 0x80001e30 lw      s2, 96(sp)             #; sp  = 0x0011fe20, s2  <~~ Word[0x0011fe80]
       0     5270        M                                           #; (lsu) s2  <-- 0x800016b8
       0     5271        M 0x80001e34 lw      s1, 100(sp)            #; sp  = 0x0011fe20, s1  <~~ Word[0x0011fe84]
       0     5274        M                                           #; (lsu) s1  <-- 8
       0     5275        M 0x80001e38 lw      s0, 104(sp)            #; sp  = 0x0011fe20, s0  <~~ Word[0x0011fe88]
       0     5278        M                                           #; (lsu) s0  <-- 0
       0     5279        M 0x80001e3c lw      ra, 108(sp)            #; sp  = 0x0011fe20, ra  <~~ Word[0x0011fe8c]
       0     5280        M 0x80001e40 addi    sp, sp, 112            #; sp  = 0x0011fe20, (wrb) sp  <-- 0x0011fe90
       0     5282        M                                           #; (lsu) ra  <-- 0x80000de8
       0     5283        M 0x80001e44 ret                            #; ra  = 0x80000de8, goto 0x80000de8
       0     5294        M 0x80000de8 j       pc + 0x7c0             #; goto 0x800015a8
       0     5297        M 0x800015a8 mv      s8, a0                 #; a0  = 18, (wrb) s8  <-- 18
       0     5298        M 0x800015ac li      s6, 37                 #; (wrb) s6  <-- 37
       0     5309        M 0x800015b0 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5310        M 0x800015b4 addi    s0, s10, 1             #; s10 = 0x80002d9e, (wrb) s0  <-- 0x80002d9f
       0     5311        M 0x800015b8 j       pc - 0xa74             #; goto 0x80000b44
       0     5312        M 0x80000b44 addi    s10, s0, 2             #; s0  = 0x80002d9f, (wrb) s10 <-- 0x80002da1
       0     5313        M 0x80000b48 mv      s9, s8                 #; s8  = 18, (wrb) s9  <-- 18
       0     5314        M 0x80000b4c li      s8, 10                 #; (wrb) s8  <-- 10
       0     5315        M 0x80000b50 lbu     a0, 0(s0)              #; s0  = 0x80002d9f, a0  <~~ Byte[0x80002d9f]
       0     5326        M                                           #; (lsu) a0  <-- 10
       0     5327        M 0x80000b54 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5328        M 0x80000b58 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5329        M 0x80000b5c addi    s1, s9, 1              #; s9  = 18, (wrb) s1  <-- 19
       0     5330        M 0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5331        M 0x80000b64 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
       0     5332        M 0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5333        M 0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
       0     5336        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5337        M 0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5339        M 0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5340        M 0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5341        M 0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
       0     5342        M 0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
       0     5343        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5344        M 0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
       0     5345        M 0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     5356        M                                           #; (lsu) a4  <-- 18
       0     5357        M 0x800016d8 addi    a5, a4, 1              #; a4  = 18, (wrb) a5  <-- 19
       0     5358        M 0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 19 ~~> Word[0x800030d4]
       0     5359        M 0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 18, (wrb) a4  <-- 0x800030e6
       0     5360        M 0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e6, 10 ~~> Byte[0x8000312e]
       0     5361        M 0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
       0     5382        M                                           #; (lsu) a4  <-- 19
       0     5383        M 0x800016ec addi    a4, a4, -1020          #; a4  = 19, (wrb) a4  <-- -1001
       0     5384        M 0x800016f0 snez    a4, a4                 #; a4  = -1001, (wrb) a4  <-- 1
       0     5385        M 0x800016f4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5386        M 0x800016f8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5387        M 0x800016fc and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5388        M 0x80001700 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5389        M 0x80001704 add     a0, a3, a2             #; a3  = 0x800030d4, a2  = 0, (wrb) a0  <-- 0x800030d4
       0     5390        M 0x80001708 addi    a2, a0, 72             #; a0  = 0x800030d4, (wrb) a2  <-- 0x8000311c
       0     5391        M 0x8000170c sw      zero, 12(a0)           #; a0  = 0x800030d4, 0 ~~> Word[0x800030e0]
       0     5392        M 0x80001710 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5393        M 0x80001714 sw      a3, 8(a0)              #; a0  = 0x800030d4, 64 ~~> Word[0x800030dc]
       0     5394        M 0x80001718 sw      zero, 20(a0)           #; a0  = 0x800030d4, 0 ~~> Word[0x800030e8]
       0     5395        M 0x8000171c li      a3, 1                  #; (wrb) a3  <-- 1
       0     5404        M 0x80001720 sw      a3, 16(a0)             #; a0  = 0x800030d4, 1 ~~> Word[0x800030e4]
       0     5405        M 0x80001724 sw      zero, 28(a0)           #; a0  = 0x800030d4, 0 ~~> Word[0x800030f0]
       0     5407        M 0x80001728 sw      a2, 24(a0)             #; a0  = 0x800030d4, 0x8000311c ~~> Word[0x800030ec]
       0     5417        M 0x8000172c lw      a2, 0(a1)              #; a1  = 0x800030d4, a2  <~~ Word[0x800030d4]
       0     5418        M 0x80001730 addi    a3, a0, 8              #; a0  = 0x800030d4, (wrb) a3  <-- 0x800030dc
       0     5419        M 0x80001734 sw      zero, 36(a0)           #; a0  = 0x800030d4, 0 ~~> Word[0x800030f8]
       0     5439        M                                           #; (lsu) a2  <-- 19
       0     5440        M 0x80001738 sw      a2, 32(a0)             #; a0  = 0x800030d4, 19 ~~> Word[0x800030f4]
       0     5441        M 0x8000173c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000373c
       0     5442        M 0x80001740 addi    a0, a0, -1916          #; a0  = 0x8000373c, (wrb) a0  <-- 0x80002fc0
       0     5443        M 0x80001744 sw      a3, 0(a0)              #; a0  = 0x80002fc0, 0x800030dc ~~> Word[0x80002fc0]
       0     5444        M 0x80001748 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003748
       0     5445        M 0x8000174c addi    a0, a0, -1864          #; a0  = 0x80003748, (wrb) a0  <-- 0x80003000
       0     5454        M 0x80001750 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5469        M                                           #; (lsu) a2  <-- 0
       0     5470        M 0x80001754 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001750
       0     5471        M 0x80001750 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5482        M                                           #; (lsu) a2  <-- 0
       0     5483        M 0x80001754 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001750
       0     5484        M 0x80001750 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5495        M                                           #; (lsu) a2  <-- 0
       0     5496        M 0x80001754 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001750
       0     5497        M 0x80001750 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5508        M                                           #; (lsu) a2  <-- 1
       0     5509        M 0x80001754 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5510        M 0x80001758 sw      zero, 0(a0)            #; a0  = 0x80003000, 0 ~~> Word[0x80003000]
       0     5511        M 0x8000175c sw      zero, 0(a1)            #; a1  = 0x800030d4, 0 ~~> Word[0x800030d4]
       0     5513        M 0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
       0     5518        M 0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d9f, (wrb) s0  <-- 0x80002da0
       0     5519        M 0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002da1, (wrb) s10 <-- 0x80002da2
       0     5520        M 0x80000b78 mv      s9, s1                 #; s1  = 19, (wrb) s9  <-- 19
       0     5521        M 0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002da0, a0  <~~ Byte[0x80002da0]
       0     5533        M                                           #; (lsu) a0  <-- 0
       0     5534        M 0x80000b80 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5535        M 0x80000b84 j       pc + 0xad8             #; goto 0x8000165c
       0     5547        M 0x8000165c mv      a2, s9                 #; s9  = 19, (wrb) a2  <-- 19
       0     5559        M 0x80001660 bltu    s9, s5, pc + 8         #; s9  = 19, s5  = -1, taken, goto 0x80001668
       0     5560        M 0x80001668 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5561        M 0x8000166c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5571        M 0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5572        M 0x80001674 jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80001678, goto 0x800016b8
       0     5585        M 0x800016b8 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001760
       0     5590        M 0x80001760 ret                            #; ra  = 0x80001678, goto 0x80001678
       0     5591        M 0x80001678 mv      a0, s9                 #; s9  = 19, (wrb) a0  <-- 19
       0     5592        M 0x8000167c lw      s11, 60(sp)            #; sp  = 0x0011fe90, s11 <~~ Word[0x0011fecc]
       0     5595        M                                           #; (lsu) s11 <-- 0
       0     5596        M 0x80001680 lw      s10, 64(sp)            #; sp  = 0x0011fe90, s10 <~~ Word[0x0011fed0]
       0     5599        M                                           #; (lsu) s10 <-- 0
       0     5600        M 0x80001684 lw      s9, 68(sp)             #; sp  = 0x0011fe90, s9  <~~ Word[0x0011fed4]
       0     5603        M                                           #; (lsu) s9  <-- 0
       0     5604        M 0x80001688 lw      s8, 72(sp)             #; sp  = 0x0011fe90, s8  <~~ Word[0x0011fed8]
       0     5607        M                                           #; (lsu) s8  <-- 0
       0     5608        M 0x8000168c lw      s7, 76(sp)             #; sp  = 0x0011fe90, s7  <~~ Word[0x0011fedc]
       0     5611        M                                           #; (lsu) s7  <-- 0
       0     5612        M 0x80001690 lw      s6, 80(sp)             #; sp  = 0x0011fe90, s6  <~~ Word[0x0011fee0]
       0     5615        M                                           #; (lsu) s6  <-- 0
       0     5616        M 0x80001694 lw      s5, 84(sp)             #; sp  = 0x0011fe90, s5  <~~ Word[0x0011fee4]
       0     5619        M                                           #; (lsu) s5  <-- 0
       0     5620        M 0x80001698 lw      s4, 88(sp)             #; sp  = 0x0011fe90, s4  <~~ Word[0x0011fee8]
       0     5623        M                                           #; (lsu) s4  <-- 0
       0     5624        M 0x8000169c lw      s3, 92(sp)             #; sp  = 0x0011fe90, s3  <~~ Word[0x0011feec]
       0     5627        M                                           #; (lsu) s3  <-- 0x339c0ebe
       0     5628        M 0x800016a0 lw      s2, 96(sp)             #; sp  = 0x0011fe90, s2  <~~ Word[0x0011fef0]
       0     5631        M                                           #; (lsu) s2  <-- 0x00100000
       0     5632        M 0x800016a4 lw      s1, 100(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011fef4]
       0     5635        M                                           #; (lsu) s1  <-- 0x00100050
       0     5636        M 0x800016a8 lw      s0, 104(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011fef8]
       0     5639        M                                           #; (lsu) s0  <-- 0x001000a0
       0     5640        M 0x800016ac lw      ra, 108(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011fefc]
       0     5641        M 0x800016b0 addi    sp, sp, 112            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff00
       0     5643        M                                           #; (lsu) ra  <-- 0x80000ab4
       0     5644        M 0x800016b4 ret                            #; ra  = 0x80000ab4, goto 0x80000ab4
       0     5647        M 0x80000ab4 lw      ra, 12(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff0c]
       0     5648        M 0x80000ab8 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
       0     5650        M                                           #; (lsu) ra  <-- 0x80000a20
       0     5651        M 0x80000abc ret                            #; ra  = 0x80000a20, goto 0x80000a20
       0     5663        M 0x80000a20 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a20
       0     5664        M 0x80000a24 addi    a0, a0, 1536           #; a0  = 0x80002a20, (wrb) a0  <-- 0x80003020
       0     5667        M 0x80000a28 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003020]
       0     5668        M 0x80000a34 lw      s3, 28(sp)             #; sp  = 0x0011ff30, s3  <~~ Word[0x0011ff4c]
       0     5676        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5677        M 0x80000a2c flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0     5678        M                                           #; (lsu) s3  <-- 0
       0     5679        M 0x80000a38 lw      s2, 32(sp)             #; sp  = 0x0011ff30, s2  <~~ Word[0x0011ff50], (acc) s2  <-- 0x02012903
                         M 0x80000a30 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff40]
       0     5680        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5682        M                                           #; (lsu) s2  <-- 0
       0     5683        M 0x80000a3c lw      s1, 36(sp)             #; sp  = 0x0011ff30, s1  <~~ Word[0x0011ff54]
       0     5686        M                                           #; (lsu) s1  <-- 0
       0     5687        M 0x80000a40 lw      s0, 40(sp)             #; sp  = 0x0011ff30, s0  <~~ Word[0x0011ff58]
       0     5690        M                                           #; (lsu) s0  <-- 0
       0     5691        M 0x80000a44 lw      ra, 44(sp)             #; sp  = 0x0011ff30, ra  <~~ Word[0x0011ff5c]
       0     5692        M 0x80000a48 addi    sp, sp, 48             #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff60
       0     5694        M                                           #; (lsu) ra  <-- 0x80002b10
       0     5695        M 0x80000a4c ret                            #; ra  = 0x80002b10, goto 0x80002b10
       0     5707        M 0x80002b10 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5708        M 0x80002b14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b14
       0     5709        M 0x80002b18 jalr    ra, ra, 524            #; ra  = 0x80002b14, (wrb) ra  <-- 0x80002b1c, goto 0x80002d20
       0     5721        M 0x80002d20 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5722        M 0x80002d24 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b1c ~~> Word[0x0011ff5c]
       0     5723        M 0x80002d28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d28
       0     5724        M 0x80002d2c jalr    ra, ra, -1256          #; ra  = 0x80002d28, (wrb) ra  <-- 0x80002d30, goto 0x80002840
       0     5736        M 0x80002840 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5737        M 0x80002844 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5738        M 0x80002848 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5741        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5742        M 0x8000284c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5745        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5748        M 0x80002850 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5749        M 0x80002854 ret                            #; ra  = 0x80002d30, goto 0x80002d30
       0     5751        M                                           #; (lsu) a0  <-- 0x00120190
       0     5752        M 0x80002d30 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5762        M                                           #; (lsu) a0  <-- 0
       0     5763        M 0x80002d34 mv      zero, a0               #; a0  = 0
       0     5764        M 0x80002d38 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5765        M 0x80002d3c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5767        M                                           #; (lsu) ra  <-- 0x80002b1c
       0     5768        M 0x80002d40 ret                            #; ra  = 0x80002b1c, goto 0x80002b1c
       0     5782        M 0x80002b1c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5786        M 0x80002b20 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b20
       0     5787        M 0x80002b24 jalr    ra, ra, 556            #; ra  = 0x80002b20, (wrb) ra  <-- 0x80002b28, goto 0x80002d4c
       0     5788        M 0x80002d4c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5789        M 0x80002d50 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5790        M 0x80002d54 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b28 ~~> Word[0x0011ff5c]
       0     5791        M 0x80002d58 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d58
       0     5792        M 0x80002d5c jalr    ra, ra, -1336          #; ra  = 0x80002d58, (wrb) ra  <-- 0x80002d60, goto 0x80002820
       0     5803        M 0x80002820 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5804        M 0x80002824 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5805        M 0x80002828 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5808        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5809        M 0x8000282c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5812        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5815        M 0x80002830 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5816        M 0x80002834 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5818        M                                           #; (lsu) a0  <-- 0
       0     5819        M 0x80002838 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5820        M 0x8000283c ret                            #; ra  = 0x80002d60, goto 0x80002d60
       0     5821        M 0x80002d60 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5824        M                                           #; (lsu) t0  <-- 0
       0     5825        M 0x80002d64 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5826        M 0x80002d68 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5827        M 0x80002d6c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5828        M                                           #; (lsu) ra  <-- 0x80002b28
       0     5833        M 0x80002d70 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5834        M 0x80002d74 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5835        M 0x80002d78 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d78
       0     5836        M 0x80002d7c addi    t1, t1, 584            #; t1  = 0x80002d78, (wrb) t1  <-- 0x80002fc0
       0     5844        M 0x80002d80 sw      t0, 0(t1)              #; t1  = 0x80002fc0, 1 ~~> Word[0x80002fc0]
       0     5845        M 0x80002d84 ret                            #; ra  = 0x80002b28, goto 0x80002b28
       0     5846        M 0x80002b28 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5846):
snitch_loads                                   149
snitch_stores                                  234
fpss_stores                                      6
fpss_loads                                      43
snitch_avg_load_latency                    11.4497
snitch_occupancy                            0.2559
snitch_fseq_rel_offloads                    0.0801
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.6914
fpss_avg_load_latency                       2.4884
fpss_occupancy                              0.0223
fpss_fpu_occupancy                          0.0139
fpss_fpu_rel_occupancy                      0.6231
cycles                                        5835
total_ipc                                   0.2781
