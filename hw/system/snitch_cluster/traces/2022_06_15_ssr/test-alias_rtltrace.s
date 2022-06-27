       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002910
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002910, (wrb) ra  <-- 4120, goto 0x80002910
       0      269        M 0x80002910 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003910
       0      270        M 0x80002914 addi    gp, gp, -264           #; gp  = 0x80003910, (wrb) gp  <-- 0x80003808
       0      271        M 0x80002918 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002918
       0      272        M 0x8000291c jalr    ra, ra, 964            #; ra  = 0x80002918, (wrb) ra  <-- 0x80002920, goto 0x80002cdc
       0      292        M 0x80002cdc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002ce0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002ce4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002ce8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002cec lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002cf0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002cf4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002cf8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002cfc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002d00 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002d04 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002d08 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002d0c ret                            #; ra  = 0x80002920, goto 0x80002920
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002920 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002924 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002928 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002928
       0      508        M 0x8000292c jalr    ra, ra, 1036           #; ra  = 0x80002928, (wrb) ra  <-- 0x80002930, goto 0x80002d34
       0      523        M 0x80002d34 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002d38 ret                            #; ra  = 0x80002930, goto 0x80002930
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002930 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002934 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002938 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000293c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002940 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002944 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002944
       0      551        M 0x80002948 addi    t0, t0, 2004           #; t0  = 0x80002944, (wrb) t0  <-- 0x80003118
       0      552        M 0x8000294c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000294c
       0      562        M 0x80002950 addi    t1, t1, 2000           #; t1  = 0x8000294c, (wrb) t1  <-- 0x8000311c
       0      563        M 0x80002954 bge     t0, t1, pc + 16        #; t0  = 0x80003118, t1  = 0x8000311c, not taken
       0      564        M 0x80002958 sw      zero, 0(t0)            #; t0  = 0x80003118, 0 ~~> Word[0x80003118]
       0      565        M 0x8000295c addi    t0, t0, 4              #; t0  = 0x80003118, (wrb) t0  <-- 0x8000311c
       0      573        M 0x80002960 blt     t0, t1, pc - 8         #; t0  = 0x8000311c, t1  = 0x8000311c, not taken
       0      574        M 0x80002964 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002968 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000296c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002970 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002974 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002978 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000297c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002980 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002984 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002988 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000298c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002990 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002994 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002998 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000299c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800029a0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800029a4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800029a8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800029ac fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800029b0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800029b4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800029b8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800029bc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800029c0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800029c4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800029c8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800029cc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800029d0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800029d4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800029d8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800029dc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800029e0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800029e4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800029e8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800029ec fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800029f0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800029f4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800029f8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029f8
       0      684        M 0x800029fc lw      t0, 900(t0)            #; t0  = 0x800029f8, t0  <~~ Word[0x80002d7c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002a00 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002a04 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002a08 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a08
       0      708        M 0x80002a0c lw      t2, 880(t2)            #; t2  = 0x80002a08, t2  <~~ Word[0x80002d78]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002a10 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002a14 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002a18 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002a1c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002a20 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002a24 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002a28 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002a2c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002a30 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a30
       0      762        M 0x80002a34 addi    t0, t0, 1496           #; t0  = 0x80002a30, (wrb) t0  <-- 0x80003008
       0      763        M 0x80002a38 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a38
       0      764        M 0x80002a3c addi    t1, t1, 1488           #; t1  = 0x80002a38, (wrb) t1  <-- 0x80003008
       0      775        M 0x80002a40 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a40
       0      776        M 0x80002a44 addi    t2, t2, 1480           #; t2  = 0x80002a40, (wrb) t2  <-- 0x80003008
       0      777        M 0x80002a48 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002a48
       0      778        M 0x80002a4c addi    t3, t3, 1488           #; t3  = 0x80002a48, (wrb) t3  <-- 0x80003018
       0      787        M 0x80002a50 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003008, (wrb) sp  <-- 0x80122f78
       0      788        M 0x80002a54 sub     sp, sp, t1             #; sp  = 0x80122f78, t1  = 0x80003008, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002a58 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003008, (wrb) sp  <-- 0x80122f78
       0      790        M 0x80002a5c sub     sp, sp, t3             #; sp  = 0x80122f78, t3  = 0x80003018, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002a60 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002a64 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002a68 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002a6c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002a70 bge     t0, t1, pc + 24        #; t0  = 0x80003008, t1  = 0x80003008, taken, goto 0x80002a88
       0      823        M 0x80002a88 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a88
       0      824        M 0x80002a8c addi    t0, t0, 1408           #; t0  = 0x80002a88, (wrb) t0  <-- 0x80003008
       0      835        M 0x80002a90 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a90
       0      836        M 0x80002a94 addi    t1, t1, 1416           #; t1  = 0x80002a90, (wrb) t1  <-- 0x80003018
       0      837        M 0x80002a98 bge     t0, t1, pc + 20        #; t0  = 0x80003008, t1  = 0x80003018, not taken
       0      838        M 0x80002a9c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002aa0 addi    t0, t0, 4              #; t0  = 0x80003008, (wrb) t0  <-- 0x8000300c
       0      848        M 0x80002aa4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002aa8 blt     t0, t2, pc - 12        #; t0  = 0x8000300c, t2  = 0x80003008, not taken
       0      850        M 0x80002aac addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002ab0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002ab4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002ab8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002abc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002ac0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002ac4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ac4
       0      877        M 0x80002ac8 jalr    ra, ra, -1060          #; ra  = 0x80002ac4, (wrb) ra  <-- 0x80002acc, goto 0x800026a0
       0      898        M 0x800026a0 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x800026a4 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x800026a8 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x800026ac sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x800026b0 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x800026b4 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x800026b8 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x800026bc mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x800026c0 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x800026c4 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x800026c8 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x800026cc sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x800026d0 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x800026d4 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x800026d8 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x800026dc sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x800026e0 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x800026e4 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x800026e8 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x800026ec add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x800026f0 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x800026f4 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x800026f8 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x800026fc lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002700 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002704 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002708 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x8000270c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002710 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002714 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002718 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x8000271c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002720 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002724 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002728 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x8000272c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x80002730 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x80002734 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x80002738 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x8000273c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x80002740 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x80002744 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x80002748 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x8000274c sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80002750 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x80002754 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x80002758 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x8000275c sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x80002760 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x80002764 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x80002768 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x8000276c lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x80002770 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x80002774 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x80002778 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x8000277c remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x80002780 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x80002784 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x80002788 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x8000278c li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80002790 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x80002794 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003794
       0     1281        M 0x80002798 addi    a1, a1, -1656          #; a1  = 0x80003794, (wrb) a1  <-- 0x8000311c
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x8000279c add     a0, a0, a1             #; a0  = 0, a1  = 0x8000311c, (wrb) a0  <-- 0x8000311c
       0     1291        M 0x800027a0 sw      zero, 0(a0)            #; a0  = 0x8000311c, 0 ~~> Word[0x8000311c]
       0     1292        M 0x800027a4 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x800027a8 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x800027ac sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x800027b0 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x800027b4 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x800027b8 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x800027bc addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x800027c0 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x800027c4 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x800027c8 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x800027cc sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x800027d0 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x800027d4 lw      a0, 0(a1)              #; a1  = 0x8000311c, a0  <~~ Word[0x8000311c]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x800027d8 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x800027dc andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x800027e0 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x800027e4 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x800027e8 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x800027ec lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x800027f0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x800027f4 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x800027f8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x800027fc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x80002800 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x80002804 ret                            #; ra  = 0x80002acc, goto 0x80002acc
       0     1415        M 0x80002acc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002ad0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002ad4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002ad8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002adc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002ae0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002ae4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ae4
       0     1434        M 0x80002ae8 addi    t0, t0, 60             #; t0  = 0x80002ae4, (wrb) t0  <-- 0x80002b20
       0     1435        M 0x80002aec csrw    mtvec, t0              #; t0  = 0x80002b20, (lsu) a4  <-- 4132
       0     1443        M 0x80002af0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002af0
       0     1444        M 0x80002af4 jalr    ra, ra, 544            #; ra  = 0x80002af0, (wrb) ra  <-- 0x80002af8, goto 0x80002d10
       0     1460        M 0x80002d10 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80002d14 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002af8 ~~> Word[0x0011ff5c]
       0     1462        M 0x80002d18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d18
       0     1463        M 0x80002d1c jalr    ra, ra, -1264          #; ra  = 0x80002d18, (wrb) ra  <-- 0x80002d20, goto 0x80002828
       0     1481        M 0x80002828 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x8000282c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x80002830 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x80002834 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x80002838 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x8000283c ret                            #; ra  = 0x80002d20, goto 0x80002d20
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80002d20 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80002d24 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80002d28 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x80002d2c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x80002af8
       0     1541        M 0x80002d30 ret                            #; ra  = 0x80002af8, goto 0x80002af8
       0     1545        M 0x80002af8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000af8
       0     1546        M 0x80002afc jalr    ra, ra, -432           #; ra  = 0x80000af8, (wrb) ra  <-- 0x80002b00, goto 0x80000948
       0     1551        M 0x80000948 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1552        M 0x8000094c sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002b00 ~~> Word[0x0011ff5c]
       0     1554        M 0x80000950 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1556        M 0x80000958 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1557        M 0x8000095c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000954 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1567        M 0x80000960 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1568        M 0x80000964 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1570        M                                           #; (lsu) a1  <-- 0
       0     1571        M 0x80000968 bnez    a1, pc + 208           #; a1  = 0, not taken
       0     1572        M 0x8000096c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1579        M 0x80000970 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1580        M 0x80000974 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1583        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1584        M 0x80000978 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1587        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1588        M 0x8000097c lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1591        M                                           #; (lsu) s0  <-- 0x00100000
       0     1595        M 0x80000980 lw      a2, 80(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
       0     1598        M                                           #; (lsu) a2  <-- 0x00100000
       0     1599        M 0x80000984 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1600        M 0x80000988 addi    a1, s0, 80             #; s0  = 0x00100000, (wrb) a1  <-- 0x00100050
       0     1602        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1603        M 0x8000098c add     a2, a3, a2             #; a3  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
       0     1608        M 0x80000990 bgeu    a2, a1, pc + 12        #; a2  = 0x0011df30, a1  = 0x00100050, taken, goto 0x8000099c
       0     1609        M 0x8000099c sw      a1, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1633        M 0x800009a0 mv      a0, s0                 #; s0  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1634        M 0x800009a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009a4
       0     1635        M 0x800009a8 jalr    ra, ra, -880           #; ra  = 0x800009a4, (wrb) ra  <-- 0x800009ac, goto 0x80000634
       0     1656        M 0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     1657        M 0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1658        M 0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1668        M 0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1669        M 0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1670        M 0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     1671        M 0x8000064c beqz    a1, pc + 204           #; a1  = 1, not taken
       0     1680        M 0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1681        M 0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1682        M 0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1683        M 0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
       0     1692        M 0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1693        M 0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1694        M 0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1695        M 0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     1704        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1706        M 0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
                         M 0x80000674 csrrsi  a0, ssr, 1             #; 
       0     1707        M 0x8000067c addi    a0, a0, -1632          #; a0  = 0x80003678, (wrb) a0  <-- 0x80003018
       0     1718        M 0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018]
       0     1719        M 0x80000684 fcvt.d.w ft4, zero             #; ac1  = 0
       0     1720        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1721        M 0x80000688 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1722        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1727        M                                           #; (f:lsu) ft3  <-- 1.0
       0     1728        M 0x80000690 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003690
                         M 0x8000068c fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1729        M 0x80000694 addi    a0, a0, -1648          #; a0  = 0x80003690, (wrb) a0  <-- 0x80003020
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1731        M 0x8000069c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000369c
       0     1732        M 0x80000698 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003020]
       0     1740        M 0x800006a0 addi    a0, a0, -1652          #; a0  = 0x8000369c, (wrb) a0  <-- 0x80003028
       0     1741        M                                           #; (f:lsu) ft3  <-- 2.0
       0     1743        M 0x800006a4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003028]
       0     1744        M 0x800006a8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1745        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1752        M 0x800006b0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b0
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     1753        M 0x800006b4 addi    a0, a0, -1664          #; a0  = 0x800036b0, (wrb) a0  <-- 0x80003030
                         M 0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
       0     1754        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1755        M 0x800006bc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036bc
       0     1756        M 0x800006b8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003030]
       0     1764        M 0x800006c0 addi    a0, a0, -1668          #; a0  = 0x800036bc, (wrb) a0  <-- 0x80003038
       0     1765        M                                           #; (f:lsu) ft3  <-- 4.0
       0     1767        M 0x800006c4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003038]
       0     1768        M 0x800006c8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1769        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1776        M 0x800006d0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d0
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     1777        M 0x800006d4 addi    a0, a0, -1680          #; a0  = 0x800036d0, (wrb) a0  <-- 0x80003040
                         M 0x800006cc fsgnj.d ft0, ft4, ft4          #; ft4  = 5.0, ft4  = 5.0
       0     1778        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1779        M 0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
       0     1780        M 0x800006d8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003040]
       0     1788        M 0x800006e0 addi    a0, a0, -1684          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80003048
       0     1789        M                                           #; (f:lsu) ft3  <-- 6.0
       0     1791        M 0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003048]
       0     1792        M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1793        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1800        M 0x800006f0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f0
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     1801        M 0x800006f4 addi    a0, a0, -1696          #; a0  = 0x800036f0, (wrb) a0  <-- 0x80003050
                         M 0x800006ec fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
       0     1802        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1803        M 0x800006fc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036fc
       0     1804        M 0x800006f8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003050]
       0     1812        M 0x80000700 addi    a0, a0, -1700          #; a0  = 0x800036fc, (wrb) a0  <-- 0x80003058
       0     1813        M                                           #; (f:lsu) ft3  <-- 8.0
       0     1815        M 0x80000704 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003058]
       0     1816        M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1817        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1824        M                                           #; (f:lsu) ft4  <-- 9.0
       0     1825        M 0x80000714 ret                            #; ra  = 0x800009ac, goto 0x800009ac
                         M 0x8000070c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.0, ft4  = 9.0
       0     1826        M 0x80000710 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 9.0
       0     1838        M 0x800009ac li      a2, 10                 #; (wrb) a2  <-- 10
       0     1841        M 0x800009b0 mv      a0, s0                 #; s0  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1842        M 0x800009b4 mv      a1, s0                 #; s0  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     1843        M 0x800009b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009b8
       0     1844        M 0x800009bc jalr    ra, ra, -356           #; ra  = 0x800009b8, (wrb) ra  <-- 0x800009c0, goto 0x80000854
       0     1864        M 0x80000854 addi    a6, a2, -1             #; a2  = 10, (wrb) a6  <-- 9
       0     1865        M 0x80000858 slli    a4, a6, 3              #; a6  = 9, (wrb) a4  <-- 72
       0     1866        M 0x8000085c add     a3, a4, a1             #; a4  = 72, a1  = 0x00100000, (wrb) a3  <-- 0x00100048
       0     1876        M 0x80000860 add     t2, a4, a0             #; a4  = 72, a0  = 0x00100000, (wrb) t2  <-- 0x00100048
       0     1877        M 0x80000864 bgeu    a3, a4, pc + 20        #; a3  = 0x00100048, a4  = 72, taken, goto 0x80000878
       0     1888        M 0x80000878 sltu    a7, a3, a0             #; a3  = 0x00100048, a0  = 0x00100000, (wrb) a7  <-- 0
       0     1889        M 0x8000087c bgeu    t2, a4, pc - 12        #; t2  = 0x00100048, a4  = 72, taken, goto 0x80000870
       0     1890        M 0x80000870 sltu    a5, t2, a1             #; t2  = 0x00100048, a1  = 0x00100000, (wrb) a5  <-- 0
       0     1891        M 0x80000874 j       pc + 0x10              #; goto 0x80000884
       0     1902        M 0x80000884 or      t0, a7, a5             #; a7  = 0, a5  = 0, (wrb) t0  <-- 0
       0     1903        M 0x80000888 srli    a5, a1, 20             #; a1  = 0x00100000, (wrb) a5  <-- 1
       0     1904        M 0x8000088c snez    t1, a5                 #; a5  = 1, (wrb) t1  <-- 1
       0     1914        M 0x80000890 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     1915        M 0x80000894 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
       0     1916        M 0x80000898 bgeu    a3, a4, pc + 12        #; a3  = 0x00100048, a4  = 72, taken, goto 0x800008a4
       0     1926        M 0x800008a4 sltu    a3, a3, a7             #; a3  = 0x00100048, a7  = 0x00120001, (wrb) a3  <-- 1
       0     1927        M 0x800008a8 and     a3, t1, a3             #; t1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     1928        M 0x800008ac and     t0, t0, a3             #; t0  = 0, a3  = 1, (wrb) t0  <-- 0
       0     1938        M 0x800008b0 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
       0     1939        M 0x800008b4 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     1940        M 0x800008b8 bgeu    t2, a4, pc + 12        #; t2  = 0x00100048, a4  = 72, taken, goto 0x800008c4
       0     1950        M 0x800008c4 sltu    a4, t2, a7             #; t2  = 0x00100048, a7  = 0x00120001, (wrb) a4  <-- 1
       0     1951        M 0x800008c8 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     1952        M 0x800008cc and     a3, a3, t0             #; a3  = 1, t0  = 0, (wrb) a3  <-- 0
       0     1962        M 0x800008d0 beqz    a3, pc + 92            #; a3  = 0, taken, goto 0x8000092c
       0     1987        M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100000]
       0     1988        M                                           #; (f:lsu) ft3  <-- 0.0
       0     1998        M 0x80000934 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
       0     1999        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100000, (wrb) a0  <-- 0x00100008
                         M 0x80000930 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100000]
       0     2000        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
       0     2001        M 0x80000940 bnez    a2, pc - 20            #; a2  = 9, taken, goto 0x8000092c
       0     2004        M 0x80000934 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100008]
       0     2005        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100008, (wrb) a0  <-- 0x00100010
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     2006        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
                         M 0x80000930 fsd     ft3, 0(a0)             #; 1.0 ~~> Doub[0x00100008]
       0     2007        M 0x80000940 bnez    a2, pc - 20            #; a2  = 8, taken, goto 0x8000092c
       0     2010        M 0x80000934 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100010]
       0     2011        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100010, (wrb) a0  <-- 0x00100018
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     2012        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
                         M 0x80000930 fsd     ft3, 0(a0)             #; 2.0 ~~> Doub[0x00100010]
       0     2013        M 0x80000940 bnez    a2, pc - 20            #; a2  = 7, taken, goto 0x8000092c
       0     2016        M 0x80000934 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100018]
       0     2017        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100018, (wrb) a0  <-- 0x00100020
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     2018        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
                         M 0x80000930 fsd     ft3, 0(a0)             #; 3.0 ~~> Doub[0x00100018]
       0     2019        M 0x80000940 bnez    a2, pc - 20            #; a2  = 6, taken, goto 0x8000092c
       0     2022        M 0x80000934 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100020]
       0     2023        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100020, (wrb) a0  <-- 0x00100028
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     2024        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
                         M 0x80000930 fsd     ft3, 0(a0)             #; 4.0 ~~> Doub[0x00100020]
       0     2025        M 0x80000940 bnez    a2, pc - 20            #; a2  = 5, taken, goto 0x8000092c
       0     2028        M 0x80000934 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100028]
       0     2029        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100028, (wrb) a0  <-- 0x00100030
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     2030        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
                         M 0x80000930 fsd     ft3, 0(a0)             #; 5.0 ~~> Doub[0x00100028]
       0     2031        M 0x80000940 bnez    a2, pc - 20            #; a2  = 4, taken, goto 0x8000092c
       0     2034        M 0x80000934 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100030]
       0     2035        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100030, (wrb) a0  <-- 0x00100038
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     2036        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
                         M 0x80000930 fsd     ft3, 0(a0)             #; 6.0 ~~> Doub[0x00100030]
       0     2037        M 0x80000940 bnez    a2, pc - 20            #; a2  = 3, taken, goto 0x8000092c
       0     2040        M 0x80000934 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100038]
       0     2041        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100038, (wrb) a0  <-- 0x00100040
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     2042        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
                         M 0x80000930 fsd     ft3, 0(a0)             #; 7.0 ~~> Doub[0x00100038]
       0     2043        M 0x80000940 bnez    a2, pc - 20            #; a2  = 2, taken, goto 0x8000092c
       0     2046        M 0x80000934 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100040]
       0     2047        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100040, (wrb) a0  <-- 0x00100048
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     2048        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
                         M 0x80000930 fsd     ft3, 0(a0)             #; 8.0 ~~> Doub[0x00100040]
       0     2049        M 0x80000940 bnez    a2, pc - 20            #; a2  = 1, taken, goto 0x8000092c
       0     2052        M 0x80000934 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100048]
       0     2053        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100048, (wrb) a0  <-- 0x00100050
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     2054        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
                         M 0x80000930 fsd     ft3, 0(a0)             #; 9.0 ~~> Doub[0x00100048]
       0     2055        M 0x80000940 bnez    a2, pc - 20            #; a2  = 0, not taken
       0     2056        M 0x80000944 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     2061        M 0x800009c0 mv      a0, s0                 #; s0  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     2062        M 0x800009c4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009c4
       0     2063        M 0x800009c8 jalr    ra, ra, -564           #; ra  = 0x800009c4, (wrb) ra  <-- 0x800009cc, goto 0x80000790
       0     2084        M 0x80000790 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     2085        M 0x80000794 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     2086        M 0x80000798 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     2087        M 0x8000079c addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     2096        M 0x800007a0 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     2097        M 0x800007a4 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     2098        M 0x800007a8 beqz    a1, pc + 92            #; a1  = 1, not taken
       0     2099        M 0x800007ac li      a1, 8                  #; (wrb) a1  <-- 8
       0     2108        M 0x800007b0 li      a2, 9                  #; (wrb) a2  <-- 9
       0     2109        M 0x800007b4 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2110        M 0x800007b8 li      a4, 192                #; (wrb) a4  <-- 192
       0     2111        M 0x800007bc scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     2120        M 0x800007c0 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     2121        M 0x800007c4 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2122        M 0x800007c8 scfgw   zero, a1               #; a1  = 32
       0     2123        M 0x800007cc scfgwi  a0, 768                #; a0  = 0x00100000
       0     2133        M 0x800007d0 csrrsi  a0, ssr, 1             #; 
       0     2135        M 0x800007d4 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2136        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2137        M 0x800007d8 fadd.d  ft3, ft0, ft3          #; ft0  = 1.0, ft3  = 0.0
       0     2140        M                                           #; (f:fpu) ft3  <-- 1.0
       0     2141        M 0x800007dc fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
       0     2144        M                                           #; (f:fpu) ft3  <-- 3.0
       0     2146        M 0x800007e0 fadd.d  ft3, ft0, ft3          #; ft0  = 3.0, ft3  = 3.0
       0     2149        M                                           #; (f:fpu) ft3  <-- 6.0
       0     2150        M 0x800007e4 fadd.d  ft3, ft0, ft3          #; ft0  = 4.0, ft3  = 6.0
       0     2153        M                                           #; (f:fpu) ft3  <-- 10.0
       0     2154        M 0x800007e8 fadd.d  ft3, ft0, ft3          #; ft0  = 5.0, ft3  = 10.0
       0     2157        M                                           #; (f:fpu) ft3  <-- 15.0
       0     2158        M 0x800007ec fadd.d  ft3, ft0, ft3          #; ft0  = 6.0, ft3  = 15.0
       0     2161        M                                           #; (f:fpu) ft3  <-- 21.0
       0     2162        M 0x800007f0 fadd.d  ft3, ft0, ft3          #; ft0  = 7.0, ft3  = 21.0
       0     2165        M                                           #; (f:fpu) ft3  <-- 28.0
       0     2166        M 0x800007f4 fadd.d  ft3, ft0, ft3          #; ft0  = 8.0, ft3  = 28.0
       0     2168        M 0x80000800 ret                            #; ra  = 0x800009cc, goto 0x800009cc
       0     2169        M                                           #; (f:fpu) ft3  <-- 36.0
       0     2170        M 0x800007f8 fadd.d  fa0, ft0, ft3          #; ft0  = 9.0, ft3  = 36.0
       0     2171        M 0x800007fc csrrci  a0, ssr, 1             #; 
       0     2173        M                                           #; (f:fpu) fa0  <-- 45.0
       0     2184        M 0x800009cc fsgnj.d fs0, fa0, fa0          #; fa0  = 45.0, fa0  = 45.0
       0     2185        M 0x800009d0 addi    a0, s0, 8              #; s0  = 0x00100000, (wrb) a0  <-- 0x00100008
                         M                                           #; (f:fpu) fs0  <-- 45.0
       0     2186        M 0x800009d4 li      a2, 9                  #; (wrb) a2  <-- 9
       0     2187        M 0x800009d8 mv      a1, s0                 #; s0  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     2188        M 0x800009dc auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009dc
       0     2197        M 0x800009e0 jalr    ra, ra, -392           #; ra  = 0x800009dc, (wrb) ra  <-- 0x800009e4, goto 0x80000854
       0     2211        M 0x80000854 addi    a6, a2, -1             #; a2  = 9, (wrb) a6  <-- 8
       0     2212        M 0x80000858 slli    a4, a6, 3              #; a6  = 8, (wrb) a4  <-- 64
       0     2213        M 0x8000085c add     a3, a4, a1             #; a4  = 64, a1  = 0x00100000, (wrb) a3  <-- 0x00100040
       0     2214        M 0x80000860 add     t2, a4, a0             #; a4  = 64, a0  = 0x00100008, (wrb) t2  <-- 0x00100048
       0     2215        M 0x80000864 bgeu    a3, a4, pc + 20        #; a3  = 0x00100040, a4  = 64, taken, goto 0x80000878
       0     2217        M 0x80000878 sltu    a7, a3, a0             #; a3  = 0x00100040, a0  = 0x00100008, (wrb) a7  <-- 0
       0     2218        M 0x8000087c bgeu    t2, a4, pc - 12        #; t2  = 0x00100048, a4  = 64, taken, goto 0x80000870
       0     2219        M 0x80000870 sltu    a5, t2, a1             #; t2  = 0x00100048, a1  = 0x00100000, (wrb) a5  <-- 0
       0     2220        M 0x80000874 j       pc + 0x10              #; goto 0x80000884
       0     2222        M 0x80000884 or      t0, a7, a5             #; a7  = 0, a5  = 0, (wrb) t0  <-- 0
       0     2223        M 0x80000888 srli    a5, a1, 20             #; a1  = 0x00100000, (wrb) a5  <-- 1
       0     2224        M 0x8000088c snez    t1, a5                 #; a5  = 1, (wrb) t1  <-- 1
       0     2225        M 0x80000890 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     2226        M 0x80000894 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
       0     2227        M 0x80000898 bgeu    a3, a4, pc + 12        #; a3  = 0x00100040, a4  = 64, taken, goto 0x800008a4
       0     2228        M 0x800008a4 sltu    a3, a3, a7             #; a3  = 0x00100040, a7  = 0x00120001, (wrb) a3  <-- 1
       0     2229        M 0x800008a8 and     a3, t1, a3             #; t1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     2230        M 0x800008ac and     t0, t0, a3             #; t0  = 0, a3  = 1, (wrb) t0  <-- 0
       0     2231        M 0x800008b0 srli    a3, a0, 20             #; a0  = 0x00100008, (wrb) a3  <-- 1
       0     2232        M 0x800008b4 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     2233        M 0x800008b8 bgeu    t2, a4, pc + 12        #; t2  = 0x00100048, a4  = 64, taken, goto 0x800008c4
       0     2234        M 0x800008c4 sltu    a4, t2, a7             #; t2  = 0x00100048, a7  = 0x00120001, (wrb) a4  <-- 1
       0     2235        M 0x800008c8 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     2236        M 0x800008cc and     a3, a3, t0             #; a3  = 1, t0  = 0, (wrb) a3  <-- 0
       0     2237        M 0x800008d0 beqz    a3, pc + 92            #; a3  = 0, taken, goto 0x8000092c
       0     2244        M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100000]
       0     2245        M                                           #; (f:lsu) ft3  <-- 0.0
       0     2246        M 0x80000934 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
       0     2247        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100008, (wrb) a0  <-- 0x00100010
                         M 0x80000930 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100008]
       0     2248        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
       0     2249        M 0x80000940 bnez    a2, pc - 20            #; a2  = 8, taken, goto 0x8000092c
       0     2252        M 0x80000934 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100008]
       0     2253        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100010, (wrb) a0  <-- 0x00100018
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2254        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
                         M 0x80000930 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100010]
       0     2255        M 0x80000940 bnez    a2, pc - 20            #; a2  = 7, taken, goto 0x8000092c
       0     2258        M 0x80000934 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100010]
       0     2259        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100018, (wrb) a0  <-- 0x00100020
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2260        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
                         M 0x80000930 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100018]
       0     2261        M 0x80000940 bnez    a2, pc - 20            #; a2  = 6, taken, goto 0x8000092c
       0     2264        M 0x80000934 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100018]
       0     2265        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100020, (wrb) a0  <-- 0x00100028
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2266        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
                         M 0x80000930 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100020]
       0     2267        M 0x80000940 bnez    a2, pc - 20            #; a2  = 5, taken, goto 0x8000092c
       0     2270        M 0x80000934 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100020]
       0     2271        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100028, (wrb) a0  <-- 0x00100030
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2272        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
                         M 0x80000930 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100028]
       0     2273        M 0x80000940 bnez    a2, pc - 20            #; a2  = 4, taken, goto 0x8000092c
       0     2276        M 0x80000934 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100028]
       0     2277        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100030, (wrb) a0  <-- 0x00100038
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2278        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
                         M 0x80000930 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100030]
       0     2279        M 0x80000940 bnez    a2, pc - 20            #; a2  = 3, taken, goto 0x8000092c
       0     2282        M 0x80000934 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100030]
       0     2283        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100038, (wrb) a0  <-- 0x00100040
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2284        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
                         M 0x80000930 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100038]
       0     2285        M 0x80000940 bnez    a2, pc - 20            #; a2  = 2, taken, goto 0x8000092c
       0     2288        M 0x80000934 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100038]
       0     2289        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100040, (wrb) a0  <-- 0x00100048
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2290        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
                         M 0x80000930 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100040]
       0     2291        M 0x80000940 bnez    a2, pc - 20            #; a2  = 1, taken, goto 0x8000092c
       0     2294        M 0x80000934 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x8000092c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100040]
       0     2295        M 0x80000938 addi    a0, a0, 8              #; a0  = 0x00100048, (wrb) a0  <-- 0x00100050
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2296        M 0x8000093c addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
                         M 0x80000930 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100048]
       0     2297        M 0x80000940 bnez    a2, pc - 20            #; a2  = 0, not taken
       0     2298        M 0x80000944 ret                            #; ra  = 0x800009e4, goto 0x800009e4
       0     2303        M 0x800009e4 mv      a0, s0                 #; s0  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     2304        M 0x800009e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009e8
       0     2305        M 0x800009ec jalr    ra, ra, -600           #; ra  = 0x800009e8, (wrb) ra  <-- 0x800009f0, goto 0x80000790
       0     2308        M 0x80000790 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     2309        M 0x80000794 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     2310        M 0x80000798 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     2311        M 0x8000079c addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     2312        M 0x800007a0 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     2313        M 0x800007a4 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     2314        M 0x800007a8 beqz    a1, pc + 92            #; a1  = 1, not taken
       0     2315        M 0x800007ac li      a1, 8                  #; (wrb) a1  <-- 8
       0     2316        M 0x800007b0 li      a2, 9                  #; (wrb) a2  <-- 9
       0     2317        M 0x800007b4 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2318        M 0x800007b8 li      a4, 192                #; (wrb) a4  <-- 192
       0     2319        M 0x800007bc scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     2320        M 0x800007c0 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     2321        M 0x800007c4 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2322        M 0x800007c8 scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     2323        M 0x800007cc scfgwi  a0, 768                #; a0  = 0x00100000
       0     2325        M                                           #; (acc) gp  <-- 0x220001d3
                         M 0x800007d0 csrrsi  a0, ssr, 1             #; 
       0     2326        M                                           #; (acc) gp  <-- 0x023071d3
       0     2327        M 0x800007d4 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2328        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2329        M 0x800007d8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2332        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2333        M 0x800007dc fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2336        M 0x80000800 ret                            #; ra  = 0x800009f0, goto 0x800009f0
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2337        M 0x800007e0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2340        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2341        M 0x800009f0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029f0
                         M 0x800007e4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2342        M 0x800009f4 addi    a0, a0, 1648           #; a0  = 0x800029f0, (wrb) a0  <-- 0x80003060
       0     2344        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2345        M 0x800007e8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2348        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2349        M 0x800007ec fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2352        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2353        M 0x800007f0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2356        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2357        M 0x800007f4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2360        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2361        M 0x800007f8 fadd.d  fa0, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2362        M 0x800007fc csrrci  a0, ssr, 1             #; 
       0     2364        M 0x800009f8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003060], (f:fpu) fa0  <-- 0.0
       0     2373        M                                           #; (f:lsu) ft0  <-- -45.0
       0     2374        M 0x800009fc fadd.d  ft0, fs0, ft0          #; fs0  = 45.0, ft0  = -45.0
       0     2376        M 0x80000a10 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     2377        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2378        M 0x80000a00 fsgnjx.d ft0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     2379        M                                           #; (lsu) a2  <-- 0
                         M 0x80000a04 fsgnjx.d ft1, fa0, fa0         #; fa0  = 0.0, fa0  = 0.0, (f:fpu) ft0  <-- 0.0
       0     2380        M 0x80000a14 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M                                           #; (f:fpu) ft1  <-- 0.0
       0     2381        M 0x80000a18 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a18
                         M 0x80000a08 fadd.d  fs0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
       0     2382        M 0x80000a1c addi    a0, a0, 877            #; a0  = 0x80002a18, (wrb) a0  <-- 0x80002d85
       0     2383        M                                           #; (lsu) a3  <-- 0
       0     2384        M                                           #; (f:fpu) fs0  <-- 0.0
       0     2385        M 0x80000a0c fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     2388        M 0x80000a20 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a20
       0     2389        M 0x80000a24 jalr    ra, ra, 44             #; ra  = 0x80000a20, (wrb) ra  <-- 0x80000a28, goto 0x80000a4c
       0     2393        M 0x80000a4c addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2396        M 0x80000a50 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a28 ~~> Word[0x0011ff1c]
       0     2397        M 0x80000a54 mv      t0, a0                 #; a0  = 0x80002d85, (wrb) t0  <-- 0x80002d85
       0     2398        M 0x80000a58 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x00120001 ~~> Word[0x0011ff3c]
       0     2399        M 0x80000a5c sw      a6, 40(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff38]
       0     2408        M 0x80000a60 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff34]
       0     2409        M 0x80000a64 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff30]
       0     2410        M 0x80000a68 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2411        M 0x80000a6c sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2420        M 0x80000a70 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
       0     2421        M 0x80000a74 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2422        M 0x80000a78 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2423        M 0x80000a7c auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a7c
       0     2432        M 0x80000a80 addi    a0, a0, -988           #; a0  = 0x80001a7c, (wrb) a0  <-- 0x800016a0
       0     2433        M 0x80000a84 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2434        M 0x80000a88 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2435        M 0x80000a8c addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2444        M 0x80000a90 mv      a3, t0                 #; t0  = 0x80002d85, (wrb) a3  <-- 0x80002d85
       0     2445        M 0x80000a94 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a94
       0     2446        M 0x80000a98 jalr    ra, ra, 20             #; ra  = 0x80000a94, (wrb) ra  <-- 0x80000a9c, goto 0x80000aa8
       0     2456        M 0x80000aa8 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2457        M 0x80000aac sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000a9c ~~> Word[0x0011ff0c]
       0     2468        M 0x80000ab0 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff08]
       0     2469        M 0x80000ab4 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2470        M 0x80000ab8 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2471        M 0x80000abc sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2480        M 0x80000ac0 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2481        M 0x80000ac4 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2482        M 0x80000ac8 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2483        M 0x80000acc sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2492        M 0x80000ad0 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2493        M 0x80000ad4 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2494        M 0x80000ad8 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2495        M 0x80000adc sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2504        M 0x80000ae0 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2505        M 0x80000ae4 mv      s0, a3                 #; a3  = 0x80002d85, (wrb) s0  <-- 0x80002d85
       0     2506        M 0x80000ae8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2507        M 0x80000aec mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2516        M 0x80000af0 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2517        M 0x80000af4 mv      s2, a0                 #; a0  = 0x800016a0, (wrb) s2  <-- 0x800016a0
       0     2518        M 0x80000af8 j       pc + 0xc               #; goto 0x80000b04
       0     2528        M 0x80000b04 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2529        M 0x80000b08 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2530        M 0x80000b0c li      s11, 16                #; (wrb) s11 <-- 16
       0     2540        M 0x80000b10 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2541        M 0x80000b14 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2542        M 0x80000b18 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2543        M 0x80000b1c sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2552        M 0x80000b20 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2553        M 0x80000b24 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2554        M 0x80000b28 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2555        M 0x80000b2c addi    s10, s0, 2             #; s0  = 0x80002d85, (wrb) s10 <-- 0x80002d87
       0     2564        M 0x80000b30 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2565        M 0x80000b34 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2566        M 0x80000b38 lbu     a0, 0(s0)              #; s0  = 0x80002d85, a0  <~~ Byte[0x80002d85]
       0     2577        M                                           #; (lsu) a0  <-- 101
       0     2578        M 0x80000b3c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2579        M 0x80000b40 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2580        M 0x80000b44 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2581        M 0x80000b48 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2582        M 0x80000b4c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2591        M 0x80000b50 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2592        M 0x80000b54 jalr    s2                     #; s2  = 0x800016a0, (wrb) ra  <-- 0x80000b58, goto 0x800016a0
       0     2614        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2615        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2616        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2617        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2626        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     2627        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     2628        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     2629        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     2640        M                                           #; (lsu) a4  <-- 0
       0     2641        M 0x800016c0 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2642        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 1 ~~> Word[0x8000311c]
       0     2643        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 0, (wrb) a4  <-- 0x8000311c
       0     2644        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x8000311c, 101 ~~> Byte[0x80003164]
       0     2650        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     2666        M                                           #; (lsu) a4  <-- 1
       0     2667        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2668        M 0x800016d8 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2669        M 0x800016dc addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2670        M 0x800016e0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2671        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2672        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     2693        M 0x80001748 ret                            #; ra  = 0x80000b58, goto 0x80000b58
       0     2707        M 0x80000b58 addi    s0, s0, 1              #; s0  = 0x80002d85, (wrb) s0  <-- 0x80002d86
       0     2708        M 0x80000b5c addi    s10, s10, 1            #; s10 = 0x80002d87, (wrb) s10 <-- 0x80002d88
       0     2710        M 0x80000b60 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2711        M 0x80000b64 lbu     a0, 0(s0)              #; s0  = 0x80002d86, a0  <~~ Byte[0x80002d86]
       0     2722        M                                           #; (lsu) a0  <-- 114
       0     2723        M 0x80000b68 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b40
       0     2724        M 0x80000b40 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2725        M 0x80000b44 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2726        M 0x80000b48 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2727        M 0x80000b4c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2728        M 0x80000b50 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2729        M 0x80000b54 jalr    s2                     #; s2  = 0x800016a0, (wrb) ra  <-- 0x80000b58, goto 0x800016a0
       0     2732        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2733        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2734        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2735        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2736        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     2737        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     2738        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2739        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     2740        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     2751        M                                           #; (lsu) a4  <-- 1
       0     2752        M 0x800016c0 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2753        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 2 ~~> Word[0x8000311c]
       0     2754        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 1, (wrb) a4  <-- 0x8000311d
       0     2755        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x8000311d, 114 ~~> Byte[0x80003165]
       0     2756        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     2777        M                                           #; (lsu) a4  <-- 2
       0     2778        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2779        M 0x800016d8 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2780        M 0x800016dc addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2781        M 0x800016e0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2782        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2783        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     2786        M 0x80001748 ret                            #; ra  = 0x80000b58, goto 0x80000b58
       0     2791        M 0x80000b58 addi    s0, s0, 1              #; s0  = 0x80002d86, (wrb) s0  <-- 0x80002d87
       0     2792        M 0x80000b5c addi    s10, s10, 1            #; s10 = 0x80002d88, (wrb) s10 <-- 0x80002d89
       0     2794        M 0x80000b60 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2795        M 0x80000b64 lbu     a0, 0(s0)              #; s0  = 0x80002d87, a0  <~~ Byte[0x80002d87]
       0     2806        M                                           #; (lsu) a0  <-- 114
       0     2807        M 0x80000b68 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b40
       0     2808        M 0x80000b40 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2809        M 0x80000b44 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2810        M 0x80000b48 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2811        M 0x80000b4c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2812        M 0x80000b50 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2813        M 0x80000b54 jalr    s2                     #; s2  = 0x800016a0, (wrb) ra  <-- 0x80000b58, goto 0x800016a0
       0     2816        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2817        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2818        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2819        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2820        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     2821        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     2822        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2823        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     2824        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     2835        M                                           #; (lsu) a4  <-- 2
       0     2836        M 0x800016c0 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2837        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 3 ~~> Word[0x8000311c]
       0     2838        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 2, (wrb) a4  <-- 0x8000311e
       0     2839        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x8000311e, 114 ~~> Byte[0x80003166]
       0     2840        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     2861        M                                           #; (lsu) a4  <-- 3
       0     2862        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2863        M 0x800016d8 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2864        M 0x800016dc addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2865        M 0x800016e0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2866        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2867        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     2870        M 0x80001748 ret                            #; ra  = 0x80000b58, goto 0x80000b58
       0     2875        M 0x80000b58 addi    s0, s0, 1              #; s0  = 0x80002d87, (wrb) s0  <-- 0x80002d88
       0     2876        M 0x80000b5c addi    s10, s10, 1            #; s10 = 0x80002d89, (wrb) s10 <-- 0x80002d8a
       0     2878        M 0x80000b60 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2879        M 0x80000b64 lbu     a0, 0(s0)              #; s0  = 0x80002d88, a0  <~~ Byte[0x80002d88]
       0     2890        M                                           #; (lsu) a0  <-- 111
       0     2891        M 0x80000b68 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b40
       0     2892        M 0x80000b40 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2893        M 0x80000b44 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2894        M 0x80000b48 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2895        M 0x80000b4c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2896        M 0x80000b50 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2897        M 0x80000b54 jalr    s2                     #; s2  = 0x800016a0, (wrb) ra  <-- 0x80000b58, goto 0x800016a0
       0     2900        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2901        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2902        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2903        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2904        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     2905        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     2906        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2907        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     2908        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     2919        M                                           #; (lsu) a4  <-- 3
       0     2920        M 0x800016c0 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2921        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 4 ~~> Word[0x8000311c]
       0     2922        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 3, (wrb) a4  <-- 0x8000311f
       0     2923        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x8000311f, 111 ~~> Byte[0x80003167]
       0     2924        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     2945        M                                           #; (lsu) a4  <-- 4
       0     2946        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2947        M 0x800016d8 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2948        M 0x800016dc addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2949        M 0x800016e0 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2950        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2951        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     2954        M 0x80001748 ret                            #; ra  = 0x80000b58, goto 0x80000b58
       0     2959        M 0x80000b58 addi    s0, s0, 1              #; s0  = 0x80002d88, (wrb) s0  <-- 0x80002d89
       0     2960        M 0x80000b5c addi    s10, s10, 1            #; s10 = 0x80002d8a, (wrb) s10 <-- 0x80002d8b
       0     2962        M 0x80000b60 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2963        M 0x80000b64 lbu     a0, 0(s0)              #; s0  = 0x80002d89, a0  <~~ Byte[0x80002d89]
       0     2974        M                                           #; (lsu) a0  <-- 114
       0     2975        M 0x80000b68 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b40
       0     2976        M 0x80000b40 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2977        M 0x80000b44 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2978        M 0x80000b48 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2979        M 0x80000b4c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2980        M 0x80000b50 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2981        M 0x80000b54 jalr    s2                     #; s2  = 0x800016a0, (wrb) ra  <-- 0x80000b58, goto 0x800016a0
       0     2984        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2985        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2986        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2987        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2988        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     2989        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     2990        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2991        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     2992        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     3003        M                                           #; (lsu) a4  <-- 4
       0     3004        M 0x800016c0 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3005        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 5 ~~> Word[0x8000311c]
       0     3006        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 4, (wrb) a4  <-- 0x80003120
       0     3007        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x80003120, 114 ~~> Byte[0x80003168]
       0     3008        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     3029        M                                           #; (lsu) a4  <-- 5
       0     3030        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3031        M 0x800016d8 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3032        M 0x800016dc addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3033        M 0x800016e0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3034        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3035        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     3038        M 0x80001748 ret                            #; ra  = 0x80000b58, goto 0x80000b58
       0     3043        M 0x80000b58 addi    s0, s0, 1              #; s0  = 0x80002d89, (wrb) s0  <-- 0x80002d8a
       0     3044        M 0x80000b5c addi    s10, s10, 1            #; s10 = 0x80002d8b, (wrb) s10 <-- 0x80002d8c
       0     3046        M 0x80000b60 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3047        M 0x80000b64 lbu     a0, 0(s0)              #; s0  = 0x80002d8a, a0  <~~ Byte[0x80002d8a]
       0     3058        M                                           #; (lsu) a0  <-- 32
       0     3059        M 0x80000b68 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b40
       0     3060        M 0x80000b40 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3061        M 0x80000b44 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3062        M 0x80000b48 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3063        M 0x80000b4c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3064        M 0x80000b50 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3065        M 0x80000b54 jalr    s2                     #; s2  = 0x800016a0, (wrb) ra  <-- 0x80000b58, goto 0x800016a0
       0     3068        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3069        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3070        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3071        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3072        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     3073        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     3074        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3075        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     3076        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     3087        M                                           #; (lsu) a4  <-- 5
       0     3088        M 0x800016c0 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3089        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 6 ~~> Word[0x8000311c]
       0     3090        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 5, (wrb) a4  <-- 0x80003121
       0     3091        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x80003121, 32 ~~> Byte[0x80003169]
       0     3092        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     3113        M                                           #; (lsu) a4  <-- 6
       0     3114        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3115        M 0x800016d8 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3116        M 0x800016dc addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3117        M 0x800016e0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3118        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3119        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     3122        M 0x80001748 ret                            #; ra  = 0x80000b58, goto 0x80000b58
       0     3127        M 0x80000b58 addi    s0, s0, 1              #; s0  = 0x80002d8a, (wrb) s0  <-- 0x80002d8b
       0     3128        M 0x80000b5c addi    s10, s10, 1            #; s10 = 0x80002d8c, (wrb) s10 <-- 0x80002d8d
       0     3130        M 0x80000b60 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3131        M 0x80000b64 lbu     a0, 0(s0)              #; s0  = 0x80002d8b, a0  <~~ Byte[0x80002d8b]
       0     3142        M                                           #; (lsu) a0  <-- 61
       0     3143        M 0x80000b68 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b40
       0     3144        M 0x80000b40 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3145        M 0x80000b44 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3146        M 0x80000b48 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3147        M 0x80000b4c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3148        M 0x80000b50 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3149        M 0x80000b54 jalr    s2                     #; s2  = 0x800016a0, (wrb) ra  <-- 0x80000b58, goto 0x800016a0
       0     3152        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3153        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3154        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3155        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3156        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     3157        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     3158        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3159        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     3160        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     3171        M                                           #; (lsu) a4  <-- 6
       0     3172        M 0x800016c0 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3173        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 7 ~~> Word[0x8000311c]
       0     3174        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 6, (wrb) a4  <-- 0x80003122
       0     3175        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x80003122, 61 ~~> Byte[0x8000316a]
       0     3176        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     3197        M                                           #; (lsu) a4  <-- 7
       0     3198        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3199        M 0x800016d8 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3200        M 0x800016dc addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3201        M 0x800016e0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3202        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3203        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     3206        M 0x80001748 ret                            #; ra  = 0x80000b58, goto 0x80000b58
       0     3211        M 0x80000b58 addi    s0, s0, 1              #; s0  = 0x80002d8b, (wrb) s0  <-- 0x80002d8c
       0     3212        M 0x80000b5c addi    s10, s10, 1            #; s10 = 0x80002d8d, (wrb) s10 <-- 0x80002d8e
       0     3214        M 0x80000b60 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3215        M 0x80000b64 lbu     a0, 0(s0)              #; s0  = 0x80002d8c, a0  <~~ Byte[0x80002d8c]
       0     3226        M                                           #; (lsu) a0  <-- 32
       0     3227        M 0x80000b68 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b40
       0     3228        M 0x80000b40 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3229        M 0x80000b44 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3230        M 0x80000b48 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3231        M 0x80000b4c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3232        M 0x80000b50 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3233        M 0x80000b54 jalr    s2                     #; s2  = 0x800016a0, (wrb) ra  <-- 0x80000b58, goto 0x800016a0
       0     3236        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3237        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3238        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3239        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3240        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     3241        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     3242        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3243        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     3244        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     3255        M                                           #; (lsu) a4  <-- 7
       0     3256        M 0x800016c0 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3257        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 8 ~~> Word[0x8000311c]
       0     3258        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 7, (wrb) a4  <-- 0x80003123
       0     3259        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x80003123, 32 ~~> Byte[0x8000316b]
       0     3260        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     3281        M                                           #; (lsu) a4  <-- 8
       0     3282        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3283        M 0x800016d8 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3284        M 0x800016dc addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3285        M 0x800016e0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3286        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3287        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     3290        M 0x80001748 ret                            #; ra  = 0x80000b58, goto 0x80000b58
       0     3295        M 0x80000b58 addi    s0, s0, 1              #; s0  = 0x80002d8c, (wrb) s0  <-- 0x80002d8d
       0     3296        M 0x80000b5c addi    s10, s10, 1            #; s10 = 0x80002d8e, (wrb) s10 <-- 0x80002d8f
       0     3298        M 0x80000b60 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3299        M 0x80000b64 lbu     a0, 0(s0)              #; s0  = 0x80002d8d, a0  <~~ Byte[0x80002d8d]
       0     3310        M                                           #; (lsu) a0  <-- 37
       0     3311        M 0x80000b68 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b40
       0     3312        M 0x80000b40 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b70
       0     3324        M 0x80000b70 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3325        M 0x80000b74 j       pc + 0x10              #; goto 0x80000b84
       0     3336        M 0x80000b84 lbu     a0, -1(s10)            #; s10 = 0x80002d8f, a0  <~~ Byte[0x80002d8e]
       0     3347        M                                           #; (lsu) a0  <-- 102
       0     3348        M 0x80000b88 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3349        M 0x80000b8c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000bc4
       0     3361        M 0x80000bc4 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3362        M 0x80000bc8 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3363        M 0x80000bcc addi    a1, s10, -1            #; s10 = 0x80002d8f, (wrb) a1  <-- 0x80002d8e
       0     3373        M 0x80000bd0 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3374        M 0x80000bd4 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c50
       0     3396        M 0x80000c50 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3397        M 0x80000c54 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000ca4
       0     3419        M 0x80000ca4 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3420        M 0x80000ca8 mv      s10, a1                #; a1  = 0x80002d8e, (wrb) s10 <-- 0x80002d8e
       0     3421        M 0x80000cac beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3442        M 0x80000cb0 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3443        M 0x80000cb4 j       pc + 0xc               #; goto 0x80000cc0
       0     3454        M 0x80000cc0 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3455        M 0x80000cc4 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3456        M 0x80000cc8 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3457        M 0x80000ccc or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3466        M 0x80000cd0 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3467        M 0x80000cd4 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d38
       0     3489        M 0x80000d38 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3490        M 0x80000d3c li      a2, 83                 #; (wrb) a2  <-- 83
       0     3501        M 0x80000d40 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3502        M 0x80000d44 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3503        M 0x80000d48 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d48
       0     3504        M 0x80000d4c addi    a2, a2, 188            #; a2  = 0x80002d48, (wrb) a2  <-- 0x80002e04
       0     3513        M 0x80000d50 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e04, (wrb) a1  <-- 0x80002f08
       0     3514        M 0x80000d54 lw      a2, 0(a1)              #; a1  = 0x80002f08, a2  <~~ Word[0x80002f08]
       0     3515        M 0x80000d58 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3516        M 0x80000d5c li      s8, 16                 #; (wrb) s8  <-- 16
       0     3525        M                                           #; (lsu) a2  <-- 0x80000d90
       0     3526        M 0x80000d60 jr      a2                     #; a2  = 0x80000d90, goto 0x80000d90
       0     3548        M 0x80000d90 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3549        M 0x80000d94 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000d9c
       0     3550        M 0x80000d9c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3560        M 0x80000da0 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3562        M 0x80000da8 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3563        M 0x80000dac mv      a0, s2                 #; s2  = 0x800016a0, (wrb) a0  <-- 0x800016a0
                         M 0x80000da4 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3564        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3572        M 0x80000db0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3573        M 0x80000db4 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3574        M 0x80000db8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3575        M 0x80000dbc mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3584        M 0x80000dc0 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3585        M 0x80000dc4 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3586        M 0x80000dc8 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001dc8
       0     3587        M 0x80000dcc jalr    ra, ra, -1656          #; ra  = 0x80001dc8, (wrb) ra  <-- 0x80000dd0, goto 0x80001750
       0     3598        M 0x80001750 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3599        M 0x80001754 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000dd0 ~~> Word[0x0011fe9c]
       0     3600        M 0x80001758 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3601        M 0x8000175c sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3610        M 0x80001760 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800016a0 ~~> Word[0x0011fe90]
       0     3611        M 0x80001764 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3612        M 0x80001768 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3613        M 0x8000176c sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3622        M 0x80001770 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3623        M 0x80001774 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3624        M 0x80001778 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3625        M 0x8000177c sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3634        M 0x80001780 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002d8e ~~> Word[0x0011fe70]
       0     3637        M 0x80001784 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3638        M 0x80001788 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3639        M 0x8000178c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3646        M 0x80001790 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003790
       0     3647        M 0x80001794 addi    s1, s1, -1824          #; s1  = 0x80003790, (wrb) s1  <-- 0x80003070
       0     3650        M 0x80001798 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003070]
       0     3658        M 0x800017a0 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3659        M 0x800017a4 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3660        M 0x800017a8 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x8000179c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3661        M 0x800017ac mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3670        M 0x800017b0 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3671        M 0x800017b4 mv      s7, a0                 #; a0  = 0x800016a0, (wrb) s7  <-- 0x800016a0
       0     3672        M 0x800017b8 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800018a8
       0     3694        M 0x800018ac auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028ac
       0     3695        M 0x800018a8 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3696        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3705        M 0x800018b0 addi    a0, a0, 1996           #; a0  = 0x800028ac, (wrb) a0  <-- 0x80003078
       0     3708        M 0x800018b4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003078]
       0     3717        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3718        M 0x800018b8 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3720        M                                           #; (acc) t3  <-- 0x00051e63
       0     3721        M 0x800018bc bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018d8
       0     3733        M 0x800018d8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028d8
       0     3734        M 0x800018dc addi    a0, a0, 1960           #; a0  = 0x800028d8, (wrb) a0  <-- 0x80003080
       0     3746        M 0x800018e4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028e4
       0     3747        M 0x800018e8 addi    a0, a0, 1956           #; a0  = 0x800028e4, (wrb) a0  <-- 0x80003088
                         M 0x800018e0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003080]
       0     3750        M 0x800018ec fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003088]
       0     3756        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3758        M 0x800018f0 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3759        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3760        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x800018f4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3762        M                                           #; (acc) a0  <-- 0x00b57533
       0     3763        M 0x800018f8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3764        M 0x800018fc bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800019f8
       0     3780        M 0x800019f8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3781        M 0x800019fc li      s8, 6                  #; (wrb) s8  <-- 6
       0     3792        M 0x80001a00 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a08
       0     3793        M 0x80001a08 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3796        M 0x80001a0c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3797        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3804        M 0x80001a10 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a48
       0     3827        M 0x80001a48 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3828        M 0x80001a4c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3839        M 0x80001a50 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a50
       0     3840        M 0x80001a54 addi    a1, a1, 1288           #; a1  = 0x80002a50, (wrb) a1  <-- 0x80002f58
       0     3841        M 0x80001a58 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002f58, (wrb) a0  <-- 0x80002f88
       0     3844        M 0x80001a5c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f88]
       0     3852        M 0x80001a60 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3853        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3856        M 0x80001a64 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3857        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3858        M 0x80001a68 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3861        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3862        M 0x80001a6c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3863        M 0x80001a70 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a70
       0     3864        M 0x80001a74 addi    a0, a0, 1568           #; a0  = 0x80002a70, (wrb) a0  <-- 0x80003090
       0     3865        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3867        M 0x80001a78 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003090]
       0     3868        M 0x80001a7c fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3876        M 0x80001a80 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     3877        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3878        M 0x80001a84 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3881        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3882        M 0x80001a88 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3885        M 0x80001a8c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001aac
       0     3899        M 0x80001aac flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3910        M 0x80001ab0 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001ac4
       0     3923        M 0x80001ac8 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001ac4 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3924        M 0x80001acc li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     3934        M 0x80001ad0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3935        M 0x80001ad4 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3936        M 0x80001ad8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3937        M 0x80001adc sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3946        M 0x80001ae0 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3947        M 0x80001ae4 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3948        M 0x80001ae8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3949        M 0x80001aec li      a7, 9                  #; (wrb) a7  <-- 9
       0     3958        M 0x80001af0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3959        M 0x80001af4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3960        M 0x80001af8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3963        M                                           #; (acc) a0  <-- 0x00355513
       0     3964        M 0x80001afc srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3970        M 0x80001b00 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3973        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3974        M 0x80001b04 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3975        M 0x80001b08 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3976        M 0x80001b0c add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3982        M 0x80001b10 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3983        M 0x80001b14 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3984        M 0x80001b18 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3985        M 0x80001b1c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3997        M 0x80001b20 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3998        M 0x80001b24 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3999        M 0x80001b28 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     4000        M 0x80001b2c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     4009        M 0x80001b30 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     4010        M 0x80001b34 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4011        M 0x80001b38 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4012        M 0x80001b3c addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     4021        M 0x80001b40 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     4022        M 0x80001b44 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4023        M 0x80001b48 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4024        M 0x80001b4c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4033        M 0x80001b50 li      a1, 31                 #; (wrb) a1  <-- 31
       0     4034        M 0x80001b54 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4035        M 0x80001b58 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     4036        M 0x80001b5c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4045        M 0x80001b60 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b68
       0     4046        M 0x80001b68 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4047        M 0x80001b6c li      a1, 48                 #; (wrb) a1  <-- 48
       0     4057        M 0x80001b70 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b70
       0     4058        M 0x80001b74 jalr    ra, ra, -1560          #; ra  = 0x80000b70, (wrb) ra  <-- 0x80001b78, goto 0x80000558
       0     4080        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4081        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     4092        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4115        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4127        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4128        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4129        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4130        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4150        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     4151        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     4162        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     4163        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     4164        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4165        M 0x800005ec ret                            #; ra  = 0x80001b78, goto 0x80001b78
       0     4176        M 0x80001b78 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4177        M 0x80001b7c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4179        M 0x80001b80 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4180        M 0x80001b84 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4181        M 0x80001b88 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4182        M 0x80001b8c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4191        M 0x80001b90 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4192        M 0x80001b94 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b7c
       0     4193        M 0x80001b7c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4194        M 0x80001b80 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4195        M 0x80001b84 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4196        M 0x80001b88 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4197        M 0x80001b8c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4198        M 0x80001b90 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4199        M 0x80001b94 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b7c
       0     4200        M 0x80001b7c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4201        M 0x80001b80 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4202        M 0x80001b84 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4203        M 0x80001b88 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4204        M 0x80001b8c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4205        M 0x80001b90 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4206        M 0x80001b94 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b7c
       0     4207        M 0x80001b7c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4208        M 0x80001b80 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4209        M 0x80001b84 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4210        M 0x80001b88 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4211        M 0x80001b8c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4212        M 0x80001b90 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4213        M 0x80001b94 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b7c
       0     4214        M 0x80001b7c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4215        M 0x80001b80 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4216        M 0x80001b84 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4217        M 0x80001b88 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4218        M 0x80001b8c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4219        M 0x80001b90 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4220        M 0x80001b94 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4221        M 0x80001b98 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4222        M 0x80001b9c j       pc + 0x28              #; goto 0x80001bc4
       0     4233        M 0x80001bc4 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4234        M 0x80001bc8 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4235        M 0x80001bcc addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4245        M 0x80001bd0 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4246        M 0x80001bd4 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4247        M 0x80001bd8 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4248        M 0x80001bdc j       pc + 0x8               #; goto 0x80001be4
       0     4257        M 0x80001be4 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4258        M 0x80001be8 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4259        M 0x80001bec bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4269        M 0x80001bf0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4271        M 0x80001bf8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001bf4 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4272        M 0x80001bfc addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4281        M 0x80001c00 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4282        M 0x80001c04 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4283        M 0x80001c08 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4284        M 0x80001c0c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4293        M 0x80001c10 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4296        M                                           #; (acc) a5  <-- 0x01f55793
       0     4297        M 0x80001c14 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4298        M 0x80001c18 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4299        M 0x80001c1c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4305        M 0x80001c20 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4308        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4309        M 0x80001c24 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4310        M 0x80001c28 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4311        M 0x80001c2c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4317        M 0x80001c30 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4318        M 0x80001c34 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4319        M 0x80001c38 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4320        M 0x80001c3c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4329        M 0x80001c40 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4330        M 0x80001c44 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4331        M 0x80001c48 j       pc + 0x8               #; goto 0x80001c50
       0     4343        M 0x80001c50 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4344        M 0x80001c54 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4345        M 0x80001c58 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001cc4
       0     4366        M 0x80001cc4 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4367        M 0x80001cc8 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4368        M 0x80001ccc beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ce4
       0     4389        M 0x80001ce4 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4390        M 0x80001ce8 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4391        M 0x80001cec andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4401        M 0x80001cf0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d1c
       0     4424        M 0x80001d1c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4436        M 0x80001d20 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4437        M 0x80001d24 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4438        M 0x80001d28 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4439        M 0x80001d2c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4448        M 0x80001d30 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4449        M 0x80001d34 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d60
       0     4471        M 0x80001d60 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4472        M 0x80001d64 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4473        M 0x80001d68 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4474        M 0x80001d6c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4483        M 0x80001d70 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4484        M 0x80001d74 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4485        M 0x80001d78 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4486        M 0x80001d7c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4487        M                                           #; (lsu) a0  <-- 48
       0     4495        M 0x80001d80 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4496        M 0x80001d84 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4497        M 0x80001d88 jalr    s7                     #; s7  = 0x800016a0, (wrb) ra  <-- 0x80001d8c, goto 0x800016a0
       0     4509        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4510        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4511        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4512        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4513        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     4514        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     4515        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4516        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     4517        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4528        M                                           #; (lsu) a4  <-- 8
       0     4529        M 0x800016c0 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4530        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 9 ~~> Word[0x8000311c]
       0     4531        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 8, (wrb) a4  <-- 0x80003124
       0     4532        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x80003124, 48 ~~> Byte[0x8000316c]
       0     4533        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4554        M                                           #; (lsu) a4  <-- 9
       0     4555        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4556        M 0x800016d8 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4557        M 0x800016dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4558        M 0x800016e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4559        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4560        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     4563        M 0x80001748 ret                            #; ra  = 0x80001d8c, goto 0x80001d8c
       0     4568        M 0x80001d8c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4571        M 0x80001d90 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4572        M 0x80001d94 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d6c
       0     4574        M 0x80001d6c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4577        M 0x80001d70 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4578        M 0x80001d74 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4579        M 0x80001d78 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4580        M 0x80001d7c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4581        M 0x80001d80 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4582        M 0x80001d84 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4583        M 0x80001d88 jalr    s7                     #; s7  = 0x800016a0, (wrb) ra  <-- 0x80001d8c, goto 0x800016a0
       0     4584        M                                           #; (lsu) a0  <-- 46
       0     4586        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4587        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4588        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4589        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4590        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     4591        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     4592        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4593        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     4594        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4605        M                                           #; (lsu) a4  <-- 9
       0     4606        M 0x800016c0 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4607        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 10 ~~> Word[0x8000311c]
       0     4608        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 9, (wrb) a4  <-- 0x80003125
       0     4609        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x80003125, 46 ~~> Byte[0x8000316d]
       0     4610        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4631        M                                           #; (lsu) a4  <-- 10
       0     4632        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4633        M 0x800016d8 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4634        M 0x800016dc addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4635        M 0x800016e0 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4636        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4637        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     4640        M 0x80001748 ret                            #; ra  = 0x80001d8c, goto 0x80001d8c
       0     4645        M 0x80001d8c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4648        M 0x80001d90 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4649        M 0x80001d94 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d6c
       0     4651        M 0x80001d6c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4654        M 0x80001d70 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4655        M 0x80001d74 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4656        M 0x80001d78 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4657        M 0x80001d7c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4658        M 0x80001d80 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4659        M 0x80001d84 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4660        M 0x80001d88 jalr    s7                     #; s7  = 0x800016a0, (wrb) ra  <-- 0x80001d8c, goto 0x800016a0
       0     4661        M                                           #; (lsu) a0  <-- 48
       0     4663        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4664        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4665        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4666        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4667        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     4668        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     4669        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4670        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     4671        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4682        M                                           #; (lsu) a4  <-- 10
       0     4683        M 0x800016c0 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4684        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 11 ~~> Word[0x8000311c]
       0     4685        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 10, (wrb) a4  <-- 0x80003126
       0     4686        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x80003126, 48 ~~> Byte[0x8000316e]
       0     4687        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4708        M                                           #; (lsu) a4  <-- 11
       0     4709        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4710        M 0x800016d8 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4711        M 0x800016dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4712        M 0x800016e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4713        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4714        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     4717        M 0x80001748 ret                            #; ra  = 0x80001d8c, goto 0x80001d8c
       0     4722        M 0x80001d8c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4725        M 0x80001d90 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4726        M 0x80001d94 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d6c
       0     4728        M 0x80001d6c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4731        M 0x80001d70 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4732        M 0x80001d74 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4733        M 0x80001d78 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4734        M 0x80001d7c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4735        M 0x80001d80 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4736        M 0x80001d84 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4737        M 0x80001d88 jalr    s7                     #; s7  = 0x800016a0, (wrb) ra  <-- 0x80001d8c, goto 0x800016a0
       0     4738        M                                           #; (lsu) a0  <-- 48
       0     4740        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4741        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4742        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4743        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4744        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     4745        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     4746        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4747        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     4748        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4759        M                                           #; (lsu) a4  <-- 11
       0     4760        M 0x800016c0 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4761        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 12 ~~> Word[0x8000311c]
       0     4762        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 11, (wrb) a4  <-- 0x80003127
       0     4763        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x80003127, 48 ~~> Byte[0x8000316f]
       0     4764        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4785        M                                           #; (lsu) a4  <-- 12
       0     4786        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4787        M 0x800016d8 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4788        M 0x800016dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4789        M 0x800016e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4790        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4791        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     4794        M 0x80001748 ret                            #; ra  = 0x80001d8c, goto 0x80001d8c
       0     4799        M 0x80001d8c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4802        M 0x80001d90 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4803        M 0x80001d94 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d6c
       0     4805        M 0x80001d6c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4808        M 0x80001d70 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4809        M 0x80001d74 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4810        M 0x80001d78 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4811        M 0x80001d7c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4812        M 0x80001d80 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4813        M 0x80001d84 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4814        M 0x80001d88 jalr    s7                     #; s7  = 0x800016a0, (wrb) ra  <-- 0x80001d8c, goto 0x800016a0
       0     4815        M                                           #; (lsu) a0  <-- 48
       0     4817        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4818        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4819        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4820        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4821        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     4822        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     4823        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4824        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     4825        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4836        M                                           #; (lsu) a4  <-- 12
       0     4837        M 0x800016c0 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4838        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 13 ~~> Word[0x8000311c]
       0     4839        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 12, (wrb) a4  <-- 0x80003128
       0     4840        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x80003128, 48 ~~> Byte[0x80003170]
       0     4841        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4862        M                                           #; (lsu) a4  <-- 13
       0     4863        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4864        M 0x800016d8 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4865        M 0x800016dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4866        M 0x800016e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4867        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4868        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     4871        M 0x80001748 ret                            #; ra  = 0x80001d8c, goto 0x80001d8c
       0     4876        M 0x80001d8c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4879        M 0x80001d90 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4880        M 0x80001d94 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d6c
       0     4882        M 0x80001d6c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4885        M 0x80001d70 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4886        M 0x80001d74 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4887        M 0x80001d78 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4888        M 0x80001d7c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4889        M 0x80001d80 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4890        M 0x80001d84 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4891        M 0x80001d88 jalr    s7                     #; s7  = 0x800016a0, (wrb) ra  <-- 0x80001d8c, goto 0x800016a0
       0     4892        M                                           #; (lsu) a0  <-- 48
       0     4894        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4895        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4896        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4897        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4898        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     4899        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     4900        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4901        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     4902        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4913        M                                           #; (lsu) a4  <-- 13
       0     4914        M 0x800016c0 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4915        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 14 ~~> Word[0x8000311c]
       0     4916        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 13, (wrb) a4  <-- 0x80003129
       0     4917        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x80003129, 48 ~~> Byte[0x80003171]
       0     4918        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4939        M                                           #; (lsu) a4  <-- 14
       0     4940        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4941        M 0x800016d8 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4942        M 0x800016dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4943        M 0x800016e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4944        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4945        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     4948        M 0x80001748 ret                            #; ra  = 0x80001d8c, goto 0x80001d8c
       0     4953        M 0x80001d8c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4956        M 0x80001d90 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4957        M 0x80001d94 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d6c
       0     4959        M 0x80001d6c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4962        M 0x80001d70 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4963        M 0x80001d74 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4964        M 0x80001d78 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4965        M 0x80001d7c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4966        M 0x80001d80 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4967        M 0x80001d84 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4968        M 0x80001d88 jalr    s7                     #; s7  = 0x800016a0, (wrb) ra  <-- 0x80001d8c, goto 0x800016a0
       0     4969        M                                           #; (lsu) a0  <-- 48
       0     4971        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4972        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4973        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4974        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4975        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     4976        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     4977        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4978        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     4979        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     4990        M                                           #; (lsu) a4  <-- 14
       0     4991        M 0x800016c0 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4992        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 15 ~~> Word[0x8000311c]
       0     4993        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 14, (wrb) a4  <-- 0x8000312a
       0     4994        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x8000312a, 48 ~~> Byte[0x80003172]
       0     4995        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     5016        M                                           #; (lsu) a4  <-- 15
       0     5017        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5018        M 0x800016d8 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5019        M 0x800016dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5020        M 0x800016e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5021        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5022        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     5025        M 0x80001748 ret                            #; ra  = 0x80001d8c, goto 0x80001d8c
       0     5030        M 0x80001d8c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5033        M 0x80001d90 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5034        M 0x80001d94 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d6c
       0     5036        M 0x80001d6c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     5039        M 0x80001d70 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     5040        M 0x80001d74 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5041        M 0x80001d78 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5042        M 0x80001d7c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5043        M 0x80001d80 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5044        M 0x80001d84 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5045        M 0x80001d88 jalr    s7                     #; s7  = 0x800016a0, (wrb) ra  <-- 0x80001d8c, goto 0x800016a0
       0     5046        M                                           #; (lsu) a0  <-- 48
       0     5048        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5049        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5050        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5051        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5052        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     5053        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     5054        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5055        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     5056        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     5067        M                                           #; (lsu) a4  <-- 15
       0     5068        M 0x800016c0 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5069        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 16 ~~> Word[0x8000311c]
       0     5070        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 15, (wrb) a4  <-- 0x8000312b
       0     5071        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x8000312b, 48 ~~> Byte[0x80003173]
       0     5072        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     5093        M                                           #; (lsu) a4  <-- 16
       0     5094        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5095        M 0x800016d8 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5096        M 0x800016dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5097        M 0x800016e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5098        M 0x800016e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5099        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001748
       0     5102        M 0x80001748 ret                            #; ra  = 0x80001d8c, goto 0x80001d8c
       0     5107        M 0x80001d8c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5110        M 0x80001d90 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5111        M 0x80001d94 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5112        M 0x80001d98 j       pc + 0x8               #; goto 0x80001da0
       0     5124        M 0x80001da0 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5125        M 0x80001da4 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5126        M 0x80001da8 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5127        M 0x80001dac xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5136        M 0x80001db0 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5137        M 0x80001db4 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001de4
       0     5159        M 0x80001de4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5160        M 0x80001de8 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5163        M 0x80001dec fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5164        M                                           #; (f:lsu) fs2  <-- 0.0
       0     5173        M 0x80001df8 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001df0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
       0     5174        M 0x80001df4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5175        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5177        M                                           #; (lsu) s10 <-- 0x80002d8e
       0     5178        M 0x80001dfc lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5181        M                                           #; (lsu) s9  <-- 8
       0     5183        M 0x80001e00 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5186        M                                           #; (lsu) s8  <-- 16
       0     5187        M 0x80001e04 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5190        M                                           #; (lsu) s7  <-- 0
       0     5191        M 0x80001e08 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5194        M                                           #; (lsu) s6  <-- 0
       0     5195        M 0x80001e0c lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5198        M                                           #; (lsu) s5  <-- -1
       0     5199        M 0x80001e10 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5202        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5203        M 0x80001e14 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5206        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5207        M 0x80001e18 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5210        M                                           #; (lsu) s2  <-- 0x800016a0
       0     5211        M 0x80001e1c lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5214        M                                           #; (lsu) s1  <-- 8
       0     5215        M 0x80001e20 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5218        M                                           #; (lsu) s0  <-- 0
       0     5219        M 0x80001e24 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5220        M 0x80001e28 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5222        M                                           #; (lsu) ra  <-- 0x80000dd0
       0     5223        M 0x80001e2c ret                            #; ra  = 0x80000dd0, goto 0x80000dd0
       0     5226        M 0x80000dd0 j       pc + 0x7c0             #; goto 0x80001590
       0     5238        M 0x80001590 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5239        M 0x80001594 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5240        M 0x80001598 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5241        M 0x8000159c addi    s0, s10, 1             #; s10 = 0x80002d8e, (wrb) s0  <-- 0x80002d8f
       0     5250        M 0x800015a0 j       pc - 0xa74             #; goto 0x80000b2c
       0     5253        M 0x80000b2c addi    s10, s0, 2             #; s0  = 0x80002d8f, (wrb) s10 <-- 0x80002d91
       0     5256        M 0x80000b30 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5257        M 0x80000b34 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5258        M 0x80000b38 lbu     a0, 0(s0)              #; s0  = 0x80002d8f, a0  <~~ Byte[0x80002d8f]
       0     5269        M                                           #; (lsu) a0  <-- 10
       0     5270        M 0x80000b3c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5271        M 0x80000b40 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5272        M 0x80000b44 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5273        M 0x80000b48 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5274        M 0x80000b4c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5275        M 0x80000b50 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5276        M 0x80000b54 jalr    s2                     #; s2  = 0x800016a0, (wrb) ra  <-- 0x80000b58, goto 0x800016a0
       0     5280        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5281        M 0x800016a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5282        M 0x800016a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5283        M 0x800016ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5284        M 0x800016b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036b0
       0     5285        M 0x800016b4 addi    a3, a3, -1428          #; a3  = 0x800036b0, (wrb) a3  <-- 0x8000311c
       0     5286        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5287        M 0x800016b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000311c, (wrb) a1  <-- 0x8000311c
       0     5288        M 0x800016bc lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     5299        M                                           #; (lsu) a4  <-- 16
       0     5300        M 0x800016c0 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5301        M 0x800016c4 sw      a5, 0(a1)              #; a1  = 0x8000311c, 17 ~~> Word[0x8000311c]
       0     5302        M 0x800016c8 add     a4, a1, a4             #; a1  = 0x8000311c, a4  = 16, (wrb) a4  <-- 0x8000312c
       0     5303        M 0x800016cc sb      a0, 72(a4)             #; a4  = 0x8000312c, 10 ~~> Byte[0x80003174]
       0     5304        M 0x800016d0 lw      a4, 0(a1)              #; a1  = 0x8000311c, a4  <~~ Word[0x8000311c]
       0     5325        M                                           #; (lsu) a4  <-- 17
       0     5326        M 0x800016d4 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5327        M 0x800016d8 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5328        M 0x800016dc addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5329        M 0x800016e0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5330        M 0x800016e4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5331        M 0x800016e8 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5332        M 0x800016ec add     a0, a3, a2             #; a3  = 0x8000311c, a2  = 0, (wrb) a0  <-- 0x8000311c
       0     5333        M 0x800016f0 addi    a2, a0, 72             #; a0  = 0x8000311c, (wrb) a2  <-- 0x80003164
       0     5334        M 0x800016f4 sw      zero, 12(a0)           #; a0  = 0x8000311c, 0 ~~> Word[0x80003128]
       0     5335        M 0x800016f8 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5336        M 0x800016fc sw      a3, 8(a0)              #; a0  = 0x8000311c, 64 ~~> Word[0x80003124]
       0     5345        M 0x80001700 sw      zero, 20(a0)           #; a0  = 0x8000311c, 0 ~~> Word[0x80003130]
       0     5346        M 0x80001704 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5347        M 0x80001708 sw      a3, 16(a0)             #; a0  = 0x8000311c, 1 ~~> Word[0x8000312c]
       0     5348        M 0x8000170c sw      zero, 28(a0)           #; a0  = 0x8000311c, 0 ~~> Word[0x80003138]
       0     5357        M 0x80001710 sw      a2, 24(a0)             #; a0  = 0x8000311c, 0x80003164 ~~> Word[0x80003134]
       0     5360        M 0x80001714 lw      a2, 0(a1)              #; a1  = 0x8000311c, a2  <~~ Word[0x8000311c]
       0     5361        M 0x80001718 addi    a3, a0, 8              #; a0  = 0x8000311c, (wrb) a3  <-- 0x80003124
       0     5362        M 0x8000171c sw      zero, 36(a0)           #; a0  = 0x8000311c, 0 ~~> Word[0x80003140]
       0     5382        M                                           #; (lsu) a2  <-- 17
       0     5383        M 0x80001720 sw      a2, 32(a0)             #; a0  = 0x8000311c, 17 ~~> Word[0x8000313c]
       0     5384        M 0x80001724 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003724
       0     5385        M 0x80001728 addi    a0, a0, -1892          #; a0  = 0x80003724, (wrb) a0  <-- 0x80002fc0
       0     5386        M 0x8000172c sw      a3, 0(a0)              #; a0  = 0x80002fc0, 0x80003124 ~~> Word[0x80002fc0]
       0     5387        M 0x80001730 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003730
       0     5388        M 0x80001734 addi    a0, a0, -1840          #; a0  = 0x80003730, (wrb) a0  <-- 0x80003000
       0     5389        M 0x80001738 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5412        M                                           #; (lsu) a2  <-- 0
       0     5413        M 0x8000173c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001738
       0     5414        M 0x80001738 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5425        M                                           #; (lsu) a2  <-- 0
       0     5426        M 0x8000173c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001738
       0     5427        M 0x80001738 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5438        M                                           #; (lsu) a2  <-- 0
       0     5439        M 0x8000173c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001738
       0     5440        M 0x80001738 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5451        M                                           #; (lsu) a2  <-- 0
       0     5452        M 0x8000173c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001738
       0     5453        M 0x80001738 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5464        M                                           #; (lsu) a2  <-- 0
       0     5465        M 0x8000173c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001738
       0     5466        M 0x80001738 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5477        M                                           #; (lsu) a2  <-- 0
       0     5478        M 0x8000173c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001738
       0     5479        M 0x80001738 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5490        M                                           #; (lsu) a2  <-- 0
       0     5491        M 0x8000173c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001738
       0     5492        M 0x80001738 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5503        M                                           #; (lsu) a2  <-- 0
       0     5504        M 0x8000173c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001738
       0     5505        M 0x80001738 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
       0     5516        M                                           #; (lsu) a2  <-- 1
       0     5517        M 0x8000173c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5520        M 0x80001740 sw      zero, 0(a0)            #; a0  = 0x80003000, 0 ~~> Word[0x80003000]
       0     5521        M 0x80001744 sw      zero, 0(a1)            #; a1  = 0x8000311c, 0 ~~> Word[0x8000311c]
       0     5522        M 0x80001748 ret                            #; ra  = 0x80000b58, goto 0x80000b58
       0     5525        M 0x80000b58 addi    s0, s0, 1              #; s0  = 0x80002d8f, (wrb) s0  <-- 0x80002d90
       0     5526        M 0x80000b5c addi    s10, s10, 1            #; s10 = 0x80002d91, (wrb) s10 <-- 0x80002d92
       0     5528        M 0x80000b60 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5529        M 0x80000b64 lbu     a0, 0(s0)              #; s0  = 0x80002d90, a0  <~~ Byte[0x80002d90]
       0     5543        M                                           #; (lsu) a0  <-- 0
       0     5544        M 0x80000b68 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5545        M 0x80000b6c j       pc + 0xad8             #; goto 0x80001644
       0     5557        M 0x80001644 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5558        M 0x80001648 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001650
       0     5569        M 0x80001650 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5570        M 0x80001654 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5571        M 0x80001658 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5572        M 0x8000165c jalr    s2                     #; s2  = 0x800016a0, (wrb) ra  <-- 0x80001660, goto 0x800016a0
       0     5583        M 0x800016a0 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001748
       0     5588        M 0x80001748 ret                            #; ra  = 0x80001660, goto 0x80001660
       0     5589        M 0x80001660 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5590        M 0x80001664 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5593        M                                           #; (lsu) s11 <-- 0
       0     5594        M 0x80001668 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5597        M                                           #; (lsu) s10 <-- 0
       0     5598        M 0x8000166c lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5601        M                                           #; (lsu) s9  <-- 0
       0     5603        M 0x80001670 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5606        M                                           #; (lsu) s8  <-- 0
       0     5607        M 0x80001674 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5610        M                                           #; (lsu) s7  <-- 0
       0     5611        M 0x80001678 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5614        M                                           #; (lsu) s6  <-- 0
       0     5615        M 0x8000167c lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5618        M                                           #; (lsu) s5  <-- 0
       0     5619        M 0x80001680 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5622        M                                           #; (lsu) s4  <-- 0
       0     5623        M 0x80001684 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5626        M                                           #; (lsu) s3  <-- 0
       0     5627        M 0x80001688 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5630        M                                           #; (lsu) s2  <-- 0
       0     5631        M 0x8000168c lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5634        M                                           #; (lsu) s1  <-- 0
       0     5635        M 0x80001690 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5638        M                                           #; (lsu) s0  <-- 0x00100000
       0     5639        M 0x80001694 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5640        M 0x80001698 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5642        M                                           #; (lsu) ra  <-- 0x80000a9c
       0     5643        M 0x8000169c ret                            #; ra  = 0x80000a9c, goto 0x80000a9c
       0     5646        M 0x80000a9c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5649        M 0x80000aa0 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5650        M                                           #; (lsu) ra  <-- 0x80000a28
       0     5651        M 0x80000aa4 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     5654        M 0x80000a28 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a28
       0     5655        M 0x80000a2c addi    a0, a0, 1600           #; a0  = 0x80002a28, (wrb) a0  <-- 0x80003068
       0     5659        M 0x80000a30 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003068]
       0     5660        M 0x80000a3c lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0     5668        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5669        M 0x80000a34 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
       0     5670        M                                           #; (lsu) s0  <-- 0
       0     5671        M 0x80000a40 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c], (acc) ra  <-- 0x01c12083
                         M 0x80000a38 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     5672        M 0x80000a44 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0     5674        M                                           #; (lsu) ra  <-- 0x80002b00
       0     5675        M 0x80000a48 ret                            #; ra  = 0x80002b00, goto 0x80002b00
       0     5687        M 0x80002b00 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5688        M 0x80002b04 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b04
       0     5689        M 0x80002b08 jalr    ra, ra, 524            #; ra  = 0x80002b04, (wrb) ra  <-- 0x80002b0c, goto 0x80002d10
       0     5710        M 0x80002d10 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5711        M 0x80002d14 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b0c ~~> Word[0x0011ff5c]
       0     5712        M 0x80002d18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d18
       0     5713        M 0x80002d1c jalr    ra, ra, -1264          #; ra  = 0x80002d18, (wrb) ra  <-- 0x80002d20, goto 0x80002828
       0     5724        M 0x80002828 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5725        M 0x8000282c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5727        M 0x80002830 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5730        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5731        M 0x80002834 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5734        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5735        M 0x80002838 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5736        M 0x8000283c ret                            #; ra  = 0x80002d20, goto 0x80002d20
       0     5738        M                                           #; (lsu) a0  <-- 0x00120190
       0     5739        M 0x80002d20 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5749        M                                           #; (lsu) a0  <-- 0
       0     5750        M 0x80002d24 mv      zero, a0               #; a0  = 0
       0     5751        M 0x80002d28 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5752        M 0x80002d2c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5754        M                                           #; (lsu) ra  <-- 0x80002b0c
       0     5755        M 0x80002d30 ret                            #; ra  = 0x80002b0c, goto 0x80002b0c
       0     5769        M 0x80002b0c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5773        M 0x80002b10 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b10
       0     5774        M 0x80002b14 jalr    ra, ra, 556            #; ra  = 0x80002b10, (wrb) ra  <-- 0x80002b18, goto 0x80002d3c
       0     5775        M 0x80002d3c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5776        M 0x80002d40 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5777        M 0x80002d44 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b18 ~~> Word[0x0011ff5c]
       0     5778        M 0x80002d48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d48
       0     5779        M 0x80002d4c jalr    ra, ra, -1344          #; ra  = 0x80002d48, (wrb) ra  <-- 0x80002d50, goto 0x80002808
       0     5790        M 0x80002808 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5791        M 0x8000280c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5794        M 0x80002810 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5797        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5798        M 0x80002814 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5801        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5802        M 0x80002818 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5803        M 0x8000281c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5805        M                                           #; (lsu) a0  <-- 0
       0     5806        M 0x80002820 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5807        M 0x80002824 ret                            #; ra  = 0x80002d50, goto 0x80002d50
       0     5808        M 0x80002d50 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5811        M                                           #; (lsu) t0  <-- 0
       0     5812        M 0x80002d54 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5813        M 0x80002d58 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5814        M 0x80002d5c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5815        M                                           #; (lsu) ra  <-- 0x80002b18
       0     5819        M 0x80002d60 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5820        M 0x80002d64 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5821        M 0x80002d68 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d68
       0     5822        M 0x80002d6c addi    t1, t1, 600            #; t1  = 0x80002d68, (wrb) t1  <-- 0x80002fc0
       0     5830        M 0x80002d70 sw      t0, 0(t1)              #; t1  = 0x80002fc0, 1 ~~> Word[0x80002fc0]
       0     5831        M 0x80002d74 ret                            #; ra  = 0x80002b18, goto 0x80002b18
       0     5845        M 0x80002b18 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5845):
snitch_loads                                   143
snitch_stores                                  143
fpss_stores                                     24
fpss_loads                                      41
snitch_avg_load_latency                    11.8951
snitch_occupancy                            0.2455
snitch_fseq_rel_offloads                    0.0988
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.4186
fpss_avg_load_latency                       4.3171
fpss_occupancy                              0.0269
fpss_fpu_occupancy                          0.0147
fpss_fpu_rel_occupancy                      0.5478
cycles                                        5834
total_ipc                                   0.2724
