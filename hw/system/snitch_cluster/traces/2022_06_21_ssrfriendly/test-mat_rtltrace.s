       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002c20
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002c20, (wrb) ra  <-- 4120, goto 0x80002c20
       0      269        M 0x80002c20 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003c20
       0      270        M 0x80002c24 addi    gp, gp, -280           #; gp  = 0x80003c20, (wrb) gp  <-- 0x80003b08
       0      271        M 0x80002c28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c28
       0      272        M 0x80002c2c jalr    ra, ra, 964            #; ra  = 0x80002c28, (wrb) ra  <-- 0x80002c30, goto 0x80002fec
       0      292        M 0x80002fec mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002ff0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002ff4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002ff8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002ffc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80003000 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80003004 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80003008 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x8000300c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80003010 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80003014 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80003018 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x8000301c ret                            #; ra  = 0x80002c30, goto 0x80002c30
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002c30 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002c34 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002c38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c38
       0      508        M 0x80002c3c jalr    ra, ra, 1036           #; ra  = 0x80002c38, (wrb) ra  <-- 0x80002c40, goto 0x80003044
       0      523        M 0x80003044 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80003048 ret                            #; ra  = 0x80002c40, goto 0x80002c40
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002c40 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002c44 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002c48 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x80002c4c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002c50 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002c54 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002c54
       0      551        M 0x80002c58 addi    t0, t0, 1924           #; t0  = 0x80002c54, (wrb) t0  <-- 0x800033d8
       0      552        M 0x80002c5c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c5c
       0      562        M 0x80002c60 addi    t1, t1, 1920           #; t1  = 0x80002c5c, (wrb) t1  <-- 0x800033dc
       0      563        M 0x80002c64 bge     t0, t1, pc + 16        #; t0  = 0x800033d8, t1  = 0x800033dc, not taken
       0      564        M 0x80002c68 sw      zero, 0(t0)            #; t0  = 0x800033d8, 0 ~~> Word[0x800033d8]
       0      565        M 0x80002c6c addi    t0, t0, 4              #; t0  = 0x800033d8, (wrb) t0  <-- 0x800033dc
       0      573        M 0x80002c70 blt     t0, t1, pc - 8         #; t0  = 0x800033dc, t1  = 0x800033dc, not taken
       0      574        M 0x80002c74 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002c78 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x80002c7c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002c80 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002c84 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002c88 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x80002c8c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002c90 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002c94 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002c98 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x80002c9c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002ca0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002ca4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002ca8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002cac fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002cb0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002cb4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002cb8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002cbc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002cc0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002cc4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002cc8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002ccc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002cd0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002cd4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002cd8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002cdc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002ce0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002ce4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002ce8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002cec fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002cf0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002cf4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002cf8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002cfc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002d00 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002d04 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002d08 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d08
       0      684        M 0x80002d0c lw      t0, 900(t0)            #; t0  = 0x80002d08, t0  <~~ Word[0x8000308c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002d10 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002d14 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002d18 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002d18
       0      708        M 0x80002d1c lw      t2, 880(t2)            #; t2  = 0x80002d18, t2  <~~ Word[0x80003088]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002d20 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002d24 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002d28 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002d2c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002d30 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002d34 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002d38 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002d3c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002d40 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d40
       0      762        M 0x80002d44 addi    t0, t0, 1480           #; t0  = 0x80002d40, (wrb) t0  <-- 0x80003308
       0      763        M 0x80002d48 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d48
       0      764        M 0x80002d4c addi    t1, t1, 1472           #; t1  = 0x80002d48, (wrb) t1  <-- 0x80003308
       0      775        M 0x80002d50 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002d50
       0      776        M 0x80002d54 addi    t2, t2, 1464           #; t2  = 0x80002d50, (wrb) t2  <-- 0x80003308
       0      777        M 0x80002d58 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002d58
       0      778        M 0x80002d5c addi    t3, t3, 1472           #; t3  = 0x80002d58, (wrb) t3  <-- 0x80003318
       0      787        M 0x80002d60 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003308, (wrb) sp  <-- 0x80123278
       0      788        M 0x80002d64 sub     sp, sp, t1             #; sp  = 0x80123278, t1  = 0x80003308, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002d68 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003308, (wrb) sp  <-- 0x80123278
       0      790        M 0x80002d6c sub     sp, sp, t3             #; sp  = 0x80123278, t3  = 0x80003318, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002d70 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002d74 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002d78 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002d7c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002d80 bge     t0, t1, pc + 24        #; t0  = 0x80003308, t1  = 0x80003308, taken, goto 0x80002d98
       0      823        M 0x80002d98 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d98
       0      824        M 0x80002d9c addi    t0, t0, 1392           #; t0  = 0x80002d98, (wrb) t0  <-- 0x80003308
       0      835        M 0x80002da0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002da0
       0      836        M 0x80002da4 addi    t1, t1, 1400           #; t1  = 0x80002da0, (wrb) t1  <-- 0x80003318
       0      837        M 0x80002da8 bge     t0, t1, pc + 20        #; t0  = 0x80003308, t1  = 0x80003318, not taken
       0      838        M 0x80002dac sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002db0 addi    t0, t0, 4              #; t0  = 0x80003308, (wrb) t0  <-- 0x8000330c
       0      848        M 0x80002db4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002db8 blt     t0, t2, pc - 12        #; t0  = 0x8000330c, t2  = 0x80003308, not taken
       0      850        M 0x80002dbc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002dc0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002dc4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002dc8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002dcc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002dd0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002dd4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002dd4
       0      877        M 0x80002dd8 jalr    ra, ra, -1056          #; ra  = 0x80002dd4, (wrb) ra  <-- 0x80002ddc, goto 0x800029b4
       0      899        M 0x800029b4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x800029b8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x800029bc lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x800029c0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x800029c4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x800029c8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x800029cc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x800029d0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x800029d4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x800029d8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x800029dc csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x800029e0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x800029e4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x800029e8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x800029ec sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x800029f0 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x800029f4 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x800029f8 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x800029fc lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002a00 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002a04 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002a08 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002a0c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002a10 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002a14 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002a18 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002a1c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002a20 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002a24 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002a28 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002a2c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002a30 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002a34 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002a38 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002a3c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002a40 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x80002a44 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x80002a48 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x80002a4c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002a50 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x80002a54 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x80002a58 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x80002a5c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002a60 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x80002a64 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x80002a68 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x80002a6c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x80002a70 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x80002a74 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x80002a78 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x80002a7c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002a80 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x80002a84 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x80002a88 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x80002a8c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x80002a90 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x80002a94 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x80002a98 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x80002a9c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80002aa0 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80002aa4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80002aa8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003aa8
       0     1273        M 0x80002aac addi    a1, a1, -1740          #; a1  = 0x80003aa8, (wrb) a1  <-- 0x800033dc
       0     1282        M 0x80002ab0 add     a0, a0, a1             #; a0  = 0, a1  = 0x800033dc, (wrb) a0  <-- 0x800033dc
       0     1283        M 0x80002ab4 sw      zero, 0(a0)            #; a0  = 0x800033dc, 0 ~~> Word[0x800033dc]
       0     1284        M 0x80002ab8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x80002abc sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x80002ac0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x80002ac4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x80002ac8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x80002acc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x80002ad0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x80002ad4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x80002ad8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x80002adc sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x80002ae0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x80002ae4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x80002ae8 lw      a0, 0(a1)              #; a1  = 0x800033dc, a0  <~~ Word[0x800033dc]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x80002aec addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002af0 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002af4 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x80002af8 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x80002afc sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x80002b00 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x80002b04 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x80002b08 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x80002b0c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80002b10 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80002b14 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80002b18 ret                            #; ra  = 0x80002ddc, goto 0x80002ddc
       0     1406        M 0x80002ddc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x80002de0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x80002de4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x80002de8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x80002dec lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x80002df0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x80002df4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002df4
       0     1425        M 0x80002df8 addi    t0, t0, 60             #; t0  = 0x80002df4, (wrb) t0  <-- 0x80002e30
       0     1426        M 0x80002dfc csrw    mtvec, t0              #; t0  = 0x80002e30, (lsu) a4  <-- 4132
       0     1434        M 0x80002e00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e00
       0     1435        M 0x80002e04 jalr    ra, ra, 544            #; ra  = 0x80002e00, (wrb) ra  <-- 0x80002e08, goto 0x80003020
       0     1451        M 0x80003020 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x80003024 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e08 ~~> Word[0x0011ff5c]
       0     1453        M 0x80003028 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003028
       0     1454        M 0x8000302c jalr    ra, ra, -1260          #; ra  = 0x80003028, (wrb) ra  <-- 0x80003030, goto 0x80002b3c
       0     1472        M 0x80002b3c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x80002b40 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80002b44 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80002b48 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x80002b4c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x80002b50 ret                            #; ra  = 0x80003030, goto 0x80003030
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80003030 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80003034 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80003038 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x8000303c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x80002e08
       0     1533        M 0x80003040 ret                            #; ra  = 0x80002e08, goto 0x80002e08
       0     1537        M 0x80002e08 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000e08
       0     1538        M 0x80002e0c jalr    ra, ra, -1744          #; ra  = 0x80000e08, (wrb) ra  <-- 0x80002e10, goto 0x80000738
       0     1543        M 0x80000738 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1544        M 0x8000073c sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002e10 ~~> Word[0x0011ff5c]
       0     1546        M 0x80000740 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1547        M 0x80000744 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
       0     1548        M 0x80000748 sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
       0     1551        M 0x8000074c fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     1559        M 0x80000750 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1560        M 0x80000754 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1561        M 0x80000758 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1562        M 0x8000075c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1564        M                                           #; (lsu) a1  <-- 0
       0     1571        M 0x80000760 bnez    a1, pc + 360           #; a1  = 0, not taken
       0     1572        M 0x80000764 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1573        M 0x80000768 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1574        M 0x8000076c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1577        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1583        M 0x80000770 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1586        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1587        M 0x80000774 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1590        M                                           #; (lsu) s0  <-- 0x00100000
       0     1591        M 0x80000778 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1594        M                                           #; (lsu) a1  <-- 0x00100000
       0     1595        M 0x8000077c lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1596        M 0x80000780 addi    a2, s0, 240            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000f0
       0     1598        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1599        M 0x80000784 add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1600        M 0x80000788 bgeu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x001000f0, taken, goto 0x800007b4
       0     1624        M 0x800007b4 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1625        M 0x800007b8 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1626        M 0x800007bc mv      s0, a2                 #; a2  = 0x001000f0, (wrb) s0  <-- 0x001000f0
       0     1638        M 0x800007c0 addi    a2, s0, 336            #; s0  = 0x001000f0, (wrb) a2  <-- 0x00100240
       0     1639        M 0x800007c4 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x00100240, taken, goto 0x80000798
       0     1640        M 0x80000798 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100240 ~~> Word[0x0011ffc8]
       0     1641        M 0x8000079c mv      s1, s0                 #; s0  = 0x001000f0, (wrb) s1  <-- 0x001000f0
       0     1664        M 0x800007a0 mv      s0, a2                 #; a2  = 0x00100240, (wrb) s0  <-- 0x00100240
       0     1665        M 0x800007a4 addi    a2, s0, 280            #; s0  = 0x00100240, (wrb) a2  <-- 0x00100358
       0     1666        M 0x800007a8 bltu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x00100358, not taken
       0     1667        M 0x800007ac sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100358 ~~> Word[0x0011ffc8]
       0     1668        M 0x800007b0 j       pc + 0x28              #; goto 0x800007d8
       0     1680        M 0x800007d8 li      a1, 30                 #; (wrb) a1  <-- 30
       0     1681        M 0x800007dc mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1692        M 0x800007e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007e0
       0     1693        M 0x800007e4 jalr    ra, ra, -428           #; ra  = 0x800007e0, (wrb) ra  <-- 0x800007e8, goto 0x80000634
       0     1715        M 0x80000634 addi    a2, a1, -1             #; a1  = 30, (wrb) a2  <-- 29
       0     1716        M 0x80000638 slli    a5, a2, 3              #; a2  = 29, (wrb) a5  <-- 232
       0     1717        M 0x8000063c add     a4, a5, a0             #; a5  = 232, a0  = 0x00100000, (wrb) a4  <-- 0x001000e8
       0     1727        M 0x80000640 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
       0     1728        M 0x80000644 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     1729        M 0x80000648 bgeu    a4, a5, pc + 100       #; a4  = 0x001000e8, a5  = 232, taken, goto 0x800006ac
       0     1750        M 0x800006ac lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     1762        M 0x800006b0 addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
       0     1763        M 0x800006b4 sltu    a4, a4, a5             #; a4  = 0x001000e8, a5  = 0x00120001, (wrb) a4  <-- 1
       0     1764        M 0x800006b8 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     1765        M 0x800006bc beqz    a3, pc - 100           #; a3  = 1, not taken
       0     1777        M 0x800006c0 li      a3, 0                  #; (wrb) a3  <-- 0
       0     1778        M 0x800006c4 li      a4, 8                  #; (wrb) a4  <-- 8
       0     1779        M 0x800006c8 li      a5, 64                 #; (wrb) a5  <-- 64
       0     1780        M 0x800006cc scfgw   a2, a5                 #; a2  = 29, a5  = 64
       0     1789        M 0x800006d0 li      a2, 192                #; (wrb) a2  <-- 192
       0     1790        M 0x800006d4 scfgw   a4, a2                 #; a4  = 8, a2  = 192
       0     1791        M 0x800006d8 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1792        M 0x800006dc scfgw   zero, a2               #; a2  = 32
       0     1801        M 0x800006e0 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1803        M 0x800006e8 li      a0, 1                  #; (wrb) a0  <-- 1
                         M 0x800006e4 csrrsi  a0, ssr, 1             #; 
       0     1804        M 0x800006ec auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036ec
       0     1813        M 0x800006f0 addi    a2, a2, -980           #; a2  = 0x800036ec, (wrb) a2  <-- 0x80003318
       0     1815        M 0x800006f8 lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
       0     1816        M 0x800006fc addi    a2, a2, -819           #; a2  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
                         M 0x800006f4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003318]
       0     1825        M 0x80000700 li      a4, 20                 #; (wrb) a4  <-- 20
                         M                                           #; (f:lsu) ft3  <-- 3.141
       0     1826        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 0, a2  = 0xcccccccd
       0     1829        M                                           #; (acc) a5  <-- 0x0047d793
       0     1830        M 0x80000708 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     1831        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     1837        M 0x80000710 sub     a5, a0, a5             #; a0  = 1, a5  = 0, (wrb) a5  <-- 1
       0     1839        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     1840        M                                           #; (f:fpu) ft4  <-- 1.0
       0     1841        M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     1844        M                                           #; (f:fpu) ft4  <-- 3.141
       0     1845        M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     1846        M                                           #; (f:fpu) ft0  <-- 3.141
       0     1849        M 0x80000720 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
       0     1850        M 0x80000724 addi    a1, a1, -1             #; a1  = 30, (wrb) a1  <-- 29
       0     1851        M 0x80000728 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     1852        M 0x8000072c bnez    a1, pc - 40            #; a1  = 29, taken, goto 0x80000704
       0     1853        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 1, a2  = 0xcccccccd
       0     1856        M                                           #; (acc) a5  <-- 0x0047d793
       0     1857        M 0x80000708 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     1858        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     1861        M                                           #; (acc) a5  <-- 0x40f507b3
       0     1862        M 0x80000710 sub     a5, a0, a5             #; a0  = 2, a5  = 0, (wrb) a5  <-- 2
       0     1864        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     1865        M                                           #; (f:fpu) ft4  <-- 2.0
       0     1866        M 0x80000720 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     1867        M 0x80000724 addi    a1, a1, -1             #; a1  = 29, (wrb) a1  <-- 28
       0     1868        M 0x80000728 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     1869        M 0x8000072c bnez    a1, pc - 40            #; a1  = 28, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     1870        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 2, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     1871        M                                           #; (f:fpu) ft0  <-- 6.282
       0     1873        M                                           #; (acc) a5  <-- 0x0047d793
       0     1874        M 0x80000708 srli    a5, a5, 4              #; a5  = 1, (wrb) a5  <-- 0
       0     1875        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     1878        M                                           #; (acc) a5  <-- 0x40f507b3
       0     1879        M 0x80000710 sub     a5, a0, a5             #; a0  = 3, a5  = 0, (wrb) a5  <-- 3
       0     1881        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     1882        M                                           #; (f:fpu) ft4  <-- 3.0
       0     1883        M 0x80000720 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     1884        M 0x80000724 addi    a1, a1, -1             #; a1  = 28, (wrb) a1  <-- 27
       0     1885        M 0x80000728 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     1886        M 0x8000072c bnez    a1, pc - 40            #; a1  = 27, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     1887        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 3, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     1888        M                                           #; (f:fpu) ft0  <-- 9.423
       0     1890        M                                           #; (acc) a5  <-- 0x0047d793
       0     1891        M 0x80000708 srli    a5, a5, 4              #; a5  = 2, (wrb) a5  <-- 0
       0     1892        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     1895        M                                           #; (acc) a5  <-- 0x40f507b3
       0     1896        M 0x80000710 sub     a5, a0, a5             #; a0  = 4, a5  = 0, (wrb) a5  <-- 4
       0     1898        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     1899        M                                           #; (f:fpu) ft4  <-- 4.0
       0     1900        M 0x80000720 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     1901        M 0x80000724 addi    a1, a1, -1             #; a1  = 27, (wrb) a1  <-- 26
       0     1902        M 0x80000728 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     1903        M 0x8000072c bnez    a1, pc - 40            #; a1  = 26, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     1904        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 4, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     1905        M                                           #; (f:fpu) ft0  <-- 12.564
       0     1907        M                                           #; (acc) a5  <-- 0x0047d793
       0     1908        M 0x80000708 srli    a5, a5, 4              #; a5  = 3, (wrb) a5  <-- 0
       0     1909        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     1912        M                                           #; (acc) a5  <-- 0x40f507b3
       0     1913        M 0x80000710 sub     a5, a0, a5             #; a0  = 5, a5  = 0, (wrb) a5  <-- 5
       0     1915        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     1916        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1917        M 0x80000720 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     1918        M 0x80000724 addi    a1, a1, -1             #; a1  = 26, (wrb) a1  <-- 25
       0     1919        M 0x80000728 addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
       0     1920        M 0x8000072c bnez    a1, pc - 40            #; a1  = 25, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     1921        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 5, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     1922        M                                           #; (f:fpu) ft0  <-- 15.705
       0     1924        M                                           #; (acc) a5  <-- 0x0047d793
       0     1925        M 0x80000708 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
       0     1926        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     1929        M                                           #; (acc) a5  <-- 0x40f507b3
       0     1930        M 0x80000710 sub     a5, a0, a5             #; a0  = 6, a5  = 0, (wrb) a5  <-- 6
       0     1932        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     1933        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1934        M 0x80000720 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     1935        M 0x80000724 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
       0     1936        M 0x80000728 addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
       0     1937        M 0x8000072c bnez    a1, pc - 40            #; a1  = 24, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     1938        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 6, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     1939        M                                           #; (f:fpu) ft0  <-- 18.846
       0     1941        M                                           #; (acc) a5  <-- 0x0047d793
       0     1942        M 0x80000708 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
       0     1943        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     1946        M                                           #; (acc) a5  <-- 0x40f507b3
       0     1947        M 0x80000710 sub     a5, a0, a5             #; a0  = 7, a5  = 0, (wrb) a5  <-- 7
       0     1949        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     1950        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1951        M 0x80000720 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     1952        M 0x80000724 addi    a1, a1, -1             #; a1  = 24, (wrb) a1  <-- 23
       0     1953        M 0x80000728 addi    a0, a0, 1              #; a0  = 7, (wrb) a0  <-- 8
       0     1954        M 0x8000072c bnez    a1, pc - 40            #; a1  = 23, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     1955        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 7, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     1956        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     1958        M                                           #; (acc) a5  <-- 0x0047d793
       0     1959        M 0x80000708 srli    a5, a5, 4              #; a5  = 5, (wrb) a5  <-- 0
       0     1960        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     1963        M                                           #; (acc) a5  <-- 0x40f507b3
       0     1964        M 0x80000710 sub     a5, a0, a5             #; a0  = 8, a5  = 0, (wrb) a5  <-- 8
       0     1966        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     1967        M                                           #; (f:fpu) ft4  <-- 8.0
       0     1968        M 0x80000720 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     1969        M 0x80000724 addi    a1, a1, -1             #; a1  = 23, (wrb) a1  <-- 22
       0     1970        M 0x80000728 addi    a0, a0, 1              #; a0  = 8, (wrb) a0  <-- 9
       0     1971        M 0x8000072c bnez    a1, pc - 40            #; a1  = 22, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     1972        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 8, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     1973        M                                           #; (f:fpu) ft0  <-- 25.128
       0     1975        M                                           #; (acc) a5  <-- 0x0047d793
       0     1976        M 0x80000708 srli    a5, a5, 4              #; a5  = 6, (wrb) a5  <-- 0
       0     1977        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     1980        M                                           #; (acc) a5  <-- 0x40f507b3
       0     1981        M 0x80000710 sub     a5, a0, a5             #; a0  = 9, a5  = 0, (wrb) a5  <-- 9
       0     1983        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     1984        M                                           #; (f:fpu) ft4  <-- 9.0
       0     1985        M 0x80000720 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     1986        M 0x80000724 addi    a1, a1, -1             #; a1  = 22, (wrb) a1  <-- 21
       0     1987        M 0x80000728 addi    a0, a0, 1              #; a0  = 9, (wrb) a0  <-- 10
       0     1988        M 0x8000072c bnez    a1, pc - 40            #; a1  = 21, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     1989        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 9, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     1990        M                                           #; (f:fpu) ft0  <-- 28.269
       0     1992        M                                           #; (acc) a5  <-- 0x0047d793
       0     1993        M 0x80000708 srli    a5, a5, 4              #; a5  = 7, (wrb) a5  <-- 0
       0     1994        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     1997        M                                           #; (acc) a5  <-- 0x40f507b3
       0     1998        M 0x80000710 sub     a5, a0, a5             #; a0  = 10, a5  = 0, (wrb) a5  <-- 10
       0     2000        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2001        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2002        M 0x80000720 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2003        M 0x80000724 addi    a1, a1, -1             #; a1  = 21, (wrb) a1  <-- 20
       0     2004        M 0x80000728 addi    a0, a0, 1              #; a0  = 10, (wrb) a0  <-- 11
       0     2005        M 0x8000072c bnez    a1, pc - 40            #; a1  = 20, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2006        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 10, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2007        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2009        M                                           #; (acc) a5  <-- 0x0047d793
       0     2010        M 0x80000708 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
       0     2011        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2014        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2015        M 0x80000710 sub     a5, a0, a5             #; a0  = 11, a5  = 0, (wrb) a5  <-- 11
       0     2017        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2018        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2019        M 0x80000720 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2020        M 0x80000724 addi    a1, a1, -1             #; a1  = 20, (wrb) a1  <-- 19
       0     2021        M 0x80000728 addi    a0, a0, 1              #; a0  = 11, (wrb) a0  <-- 12
       0     2022        M 0x8000072c bnez    a1, pc - 40            #; a1  = 19, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2023        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 11, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2024        M                                           #; (f:fpu) ft0  <-- 34.551
       0     2026        M                                           #; (acc) a5  <-- 0x0047d793
       0     2027        M 0x80000708 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
       0     2028        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2031        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2032        M 0x80000710 sub     a5, a0, a5             #; a0  = 12, a5  = 0, (wrb) a5  <-- 12
       0     2034        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2035        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2036        M 0x80000720 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2037        M 0x80000724 addi    a1, a1, -1             #; a1  = 19, (wrb) a1  <-- 18
       0     2038        M 0x80000728 addi    a0, a0, 1              #; a0  = 12, (wrb) a0  <-- 13
       0     2039        M 0x8000072c bnez    a1, pc - 40            #; a1  = 18, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2040        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 12, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2041        M                                           #; (f:fpu) ft0  <-- 37.692
       0     2043        M                                           #; (acc) a5  <-- 0x0047d793
       0     2044        M 0x80000708 srli    a5, a5, 4              #; a5  = 9, (wrb) a5  <-- 0
       0     2045        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2048        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2049        M 0x80000710 sub     a5, a0, a5             #; a0  = 13, a5  = 0, (wrb) a5  <-- 13
       0     2051        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2052        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2053        M 0x80000720 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2054        M 0x80000724 addi    a1, a1, -1             #; a1  = 18, (wrb) a1  <-- 17
       0     2055        M 0x80000728 addi    a0, a0, 1              #; a0  = 13, (wrb) a0  <-- 14
       0     2056        M 0x8000072c bnez    a1, pc - 40            #; a1  = 17, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2057        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 13, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2058        M                                           #; (f:fpu) ft0  <-- 40.833
       0     2060        M                                           #; (acc) a5  <-- 0x0047d793
       0     2061        M 0x80000708 srli    a5, a5, 4              #; a5  = 10, (wrb) a5  <-- 0
       0     2062        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2065        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2066        M 0x80000710 sub     a5, a0, a5             #; a0  = 14, a5  = 0, (wrb) a5  <-- 14
       0     2068        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     2069        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2070        M 0x80000720 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2071        M 0x80000724 addi    a1, a1, -1             #; a1  = 17, (wrb) a1  <-- 16
       0     2072        M 0x80000728 addi    a0, a0, 1              #; a0  = 14, (wrb) a0  <-- 15
       0     2073        M 0x8000072c bnez    a1, pc - 40            #; a1  = 16, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2074        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 14, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2075        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2077        M                                           #; (acc) a5  <-- 0x0047d793
       0     2078        M 0x80000708 srli    a5, a5, 4              #; a5  = 11, (wrb) a5  <-- 0
       0     2079        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2082        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2083        M 0x80000710 sub     a5, a0, a5             #; a0  = 15, a5  = 0, (wrb) a5  <-- 15
       0     2085        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     2086        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2087        M 0x80000720 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2088        M 0x80000724 addi    a1, a1, -1             #; a1  = 16, (wrb) a1  <-- 15
       0     2089        M 0x80000728 addi    a0, a0, 1              #; a0  = 15, (wrb) a0  <-- 16
       0     2090        M 0x8000072c bnez    a1, pc - 40            #; a1  = 15, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2091        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 15, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     2092        M                                           #; (f:fpu) ft0  <-- 47.115
       0     2094        M                                           #; (acc) a5  <-- 0x0047d793
       0     2095        M 0x80000708 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
       0     2096        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2099        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2100        M 0x80000710 sub     a5, a0, a5             #; a0  = 16, a5  = 0, (wrb) a5  <-- 16
       0     2102        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     2103        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2104        M 0x80000720 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     2105        M 0x80000724 addi    a1, a1, -1             #; a1  = 15, (wrb) a1  <-- 14
       0     2106        M 0x80000728 addi    a0, a0, 1              #; a0  = 16, (wrb) a0  <-- 17
       0     2107        M 0x8000072c bnez    a1, pc - 40            #; a1  = 14, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     2108        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 16, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     2109        M                                           #; (f:fpu) ft0  <-- 50.256
       0     2111        M                                           #; (acc) a5  <-- 0x0047d793
       0     2112        M 0x80000708 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
       0     2113        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2116        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2117        M 0x80000710 sub     a5, a0, a5             #; a0  = 17, a5  = 0, (wrb) a5  <-- 17
       0     2119        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     2120        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2121        M 0x80000720 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     2122        M 0x80000724 addi    a1, a1, -1             #; a1  = 14, (wrb) a1  <-- 13
       0     2123        M 0x80000728 addi    a0, a0, 1              #; a0  = 17, (wrb) a0  <-- 18
       0     2124        M 0x8000072c bnez    a1, pc - 40            #; a1  = 13, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     2125        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 17, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     2126        M                                           #; (f:fpu) ft0  <-- 53.397
       0     2128        M                                           #; (acc) a5  <-- 0x0047d793
       0     2129        M 0x80000708 srli    a5, a5, 4              #; a5  = 13, (wrb) a5  <-- 0
       0     2130        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2133        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2134        M 0x80000710 sub     a5, a0, a5             #; a0  = 18, a5  = 0, (wrb) a5  <-- 18
       0     2136        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     2137        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2138        M 0x80000720 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     2139        M 0x80000724 addi    a1, a1, -1             #; a1  = 13, (wrb) a1  <-- 12
       0     2140        M 0x80000728 addi    a0, a0, 1              #; a0  = 18, (wrb) a0  <-- 19
       0     2141        M 0x8000072c bnez    a1, pc - 40            #; a1  = 12, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     2142        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 18, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     2143        M                                           #; (f:fpu) ft0  <-- 56.538
       0     2145        M                                           #; (acc) a5  <-- 0x0047d793
       0     2146        M 0x80000708 srli    a5, a5, 4              #; a5  = 14, (wrb) a5  <-- 0
       0     2147        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2150        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2151        M 0x80000710 sub     a5, a0, a5             #; a0  = 19, a5  = 0, (wrb) a5  <-- 19
       0     2153        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     2154        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2155        M 0x80000720 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     2156        M 0x80000724 addi    a1, a1, -1             #; a1  = 12, (wrb) a1  <-- 11
       0     2157        M 0x80000728 addi    a0, a0, 1              #; a0  = 19, (wrb) a0  <-- 20
       0     2158        M 0x8000072c bnez    a1, pc - 40            #; a1  = 11, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     2159        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 19, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     2160        M                                           #; (f:fpu) ft0  <-- 59.679
       0     2162        M                                           #; (acc) a5  <-- 0x0047d793
       0     2163        M 0x80000708 srli    a5, a5, 4              #; a5  = 15, (wrb) a5  <-- 0
       0     2164        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2167        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2168        M 0x80000710 sub     a5, a0, a5             #; a0  = 20, a5  = 0, (wrb) a5  <-- 20
       0     2170        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     2171        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2172        M 0x80000720 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     2173        M 0x80000724 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
       0     2174        M 0x80000728 addi    a0, a0, 1              #; a0  = 20, (wrb) a0  <-- 21
       0     2175        M 0x8000072c bnez    a1, pc - 40            #; a1  = 10, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     2176        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 20, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     2177        M                                           #; (f:fpu) ft0  <-- 62.82
       0     2179        M                                           #; (acc) a5  <-- 0x0047d793
       0     2180        M 0x80000708 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
       0     2181        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2184        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2185        M 0x80000710 sub     a5, a0, a5             #; a0  = 21, a5  = 20, (wrb) a5  <-- 1
       0     2187        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2188        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2189        M 0x80000720 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2190        M 0x80000724 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
       0     2191        M 0x80000728 addi    a0, a0, 1              #; a0  = 21, (wrb) a0  <-- 22
       0     2192        M 0x8000072c bnez    a1, pc - 40            #; a1  = 9, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2193        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 21, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2194        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2196        M                                           #; (acc) a5  <-- 0x0047d793
       0     2197        M 0x80000708 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
       0     2198        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2201        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2202        M 0x80000710 sub     a5, a0, a5             #; a0  = 22, a5  = 20, (wrb) a5  <-- 2
       0     2204        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2205        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2206        M 0x80000720 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2207        M 0x80000724 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
       0     2208        M 0x80000728 addi    a0, a0, 1              #; a0  = 22, (wrb) a0  <-- 23
       0     2209        M 0x8000072c bnez    a1, pc - 40            #; a1  = 8, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2210        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 22, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2211        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2213        M                                           #; (acc) a5  <-- 0x0047d793
       0     2214        M 0x80000708 srli    a5, a5, 4              #; a5  = 17, (wrb) a5  <-- 1
       0     2215        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2218        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2219        M 0x80000710 sub     a5, a0, a5             #; a0  = 23, a5  = 20, (wrb) a5  <-- 3
       0     2221        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2222        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2223        M 0x80000720 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2224        M 0x80000724 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
       0     2225        M 0x80000728 addi    a0, a0, 1              #; a0  = 23, (wrb) a0  <-- 24
       0     2226        M 0x8000072c bnez    a1, pc - 40            #; a1  = 7, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2227        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 23, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2228        M                                           #; (f:fpu) ft0  <-- 9.423
       0     2230        M                                           #; (acc) a5  <-- 0x0047d793
       0     2231        M 0x80000708 srli    a5, a5, 4              #; a5  = 18, (wrb) a5  <-- 1
       0     2232        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2235        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2236        M 0x80000710 sub     a5, a0, a5             #; a0  = 24, a5  = 20, (wrb) a5  <-- 4
       0     2238        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2239        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2240        M 0x80000720 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2241        M 0x80000724 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     2242        M 0x80000728 addi    a0, a0, 1              #; a0  = 24, (wrb) a0  <-- 25
       0     2243        M 0x8000072c bnez    a1, pc - 40            #; a1  = 6, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2244        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 24, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2245        M                                           #; (f:fpu) ft0  <-- 12.564
       0     2247        M                                           #; (acc) a5  <-- 0x0047d793
       0     2248        M 0x80000708 srli    a5, a5, 4              #; a5  = 19, (wrb) a5  <-- 1
       0     2249        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2252        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2253        M 0x80000710 sub     a5, a0, a5             #; a0  = 25, a5  = 20, (wrb) a5  <-- 5
       0     2255        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2256        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2257        M 0x80000720 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2258        M 0x80000724 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     2259        M 0x80000728 addi    a0, a0, 1              #; a0  = 25, (wrb) a0  <-- 26
       0     2260        M 0x8000072c bnez    a1, pc - 40            #; a1  = 5, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2261        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 25, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2262        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2264        M                                           #; (acc) a5  <-- 0x0047d793
       0     2265        M 0x80000708 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
       0     2266        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2269        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2270        M 0x80000710 sub     a5, a0, a5             #; a0  = 26, a5  = 20, (wrb) a5  <-- 6
       0     2272        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2273        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2274        M 0x80000720 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2275        M 0x80000724 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     2276        M 0x80000728 addi    a0, a0, 1              #; a0  = 26, (wrb) a0  <-- 27
       0     2277        M 0x8000072c bnez    a1, pc - 40            #; a1  = 4, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2278        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 26, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2279        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2281        M                                           #; (acc) a5  <-- 0x0047d793
       0     2282        M 0x80000708 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
       0     2283        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2286        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2287        M 0x80000710 sub     a5, a0, a5             #; a0  = 27, a5  = 20, (wrb) a5  <-- 7
       0     2289        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2290        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2291        M 0x80000720 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2292        M 0x80000724 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     2293        M 0x80000728 addi    a0, a0, 1              #; a0  = 27, (wrb) a0  <-- 28
       0     2294        M 0x8000072c bnez    a1, pc - 40            #; a1  = 3, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2295        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 27, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2296        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2298        M                                           #; (acc) a5  <-- 0x0047d793
       0     2299        M 0x80000708 srli    a5, a5, 4              #; a5  = 21, (wrb) a5  <-- 1
       0     2300        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2303        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2304        M 0x80000710 sub     a5, a0, a5             #; a0  = 28, a5  = 20, (wrb) a5  <-- 8
       0     2306        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2307        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2308        M 0x80000720 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2309        M 0x80000724 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     2310        M 0x80000728 addi    a0, a0, 1              #; a0  = 28, (wrb) a0  <-- 29
       0     2311        M 0x8000072c bnez    a1, pc - 40            #; a1  = 2, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2312        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 28, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2313        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2315        M                                           #; (acc) a5  <-- 0x0047d793
       0     2316        M 0x80000708 srli    a5, a5, 4              #; a5  = 22, (wrb) a5  <-- 1
       0     2317        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2320        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2321        M 0x80000710 sub     a5, a0, a5             #; a0  = 29, a5  = 20, (wrb) a5  <-- 9
       0     2323        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2324        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2325        M 0x80000720 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2326        M 0x80000724 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     2327        M 0x80000728 addi    a0, a0, 1              #; a0  = 29, (wrb) a0  <-- 30
       0     2328        M 0x8000072c bnez    a1, pc - 40            #; a1  = 1, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2329        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 29, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2330        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2332        M                                           #; (acc) a5  <-- 0x0047d793
       0     2333        M 0x80000708 srli    a5, a5, 4              #; a5  = 23, (wrb) a5  <-- 1
       0     2334        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2337        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2338        M 0x80000710 sub     a5, a0, a5             #; a0  = 30, a5  = 20, (wrb) a5  <-- 10
       0     2340        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2341        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2342        M 0x80000720 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2343        M 0x80000724 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     2344        M 0x80000728 addi    a0, a0, 1              #; a0  = 30, (wrb) a0  <-- 31
       0     2345        M 0x8000072c bnez    a1, pc - 40            #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2346        M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2347        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2349        M 0x80000734 ret                            #; ra  = 0x800007e8, goto 0x800007e8
                         M 0x80000730 csrrci  a0, ssr, 1             #; 
       0     2353        M 0x800007e8 li      a1, 42                 #; (wrb) a1  <-- 42
       0     2354        M 0x800007ec mv      a0, s1                 #; s1  = 0x001000f0, (wrb) a0  <-- 0x001000f0
       0     2356        M 0x800007f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007f0
       0     2357        M 0x800007f4 jalr    ra, ra, -444           #; ra  = 0x800007f0, (wrb) ra  <-- 0x800007f8, goto 0x80000634
       0     2370        M 0x80000634 addi    a2, a1, -1             #; a1  = 42, (wrb) a2  <-- 41
       0     2371        M 0x80000638 slli    a5, a2, 3              #; a2  = 41, (wrb) a5  <-- 328
       0     2372        M 0x8000063c add     a4, a5, a0             #; a5  = 328, a0  = 0x001000f0, (wrb) a4  <-- 0x00100238
       0     2373        M 0x80000640 srli    a3, a0, 20             #; a0  = 0x001000f0, (wrb) a3  <-- 1
       0     2374        M 0x80000644 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     2375        M 0x80000648 bgeu    a4, a5, pc + 100       #; a4  = 0x00100238, a5  = 328, taken, goto 0x800006ac
       0     2378        M 0x800006ac lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     2381        M 0x800006b0 addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
       0     2382        M 0x800006b4 sltu    a4, a4, a5             #; a4  = 0x00100238, a5  = 0x00120001, (wrb) a4  <-- 1
       0     2383        M 0x800006b8 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     2384        M 0x800006bc beqz    a3, pc - 100           #; a3  = 1, not taken
       0     2387        M 0x800006c0 li      a3, 0                  #; (wrb) a3  <-- 0
       0     2388        M 0x800006c4 li      a4, 8                  #; (wrb) a4  <-- 8
       0     2389        M 0x800006c8 li      a5, 64                 #; (wrb) a5  <-- 64
       0     2390        M 0x800006cc scfgw   a2, a5                 #; a2  = 41, a5  = 64
       0     2391        M 0x800006d0 li      a2, 192                #; (wrb) a2  <-- 192
       0     2392        M 0x800006d4 scfgw   a4, a2                 #; a4  = 8, a2  = 192
       0     2393        M 0x800006d8 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2394        M 0x800006dc scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
       0     2395        M 0x800006e0 scfgwi  a0, 896                #; a0  = 0x001000f0
       0     2397        M 0x800006e8 li      a0, 1                  #; (wrb) a0  <-- 1
                         M 0x800006e4 csrrsi  a0, ssr, 1             #; 
       0     2398        M 0x800006ec auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036ec
       0     2399        M 0x800006f0 addi    a2, a2, -980           #; a2  = 0x800036ec, (wrb) a2  <-- 0x80003318
       0     2400        M                                           #; (acc) gp  <-- 0x00063187
       0     2401        M 0x800006f8 lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
       0     2402        M 0x800006fc addi    a2, a2, -819           #; a2  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
                         M 0x800006f4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003318]
       0     2403        M 0x80000700 li      a4, 20                 #; (wrb) a4  <-- 20
       0     2404        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 0, a2  = 0xcccccccd, (acc) a5  <-- 0x02c6b7b3
       0     2407        M                                           #; (acc) a5  <-- 0x0047d793
       0     2408        M 0x80000708 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     2409        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2411        M                                           #; (f:lsu) ft3  <-- 3.141
       0     2412        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2413        M 0x80000710 sub     a5, a0, a5             #; a0  = 1, a5  = 0, (wrb) a5  <-- 1
       0     2415        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2416        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2417        M 0x80000720 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2418        M 0x80000724 addi    a1, a1, -1             #; a1  = 42, (wrb) a1  <-- 41
       0     2419        M 0x80000728 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     2420        M 0x8000072c bnez    a1, pc - 40            #; a1  = 41, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2421        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 1, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2422        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2424        M                                           #; (acc) a5  <-- 0x0047d793
       0     2425        M 0x80000708 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     2426        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2429        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2430        M 0x80000710 sub     a5, a0, a5             #; a0  = 2, a5  = 0, (wrb) a5  <-- 2
       0     2432        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2433        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2434        M 0x80000720 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2435        M 0x80000724 addi    a1, a1, -1             #; a1  = 41, (wrb) a1  <-- 40
       0     2436        M 0x80000728 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     2437        M 0x8000072c bnez    a1, pc - 40            #; a1  = 40, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2438        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 2, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2439        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2441        M                                           #; (acc) a5  <-- 0x0047d793
       0     2442        M 0x80000708 srli    a5, a5, 4              #; a5  = 1, (wrb) a5  <-- 0
       0     2443        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2446        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2447        M 0x80000710 sub     a5, a0, a5             #; a0  = 3, a5  = 0, (wrb) a5  <-- 3
       0     2449        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2450        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2451        M 0x80000720 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2452        M 0x80000724 addi    a1, a1, -1             #; a1  = 40, (wrb) a1  <-- 39
       0     2453        M 0x80000728 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     2454        M 0x8000072c bnez    a1, pc - 40            #; a1  = 39, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2455        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 3, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2456        M                                           #; (f:fpu) ft0  <-- 9.423
       0     2458        M                                           #; (acc) a5  <-- 0x0047d793
       0     2459        M 0x80000708 srli    a5, a5, 4              #; a5  = 2, (wrb) a5  <-- 0
       0     2460        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2463        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2464        M 0x80000710 sub     a5, a0, a5             #; a0  = 4, a5  = 0, (wrb) a5  <-- 4
       0     2466        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2467        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2468        M 0x80000720 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2469        M 0x80000724 addi    a1, a1, -1             #; a1  = 39, (wrb) a1  <-- 38
       0     2470        M 0x80000728 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     2471        M 0x8000072c bnez    a1, pc - 40            #; a1  = 38, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2472        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 4, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2473        M                                           #; (f:fpu) ft0  <-- 12.564
       0     2475        M                                           #; (acc) a5  <-- 0x0047d793
       0     2476        M 0x80000708 srli    a5, a5, 4              #; a5  = 3, (wrb) a5  <-- 0
       0     2477        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2480        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2481        M 0x80000710 sub     a5, a0, a5             #; a0  = 5, a5  = 0, (wrb) a5  <-- 5
       0     2483        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2484        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2485        M 0x80000720 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2486        M 0x80000724 addi    a1, a1, -1             #; a1  = 38, (wrb) a1  <-- 37
       0     2487        M 0x80000728 addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
       0     2488        M 0x8000072c bnez    a1, pc - 40            #; a1  = 37, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2489        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 5, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2490        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2492        M                                           #; (acc) a5  <-- 0x0047d793
       0     2493        M 0x80000708 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
       0     2494        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2497        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2498        M 0x80000710 sub     a5, a0, a5             #; a0  = 6, a5  = 0, (wrb) a5  <-- 6
       0     2500        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2501        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2502        M 0x80000720 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2503        M 0x80000724 addi    a1, a1, -1             #; a1  = 37, (wrb) a1  <-- 36
       0     2504        M 0x80000728 addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
       0     2505        M 0x8000072c bnez    a1, pc - 40            #; a1  = 36, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2506        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 6, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2507        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2509        M                                           #; (acc) a5  <-- 0x0047d793
       0     2510        M 0x80000708 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
       0     2511        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2514        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2515        M 0x80000710 sub     a5, a0, a5             #; a0  = 7, a5  = 0, (wrb) a5  <-- 7
       0     2517        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2518        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2519        M 0x80000720 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2520        M 0x80000724 addi    a1, a1, -1             #; a1  = 36, (wrb) a1  <-- 35
       0     2521        M 0x80000728 addi    a0, a0, 1              #; a0  = 7, (wrb) a0  <-- 8
       0     2522        M 0x8000072c bnez    a1, pc - 40            #; a1  = 35, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2523        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 7, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2524        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2526        M                                           #; (acc) a5  <-- 0x0047d793
       0     2527        M 0x80000708 srli    a5, a5, 4              #; a5  = 5, (wrb) a5  <-- 0
       0     2528        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2531        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2532        M 0x80000710 sub     a5, a0, a5             #; a0  = 8, a5  = 0, (wrb) a5  <-- 8
       0     2534        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2535        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2536        M 0x80000720 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2537        M 0x80000724 addi    a1, a1, -1             #; a1  = 35, (wrb) a1  <-- 34
       0     2538        M 0x80000728 addi    a0, a0, 1              #; a0  = 8, (wrb) a0  <-- 9
       0     2539        M 0x8000072c bnez    a1, pc - 40            #; a1  = 34, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2540        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 8, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2541        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2543        M                                           #; (acc) a5  <-- 0x0047d793
       0     2544        M 0x80000708 srli    a5, a5, 4              #; a5  = 6, (wrb) a5  <-- 0
       0     2545        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2548        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2549        M 0x80000710 sub     a5, a0, a5             #; a0  = 9, a5  = 0, (wrb) a5  <-- 9
       0     2551        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2552        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2553        M 0x80000720 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2554        M 0x80000724 addi    a1, a1, -1             #; a1  = 34, (wrb) a1  <-- 33
       0     2555        M 0x80000728 addi    a0, a0, 1              #; a0  = 9, (wrb) a0  <-- 10
       0     2556        M 0x8000072c bnez    a1, pc - 40            #; a1  = 33, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2557        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 9, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2558        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2560        M                                           #; (acc) a5  <-- 0x0047d793
       0     2561        M 0x80000708 srli    a5, a5, 4              #; a5  = 7, (wrb) a5  <-- 0
       0     2562        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2565        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2566        M 0x80000710 sub     a5, a0, a5             #; a0  = 10, a5  = 0, (wrb) a5  <-- 10
       0     2568        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2569        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2570        M 0x80000720 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2571        M 0x80000724 addi    a1, a1, -1             #; a1  = 33, (wrb) a1  <-- 32
       0     2572        M 0x80000728 addi    a0, a0, 1              #; a0  = 10, (wrb) a0  <-- 11
       0     2573        M 0x8000072c bnez    a1, pc - 40            #; a1  = 32, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2574        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 10, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2575        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2577        M                                           #; (acc) a5  <-- 0x0047d793
       0     2578        M 0x80000708 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
       0     2579        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2582        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2583        M 0x80000710 sub     a5, a0, a5             #; a0  = 11, a5  = 0, (wrb) a5  <-- 11
       0     2585        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2586        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2587        M 0x80000720 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2588        M 0x80000724 addi    a1, a1, -1             #; a1  = 32, (wrb) a1  <-- 31
       0     2589        M 0x80000728 addi    a0, a0, 1              #; a0  = 11, (wrb) a0  <-- 12
       0     2590        M 0x8000072c bnez    a1, pc - 40            #; a1  = 31, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2591        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 11, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2592        M                                           #; (f:fpu) ft0  <-- 34.551
       0     2594        M                                           #; (acc) a5  <-- 0x0047d793
       0     2595        M 0x80000708 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
       0     2596        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2599        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2600        M 0x80000710 sub     a5, a0, a5             #; a0  = 12, a5  = 0, (wrb) a5  <-- 12
       0     2602        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2603        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2604        M 0x80000720 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2605        M 0x80000724 addi    a1, a1, -1             #; a1  = 31, (wrb) a1  <-- 30
       0     2606        M 0x80000728 addi    a0, a0, 1              #; a0  = 12, (wrb) a0  <-- 13
       0     2607        M 0x8000072c bnez    a1, pc - 40            #; a1  = 30, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2608        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 12, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2609        M                                           #; (f:fpu) ft0  <-- 37.692
       0     2611        M                                           #; (acc) a5  <-- 0x0047d793
       0     2612        M 0x80000708 srli    a5, a5, 4              #; a5  = 9, (wrb) a5  <-- 0
       0     2613        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2616        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2617        M 0x80000710 sub     a5, a0, a5             #; a0  = 13, a5  = 0, (wrb) a5  <-- 13
       0     2619        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2620        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2621        M 0x80000720 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2622        M 0x80000724 addi    a1, a1, -1             #; a1  = 30, (wrb) a1  <-- 29
       0     2623        M 0x80000728 addi    a0, a0, 1              #; a0  = 13, (wrb) a0  <-- 14
       0     2624        M 0x8000072c bnez    a1, pc - 40            #; a1  = 29, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2625        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 13, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2626        M                                           #; (f:fpu) ft0  <-- 40.833
       0     2628        M                                           #; (acc) a5  <-- 0x0047d793
       0     2629        M 0x80000708 srli    a5, a5, 4              #; a5  = 10, (wrb) a5  <-- 0
       0     2630        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2633        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2634        M 0x80000710 sub     a5, a0, a5             #; a0  = 14, a5  = 0, (wrb) a5  <-- 14
       0     2636        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     2637        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2638        M 0x80000720 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2639        M 0x80000724 addi    a1, a1, -1             #; a1  = 29, (wrb) a1  <-- 28
       0     2640        M 0x80000728 addi    a0, a0, 1              #; a0  = 14, (wrb) a0  <-- 15
       0     2641        M 0x8000072c bnez    a1, pc - 40            #; a1  = 28, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2642        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 14, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2643        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2645        M                                           #; (acc) a5  <-- 0x0047d793
       0     2646        M 0x80000708 srli    a5, a5, 4              #; a5  = 11, (wrb) a5  <-- 0
       0     2647        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2650        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2651        M 0x80000710 sub     a5, a0, a5             #; a0  = 15, a5  = 0, (wrb) a5  <-- 15
       0     2653        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     2654        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2655        M 0x80000720 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2656        M 0x80000724 addi    a1, a1, -1             #; a1  = 28, (wrb) a1  <-- 27
       0     2657        M 0x80000728 addi    a0, a0, 1              #; a0  = 15, (wrb) a0  <-- 16
       0     2658        M 0x8000072c bnez    a1, pc - 40            #; a1  = 27, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2659        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 15, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     2660        M                                           #; (f:fpu) ft0  <-- 47.115
       0     2662        M                                           #; (acc) a5  <-- 0x0047d793
       0     2663        M 0x80000708 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
       0     2664        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2667        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2668        M 0x80000710 sub     a5, a0, a5             #; a0  = 16, a5  = 0, (wrb) a5  <-- 16
       0     2670        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     2671        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2672        M 0x80000720 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     2673        M 0x80000724 addi    a1, a1, -1             #; a1  = 27, (wrb) a1  <-- 26
       0     2674        M 0x80000728 addi    a0, a0, 1              #; a0  = 16, (wrb) a0  <-- 17
       0     2675        M 0x8000072c bnez    a1, pc - 40            #; a1  = 26, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     2676        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 16, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     2677        M                                           #; (f:fpu) ft0  <-- 50.256
       0     2679        M                                           #; (acc) a5  <-- 0x0047d793
       0     2680        M 0x80000708 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
       0     2681        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2684        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2685        M 0x80000710 sub     a5, a0, a5             #; a0  = 17, a5  = 0, (wrb) a5  <-- 17
       0     2687        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     2688        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2689        M 0x80000720 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     2690        M 0x80000724 addi    a1, a1, -1             #; a1  = 26, (wrb) a1  <-- 25
       0     2691        M 0x80000728 addi    a0, a0, 1              #; a0  = 17, (wrb) a0  <-- 18
       0     2692        M 0x8000072c bnez    a1, pc - 40            #; a1  = 25, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     2693        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 17, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     2694        M                                           #; (f:fpu) ft0  <-- 53.397
       0     2696        M                                           #; (acc) a5  <-- 0x0047d793
       0     2697        M 0x80000708 srli    a5, a5, 4              #; a5  = 13, (wrb) a5  <-- 0
       0     2698        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2701        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2702        M 0x80000710 sub     a5, a0, a5             #; a0  = 18, a5  = 0, (wrb) a5  <-- 18
       0     2704        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     2705        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2706        M 0x80000720 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     2707        M 0x80000724 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
       0     2708        M 0x80000728 addi    a0, a0, 1              #; a0  = 18, (wrb) a0  <-- 19
       0     2709        M 0x8000072c bnez    a1, pc - 40            #; a1  = 24, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     2710        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 18, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     2711        M                                           #; (f:fpu) ft0  <-- 56.538
       0     2713        M                                           #; (acc) a5  <-- 0x0047d793
       0     2714        M 0x80000708 srli    a5, a5, 4              #; a5  = 14, (wrb) a5  <-- 0
       0     2715        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2718        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2719        M 0x80000710 sub     a5, a0, a5             #; a0  = 19, a5  = 0, (wrb) a5  <-- 19
       0     2721        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     2722        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2723        M 0x80000720 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     2724        M 0x80000724 addi    a1, a1, -1             #; a1  = 24, (wrb) a1  <-- 23
       0     2725        M 0x80000728 addi    a0, a0, 1              #; a0  = 19, (wrb) a0  <-- 20
       0     2726        M 0x8000072c bnez    a1, pc - 40            #; a1  = 23, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     2727        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 19, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     2728        M                                           #; (f:fpu) ft0  <-- 59.679
       0     2730        M                                           #; (acc) a5  <-- 0x0047d793
       0     2731        M 0x80000708 srli    a5, a5, 4              #; a5  = 15, (wrb) a5  <-- 0
       0     2732        M 0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2735        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2736        M 0x80000710 sub     a5, a0, a5             #; a0  = 20, a5  = 0, (wrb) a5  <-- 20
       0     2738        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     2739        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2740        M 0x80000720 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     2741        M 0x80000724 addi    a1, a1, -1             #; a1  = 23, (wrb) a1  <-- 22
       0     2742        M 0x80000728 addi    a0, a0, 1              #; a0  = 20, (wrb) a0  <-- 21
       0     2743        M 0x8000072c bnez    a1, pc - 40            #; a1  = 22, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     2744        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 20, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     2745        M                                           #; (f:fpu) ft0  <-- 62.82
       0     2747        M                                           #; (acc) a5  <-- 0x0047d793
       0     2748        M 0x80000708 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
       0     2749        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2752        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2753        M 0x80000710 sub     a5, a0, a5             #; a0  = 21, a5  = 20, (wrb) a5  <-- 1
       0     2755        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2756        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2757        M 0x80000720 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2758        M 0x80000724 addi    a1, a1, -1             #; a1  = 22, (wrb) a1  <-- 21
       0     2759        M 0x80000728 addi    a0, a0, 1              #; a0  = 21, (wrb) a0  <-- 22
       0     2760        M 0x8000072c bnez    a1, pc - 40            #; a1  = 21, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2761        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 21, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2762        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2764        M                                           #; (acc) a5  <-- 0x0047d793
       0     2765        M 0x80000708 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
       0     2766        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2769        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2770        M 0x80000710 sub     a5, a0, a5             #; a0  = 22, a5  = 20, (wrb) a5  <-- 2
       0     2772        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2773        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2774        M 0x80000720 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2775        M 0x80000724 addi    a1, a1, -1             #; a1  = 21, (wrb) a1  <-- 20
       0     2776        M 0x80000728 addi    a0, a0, 1              #; a0  = 22, (wrb) a0  <-- 23
       0     2777        M 0x8000072c bnez    a1, pc - 40            #; a1  = 20, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2778        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 22, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2779        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2781        M                                           #; (acc) a5  <-- 0x0047d793
       0     2782        M 0x80000708 srli    a5, a5, 4              #; a5  = 17, (wrb) a5  <-- 1
       0     2783        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2786        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2787        M 0x80000710 sub     a5, a0, a5             #; a0  = 23, a5  = 20, (wrb) a5  <-- 3
       0     2789        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2790        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2791        M 0x80000720 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2792        M 0x80000724 addi    a1, a1, -1             #; a1  = 20, (wrb) a1  <-- 19
       0     2793        M 0x80000728 addi    a0, a0, 1              #; a0  = 23, (wrb) a0  <-- 24
       0     2794        M 0x8000072c bnez    a1, pc - 40            #; a1  = 19, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2795        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 23, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2796        M                                           #; (f:fpu) ft0  <-- 9.423
       0     2798        M                                           #; (acc) a5  <-- 0x0047d793
       0     2799        M 0x80000708 srli    a5, a5, 4              #; a5  = 18, (wrb) a5  <-- 1
       0     2800        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2803        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2804        M 0x80000710 sub     a5, a0, a5             #; a0  = 24, a5  = 20, (wrb) a5  <-- 4
       0     2806        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2807        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2808        M 0x80000720 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2809        M 0x80000724 addi    a1, a1, -1             #; a1  = 19, (wrb) a1  <-- 18
       0     2810        M 0x80000728 addi    a0, a0, 1              #; a0  = 24, (wrb) a0  <-- 25
       0     2811        M 0x8000072c bnez    a1, pc - 40            #; a1  = 18, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2812        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 24, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2813        M                                           #; (f:fpu) ft0  <-- 12.564
       0     2815        M                                           #; (acc) a5  <-- 0x0047d793
       0     2816        M 0x80000708 srli    a5, a5, 4              #; a5  = 19, (wrb) a5  <-- 1
       0     2817        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2820        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2821        M 0x80000710 sub     a5, a0, a5             #; a0  = 25, a5  = 20, (wrb) a5  <-- 5
       0     2823        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2824        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2825        M 0x80000720 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2826        M 0x80000724 addi    a1, a1, -1             #; a1  = 18, (wrb) a1  <-- 17
       0     2827        M 0x80000728 addi    a0, a0, 1              #; a0  = 25, (wrb) a0  <-- 26
       0     2828        M 0x8000072c bnez    a1, pc - 40            #; a1  = 17, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2829        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 25, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2830        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2832        M                                           #; (acc) a5  <-- 0x0047d793
       0     2833        M 0x80000708 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
       0     2834        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2837        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2838        M 0x80000710 sub     a5, a0, a5             #; a0  = 26, a5  = 20, (wrb) a5  <-- 6
       0     2840        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2841        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2842        M 0x80000720 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2843        M 0x80000724 addi    a1, a1, -1             #; a1  = 17, (wrb) a1  <-- 16
       0     2844        M 0x80000728 addi    a0, a0, 1              #; a0  = 26, (wrb) a0  <-- 27
       0     2845        M 0x8000072c bnez    a1, pc - 40            #; a1  = 16, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2846        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 26, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2847        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2849        M                                           #; (acc) a5  <-- 0x0047d793
       0     2850        M 0x80000708 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
       0     2851        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2854        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2855        M 0x80000710 sub     a5, a0, a5             #; a0  = 27, a5  = 20, (wrb) a5  <-- 7
       0     2857        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2858        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2859        M 0x80000720 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2860        M 0x80000724 addi    a1, a1, -1             #; a1  = 16, (wrb) a1  <-- 15
       0     2861        M 0x80000728 addi    a0, a0, 1              #; a0  = 27, (wrb) a0  <-- 28
       0     2862        M 0x8000072c bnez    a1, pc - 40            #; a1  = 15, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2863        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 27, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2864        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2866        M                                           #; (acc) a5  <-- 0x0047d793
       0     2867        M 0x80000708 srli    a5, a5, 4              #; a5  = 21, (wrb) a5  <-- 1
       0     2868        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2871        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2872        M 0x80000710 sub     a5, a0, a5             #; a0  = 28, a5  = 20, (wrb) a5  <-- 8
       0     2874        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2875        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2876        M 0x80000720 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2877        M 0x80000724 addi    a1, a1, -1             #; a1  = 15, (wrb) a1  <-- 14
       0     2878        M 0x80000728 addi    a0, a0, 1              #; a0  = 28, (wrb) a0  <-- 29
       0     2879        M 0x8000072c bnez    a1, pc - 40            #; a1  = 14, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2880        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 28, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2881        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2883        M                                           #; (acc) a5  <-- 0x0047d793
       0     2884        M 0x80000708 srli    a5, a5, 4              #; a5  = 22, (wrb) a5  <-- 1
       0     2885        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2888        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2889        M 0x80000710 sub     a5, a0, a5             #; a0  = 29, a5  = 20, (wrb) a5  <-- 9
       0     2891        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2892        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2893        M 0x80000720 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2894        M 0x80000724 addi    a1, a1, -1             #; a1  = 14, (wrb) a1  <-- 13
       0     2895        M 0x80000728 addi    a0, a0, 1              #; a0  = 29, (wrb) a0  <-- 30
       0     2896        M 0x8000072c bnez    a1, pc - 40            #; a1  = 13, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2897        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 29, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2898        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2900        M                                           #; (acc) a5  <-- 0x0047d793
       0     2901        M 0x80000708 srli    a5, a5, 4              #; a5  = 23, (wrb) a5  <-- 1
       0     2902        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2905        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2906        M 0x80000710 sub     a5, a0, a5             #; a0  = 30, a5  = 20, (wrb) a5  <-- 10
       0     2908        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2909        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2910        M 0x80000720 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2911        M 0x80000724 addi    a1, a1, -1             #; a1  = 13, (wrb) a1  <-- 12
       0     2912        M 0x80000728 addi    a0, a0, 1              #; a0  = 30, (wrb) a0  <-- 31
       0     2913        M 0x8000072c bnez    a1, pc - 40            #; a1  = 12, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2914        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 30, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2915        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2917        M                                           #; (acc) a5  <-- 0x0047d793
       0     2918        M 0x80000708 srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
       0     2919        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2922        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2923        M 0x80000710 sub     a5, a0, a5             #; a0  = 31, a5  = 20, (wrb) a5  <-- 11
       0     2925        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2926        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2927        M 0x80000720 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2928        M 0x80000724 addi    a1, a1, -1             #; a1  = 12, (wrb) a1  <-- 11
       0     2929        M 0x80000728 addi    a0, a0, 1              #; a0  = 31, (wrb) a0  <-- 32
       0     2930        M 0x8000072c bnez    a1, pc - 40            #; a1  = 11, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2931        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 31, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2932        M                                           #; (f:fpu) ft0  <-- 34.551
       0     2934        M                                           #; (acc) a5  <-- 0x0047d793
       0     2935        M 0x80000708 srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
       0     2936        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2939        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2940        M 0x80000710 sub     a5, a0, a5             #; a0  = 32, a5  = 20, (wrb) a5  <-- 12
       0     2942        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2943        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2944        M 0x80000720 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2945        M 0x80000724 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
       0     2946        M 0x80000728 addi    a0, a0, 1              #; a0  = 32, (wrb) a0  <-- 33
       0     2947        M 0x8000072c bnez    a1, pc - 40            #; a1  = 10, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2948        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 32, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2949        M                                           #; (f:fpu) ft0  <-- 37.692
       0     2951        M                                           #; (acc) a5  <-- 0x0047d793
       0     2952        M 0x80000708 srli    a5, a5, 4              #; a5  = 25, (wrb) a5  <-- 1
       0     2953        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2956        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2957        M 0x80000710 sub     a5, a0, a5             #; a0  = 33, a5  = 20, (wrb) a5  <-- 13
       0     2959        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2960        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2961        M 0x80000720 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2962        M 0x80000724 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
       0     2963        M 0x80000728 addi    a0, a0, 1              #; a0  = 33, (wrb) a0  <-- 34
       0     2964        M 0x8000072c bnez    a1, pc - 40            #; a1  = 9, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2965        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 33, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2966        M                                           #; (f:fpu) ft0  <-- 40.833
       0     2968        M                                           #; (acc) a5  <-- 0x0047d793
       0     2969        M 0x80000708 srli    a5, a5, 4              #; a5  = 26, (wrb) a5  <-- 1
       0     2970        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2973        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2974        M 0x80000710 sub     a5, a0, a5             #; a0  = 34, a5  = 20, (wrb) a5  <-- 14
       0     2976        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     2977        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2978        M 0x80000720 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2979        M 0x80000724 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
       0     2980        M 0x80000728 addi    a0, a0, 1              #; a0  = 34, (wrb) a0  <-- 35
       0     2981        M 0x8000072c bnez    a1, pc - 40            #; a1  = 8, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2982        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 34, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2983        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2985        M                                           #; (acc) a5  <-- 0x0047d793
       0     2986        M 0x80000708 srli    a5, a5, 4              #; a5  = 27, (wrb) a5  <-- 1
       0     2987        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2990        M                                           #; (acc) a5  <-- 0x40f507b3
       0     2991        M 0x80000710 sub     a5, a0, a5             #; a0  = 35, a5  = 20, (wrb) a5  <-- 15
       0     2993        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     2994        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2995        M 0x80000720 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2996        M 0x80000724 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
       0     2997        M 0x80000728 addi    a0, a0, 1              #; a0  = 35, (wrb) a0  <-- 36
       0     2998        M 0x8000072c bnez    a1, pc - 40            #; a1  = 7, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2999        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 35, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     3000        M                                           #; (f:fpu) ft0  <-- 47.115
       0     3002        M                                           #; (acc) a5  <-- 0x0047d793
       0     3003        M 0x80000708 srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
       0     3004        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3007        M                                           #; (acc) a5  <-- 0x40f507b3
       0     3008        M 0x80000710 sub     a5, a0, a5             #; a0  = 36, a5  = 20, (wrb) a5  <-- 16
       0     3010        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     3011        M                                           #; (f:fpu) ft4  <-- 16.0
       0     3012        M 0x80000720 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     3013        M 0x80000724 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     3014        M 0x80000728 addi    a0, a0, 1              #; a0  = 36, (wrb) a0  <-- 37
       0     3015        M 0x8000072c bnez    a1, pc - 40            #; a1  = 6, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     3016        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 36, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     3017        M                                           #; (f:fpu) ft0  <-- 50.256
       0     3019        M                                           #; (acc) a5  <-- 0x0047d793
       0     3020        M 0x80000708 srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
       0     3021        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3024        M                                           #; (acc) a5  <-- 0x40f507b3
       0     3025        M 0x80000710 sub     a5, a0, a5             #; a0  = 37, a5  = 20, (wrb) a5  <-- 17
       0     3027        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     3028        M                                           #; (f:fpu) ft4  <-- 17.0
       0     3029        M 0x80000720 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     3030        M 0x80000724 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3031        M 0x80000728 addi    a0, a0, 1              #; a0  = 37, (wrb) a0  <-- 38
       0     3032        M 0x8000072c bnez    a1, pc - 40            #; a1  = 5, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     3033        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 37, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     3034        M                                           #; (f:fpu) ft0  <-- 53.397
       0     3036        M                                           #; (acc) a5  <-- 0x0047d793
       0     3037        M 0x80000708 srli    a5, a5, 4              #; a5  = 29, (wrb) a5  <-- 1
       0     3038        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3041        M                                           #; (acc) a5  <-- 0x40f507b3
       0     3042        M 0x80000710 sub     a5, a0, a5             #; a0  = 38, a5  = 20, (wrb) a5  <-- 18
       0     3044        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     3045        M                                           #; (f:fpu) ft4  <-- 18.0
       0     3046        M 0x80000720 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     3047        M 0x80000724 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3048        M 0x80000728 addi    a0, a0, 1              #; a0  = 38, (wrb) a0  <-- 39
       0     3049        M 0x8000072c bnez    a1, pc - 40            #; a1  = 4, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     3050        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 38, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     3051        M                                           #; (f:fpu) ft0  <-- 56.538
       0     3053        M                                           #; (acc) a5  <-- 0x0047d793
       0     3054        M 0x80000708 srli    a5, a5, 4              #; a5  = 30, (wrb) a5  <-- 1
       0     3055        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3058        M                                           #; (acc) a5  <-- 0x40f507b3
       0     3059        M 0x80000710 sub     a5, a0, a5             #; a0  = 39, a5  = 20, (wrb) a5  <-- 19
       0     3061        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     3062        M                                           #; (f:fpu) ft4  <-- 19.0
       0     3063        M 0x80000720 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     3064        M 0x80000724 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3065        M 0x80000728 addi    a0, a0, 1              #; a0  = 39, (wrb) a0  <-- 40
       0     3066        M 0x8000072c bnez    a1, pc - 40            #; a1  = 3, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     3067        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 39, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     3068        M                                           #; (f:fpu) ft0  <-- 59.679
       0     3070        M                                           #; (acc) a5  <-- 0x0047d793
       0     3071        M 0x80000708 srli    a5, a5, 4              #; a5  = 31, (wrb) a5  <-- 1
       0     3072        M 0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     3075        M                                           #; (acc) a5  <-- 0x40f507b3
       0     3076        M 0x80000710 sub     a5, a0, a5             #; a0  = 40, a5  = 20, (wrb) a5  <-- 20
       0     3078        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     3079        M                                           #; (f:fpu) ft4  <-- 20.0
       0     3080        M 0x80000720 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     3081        M 0x80000724 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3082        M 0x80000728 addi    a0, a0, 1              #; a0  = 40, (wrb) a0  <-- 41
       0     3083        M 0x8000072c bnez    a1, pc - 40            #; a1  = 2, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     3084        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 40, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     3085        M                                           #; (f:fpu) ft0  <-- 62.82
       0     3087        M                                           #; (acc) a5  <-- 0x0047d793
       0     3088        M 0x80000708 srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
       0     3089        M 0x8000070c mul     a5, a5, a4             #; a5  = 2, a4  = 20
       0     3092        M                                           #; (acc) a5  <-- 0x40f507b3
       0     3093        M 0x80000710 sub     a5, a0, a5             #; a0  = 41, a5  = 40, (wrb) a5  <-- 1
       0     3095        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     3096        M                                           #; (f:fpu) ft4  <-- 1.0
       0     3097        M 0x80000720 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     3098        M 0x80000724 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3099        M 0x80000728 addi    a0, a0, 1              #; a0  = 41, (wrb) a0  <-- 42
       0     3100        M 0x8000072c bnez    a1, pc - 40            #; a1  = 1, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     3101        M 0x80000704 mulhu   a5, a3, a2             #; a3  = 41, a2  = 0xcccccccd
                         M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     3102        M                                           #; (f:fpu) ft0  <-- 3.141
       0     3104        M                                           #; (acc) a5  <-- 0x0047d793
       0     3105        M 0x80000708 srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
       0     3106        M 0x8000070c mul     a5, a5, a4             #; a5  = 2, a4  = 20
       0     3109        M                                           #; (acc) a5  <-- 0x40f507b3
       0     3110        M 0x80000710 sub     a5, a0, a5             #; a0  = 42, a5  = 40, (wrb) a5  <-- 2
       0     3112        M 0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     3113        M                                           #; (f:fpu) ft4  <-- 2.0
       0     3114        M 0x80000720 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
                         M 0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     3115        M 0x80000724 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3116        M 0x80000728 addi    a0, a0, 1              #; a0  = 42, (wrb) a0  <-- 43
       0     3117        M 0x8000072c bnez    a1, pc - 40            #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     3118        M 0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     3119        M                                           #; (f:fpu) ft0  <-- 6.282
       0     3121        M 0x80000734 ret                            #; ra  = 0x800007f8, goto 0x800007f8
                         M 0x80000730 csrrci  a0, ssr, 1             #; 
       0     3125        M 0x800007f8 li      a3, 5                  #; (wrb) a3  <-- 5
       0     3126        M 0x800007fc li      a4, 6                  #; (wrb) a4  <-- 6
       0     3128        M 0x80000800 li      a5, 7                  #; (wrb) a5  <-- 7
       0     3129        M 0x80000804 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     3130        M 0x80000808 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     3131        M 0x8000080c mv      a2, s1                 #; s1  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     3140        M 0x80000810 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000810
       0     3141        M 0x80000814 jalr    ra, ra, 212            #; ra  = 0x80000810, (wrb) ra  <-- 0x80000818, goto 0x800008e4
       0     3154        M 0x800008e4 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     3155        M 0x800008e8 sw      ra, 44(sp)             #; sp  = 0x0011ff10, 0x80000818 ~~> Word[0x0011ff3c]
       0     3156        M 0x800008ec sw      s0, 40(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff38]
       0     3157        M 0x800008f0 sw      s1, 36(sp)             #; sp  = 0x0011ff10, 0x001000f0 ~~> Word[0x0011ff34]
       0     3158        M 0x800008f4 sw      s2, 32(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff30]
       0     3159        M 0x800008f8 sw      s3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     3160        M 0x800008fc sw      s4, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     3169        M 0x80000900 sw      s5, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     3170        M 0x80000904 sw      s6, 16(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff20]
       0     3171        M 0x80000908 sw      s7, 12(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff1c]
       0     3172        M 0x8000090c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
       0     3181        M 0x80000910 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     3182        M 0x80000914 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     3183        M 0x80000918 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     3184        M 0x8000091c bnez    a3, pc + 808           #; a3  = 0, not taken
       0     3193        M 0x80000920 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
       0     3194        M 0x80000924 addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
       0     3195        M 0x80000928 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
       0     3196        M 0x8000092c addi    t3, s6, -1             #; s6  = 5, (wrb) t3  <-- 4
       0     3205        M 0x80000930 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
       0     3206        M 0x80000934 mul     a0, s2, t3             #; s2  = 56, t3  = 4
       0     3209        M                                           #; (acc) a0  <-- 0x00ae8533
       0     3210        M 0x80000938 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
       0     3211        M 0x8000093c add     t6, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) t6  <-- 0x00100350
       0     3217        M 0x80000940 sltu    a0, t6, a0             #; t6  = 0x00100350, a0  = 272, (wrb) a0  <-- 0
       0     3218        M 0x80000944 bge     zero, a4, pc + 80      #; a4  = 6, not taken
       0     3219        M 0x80000948 addi    a7, a4, -1             #; a4  = 6, (wrb) a7  <-- 5
       0     3220        M 0x8000094c slli    t1, a7, 3              #; a7  = 5, (wrb) t1  <-- 40
       0     3229        M 0x80000950 slli    s5, a4, 3              #; a4  = 6, (wrb) s5  <-- 48
       0     3230        M 0x80000954 mul     s0, s5, t3             #; s5  = 48, t3  = 4
       0     3231        M 0x80000958 mul     t0, s2, a7             #; s2  = 56, a7  = 5
       0     3233        M                                           #; (acc) t2  <-- 0x01d283b3
       0     3234        M                                           #; (acc) t2  <-- 0x01d283b3
       0     3235        M 0x8000095c add     t2, t0, t4             #; t0  = 280, t4  = 48, (wrb) t2  <-- 328
       0     3241        M 0x80000960 add     t5, t2, a2             #; t2  = 328, a2  = 0x001000f0, (wrb) t5  <-- 0x00100238
       0     3242        M 0x80000964 beqz    a0, pc + 112           #; a0  = 0, taken, goto 0x800009d4
       0     3264        M 0x800009d4 sltu    a3, t6, a2             #; t6  = 0x00100350, a2  = 0x001000f0, (wrb) a3  <-- 0
       0     3265        M 0x800009d8 add     s3, t1, s0             #; t1  = 40, s0  = 192, (wrb) s3  <-- 232
       0     3266        M 0x800009dc bgeu    t5, t2, pc - 104       #; t5  = 0x00100238, t2  = 328, taken, goto 0x80000974
       0     3267        M 0x80000974 sltu    s0, t5, s7             #; t5  = 0x00100238, s7  = 0x00100240, (wrb) s0  <-- 1
       0     3268        M 0x80000978 add     s4, s3, a1             #; s3  = 232, a1  = 0x00100000, (wrb) s4  <-- 0x001000e8
       0     3269        M 0x8000097c bnez    a0, pc + 112           #; a0  = 0, not taken
       0     3279        M 0x80000980 sltu    s1, t6, a1             #; t6  = 0x00100350, a1  = 0x00100000, (wrb) s1  <-- 0
       0     3280        M 0x80000984 or      a3, a3, s0             #; a3  = 0, s0  = 1, (wrb) a3  <-- 1
       0     3281        M 0x80000988 bltu    s4, s3, pc + 112       #; s4  = 0x001000e8, s3  = 232, not taken
       0     3282        M 0x8000098c sltu    s0, s4, s7             #; s4  = 0x001000e8, s7  = 0x00100240, (wrb) s0  <-- 1
       0     3291        M 0x80000990 j       pc + 0x6c              #; goto 0x800009fc
       0     3303        M 0x800009fc or      s0, s0, s1             #; s0  = 1, s1  = 0, (wrb) s0  <-- 1
       0     3315        M 0x80000a00 and     s0, a3, s0             #; a3  = 1, s0  = 1, (wrb) s0  <-- 1
       0     3316        M 0x80000a04 srli    a3, s7, 20             #; s7  = 0x00100240, (wrb) a3  <-- 1
       0     3317        M 0x80000a08 snez    s1, a3                 #; a3  = 1, (wrb) s1  <-- 1
       0     3318        M 0x80000a0c lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     3327        M 0x80000a10 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     3328        M 0x80000a14 beqz    a0, pc + 12            #; a0  = 0, taken, goto 0x80000a20
       0     3339        M 0x80000a20 sltu    a0, t6, a3             #; t6  = 0x00100350, a3  = 0x00120001, (wrb) a0  <-- 1
       0     3340        M 0x80000a24 and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     3341        M 0x80000a28 and     a0, a0, s0             #; a0  = 1, s0  = 1, (wrb) a0  <-- 1
       0     3342        M 0x80000a2c srli    s1, a1, 20             #; a1  = 0x00100000, (wrb) s1  <-- 1
       0     3351        M 0x80000a30 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
       0     3352        M 0x80000a34 bgeu    s4, s3, pc + 12        #; s4  = 0x001000e8, s3  = 232, taken, goto 0x80000a40
       0     3363        M 0x80000a40 sltu    s0, s4, a3             #; s4  = 0x001000e8, a3  = 0x00120001, (wrb) s0  <-- 1
       0     3364        M 0x80000a44 and     s1, s1, s0             #; s1  = 1, s0  = 1, (wrb) s1  <-- 1
       0     3365        M 0x80000a48 and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     3366        M 0x80000a4c srli    s1, a2, 20             #; a2  = 0x001000f0, (wrb) s1  <-- 1
       0     3375        M 0x80000a50 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
       0     3376        M 0x80000a54 bgeu    t5, t2, pc + 12        #; t5  = 0x00100238, t2  = 328, taken, goto 0x80000a60
       0     3387        M 0x80000a60 sltu    a3, t5, a3             #; t5  = 0x00100238, a3  = 0x00120001, (wrb) a3  <-- 1
       0     3388        M 0x80000a64 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     3389        M 0x80000a68 and     a0, a3, a0             #; a3  = 1, a0  = 1, (wrb) a0  <-- 1
       0     3390        M 0x80000a6c beqz    a0, pc + 252           #; a0  = 1, not taken
       0     3399        M 0x80000a70 li      a0, 0                  #; (wrb) a0  <-- 0
       0     3400        M 0x80000a74 li      t4, 8                  #; (wrb) t4  <-- 8
       0     3401        M 0x80000a78 li      s1, 64                 #; (wrb) s1  <-- 64
       0     3402        M 0x80000a7c scfgw   a6, s1                 #; a6  = 6, s1  = 64
       0     3411        M 0x80000a80 li      s1, 192                #; (wrb) s1  <-- 192
       0     3412        M 0x80000a84 scfgw   t4, s1                 #; t4  = 8, s1  = 192
       0     3413        M 0x80000a88 li      s1, 96                 #; (wrb) s1  <-- 96
       0     3414        M 0x80000a8c scfgw   t3, s1                 #; t3  = 4, s1  = 96
       0     3423        M 0x80000a90 li      s1, 224                #; (wrb) s1  <-- 224
       0     3424        M 0x80000a94 scfgw   t4, s1                 #; t4  = 8, s1  = 224
       0     3425        M 0x80000a98 li      s1, 32                 #; (wrb) s1  <-- 32
       0     3426        M 0x80000a9c scfgw   zero, s1               #; s1  = 32
       0     3435        M 0x80000aa0 scfgwi  s7, 928                #; s7  = 0x00100240
       0     3436        M 0x80000aa4 li      s1, 1                  #; (wrb) s1  <-- 1
       0     3437        M 0x80000aa8 addi    s0, s1, 64             #; s1  = 1, (wrb) s0  <-- 65
       0     3438        M 0x80000aac scfgw   a7, s0                 #; a7  = 5, s0  = 65, (acc) ra  <-- 0x0088a0ab
       0     3447        M 0x80000ab0 addi    s0, s1, 192            #; s1  = 1, (wrb) s0  <-- 193
       0     3448        M 0x80000ab4 scfgw   t4, s0                 #; t4  = 8, s0  = 193
       0     3449        M 0x80000ab8 sub     s0, zero, t1           #; t1  = 40, (wrb) s0  <-- -40
       0     3450        M 0x80000abc addi    a3, s1, 96             #; s1  = 1, (wrb) a3  <-- 97
       0     3459        M 0x80000ac0 scfgw   a6, a3                 #; a6  = 6, a3  = 97
       0     3460        M 0x80000ac4 addi    a3, s1, 224            #; s1  = 1, (wrb) a3  <-- 225
       0     3461        M 0x80000ac8 scfgw   s0, a3                 #; s0  = -40, a3  = 225
       0     3462        M 0x80000acc addi    a3, s1, 128            #; s1  = 1, (wrb) a3  <-- 129
       0     3471        M 0x80000ad0 addi    s0, s1, 256            #; s1  = 1, (wrb) s0  <-- 257
       0     3472        M 0x80000ad4 scfgw   t3, a3                 #; t3  = 4, a3  = 129
       0     3473        M 0x80000ad8 scfgw   t4, s0                 #; t4  = 8, s0  = 257
       0     3474        M 0x80000adc addi    a3, s1, 32             #; s1  = 1, (wrb) a3  <-- 33
       0     3483        M 0x80000ae0 scfgw   zero, a3               #; a3  = 33
       0     3484        M 0x80000ae4 scfgwi  a1, 833                #; a1  = 0x00100000
       0     3485        M 0x80000ae8 li      a1, 2                  #; (wrb) a1  <-- 2
       0     3486        M 0x80000aec addi    a3, a1, 64             #; a1  = 2, (wrb) a3  <-- 66
       0     3495        M 0x80000af0 addi    s1, a1, 192            #; a1  = 2, (wrb) s1  <-- 194
       0     3496        M 0x80000af4 scfgw   a7, a3                 #; a7  = 5, a3  = 66
       0     3497        M 0x80000af8 scfgw   s2, s1                 #; s2  = 56, s1  = 194
       0     3498        M 0x80000afc sub     a3, t4, t0             #; t4  = 8, t0  = 280, (wrb) a3  <-- -272
       0     3507        M 0x80000b00 addi    s1, a1, 96             #; a1  = 2, (wrb) s1  <-- 98
       0     3508        M 0x80000b04 addi    s0, a1, 224            #; a1  = 2, (wrb) s0  <-- 226
       0     3509        M 0x80000b08 scfgw   a6, s1                 #; a6  = 6, s1  = 98
       0     3510        M 0x80000b0c scfgw   a3, s0                 #; a3  = -272, s0  = 226
       0     3519        M 0x80000b10 sub     a3, zero, t2           #; t2  = 328, (wrb) a3  <-- -328
       0     3520        M 0x80000b14 addi    s1, a1, 128            #; a1  = 2, (wrb) s1  <-- 130
       0     3521        M 0x80000b18 addi    s0, a1, 256            #; a1  = 2, (wrb) s0  <-- 258
       0     3522        M 0x80000b1c scfgw   t3, s1                 #; t3  = 4, s1  = 130
       0     3531        M 0x80000b20 scfgw   a3, s0                 #; a3  = -328, s0  = 258
       0     3532        M 0x80000b24 addi    a1, a1, 32             #; a1  = 2, (wrb) a1  <-- 34
       0     3533        M 0x80000b28 scfgw   zero, a1               #; a1  = 34
       0     3534        M 0x80000b2c scfgwi  a2, 834                #; a2  = 0x001000f0
       0     3544        M 0x80000b30 csrrsi  a1, ssr, 1             #; 
       0     3545        M 0x80000b38 li      a1, 0                  #; (wrb) a1  <-- 0
                         M 0x80000b34 fcvt.d.w ft3, zero             #; ac1  = 0
       0     3546        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3556        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3557        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3558        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3559        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 0.0
       0     3561        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3562        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 9.865881
       0     3563        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 9.865881
       0     3564        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     3565        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3566        M                                           #; (f:fpu) ft4  <-- 167.7199770
       0     3567        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 167.7199770
       0     3568        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3570        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 611.6846220
       0     3571        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 611.6846220
       0     3573        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3574        M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3575        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 15.705, ft4  = 690.6116700
       0     3578        M                                           #; (f:fpu) ft4  <-- 1134.5763150
       0     3579        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 18.846, ft4  = 1134.5763150
       0     3582        M                                           #; (f:fpu) ft4  <-- 2081.7008910
       0     3586        M 0x80000b54 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     3587        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2081.7008910, ft4  = 2081.7008910
       0     3588        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft0  <-- 2081.7008910
       0     3590        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3591        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3592        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3593        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 3.141, ft4  = 0.0
       0     3595        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3596        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 19.7317620
       0     3597        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 6.282, ft4  = 19.7317620
       0     3598        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     3599        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3600        M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     3601        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 9.423, ft4  = 197.3176200
       0     3602        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3604        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 670.8799080
       0     3605        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 12.564, ft4  = 670.8799080
       0     3607        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3608        M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3609        M 0x80000b54 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 15.705, ft4  = 789.2704800
       0     3610        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80000b3c
       0     3611        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3612        M                                           #; (f:fpu) ft4  <-- 1282.5645300
       0     3613        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 18.846, ft4  = 1282.5645300
       0     3615        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     3616        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 2288.8843920
       0     3617        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2288.8843920, ft4  = 2288.8843920
       0     3618        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2288.8843920
       0     3619        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3620        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 3.141, ft4  = 0.0
       0     3621        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     3622        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3623        M                                           #; (f:fpu) ft4  <-- 29.5976430
       0     3624        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 6.282, ft4  = 29.5976430
       0     3625        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3627        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 226.9152630
       0     3628        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 9.423, ft4  = 226.9152630
       0     3630        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3631        M                                           #; (f:fpu) ft4  <-- 730.0751940
       0     3632        M 0x80000b54 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 12.564, ft4  = 730.0751940
       0     3633        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80000b3c
       0     3634        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3635        M                                           #; (f:fpu) ft4  <-- 887.9292900
       0     3636        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 15.705, ft4  = 887.9292900
       0     3638        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     3639        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3640        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 18.846, ft4  = 1430.5527450
       0     3641        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3642        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3643        M                                           #; (f:fpu) ft4  <-- 2496.0678930
       0     3644        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2496.0678930, ft4  = 2496.0678930
       0     3645        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2496.0678930
       0     3646        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3647        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 3.141, ft4  = 0.0
       0     3648        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3650        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 39.4635240
       0     3651        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 6.282, ft4  = 39.4635240
       0     3653        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3654        M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     3655        M 0x80000b54 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 9.423, ft4  = 256.5129060
       0     3656        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80000b3c
       0     3657        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3658        M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3659        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 12.564, ft4  = 789.2704800
       0     3661        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     3662        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 986.5881000
       0     3663        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 15.705, ft4  = 986.5881000
       0     3664        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3665        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3666        M                                           #; (f:fpu) ft4  <-- 1578.5409600
       0     3667        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 18.846, ft4  = 1578.5409600
       0     3668        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3670        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     3671        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2703.2513940, ft4  = 2703.2513940
       0     3672        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2703.2513940
       0     3673        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3674        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 3.141, ft4  = 0.0
       0     3676        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3677        M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     3678        M 0x80000b54 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 6.282, ft4  = 49.3294050
       0     3679        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80000b3c
       0     3680        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3681        M                                           #; (f:fpu) ft4  <-- 286.1105490
       0     3682        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 9.423, ft4  = 286.1105490
       0     3684        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     3685        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3686        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 12.564, ft4  = 848.4657660
       0     3687        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3688        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3689        M                                           #; (f:fpu) ft4  <-- 1085.2469100
       0     3690        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 15.705, ft4  = 1085.2469100
       0     3691        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3693        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 1726.5291750
       0     3694        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 18.846, ft4  = 1726.5291750
       0     3696        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
       0     3697        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 2910.4348950
       0     3698        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2910.4348950, ft4  = 2910.4348950
       0     3699        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2910.4348950
       0     3700        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3701        M 0x80000b54 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 3.141, ft4  = 0.0
       0     3702        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80000b3c
       0     3703        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3704        M                                           #; (f:fpu) ft4  <-- 59.1952860
       0     3705        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 6.282, ft4  = 59.1952860
       0     3707        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     3708        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 315.7081920
       0     3709        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 9.423, ft4  = 315.7081920
       0     3710        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3711        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3712        M                                           #; (f:fpu) ft4  <-- 907.6610520
       0     3713        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 12.564, ft4  = 907.6610520
       0     3714        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3716        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 1183.9057200
       0     3717        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 15.705, ft4  = 1183.9057200
       0     3719        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
       0     3720        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     3721        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 18.846, ft4  = 1874.5173900
       0     3722        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3724        M 0x80000b54 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 1933.7126760
       0     3725        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 1933.7126760, ft4  = 1933.7126760
       0     3726        M 0x80000b5c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1933.7126760
       0     3727        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3728        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 3.141, ft4  = 0.0
       0     3731        M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3732        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 6.282, ft4  = 69.0611670
       0     3735        M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     3736        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 9.423, ft4  = 345.3058350
       0     3738        M 0x80000b60 bne     a0, s6, pc - 40        #; a0  = 1, s6  = 5, taken, goto 0x80000b38
       0     3739        M 0x80000b38 li      a1, 0                  #; (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     3740        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 12.564, ft4  = 374.9034780
       0     3742        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3743        M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3744        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 15.705, ft4  = 690.6116700
       0     3745        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3747        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3748        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 18.846, ft4  = 1430.5527450
       0     3750        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     3751        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 1548.9433170
       0     3752        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 1548.9433170, ft4  = 1548.9433170
       0     3753        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1548.9433170
       0     3754        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3755        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 21.9870000, ft4  = 0.0
       0     3756        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
       0     3757        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3758        M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3759        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 25.128, ft4  = 69.0611670
       0     3761        M 0x80000b54 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     3762        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80000b3c
                         M                                           #; (f:fpu) ft4  <-- 700.4775510
       0     3763        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 28.269, ft4  = 700.4775510
       0     3765        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3766        M                                           #; (f:fpu) ft4  <-- 2032.3714860
       0     3767        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 31.41, ft4  = 2032.3714860
       0     3768        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3770        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 2229.6891060
       0     3771        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 34.551, ft4  = 2229.6891060
       0     3773        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     3774        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     3775        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 37.692, ft4  = 3206.4113250
       0     3776        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     3777        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3778        M                                           #; (f:fpu) ft4  <-- 5100.6604770
       0     3779        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 5100.6604770, ft4  = 5100.6604770
       0     3780        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5100.6604770
       0     3781        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3782        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 21.9870000, ft4  = 0.0
       0     3784        M 0x80000b54 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
       0     3785        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80000b3c
                         M                                           #; (f:fpu) ft4  <-- 138.1223340
       0     3786        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 25.128, ft4  = 138.1223340
       0     3788        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3789        M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3790        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 28.269, ft4  = 848.4657660
       0     3791        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3793        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 2269.1526300
       0     3794        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 31.41, ft4  = 2269.1526300
       0     3796        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     3797        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2565.1290600
       0     3798        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 34.551, ft4  = 2565.1290600
       0     3799        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     3800        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3801        M                                           #; (f:fpu) ft4  <-- 3650.3759700
       0     3802        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 37.692, ft4  = 3650.3759700
       0     3803        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3805        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 5663.0156940
       0     3806        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 5663.0156940, ft4  = 5663.0156940
       0     3807        M 0x80000b54 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5663.0156940
       0     3808        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80000b3c
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3809        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 21.9870000, ft4  = 0.0
       0     3811        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3812        M                                           #; (f:fpu) ft4  <-- 207.1835010
       0     3813        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 25.128, ft4  = 207.1835010
       0     3814        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3816        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 996.4539810
       0     3817        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 28.269, ft4  = 996.4539810
       0     3819        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     3820        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2505.9337740
       0     3821        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 31.41, ft4  = 2505.9337740
       0     3822        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     3823        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3824        M                                           #; (f:fpu) ft4  <-- 2900.5690140
       0     3825        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 34.551, ft4  = 2900.5690140
       0     3826        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3828        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     3829        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 37.692, ft4  = 4094.3406150
       0     3830        M 0x80000b54 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
       0     3831        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80000b3c
       0     3832        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 6225.3709110
       0     3833        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 6225.3709110, ft4  = 6225.3709110
       0     3834        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6225.3709110
       0     3835        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3836        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 21.9870000, ft4  = 0.0
       0     3837        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3839        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 276.2446680
       0     3840        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 25.128, ft4  = 276.2446680
       0     3842        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     3843        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 1144.4421960
       0     3844        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 28.269, ft4  = 1144.4421960
       0     3845        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     3846        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3847        M                                           #; (f:fpu) ft4  <-- 2742.7149180
       0     3848        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 31.41, ft4  = 2742.7149180
       0     3849        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3851        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 3236.0089680
       0     3852        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 34.551, ft4  = 3236.0089680
       0     3853        M 0x80000b54 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
       0     3854        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80000b3c
       0     3855        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 4538.3052600
       0     3856        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 37.692, ft4  = 4538.3052600
       0     3857        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3859        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 6787.7261280
       0     3860        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 6787.7261280, ft4  = 6787.7261280
       0     3861        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6787.7261280
       0     3862        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3863        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 21.9870000, ft4  = 0.0
       0     3865        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     3866        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     3867        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 25.128, ft4  = 345.3058350
       0     3868        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     3869        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3870        M                                           #; (f:fpu) ft4  <-- 1292.4304110
       0     3871        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 28.269, ft4  = 1292.4304110
       0     3872        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3874        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2979.4960620
       0     3875        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 31.41, ft4  = 2979.4960620
       0     3876        M 0x80000b54 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
       0     3877        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80000b3c
       0     3878        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 3571.4489220
       0     3879        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 34.551, ft4  = 3571.4489220
       0     3880        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3882        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 4982.2699050
       0     3883        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 37.692, ft4  = 4982.2699050
       0     3885        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3886        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 7350.0813450
       0     3887        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 7350.0813450, ft4  = 7350.0813450
       0     3888        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7350.0813450
       0     3889        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3890        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 21.9870000, ft4  = 0.0
       0     3891        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     3892        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3893        M                                           #; (f:fpu) ft4  <-- 414.3670020
       0     3894        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 25.128, ft4  = 414.3670020
       0     3895        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3897        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 1440.4186260
       0     3898        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 28.269, ft4  = 1440.4186260
       0     3899        M 0x80000b54 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
       0     3900        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
       0     3901        M 0x80000b5c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 3216.2772060
       0     3902        M 0x80000b60 bne     a0, s6, pc - 40        #; a0  = 2, s6  = 5, taken, goto 0x80000b38
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 31.41, ft4  = 3216.2772060
       0     3903        M 0x80000b38 li      a1, 0                  #; (wrb) a1  <-- 0
       0     3904        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3905        M                                           #; (f:fpu) ft4  <-- 3906.8888760
       0     3906        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 34.551, ft4  = 3906.8888760
       0     3908        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     3909        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 5426.2345500
       0     3910        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 37.692, ft4  = 5426.2345500
       0     3911        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3912        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3913        M                                           #; (f:fpu) ft4  <-- 5544.6251220
       0     3914        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 5544.6251220, ft4  = 5544.6251220
       0     3915        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5544.6251220
       0     3916        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3917        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 21.9870000, ft4  = 0.0
       0     3918        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3920        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 483.4281690
       0     3921        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 25.128, ft4  = 483.4281690
       0     3923        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3924        M                                           #; (f:fpu) ft4  <-- 1588.4068410
       0     3925        M 0x80000b54 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 28.269, ft4  = 1588.4068410
       0     3926        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80000b3c
       0     3927        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3928        M                                           #; (f:fpu) ft4  <-- 1677.1997700
       0     3929        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 31.41, ft4  = 1677.1997700
       0     3931        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     3932        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 2466.4702500
       0     3933        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 34.551, ft4  = 2466.4702500
       0     3934        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3935        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3936        M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     3937        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 37.692, ft4  = 4094.3406150
       0     3938        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3940        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 4331.1217590
       0     3941        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4331.1217590, ft4  = 4331.1217590
       0     3942        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4331.1217590
       0     3943        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3944        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 40.833, ft4  = 0.0
       0     3946        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3947        M                                           #; (f:fpu) ft4  <-- 128.2564530
       0     3948        M 0x80000b54 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 43.9740000, ft4  = 128.2564530
       0     3949        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80000b3c
       0     3950        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3951        M                                           #; (f:fpu) ft4  <-- 1233.2351250
       0     3952        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 47.115, ft4  = 1233.2351250
       0     3954        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     3955        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 3453.0583500
       0     3956        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 50.256, ft4  = 3453.0583500
       0     3957        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3958        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3959        M                                           #; (f:fpu) ft4  <-- 3768.7665420
       0     3960        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 53.397, ft4  = 3768.7665420
       0     3961        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3963        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 5278.2463350
       0     3964        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 56.538, ft4  = 5278.2463350
       0     3966        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
       0     3967        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 8119.6200630
       0     3968        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 8119.6200630, ft4  = 8119.6200630
       0     3969        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 8119.6200630
       0     3970        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3971        M 0x80000b54 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 40.833, ft4  = 0.0
       0     3972        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80000b3c
       0     3973        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     3974        M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     3975        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 43.9740000, ft4  = 256.5129060
       0     3977        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     3978        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 1499.6139120
       0     3979        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 47.115, ft4  = 1499.6139120
       0     3980        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     3981        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     3982        M                                           #; (f:fpu) ft4  <-- 3867.4253520
       0     3983        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 50.256, ft4  = 3867.4253520
       0     3984        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     3986        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 4340.9876400
       0     3987        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 53.397, ft4  = 4340.9876400
       0     3989        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
       0     3990        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 6018.1874100
       0     3991        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 56.538, ft4  = 6018.1874100
       0     3992        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
       0     3994        M 0x80000b54 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 9037.1469960
       0     3995        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 9037.1469960, ft4  = 9037.1469960
       0     3996        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9037.1469960
       0     3997        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3998        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 40.833, ft4  = 0.0
       0     4000        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     4001        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 384.7693590
       0     4002        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 43.9740000, ft4  = 384.7693590
       0     4003        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
       0     4004        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     4005        M                                           #; (f:fpu) ft4  <-- 1765.9926990
       0     4006        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 47.115, ft4  = 1765.9926990
       0     4007        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     4009        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 4281.7923540
       0     4010        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 50.256, ft4  = 4281.7923540
       0     4012        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
       0     4013        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 4913.2087380
       0     4014        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 53.397, ft4  = 4913.2087380
       0     4015        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
       0     4017        M 0x80000b54 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 6758.1284850
       0     4018        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 56.538, ft4  = 6758.1284850
       0     4019        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4021        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 9954.6739290
       0     4022        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 9954.6739290, ft4  = 9954.6739290
       0     4023        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9954.6739290
       0     4024        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4025        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 40.833, ft4  = 0.0
       0     4026        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4028        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 513.0258120
       0     4029        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 43.9740000, ft4  = 513.0258120
       0     4031        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4032        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2032.3714860
       0     4033        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 47.115, ft4  = 2032.3714860
       0     4034        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4035        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4036        M                                           #; (f:fpu) ft4  <-- 4696.1593560
       0     4037        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 50.256, ft4  = 4696.1593560
       0     4038        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4040        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 5485.4298360
       0     4041        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 53.397, ft4  = 5485.4298360
       0     4044        M 0x80000b54 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 7498.0695600
       0     4045        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 56.538, ft4  = 7498.0695600
       0     4046        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4048        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 10872.2008620
       0     4049        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 10872.2008620, ft4  = 10872.2008620
       0     4050        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 10872.2008620
       0     4051        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4052        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 40.833, ft4  = 0.0
       0     4053        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4055        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 641.2822650
       0     4056        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 43.9740000, ft4  = 641.2822650
       0     4058        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4059        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2298.7502730
       0     4060        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 47.115, ft4  = 2298.7502730
       0     4061        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4062        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4063        M                                           #; (f:fpu) ft4  <-- 5110.5263580
       0     4064        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 50.256, ft4  = 5110.5263580
       0     4065        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4067        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 6057.6509340
       0     4068        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 53.397, ft4  = 6057.6509340
       0     4071        M 0x80000b54 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 8238.0106350
       0     4072        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 56.538, ft4  = 8238.0106350
       0     4073        M 0x80000b5c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4074        M 0x80000b60 bne     a0, s6, pc - 40        #; a0  = 3, s6  = 5, taken, goto 0x80000b38
       0     4075        M 0x80000b38 li      a1, 0                  #; (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 11789.7277950
       0     4076        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 11789.7277950, ft4  = 11789.7277950
       0     4077        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 11789.7277950
       0     4078        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     4079        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 40.833, ft4  = 0.0
       0     4080        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     4081        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4082        M                                           #; (f:fpu) ft4  <-- 769.5387180
       0     4083        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 43.9740000, ft4  = 769.5387180
       0     4084        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     4086        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 2565.1290600
       0     4087        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 47.115, ft4  = 2565.1290600
       0     4089        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4090        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 5524.8933600
       0     4091        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 50.256, ft4  = 5524.8933600
       0     4092        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
       0     4093        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4094        M                                           #; (f:fpu) ft4  <-- 6629.8720320
       0     4095        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 53.397, ft4  = 6629.8720320
       0     4098        M 0x80000b54 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 8977.9517100
       0     4099        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 56.538, ft4  = 8977.9517100
       0     4100        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4102        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 9155.5375680
       0     4103        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 9155.5375680, ft4  = 9155.5375680
       0     4104        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9155.5375680
       0     4105        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4106        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 40.833, ft4  = 0.0
       0     4107        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4109        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 897.7951710
       0     4110        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 43.9740000, ft4  = 897.7951710
       0     4112        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4113        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2831.5078470
       0     4114        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 47.115, ft4  = 2831.5078470
       0     4115        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4116        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4117        M                                           #; (f:fpu) ft4  <-- 2979.4960620
       0     4118        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 50.256, ft4  = 2979.4960620
       0     4119        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4121        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4122        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 53.397, ft4  = 4242.3288300
       0     4125        M 0x80000b54 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 6758.1284850
       0     4126        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 56.538, ft4  = 6758.1284850
       0     4127        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4129        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 7113.3002010
       0     4130        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 7113.3002010, ft4  = 7113.3002010
       0     4131        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7113.3002010
       0     4132        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4133        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 59.679, ft4  = 0.0
       0     4134        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4136        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 187.4517390
       0     4137        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 62.82, ft4  = 187.4517390
       0     4139        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4140        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 1765.9926990
       0     4141        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 3.141, ft4  = 1765.9926990
       0     4142        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4143        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4144        M                                           #; (f:fpu) ft4  <-- 1913.9809140
       0     4145        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 6.282, ft4  = 1913.9809140
       0     4146        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4148        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 1953.4444380
       0     4149        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 9.423, ft4  = 1953.4444380
       0     4152        M 0x80000b54 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 2219.8232250
       0     4153        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 12.564, ft4  = 2219.8232250
       0     4154        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4156        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 2851.2396090
       0     4157        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2851.2396090, ft4  = 2851.2396090
       0     4158        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2851.2396090
       0     4159        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4160        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 59.679, ft4  = 0.0
       0     4161        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4163        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     4164        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 62.82, ft4  = 374.9034780
       0     4166        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4167        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2150.7620580
       0     4168        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 3.141, ft4  = 2150.7620580
       0     4169        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4170        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4171        M                                           #; (f:fpu) ft4  <-- 2308.6161540
       0     4172        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 6.282, ft4  = 2308.6161540
       0     4173        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4175        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2367.8114400
       0     4176        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 9.423, ft4  = 2367.8114400
       0     4179        M 0x80000b54 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 2663.7878700
       0     4180        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 12.564, ft4  = 2663.7878700
       0     4181        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4183        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3334.6677780
       0     4184        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 3334.6677780, ft4  = 3334.6677780
       0     4185        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3334.6677780
       0     4186        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4187        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 59.679, ft4  = 0.0
       0     4188        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4190        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 562.3552170
       0     4191        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 62.82, ft4  = 562.3552170
       0     4193        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4194        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2535.5314170
       0     4195        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 3.141, ft4  = 2535.5314170
       0     4196        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4197        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4198        M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     4199        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 6.282, ft4  = 2703.2513940
       0     4200        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4202        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2782.1784420
       0     4203        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 9.423, ft4  = 2782.1784420
       0     4206        M 0x80000b54 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3107.7525150
       0     4207        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 12.564, ft4  = 3107.7525150
       0     4208        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4210        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3818.0959470
       0     4211        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 3818.0959470, ft4  = 3818.0959470
       0     4212        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3818.0959470
       0     4213        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4214        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 59.679, ft4  = 0.0
       0     4215        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4217        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 749.8069560
       0     4218        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 62.82, ft4  = 749.8069560
       0     4220        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4221        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2920.3007760
       0     4222        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 3.141, ft4  = 2920.3007760
       0     4223        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4224        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4225        M                                           #; (f:fpu) ft4  <-- 3097.8866340
       0     4226        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 6.282, ft4  = 3097.8866340
       0     4227        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4229        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 3196.5454440
       0     4230        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 9.423, ft4  = 3196.5454440
       0     4233        M 0x80000b54 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 3551.7171600
       0     4234        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 12.564, ft4  = 3551.7171600
       0     4235        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4237        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4301.5241160
       0     4238        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4301.5241160, ft4  = 4301.5241160
       0     4239        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4301.5241160
       0     4240        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4241        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 59.679, ft4  = 0.0
       0     4242        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4244        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 937.2586950
       0     4245        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 62.82, ft4  = 937.2586950
       0     4247        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4248        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 3305.0701350
       0     4249        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 3.141, ft4  = 3305.0701350
       0     4250        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4251        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4252        M                                           #; (f:fpu) ft4  <-- 3492.5218740
       0     4253        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 6.282, ft4  = 3492.5218740
       0     4254        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4256        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 3610.9124460
       0     4257        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 9.423, ft4  = 3610.9124460
       0     4260        M 0x80000b54 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 3995.6818050
       0     4261        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 12.564, ft4  = 3995.6818050
       0     4262        M 0x80000b5c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4263        M 0x80000b60 bne     a0, s6, pc - 40        #; a0  = 4, s6  = 5, taken, goto 0x80000b38
       0     4264        M 0x80000b38 li      a1, 0                  #; (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 4784.9522850
       0     4265        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4784.9522850, ft4  = 4784.9522850
       0     4266        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4784.9522850
       0     4267        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     4268        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 59.679, ft4  = 0.0
       0     4269        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
       0     4270        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4271        M                                           #; (f:fpu) ft4  <-- 1124.7104340
       0     4272        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 62.82, ft4  = 1124.7104340
       0     4273        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     4275        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 3689.8394940
       0     4276        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 3.141, ft4  = 3689.8394940
       0     4278        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4279        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 3887.1571140
       0     4280        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 6.282, ft4  = 3887.1571140
       0     4281        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
       0     4282        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4283        M                                           #; (f:fpu) ft4  <-- 4025.2794480
       0     4284        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 9.423, ft4  = 4025.2794480
       0     4287        M 0x80000b54 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 4439.6464500
       0     4288        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 12.564, ft4  = 4439.6464500
       0     4289        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4291        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4479.1099740
       0     4292        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4479.1099740, ft4  = 4479.1099740
       0     4293        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4479.1099740
       0     4294        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4295        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 59.679, ft4  = 0.0
       0     4296        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4298        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 1312.1621730
       0     4299        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 62.82, ft4  = 1312.1621730
       0     4301        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4302        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 4074.6088530
       0     4303        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 4074.6088530
       0     4304        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4305        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4306        M                                           #; (f:fpu) ft4  <-- 4084.4747340
       0     4307        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 4084.4747340
       0     4308        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4310        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4311        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 4242.3288300
       0     4314        M 0x80000b54 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 4686.2934750
       0     4315        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 4686.2934750
       0     4316        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4318        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4765.2205230
       0     4319        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4765.2205230, ft4  = 4765.2205230
       0     4320        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4765.2205230
       0     4321        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4322        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 15.705, ft4  = 0.0
       0     4323        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4325        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     4326        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 18.846, ft4  = 49.3294050
       0     4328        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4329        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 522.8916930
       0     4330        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 21.9870000, ft4  = 522.8916930
       0     4331        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4332        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4333        M                                           #; (f:fpu) ft4  <-- 1558.8091980
       0     4334        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 25.128, ft4  = 1558.8091980
       0     4335        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4337        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 1716.6632940
       0     4338        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 28.269, ft4  = 1716.6632940
       0     4341        M 0x80000b54 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 2515.7996550
       0     4342        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 31.41, ft4  = 2515.7996550
       0     4343        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4345        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     4346        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4094.3406150, ft4  = 4094.3406150
       0     4347        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4094.3406150
       0     4348        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4349        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 15.705, ft4  = 0.0
       0     4350        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4352        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 98.65881
       0     4353        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 18.846, ft4  = 98.65881
       0     4355        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4356        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 631.4163840
       0     4357        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 21.9870000, ft4  = 631.4163840
       0     4358        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4359        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4360        M                                           #; (f:fpu) ft4  <-- 1736.3950560
       0     4361        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 25.128, ft4  = 1736.3950560
       0     4362        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4364        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 1973.1762000
       0     4365        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 28.269, ft4  = 1973.1762000
       0     4368        M 0x80000b54 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 2861.1054900
       0     4369        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 31.41, ft4  = 2861.1054900
       0     4370        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4372        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4538.3052600
       0     4373        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4538.3052600, ft4  = 4538.3052600
       0     4374        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4538.3052600
       0     4375        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4376        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 15.705, ft4  = 0.0
       0     4377        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4379        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 147.9882150
       0     4380        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 18.846, ft4  = 147.9882150
       0     4382        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4383        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 739.9410750
       0     4384        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 21.9870000, ft4  = 739.9410750
       0     4385        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4386        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4387        M                                           #; (f:fpu) ft4  <-- 1913.9809140
       0     4388        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 25.128, ft4  = 1913.9809140
       0     4389        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4391        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2229.6891060
       0     4392        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 28.269, ft4  = 2229.6891060
       0     4395        M 0x80000b54 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     4396        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 31.41, ft4  = 3206.4113250
       0     4397        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4399        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4982.2699050
       0     4400        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4982.2699050, ft4  = 4982.2699050
       0     4401        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4982.2699050
       0     4402        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4403        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 15.705, ft4  = 0.0
       0     4404        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4406        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     4407        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 18.846, ft4  = 197.3176200
       0     4409        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4410        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     4411        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 21.9870000, ft4  = 848.4657660
       0     4412        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4413        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4414        M                                           #; (f:fpu) ft4  <-- 2091.5667720
       0     4415        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 25.128, ft4  = 2091.5667720
       0     4416        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4418        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2486.2020120
       0     4419        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 28.269, ft4  = 2486.2020120
       0     4422        M 0x80000b54 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 3551.7171600
       0     4423        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80000b3c
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 31.41, ft4  = 3551.7171600
       0     4424        M 0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
       0     4426        M 0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 5426.2345500
       0     4427        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 5426.2345500, ft4  = 5426.2345500
       0     4428        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5426.2345500
       0     4429        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4430        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 15.705, ft4  = 0.0
       0     4431        M 0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     4433        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                         M                                           #; (f:fpu) ft4  <-- 246.6470250
       0     4434        M 0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 18.846, ft4  = 246.6470250
       0     4436        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
       0     4437        M 0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 956.9904570
       0     4438        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 21.9870000, ft4  = 956.9904570
       0     4439        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
       0     4440        M 0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     4441        M                                           #; (f:fpu) ft4  <-- 2269.1526300
       0     4442        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 25.128, ft4  = 2269.1526300
       0     4443        M 0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     4445        M 0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2742.7149180
       0     4446        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 28.269, ft4  = 2742.7149180
       0     4449        M 0x80000b54 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 3897.0229950
       0     4450        M 0x80000b58 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 31.41, ft4  = 3897.0229950
       0     4451        M 0x80000b5c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4452        M 0x80000b60 bne     a0, s6, pc - 40        #; a0  = 5, s6  = 5, not taken
       0     4453        M 0x80000b64 j       pc + 0xdc              #; goto 0x80000c40
                         M                                           #; (f:fpu) ft4  <-- 5870.1991950
       0     4454        M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 5870.1991950, ft4  = 5870.1991950
       0     4455        M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5870.1991950
       0     4456        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4457        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 15.705, ft4  = 0.0
       0     4460        M                                           #; (f:fpu) ft4  <-- 295.9764300
       0     4461        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 18.846, ft4  = 295.9764300
       0     4464        M                                           #; (f:fpu) ft4  <-- 1065.5151480
       0     4465        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 21.9870000, ft4  = 1065.5151480
       0     4466        M 0x80000c44 lw      s7, 12(sp)             #; sp  = 0x0011ff10, s7  <~~ Word[0x0011ff1c]
       0     4468        M                                           #; (f:fpu) ft4  <-- 2446.7384880
       0     4469        M                                           #; (lsu) s7  <-- 0
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 25.128, ft4  = 2446.7384880
       0     4470        M 0x80000c48 lw      s6, 16(sp)             #; sp  = 0x0011ff10, s6  <~~ Word[0x0011ff20]
       0     4472        M                                           #; (f:fpu) ft4  <-- 2999.2278240
       0     4473        M                                           #; (lsu) s6  <-- 0
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 28.269, ft4  = 2999.2278240
       0     4474        M 0x80000c4c lw      s5, 20(sp)             #; sp  = 0x0011ff10, s5  <~~ Word[0x0011ff24]
       0     4476        M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4477        M                                           #; (lsu) s5  <-- 0
                         M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 31.41, ft4  = 4242.3288300
       0     4478        M 0x80000c50 lw      s4, 24(sp)             #; sp  = 0x0011ff10, s4  <~~ Word[0x0011ff28]
       0     4480        M                                           #; (f:fpu) ft4  <-- 4340.9876400
       0     4481        M                                           #; (lsu) s4  <-- 0
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4340.9876400, ft4  = 4340.9876400
       0     4482        M 0x80000c54 lw      s3, 28(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff2c]
                         M 0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4340.9876400
       0     4483        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4484        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 15.705, ft4  = 0.0
       0     4485        M                                           #; (lsu) s3  <-- 0
       0     4486        M 0x80000c58 lw      s2, 32(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff30]
       0     4487        M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     4488        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 18.846, ft4  = 345.3058350
       0     4489        M                                           #; (lsu) s2  <-- 0x00100000
       0     4490        M 0x80000c5c lw      s1, 36(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff34]
       0     4491        M                                           #; (f:fpu) ft4  <-- 1174.0398390
       0     4492        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 21.9870000, ft4  = 1174.0398390
       0     4493        M                                           #; (lsu) s1  <-- 0x001000f0
       0     4494        M 0x80000c60 lw      s0, 40(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff38]
       0     4495        M                                           #; (f:fpu) ft4  <-- 1243.1010060
       0     4496        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 25.128, ft4  = 1243.1010060
       0     4497        M                                           #; (lsu) s0  <-- 0x00100240
       0     4498        M 0x80000c64 lw      ra, 44(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff3c]
       0     4499        M 0x80000c68 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                         M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     4500        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 28.269, ft4  = 1874.5173900
       0     4501        M                                           #; (lsu) ra  <-- 0x80000818
       0     4502        M 0x80000c6c ret                            #; ra  = 0x80000818, goto 0x80000818
       0     4503        M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     4504        M 0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 31.41, ft4  = 3206.4113250
       0     4505        M 0x80000818 li      a3, 5                  #; (wrb) a3  <-- 5
       0     4506        M 0x8000081c li      a4, 6                  #; (wrb) a4  <-- 6
       0     4507        M                                           #; (f:fpu) ft4  <-- 3403.7289450
       0     4508        M 0x80000820 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
                         M 0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 3403.7289450, ft4  = 3403.7289450
       0     4509        M 0x80000824 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
                         M 0x80000c40 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 3403.7289450
       0     4510        M 0x80000828 mv      a2, s1                 #; s1  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     4511        M 0x8000082c li      a5, 0                  #; (wrb) a5  <-- 0
       0     4520        M 0x80000830 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000830
       0     4521        M 0x80000834 jalr    ra, ra, 180            #; ra  = 0x80000830, (wrb) ra  <-- 0x80000838, goto 0x800008e4
       0     4534        M 0x800008e4 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     4535        M 0x800008e8 sw      ra, 44(sp)             #; sp  = 0x0011ff10, 0x80000838 ~~> Word[0x0011ff3c]
       0     4536        M 0x800008ec sw      s0, 40(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff38]
       0     4537        M 0x800008f0 sw      s1, 36(sp)             #; sp  = 0x0011ff10, 0x001000f0 ~~> Word[0x0011ff34]
       0     4538        M 0x800008f4 sw      s2, 32(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff30]
       0     4539        M 0x800008f8 sw      s3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     4540        M 0x800008fc sw      s4, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     4541        M 0x80000900 sw      s5, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     4542        M 0x80000904 sw      s6, 16(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff20]
       0     4543        M 0x80000908 sw      s7, 12(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff1c]
       0     4544        M 0x8000090c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
       0     4545        M 0x80000910 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     4546        M 0x80000914 slti    s1, a5, 1              #; a5  = 0, (wrb) s1  <-- 1
       0     4547        M 0x80000918 or      a3, a3, s1             #; a3  = 0, s1  = 1, (wrb) a3  <-- 1
       0     4548        M 0x8000091c bnez    a3, pc + 808           #; a3  = 1, taken, goto 0x80000c44
       0     4551        M 0x80000c44 lw      s7, 12(sp)             #; sp  = 0x0011ff10, s7  <~~ Word[0x0011ff1c]
       0     4554        M                                           #; (lsu) s7  <-- 0
       0     4555        M 0x80000c48 lw      s6, 16(sp)             #; sp  = 0x0011ff10, s6  <~~ Word[0x0011ff20]
       0     4558        M                                           #; (lsu) s6  <-- 0
       0     4559        M 0x80000c4c lw      s5, 20(sp)             #; sp  = 0x0011ff10, s5  <~~ Word[0x0011ff24]
       0     4562        M                                           #; (lsu) s5  <-- 0
       0     4563        M 0x80000c50 lw      s4, 24(sp)             #; sp  = 0x0011ff10, s4  <~~ Word[0x0011ff28]
       0     4566        M                                           #; (lsu) s4  <-- 0
       0     4567        M 0x80000c54 lw      s3, 28(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff2c]
       0     4570        M                                           #; (lsu) s3  <-- 0
       0     4571        M 0x80000c58 lw      s2, 32(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff30]
       0     4574        M                                           #; (lsu) s2  <-- 0x00100000
       0     4575        M 0x80000c5c lw      s1, 36(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff34]
       0     4578        M                                           #; (lsu) s1  <-- 0x001000f0
       0     4579        M 0x80000c60 lw      s0, 40(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff38]
       0     4582        M                                           #; (lsu) s0  <-- 0x00100240
       0     4583        M 0x80000c64 lw      ra, 44(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff3c]
       0     4584        M 0x80000c68 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     4586        M                                           #; (lsu) ra  <-- 0x80000838
       0     4587        M 0x80000c6c ret                            #; ra  = 0x80000838, goto 0x80000838
       0     4590        M 0x80000838 li      a1, 5                  #; (wrb) a1  <-- 5
       0     4591        M 0x8000083c li      a2, 7                  #; (wrb) a2  <-- 7
       0     4593        M 0x80000840 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     4594        M 0x80000844 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000844
       0     4595        M 0x80000848 jalr    ra, ra, 1068           #; ra  = 0x80000844, (wrb) ra  <-- 0x8000084c, goto 0x80000c70
       0     4596        M 0x80000c70 slti    a3, a1, 1              #; a1  = 5, (wrb) a3  <-- 0
       0     4597        M 0x80000c74 slti    a4, a2, 1              #; a2  = 7, (wrb) a4  <-- 0
       0     4598        M 0x80000c78 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4599        M 0x80000c7c bnez    a3, pc + 108           #; a3  = 0, not taken
       0     4616        M 0x80000c80 addi    a7, a2, -1             #; a2  = 7, (wrb) a7  <-- 6
       0     4617        M 0x80000c84 addi    a6, a1, -1             #; a1  = 5, (wrb) a6  <-- 4
       0     4618        M 0x80000c88 mul     a3, a6, a2             #; a6  = 4, a2  = 7
       0     4621        M                                           #; (acc) a3  <-- 0x011686b3
       0     4622        M 0x80000c8c add     a3, a3, a7             #; a3  = 28, a7  = 6, (wrb) a3  <-- 34
       0     4628        M 0x80000c90 slli    a4, a3, 3              #; a3  = 34, (wrb) a4  <-- 272
       0     4629        M 0x80000c94 add     a3, a4, a0             #; a4  = 272, a0  = 0x00100240, (wrb) a3  <-- 0x00100350
       0     4630        M 0x80000c98 srli    a5, a0, 20             #; a0  = 0x00100240, (wrb) a5  <-- 1
       0     4631        M 0x80000c9c snez    a5, a5                 #; a5  = 1, (wrb) a5  <-- 1
       0     4640        M 0x80000ca0 bgeu    a3, a4, pc + 80        #; a3  = 0x00100350, a4  = 272, taken, goto 0x80000cf0
       0     4663        M 0x80000cf0 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     4664        M 0x80000cf4 addi    a4, a4, 1              #; a4  = 0x00120000, (wrb) a4  <-- 0x00120001
       0     4665        M 0x80000cf8 sltu    a3, a3, a4             #; a3  = 0x00100350, a4  = 0x00120001, (wrb) a3  <-- 1
       0     4666        M 0x80000cfc and     a3, a5, a3             #; a5  = 1, a3  = 1, (wrb) a3  <-- 1
       0     4675        M 0x80000d00 beqz    a3, pc - 80            #; a3  = 1, not taken
       0     4676        M 0x80000d04 li      a5, 0                  #; (wrb) a5  <-- 0
       0     4677        M 0x80000d08 li      a3, 8                  #; (wrb) a3  <-- 8
       0     4678        M 0x80000d0c li      a4, 64                 #; (wrb) a4  <-- 64
       0     4688        M 0x80000d10 scfgw   a7, a4                 #; a7  = 6, a4  = 64
       0     4689        M 0x80000d14 li      a4, 192                #; (wrb) a4  <-- 192
       0     4690        M 0x80000d18 scfgw   a3, a4                 #; a3  = 8, a4  = 192
       0     4691        M 0x80000d1c li      a4, 96                 #; (wrb) a4  <-- 96
       0     4700        M 0x80000d20 li      a7, 224                #; (wrb) a7  <-- 224
       0     4701        M 0x80000d24 scfgw   a6, a4                 #; a6  = 4, a4  = 96
       0     4702        M 0x80000d28 scfgw   a3, a7                 #; a3  = 8, a7  = 224
       0     4703        M 0x80000d2c li      a3, 32                 #; (wrb) a3  <-- 32
       0     4712        M 0x80000d30 scfgw   zero, a3               #; a3  = 32
       0     4713        M 0x80000d34 scfgwi  a0, 800                #; a0  = 0x00100240
       0     4715        M                                           #; (acc) a0  <-- 0xd2000553
                         M 0x80000d38 csrrsi  a0, ssr, 1             #; 
       0     4716        M 0x80000d3c fcvt.d.w fa0, zero             #; ac1  = 0
       0     4717        M                                           #; (f:fpu) fa0  <-- 0.0
       0     4724        M 0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
       0     4725        M 0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     4727        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
       0     4728        M 0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2081.7008910, fa0  = 0.0
       0     4730        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
       0     4731        M 0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) fa0  <-- 2081.7008910
       0     4732        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2288.8843920, fa0  = 2081.7008910
       0     4733        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
       0     4734        M 0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     4735        M                                           #; (f:fpu) fa0  <-- 4370.5852830
       0     4736        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2496.0678930, fa0  = 4370.5852830
       0     4737        M 0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     4739        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 6866.6531760
       0     4740        M 0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2703.2513940, fa0  = 6866.6531760
       0     4742        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
       0     4743        M 0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M                                           #; (f:fpu) fa0  <-- 9569.9045700
       0     4744        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2910.4348950, fa0  = 9569.9045700
       0     4745        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
       0     4747        M                                           #; (f:fpu) fa0  <-- 12480.3394650
       0     4748        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 1933.7126760, fa0  = 12480.3394650
       0     4751        M                                           #; (f:fpu) fa0  <-- 14414.0521410
       0     4752        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 1548.9433170, fa0  = 14414.0521410
       0     4755        M                                           #; (f:fpu) fa0  <-- 15962.9954580
       0     4757        M 0x80000d50 addi    a5, a5, 1              #; a5  = 0, (wrb) a5  <-- 1
       0     4758        M 0x80000d54 bne     a5, a1, pc - 20        #; a5  = 1, a1  = 5, taken, goto 0x80000d40
       0     4759        M 0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
       0     4760        M 0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     4762        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
       0     4763        M 0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 5100.6604770, fa0  = 15962.9954580
       0     4765        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
       0     4766        M 0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) fa0  <-- 21063.6559350
       0     4767        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 5663.0156940, fa0  = 21063.6559350
       0     4768        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
       0     4769        M 0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     4770        M                                           #; (f:fpu) fa0  <-- 26726.6716290
       0     4771        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 6225.3709110, fa0  = 26726.6716290
       0     4772        M 0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     4774        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 32952.0425400
       0     4775        M 0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 6787.7261280, fa0  = 32952.0425400
       0     4777        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
       0     4778        M 0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M                                           #; (f:fpu) fa0  <-- 39739.7686680
       0     4779        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 7350.0813450, fa0  = 39739.7686680
       0     4780        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
       0     4781        M 0x80000d50 addi    a5, a5, 1              #; a5  = 1, (wrb) a5  <-- 2
       0     4782        M 0x80000d54 bne     a5, a1, pc - 20        #; a5  = 2, a1  = 5, taken, goto 0x80000d40
                         M                                           #; (f:fpu) fa0  <-- 47089.8500130
       0     4783        M 0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 5544.6251220, fa0  = 47089.8500130
       0     4784        M 0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     4786        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 52634.4751350
       0     4787        M 0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4331.1217590, fa0  = 52634.4751350
       0     4789        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
       0     4790        M 0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) fa0  <-- 56965.5968940
       0     4791        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 8119.6200630, fa0  = 56965.5968940
       0     4792        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
       0     4793        M 0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     4794        M                                           #; (f:fpu) fa0  <-- 65085.2169570
       0     4795        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 9037.1469960, fa0  = 65085.2169570
       0     4796        M 0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     4798        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 74122.3639530
       0     4799        M 0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 9954.6739290, fa0  = 74122.3639530
       0     4801        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
       0     4802        M 0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M                                           #; (f:fpu) fa0  <-- 84077.0378820
       0     4803        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 10872.2008620, fa0  = 84077.0378820
       0     4804        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
       0     4805        M 0x80000d50 addi    a5, a5, 1              #; a5  = 2, (wrb) a5  <-- 3
       0     4806        M 0x80000d54 bne     a5, a1, pc - 20        #; a5  = 3, a1  = 5, taken, goto 0x80000d40
                         M                                           #; (f:fpu) fa0  <-- 94949.2387440
       0     4807        M 0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 11789.7277950, fa0  = 94949.2387440
       0     4808        M 0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     4810        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 106738.9665390
       0     4811        M 0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 9155.5375680, fa0  = 106738.9665390
       0     4813        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
       0     4814        M 0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) fa0  <-- 115894.5041070
       0     4815        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 7113.3002010, fa0  = 115894.5041070
       0     4816        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
       0     4817        M 0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     4818        M                                           #; (f:fpu) fa0  <-- 123007.8043080
       0     4819        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2851.2396090, fa0  = 123007.8043080
       0     4820        M 0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     4822        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 125859.0439170
       0     4823        M 0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 3334.6677780, fa0  = 125859.0439170
       0     4825        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
       0     4826        M 0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M                                           #; (f:fpu) fa0  <-- 129193.7116950
       0     4827        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 3818.0959470, fa0  = 129193.7116950
       0     4828        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
       0     4829        M 0x80000d50 addi    a5, a5, 1              #; a5  = 3, (wrb) a5  <-- 4
       0     4830        M 0x80000d54 bne     a5, a1, pc - 20        #; a5  = 4, a1  = 5, taken, goto 0x80000d40
                         M                                           #; (f:fpu) fa0  <-- 133011.8076420
       0     4831        M 0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4301.5241160, fa0  = 133011.8076420
       0     4832        M 0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     4834        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 137313.3317580
       0     4835        M 0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4784.9522850, fa0  = 137313.3317580
       0     4837        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
       0     4838        M 0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) fa0  <-- 142098.2840430
       0     4839        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4479.1099740, fa0  = 142098.2840430
       0     4840        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
       0     4841        M 0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     4842        M                                           #; (f:fpu) fa0  <-- 146577.3940170
       0     4843        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4765.2205230, fa0  = 146577.3940170
       0     4844        M 0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     4846        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 151342.6145400
       0     4847        M 0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4094.3406150, fa0  = 151342.6145400
       0     4849        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
       0     4850        M 0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M                                           #; (f:fpu) fa0  <-- 155436.9551550
       0     4851        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4538.3052600, fa0  = 155436.9551550
       0     4852        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
       0     4853        M 0x80000d50 addi    a5, a5, 1              #; a5  = 4, (wrb) a5  <-- 5
       0     4854        M 0x80000d54 bne     a5, a1, pc - 20        #; a5  = 5, a1  = 5, not taken
                         M                                           #; (f:fpu) fa0  <-- 159975.2604150
       0     4855        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4982.2699050, fa0  = 159975.2604150
       0     4856        M 0x80000d5c ret                            #; ra  = 0x8000084c, goto 0x8000084c
       0     4858        M                                           #; (f:fpu) fa0  <-- 164957.5303200
       0     4859        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 5426.2345500, fa0  = 164957.5303200
       0     4862        M                                           #; (f:fpu) fa0  <-- 170383.7648700
       0     4863        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 5870.1991950, fa0  = 170383.7648700
       0     4866        M                                           #; (f:fpu) fa0  <-- 176253.9640650
       0     4867        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4340.9876400, fa0  = 176253.9640650
       0     4870        M                                           #; (f:fpu) fa0  <-- 180594.9517050
       0     4871        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 3403.7289450, fa0  = 180594.9517050
       0     4872        M 0x80000850 li      a3, 5                  #; (wrb) a3  <-- 5
                         M 0x80000d58 csrrci  a0, ssr, 1             #; 
       0     4873        M 0x80000854 li      a5, 7                  #; (wrb) a5  <-- 7
       0     4874        M 0x80000858 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
                         M                                           #; (f:fpu) fa0  <-- 183998.6806500
       0     4875        M 0x8000085c mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
                         M 0x8000084c fsgnj.d fs0, fa0, fa0          #; fa0  = 183998.6806500, fa0  = 183998.6806500
       0     4876        M                                           #; (f:fpu) fs0  <-- 183998.6806500
       0     4884        M 0x80000860 mv      a2, s1                 #; s1  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     4885        M 0x80000864 li      a4, 0                  #; (wrb) a4  <-- 0
       0     4886        M 0x80000868 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000868
       0     4887        M 0x8000086c jalr    ra, ra, 124            #; ra  = 0x80000868, (wrb) ra  <-- 0x80000870, goto 0x800008e4
       0     4898        M 0x800008e4 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     4899        M 0x800008e8 sw      ra, 44(sp)             #; sp  = 0x0011ff10, 0x80000870 ~~> Word[0x0011ff3c]
       0     4900        M 0x800008ec sw      s0, 40(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff38]
       0     4901        M 0x800008f0 sw      s1, 36(sp)             #; sp  = 0x0011ff10, 0x001000f0 ~~> Word[0x0011ff34]
       0     4902        M 0x800008f4 sw      s2, 32(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff30]
       0     4903        M 0x800008f8 sw      s3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     4904        M 0x800008fc sw      s4, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     4905        M 0x80000900 sw      s5, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     4906        M 0x80000904 sw      s6, 16(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff20]
       0     4907        M 0x80000908 sw      s7, 12(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff1c]
       0     4908        M 0x8000090c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
       0     4909        M 0x80000910 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     4910        M 0x80000914 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     4911        M 0x80000918 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     4912        M 0x8000091c bnez    a3, pc + 808           #; a3  = 0, not taken
       0     4913        M 0x80000920 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
       0     4914        M 0x80000924 addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
       0     4915        M 0x80000928 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
       0     4916        M 0x8000092c addi    t3, s6, -1             #; s6  = 5, (wrb) t3  <-- 4
       0     4917        M 0x80000930 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
       0     4918        M 0x80000934 mul     a0, s2, t3             #; s2  = 56, t3  = 4
       0     4921        M                                           #; (acc) a0  <-- 0x00ae8533
       0     4922        M 0x80000938 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
       0     4923        M 0x8000093c add     t6, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) t6  <-- 0x00100350
       0     4924        M 0x80000940 sltu    a0, t6, a0             #; t6  = 0x00100350, a0  = 272, (wrb) a0  <-- 0
       0     4925        M 0x80000944 bge     zero, a4, pc + 80      #; a4  = 0, taken, goto 0x80000994
       0     4929        M 0x80000994 srli    a1, s7, 20             #; s7  = 0x00100240, (wrb) a1  <-- 1
       0     4930        M 0x80000998 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     4931        M 0x8000099c beqz    a0, pc + 572           #; a0  = 0, taken, goto 0x80000bd8
       0     4952        M 0x80000bd8 lui     a0, 0x120              #; (wrb) a0  <-- 0x00120000
       0     4953        M 0x80000bdc addi    a0, a0, 1              #; a0  = 0x00120000, (wrb) a0  <-- 0x00120001
       0     4964        M 0x80000be0 sltu    a0, t6, a0             #; t6  = 0x00100350, a0  = 0x00120001, (wrb) a0  <-- 1
       0     4965        M 0x80000be4 and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4966        M 0x80000be8 beqz    a0, pc - 572           #; a0  = 1, not taken
       0     4967        M 0x80000bec li      a0, 0                  #; (wrb) a0  <-- 0
       0     4979        M 0x80000bf0 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4980        M 0x80000bf4 li      a2, 64                 #; (wrb) a2  <-- 64
       0     4981        M 0x80000bf8 scfgw   a6, a2                 #; a6  = 6, a2  = 64
       0     4982        M 0x80000bfc li      a2, 192                #; (wrb) a2  <-- 192
       0     4991        M 0x80000c00 scfgw   a1, a2                 #; a1  = 8, a2  = 192
       0     4992        M 0x80000c04 li      a2, 96                 #; (wrb) a2  <-- 96
       0     4993        M 0x80000c08 li      a3, 224                #; (wrb) a3  <-- 224
       0     4994        M 0x80000c0c scfgw   t3, a2                 #; t3  = 4, a2  = 96, (acc) ra  <-- 0x00ce20ab
       0     5003        M 0x80000c10 scfgw   a1, a3                 #; a1  = 8, a3  = 224
       0     5004        M 0x80000c14 li      a1, 32                 #; (wrb) a1  <-- 32
       0     5005        M 0x80000c18 scfgw   zero, a1               #; a1  = 32
       0     5006        M 0x80000c1c scfgwi  s7, 928                #; s7  = 0x00100240
       0     5016        M 0x80000c20 csrrsi  a1, ssr, 1             #; 
       0     5017        M 0x80000c28 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
                         M 0x80000c24 fcvt.d.w ft3, zero             #; ac1  = 0
       0     5018        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5020        M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5021        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5027        M 0x80000c30 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     5028        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000c2c
       0     5030        M 0x80000c30 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     5031        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5032        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5033        M 0x80000c30 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     5034        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5035        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5036        M 0x80000c30 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     5037        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5038        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5039        M 0x80000c30 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     5040        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5041        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5042        M 0x80000c30 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     5043        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5044        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5045        M 0x80000c30 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     5046        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5047        M 0x80000c38 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5048        M 0x80000c3c bne     a0, s6, pc - 20        #; a0  = 1, s6  = 5, taken, goto 0x80000c28
       0     5049        M 0x80000c28 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     5051        M 0x80000c30 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     5052        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5053        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5054        M 0x80000c30 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     5055        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5056        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5057        M 0x80000c30 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     5058        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5059        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5060        M 0x80000c30 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     5061        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5062        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5063        M 0x80000c30 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     5064        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5065        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5066        M 0x80000c30 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     5067        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5068        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5069        M 0x80000c30 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     5070        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5071        M 0x80000c38 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5072        M 0x80000c3c bne     a0, s6, pc - 20        #; a0  = 2, s6  = 5, taken, goto 0x80000c28
       0     5073        M 0x80000c28 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     5075        M 0x80000c30 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     5076        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5077        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5078        M 0x80000c30 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     5079        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5080        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5081        M 0x80000c30 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     5082        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5083        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5084        M 0x80000c30 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     5085        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5086        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5087        M 0x80000c30 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     5088        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5089        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5090        M 0x80000c30 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     5091        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5092        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5093        M 0x80000c30 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     5094        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5095        M 0x80000c38 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5096        M 0x80000c3c bne     a0, s6, pc - 20        #; a0  = 3, s6  = 5, taken, goto 0x80000c28
       0     5097        M 0x80000c28 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     5099        M 0x80000c30 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     5100        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5101        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5102        M 0x80000c30 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     5103        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5104        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5105        M 0x80000c30 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     5106        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5107        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5108        M 0x80000c30 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     5109        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5110        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5111        M 0x80000c30 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     5112        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5113        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5114        M 0x80000c30 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     5115        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5116        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5117        M 0x80000c30 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     5118        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5119        M 0x80000c38 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5120        M 0x80000c3c bne     a0, s6, pc - 20        #; a0  = 4, s6  = 5, taken, goto 0x80000c28
       0     5121        M 0x80000c28 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
       0     5123        M 0x80000c30 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     5124        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5125        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5126        M 0x80000c30 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     5127        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5128        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5129        M 0x80000c30 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     5130        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5131        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5132        M 0x80000c30 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     5133        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5134        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5135        M 0x80000c30 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     5136        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5137        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5138        M 0x80000c30 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     5139        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000c2c
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5140        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5141        M 0x80000c30 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     5142        M 0x80000c34 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5143        M 0x80000c38 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5144        M 0x80000c3c bne     a0, s6, pc - 20        #; a0  = 5, s6  = 5, not taken
       0     5148        M 0x80000c44 lw      s7, 12(sp)             #; sp  = 0x0011ff10, s7  <~~ Word[0x0011ff1c]
                         M 0x80000c40 csrrci  a0, ssr, 1             #; 
       0     5151        M                                           #; (lsu) s7  <-- 0
       0     5152        M 0x80000c48 lw      s6, 16(sp)             #; sp  = 0x0011ff10, s6  <~~ Word[0x0011ff20]
       0     5155        M                                           #; (lsu) s6  <-- 0
       0     5156        M 0x80000c4c lw      s5, 20(sp)             #; sp  = 0x0011ff10, s5  <~~ Word[0x0011ff24]
       0     5159        M                                           #; (lsu) s5  <-- 0
       0     5160        M 0x80000c50 lw      s4, 24(sp)             #; sp  = 0x0011ff10, s4  <~~ Word[0x0011ff28]
       0     5163        M                                           #; (lsu) s4  <-- 0
       0     5164        M 0x80000c54 lw      s3, 28(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff2c]
       0     5167        M                                           #; (lsu) s3  <-- 0
       0     5168        M 0x80000c58 lw      s2, 32(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff30]
       0     5171        M                                           #; (lsu) s2  <-- 0x00100000
       0     5172        M 0x80000c5c lw      s1, 36(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff34]
       0     5175        M                                           #; (lsu) s1  <-- 0x001000f0
       0     5176        M 0x80000c60 lw      s0, 40(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff38]
       0     5179        M                                           #; (lsu) s0  <-- 0x00100240
       0     5180        M 0x80000c64 lw      ra, 44(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff3c]
       0     5181        M 0x80000c68 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5183        M                                           #; (lsu) ra  <-- 0x80000870
       0     5184        M 0x80000c6c ret                            #; ra  = 0x80000870, goto 0x80000870
       0     5187        M 0x80000870 li      a1, 5                  #; (wrb) a1  <-- 5
       0     5188        M 0x80000874 li      a2, 7                  #; (wrb) a2  <-- 7
       0     5189        M 0x80000878 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     5190        M 0x8000087c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000087c
       0     5199        M 0x80000880 jalr    ra, ra, 1012           #; ra  = 0x8000087c, (wrb) ra  <-- 0x80000884, goto 0x80000c70
       0     5200        M 0x80000c70 slti    a3, a1, 1              #; a1  = 5, (wrb) a3  <-- 0
       0     5201        M 0x80000c74 slti    a4, a2, 1              #; a2  = 7, (wrb) a4  <-- 0
       0     5202        M 0x80000c78 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     5203        M 0x80000c7c bnez    a3, pc + 108           #; a3  = 0, not taken
       0     5213        M 0x80000c80 addi    a7, a2, -1             #; a2  = 7, (wrb) a7  <-- 6
       0     5214        M 0x80000c84 addi    a6, a1, -1             #; a1  = 5, (wrb) a6  <-- 4
       0     5215        M 0x80000c88 mul     a3, a6, a2             #; a6  = 4, a2  = 7
       0     5218        M                                           #; (acc) a3  <-- 0x011686b3
       0     5219        M 0x80000c8c add     a3, a3, a7             #; a3  = 28, a7  = 6, (wrb) a3  <-- 34
       0     5220        M 0x80000c90 slli    a4, a3, 3              #; a3  = 34, (wrb) a4  <-- 272
       0     5221        M 0x80000c94 add     a3, a4, a0             #; a4  = 272, a0  = 0x00100240, (wrb) a3  <-- 0x00100350
       0     5222        M 0x80000c98 srli    a5, a0, 20             #; a0  = 0x00100240, (wrb) a5  <-- 1
       0     5223        M 0x80000c9c snez    a5, a5                 #; a5  = 1, (wrb) a5  <-- 1
       0     5224        M 0x80000ca0 bgeu    a3, a4, pc + 80        #; a3  = 0x00100350, a4  = 272, taken, goto 0x80000cf0
       0     5229        M 0x80000cf0 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     5230        M 0x80000cf4 addi    a4, a4, 1              #; a4  = 0x00120000, (wrb) a4  <-- 0x00120001
       0     5231        M 0x80000cf8 sltu    a3, a3, a4             #; a3  = 0x00100350, a4  = 0x00120001, (wrb) a3  <-- 1
       0     5232        M 0x80000cfc and     a3, a5, a3             #; a5  = 1, a3  = 1, (wrb) a3  <-- 1
       0     5233        M 0x80000d00 beqz    a3, pc - 80            #; a3  = 1, not taken
       0     5234        M 0x80000d04 li      a5, 0                  #; (wrb) a5  <-- 0
       0     5235        M 0x80000d08 li      a3, 8                  #; (wrb) a3  <-- 8
       0     5236        M 0x80000d0c li      a4, 64                 #; (wrb) a4  <-- 64
       0     5237        M 0x80000d10 scfgw   a7, a4                 #; a7  = 6, a4  = 64
       0     5238        M 0x80000d14 li      a4, 192                #; (wrb) a4  <-- 192
       0     5239        M 0x80000d18 scfgw   a3, a4                 #; a3  = 8, a4  = 192
       0     5240        M 0x80000d1c li      a4, 96                 #; (wrb) a4  <-- 96
       0     5241        M 0x80000d20 li      a7, 224                #; (wrb) a7  <-- 224
       0     5242        M 0x80000d24 scfgw   a6, a4                 #; a6  = 4, a4  = 96, (acc) ra  <-- 0x00e820ab
       0     5243        M 0x80000d28 scfgw   a3, a7                 #; a3  = 8, a7  = 224, (acc) ra  <-- 0x0116a0ab
       0     5244        M 0x80000d2c li      a3, 32                 #; (wrb) a3  <-- 32
       0     5245        M 0x80000d30 scfgw   zero, a3               #; a3  = 32, (acc) ra  <-- 0x00d020ab
       0     5246        M 0x80000d34 scfgwi  a0, 800                #; a0  = 0x00100240
       0     5248        M                                           #; (acc) a0  <-- 0xd2000553
                         M 0x80000d38 csrrsi  a0, ssr, 1             #; 
       0     5249        M 0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
                         M 0x80000d3c fcvt.d.w fa0, zero             #; ac1  = 0
       0     5250        M 0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5251        M                                           #; (acc) a0  <-- 0x02a07553
       0     5252        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
       0     5253        M 0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5255        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
       0     5256        M 0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5257        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5258        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
       0     5259        M 0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     5260        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5261        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5262        M 0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     5264        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5265        M 0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5267        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
       0     5268        M 0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5269        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5270        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
       0     5272        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5273        M 0x80000d50 addi    a5, a5, 1              #; a5  = 0, (wrb) a5  <-- 1
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5274        M 0x80000d54 bne     a5, a1, pc - 20        #; a5  = 1, a1  = 5, taken, goto 0x80000d40
       0     5275        M 0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
       0     5276        M 0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5277        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5278        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
       0     5279        M 0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     5280        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5281        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5282        M 0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     5284        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5285        M 0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5287        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
       0     5288        M 0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5289        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5290        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
       0     5291        M 0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     5292        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5293        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5294        M 0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     5296        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5297        M 0x80000d50 addi    a5, a5, 1              #; a5  = 1, (wrb) a5  <-- 2
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5298        M 0x80000d54 bne     a5, a1, pc - 20        #; a5  = 2, a1  = 5, taken, goto 0x80000d40
       0     5299        M 0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
       0     5300        M 0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5301        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5302        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
       0     5303        M 0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     5304        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5305        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5306        M 0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     5308        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5309        M 0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5311        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
       0     5312        M 0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5313        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5314        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
       0     5315        M 0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     5316        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5317        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5318        M 0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     5320        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5321        M 0x80000d50 addi    a5, a5, 1              #; a5  = 2, (wrb) a5  <-- 3
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5322        M 0x80000d54 bne     a5, a1, pc - 20        #; a5  = 3, a1  = 5, taken, goto 0x80000d40
       0     5323        M 0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
       0     5324        M 0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5325        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5326        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
       0     5327        M 0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     5328        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5329        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5330        M 0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     5332        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5333        M 0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5335        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
       0     5336        M 0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5337        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5338        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
       0     5339        M 0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     5340        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5341        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5342        M 0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     5344        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5345        M 0x80000d50 addi    a5, a5, 1              #; a5  = 3, (wrb) a5  <-- 4
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5346        M 0x80000d54 bne     a5, a1, pc - 20        #; a5  = 4, a1  = 5, taken, goto 0x80000d40
       0     5347        M 0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
       0     5348        M 0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5349        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5350        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
       0     5351        M 0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     5352        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5353        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5354        M 0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     5356        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5357        M 0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5359        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
       0     5360        M 0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5361        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5362        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
       0     5363        M 0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     5364        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5365        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5366        M 0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     5368        M 0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5369        M 0x80000d50 addi    a5, a5, 1              #; a5  = 4, (wrb) a5  <-- 5
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5370        M 0x80000d54 bne     a5, a1, pc - 20        #; a5  = 5, a1  = 5, not taken
       0     5372        M 0x80000d5c ret                            #; ra  = 0x80000884, goto 0x80000884
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5373        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5376        M 0x80000884 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003884
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     5377        M 0x80000888 addi    a0, a0, -1380          #; a0  = 0x80003884, (wrb) a0  <-- 0x80003320
                         M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5380        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5381        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5384        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5385        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5388        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5389        M 0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     5390        M 0x80000d58 csrrci  a0, ssr, 1             #; 
       0     5392        M 0x8000088c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003320], (f:fpu) fa0  <-- 0.0
       0     5395        M 0x800008a0 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
       0     5401        M                                           #; (f:lsu) ft0  <-- -183998.6806500
       0     5402        M 0x80000890 fadd.d  ft0, fs0, ft0          #; fs0  = 183998.6806500, ft0  = -183998.6806500
       0     5403        M                                           #; (lsu) a2  <-- 0
       0     5404        M 0x800008a4 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
       0     5405        M 0x800008a8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028a8
                         M                                           #; (f:fpu) ft0  <-- -0.0000000
       0     5406        M 0x800008ac addi    a0, a0, 2029           #; a0  = 0x800028a8, (wrb) a0  <-- 0x80003095
                         M 0x80000894 fadd.d  ft0, ft0, fa0          #; ft0  = -0.0000000, fa0  = 0.0
       0     5407        M 0x800008b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008b0
       0     5408        M 0x800008b4 jalr    ra, ra, 1200           #; ra  = 0x800008b0, (wrb) ra  <-- 0x800008b8, goto 0x80000d60
       0     5409        M 0x80000d60 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
                         M                                           #; (f:fpu) ft0  <-- -0.0000000
       0     5410        M 0x80000d64 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008b8 ~~> Word[0x0011ff1c], (lsu) a3  <-- 0
                         M 0x80000898 fsgnjx.d fs0, ft0, ft0         #; ft0  = -0.0000000, ft0  = -0.0000000
       0     5411        M 0x80000d68 mv      t0, a0                 #; a0  = 0x80003095, (wrb) t0  <-- 0x80003095
                         M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     5412        M 0x80000d6c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 224 ~~> Word[0x0011ff3c]
                         M 0x8000089c fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff40]
       0     5422        M 0x80000d70 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 4 ~~> Word[0x0011ff38]
       0     5423        M 0x80000d74 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 5 ~~> Word[0x0011ff34]
       0     5424        M 0x80000d78 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 96 ~~> Word[0x0011ff30]
       0     5425        M 0x80000d7c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     5434        M 0x80000d80 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     5435        M 0x80000d84 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 5 ~~> Word[0x0011ff24]
       0     5436        M 0x80000d88 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     5437        M 0x80000d8c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     5446        M 0x80000d90 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001d90
       0     5447        M 0x80000d94 addi    a0, a0, -988           #; a0  = 0x80001d90, (wrb) a0  <-- 0x800019b4
       0     5448        M 0x80000d98 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     5449        M 0x80000d9c li      a2, -1                 #; (wrb) a2  <-- -1
       0     5458        M 0x80000da0 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     5459        M 0x80000da4 mv      a3, t0                 #; t0  = 0x80003095, (wrb) a3  <-- 0x80003095
       0     5460        M 0x80000da8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000da8
       0     5461        M 0x80000dac jalr    ra, ra, 20             #; ra  = 0x80000da8, (wrb) ra  <-- 0x80000db0, goto 0x80000dbc
       0     5470        M 0x80000dbc addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     5482        M 0x80000dc0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000db0 ~~> Word[0x0011ff0c]
       0     5483        M 0x80000dc4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100240 ~~> Word[0x0011ff08]
       0     5484        M 0x80000dc8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x001000f0 ~~> Word[0x0011ff04]
       0     5485        M 0x80000dcc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
       0     5494        M 0x80000dd0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     5495        M 0x80000dd4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     5496        M 0x80000dd8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     5497        M 0x80000ddc sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     5506        M 0x80000de0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     5507        M 0x80000de4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     5508        M 0x80000de8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     5509        M 0x80000dec sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     5518        M 0x80000df0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     5519        M 0x80000df4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     5520        M 0x80000df8 mv      s0, a3                 #; a3  = 0x80003095, (wrb) s0  <-- 0x80003095
       0     5521        M 0x80000dfc mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5530        M 0x80000e00 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     5531        M 0x80000e04 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     5532        M 0x80000e08 mv      s2, a0                 #; a0  = 0x800019b4, (wrb) s2  <-- 0x800019b4
       0     5533        M 0x80000e0c j       pc + 0xc               #; goto 0x80000e18
       0     5542        M 0x80000e18 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5543        M 0x80000e1c li      s6, 37                 #; (wrb) s6  <-- 37
       0     5554        M 0x80000e20 li      s11, 16                #; (wrb) s11 <-- 16
       0     5555        M 0x80000e24 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5556        M 0x80000e28 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5557        M 0x80000e2c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5566        M 0x80000e30 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     5567        M 0x80000e34 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5568        M 0x80000e38 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5569        M 0x80000e3c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     5578        M 0x80000e40 addi    s10, s0, 2             #; s0  = 0x80003095, (wrb) s10 <-- 0x80003097
       0     5579        M 0x80000e44 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5580        M 0x80000e48 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5581        M 0x80000e4c lbu     a0, 0(s0)              #; s0  = 0x80003095, a0  <~~ Byte[0x80003095]
       0     5592        M                                           #; (lsu) a0  <-- 101
       0     5593        M 0x80000e50 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     5594        M 0x80000e54 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     5595        M 0x80000e58 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5596        M 0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5602        M 0x80000e60 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5603        M 0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5604        M 0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
       0     5625        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     5626        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5627        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5637        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5638        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     5639        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     5640        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5641        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     5649        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     5660        M                                           #; (lsu) a4  <-- 0
       0     5661        M 0x800019d4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5662        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 1 ~~> Word[0x800033dc]
       0     5663        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 0, (wrb) a4  <-- 0x800033dc
       0     5664        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033dc, 101 ~~> Byte[0x80003424]
       0     5665        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     5686        M                                           #; (lsu) a4  <-- 1
       0     5687        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5688        M 0x800019ec snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5689        M 0x800019f0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     5690        M 0x800019f4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     5691        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5692        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     5712        M 0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
       0     5726        M 0x80000e6c addi    s0, s0, 1              #; s0  = 0x80003095, (wrb) s0  <-- 0x80003096
       0     5729        M 0x80000e70 addi    s10, s10, 1            #; s10 = 0x80003097, (wrb) s10 <-- 0x80003098
       0     5730        M 0x80000e74 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5731        M 0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x80003096, a0  <~~ Byte[0x80003096]
       0     5742        M                                           #; (lsu) a0  <-- 114
       0     5743        M 0x80000e7c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e54
       0     5744        M 0x80000e54 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5745        M 0x80000e58 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5746        M 0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5747        M 0x80000e60 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5748        M 0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5749        M 0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
       0     5752        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5753        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5754        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5755        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5756        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     5757        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     5758        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5759        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     5760        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     5771        M                                           #; (lsu) a4  <-- 1
       0     5772        M 0x800019d4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5773        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 2 ~~> Word[0x800033dc]
       0     5774        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 1, (wrb) a4  <-- 0x800033dd
       0     5775        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033dd, 114 ~~> Byte[0x80003425]
       0     5776        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     5797        M                                           #; (lsu) a4  <-- 2
       0     5798        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     5799        M 0x800019ec snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     5800        M 0x800019f0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5801        M 0x800019f4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5802        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5803        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     5806        M 0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
       0     5811        M 0x80000e6c addi    s0, s0, 1              #; s0  = 0x80003096, (wrb) s0  <-- 0x80003097
       0     5814        M 0x80000e70 addi    s10, s10, 1            #; s10 = 0x80003098, (wrb) s10 <-- 0x80003099
       0     5815        M 0x80000e74 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5816        M 0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x80003097, a0  <~~ Byte[0x80003097]
       0     5827        M                                           #; (lsu) a0  <-- 114
       0     5828        M 0x80000e7c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e54
       0     5829        M 0x80000e54 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5830        M 0x80000e58 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5831        M 0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5832        M 0x80000e60 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5833        M 0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5834        M 0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
       0     5837        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5838        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5839        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5840        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5841        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     5842        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     5843        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5844        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     5845        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     5856        M                                           #; (lsu) a4  <-- 2
       0     5857        M 0x800019d4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     5858        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 3 ~~> Word[0x800033dc]
       0     5859        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 2, (wrb) a4  <-- 0x800033de
       0     5860        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033de, 114 ~~> Byte[0x80003426]
       0     5861        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     5882        M                                           #; (lsu) a4  <-- 3
       0     5883        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     5884        M 0x800019ec snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     5885        M 0x800019f0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5886        M 0x800019f4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5887        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5888        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     5891        M 0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
       0     5896        M 0x80000e6c addi    s0, s0, 1              #; s0  = 0x80003097, (wrb) s0  <-- 0x80003098
       0     5899        M 0x80000e70 addi    s10, s10, 1            #; s10 = 0x80003099, (wrb) s10 <-- 0x8000309a
       0     5900        M 0x80000e74 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     5901        M 0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x80003098, a0  <~~ Byte[0x80003098]
       0     5912        M                                           #; (lsu) a0  <-- 111
       0     5913        M 0x80000e7c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000e54
       0     5914        M 0x80000e54 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     5915        M 0x80000e58 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     5916        M 0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5917        M 0x80000e60 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     5918        M 0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5919        M 0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
       0     5922        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     5923        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5924        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5925        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5926        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     5927        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     5928        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5929        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     5930        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     5941        M                                           #; (lsu) a4  <-- 3
       0     5942        M 0x800019d4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     5943        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 4 ~~> Word[0x800033dc]
       0     5944        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 3, (wrb) a4  <-- 0x800033df
       0     5945        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033df, 111 ~~> Byte[0x80003427]
       0     5946        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     5967        M                                           #; (lsu) a4  <-- 4
       0     5968        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     5969        M 0x800019ec snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     5970        M 0x800019f0 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     5971        M 0x800019f4 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     5972        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5973        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     5976        M 0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
       0     5981        M 0x80000e6c addi    s0, s0, 1              #; s0  = 0x80003098, (wrb) s0  <-- 0x80003099
       0     5984        M 0x80000e70 addi    s10, s10, 1            #; s10 = 0x8000309a, (wrb) s10 <-- 0x8000309b
       0     5985        M 0x80000e74 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     5986        M 0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x80003099, a0  <~~ Byte[0x80003099]
       0     5997        M                                           #; (lsu) a0  <-- 114
       0     5998        M 0x80000e7c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e54
       0     5999        M 0x80000e54 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     6000        M 0x80000e58 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     6001        M 0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6002        M 0x80000e60 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     6003        M 0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6004        M 0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
       0     6007        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     6008        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6009        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6010        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6011        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     6012        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     6013        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6014        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     6015        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     6026        M                                           #; (lsu) a4  <-- 4
       0     6027        M 0x800019d4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     6028        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 5 ~~> Word[0x800033dc]
       0     6029        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 4, (wrb) a4  <-- 0x800033e0
       0     6030        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e0, 114 ~~> Byte[0x80003428]
       0     6031        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     6052        M                                           #; (lsu) a4  <-- 5
       0     6053        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     6054        M 0x800019ec snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     6055        M 0x800019f0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     6056        M 0x800019f4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     6057        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6058        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     6061        M 0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
       0     6066        M 0x80000e6c addi    s0, s0, 1              #; s0  = 0x80003099, (wrb) s0  <-- 0x8000309a
       0     6069        M 0x80000e70 addi    s10, s10, 1            #; s10 = 0x8000309b, (wrb) s10 <-- 0x8000309c
       0     6070        M 0x80000e74 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     6071        M 0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x8000309a, a0  <~~ Byte[0x8000309a]
       0     6082        M                                           #; (lsu) a0  <-- 32
       0     6083        M 0x80000e7c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e54
       0     6084        M 0x80000e54 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6085        M 0x80000e58 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     6086        M 0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6087        M 0x80000e60 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     6088        M 0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6089        M 0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
       0     6092        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6093        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6094        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6095        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6096        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     6097        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     6098        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6099        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     6100        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     6111        M                                           #; (lsu) a4  <-- 5
       0     6112        M 0x800019d4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     6113        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 6 ~~> Word[0x800033dc]
       0     6114        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 5, (wrb) a4  <-- 0x800033e1
       0     6115        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e1, 32 ~~> Byte[0x80003429]
       0     6116        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     6137        M                                           #; (lsu) a4  <-- 6
       0     6138        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     6139        M 0x800019ec snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     6140        M 0x800019f0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6141        M 0x800019f4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6142        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6143        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     6146        M 0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
       0     6151        M 0x80000e6c addi    s0, s0, 1              #; s0  = 0x8000309a, (wrb) s0  <-- 0x8000309b
       0     6154        M 0x80000e70 addi    s10, s10, 1            #; s10 = 0x8000309c, (wrb) s10 <-- 0x8000309d
       0     6155        M 0x80000e74 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6156        M 0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x8000309b, a0  <~~ Byte[0x8000309b]
       0     6167        M                                           #; (lsu) a0  <-- 61
       0     6168        M 0x80000e7c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000e54
       0     6169        M 0x80000e54 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6170        M 0x80000e58 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6171        M 0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6172        M 0x80000e60 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6173        M 0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6174        M 0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
       0     6177        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6178        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6179        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6180        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6181        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     6182        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     6183        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6184        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     6185        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     6196        M                                           #; (lsu) a4  <-- 6
       0     6197        M 0x800019d4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6198        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 7 ~~> Word[0x800033dc]
       0     6199        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 6, (wrb) a4  <-- 0x800033e2
       0     6200        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e2, 61 ~~> Byte[0x8000342a]
       0     6201        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     6222        M                                           #; (lsu) a4  <-- 7
       0     6223        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6224        M 0x800019ec snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6225        M 0x800019f0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6226        M 0x800019f4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6227        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6228        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     6231        M 0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
       0     6236        M 0x80000e6c addi    s0, s0, 1              #; s0  = 0x8000309b, (wrb) s0  <-- 0x8000309c
       0     6239        M 0x80000e70 addi    s10, s10, 1            #; s10 = 0x8000309d, (wrb) s10 <-- 0x8000309e
       0     6240        M 0x80000e74 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6241        M 0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x8000309c, a0  <~~ Byte[0x8000309c]
       0     6252        M                                           #; (lsu) a0  <-- 32
       0     6253        M 0x80000e7c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e54
       0     6254        M 0x80000e54 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6255        M 0x80000e58 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6256        M 0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6257        M 0x80000e60 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6258        M 0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6259        M 0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
       0     6262        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6263        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6264        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6265        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6266        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     6267        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     6268        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6269        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     6270        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     6281        M                                           #; (lsu) a4  <-- 7
       0     6282        M 0x800019d4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6283        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 8 ~~> Word[0x800033dc]
       0     6284        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 7, (wrb) a4  <-- 0x800033e3
       0     6285        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e3, 32 ~~> Byte[0x8000342b]
       0     6286        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     6307        M                                           #; (lsu) a4  <-- 8
       0     6308        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6309        M 0x800019ec snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6310        M 0x800019f0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6311        M 0x800019f4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6312        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6313        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     6316        M 0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
       0     6321        M 0x80000e6c addi    s0, s0, 1              #; s0  = 0x8000309c, (wrb) s0  <-- 0x8000309d
       0     6324        M 0x80000e70 addi    s10, s10, 1            #; s10 = 0x8000309e, (wrb) s10 <-- 0x8000309f
       0     6325        M 0x80000e74 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6326        M 0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x8000309d, a0  <~~ Byte[0x8000309d]
       0     6337        M                                           #; (lsu) a0  <-- 37
       0     6338        M 0x80000e7c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000e54
       0     6339        M 0x80000e54 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000e84
       0     6351        M 0x80000e84 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6352        M 0x80000e88 j       pc + 0x10              #; goto 0x80000e98
       0     6363        M 0x80000e98 lbu     a0, -1(s10)            #; s10 = 0x8000309f, a0  <~~ Byte[0x8000309e]
       0     6374        M                                           #; (lsu) a0  <-- 102
       0     6375        M 0x80000e9c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     6376        M 0x80000ea0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000ed8
       0     6399        M 0x80000ed8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     6400        M 0x80000edc andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     6411        M 0x80000ee0 addi    a1, s10, -1            #; s10 = 0x8000309f, (wrb) a1  <-- 0x8000309e
       0     6412        M 0x80000ee4 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6413        M 0x80000ee8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000f64
       0     6434        M 0x80000f64 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6435        M 0x80000f68 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000fb8
       0     6457        M 0x80000fb8 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6458        M 0x80000fbc mv      s10, a1                #; a1  = 0x8000309e, (wrb) s10 <-- 0x8000309e
       0     6469        M 0x80000fc0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     6470        M 0x80000fc4 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6471        M 0x80000fc8 j       pc + 0xc               #; goto 0x80000fd4
       0     6492        M 0x80000fd4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     6493        M 0x80000fd8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     6494        M 0x80000fdc slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     6504        M 0x80000fe0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     6505        M 0x80000fe4 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6506        M 0x80000fe8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x8000104c
       0     6527        M 0x8000104c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     6539        M 0x80001050 li      a2, 83                 #; (wrb) a2  <-- 83
       0     6540        M 0x80001054 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     6541        M 0x80001058 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     6542        M 0x8000105c auipc   a2, 0x2                #; (wrb) a2  <-- 0x8000305c
       0     6551        M 0x80001060 addi    a2, a2, 184            #; a2  = 0x8000305c, (wrb) a2  <-- 0x80003114
       0     6552        M 0x80001064 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003114, (wrb) a1  <-- 0x80003218
       0     6553        M 0x80001068 lw      a2, 0(a1)              #; a1  = 0x80003218, a2  <~~ Word[0x80003218]
       0     6554        M 0x8000106c li      a1, 8                  #; (wrb) a1  <-- 8
       0     6563        M 0x80001070 li      s8, 16                 #; (wrb) s8  <-- 16
       0     6564        M                                           #; (lsu) a2  <-- 0x800010a4
       0     6565        M 0x80001074 jr      a2                     #; a2  = 0x800010a4, goto 0x800010a4
       0     6586        M 0x800010a4 li      a1, 70                 #; (wrb) a1  <-- 70
       0     6587        M 0x800010a8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800010b0
       0     6598        M 0x800010b0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     6599        M 0x800010b4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     6601        M 0x800010bc addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     6602        M 0x800010b8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     6603        M                                           #; (f:lsu) fa0  <-- 0.0
       0     6610        M 0x800010c0 mv      a0, s2                 #; s2  = 0x800019b4, (wrb) a0  <-- 0x800019b4
       0     6611        M 0x800010c4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6612        M 0x800010c8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6613        M 0x800010cc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6622        M 0x800010d0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     6623        M 0x800010d4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     6624        M 0x800010d8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     6625        M 0x800010dc auipc   ra, 0x1                #; (wrb) ra  <-- 0x800020dc
       0     6634        M 0x800010e0 jalr    ra, ra, -1656          #; ra  = 0x800020dc, (wrb) ra  <-- 0x800010e4, goto 0x80001a64
       0     6648        M 0x80001a64 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     6649        M 0x80001a68 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x800010e4 ~~> Word[0x0011fe9c]
       0     6650        M 0x80001a6c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     6660        M 0x80001a70 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     6661        M 0x80001a74 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800019b4 ~~> Word[0x0011fe90]
       0     6662        M 0x80001a78 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     6663        M 0x80001a7c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     6672        M 0x80001a80 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     6673        M 0x80001a84 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     6674        M 0x80001a88 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     6675        M 0x80001a8c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     6684        M 0x80001a90 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     6685        M 0x80001a94 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x8000309e ~~> Word[0x0011fe70]
       0     6688        M 0x80001a98 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     6689        M 0x80001a9c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     6697        M 0x80001aa4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003aa4
       0     6698        M 0x80001aa8 addi    s1, s1, -1908          #; s1  = 0x80003aa4, (wrb) s1  <-- 0x80003330
                         M 0x80001aa0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     6701        M 0x80001aac fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003330]
       0     6709        M 0x80001ab4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     6710        M 0x80001ab8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6711        M 0x80001abc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001ab0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     6720        M 0x80001ac0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     6721        M 0x80001ac4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     6722        M 0x80001ac8 mv      s7, a0                 #; a0  = 0x800019b4, (wrb) s7  <-- 0x800019b4
       0     6723        M 0x80001acc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001bbc
       0     6745        M 0x80001bbc fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     6746        M                                           #; (f:fpu) fs0  <-- 0.0
       0     6755        M 0x80001bc0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bc0
       0     6756        M 0x80001bc4 addi    a0, a0, 1912           #; a0  = 0x80002bc0, (wrb) a0  <-- 0x80003338
       0     6759        M 0x80001bc8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003338]
       0     6768        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6769        M 0x80001bcc fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6771        M                                           #; (acc) t3  <-- 0x00051e63
       0     6772        M 0x80001bd0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001bec
       0     6779        M 0x80001bec auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bec
       0     6791        M 0x80001bf0 addi    a0, a0, 1876           #; a0  = 0x80002bec, (wrb) a0  <-- 0x80003340
       0     6793        M 0x80001bf8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bf8
       0     6794        M 0x80001bfc addi    a0, a0, 1872           #; a0  = 0x80002bf8, (wrb) a0  <-- 0x80003348
                         M 0x80001bf4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003340]
       0     6803        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     6805        M 0x80001c00 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003348]
       0     6806        M 0x80001c04 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     6808        M                                           #; (acc) a0  <-- 0x00b57533
       0     6814        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     6815        M 0x80001c08 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     6817        M                                           #; (acc) a0  <-- 0x00b57533
       0     6818        M 0x80001c0c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     6819        M 0x80001c10 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001d0c
       0     6842        M 0x80001d0c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     6854        M 0x80001d10 li      s8, 6                  #; (wrb) s8  <-- 6
       0     6855        M 0x80001d14 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001d1c
       0     6856        M 0x80001d1c li      a0, 10                 #; (wrb) a0  <-- 10
       0     6867        M 0x80001d24 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001d5c
       0     6868        M 0x80001d20 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     6869        M                                           #; (f:fpu) fs2  <-- 0.0
       0     6889        M 0x80001d5c li      s0, 0                  #; (wrb) s0  <-- 0
       0     6901        M 0x80001d60 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     6902        M 0x80001d64 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002d64
       0     6903        M 0x80001d68 addi    a1, a1, 1284           #; a1  = 0x80002d64, (wrb) a1  <-- 0x80003268
       0     6904        M 0x80001d6c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003268, (wrb) a0  <-- 0x80003298
       0     6915        M 0x80001d70 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003298]
       0     6916        M 0x80001d74 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     6920        M 0x80001d78 fcvt.d.w ft0, s1               #; ac1  = 0
       0     6921        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6922        M 0x80001d7c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     6924        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     6925        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6926        M 0x80001d84 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002d84
       0     6927        M 0x80001d88 addi    a0, a0, 1484           #; a0  = 0x80002d84, (wrb) a0  <-- 0x80003350
                         M 0x80001d80 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     6930        M 0x80001d8c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003350], (f:fpu) ft2  <-- 0.0
       0     6938        M 0x80001d90 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     6939        M                                           #; (f:lsu) ft0  <-- 0.5
       0     6940        M                                           #; (acc) gp  <-- 0xd21501d3
       0     6942        M 0x80001d94 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     6943        M                                           #; (f:fpu) ft3  <-- 0.0
       0     6944        M 0x80001d98 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     6947        M                                           #; (f:fpu) ft2  <-- 0.0
       0     6948        M 0x80001d9c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6951        M 0x80001da0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001dc0
       0     6973        M 0x80001dc0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6975        M                                           #; (acc) s4  <-- 0x00059a63
       0     6976        M 0x80001dc4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001dd8
       0     6985        M 0x80001ddc beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001dd8 fcvt.d.w fs1, zero             #; ac1  = 0
       0     6986        M                                           #; (f:fpu) fs1  <-- 0.0
       0     6996        M 0x80001de0 li      a2, 0                  #; (wrb) a2  <-- 0
       0     6997        M 0x80001de4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     6998        M 0x80001de8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     6999        M 0x80001dec li      t0, 32                 #; (wrb) t0  <-- 32
       0     7008        M 0x80001df0 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     7009        M 0x80001df4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     7010        M 0x80001df8 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     7011        M 0x80001dfc li      a6, 10                 #; (wrb) a6  <-- 10
       0     7020        M 0x80001e00 li      a7, 9                  #; (wrb) a7  <-- 9
       0     7021        M 0x80001e04 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     7022        M 0x80001e08 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     7023        M 0x80001e0c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     7032        M 0x80001e10 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     7033        M 0x80001e14 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     7036        M                                           #; (acc) a3  <-- 0x40d586b3
       0     7037        M 0x80001e18 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     7038        M 0x80001e1c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     7044        M 0x80001e20 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     7045        M 0x80001e24 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     7046        M 0x80001e28 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     7047        M 0x80001e2c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     7059        M 0x80001e30 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     7060        M 0x80001e34 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     7061        M 0x80001e38 li      a3, 30                 #; (wrb) a3  <-- 30
       0     7062        M 0x80001e3c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     7071        M 0x80001e40 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     7072        M 0x80001e44 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     7073        M 0x80001e48 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     7074        M 0x80001e4c bnez    a3, pc + 136           #; a3  = 0, not taken
       0     7083        M 0x80001e50 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     7084        M 0x80001e54 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     7085        M 0x80001e58 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     7086        M 0x80001e5c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     7095        M 0x80001e60 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     7096        M 0x80001e64 li      a1, 31                 #; (wrb) a1  <-- 31
       0     7097        M 0x80001e68 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     7098        M 0x80001e6c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     7107        M 0x80001e70 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     7108        M 0x80001e74 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001e7c
       0     7109        M 0x80001e7c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     7119        M 0x80001e80 li      a1, 48                 #; (wrb) a1  <-- 48
       0     7120        M 0x80001e84 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7ffffe84
       0     7121        M 0x80001e88 jalr    ra, ra, 380            #; ra  = 0x7ffffe84, (wrb) ra  <-- 0x80001e8c, goto 0x80000000
       0     7142        M 0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
       0     7143        M 0x80000004 mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     7144        M 0x80000008 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x80000044
       0     7165        M 0x80000044 sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     7166        M 0x80000048 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     7167        M 0x8000004c auipc   t0, 0x0                #; (wrb) t0  <-- 0x8000004c
       0     7177        M 0x80000050 add     a3, a3, t0             #; a3  = 40, t0  = 0x8000004c, (wrb) a3  <-- 0x80000074
       0     7178        M 0x80000054 jalr    zero, a3, 12           #; a3  = 0x80000074, goto 0x80000080
       0     7200        M 0x80000080 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     7201        M 0x80000084 sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     7202        M 0x80000088 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     7203        M 0x8000008c sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     7212        M 0x80000090 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     7213        M 0x80000094 ret                            #; ra  = 0x80001e8c, goto 0x80001e8c
       0     7226        M 0x80001e8c li      a0, 0                  #; (wrb) a0  <-- 0
       0     7229        M 0x80001e90 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     7230        M 0x80001e94 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     7231        M 0x80001e98 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     7232        M 0x80001e9c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     7241        M 0x80001ea0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7242        M 0x80001ea4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7243        M 0x80001ea8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001e90
       0     7244        M 0x80001e90 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     7245        M 0x80001e94 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     7246        M 0x80001e98 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     7247        M 0x80001e9c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     7248        M 0x80001ea0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7249        M 0x80001ea4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     7250        M 0x80001ea8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001e90
       0     7251        M 0x80001e90 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     7252        M 0x80001e94 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     7253        M 0x80001e98 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     7254        M 0x80001e9c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     7255        M 0x80001ea0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7256        M 0x80001ea4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     7257        M 0x80001ea8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001e90
       0     7258        M 0x80001e90 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     7259        M 0x80001e94 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     7260        M 0x80001e98 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     7261        M 0x80001e9c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     7262        M 0x80001ea0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7263        M 0x80001ea4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     7264        M 0x80001ea8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001e90
       0     7265        M 0x80001e90 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     7266        M 0x80001e94 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     7267        M 0x80001e98 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     7268        M 0x80001e9c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     7269        M 0x80001ea0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     7270        M 0x80001ea4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     7271        M 0x80001ea8 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     7272        M 0x80001eac add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     7284        M 0x80001eb0 j       pc + 0x28              #; goto 0x80001ed8
       0     7296        M 0x80001ed8 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     7297        M 0x80001edc addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     7308        M 0x80001ee0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     7309        M 0x80001ee4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     7310        M 0x80001ee8 li      a1, 46                 #; (wrb) a1  <-- 46
       0     7311        M 0x80001eec sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     7320        M 0x80001ef0 j       pc + 0x8               #; goto 0x80001ef8
       0     7321        M 0x80001ef8 li      a0, 32                 #; (wrb) a0  <-- 32
       0     7322        M 0x80001efc mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     7333        M 0x80001f00 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     7334        M 0x80001f04 li      t0, 32                 #; (wrb) t0  <-- 32
       0     7336        M 0x80001f0c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001f08 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     7345        M 0x80001f10 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     7346        M 0x80001f14 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7347        M 0x80001f18 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     7348        M 0x80001f1c li      a4, 18                 #; (wrb) a4  <-- 18
       0     7357        M 0x80001f20 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     7358        M 0x80001f24 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     7361        M                                           #; (acc) a5  <-- 0x01f55793
       0     7362        M 0x80001f28 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     7363        M 0x80001f2c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     7369        M 0x80001f30 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     7370        M 0x80001f34 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     7373        M                                           #; (acc) a5  <-- 0x40f487b3
       0     7374        M 0x80001f38 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     7375        M 0x80001f3c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     7381        M 0x80001f40 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     7382        M 0x80001f44 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     7383        M 0x80001f48 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     7384        M 0x80001f4c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     7393        M 0x80001f50 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     7394        M 0x80001f54 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     7395        M 0x80001f58 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     7396        M 0x80001f5c j       pc + 0x8               #; goto 0x80001f64
       0     7408        M 0x80001f64 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     7409        M 0x80001f68 li      a0, 1                  #; (wrb) a0  <-- 1
       0     7410        M 0x80001f6c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001fd8
       0     7431        M 0x80001fd8 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7432        M 0x80001fdc bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     7443        M 0x80001fe0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ff8
       0     7455        M 0x80001ff8 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     7456        M 0x80001ffc bnez    a0, pc + 32            #; a0  = 0, not taken
       0     7467        M 0x80002000 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     7468        M 0x80002004 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002030
       0     7490        M 0x80002030 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     7491        M 0x80002034 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     7492        M 0x80002038 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7493        M 0x8000203c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7502        M 0x80002040 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     7503        M 0x80002044 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     7504        M 0x80002048 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002074
       0     7525        M 0x80002074 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     7526        M 0x80002078 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     7527        M 0x8000207c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     7537        M 0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     7538        M 0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     7539        M 0x80002088 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     7540        M 0x8000208c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     7541        M                                           #; (lsu) a0  <-- 48
       0     7549        M 0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7550        M 0x80002094 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     7551        M 0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7552        M 0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
       0     7563        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7564        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7565        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7566        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7567        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     7568        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     7569        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7570        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     7571        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7582        M                                           #; (lsu) a4  <-- 8
       0     7583        M 0x800019d4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     7584        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 9 ~~> Word[0x800033dc]
       0     7585        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 8, (wrb) a4  <-- 0x800033e4
       0     7586        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e4, 48 ~~> Byte[0x8000342c]
       0     7587        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7608        M                                           #; (lsu) a4  <-- 9
       0     7609        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     7610        M 0x800019ec snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     7611        M 0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7612        M 0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7613        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7614        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     7617        M 0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
       0     7622        M 0x800020a0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     7623        M 0x800020a4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     7624        M 0x800020a8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80002080
       0     7625        M 0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     7626        M 0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     7627        M 0x80002088 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     7628        M 0x8000208c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7629        M 0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7630        M 0x80002094 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7631        M 0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7632        M 0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
       0     7633        M                                           #; (lsu) a0  <-- 46
       0     7635        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     7636        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7637        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7638        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7639        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     7640        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     7641        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7642        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     7643        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7654        M                                           #; (lsu) a4  <-- 9
       0     7655        M 0x800019d4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7656        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 10 ~~> Word[0x800033dc]
       0     7657        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 9, (wrb) a4  <-- 0x800033e5
       0     7658        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e5, 46 ~~> Byte[0x8000342d]
       0     7659        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7680        M                                           #; (lsu) a4  <-- 10
       0     7681        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7682        M 0x800019ec snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7683        M 0x800019f0 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     7684        M 0x800019f4 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     7685        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7686        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     7689        M 0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
       0     7694        M 0x800020a0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7695        M 0x800020a4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     7696        M 0x800020a8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80002080
       0     7697        M 0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     7698        M 0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     7699        M 0x80002088 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     7700        M 0x8000208c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7701        M 0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7702        M 0x80002094 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7703        M 0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7704        M 0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
       0     7705        M                                           #; (lsu) a0  <-- 48
       0     7707        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7708        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7709        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7710        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7711        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     7712        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     7713        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7714        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     7715        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7726        M                                           #; (lsu) a4  <-- 10
       0     7727        M 0x800019d4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7728        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 11 ~~> Word[0x800033dc]
       0     7729        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 10, (wrb) a4  <-- 0x800033e6
       0     7730        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e6, 48 ~~> Byte[0x8000342e]
       0     7731        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7752        M                                           #; (lsu) a4  <-- 11
       0     7753        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7754        M 0x800019ec snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7755        M 0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7756        M 0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7757        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7758        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     7761        M 0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
       0     7766        M 0x800020a0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7767        M 0x800020a4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     7768        M 0x800020a8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80002080
       0     7769        M 0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     7770        M 0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     7771        M 0x80002088 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     7772        M 0x8000208c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7773        M 0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7774        M 0x80002094 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7775        M 0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7776        M 0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
       0     7777        M                                           #; (lsu) a0  <-- 48
       0     7779        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7780        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7781        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7782        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7783        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     7784        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     7785        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7786        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     7787        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7798        M                                           #; (lsu) a4  <-- 11
       0     7799        M 0x800019d4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7800        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 12 ~~> Word[0x800033dc]
       0     7801        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 11, (wrb) a4  <-- 0x800033e7
       0     7802        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e7, 48 ~~> Byte[0x8000342f]
       0     7803        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7824        M                                           #; (lsu) a4  <-- 12
       0     7825        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7826        M 0x800019ec snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7827        M 0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7828        M 0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7829        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7830        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     7833        M 0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
       0     7838        M 0x800020a0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7839        M 0x800020a4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     7840        M 0x800020a8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80002080
       0     7841        M 0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     7842        M 0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     7843        M 0x80002088 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     7844        M 0x8000208c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     7845        M 0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7846        M 0x80002094 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     7847        M 0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7848        M 0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
       0     7849        M                                           #; (lsu) a0  <-- 48
       0     7851        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7852        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7853        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7854        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7855        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     7856        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     7857        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7858        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     7859        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7870        M                                           #; (lsu) a4  <-- 12
       0     7871        M 0x800019d4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7872        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 13 ~~> Word[0x800033dc]
       0     7873        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 12, (wrb) a4  <-- 0x800033e8
       0     7874        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e8, 48 ~~> Byte[0x80003430]
       0     7875        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7896        M                                           #; (lsu) a4  <-- 13
       0     7897        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     7898        M 0x800019ec snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     7899        M 0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7900        M 0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7901        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7902        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     7905        M 0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
       0     7910        M 0x800020a0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     7911        M 0x800020a4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     7912        M 0x800020a8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80002080
       0     7913        M 0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     7914        M 0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     7915        M 0x80002088 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     7916        M 0x8000208c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     7917        M 0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7918        M 0x80002094 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     7919        M 0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7920        M 0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
       0     7921        M                                           #; (lsu) a0  <-- 48
       0     7923        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7924        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7925        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7926        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7927        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     7928        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     7929        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7930        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     7931        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7942        M                                           #; (lsu) a4  <-- 13
       0     7943        M 0x800019d4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     7944        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 14 ~~> Word[0x800033dc]
       0     7945        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 13, (wrb) a4  <-- 0x800033e9
       0     7946        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e9, 48 ~~> Byte[0x80003431]
       0     7947        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     7968        M                                           #; (lsu) a4  <-- 14
       0     7969        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     7970        M 0x800019ec snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     7971        M 0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7972        M 0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7973        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7974        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     7977        M 0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
       0     7982        M 0x800020a0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     7983        M 0x800020a4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     7984        M 0x800020a8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80002080
       0     7985        M 0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     7986        M 0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     7987        M 0x80002088 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     7988        M 0x8000208c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     7989        M 0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7990        M 0x80002094 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     7991        M 0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7992        M 0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
       0     7993        M                                           #; (lsu) a0  <-- 48
       0     7995        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7996        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7997        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7998        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7999        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     8000        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     8001        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8002        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     8003        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     8014        M                                           #; (lsu) a4  <-- 14
       0     8015        M 0x800019d4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     8016        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 15 ~~> Word[0x800033dc]
       0     8017        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 14, (wrb) a4  <-- 0x800033ea
       0     8018        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033ea, 48 ~~> Byte[0x80003432]
       0     8019        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     8040        M                                           #; (lsu) a4  <-- 15
       0     8041        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     8042        M 0x800019ec snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     8043        M 0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8044        M 0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8045        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8046        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     8049        M 0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
       0     8054        M 0x800020a0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     8055        M 0x800020a4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     8056        M 0x800020a8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80002080
       0     8057        M 0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     8058        M 0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     8059        M 0x80002088 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     8060        M 0x8000208c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     8061        M 0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8062        M 0x80002094 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     8063        M 0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8064        M 0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
       0     8065        M                                           #; (lsu) a0  <-- 48
       0     8067        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8068        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8069        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8070        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8071        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     8072        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     8073        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8074        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     8075        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     8086        M                                           #; (lsu) a4  <-- 15
       0     8087        M 0x800019d4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     8088        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 16 ~~> Word[0x800033dc]
       0     8089        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 15, (wrb) a4  <-- 0x800033eb
       0     8090        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033eb, 48 ~~> Byte[0x80003433]
       0     8091        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     8112        M                                           #; (lsu) a4  <-- 16
       0     8113        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     8114        M 0x800019ec snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     8115        M 0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8116        M 0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8117        M 0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8118        M 0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
       0     8121        M 0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
       0     8126        M 0x800020a0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     8127        M 0x800020a4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     8128        M 0x800020a8 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     8129        M 0x800020ac j       pc + 0x8               #; goto 0x800020b4
       0     8141        M 0x800020b4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     8142        M 0x800020b8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     8143        M 0x800020bc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     8153        M 0x800020c0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     8154        M 0x800020c4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     8155        M 0x800020c8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x800020f8
       0     8176        M 0x800020f8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     8177        M 0x800020fc mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     8190        M 0x80002100 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     8191        M 0x8000210c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80002104 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     8192        M 0x80002108 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     8193        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     8195        M                                           #; (lsu) s10 <-- 0x8000309e
       0     8200        M 0x80002110 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     8203        M                                           #; (lsu) s9  <-- 8
       0     8204        M 0x80002114 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     8207        M                                           #; (lsu) s8  <-- 16
       0     8208        M 0x80002118 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     8211        M                                           #; (lsu) s7  <-- 0
       0     8212        M 0x8000211c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     8215        M                                           #; (lsu) s6  <-- 0
       0     8216        M 0x80002120 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     8219        M                                           #; (lsu) s5  <-- -1
       0     8220        M 0x80002124 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     8223        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     8224        M 0x80002128 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     8227        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     8228        M 0x8000212c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     8231        M                                           #; (lsu) s2  <-- 0x800019b4
       0     8232        M 0x80002130 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     8235        M                                           #; (lsu) s1  <-- 8
       0     8236        M 0x80002134 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     8239        M                                           #; (lsu) s0  <-- 0
       0     8240        M 0x80002138 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     8241        M 0x8000213c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     8243        M                                           #; (lsu) ra  <-- 0x800010e4
       0     8244        M 0x80002140 ret                            #; ra  = 0x800010e4, goto 0x800010e4
       0     8256        M 0x800010e4 j       pc + 0x7c0             #; goto 0x800018a4
       0     8259        M 0x800018a4 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     8260        M 0x800018a8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8261        M 0x800018ac li      s7, 46                 #; (wrb) s7  <-- 46
       0     8271        M 0x800018b0 addi    s0, s10, 1             #; s10 = 0x8000309e, (wrb) s0  <-- 0x8000309f
       0     8272        M 0x800018b4 j       pc - 0xa74             #; goto 0x80000e40
       0     8283        M 0x80000e40 addi    s10, s0, 2             #; s0  = 0x8000309f, (wrb) s10 <-- 0x800030a1
       0     8284        M 0x80000e44 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     8285        M 0x80000e48 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8286        M 0x80000e4c lbu     a0, 0(s0)              #; s0  = 0x8000309f, a0  <~~ Byte[0x8000309f]
       0     8297        M                                           #; (lsu) a0  <-- 10
       0     8298        M 0x80000e50 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     8299        M 0x80000e54 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     8300        M 0x80000e58 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     8301        M 0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8307        M 0x80000e60 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     8308        M 0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8309        M 0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
       0     8321        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     8322        M 0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8323        M 0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8324        M 0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8325        M 0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
       0     8326        M 0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
       0     8327        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8328        M 0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
       0     8329        M 0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     8340        M                                           #; (lsu) a4  <-- 16
       0     8341        M 0x800019d4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     8342        M 0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 17 ~~> Word[0x800033dc]
       0     8343        M 0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 16, (wrb) a4  <-- 0x800033ec
       0     8344        M 0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033ec, 10 ~~> Byte[0x80003434]
       0     8345        M 0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
       0     8366        M                                           #; (lsu) a4  <-- 17
       0     8367        M 0x800019e8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     8368        M 0x800019ec snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     8369        M 0x800019f0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     8370        M 0x800019f4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     8371        M 0x800019f8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     8372        M 0x800019fc bnez    a0, pc + 96            #; a0  = 0, not taken
       0     8373        M 0x80001a00 add     a0, a3, a2             #; a3  = 0x800033dc, a2  = 0, (wrb) a0  <-- 0x800033dc
       0     8374        M 0x80001a04 addi    a2, a0, 72             #; a0  = 0x800033dc, (wrb) a2  <-- 0x80003424
       0     8375        M 0x80001a08 sw      zero, 12(a0)           #; a0  = 0x800033dc, 0 ~~> Word[0x800033e8]
       0     8376        M 0x80001a0c li      a3, 64                 #; (wrb) a3  <-- 64
       0     8385        M 0x80001a10 sw      a3, 8(a0)              #; a0  = 0x800033dc, 64 ~~> Word[0x800033e4]
       0     8386        M 0x80001a14 sw      zero, 20(a0)           #; a0  = 0x800033dc, 0 ~~> Word[0x800033f0]
       0     8387        M 0x80001a18 li      a3, 1                  #; (wrb) a3  <-- 1
       0     8388        M 0x80001a1c sw      a3, 16(a0)             #; a0  = 0x800033dc, 1 ~~> Word[0x800033ec]
       0     8397        M 0x80001a20 sw      zero, 28(a0)           #; a0  = 0x800033dc, 0 ~~> Word[0x800033f8]
       0     8398        M 0x80001a24 sw      a2, 24(a0)             #; a0  = 0x800033dc, 0x80003424 ~~> Word[0x800033f4]
       0     8400        M 0x80001a28 lw      a2, 0(a1)              #; a1  = 0x800033dc, a2  <~~ Word[0x800033dc]
       0     8401        M 0x80001a2c addi    a3, a0, 8              #; a0  = 0x800033dc, (wrb) a3  <-- 0x800033e4
       0     8410        M 0x80001a30 sw      zero, 36(a0)           #; a0  = 0x800033dc, 0 ~~> Word[0x80003400]
       0     8429        M                                           #; (lsu) a2  <-- 17
       0     8430        M 0x80001a34 sw      a2, 32(a0)             #; a0  = 0x800033dc, 17 ~~> Word[0x800033fc]
       0     8431        M 0x80001a38 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a38
       0     8432        M 0x80001a3c addi    a0, a0, -1912          #; a0  = 0x80003a38, (wrb) a0  <-- 0x800032c0
       0     8433        M 0x80001a40 sw      a3, 0(a0)              #; a0  = 0x800032c0, 0x800033e4 ~~> Word[0x800032c0]
       0     8434        M 0x80001a44 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a44
       0     8435        M 0x80001a48 addi    a0, a0, -1860          #; a0  = 0x80003a44, (wrb) a0  <-- 0x80003300
       0     8436        M 0x80001a4c lw      a2, 0(a0)              #; a0  = 0x80003300, a2  <~~ Word[0x80003300]
       0     8459        M                                           #; (lsu) a2  <-- 0
       0     8460        M 0x80001a50 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a4c
       0     8461        M 0x80001a4c lw      a2, 0(a0)              #; a0  = 0x80003300, a2  <~~ Word[0x80003300]
       0     8472        M                                           #; (lsu) a2  <-- 0
       0     8473        M 0x80001a50 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a4c
       0     8474        M 0x80001a4c lw      a2, 0(a0)              #; a0  = 0x80003300, a2  <~~ Word[0x80003300]
       0     8485        M                                           #; (lsu) a2  <-- 0
       0     8486        M 0x80001a50 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a4c
       0     8487        M 0x80001a4c lw      a2, 0(a0)              #; a0  = 0x80003300, a2  <~~ Word[0x80003300]
       0     8498        M                                           #; (lsu) a2  <-- 0
       0     8499        M 0x80001a50 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a4c
       0     8500        M 0x80001a4c lw      a2, 0(a0)              #; a0  = 0x80003300, a2  <~~ Word[0x80003300]
       0     8511        M                                           #; (lsu) a2  <-- 1
       0     8512        M 0x80001a50 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     8513        M 0x80001a54 sw      zero, 0(a0)            #; a0  = 0x80003300, 0 ~~> Word[0x80003300]
       0     8514        M 0x80001a58 sw      zero, 0(a1)            #; a1  = 0x800033dc, 0 ~~> Word[0x800033dc]
       0     8515        M 0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
       0     8518        M 0x80000e6c addi    s0, s0, 1              #; s0  = 0x8000309f, (wrb) s0  <-- 0x800030a0
       0     8521        M 0x80000e70 addi    s10, s10, 1            #; s10 = 0x800030a1, (wrb) s10 <-- 0x800030a2
       0     8522        M 0x80000e74 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     8523        M 0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x800030a0, a0  <~~ Byte[0x800030a0]
       0     8536        M                                           #; (lsu) a0  <-- 0
       0     8537        M 0x80000e7c bnez    a0, pc - 40            #; a0  = 0, not taken
       0     8549        M 0x80000e80 j       pc + 0xad8             #; goto 0x80001958
       0     8561        M 0x80001958 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     8562        M 0x8000195c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001964
       0     8573        M 0x80001964 li      a0, 0                  #; (wrb) a0  <-- 0
       0     8574        M 0x80001968 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8575        M 0x8000196c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8585        M 0x80001970 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80001974, goto 0x800019b4
       0     8599        M 0x800019b4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001a5c
       0     8604        M 0x80001a5c ret                            #; ra  = 0x80001974, goto 0x80001974
       0     8605        M 0x80001974 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     8606        M 0x80001978 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     8609        M                                           #; (lsu) s11 <-- 0
       0     8610        M 0x8000197c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     8613        M                                           #; (lsu) s10 <-- 0
       0     8614        M 0x80001980 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     8617        M                                           #; (lsu) s9  <-- 0
       0     8618        M 0x80001984 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     8621        M                                           #; (lsu) s8  <-- 0
       0     8622        M 0x80001988 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     8625        M                                           #; (lsu) s7  <-- 0
       0     8626        M 0x8000198c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     8629        M                                           #; (lsu) s6  <-- 0
       0     8630        M 0x80001990 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     8633        M                                           #; (lsu) s5  <-- 0
       0     8634        M 0x80001994 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     8637        M                                           #; (lsu) s4  <-- 0
       0     8638        M 0x80001998 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     8641        M                                           #; (lsu) s3  <-- 0
       0     8642        M 0x8000199c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     8645        M                                           #; (lsu) s2  <-- 0x00100000
       0     8646        M 0x800019a0 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     8649        M                                           #; (lsu) s1  <-- 0x001000f0
       0     8650        M 0x800019a4 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     8653        M                                           #; (lsu) s0  <-- 0x00100240
       0     8654        M 0x800019a8 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     8655        M 0x800019ac addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     8657        M                                           #; (lsu) ra  <-- 0x80000db0
       0     8658        M 0x800019b0 ret                            #; ra  = 0x80000db0, goto 0x80000db0
       0     8670        M 0x80000db0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     8671        M 0x80000db4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     8673        M                                           #; (lsu) ra  <-- 0x800008b8
       0     8674        M 0x80000db8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     8684        M 0x800008b8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038b8
       0     8685        M 0x800008bc addi    a0, a0, -1424          #; a0  = 0x800038b8, (wrb) a0  <-- 0x80003328
       0     8689        M 0x800008c0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003328]
       0     8690        M 0x800008cc lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
       0     8698        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     8699        M 0x800008c4 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0     8700        M                                           #; (lsu) s2  <-- 0
       0     8701        M 0x800008d0 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54], (acc) s1  <-- 0x01412483
                         M 0x800008c8 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
       0     8702        M                                           #; (f:lsu) fs0  <-- 0.0
       0     8704        M                                           #; (lsu) s1  <-- 0
       0     8705        M 0x800008d4 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0     8708        M                                           #; (lsu) s0  <-- 0
       0     8709        M 0x800008d8 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     8710        M 0x800008dc addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     8712        M                                           #; (lsu) ra  <-- 0x80002e10
       0     8713        M 0x800008e0 ret                            #; ra  = 0x80002e10, goto 0x80002e10
       0     8725        M 0x80002e10 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     8726        M 0x80002e14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e14
       0     8727        M 0x80002e18 jalr    ra, ra, 524            #; ra  = 0x80002e14, (wrb) ra  <-- 0x80002e1c, goto 0x80003020
       0     8730        M 0x80003020 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     8731        M 0x80003024 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e1c ~~> Word[0x0011ff5c]
       0     8732        M 0x80003028 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003028
       0     8733        M 0x8000302c jalr    ra, ra, -1260          #; ra  = 0x80003028, (wrb) ra  <-- 0x80003030, goto 0x80002b3c
       0     8744        M 0x80002b3c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     8747        M 0x80002b40 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     8748        M 0x80002b44 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     8751        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8752        M 0x80002b48 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     8755        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8756        M 0x80002b4c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     8757        M 0x80002b50 ret                            #; ra  = 0x80003030, goto 0x80003030
       0     8759        M                                           #; (lsu) a0  <-- 0x00120190
       0     8760        M 0x80003030 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     8770        M                                           #; (lsu) a0  <-- 0
       0     8771        M 0x80003034 mv      zero, a0               #; a0  = 0
       0     8772        M 0x80003038 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     8773        M 0x8000303c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     8775        M                                           #; (lsu) ra  <-- 0x80002e1c
       0     8776        M 0x80003040 ret                            #; ra  = 0x80002e1c, goto 0x80002e1c
       0     8790        M 0x80002e1c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     8794        M 0x80002e20 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e20
       0     8795        M 0x80002e24 jalr    ra, ra, 556            #; ra  = 0x80002e20, (wrb) ra  <-- 0x80002e28, goto 0x8000304c
       0     8796        M 0x8000304c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     8797        M 0x80003050 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     8798        M 0x80003054 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002e28 ~~> Word[0x0011ff5c]
       0     8799        M 0x80003058 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003058
       0     8800        M 0x8000305c jalr    ra, ra, -1340          #; ra  = 0x80003058, (wrb) ra  <-- 0x80003060, goto 0x80002b1c
       0     8811        M 0x80002b1c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     8815        M 0x80002b20 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     8816        M 0x80002b24 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     8819        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8820        M 0x80002b28 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     8823        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8824        M 0x80002b2c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     8825        M 0x80002b30 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8827        M                                           #; (lsu) a0  <-- 0
       0     8828        M 0x80002b34 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     8829        M 0x80002b38 ret                            #; ra  = 0x80003060, goto 0x80003060
       0     8830        M 0x80003060 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     8833        M                                           #; (lsu) t0  <-- 0
       0     8834        M 0x80003064 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     8835        M 0x80003068 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     8836        M 0x8000306c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     8837        M                                           #; (lsu) ra  <-- 0x80002e28
       0     8841        M 0x80003070 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     8842        M 0x80003074 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     8843        M 0x80003078 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003078
       0     8844        M 0x8000307c addi    t1, t1, 584            #; t1  = 0x80003078, (wrb) t1  <-- 0x800032c0
       0     8852        M 0x80003080 sw      t0, 0(t1)              #; t1  = 0x800032c0, 1 ~~> Word[0x800032c0]
       0     8853        M 0x80003084 ret                            #; ra  = 0x80002e28, goto 0x80002e28
       0     8866        M 0x80002e28 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 8866):
snitch_loads                                   168
snitch_stores                                  174
fpss_stores                                      5
fpss_loads                                      15
snitch_avg_load_latency                    10.4702
snitch_occupancy                            0.3347
snitch_fseq_rel_offloads                    0.1891
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.0683
fpss_avg_load_latency                       6.3333
fpss_occupancy                              0.0780
fpss_fpu_occupancy                          0.0744
fpss_fpu_rel_occupancy                      0.9537
cycles                                        8855
total_ipc                                   0.4128
