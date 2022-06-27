       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800028f0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800028f0, (wrb) ra  <-- 4120, goto 0x800028f0
       0      269        M 0x800028f0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800038f0
       0      270        M 0x800028f4 addi    gp, gp, -232           #; gp  = 0x800038f0, (wrb) gp  <-- 0x80003808
       0      271        M 0x800028f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028f8
       0      272        M 0x800028fc jalr    ra, ra, 964            #; ra  = 0x800028f8, (wrb) ra  <-- 0x80002900, goto 0x80002cbc
       0      292        M 0x80002cbc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002cc0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002cc4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002cc8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002ccc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002cd0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002cd4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002cd8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002cdc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002ce0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002ce4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002ce8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002cec ret                            #; ra  = 0x80002900, goto 0x80002900
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002900 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002904 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002908 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002908
       0      508        M 0x8000290c jalr    ra, ra, 1036           #; ra  = 0x80002908, (wrb) ra  <-- 0x80002910, goto 0x80002d14
       0      523        M 0x80002d14 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002d18 ret                            #; ra  = 0x80002910, goto 0x80002910
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002910 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002914 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002918 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000291c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002920 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002924 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80003924
       0      551        M 0x80002928 addi    t0, t0, -2044          #; t0  = 0x80003924, (wrb) t0  <-- 0x80003128
       0      552        M 0x8000292c auipc   t1, 0x1                #; (wrb) t1  <-- 0x8000392c
       0      562        M 0x80002930 addi    t1, t1, -2048          #; t1  = 0x8000392c, (wrb) t1  <-- 0x8000312c
       0      563        M 0x80002934 bge     t0, t1, pc + 16        #; t0  = 0x80003128, t1  = 0x8000312c, not taken
       0      564        M 0x80002938 sw      zero, 0(t0)            #; t0  = 0x80003128, 0 ~~> Word[0x80003128]
       0      565        M 0x8000293c addi    t0, t0, 4              #; t0  = 0x80003128, (wrb) t0  <-- 0x8000312c
       0      573        M 0x80002940 blt     t0, t1, pc - 8         #; t0  = 0x8000312c, t1  = 0x8000312c, not taken
       0      574        M 0x80002944 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002948 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000294c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002950 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002954 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002958 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000295c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002960 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002964 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002968 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000296c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002970 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002974 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002978 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000297c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002980 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002984 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002988 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000298c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002990 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002994 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002998 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000299c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800029a0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800029a4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800029a8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800029ac fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800029b0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800029b4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800029b8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800029bc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800029c0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800029c4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800029c8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800029cc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800029d0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800029d4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800029d8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029d8
       0      684        M 0x800029dc lw      t0, 900(t0)            #; t0  = 0x800029d8, t0  <~~ Word[0x80002d5c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800029e0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800029e4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800029e8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029e8
       0      708        M 0x800029ec lw      t2, 880(t2)            #; t2  = 0x800029e8, t2  <~~ Word[0x80002d58]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800029f0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800029f4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800029f8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800029fc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002a00 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002a04 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002a08 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002a0c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002a10 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a10
       0      762        M 0x80002a14 addi    t0, t0, 1528           #; t0  = 0x80002a10, (wrb) t0  <-- 0x80003008
       0      763        M 0x80002a18 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a18
       0      764        M 0x80002a1c addi    t1, t1, 1520           #; t1  = 0x80002a18, (wrb) t1  <-- 0x80003008
       0      775        M 0x80002a20 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a20
       0      776        M 0x80002a24 addi    t2, t2, 1512           #; t2  = 0x80002a20, (wrb) t2  <-- 0x80003008
       0      777        M 0x80002a28 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002a28
       0      778        M 0x80002a2c addi    t3, t3, 1520           #; t3  = 0x80002a28, (wrb) t3  <-- 0x80003018
       0      787        M 0x80002a30 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003008, (wrb) sp  <-- 0x80122f78
       0      788        M 0x80002a34 sub     sp, sp, t1             #; sp  = 0x80122f78, t1  = 0x80003008, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002a38 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003008, (wrb) sp  <-- 0x80122f78
       0      790        M 0x80002a3c sub     sp, sp, t3             #; sp  = 0x80122f78, t3  = 0x80003018, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002a40 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002a44 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002a48 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002a4c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002a50 bge     t0, t1, pc + 24        #; t0  = 0x80003008, t1  = 0x80003008, taken, goto 0x80002a68
       0      823        M 0x80002a68 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a68
       0      824        M 0x80002a6c addi    t0, t0, 1440           #; t0  = 0x80002a68, (wrb) t0  <-- 0x80003008
       0      835        M 0x80002a70 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a70
       0      836        M 0x80002a74 addi    t1, t1, 1448           #; t1  = 0x80002a70, (wrb) t1  <-- 0x80003018
       0      837        M 0x80002a78 bge     t0, t1, pc + 20        #; t0  = 0x80003008, t1  = 0x80003018, not taken
       0      838        M 0x80002a7c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002a80 addi    t0, t0, 4              #; t0  = 0x80003008, (wrb) t0  <-- 0x8000300c
       0      848        M 0x80002a84 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002a88 blt     t0, t2, pc - 12        #; t0  = 0x8000300c, t2  = 0x80003008, not taken
       0      850        M 0x80002a8c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002a90 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002a94 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002a98 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002a9c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002aa0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002aa4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002aa4
       0      877        M 0x80002aa8 jalr    ra, ra, -1052          #; ra  = 0x80002aa4, (wrb) ra  <-- 0x80002aac, goto 0x80002688
       0      899        M 0x80002688 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x8000268c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002690 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002694 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002698 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x8000269c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1020        M                                           #; (lsu) a7  <-- 1
       0     1021        M 0x800026a0 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1022        M 0x800026a4 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1025        M                                           #; (acc) a0  <-- 0x02580533
       0     1060        M                                           #; (lsu) t0  <-- 8
       0     1061        M 0x800026a8 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1064        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1065        M 0x800026ac sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1066        M 0x800026b0 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1067        M 0x800026b4 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1068        M 0x800026b8 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1071        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1072        M 0x800026bc sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1078        M 0x800026c0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1079        M 0x800026c4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1080        M 0x800026c8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1081        M 0x800026cc lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1090        M 0x800026d0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x800026d4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x800026d8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x800026dc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x800026e0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x800026e4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x800026e8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x800026ec sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1181        M 0x800026f0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1182        M 0x800026f4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1183        M 0x800026f8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1184        M 0x800026fc sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1193        M 0x80002700 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1205        M                                           #; (lsu) a0  <-- 0x00020000
       0     1206        M 0x80002704 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1207        M 0x80002708 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1208        M 0x8000270c sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1209        M 0x80002710 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1210        M 0x80002714 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1211        M 0x80002718 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1212        M 0x8000271c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1220        M 0x80002720 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1221        M 0x80002724 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1222        M 0x80002728 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1223        M 0x8000272c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1233        M 0x80002730 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1234        M 0x80002734 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1235        M 0x80002738 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1236        M 0x8000273c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1245        M 0x80002740 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1246        M 0x80002744 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1247        M 0x80002748 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1248        M 0x8000274c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1257        M 0x80002750 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1258        M 0x80002754 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1262        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1263        M 0x80002758 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1266        M                                           #; (lsu) a1  <-- 0
       0     1267        M 0x8000275c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1269        M 0x80002760 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1270        M                                           #; (lsu) a0  <-- 8
       0     1271        M 0x80002764 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1272        M 0x80002768 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1273        M 0x8000276c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1281        M 0x80002770 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1282        M 0x80002774 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1283        M 0x80002778 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1284        M 0x8000277c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000377c
       0     1293        M 0x80002780 addi    a1, a1, -1616          #; a1  = 0x8000377c, (wrb) a1  <-- 0x8000312c
       0     1294        M 0x80002784 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000312c, (wrb) a0  <-- 0x8000312c
       0     1295        M 0x80002788 sw      zero, 0(a0)            #; a0  = 0x8000312c, 0 ~~> Word[0x8000312c]
       0     1296        M 0x8000278c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1344        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1345        M 0x80002790 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1346        M 0x80002794 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1347        M 0x80002798 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1348        M 0x8000279c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1349        M 0x800027a0 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1350        M 0x800027a4 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1351        M 0x800027a8 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1352        M 0x800027ac sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1362        M 0x800027b0 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1363        M 0x800027b4 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1364        M 0x800027b8 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x800027bc lw      a0, 0(a1)              #; a1  = 0x8000312c, a0  <~~ Word[0x8000312c]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x800027c0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x800027c4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x800027c8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x800027cc sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1387        M 0x800027d0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1388        M 0x800027d4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1389        M 0x800027d8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1390        M 0x800027dc sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x800027e0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x800027e4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x800027e8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1402        M 0x800027ec ret                            #; ra  = 0x80002aac, goto 0x80002aac
       0     1415        M 0x80002aac lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002ab0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002ab4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002ab8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002abc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002ac0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002ac4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ac4
       0     1434        M 0x80002ac8 addi    t0, t0, 60             #; t0  = 0x80002ac4, (wrb) t0  <-- 0x80002b00
       0     1435        M 0x80002acc csrw    mtvec, t0              #; t0  = 0x80002b00, (lsu) a4  <-- 4132
       0     1442        M 0x80002ad0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ad0
       0     1443        M 0x80002ad4 jalr    ra, ra, 544            #; ra  = 0x80002ad0, (wrb) ra  <-- 0x80002ad8, goto 0x80002cf0
       0     1456        M 0x80002cf0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1457        M 0x80002cf4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002ad8 ~~> Word[0x0011ff5c]
       0     1458        M 0x80002cf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cf8
       0     1459        M 0x80002cfc jalr    ra, ra, -1256          #; ra  = 0x80002cf8, (wrb) ra  <-- 0x80002d00, goto 0x80002810
       0     1480        M 0x80002810 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1481        M 0x80002814 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1482        M 0x80002818 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1485        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1486        M 0x8000281c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1490        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1492        M 0x80002820 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1493        M 0x80002824 ret                            #; ra  = 0x80002d00, goto 0x80002d00
       0     1496        M                                           #; (lsu) a0  <-- 0x00120190
       0     1497        M 0x80002d00 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1526        M                                           #; (lsu) a0  <-- 0
       0     1527        M 0x80002d04 mv      zero, a0               #; a0  = 0
       0     1528        M 0x80002d08 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1529        M 0x80002d0c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1531        M                                           #; (lsu) ra  <-- 0x80002ad8
       0     1532        M 0x80002d10 ret                            #; ra  = 0x80002ad8, goto 0x80002ad8
       0     1536        M 0x80002ad8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000ad8
       0     1537        M 0x80002adc jalr    ra, ra, -648           #; ra  = 0x80000ad8, (wrb) ra  <-- 0x80002ae0, goto 0x80000850
       0     1542        M 0x80000850 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1543        M 0x80000854 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002ae0 ~~> Word[0x0011ff5c]
       0     1544        M 0x80000858 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1546        M 0x80000860 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1547        M 0x80000864 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000085c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1548        M 0x80000868 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1549        M 0x8000086c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1551        M                                           #; (lsu) a1  <-- 0
       0     1558        M 0x80000870 bnez    a1, pc + 152           #; a1  = 0, not taken
       0     1559        M 0x80000874 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002874
       0     1560        M 0x80000878 addi    a0, a0, 2028           #; a0  = 0x80002874, (wrb) a0  <-- 0x80003060
       0     1563        M 0x8000087c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x80003060]
       0     1570        M 0x80000880 lui     a0, 0x100              #; (wrb) a0  <-- 0x00100000
       0     1571        M 0x80000884 lui     s0, 0x100              #; (wrb) s0  <-- 0x00100000
       0     1572        M 0x80000888 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000888
                         M                                           #; (f:lsu) fa0  <-- 1.0
       0     1573        M 0x8000088c jalr    ra, ra, -596           #; ra  = 0x80000888, (wrb) ra  <-- 0x80000890, goto 0x80000634
       0     1599        M 0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     1600        M 0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1601        M 0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1621        M 0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1622        M 0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1623        M 0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     1624        M 0x8000064c beqz    a1, pc + 236           #; a1  = 1, not taken
       0     1633        M 0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1634        M 0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1635        M 0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1636        M 0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
       0     1645        M 0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1646        M 0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1647        M 0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1648        M 0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     1657        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1659        M 0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
                         M 0x80000674 csrrsi  a0, ssr, 1             #; 
       0     1660        M 0x8000067c addi    a0, a0, -1632          #; a0  = 0x80003678, (wrb) a0  <-- 0x80003018
       0     1671        M 0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018]
       0     1672        M 0x8000068c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000368c
                         M 0x80000684 fsgnj.d ft0, fa0, fa0          #; fa0  = 1.0, fa0  = 1.0
       0     1673        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1680        M                                           #; (f:lsu) ft3  <-- 0.01
       0     1681        M 0x80000690 addi    a0, a0, -1644          #; a0  = 0x8000368c, (wrb) a0  <-- 0x80003020
                         M 0x80000688 fadd.d  ft3, fa0, ft3          #; fa0  = 1.0, ft3  = 0.01
       0     1684        M 0x8000069c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000369c
                         M 0x80000694 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003020], (f:fpu) ft3  <-- 1.01
       0     1685        M 0x80000698 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.01, ft3  = 1.01
       0     1686        M                                           #; (f:fpu) ft0  <-- 1.01
       0     1693        M 0x800006a0 addi    a0, a0, -1652          #; a0  = 0x8000369c, (wrb) a0  <-- 0x80003028
                         M                                           #; (f:lsu) ft4  <-- 0.02
       0     1696        M 0x800006a4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003028]
       0     1697        M 0x800006a8 fadd.d  ft4, fa0, ft4          #; fa0  = 1.0, ft4  = 0.02
       0     1700        M                                           #; (f:fpu) ft4  <-- 1.02
       0     1701        M 0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 1.02, ft4  = 1.02
       0     1702        M                                           #; (f:fpu) ft0  <-- 1.02
       0     1705        M                                           #; (f:lsu) ft3  <-- 0.03
       0     1706        M 0x800006b4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b4
       0     1707        M 0x800006b8 addi    a0, a0, -1668          #; a0  = 0x800036b4, (wrb) a0  <-- 0x80003030
                         M 0x800006b0 fadd.d  ft3, fa0, ft3          #; fa0  = 1.0, ft3  = 0.03
       0     1710        M 0x800006bc fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003030], (f:fpu) ft3  <-- 1.03
       0     1718        M 0x800006c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036c4
       0     1719        M 0x800006c8 addi    a0, a0, -1676          #; a0  = 0x800036c4, (wrb) a0  <-- 0x80003038
                         M 0x800006c0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.03, ft3  = 1.03, (f:lsu) ft4  <-- 0.04
       0     1720        M                                           #; (f:fpu) ft0  <-- 1.03
       0     1722        M 0x800006cc fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003038]
       0     1731        M 0x800006d0 fadd.d  ft4, fa0, ft4          #; fa0  = 1.0, ft4  = 0.04, (f:lsu) ft3  <-- 0.05
       0     1732        M 0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
       0     1734        M                                           #; (f:fpu) ft4  <-- 1.04
       0     1735        M 0x800006d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.04, ft4  = 1.04
       0     1736        M 0x800006d8 fadd.d  ft3, fa0, ft3          #; fa0  = 1.0, ft3  = 0.05, (f:fpu) ft0  <-- 1.04
       0     1739        M                                           #; (f:fpu) ft3  <-- 1.05
       0     1741        M 0x800006e0 addi    a0, a0, -1692          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80003040
       0     1744        M 0x800006ec auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036ec
                         M 0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003040]
       0     1745        M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.05, ft3  = 1.05
       0     1746        M                                           #; (f:fpu) ft0  <-- 1.05
       0     1753        M 0x800006f0 addi    a0, a0, -1700          #; a0  = 0x800036ec, (wrb) a0  <-- 0x80003048
                         M                                           #; (f:lsu) ft4  <-- 0.06
       0     1756        M 0x800006f4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003048]
       0     1757        M 0x800006f8 fadd.d  ft4, fa0, ft4          #; fa0  = 1.0, ft4  = 0.06
       0     1760        M                                           #; (f:fpu) ft4  <-- 1.06
       0     1761        M 0x800006fc fsgnj.d ft0, ft4, ft4          #; ft4  = 1.06, ft4  = 1.06
       0     1762        M                                           #; (f:fpu) ft0  <-- 1.06
       0     1765        M                                           #; (f:lsu) ft3  <-- 0.07
       0     1766        M 0x80000704 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003704
       0     1767        M 0x80000708 addi    a0, a0, -1716          #; a0  = 0x80003704, (wrb) a0  <-- 0x80003050
                         M 0x80000700 fadd.d  ft3, fa0, ft3          #; fa0  = 1.0, ft3  = 0.07
       0     1770        M 0x8000070c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003050], (f:fpu) ft3  <-- 1.07
       0     1778        M 0x80000714 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003714
       0     1779        M 0x80000718 addi    a0, a0, -1724          #; a0  = 0x80003714, (wrb) a0  <-- 0x80003058
                         M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.07, ft3  = 1.07, (f:lsu) ft4  <-- 0.08
       0     1780        M                                           #; (f:fpu) ft0  <-- 1.07
       0     1782        M 0x8000071c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003058]
       0     1791        M 0x80000720 fadd.d  ft4, fa0, ft4          #; fa0  = 1.0, ft4  = 0.08, (f:lsu) ft3  <-- 0.09
       0     1794        M                                           #; (f:fpu) ft4  <-- 1.08
       0     1795        M 0x80000724 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.08, ft4  = 1.08
       0     1796        M 0x80000728 fadd.d  ft3, fa0, ft3          #; fa0  = 1.0, ft3  = 0.09, (f:fpu) ft0  <-- 1.08
       0     1799        M                                           #; (f:fpu) ft3  <-- 1.09
       0     1800        M 0x8000072c fsgnj.d ft0, ft3, ft3          #; ft3  = 1.09, ft3  = 1.09
       0     1801        M                                           #; (f:fpu) ft0  <-- 1.09
       0     1802        M 0x80000734 ret                            #; ra  = 0x80000890, goto 0x80000890
                         M 0x80000730 csrrci  a0, ssr, 1             #; 
       0     1815        M 0x80000890 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002890
       0     1816        M 0x80000894 addi    a0, a0, 2008           #; a0  = 0x80002890, (wrb) a0  <-- 0x80003068
       0     1818        M 0x8000089c addi    s0, s0, 80             #; s0  = 0x00100000, (wrb) s0  <-- 0x00100050
       0     1819        M 0x80000898 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x80003068]
       0     1827        M 0x800008a0 mv      a0, s0                 #; s0  = 0x00100050, (wrb) a0  <-- 0x00100050
       0     1828        M 0x800008a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008a4
                         M                                           #; (f:lsu) fa0  <-- 10.0
       0     1829        M 0x800008a8 jalr    ra, ra, -624           #; ra  = 0x800008a4, (wrb) ra  <-- 0x800008ac, goto 0x80000634
       0     1841        M 0x80000634 srli    a1, a0, 20             #; a0  = 0x00100050, (wrb) a1  <-- 1
       0     1842        M 0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1843        M 0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1844        M 0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1845        M 0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100050, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1846        M 0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     1847        M 0x8000064c beqz    a1, pc + 236           #; a1  = 1, not taken
       0     1848        M 0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1849        M 0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1850        M 0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1851        M 0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
       0     1852        M 0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1853        M 0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1854        M 0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1855        M 0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     1856        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x00100050
       0     1858        M 0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
                         M 0x80000674 csrrsi  a0, ssr, 1             #; 
       0     1859        M 0x8000067c addi    a0, a0, -1632          #; a0  = 0x80003678, (wrb) a0  <-- 0x80003018
       0     1860        M                                           #; (acc) gp  <-- 0x00053187
       0     1862        M 0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018]
       0     1863        M 0x8000068c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000368c
                         M 0x80000684 fsgnj.d ft0, fa0, fa0          #; fa0  = 10.0, fa0  = 10.0
       0     1864        M 0x80000690 addi    a0, a0, -1644          #; a0  = 0x8000368c, (wrb) a0  <-- 0x80003020
                         M                                           #; (f:fpu) ft0  <-- 10.0
       0     1867        M 0x8000069c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000369c
       0     1868        M 0x800006a0 addi    a0, a0, -1652          #; a0  = 0x8000369c, (wrb) a0  <-- 0x80003028
       0     1871        M                                           #; (f:lsu) ft3  <-- 0.01
       0     1872        M 0x80000688 fadd.d  ft3, fa0, ft3          #; fa0  = 10.0, ft3  = 0.01
       0     1873        M 0x800006b4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b4
                         M 0x80000694 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003020]
       0     1874        M 0x800006b8 addi    a0, a0, -1668          #; a0  = 0x800036b4, (wrb) a0  <-- 0x80003030
       0     1875        M                                           #; (f:fpu) ft3  <-- 10.01
       0     1876        M 0x80000698 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.01, ft3  = 10.01
       0     1877        M 0x800006c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036c4
                         M 0x800006a4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003028], (f:fpu) ft0  <-- 10.01
       0     1878        M 0x800006c8 addi    a0, a0, -1676          #; a0  = 0x800036c4, (wrb) a0  <-- 0x80003038
       0     1883        M 0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
                         M                                           #; (f:lsu) ft4  <-- 0.02
       0     1884        M 0x800006e0 addi    a0, a0, -1692          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80003040
                         M 0x800006a8 fadd.d  ft4, fa0, ft4          #; fa0  = 10.0, ft4  = 0.02
       0     1886        M                                           #; (f:lsu) ft3  <-- 0.03
       0     1887        M 0x800006ec auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036ec
                         M                                           #; (f:fpu) ft4  <-- 10.02
       0     1888        M 0x800006f0 addi    a0, a0, -1700          #; a0  = 0x800036ec, (wrb) a0  <-- 0x80003048
                         M 0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 10.02, ft4  = 10.02
       0     1889        M 0x800006b0 fadd.d  ft3, fa0, ft3          #; fa0  = 10.0, ft3  = 0.03, (f:fpu) ft0  <-- 10.02
       0     1890        M 0x800006bc fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003030]
       0     1892        M                                           #; (f:fpu) ft3  <-- 10.03
       0     1893        M 0x80000704 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003704
                         M 0x800006c0 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.03, ft3  = 10.03
       0     1894        M 0x80000708 addi    a0, a0, -1716          #; a0  = 0x80003704, (wrb) a0  <-- 0x80003050
                         M 0x800006cc fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003038], (f:fpu) ft0  <-- 10.03
       0     1897        M 0x80000714 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003714
       0     1898        M 0x80000718 addi    a0, a0, -1724          #; a0  = 0x80003714, (wrb) a0  <-- 0x80003058
       0     1900        M                                           #; (f:lsu) ft4  <-- 0.04
       0     1901        M 0x800006d0 fadd.d  ft4, fa0, ft4          #; fa0  = 10.0, ft4  = 0.04
       0     1903        M                                           #; (f:lsu) ft3  <-- 0.05
       0     1904        M                                           #; (f:fpu) ft4  <-- 10.04
       0     1905        M 0x80000734 ret                            #; ra  = 0x800008ac, goto 0x800008ac
                         M 0x800006d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 10.04, ft4  = 10.04
       0     1906        M 0x800006d8 fadd.d  ft3, fa0, ft3          #; fa0  = 10.0, ft3  = 0.05, (f:fpu) ft0  <-- 10.04
       0     1907        M 0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003040]
       0     1909        M 0x800008ac lui     a0, 0x100              #; (wrb) a0  <-- 0x00100000
                         M                                           #; (f:fpu) ft3  <-- 10.05
       0     1910        M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.05, ft3  = 10.05
       0     1911        M 0x800006f4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003048], (f:fpu) ft0  <-- 10.05
       0     1912        M 0x800008b0 li      a2, 10                 #; (wrb) a2  <-- 10
       0     1913        M 0x800008b4 mv      a1, s0                 #; s0  = 0x00100050, (wrb) a1  <-- 0x00100050
       0     1914        M 0x800008b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008b8
       0     1915        M 0x800008bc jalr    ra, ra, 100            #; ra  = 0x800008b8, (wrb) ra  <-- 0x800008c0, goto 0x8000091c
       0     1917        M                                           #; (f:lsu) ft4  <-- 0.06
       0     1918        M 0x800006f8 fadd.d  ft4, fa0, ft4          #; fa0  = 10.0, ft4  = 0.06
       0     1920        M                                           #; (f:lsu) ft3  <-- 0.07
       0     1921        M                                           #; (f:fpu) ft4  <-- 10.06
       0     1922        M 0x800006fc fsgnj.d ft0, ft4, ft4          #; ft4  = 10.06, ft4  = 10.06
       0     1923        M 0x80000700 fadd.d  ft3, fa0, ft3          #; fa0  = 10.0, ft3  = 0.07, (f:fpu) ft0  <-- 10.06
       0     1924        M 0x8000070c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003050]
       0     1926        M 0x8000091c li      a3, 2                  #; (wrb) a3  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 10.07
       0     1927        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.07, ft3  = 10.07
       0     1928        M 0x8000071c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003058], (f:fpu) ft0  <-- 10.07
       0     1929        M 0x80000920 blt     a2, a3, pc + 272       #; a2  = 10, a3  = 2, not taken
       0     1930        M 0x80000924 slli    a3, a2, 3              #; a2  = 10, (wrb) a3  <-- 80
       0     1931        M 0x80000928 sub     a1, a1, a3             #; a1  = 0x00100050, a3  = 80, (wrb) a1  <-- 0x00100000
       0     1932        M 0x8000092c addi    a6, a2, -2             #; a2  = 10, (wrb) a6  <-- 8
       0     1934        M                                           #; (f:lsu) ft4  <-- 0.08
       0     1935        M 0x80000720 fadd.d  ft4, fa0, ft4          #; fa0  = 10.0, ft4  = 0.08
       0     1937        M                                           #; (f:lsu) ft3  <-- 0.09
       0     1938        M                                           #; (f:fpu) ft4  <-- 10.08
       0     1939        M 0x80000724 fsgnj.d ft0, ft4, ft4          #; ft4  = 10.08, ft4  = 10.08
       0     1940        M 0x80000728 fadd.d  ft3, fa0, ft3          #; fa0  = 10.0, ft3  = 0.09, (f:fpu) ft0  <-- 10.08
       0     1941        M 0x80000930 slli    a4, a6, 3              #; a6  = 8, (wrb) a4  <-- 64
       0     1942        M 0x80000934 add     a3, a1, a4             #; a1  = 0x00100000, a4  = 64, (wrb) a3  <-- 0x00100040
       0     1943        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100000, (wrb) a0  <-- 0x00100008
                         M                                           #; (f:fpu) ft3  <-- 10.09
       0     1944        M 0x8000093c add     t2, a4, a0             #; a4  = 64, a0  = 0x00100008, (wrb) t2  <-- 0x00100048
                         M 0x8000072c fsgnj.d ft0, ft3, ft3          #; ft3  = 10.09, ft3  = 10.09
       0     1945        M 0x80000730 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 10.09
       0     1953        M 0x80000940 bgeu    a3, a1, pc + 20        #; a3  = 0x00100040, a1  = 0x00100000, taken, goto 0x80000954
       0     1965        M 0x80000954 sltu    a7, a3, a0             #; a3  = 0x00100040, a0  = 0x00100008, (wrb) a7  <-- 0
       0     1966        M 0x80000958 bgeu    t2, a4, pc - 12        #; t2  = 0x00100048, a4  = 64, taken, goto 0x8000094c
       0     1967        M 0x8000094c sltu    a5, t2, a1             #; t2  = 0x00100048, a1  = 0x00100000, (wrb) a5  <-- 0
       0     1968        M 0x80000950 j       pc + 0x10              #; goto 0x80000960
       0     1980        M 0x80000960 or      t0, a7, a5             #; a7  = 0, a5  = 0, (wrb) t0  <-- 0
       0     1981        M 0x80000964 srli    a5, a1, 20             #; a1  = 0x00100000, (wrb) a5  <-- 1
       0     1982        M 0x80000968 snez    t1, a5                 #; a5  = 1, (wrb) t1  <-- 1
       0     1983        M 0x8000096c lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     1992        M 0x80000970 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
       0     1993        M 0x80000974 bgeu    a3, a1, pc + 12        #; a3  = 0x00100040, a1  = 0x00100000, taken, goto 0x80000980
       0     2004        M 0x80000980 sltu    a3, a3, a7             #; a3  = 0x00100040, a7  = 0x00120001, (wrb) a3  <-- 1
       0     2005        M 0x80000984 and     a3, t1, a3             #; t1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     2006        M 0x80000988 and     t0, t0, a3             #; t0  = 0, a3  = 1, (wrb) t0  <-- 0
       0     2007        M 0x8000098c srli    a3, a0, 20             #; a0  = 0x00100008, (wrb) a3  <-- 1
       0     2016        M 0x80000990 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     2017        M 0x80000994 bgeu    t2, a4, pc + 12        #; t2  = 0x00100048, a4  = 64, taken, goto 0x800009a0
       0     2028        M 0x800009a0 sltu    a4, t2, a7             #; t2  = 0x00100048, a7  = 0x00120001, (wrb) a4  <-- 1
       0     2029        M 0x800009a4 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     2030        M 0x800009a8 and     a3, a3, t0             #; a3  = 1, t0  = 0, (wrb) a3  <-- 0
       0     2031        M 0x800009ac beqz    a3, pc + 100           #; a3  = 0, taken, goto 0x80000a10
       0     2051        M 0x80000a10 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
       0     2054        M 0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100000]
       0     2055        M                                           #; (f:lsu) ft3  <-- 1.0
       0     2056        M 0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2059        M                                           #; (f:fpu) ft3  <-- 2.0
       0     2060        M 0x80000a1c fsd     ft3, 0(a0)             #; 2.0 ~~> Doub[0x00100008]
       0     2063        M 0x80000a20 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
       0     2064        M 0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100008, (wrb) a0  <-- 0x00100010
       0     2065        M 0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
       0     2066        M 0x80000a2c bnez    a2, pc - 24            #; a2  = 8, taken, goto 0x80000a14
       0     2069        M 0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100008]
       0     2070        M 0x80000a20 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     2071        M 0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100010, (wrb) a0  <-- 0x00100018
                         M 0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2072        M 0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
       0     2073        M 0x80000a2c bnez    a2, pc - 24            #; a2  = 7, taken, goto 0x80000a14
       0     2074        M                                           #; (f:fpu) ft3  <-- 4.0
       0     2075        M 0x80000a1c fsd     ft3, 0(a0)             #; 4.0 ~~> Doub[0x00100010]
       0     2076        M 0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100010]
       0     2077        M 0x80000a20 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     2078        M 0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100018, (wrb) a0  <-- 0x00100020
                         M 0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2079        M 0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
       0     2080        M 0x80000a2c bnez    a2, pc - 24            #; a2  = 6, taken, goto 0x80000a14
       0     2081        M                                           #; (f:fpu) ft3  <-- 8.0
       0     2082        M 0x80000a1c fsd     ft3, 0(a0)             #; 8.0 ~~> Doub[0x00100018]
       0     2083        M 0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100018]
       0     2084        M 0x80000a20 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     2085        M 0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100020, (wrb) a0  <-- 0x00100028
                         M 0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2086        M 0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
       0     2087        M 0x80000a2c bnez    a2, pc - 24            #; a2  = 5, taken, goto 0x80000a14
       0     2088        M                                           #; (f:fpu) ft3  <-- 16.0
       0     2089        M 0x80000a1c fsd     ft3, 0(a0)             #; 16.0 ~~> Doub[0x00100020]
       0     2090        M 0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100020]
       0     2091        M 0x80000a20 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:lsu) ft3  <-- 16.0
       0     2092        M 0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100028, (wrb) a0  <-- 0x00100030
                         M 0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 16.0, ft3  = 16.0
       0     2093        M 0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
       0     2094        M 0x80000a2c bnez    a2, pc - 24            #; a2  = 4, taken, goto 0x80000a14
       0     2095        M                                           #; (f:fpu) ft3  <-- 32.0
       0     2096        M 0x80000a1c fsd     ft3, 0(a0)             #; 32.0 ~~> Doub[0x00100028]
       0     2097        M 0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100028]
       0     2098        M 0x80000a20 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:lsu) ft3  <-- 32.0
       0     2099        M 0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100030, (wrb) a0  <-- 0x00100038
                         M 0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 32.0, ft3  = 32.0
       0     2100        M 0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
       0     2101        M 0x80000a2c bnez    a2, pc - 24            #; a2  = 3, taken, goto 0x80000a14
       0     2102        M                                           #; (f:fpu) ft3  <-- 64.0
       0     2103        M 0x80000a1c fsd     ft3, 0(a0)             #; 64.0 ~~> Doub[0x00100030]
       0     2104        M 0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100030]
       0     2105        M 0x80000a20 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:lsu) ft3  <-- 64.0
       0     2106        M 0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100038, (wrb) a0  <-- 0x00100040
                         M 0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 64.0, ft3  = 64.0
       0     2107        M 0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
       0     2108        M 0x80000a2c bnez    a2, pc - 24            #; a2  = 2, taken, goto 0x80000a14
       0     2109        M                                           #; (f:fpu) ft3  <-- 128.0
       0     2110        M 0x80000a1c fsd     ft3, 0(a0)             #; 128.0 ~~> Doub[0x00100038]
       0     2111        M 0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100038]
       0     2112        M 0x80000a20 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:lsu) ft3  <-- 128.0
       0     2113        M 0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100040, (wrb) a0  <-- 0x00100048
                         M 0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 128.0, ft3  = 128.0
       0     2114        M 0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
       0     2115        M 0x80000a2c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80000a14
       0     2116        M                                           #; (f:fpu) ft3  <-- 256.0
       0     2117        M 0x80000a1c fsd     ft3, 0(a0)             #; 256.0 ~~> Doub[0x00100040]
       0     2118        M 0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100040]
       0     2119        M 0x80000a20 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M                                           #; (f:lsu) ft3  <-- 256.0
       0     2120        M 0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100048, (wrb) a0  <-- 0x00100050
                         M 0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 256.0, ft3  = 256.0
       0     2121        M 0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
       0     2122        M 0x80000a2c bnez    a2, pc - 24            #; a2  = 0, not taken
       0     2123        M                                           #; (f:fpu) ft3  <-- 512.0
       0     2124        M 0x80000a1c fsd     ft3, 0(a0)             #; 512.0 ~~> Doub[0x00100048]
       0     2134        M 0x80000a30 ret                            #; ra  = 0x800008c0, goto 0x800008c0
       0     2148        M 0x800008c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008c0
       0     2149        M 0x800008c4 jalr    ra, ra, -204           #; ra  = 0x800008c0, (wrb) ra  <-- 0x800008c8, goto 0x800007f4
       0     2171        M 0x800007f4 li      a0, 8                  #; (wrb) a0  <-- 8
       0     2172        M 0x800007f8 li      a1, 9                  #; (wrb) a1  <-- 9
       0     2173        M 0x800007fc li      a2, 64                 #; (wrb) a2  <-- 64
       0     2183        M 0x80000800 li      a3, 192                #; (wrb) a3  <-- 192
       0     2184        M 0x80000804 scfgw   a1, a2                 #; a1  = 9, a2  = 64
       0     2185        M 0x80000808 scfgw   a0, a3                 #; a0  = 8, a3  = 192
       0     2186        M 0x8000080c li      a0, 32                 #; (wrb) a0  <-- 32
       0     2195        M 0x80000810 scfgw   zero, a0               #; a0  = 32
       0     2196        M 0x80000814 lui     a0, 0x100              #; (wrb) a0  <-- 0x00100000
       0     2197        M 0x80000818 scfgwi  a0, 768                #; a0  = 0x00100000
       0     2198        M                                           #; (acc) a0  <-- 0x7c00e573
       0     2199        M 0x8000081c csrrsi  a0, ssr, 1             #; 
       0     2209        M 0x80000820 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     2210        M                                           #; (f:fpu) ft3  <-- 1.0
       0     2211        M 0x80000824 fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
       0     2214        M                                           #; (f:fpu) ft3  <-- 3.0
       0     2215        M 0x80000828 fadd.d  ft3, ft0, ft3          #; ft0  = 4.0, ft3  = 3.0
       0     2218        M                                           #; (f:fpu) ft3  <-- 7.0
       0     2219        M 0x8000082c fadd.d  ft3, ft0, ft3          #; ft0  = 8.0, ft3  = 7.0
       0     2222        M                                           #; (f:fpu) ft3  <-- 15.0
       0     2223        M 0x80000830 fadd.d  ft3, ft0, ft3          #; ft0  = 16.0, ft3  = 15.0
       0     2226        M                                           #; (f:fpu) ft3  <-- 31.0
       0     2227        M 0x80000834 fadd.d  ft3, ft0, ft3          #; ft0  = 32.0, ft3  = 31.0
       0     2230        M                                           #; (f:fpu) ft3  <-- 63.0
       0     2231        M 0x80000838 fadd.d  ft3, ft0, ft3          #; ft0  = 64.0, ft3  = 63.0
       0     2234        M 0x8000084c ret                            #; ra  = 0x800008c8, goto 0x800008c8
                         M                                           #; (f:fpu) ft3  <-- 127.0
       0     2235        M 0x8000083c fadd.d  ft3, ft0, ft3          #; ft0  = 128.0, ft3  = 127.0
       0     2237        M 0x800008c8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028c8
       0     2238        M 0x800008cc addi    a0, a0, 1960           #; a0  = 0x800028c8, (wrb) a0  <-- 0x80003070
                         M                                           #; (f:fpu) ft3  <-- 255.0
       0     2239        M 0x80000840 fadd.d  ft3, ft0, ft3          #; ft0  = 256.0, ft3  = 255.0
       0     2242        M                                           #; (f:fpu) ft3  <-- 511.0
       0     2243        M 0x80000844 fadd.d  fa0, ft0, ft3          #; ft0  = 512.0, ft3  = 511.0
       0     2244        M 0x80000848 csrrci  a0, ssr, 1             #; 
       0     2246        M 0x800008d0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003070], (f:fpu) fa0  <-- 1023.0
       0     2252        M 0x800008e0 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     2255        M                                           #; (f:lsu) ft0  <-- -1023.0
       0     2256        M 0x800008d4 fadd.d  ft0, fa0, ft0          #; fa0  = 1023.0, ft0  = -1023.0
       0     2257        M                                           #; (lsu) a2  <-- 0
       0     2258        M 0x800008e4 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
       0     2259        M 0x800008e8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028e8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2260        M 0x800008ec addi    a0, a0, 1149           #; a0  = 0x800028e8, (wrb) a0  <-- 0x80002d65
                         M 0x800008d8 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     2261        M                                           #; (lsu) a3  <-- 0
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     2262        M 0x800008dc fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     2264        M 0x800008f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008f0
       0     2265        M 0x800008f4 jalr    ra, ra, 324            #; ra  = 0x800008f0, (wrb) ra  <-- 0x800008f8, goto 0x80000a34
       0     2269        M 0x80000a34 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2270        M 0x80000a38 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008f8 ~~> Word[0x0011ff1c]
       0     2271        M 0x80000a3c mv      t0, a0                 #; a0  = 0x80002d65, (wrb) t0  <-- 0x80002d65
       0     2272        M 0x80000a40 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x00120001 ~~> Word[0x0011ff3c]
       0     2273        M 0x80000a44 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff38]
       0     2274        M 0x80000a48 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff34]
       0     2275        M 0x80000a4c sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
       0     2284        M 0x80000a50 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2285        M 0x80000a54 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2286        M 0x80000a58 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff24]
       0     2287        M 0x80000a5c addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2296        M 0x80000a60 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2297        M 0x80000a64 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a64
       0     2298        M 0x80000a68 addi    a0, a0, -988           #; a0  = 0x80001a64, (wrb) a0  <-- 0x80001688
       0     2299        M 0x80000a6c addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2308        M 0x80000a70 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2309        M 0x80000a74 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2310        M 0x80000a78 mv      a3, t0                 #; t0  = 0x80002d65, (wrb) a3  <-- 0x80002d65
       0     2311        M 0x80000a7c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a7c
       0     2320        M 0x80000a80 jalr    ra, ra, 20             #; ra  = 0x80000a7c, (wrb) ra  <-- 0x80000a84, goto 0x80000a90
       0     2332        M 0x80000a90 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2333        M 0x80000a94 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000a84 ~~> Word[0x0011ff0c]
       0     2334        M 0x80000a98 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff08]
       0     2335        M 0x80000a9c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2344        M 0x80000aa0 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2345        M 0x80000aa4 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2346        M 0x80000aa8 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2347        M 0x80000aac sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2356        M 0x80000ab0 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2357        M 0x80000ab4 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2358        M 0x80000ab8 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2359        M 0x80000abc sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2368        M 0x80000ac0 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2369        M 0x80000ac4 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2370        M 0x80000ac8 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2371        M 0x80000acc mv      s0, a3                 #; a3  = 0x80002d65, (wrb) s0  <-- 0x80002d65
       0     2380        M 0x80000ad0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2381        M 0x80000ad4 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2382        M 0x80000ad8 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2383        M 0x80000adc mv      s2, a0                 #; a0  = 0x80001688, (wrb) s2  <-- 0x80001688
       0     2392        M 0x80000ae0 j       pc + 0xc               #; goto 0x80000aec
       0     2393        M 0x80000aec li      s8, 0                  #; (wrb) s8  <-- 0
       0     2405        M 0x80000af0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2406        M 0x80000af4 li      s11, 16                #; (wrb) s11 <-- 16
       0     2407        M 0x80000af8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2408        M 0x80000afc lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2417        M 0x80000b00 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2418        M 0x80000b04 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2419        M 0x80000b08 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2420        M 0x80000b0c addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2429        M 0x80000b10 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2430        M 0x80000b14 addi    s10, s0, 2             #; s0  = 0x80002d65, (wrb) s10 <-- 0x80002d67
       0     2431        M 0x80000b18 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2432        M 0x80000b1c li      s8, 10                 #; (wrb) s8  <-- 10
       0     2441        M 0x80000b20 lbu     a0, 0(s0)              #; s0  = 0x80002d65, a0  <~~ Byte[0x80002d65]
       0     2452        M                                           #; (lsu) a0  <-- 101
       0     2453        M 0x80000b24 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2454        M 0x80000b28 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2455        M 0x80000b2c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2456        M 0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2457        M 0x80000b34 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2458        M 0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2459        M 0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
       0     2479        M 0x80001688 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2480        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2491        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2492        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2493        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     2494        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     2503        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     2504        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2515        M                                           #; (lsu) a4  <-- 0
       0     2516        M 0x800016a8 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2517        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 1 ~~> Word[0x8000312c]
       0     2518        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 0, (wrb) a4  <-- 0x8000312c
       0     2519        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000312c, 101 ~~> Byte[0x80003174]
       0     2520        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2541        M                                           #; (lsu) a4  <-- 1
       0     2542        M 0x800016bc addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2543        M 0x800016c0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2544        M 0x800016c4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2545        M 0x800016c8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2546        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2555        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     2578        M 0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0     2592        M 0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d65, (wrb) s0  <-- 0x80002d66
       0     2593        M 0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d67, (wrb) s10 <-- 0x80002d68
       0     2594        M 0x80000b48 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2595        M 0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d66, a0  <~~ Byte[0x80002d66]
       0     2606        M                                           #; (lsu) a0  <-- 114
       0     2607        M 0x80000b50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b28
       0     2608        M 0x80000b28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2609        M 0x80000b2c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2611        M 0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2612        M 0x80000b34 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2613        M 0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2614        M 0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
       0     2617        M 0x80001688 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2618        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2620        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2621        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2622        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     2623        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     2624        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2625        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     2626        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2637        M                                           #; (lsu) a4  <-- 1
       0     2638        M 0x800016a8 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2639        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 2 ~~> Word[0x8000312c]
       0     2640        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 1, (wrb) a4  <-- 0x8000312d
       0     2641        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000312d, 114 ~~> Byte[0x80003175]
       0     2642        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2663        M                                           #; (lsu) a4  <-- 2
       0     2664        M 0x800016bc addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2665        M 0x800016c0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2666        M 0x800016c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2667        M 0x800016c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2668        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2669        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     2674        M 0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0     2679        M 0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d66, (wrb) s0  <-- 0x80002d67
       0     2680        M 0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d68, (wrb) s10 <-- 0x80002d69
       0     2681        M 0x80000b48 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2682        M 0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d67, a0  <~~ Byte[0x80002d67]
       0     2693        M                                           #; (lsu) a0  <-- 114
       0     2694        M 0x80000b50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b28
       0     2695        M 0x80000b28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2696        M 0x80000b2c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2698        M 0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2699        M 0x80000b34 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2700        M 0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2701        M 0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
       0     2704        M 0x80001688 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2705        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2707        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2708        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2709        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     2710        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     2711        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2712        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     2713        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2724        M                                           #; (lsu) a4  <-- 2
       0     2725        M 0x800016a8 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2726        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 3 ~~> Word[0x8000312c]
       0     2727        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 2, (wrb) a4  <-- 0x8000312e
       0     2728        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000312e, 114 ~~> Byte[0x80003176]
       0     2729        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2750        M                                           #; (lsu) a4  <-- 3
       0     2751        M 0x800016bc addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2752        M 0x800016c0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2753        M 0x800016c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2754        M 0x800016c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2755        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2756        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     2761        M 0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0     2766        M 0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d67, (wrb) s0  <-- 0x80002d68
       0     2767        M 0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d69, (wrb) s10 <-- 0x80002d6a
       0     2768        M 0x80000b48 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2769        M 0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d68, a0  <~~ Byte[0x80002d68]
       0     2780        M                                           #; (lsu) a0  <-- 111
       0     2781        M 0x80000b50 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b28
       0     2782        M 0x80000b28 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2783        M 0x80000b2c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2785        M 0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2786        M 0x80000b34 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2787        M 0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2788        M 0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
       0     2791        M 0x80001688 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2792        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2794        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2795        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2796        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     2797        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     2798        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2799        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     2800        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2811        M                                           #; (lsu) a4  <-- 3
       0     2812        M 0x800016a8 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2813        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 4 ~~> Word[0x8000312c]
       0     2814        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 3, (wrb) a4  <-- 0x8000312f
       0     2815        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000312f, 111 ~~> Byte[0x80003177]
       0     2816        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2837        M                                           #; (lsu) a4  <-- 4
       0     2838        M 0x800016bc addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2839        M 0x800016c0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2840        M 0x800016c4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2841        M 0x800016c8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2842        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2843        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     2848        M 0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0     2853        M 0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d68, (wrb) s0  <-- 0x80002d69
       0     2854        M 0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d6a, (wrb) s10 <-- 0x80002d6b
       0     2855        M 0x80000b48 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2856        M 0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d69, a0  <~~ Byte[0x80002d69]
       0     2867        M                                           #; (lsu) a0  <-- 114
       0     2868        M 0x80000b50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b28
       0     2869        M 0x80000b28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2870        M 0x80000b2c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2872        M 0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2873        M 0x80000b34 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2874        M 0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2875        M 0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
       0     2878        M 0x80001688 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2879        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2881        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2882        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2883        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     2884        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     2885        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2886        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     2887        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2898        M                                           #; (lsu) a4  <-- 4
       0     2899        M 0x800016a8 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2900        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 5 ~~> Word[0x8000312c]
       0     2901        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 4, (wrb) a4  <-- 0x80003130
       0     2902        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003130, 114 ~~> Byte[0x80003178]
       0     2903        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2924        M                                           #; (lsu) a4  <-- 5
       0     2925        M 0x800016bc addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2926        M 0x800016c0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2927        M 0x800016c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2928        M 0x800016c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2929        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2930        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     2935        M 0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0     2940        M 0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d69, (wrb) s0  <-- 0x80002d6a
       0     2941        M 0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d6b, (wrb) s10 <-- 0x80002d6c
       0     2942        M 0x80000b48 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2943        M 0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d6a, a0  <~~ Byte[0x80002d6a]
       0     2954        M                                           #; (lsu) a0  <-- 32
       0     2955        M 0x80000b50 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b28
       0     2956        M 0x80000b28 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2957        M 0x80000b2c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2959        M 0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2960        M 0x80000b34 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2961        M 0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2962        M 0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
       0     2965        M 0x80001688 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2966        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2968        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2969        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2970        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     2971        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     2972        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2973        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     2974        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     2985        M                                           #; (lsu) a4  <-- 5
       0     2986        M 0x800016a8 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2987        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 6 ~~> Word[0x8000312c]
       0     2988        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 5, (wrb) a4  <-- 0x80003131
       0     2989        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003131, 32 ~~> Byte[0x80003179]
       0     2990        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     3011        M                                           #; (lsu) a4  <-- 6
       0     3012        M 0x800016bc addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3013        M 0x800016c0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3014        M 0x800016c4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3015        M 0x800016c8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3016        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3017        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     3022        M 0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0     3027        M 0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d6a, (wrb) s0  <-- 0x80002d6b
       0     3028        M 0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d6c, (wrb) s10 <-- 0x80002d6d
       0     3029        M 0x80000b48 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3030        M 0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d6b, a0  <~~ Byte[0x80002d6b]
       0     3041        M                                           #; (lsu) a0  <-- 61
       0     3042        M 0x80000b50 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b28
       0     3043        M 0x80000b28 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3044        M 0x80000b2c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3046        M 0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3047        M 0x80000b34 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3048        M 0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3049        M 0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
       0     3052        M 0x80001688 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3053        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3055        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3056        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3057        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     3058        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     3059        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3060        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     3061        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     3072        M                                           #; (lsu) a4  <-- 6
       0     3073        M 0x800016a8 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3074        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 7 ~~> Word[0x8000312c]
       0     3075        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 6, (wrb) a4  <-- 0x80003132
       0     3076        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003132, 61 ~~> Byte[0x8000317a]
       0     3077        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     3098        M                                           #; (lsu) a4  <-- 7
       0     3099        M 0x800016bc addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3100        M 0x800016c0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3101        M 0x800016c4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3102        M 0x800016c8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3103        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3104        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     3109        M 0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0     3114        M 0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d6b, (wrb) s0  <-- 0x80002d6c
       0     3115        M 0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d6d, (wrb) s10 <-- 0x80002d6e
       0     3116        M 0x80000b48 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3117        M 0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d6c, a0  <~~ Byte[0x80002d6c]
       0     3128        M                                           #; (lsu) a0  <-- 32
       0     3129        M 0x80000b50 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b28
       0     3130        M 0x80000b28 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3131        M 0x80000b2c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3133        M 0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3134        M 0x80000b34 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3135        M 0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3136        M 0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
       0     3139        M 0x80001688 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3140        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3142        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3143        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3144        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     3145        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     3146        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3147        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     3148        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     3159        M                                           #; (lsu) a4  <-- 7
       0     3160        M 0x800016a8 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3161        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 8 ~~> Word[0x8000312c]
       0     3162        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 7, (wrb) a4  <-- 0x80003133
       0     3163        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003133, 32 ~~> Byte[0x8000317b]
       0     3164        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     3185        M                                           #; (lsu) a4  <-- 8
       0     3186        M 0x800016bc addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3187        M 0x800016c0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3188        M 0x800016c4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3189        M 0x800016c8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3190        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3191        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     3196        M 0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0     3201        M 0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d6c, (wrb) s0  <-- 0x80002d6d
       0     3202        M 0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d6e, (wrb) s10 <-- 0x80002d6f
       0     3203        M 0x80000b48 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3204        M 0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d6d, a0  <~~ Byte[0x80002d6d]
       0     3215        M                                           #; (lsu) a0  <-- 37
       0     3216        M 0x80000b50 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b28
       0     3217        M 0x80000b28 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b58
       0     3218        M 0x80000b58 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3219        M 0x80000b5c j       pc + 0x10              #; goto 0x80000b6c
       0     3231        M 0x80000b6c lbu     a0, -1(s10)            #; s10 = 0x80002d6f, a0  <~~ Byte[0x80002d6e]
       0     3242        M                                           #; (lsu) a0  <-- 102
       0     3243        M 0x80000b70 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3244        M 0x80000b74 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000bac
       0     3266        M 0x80000bac addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3278        M 0x80000bb0 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3279        M 0x80000bb4 addi    a1, s10, -1            #; s10 = 0x80002d6f, (wrb) a1  <-- 0x80002d6e
       0     3280        M 0x80000bb8 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3281        M 0x80000bbc bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c38
       0     3301        M 0x80000c38 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3302        M 0x80000c3c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000c8c
       0     3324        M 0x80000c8c li      s6, 0                  #; (wrb) s6  <-- 0
       0     3336        M 0x80000c90 mv      s10, a1                #; a1  = 0x80002d6e, (wrb) s10 <-- 0x80002d6e
       0     3337        M 0x80000c94 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3338        M 0x80000c98 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3339        M 0x80000c9c j       pc + 0xc               #; goto 0x80000ca8
       0     3359        M 0x80000ca8 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3360        M 0x80000cac srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3371        M 0x80000cb0 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3372        M 0x80000cb4 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3373        M 0x80000cb8 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3374        M 0x80000cbc bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d20
       0     3394        M 0x80000d20 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3395        M 0x80000d24 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3396        M 0x80000d28 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3397        M 0x80000d2c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3406        M 0x80000d30 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d30
       0     3407        M 0x80000d34 addi    a2, a2, 180            #; a2  = 0x80002d30, (wrb) a2  <-- 0x80002de4
       0     3408        M 0x80000d38 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002de4, (wrb) a1  <-- 0x80002ee8
       0     3409        M 0x80000d3c lw      a2, 0(a1)              #; a1  = 0x80002ee8, a2  <~~ Word[0x80002ee8]
       0     3418        M 0x80000d40 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3419        M 0x80000d44 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3420        M                                           #; (lsu) a2  <-- 0x80000d78
       0     3421        M 0x80000d48 jr      a2                     #; a2  = 0x80000d78, goto 0x80000d78
       0     3441        M 0x80000d78 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3442        M 0x80000d7c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000d84
       0     3453        M 0x80000d84 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3454        M 0x80000d88 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3457        M 0x80000d8c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3458        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3465        M 0x80000d90 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3466        M 0x80000d94 mv      a0, s2                 #; s2  = 0x80001688, (wrb) a0  <-- 0x80001688
       0     3467        M 0x80000d98 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3468        M 0x80000d9c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3477        M 0x80000da0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3478        M 0x80000da4 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3479        M 0x80000da8 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3480        M 0x80000dac mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3489        M 0x80000db0 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001db0
       0     3490        M 0x80000db4 jalr    ra, ra, -1656          #; ra  = 0x80001db0, (wrb) ra  <-- 0x80000db8, goto 0x80001738
       0     3503        M 0x80001738 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3504        M 0x8000173c sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000db8 ~~> Word[0x0011fe9c]
       0     3506        M 0x80001740 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3507        M 0x80001744 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3508        M 0x80001748 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001688 ~~> Word[0x0011fe90]
       0     3509        M 0x8000174c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3518        M 0x80001750 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3519        M 0x80001754 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3520        M 0x80001758 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3521        M 0x8000175c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3530        M 0x80001760 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3531        M 0x80001764 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3532        M 0x80001768 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002d6e ~~> Word[0x0011fe70]
       0     3535        M 0x8000176c fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3544        M 0x80001778 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003778
                         M 0x80001770 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3545        M 0x8000177c addi    s1, s1, -1784          #; s1  = 0x80003778, (wrb) s1  <-- 0x80003080
                         M 0x80001774 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3556        M 0x80001788 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001780 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003080]
       0     3557        M 0x8000178c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     3565        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3566        M 0x80001790 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001784 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3567        M 0x80001794 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3568        M 0x80001798 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3569        M 0x8000179c mv      s7, a0                 #; a0  = 0x80001688, (wrb) s7  <-- 0x80001688
       0     3578        M 0x800017a0 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001890
       0     3602        M 0x80001894 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002894
       0     3603        M 0x80001898 addi    a0, a0, 2036           #; a0  = 0x80002894, (wrb) a0  <-- 0x80003088
                         M 0x80001890 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3604        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3606        M 0x8000189c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003088]
       0     3615        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3616        M 0x800018a0 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3618        M                                           #; (acc) t3  <-- 0x00051e63
       0     3619        M 0x800018a4 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018c0
       0     3636        M 0x800018c0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028c0
       0     3637        M 0x800018c4 addi    a0, a0, 2000           #; a0  = 0x800028c0, (wrb) a0  <-- 0x80003090
       0     3639        M 0x800018cc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028cc
       0     3640        M 0x800018c8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003090]
       0     3648        M 0x800018d0 addi    a0, a0, 1996           #; a0  = 0x800028cc, (wrb) a0  <-- 0x80003098
       0     3649        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3651        M 0x800018d4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003098]
       0     3652        M 0x800018d8 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3660        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3661        M 0x800018dc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3663        M                                           #; (acc) a0  <-- 0x00b57533
       0     3664        M 0x800018e0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3665        M 0x800018e4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800019e0
       0     3683        M 0x800019e0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3684        M 0x800019e4 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3685        M 0x800019e8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800019f0
       0     3695        M 0x800019f0 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3697        M 0x800019f8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a30
       0     3698        M 0x800019f4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3699        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3718        M 0x80001a30 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3719        M 0x80001a34 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3720        M 0x80001a38 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a38
       0     3721        M 0x80001a3c addi    a1, a1, 1280           #; a1  = 0x80002a38, (wrb) a1  <-- 0x80002f38
       0     3730        M 0x80001a40 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002f38, (wrb) a0  <-- 0x80002f68
       0     3733        M 0x80001a44 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f68]
       0     3734        M 0x80001a48 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3738        M 0x80001a4c fcvt.d.w ft0, s1               #; ac1  = 0
       0     3739        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3742        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3744        M 0x80001a58 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a58
                         M 0x80001a50 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3745        M 0x80001a5c addi    a0, a0, 1608           #; a0  = 0x80002a58, (wrb) a0  <-- 0x800030a0
       0     3747        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3748        M 0x80001a54 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3751        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3756        M 0x80001a60 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030a0]
       0     3757        M 0x80001a64 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3759        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3761        M 0x80001a68 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3762        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3763        M 0x80001a6c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3765        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3766        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3767        M 0x80001a70 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3770        M 0x80001a74 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a94
       0     3790        M 0x80001a94 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3792        M                                           #; (acc) s4  <-- 0x00059a63
       0     3793        M 0x80001a98 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001aac
       0     3802        M 0x80001aac fcvt.d.w fs1, zero             #; ac1  = 0
       0     3803        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3813        M 0x80001ab0 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     3814        M 0x80001ab4 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3815        M 0x80001ab8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3816        M 0x80001abc add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3825        M 0x80001ac0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3826        M 0x80001ac4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3827        M 0x80001ac8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3828        M 0x80001acc addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3837        M 0x80001ad0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3838        M 0x80001ad4 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3839        M 0x80001ad8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3840        M 0x80001adc mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3849        M 0x80001ae0 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3852        M                                           #; (acc) a0  <-- 0x00355513
       0     3853        M 0x80001ae4 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3854        M 0x80001ae8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3857        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3858        M 0x80001aec sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3861        M 0x80001af0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3862        M 0x80001af4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3863        M 0x80001af8 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3864        M 0x80001afc addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3873        M 0x80001b00 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3874        M 0x80001b04 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3875        M 0x80001b08 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3876        M 0x80001b0c li      a3, 30                 #; (wrb) a3  <-- 30
       0     3886        M 0x80001b10 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3887        M 0x80001b14 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3888        M 0x80001b18 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3889        M 0x80001b1c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3898        M 0x80001b20 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3899        M 0x80001b24 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3900        M 0x80001b28 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3901        M 0x80001b2c not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3910        M 0x80001b30 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3911        M 0x80001b34 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3912        M 0x80001b38 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3913        M 0x80001b3c sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3922        M 0x80001b40 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3923        M 0x80001b44 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3924        M 0x80001b48 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b50
       0     3934        M 0x80001b50 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3935        M 0x80001b54 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3936        M 0x80001b58 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b58
       0     3937        M 0x80001b5c jalr    ra, ra, -1536          #; ra  = 0x80000b58, (wrb) ra  <-- 0x80001b60, goto 0x80000558
       0     3957        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3958        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3969        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3992        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4004        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4005        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4006        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4007        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4027        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     4028        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     4039        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     4040        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     4041        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4042        M 0x800005ec ret                            #; ra  = 0x80001b60, goto 0x80001b60
       0     4053        M 0x80001b60 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4054        M 0x80001b64 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4055        M 0x80001b68 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4056        M 0x80001b6c xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4065        M 0x80001b70 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4066        M 0x80001b74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4067        M 0x80001b78 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4068        M 0x80001b7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b64
       0     4069        M 0x80001b64 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4070        M 0x80001b68 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4071        M 0x80001b6c xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4072        M 0x80001b70 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4073        M 0x80001b74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4074        M 0x80001b78 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4075        M 0x80001b7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b64
       0     4076        M 0x80001b64 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4077        M 0x80001b68 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4078        M 0x80001b6c xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4079        M 0x80001b70 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4080        M 0x80001b74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4081        M 0x80001b78 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4082        M 0x80001b7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b64
       0     4083        M 0x80001b64 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4084        M 0x80001b68 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4085        M 0x80001b6c xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4086        M 0x80001b70 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4087        M 0x80001b74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4088        M 0x80001b78 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4089        M 0x80001b7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b64
       0     4090        M 0x80001b64 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4091        M 0x80001b68 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4092        M 0x80001b6c xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4093        M 0x80001b70 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4094        M 0x80001b74 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4095        M 0x80001b78 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4096        M 0x80001b7c bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4108        M 0x80001b80 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4109        M 0x80001b84 j       pc + 0x28              #; goto 0x80001bac
       0     4120        M 0x80001bac beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4132        M 0x80001bb0 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4133        M 0x80001bb4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4134        M 0x80001bb8 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4135        M 0x80001bbc li      a1, 46                 #; (wrb) a1  <-- 46
       0     4144        M 0x80001bc0 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4145        M 0x80001bc4 j       pc + 0x8               #; goto 0x80001bcc
       0     4146        M 0x80001bcc li      a0, 32                 #; (wrb) a0  <-- 32
       0     4158        M 0x80001bd0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4159        M 0x80001bd4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4160        M 0x80001bd8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4162        M 0x80001bdc flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4170        M 0x80001be0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     4171        M 0x80001be4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4172        M 0x80001be8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4173        M 0x80001bec addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4182        M 0x80001bf0 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4183        M 0x80001bf4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4184        M 0x80001bf8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4187        M                                           #; (acc) a5  <-- 0x01f55793
       0     4188        M 0x80001bfc srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4194        M 0x80001c00 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4195        M 0x80001c04 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4196        M 0x80001c08 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4199        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4200        M 0x80001c0c sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4206        M 0x80001c10 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4207        M 0x80001c14 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4208        M 0x80001c18 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4209        M 0x80001c1c addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4218        M 0x80001c20 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4219        M 0x80001c24 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4220        M 0x80001c28 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4221        M 0x80001c2c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4233        M 0x80001c30 j       pc + 0x8               #; goto 0x80001c38
       0     4234        M 0x80001c38 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4235        M 0x80001c3c li      a0, 1                  #; (wrb) a0  <-- 1
       0     4246        M 0x80001c40 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001cac
       0     4269        M 0x80001cac li      a0, 31                 #; (wrb) a0  <-- 31
       0     4281        M 0x80001cb0 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4282        M 0x80001cb4 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ccc
       0     4293        M 0x80001ccc andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4305        M 0x80001cd0 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4306        M 0x80001cd4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4307        M 0x80001cd8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d04
       0     4328        M 0x80001d04 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4329        M 0x80001d08 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4330        M 0x80001d0c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4340        M 0x80001d10 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4341        M 0x80001d14 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4342        M 0x80001d18 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4343        M 0x80001d1c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d48
       0     4363        M 0x80001d48 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4364        M 0x80001d4c beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4375        M 0x80001d50 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4376        M 0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4377        M 0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4378        M 0x80001d5c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4380        M                                           #; (lsu) a0  <-- 48
       0     4387        M 0x80001d60 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4388        M 0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4389        M 0x80001d68 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4390        M 0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4399        M 0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
       0     4402        M 0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4403        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4405        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4406        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4407        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     4408        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     4409        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4410        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     4411        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4422        M                                           #; (lsu) a4  <-- 8
       0     4423        M 0x800016a8 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4424        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 9 ~~> Word[0x8000312c]
       0     4425        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 8, (wrb) a4  <-- 0x80003134
       0     4426        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003134, 48 ~~> Byte[0x8000317c]
       0     4427        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4448        M                                           #; (lsu) a4  <-- 9
       0     4449        M 0x800016bc addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4450        M 0x800016c0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4451        M 0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4452        M 0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4453        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4454        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     4459        M 0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
       0     4464        M 0x80001d74 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4465        M 0x80001d78 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4466        M 0x80001d7c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d54
       0     4467        M 0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4468        M 0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4469        M 0x80001d5c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4470        M 0x80001d60 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4471        M 0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4472        M 0x80001d68 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4473        M 0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4474        M 0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
       0     4475        M                                           #; (lsu) a0  <-- 46
       0     4477        M 0x80001688 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4478        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4480        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4481        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4482        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     4483        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     4484        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4485        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     4486        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4497        M                                           #; (lsu) a4  <-- 9
       0     4498        M 0x800016a8 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4499        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 10 ~~> Word[0x8000312c]
       0     4500        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 9, (wrb) a4  <-- 0x80003135
       0     4501        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003135, 46 ~~> Byte[0x8000317d]
       0     4502        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4523        M                                           #; (lsu) a4  <-- 10
       0     4524        M 0x800016bc addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4525        M 0x800016c0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4526        M 0x800016c4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4527        M 0x800016c8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4528        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4529        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     4534        M 0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
       0     4539        M 0x80001d74 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4540        M 0x80001d78 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4541        M 0x80001d7c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d54
       0     4542        M 0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4543        M 0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4544        M 0x80001d5c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4545        M 0x80001d60 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4546        M 0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4547        M 0x80001d68 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4548        M 0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4549        M 0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
       0     4550        M                                           #; (lsu) a0  <-- 48
       0     4552        M 0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4553        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4555        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4556        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4557        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     4558        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     4559        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4560        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     4561        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4572        M                                           #; (lsu) a4  <-- 10
       0     4573        M 0x800016a8 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4574        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 11 ~~> Word[0x8000312c]
       0     4575        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 10, (wrb) a4  <-- 0x80003136
       0     4576        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003136, 48 ~~> Byte[0x8000317e]
       0     4577        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4598        M                                           #; (lsu) a4  <-- 11
       0     4599        M 0x800016bc addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4600        M 0x800016c0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4601        M 0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4602        M 0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4603        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4604        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     4609        M 0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
       0     4614        M 0x80001d74 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4615        M 0x80001d78 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4616        M 0x80001d7c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d54
       0     4617        M 0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4618        M 0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4619        M 0x80001d5c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4620        M 0x80001d60 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4621        M 0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4622        M 0x80001d68 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4623        M 0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4624        M 0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
       0     4625        M                                           #; (lsu) a0  <-- 48
       0     4627        M 0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4628        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4630        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4631        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4632        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     4633        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     4634        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4635        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     4636        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4647        M                                           #; (lsu) a4  <-- 11
       0     4648        M 0x800016a8 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4649        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 12 ~~> Word[0x8000312c]
       0     4650        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 11, (wrb) a4  <-- 0x80003137
       0     4651        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003137, 48 ~~> Byte[0x8000317f]
       0     4652        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4673        M                                           #; (lsu) a4  <-- 12
       0     4674        M 0x800016bc addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4675        M 0x800016c0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4676        M 0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4677        M 0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4678        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4679        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     4684        M 0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
       0     4689        M 0x80001d74 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4690        M 0x80001d78 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4691        M 0x80001d7c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d54
       0     4692        M 0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4693        M 0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4694        M 0x80001d5c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4695        M 0x80001d60 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4696        M 0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4697        M 0x80001d68 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4698        M 0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4699        M 0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
       0     4700        M                                           #; (lsu) a0  <-- 48
       0     4702        M 0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4703        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4705        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4706        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4707        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     4708        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     4709        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4710        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     4711        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4722        M                                           #; (lsu) a4  <-- 12
       0     4723        M 0x800016a8 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4724        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 13 ~~> Word[0x8000312c]
       0     4725        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 12, (wrb) a4  <-- 0x80003138
       0     4726        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003138, 48 ~~> Byte[0x80003180]
       0     4727        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4748        M                                           #; (lsu) a4  <-- 13
       0     4749        M 0x800016bc addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4750        M 0x800016c0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4751        M 0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4752        M 0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4753        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4754        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     4759        M 0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
       0     4764        M 0x80001d74 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4765        M 0x80001d78 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4766        M 0x80001d7c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d54
       0     4767        M 0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4768        M 0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4769        M 0x80001d5c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4770        M 0x80001d60 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4771        M 0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4772        M 0x80001d68 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4773        M 0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4774        M 0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
       0     4775        M                                           #; (lsu) a0  <-- 48
       0     4777        M 0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4778        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4780        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4781        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4782        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     4783        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     4784        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4785        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     4786        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4797        M                                           #; (lsu) a4  <-- 13
       0     4798        M 0x800016a8 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4799        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 14 ~~> Word[0x8000312c]
       0     4800        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 13, (wrb) a4  <-- 0x80003139
       0     4801        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003139, 48 ~~> Byte[0x80003181]
       0     4802        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4823        M                                           #; (lsu) a4  <-- 14
       0     4824        M 0x800016bc addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4825        M 0x800016c0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4826        M 0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4827        M 0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4828        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4829        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     4834        M 0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
       0     4839        M 0x80001d74 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4840        M 0x80001d78 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4841        M 0x80001d7c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d54
       0     4842        M 0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4843        M 0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4844        M 0x80001d5c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4845        M 0x80001d60 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4846        M 0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4847        M 0x80001d68 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4848        M 0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4849        M 0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
       0     4850        M                                           #; (lsu) a0  <-- 48
       0     4852        M 0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4853        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4855        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4856        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4857        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     4858        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     4859        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4860        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     4861        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4872        M                                           #; (lsu) a4  <-- 14
       0     4873        M 0x800016a8 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4874        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 15 ~~> Word[0x8000312c]
       0     4875        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 14, (wrb) a4  <-- 0x8000313a
       0     4876        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000313a, 48 ~~> Byte[0x80003182]
       0     4877        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4898        M                                           #; (lsu) a4  <-- 15
       0     4899        M 0x800016bc addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4900        M 0x800016c0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4901        M 0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4902        M 0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4903        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4904        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     4909        M 0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
       0     4914        M 0x80001d74 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4915        M 0x80001d78 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4916        M 0x80001d7c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d54
       0     4917        M 0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4918        M 0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4919        M 0x80001d5c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4920        M 0x80001d60 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4921        M 0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4922        M 0x80001d68 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4923        M 0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4924        M 0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
       0     4925        M                                           #; (lsu) a0  <-- 48
       0     4927        M 0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4928        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4930        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4931        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4932        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     4933        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     4934        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4935        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     4936        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4947        M                                           #; (lsu) a4  <-- 15
       0     4948        M 0x800016a8 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4949        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 16 ~~> Word[0x8000312c]
       0     4950        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 15, (wrb) a4  <-- 0x8000313b
       0     4951        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000313b, 48 ~~> Byte[0x80003183]
       0     4952        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     4973        M                                           #; (lsu) a4  <-- 16
       0     4974        M 0x800016bc addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4975        M 0x800016c0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4976        M 0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4977        M 0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4978        M 0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4979        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
       0     4984        M 0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
       0     4989        M 0x80001d74 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4990        M 0x80001d78 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4991        M 0x80001d7c bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5003        M 0x80001d80 j       pc + 0x8               #; goto 0x80001d88
       0     5004        M 0x80001d88 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5005        M 0x80001d8c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5016        M 0x80001d90 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5017        M 0x80001d94 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5018        M 0x80001d98 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5019        M 0x80001d9c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001dcc
       0     5039        M 0x80001dcc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5051        M 0x80001dd0 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5054        M 0x80001dd4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5055        M 0x80001dd8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     5056        M 0x80001ddc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5057        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5063        M 0x80001de0 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     5066        M                                           #; (lsu) s10 <-- 0x80002d6e
       0     5067        M 0x80001de4 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5070        M                                           #; (lsu) s9  <-- 8
       0     5071        M 0x80001de8 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5074        M                                           #; (lsu) s8  <-- 16
       0     5075        M 0x80001dec lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5078        M                                           #; (lsu) s7  <-- 0
       0     5079        M 0x80001df0 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5082        M                                           #; (lsu) s6  <-- 0
       0     5083        M 0x80001df4 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5086        M                                           #; (lsu) s5  <-- -1
       0     5087        M 0x80001df8 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5090        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5091        M 0x80001dfc lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5094        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5095        M 0x80001e00 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5098        M                                           #; (lsu) s2  <-- 0x80001688
       0     5099        M 0x80001e04 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5102        M                                           #; (lsu) s1  <-- 8
       0     5103        M 0x80001e08 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5106        M                                           #; (lsu) s0  <-- 0
       0     5107        M 0x80001e0c lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5108        M 0x80001e10 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5110        M                                           #; (lsu) ra  <-- 0x80000db8
       0     5111        M 0x80001e14 ret                            #; ra  = 0x80000db8, goto 0x80000db8
       0     5122        M 0x80000db8 j       pc + 0x7c0             #; goto 0x80001578
       0     5134        M 0x80001578 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5135        M 0x8000157c li      s6, 37                 #; (wrb) s6  <-- 37
       0     5146        M 0x80001580 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5147        M 0x80001584 addi    s0, s10, 1             #; s10 = 0x80002d6e, (wrb) s0  <-- 0x80002d6f
       0     5148        M 0x80001588 j       pc - 0xa74             #; goto 0x80000b14
       0     5149        M 0x80000b14 addi    s10, s0, 2             #; s0  = 0x80002d6f, (wrb) s10 <-- 0x80002d71
       0     5150        M 0x80000b18 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5151        M 0x80000b1c li      s8, 10                 #; (wrb) s8  <-- 10
       0     5152        M 0x80000b20 lbu     a0, 0(s0)              #; s0  = 0x80002d6f, a0  <~~ Byte[0x80002d6f]
       0     5163        M                                           #; (lsu) a0  <-- 10
       0     5164        M 0x80000b24 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5165        M 0x80000b28 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5166        M 0x80000b2c addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5167        M 0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5168        M 0x80000b34 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5169        M 0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5170        M 0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
       0     5173        M 0x80001688 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5174        M 0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5176        M 0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5177        M 0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5178        M 0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
       0     5179        M 0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
       0     5180        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5181        M 0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
       0     5182        M 0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     5193        M                                           #; (lsu) a4  <-- 16
       0     5194        M 0x800016a8 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5195        M 0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 17 ~~> Word[0x8000312c]
       0     5196        M 0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 16, (wrb) a4  <-- 0x8000313c
       0     5197        M 0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000313c, 10 ~~> Byte[0x80003184]
       0     5198        M 0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
       0     5219        M                                           #; (lsu) a4  <-- 17
       0     5220        M 0x800016bc addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5221        M 0x800016c0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5222        M 0x800016c4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5223        M 0x800016c8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5224        M 0x800016cc and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5225        M 0x800016d0 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5226        M 0x800016d4 add     a0, a3, a2             #; a3  = 0x8000312c, a2  = 0, (wrb) a0  <-- 0x8000312c
       0     5227        M 0x800016d8 addi    a2, a0, 72             #; a0  = 0x8000312c, (wrb) a2  <-- 0x80003174
       0     5228        M 0x800016dc sw      zero, 12(a0)           #; a0  = 0x8000312c, 0 ~~> Word[0x80003138]
       0     5229        M 0x800016e0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5230        M 0x800016e4 sw      a3, 8(a0)              #; a0  = 0x8000312c, 64 ~~> Word[0x80003134]
       0     5231        M 0x800016e8 sw      zero, 20(a0)           #; a0  = 0x8000312c, 0 ~~> Word[0x80003140]
       0     5232        M 0x800016ec li      a3, 1                  #; (wrb) a3  <-- 1
       0     5241        M 0x800016f0 sw      a3, 16(a0)             #; a0  = 0x8000312c, 1 ~~> Word[0x8000313c]
       0     5242        M 0x800016f4 sw      zero, 28(a0)           #; a0  = 0x8000312c, 0 ~~> Word[0x80003148]
       0     5244        M 0x800016f8 sw      a2, 24(a0)             #; a0  = 0x8000312c, 0x80003174 ~~> Word[0x80003144]
       0     5254        M 0x800016fc lw      a2, 0(a1)              #; a1  = 0x8000312c, a2  <~~ Word[0x8000312c]
       0     5255        M 0x80001700 addi    a3, a0, 8              #; a0  = 0x8000312c, (wrb) a3  <-- 0x80003134
       0     5256        M 0x80001704 sw      zero, 36(a0)           #; a0  = 0x8000312c, 0 ~~> Word[0x80003150]
       0     5276        M                                           #; (lsu) a2  <-- 17
       0     5277        M 0x80001708 sw      a2, 32(a0)             #; a0  = 0x8000312c, 17 ~~> Word[0x8000314c]
       0     5278        M 0x8000170c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000370c
       0     5279        M 0x80001710 addi    a0, a0, -1868          #; a0  = 0x8000370c, (wrb) a0  <-- 0x80002fc0
       0     5280        M 0x80001714 sw      a3, 0(a0)              #; a0  = 0x80002fc0, 0x80003134 ~~> Word[0x80002fc0]
       0     5281        M 0x80001718 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003718
       0     5282        M 0x8000171c addi    a0, a0, -1816          #; a0  = 0x80003718, (wrb) a0  <-- 0x80003000
       0     5291        M 0x80001720 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5306        M                                           #; (lsu) a2  <-- 1
       0     5307        M 0x80001724 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5308        M 0x80001728 sw      zero, 0(a0)            #; a0  = 0x80003000, 0 ~~> Word[0x80003000]
       0     5309        M 0x8000172c sw      zero, 0(a1)            #; a1  = 0x8000312c, 0 ~~> Word[0x8000312c]
       0     5311        M 0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0     5316        M 0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d6f, (wrb) s0  <-- 0x80002d70
       0     5317        M 0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d71, (wrb) s10 <-- 0x80002d72
       0     5318        M 0x80000b48 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5319        M 0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d70, a0  <~~ Byte[0x80002d70]
       0     5331        M                                           #; (lsu) a0  <-- 0
       0     5332        M 0x80000b50 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5333        M 0x80000b54 j       pc + 0xad8             #; goto 0x8000162c
       0     5345        M 0x8000162c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5357        M 0x80001630 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001638
       0     5358        M 0x80001638 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5359        M 0x8000163c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5369        M 0x80001640 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5370        M 0x80001644 jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80001648, goto 0x80001688
       0     5383        M 0x80001688 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001730
       0     5388        M 0x80001730 ret                            #; ra  = 0x80001648, goto 0x80001648
       0     5389        M 0x80001648 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5390        M 0x8000164c lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5393        M                                           #; (lsu) s11 <-- 0
       0     5394        M 0x80001650 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5397        M                                           #; (lsu) s10 <-- 0
       0     5398        M 0x80001654 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5401        M                                           #; (lsu) s9  <-- 0
       0     5402        M 0x80001658 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5405        M                                           #; (lsu) s8  <-- 0
       0     5406        M 0x8000165c lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5409        M                                           #; (lsu) s7  <-- 0
       0     5410        M 0x80001660 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5413        M                                           #; (lsu) s6  <-- 0
       0     5414        M 0x80001664 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5417        M                                           #; (lsu) s5  <-- 0
       0     5418        M 0x80001668 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5421        M                                           #; (lsu) s4  <-- 0
       0     5422        M 0x8000166c lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5425        M                                           #; (lsu) s3  <-- 0
       0     5426        M 0x80001670 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5429        M                                           #; (lsu) s2  <-- 0
       0     5430        M 0x80001674 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5433        M                                           #; (lsu) s1  <-- 0
       0     5434        M 0x80001678 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5437        M                                           #; (lsu) s0  <-- 0x00100050
       0     5438        M 0x8000167c lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5439        M 0x80001680 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5441        M                                           #; (lsu) ra  <-- 0x80000a84
       0     5442        M 0x80001684 ret                            #; ra  = 0x80000a84, goto 0x80000a84
       0     5445        M 0x80000a84 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5446        M 0x80000a88 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5448        M                                           #; (lsu) ra  <-- 0x800008f8
       0     5449        M 0x80000a8c ret                            #; ra  = 0x800008f8, goto 0x800008f8
       0     5461        M 0x800008f8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028f8
       0     5462        M 0x800008fc addi    a0, a0, 1920           #; a0  = 0x800028f8, (wrb) a0  <-- 0x80003078
       0     5466        M 0x80000900 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003078]
       0     5467        M 0x8000090c lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0     5475        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5476        M 0x80000904 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
       0     5477        M                                           #; (lsu) s0  <-- 0
       0     5478        M 0x80000910 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c], (acc) ra  <-- 0x01c12083
                         M 0x80000908 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     5479        M 0x80000914 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0     5481        M                                           #; (lsu) ra  <-- 0x80002ae0
       0     5482        M 0x80000918 ret                            #; ra  = 0x80002ae0, goto 0x80002ae0
       0     5494        M 0x80002ae0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5495        M 0x80002ae4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ae4
       0     5496        M 0x80002ae8 jalr    ra, ra, 524            #; ra  = 0x80002ae4, (wrb) ra  <-- 0x80002aec, goto 0x80002cf0
       0     5508        M 0x80002cf0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5509        M 0x80002cf4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002aec ~~> Word[0x0011ff5c]
       0     5510        M 0x80002cf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cf8
       0     5511        M 0x80002cfc jalr    ra, ra, -1256          #; ra  = 0x80002cf8, (wrb) ra  <-- 0x80002d00, goto 0x80002810
       0     5531        M 0x80002810 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5532        M 0x80002814 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5533        M 0x80002818 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5536        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5537        M 0x8000281c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5540        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5543        M 0x80002820 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5544        M 0x80002824 ret                            #; ra  = 0x80002d00, goto 0x80002d00
       0     5546        M                                           #; (lsu) a0  <-- 0x00120190
       0     5547        M 0x80002d00 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5557        M                                           #; (lsu) a0  <-- 0
       0     5558        M 0x80002d04 mv      zero, a0               #; a0  = 0
       0     5559        M 0x80002d08 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5560        M 0x80002d0c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5562        M                                           #; (lsu) ra  <-- 0x80002aec
       0     5567        M 0x80002d10 ret                            #; ra  = 0x80002aec, goto 0x80002aec
       0     5579        M 0x80002aec mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5583        M 0x80002af0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002af0
       0     5584        M 0x80002af4 jalr    ra, ra, 556            #; ra  = 0x80002af0, (wrb) ra  <-- 0x80002af8, goto 0x80002d1c
       0     5585        M 0x80002d1c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5586        M 0x80002d20 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5587        M 0x80002d24 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002af8 ~~> Word[0x0011ff5c]
       0     5588        M 0x80002d28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d28
       0     5589        M 0x80002d2c jalr    ra, ra, -1336          #; ra  = 0x80002d28, (wrb) ra  <-- 0x80002d30, goto 0x800027f0
       0     5601        M 0x800027f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5602        M 0x800027f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5603        M 0x800027f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5606        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5607        M 0x800027fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5610        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5612        M 0x80002800 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5613        M 0x80002804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5615        M                                           #; (lsu) a0  <-- 0
       0     5616        M 0x80002808 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5617        M 0x8000280c ret                            #; ra  = 0x80002d30, goto 0x80002d30
       0     5618        M 0x80002d30 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5621        M                                           #; (lsu) t0  <-- 0
       0     5622        M 0x80002d34 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5623        M 0x80002d38 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5624        M 0x80002d3c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5625        M                                           #; (lsu) ra  <-- 0x80002af8
       0     5630        M 0x80002d40 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5631        M 0x80002d44 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5632        M 0x80002d48 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d48
       0     5633        M 0x80002d4c addi    t1, t1, 632            #; t1  = 0x80002d48, (wrb) t1  <-- 0x80002fc0
       0     5641        M 0x80002d50 sw      t0, 0(t1)              #; t1  = 0x80002fc0, 1 ~~> Word[0x80002fc0]
       0     5642        M 0x80002d54 ret                            #; ra  = 0x80002af8, goto 0x80002af8
       0     5643        M 0x80002af8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5643):
snitch_loads                                   130
snitch_stores                                  142
fpss_stores                                     14
fpss_loads                                      42
snitch_avg_load_latency                    12.0538
snitch_occupancy                            0.2409
snitch_fseq_rel_offloads                    0.1119
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.6422
fpss_avg_load_latency                       6.4286
fpss_occupancy                              0.0304
fpss_fpu_occupancy                          0.0194
fpss_fpu_rel_occupancy                      0.6374
cycles                                        5632
total_ipc                                   0.2713
