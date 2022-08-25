       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002ce0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002ce0, (wrb) ra  <-- 4120, goto 0x80002ce0
       0      269        M 0x80002ce0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003ce0
       0      270        M 0x80002ce4 addi    gp, gp, -280           #; gp  = 0x80003ce0, (wrb) gp  <-- 0x80003bc8
       0      271        M 0x80002ce8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ce8
       0      272        M 0x80002cec jalr    ra, ra, 964            #; ra  = 0x80002ce8, (wrb) ra  <-- 0x80002cf0, goto 0x800030ac
       0      292        M 0x800030ac mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x800030b0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x800030b4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x800030b8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x800030bc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x800030c0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x800030c4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x800030c8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x800030cc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x800030d0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x800030d4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x800030d8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x800030dc ret                            #; ra  = 0x80002cf0, goto 0x80002cf0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002cf0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002cf4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002cf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cf8
       0      508        M 0x80002cfc jalr    ra, ra, 1036           #; ra  = 0x80002cf8, (wrb) ra  <-- 0x80002d00, goto 0x80003104
       0      523        M 0x80003104 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80003108 ret                            #; ra  = 0x80002d00, goto 0x80002d00
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002d00 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002d04 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002d08 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x80002d0c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002d10 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002d14 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d14
       0      551        M 0x80002d18 addi    t0, t0, 2012           #; t0  = 0x80002d14, (wrb) t0  <-- 0x800034f0
       0      552        M 0x80002d1c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d1c
       0      562        M 0x80002d20 addi    t1, t1, 2008           #; t1  = 0x80002d1c, (wrb) t1  <-- 0x800034f4
       0      563        M 0x80002d24 bge     t0, t1, pc + 16        #; t0  = 0x800034f0, t1  = 0x800034f4, not taken
       0      564        M 0x80002d28 sw      zero, 0(t0)            #; t0  = 0x800034f0, 0 ~~> Word[0x800034f0]
       0      565        M 0x80002d2c addi    t0, t0, 4              #; t0  = 0x800034f0, (wrb) t0  <-- 0x800034f4
       0      573        M 0x80002d30 blt     t0, t1, pc - 8         #; t0  = 0x800034f4, t1  = 0x800034f4, not taken
       0      574        M 0x80002d34 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002d38 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x80002d3c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002d40 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002d44 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002d48 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x80002d4c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002d50 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002d54 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002d58 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x80002d5c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002d60 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002d64 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002d68 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002d6c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002d70 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002d74 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002d78 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002d7c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002d80 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002d84 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002d88 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002d8c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002d90 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002d94 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002d98 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002d9c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002da0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002da4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002da8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002dac fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002db0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002db4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002db8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002dbc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002dc0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002dc4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002dc8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002dc8
       0      684        M 0x80002dcc lw      t0, 900(t0)            #; t0  = 0x80002dc8, t0  <~~ Word[0x8000314c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002dd0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002dd4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002dd8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002dd8
       0      708        M 0x80002ddc lw      t2, 880(t2)            #; t2  = 0x80002dd8, t2  <~~ Word[0x80003148]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002de0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002de4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002de8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002dec sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002df0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002df4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002df8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002dfc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002e00 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002e00
       0      762        M 0x80002e04 addi    t0, t0, 1480           #; t0  = 0x80002e00, (wrb) t0  <-- 0x800033c8
       0      763        M 0x80002e08 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e08
       0      764        M 0x80002e0c addi    t1, t1, 1472           #; t1  = 0x80002e08, (wrb) t1  <-- 0x800033c8
       0      775        M 0x80002e10 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002e10
       0      776        M 0x80002e14 addi    t2, t2, 1464           #; t2  = 0x80002e10, (wrb) t2  <-- 0x800033c8
       0      777        M 0x80002e18 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002e18
       0      778        M 0x80002e1c addi    t3, t3, 1472           #; t3  = 0x80002e18, (wrb) t3  <-- 0x800033d8
       0      787        M 0x80002e20 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800033c8, (wrb) sp  <-- 0x80123338
       0      788        M 0x80002e24 sub     sp, sp, t1             #; sp  = 0x80123338, t1  = 0x800033c8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002e28 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800033c8, (wrb) sp  <-- 0x80123338
       0      790        M 0x80002e2c sub     sp, sp, t3             #; sp  = 0x80123338, t3  = 0x800033d8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002e30 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002e34 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002e38 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002e3c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002e40 bge     t0, t1, pc + 24        #; t0  = 0x800033c8, t1  = 0x800033c8, taken, goto 0x80002e58
       0      823        M 0x80002e58 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002e58
       0      824        M 0x80002e5c addi    t0, t0, 1392           #; t0  = 0x80002e58, (wrb) t0  <-- 0x800033c8
       0      835        M 0x80002e60 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e60
       0      836        M 0x80002e64 addi    t1, t1, 1400           #; t1  = 0x80002e60, (wrb) t1  <-- 0x800033d8
       0      837        M 0x80002e68 bge     t0, t1, pc + 20        #; t0  = 0x800033c8, t1  = 0x800033d8, not taken
       0      838        M 0x80002e6c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002e70 addi    t0, t0, 4              #; t0  = 0x800033c8, (wrb) t0  <-- 0x800033cc
       0      848        M 0x80002e74 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002e78 blt     t0, t2, pc - 12        #; t0  = 0x800033cc, t2  = 0x800033c8, not taken
       0      850        M 0x80002e7c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002e80 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002e84 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002e88 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002e8c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002e90 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002e94 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e94
       0      877        M 0x80002e98 jalr    ra, ra, -1084          #; ra  = 0x80002e94, (wrb) ra  <-- 0x80002e9c, goto 0x80002a58
       0      899        M 0x80002a58 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x80002a5c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002a60 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002a64 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002a68 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x80002a6c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1029        M                                           #; (lsu) a7  <-- 1
       0     1030        M 0x80002a70 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1031        M 0x80002a74 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1060        M 0x80002a78 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1061        M 0x80002a7c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1062        M 0x80002a80 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1063        M 0x80002a84 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1065        M                                           #; (acc) a0  <-- 0x02580533
       0     1069        M                                           #; (lsu) t0  <-- 8
       0     1070        M 0x80002a88 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1071        M 0x80002a8c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1074        M 0x80002a90 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1075        M 0x80002a94 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1076        M 0x80002a98 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1079        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1080        M 0x80002a9c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1087        M 0x80002aa0 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1088        M 0x80002aa4 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1109        M                                           #; (lsu) a0  <-- 0x80000000
       0     1110        M 0x80002aa8 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1111        M 0x80002aac sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1112        M 0x80002ab0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1149        M                                           #; (lsu) a0  <-- 0
       0     1150        M 0x80002ab4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1151        M 0x80002ab8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1170        M 0x80002abc sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1171        M 0x80002ac0 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x80002ac4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1181        M 0x80002ac8 sub     a3, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a3  <-- 0x0001df30
       0     1182        M 0x80002acc sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1183        M 0x80002ad0 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1184        M 0x80002ad4 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1200        M                                           #; (lsu) a0  <-- 0x00020000
       0     1201        M 0x80002ad8 add     t3, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) t3  <-- 0x00120000
       0     1202        M 0x80002adc addi    a1, t3, 400            #; t3  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1203        M 0x80002ae0 sltu    t4, t3, a0             #; t3  = 0x00120000, a0  = 0x00020000, (wrb) t4  <-- 0
       0     1204        M 0x80002ae4 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80002ae8 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1206        M 0x80002aec slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1214        M 0x80002af0 add     t5, t3, a1             #; t3  = 0x00120000, a1  = 0x00010000, (wrb) t5  <-- 0x00130000
       0     1215        M 0x80002af4 sltu    a1, t5, t3             #; t5  = 0x00130000, t3  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80002af8 sw      t5, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1217        M 0x80002afc add     a1, t4, a1             #; t4  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1228        M 0x80002b00 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1229        M 0x80002b04 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x80002b08 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80002b0c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x80002b10 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1241        M 0x80002b14 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1242        M 0x80002b18 add     a0, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1243        M 0x80002b1c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1252        M 0x80002b20 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1253        M 0x80002b24 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1255        M 0x80002b28 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x80002b2c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x80002b30 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x80002b34 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1269        M                                           #; (lsu) a0  <-- 8
       0     1270        M 0x80002b38 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1271        M 0x80002b3c lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x80002b40 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1278        M 0x80002b44 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1279        M 0x80002b48 li      a1, 1096               #; (wrb) a1  <-- 1096
       0     1280        M 0x80002b4c mul     a0, a7, a1             #; a7  = 0, a1  = 1096
       0     1288        M 0x80002b50 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003b50
       0     1289        M 0x80002b54 addi    a1, a1, -1628          #; a1  = 0x80003b50, (wrb) a1  <-- 0x800034f4
       0     1290        M 0x80002b58 add     a0, a0, a1             #; a0  = 0, a1  = 0x800034f4, (wrb) a0  <-- 0x800034f4
       0     1291        M 0x80002b5c sw      zero, 0(a0)            #; a0  = 0x800034f4, 0 ~~> Word[0x800034f4]
       0     1300        M 0x80002b60 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1301        M 0x80002b64 lw      t6, 48(a4)             #; a4  = 4132, t6  <~~ Word[0x00001054]
       0     1302        M 0x80002b68 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1303        M 0x80002b6c addi    a4, t3, 384            #; t3  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1312        M 0x80002b70 sw      a3, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1333        M 0x80002b74 sw      t3, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1334        M 0x80002b78 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1335        M 0x80002b7c lui     a3, 0x0                #; (wrb) a3  <-- 0
       0     1342        M                                           #; (lsu) t6  <-- 0xffff0000
       0     1343        M 0x80002b80 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1344        M 0x80002b84 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1345        M 0x80002b88 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1346        M 0x80002b8c sw      t6, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1347        M 0x80002b90 lw      a0, 0(a1)              #; a1  = 0x800034f4, a0  <~~ Word[0x800034f4]
       0     1348        M 0x80002b94 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1362        M                                           #; (lsu) a0  <-- 0
       0     1363        M 0x80002b98 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1364        M 0x80002b9c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1365        M 0x80002ba0 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1366        M 0x80002ba4 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1367        M 0x80002ba8 add     a0, a3, tp             #; a3  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1368        M 0x80002bac lui     a5, 0x0                #; (wrb) a5  <-- 0
       0     1369        M 0x80002bb0 sw      t6, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1370        M 0x80002bb4 add     a0, a5, tp             #; a5  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1371        M 0x80002bb8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1372        M 0x80002bbc ret                            #; ra  = 0x80002e9c, goto 0x80002e9c
       0     1383        M 0x80002e9c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1386        M                                           #; (lsu) a0  <-- 0
       0     1387        M 0x80002ea0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1390        M                                           #; (lsu) a1  <-- 8
       0     1391        M 0x80002ea4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1394        M                                           #; (lsu) a2  <-- 0x00100000
       0     1395        M 0x80002ea8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1398        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1399        M 0x80002eac lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1400        M 0x80002eb0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1401        M 0x80002eb4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002eb4
       0     1402        M 0x80002eb8 addi    t0, t0, 60             #; t0  = 0x80002eb4, (wrb) t0  <-- 0x80002ef0
       0     1403        M 0x80002ebc csrw    mtvec, t0              #; t0  = 0x80002ef0, (lsu) a4  <-- 4132
       0     1412        M 0x80002ec0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ec0
       0     1413        M 0x80002ec4 jalr    ra, ra, 544            #; ra  = 0x80002ec0, (wrb) ra  <-- 0x80002ec8, goto 0x800030e0
       0     1428        M 0x800030e0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1429        M 0x800030e4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002ec8 ~~> Word[0x0011ff5c]
       0     1430        M 0x800030e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030e8
       0     1431        M 0x800030ec jalr    ra, ra, -1288          #; ra  = 0x800030e8, (wrb) ra  <-- 0x800030f0, goto 0x80002be0
       0     1450        M 0x80002be0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1451        M 0x80002be4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1452        M 0x80002be8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1455        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1456        M 0x80002bec lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1460        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1462        M 0x80002bf0 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1463        M 0x80002bf4 ret                            #; ra  = 0x800030f0, goto 0x800030f0
       0     1466        M                                           #; (lsu) a0  <-- 0x00120190
       0     1467        M 0x800030f0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1496        M                                           #; (lsu) a0  <-- 0
       0     1497        M 0x800030f4 mv      zero, a0               #; a0  = 0
       0     1498        M 0x800030f8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1499        M 0x800030fc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1501        M                                           #; (lsu) ra  <-- 0x80002ec8
       0     1502        M 0x80003100 ret                            #; ra  = 0x80002ec8, goto 0x80002ec8
       0     1506        M 0x80002ec8 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x7ffffec8
       0     1507        M 0x80002ecc jalr    ra, ra, 1900           #; ra  = 0x7ffffec8, (wrb) ra  <-- 0x80002ed0, goto 0x80000634
       0     1512        M 0x80000634 addi    sp, sp, -208           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fe90
       0     1513        M 0x80000638 sw      ra, 204(sp)            #; sp  = 0x0011fe90, 0x80002ed0 ~~> Word[0x0011ff5c]
       0     1514        M 0x8000063c sw      s0, 200(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011ff58]
       0     1515        M 0x80000640 sw      s1, 196(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011ff54]
       0     1516        M 0x80000644 sw      s2, 192(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011ff50]
       0     1519        M 0x80000648 fsd     fs0, 184(sp)           #; 0.0 ~~> Doub[0x0011ff48]
       0     1520        M 0x8000064c fsd     fs1, 176(sp)           #; 0.0 ~~> Doub[0x0011ff40]
       0     1530        M 0x80000650 fsd     fs2, 168(sp)           #; 0.0 ~~> Doub[0x0011ff38]
       0     1531        M 0x80000654 fsd     fs3, 160(sp)           #; 0.0 ~~> Doub[0x0011ff30]
       0     1532        M 0x80000658 fsd     fs4, 152(sp)           #; 0.0 ~~> Doub[0x0011ff28]
       0     1533        M 0x8000065c fsd     fs5, 144(sp)           #; 0.0 ~~> Doub[0x0011ff20]
       0     1542        M 0x80000660 fsd     fs6, 136(sp)           #; 0.0 ~~> Doub[0x0011ff18]
       0     1543        M 0x80000664 fsd     fs7, 128(sp)           #; 0.0 ~~> Doub[0x0011ff10]
       0     1544        M 0x80000668 fsd     fs8, 120(sp)           #; 0.0 ~~> Doub[0x0011ff08]
       0     1545        M 0x8000066c fsd     fs9, 112(sp)           #; 0.0 ~~> Doub[0x0011ff00]
       0     1554        M 0x80000678 lui     a0, 0x0                #; (wrb) a0  <-- 0
                         M 0x80000670 fsd     fs10, 104(sp)          #; 0.0 ~~> Doub[0x0011fef8]
       0     1555        M 0x8000067c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000674 fsd     fs11, 96(sp)           #; 0.0 ~~> Doub[0x0011fef0]
       0     1564        M 0x80000680 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1565        M 0x80000684 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1567        M                                           #; (lsu) a1  <-- 0
       0     1568        M 0x80000688 bnez    a1, pc + 1864          #; a1  = 0, not taken
       0     1569        M 0x8000068c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1576        M 0x80000690 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1577        M 0x80000694 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1580        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1581        M 0x80000698 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1584        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1585        M 0x8000069c lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1588        M                                           #; (lsu) s0  <-- 0x00100000
       0     1592        M 0x800006a0 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1595        M                                           #; (lsu) a1  <-- 0x00100000
       0     1596        M 0x800006a4 lw      a2, 84(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc4]
       0     1597        M 0x800006a8 addi    a3, s0, 80             #; s0  = 0x00100000, (wrb) a3  <-- 0x00100050
       0     1599        M                                           #; (lsu) a2  <-- 0x0001df30
       0     1600        M 0x800006ac add     a1, a2, a1             #; a2  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1605        M 0x800006b0 bgeu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x00100050, taken, goto 0x800006dc
       0     1631        M 0x800006dc mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1644        M 0x800006e0 addi    a2, s0, 160            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000a0
       0     1645        M 0x800006e4 mv      s0, a3                 #; a3  = 0x00100050, (wrb) s0  <-- 0x00100050
       0     1646        M 0x800006e8 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1647        M 0x800006ec bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x001000a0, taken, goto 0x800006c0
       0     1648        M 0x800006c0 mv      s1, s0                 #; s0  = 0x00100050, (wrb) s1  <-- 0x00100050
       0     1649        M 0x800006c4 addi    a3, a2, 80             #; a2  = 0x001000a0, (wrb) a3  <-- 0x001000f0
       0     1650        M 0x800006c8 mv      s0, a2                 #; a2  = 0x001000a0, (wrb) s0  <-- 0x001000a0
       0     1651        M 0x800006cc sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1652        M 0x800006d0 bltu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x001000f0, not taken
       0     1653        M 0x800006d4 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1654        M 0x800006d8 j       pc + 0x28              #; goto 0x80000700
       0     1666        M 0x80000700 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1667        M 0x80000704 srli    a1, s2, 20             #; s2  = 0x00100000, (wrb) a1  <-- 1
       0     1668        M 0x80000708 addi    a0, s2, 72             #; s2  = 0x00100000, (wrb) a0  <-- 0x00100048
       0     1669        M 0x8000070c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000370c
       0     1683        M 0x80000710 addi    a3, a3, -812           #; a3  = 0x8000370c, (wrb) a3  <-- 0x800033e0
       0     1684        M 0x80000714 auipc   t5, 0x3                #; (wrb) t5  <-- 0x80003714
       0     1685        M 0x80000718 addi    t5, t5, -812           #; t5  = 0x80003714, (wrb) t5  <-- 0x800033e8
       0     1686        M 0x8000071c auipc   t4, 0x3                #; (wrb) t4  <-- 0x8000371c
       0     1695        M 0x80000720 addi    t4, t4, -812           #; t4  = 0x8000371c, (wrb) t4  <-- 0x800033f0
       0     1696        M 0x80000724 auipc   t3, 0x3                #; (wrb) t3  <-- 0x80003724
       0     1697        M 0x80000728 addi    t3, t3, -812           #; t3  = 0x80003724, (wrb) t3  <-- 0x800033f8
       0     1698        M 0x8000072c auipc   t2, 0x3                #; (wrb) t2  <-- 0x8000372c
       0     1707        M 0x80000730 addi    t2, t2, -812           #; t2  = 0x8000372c, (wrb) t2  <-- 0x80003400
       0     1708        M 0x80000734 auipc   t1, 0x3                #; (wrb) t1  <-- 0x80003734
       0     1709        M 0x80000738 addi    t1, t1, -812           #; t1  = 0x80003734, (wrb) t1  <-- 0x80003408
       0     1710        M 0x8000073c auipc   t0, 0x3                #; (wrb) t0  <-- 0x8000373c
       0     1719        M 0x80000740 addi    t0, t0, -812           #; t0  = 0x8000373c, (wrb) t0  <-- 0x80003410
       0     1720        M 0x80000744 auipc   a7, 0x3                #; (wrb) a7  <-- 0x80003744
       0     1721        M 0x80000748 addi    a7, a7, -812           #; a7  = 0x80003744, (wrb) a7  <-- 0x80003418
       0     1722        M 0x8000074c auipc   a6, 0x3                #; (wrb) a6  <-- 0x8000374c
       0     1731        M 0x80000750 addi    a6, a6, -812           #; a6  = 0x8000374c, (wrb) a6  <-- 0x80003420
       0     1732        M 0x80000754 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     1733        M 0x80000758 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1734        M 0x8000075c sltu    a0, a0, a2             #; a0  = 0x00100048, a2  = 0x00120001, (wrb) a0  <-- 1
       0     1743        M 0x80000760 and     a2, a1, a0             #; a1  = 1, a0  = 1, (wrb) a2  <-- 1
       0     1744        M 0x80000764 beqz    a2, pc + 140           #; a2  = 1, not taken
       0     1745        M 0x80000768 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1746        M 0x8000076c li      a4, 64                 #; (wrb) a4  <-- 64
       0     1757        M 0x80000770 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800033e0]
       0     1758        M 0x80000774 fld     fs6, 0(t5)             #; fs6  <~~ Doub[0x800033e8]
       0     1766        M                                           #; (f:lsu) ft4  <-- 2.8284
       0     1767        M 0x80000778 fld     fs7, 0(t4)             #; fs7  <~~ Doub[0x800033f0], (f:lsu) fs6  <-- 4.2426000
       0     1768        M 0x8000077c fld     ft5, 0(t3)             #; ft5  <~~ Doub[0x800033f8]
       0     1776        M                                           #; (f:lsu) fs7  <-- 5.6568
       0     1777        M 0x80000780 fld     ft6, 0(t2)             #; ft6  <~~ Doub[0x80003400], (f:lsu) ft5  <-- 7.071
       0     1778        M 0x80000784 fld     fs8, 0(t1)             #; fs8  <~~ Doub[0x80003408]
       0     1780        M 0x80000794 li      a0, 8                  #; (wrb) a0  <-- 8
       0     1781        M 0x80000798 li      a5, 192                #; (wrb) a5  <-- 192
       0     1782        M 0x8000079c li      a1, 32                 #; (wrb) a1  <-- 32
       0     1786        M                                           #; (f:lsu) ft6  <-- 8.4852000
       0     1787        M 0x80000788 fld     fs9, 0(t0)             #; fs9  <~~ Doub[0x80003410], (f:lsu) fs8  <-- 9.8994
       0     1788        M 0x8000078c fld     fs10, 0(a7)            #; fs10 <~~ Doub[0x80003418]
       0     1791        M 0x800007a0 scfgw   a2, a4                 #; a2  = 9, a4  = 64
       0     1792        M 0x800007a4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800037a4
       0     1793        M 0x800007a8 addi    a2, a2, -972           #; a2  = 0x800037a4, (wrb) a2  <-- 0x800033d8
       0     1794        M 0x800007ac scfgw   a0, a5                 #; a0  = 8, a5  = 192, (acc) ra  <-- 0x00f520ab
       0     1796        M                                           #; (f:lsu) fs9  <-- 11.3136
       0     1797        M 0x80000790 fld     fs11, 0(a6)            #; fs11 <~~ Doub[0x80003420], (f:lsu) fs10 <-- 12.7278000
       0     1803        M 0x800007b0 scfgw   zero, a1               #; a1  = 32
       0     1804        M 0x800007b4 scfgwi  s2, 896                #; s2  = 0x00100000
       0     1806        M                                           #; (acc) gp  <-- 0x00063187
                         M 0x800007b8 csrrsi  a4, ssr, 1             #; (f:lsu) fs11 <-- 14.142
       0     1808        M 0x800007bc fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800033d8]
       0     1817        M                                           #; (f:lsu) ft3  <-- 1.4142
       0     1818        M 0x800007c0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.4142, ft3  = 1.4142
       0     1819        M 0x800007c4 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284, (f:fpu) ft0  <-- 1.4142
       0     1820        M 0x800007c8 fsgnj.d ft0, fs6, fs6          #; fs6  = 4.2426000, fs6  = 4.2426000, (f:fpu) ft0  <-- 2.8284
       0     1821        M 0x800007cc fsgnj.d ft0, fs7, fs7          #; fs7  = 5.6568, fs7  = 5.6568, (f:fpu) ft0  <-- 4.2426000
       0     1822        M                                           #; (f:fpu) ft0  <-- 5.6568
       0     1829        M 0x800007d0 fsgnj.d ft0, ft5, ft5          #; ft5  = 7.071, ft5  = 7.071
       0     1830        M 0x800007d4 fsgnj.d ft0, ft6, ft6          #; ft6  = 8.4852000, ft6  = 8.4852000, (f:fpu) ft0  <-- 7.071
       0     1831        M 0x800007d8 fsgnj.d ft0, fs8, fs8          #; fs8  = 9.8994, fs8  = 9.8994, (f:fpu) ft0  <-- 8.4852000
       0     1832        M 0x800007dc fsgnj.d ft0, fs9, fs9          #; fs9  = 11.3136, fs9  = 11.3136, (f:fpu) ft0  <-- 9.8994
       0     1833        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     1841        M 0x800007e0 fsgnj.d ft0, fs10, fs10        #; fs10 = 12.7278000, fs10 = 12.7278000
       0     1842        M 0x800007ec j       pc + 0xcc              #; goto 0x800008b8
                         M 0x800007e4 fsgnj.d ft0, fs11, fs11        #; fs11 = 14.142, fs11 = 14.142, (f:fpu) ft0  <-- 12.7278000
       0     1843        M 0x800007e8 csrrci  a5, ssr, 1             #; (f:fpu) ft0  <-- 14.142
       0     1851        M 0x800008b8 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     1852        M 0x800008bc srli    a2, s1, 20             #; s1  = 0x00100050, (wrb) a2  <-- 1
       0     1863        M 0x800008c0 addi    a0, s1, 72             #; s1  = 0x00100050, (wrb) a0  <-- 0x00100098
       0     1864        M 0x800008c4 addi    a4, a4, 1              #; a4  = 0x00120000, (wrb) a4  <-- 0x00120001
       0     1865        M 0x800008c8 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1866        M 0x800008cc sltu    a0, a0, a4             #; a0  = 0x00100098, a4  = 0x00120001, (wrb) a0  <-- 1
       0     1875        M 0x800008d0 and     a0, a2, a0             #; a2  = 1, a0  = 1, (wrb) a0  <-- 1
       0     1876        M 0x800008d4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038d4
       0     1877        M 0x800008d8 addi    a2, a2, -1196          #; a2  = 0x800038d4, (wrb) a2  <-- 0x80003428
       0     1878        M 0x800008dc beqz    a0, pc + 132           #; a0  = 1, not taken
       0     1889        M 0x800008e0 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800033e0]
       0     1890        M 0x800008e4 fld     ft4, 0(t5)             #; ft4  <~~ Doub[0x800033e8]
       0     1898        M                                           #; (f:lsu) ft3  <-- 2.8284
       0     1899        M 0x800008e8 fld     fs6, 0(t4)             #; fs6  <~~ Doub[0x800033f0], (f:lsu) ft4  <-- 4.2426000
       0     1900        M 0x800008ec fld     fs7, 0(t3)             #; fs7  <~~ Doub[0x800033f8]
       0     1908        M                                           #; (f:lsu) fs6  <-- 5.6568
       0     1909        M 0x800008f0 fld     ft5, 0(t2)             #; ft5  <~~ Doub[0x80003400], (f:lsu) fs7  <-- 7.071
       0     1910        M 0x800008f4 fld     ft6, 0(t1)             #; ft6  <~~ Doub[0x80003408]
       0     1913        M 0x80000908 li      a0, 8                  #; (wrb) a0  <-- 8
       0     1914        M 0x8000090c li      a4, 9                  #; (wrb) a4  <-- 9
       0     1918        M                                           #; (f:lsu) ft5  <-- 8.4852000
       0     1919        M 0x800008f8 fld     fs8, 0(t0)             #; fs8  <~~ Doub[0x80003410], (f:lsu) ft6  <-- 9.8994
       0     1920        M 0x800008fc fld     fs9, 0(a7)             #; fs9  <~~ Doub[0x80003418]
       0     1923        M 0x80000910 li      a5, 64                 #; (wrb) a5  <-- 64
       0     1924        M 0x80000914 li      a1, 192                #; (wrb) a1  <-- 192
       0     1925        M 0x80000918 scfgw   a4, a5                 #; a4  = 9, a5  = 64
       0     1926        M 0x8000091c scfgw   a0, a1                 #; a0  = 8, a1  = 192
       0     1928        M                                           #; (f:lsu) fs8  <-- 11.3136
       0     1929        M 0x80000900 fld     fs10, 0(a6)            #; fs10 <~~ Doub[0x80003420], (f:lsu) fs9  <-- 12.7278000
       0     1930        M 0x80000904 fld     fs11, 0(a2)            #; fs11 <~~ Doub[0x80003428]
       0     1935        M 0x80000920 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1936        M 0x80000924 scfgw   zero, a1               #; a1  = 32
       0     1937        M 0x80000928 scfgwi  s1, 896                #; s1  = 0x00100050
       0     1938        M                                           #; (f:lsu) fs10 <-- 14.142
       0     1939        M 0x8000092c csrrsi  a4, ssr, 1             #; (f:lsu) fs11 <-- 15.5562000
       0     1949        M 0x80000930 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.8284, ft3  = 2.8284
       0     1950        M 0x80000934 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000, (f:fpu) ft0  <-- 2.8284
       0     1951        M 0x80000938 fsgnj.d ft0, fs6, fs6          #; fs6  = 5.6568, fs6  = 5.6568, (f:fpu) ft0  <-- 4.2426000
       0     1952        M 0x8000093c fsgnj.d ft0, fs7, fs7          #; fs7  = 7.071, fs7  = 7.071, (f:fpu) ft0  <-- 5.6568
       0     1953        M                                           #; (f:fpu) ft0  <-- 7.071
       0     1961        M 0x80000940 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.4852000, ft5  = 8.4852000
       0     1962        M 0x80000944 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.8994, ft6  = 9.8994, (f:fpu) ft0  <-- 8.4852000
       0     1963        M 0x80000948 fsgnj.d ft0, fs8, fs8          #; fs8  = 11.3136, fs8  = 11.3136, (f:fpu) ft0  <-- 9.8994
       0     1964        M 0x8000094c fsgnj.d ft0, fs9, fs9          #; fs9  = 12.7278000, fs9  = 12.7278000, (f:fpu) ft0  <-- 11.3136
       0     1965        M                                           #; (f:fpu) ft0  <-- 12.7278000
       0     1973        M 0x80000950 fsgnj.d ft0, fs10, fs10        #; fs10 = 14.142, fs10 = 14.142
       0     1974        M 0x8000095c j       pc + 0xd4              #; goto 0x80000a30
                         M 0x80000954 fsgnj.d ft0, fs11, fs11        #; fs11 = 15.5562000, fs11 = 15.5562000, (f:fpu) ft0  <-- 14.142
       0     1975        M 0x80000958 csrrci  a5, ssr, 1             #; (f:fpu) ft0  <-- 15.5562000
       0     1983        M 0x80000a30 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1984        M 0x80000a34 srli    a1, s0, 20             #; s0  = 0x001000a0, (wrb) a1  <-- 1
       0     1985        M 0x80000a38 addi    a0, s0, 72             #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000e8
       0     1986        M 0x80000a3c addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     1995        M 0x80000a40 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1996        M 0x80000a44 sltu    a0, a0, a3             #; a0  = 0x001000e8, a3  = 0x00120001, (wrb) a0  <-- 1
       0     1997        M 0x80000a48 and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     1998        M 0x80000a4c beqz    a0, pc + 140           #; a0  = 1, not taken
       0     2007        M 0x80000a50 li      a0, 8                  #; (wrb) a0  <-- 8
       0     2008        M 0x80000a54 li      a1, 9                  #; (wrb) a1  <-- 9
       0     2009        M 0x80000a58 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2010        M 0x80000a5c li      a4, 192                #; (wrb) a4  <-- 192
       0     2021        M 0x80000a60 fld     ft3, 0(t5)             #; ft3  <~~ Doub[0x800033e8]
       0     2022        M 0x80000a64 fld     ft4, 0(t4)             #; ft4  <~~ Doub[0x800033f0]
       0     2030        M                                           #; (f:lsu) ft3  <-- 4.2426000
       0     2031        M 0x80000a68 fld     fs6, 0(t3)             #; fs6  <~~ Doub[0x800033f8], (f:lsu) ft4  <-- 5.6568
       0     2032        M 0x80000a6c fld     fs7, 0(t2)             #; fs7  <~~ Doub[0x80003400]
       0     2040        M                                           #; (f:lsu) fs6  <-- 7.071
       0     2041        M 0x80000a70 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x80003408], (f:lsu) fs7  <-- 8.4852000
       0     2042        M 0x80000a74 fld     ft6, 0(t0)             #; ft6  <~~ Doub[0x80003410]
       0     2044        M 0x80000a84 scfgw   a1, a3                 #; a1  = 9, a3  = 64
       0     2045        M 0x80000a88 scfgw   a0, a4                 #; a0  = 8, a4  = 192
       0     2046        M 0x80000a8c auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003a8c
       0     2050        M                                           #; (f:lsu) ft5  <-- 9.8994
       0     2051        M 0x80000a78 fld     fs8, 0(a7)             #; fs8  <~~ Doub[0x80003418], (f:lsu) ft6  <-- 11.3136
       0     2052        M 0x80000a7c fld     fs9, 0(a6)             #; fs9  <~~ Doub[0x80003420]
       0     2055        M 0x80000a90 addi    a0, a0, -1628          #; a0  = 0x80003a8c, (wrb) a0  <-- 0x80003430
       0     2056        M 0x80000a94 li      a3, 32                 #; (wrb) a3  <-- 32
       0     2058        M 0x80000a9c scfgw   zero, a3               #; a3  = 32
       0     2060        M                                           #; (f:lsu) fs8  <-- 12.7278000
       0     2061        M 0x80000a80 fld     fs10, 0(a2)            #; fs10 <~~ Doub[0x80003428], (f:lsu) fs9  <-- 14.142
       0     2062        M 0x80000a98 fld     fs11, 0(a0)            #; fs11 <~~ Doub[0x80003430]
       0     2067        M 0x80000aa0 scfgwi  s0, 896                #; s0  = 0x001000a0
       0     2069        M 0x80000aa4 csrrsi  a4, ssr, 1             #; 
       0     2070        M                                           #; (f:lsu) fs10 <-- 15.5562000
       0     2071        M 0x80000aa8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.2426000, ft3  = 4.2426000, (f:lsu) fs11 <-- 16.9704000
       0     2072        M 0x80000aac fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568, (f:fpu) ft0  <-- 4.2426000
       0     2073        M                                           #; (f:fpu) ft0  <-- 5.6568
       0     2081        M 0x80000ab0 fsgnj.d ft0, fs6, fs6          #; fs6  = 7.071, fs6  = 7.071
       0     2082        M 0x80000ab4 fsgnj.d ft0, fs7, fs7          #; fs7  = 8.4852000, fs7  = 8.4852000, (f:fpu) ft0  <-- 7.071
       0     2083        M 0x80000ab8 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.8994, ft5  = 9.8994, (f:fpu) ft0  <-- 8.4852000
       0     2084        M 0x80000abc fsgnj.d ft0, ft6, ft6          #; ft6  = 11.3136, ft6  = 11.3136, (f:fpu) ft0  <-- 9.8994
       0     2085        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     2093        M 0x80000ac0 fsgnj.d ft0, fs8, fs8          #; fs8  = 12.7278000, fs8  = 12.7278000
       0     2094        M 0x80000ac4 fsgnj.d ft0, fs9, fs9          #; fs9  = 14.142, fs9  = 14.142, (f:fpu) ft0  <-- 12.7278000
       0     2095        M 0x80000ac8 fsgnj.d ft0, fs10, fs10        #; fs10 = 15.5562000, fs10 = 15.5562000, (f:fpu) ft0  <-- 14.142
       0     2096        M 0x80000acc fsgnj.d ft0, fs11, fs11        #; fs11 = 16.9704000, fs11 = 16.9704000, (f:fpu) ft0  <-- 15.5562000
       0     2097        M                                           #; (f:fpu) ft0  <-- 16.9704000
       0     2104        M 0x80000ad4 j       pc + 0xd4              #; goto 0x80000ba8
                         M 0x80000ad0 csrrci  a5, ssr, 1             #; 
       0     2115        M 0x80000ba8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2116        M 0x80000bac li      a1, 0                  #; (wrb) a1  <-- 0
       0     2127        M 0x80000bb0 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002bb0
       0     2128        M 0x80000bb4 jalr    ra, ra, 272            #; ra  = 0x80002bb0, (wrb) ra  <-- 0x80000bb8, goto 0x80002cc0
       0     2150        M 0x80002cc0 slli    a1, a1, 3              #; a1  = 0, (wrb) a1  <-- 0
       0     2151        M 0x80002cc4 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 0, (wrb) a0  <-- 0x001000a0
       0     2152        M 0x80002cc8 sw      zero, 4(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a4]
       0     2153        M 0x80002ccc sw      zero, 0(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a0]
       0     2162        M 0x80002cd0 ret                            #; ra  = 0x80000bb8, goto 0x80000bb8
       0     2165        M 0x80000bb8 fld     ft3, 0(s2)             #; ft3  <~~ Doub[0x00100000]
       0     2166        M 0x80000bc4 li      a1, 1                  #; (wrb) a1  <-- 1
                         M 0x80000bbc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 1.4142
       0     2167        M 0x80000bc8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000bc0 fld     fs1, 0(s0)             #; fs1  <~~ Doub[0x001000a0], (f:lsu) ft4  <-- 2.8284
       0     2168        M                                           #; (f:lsu) fs1  <-- 0.0
       0     2170        M 0x80000bcc fadd.d  fs2, ft3, ft4          #; ft3  = 1.4142, ft4  = 2.8284
       0     2173        M                                           #; (f:fpu) fs2  <-- 4.2426000
       0     2177        M 0x80000bd0 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002bd0
       0     2178        M 0x80000bd4 jalr    ra, ra, 240            #; ra  = 0x80002bd0, (wrb) ra  <-- 0x80000bd8, goto 0x80002cc0
       0     2179        M 0x80002cc0 slli    a1, a1, 3              #; a1  = 1, (wrb) a1  <-- 8
       0     2180        M 0x80002cc4 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 8, (wrb) a0  <-- 0x001000a8
       0     2181        M 0x80002cc8 sw      zero, 4(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000ac]
       0     2182        M 0x80002ccc sw      zero, 0(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000a8]
       0     2183        M 0x80002cd0 ret                            #; ra  = 0x80000bd8, goto 0x80000bd8
       0     2186        M 0x80000bd8 fld     ft3, 8(s2)             #; ft3  <~~ Doub[0x00100008]
       0     2187        M 0x80000bdc fld     ft4, 8(s1)             #; ft4  <~~ Doub[0x00100058], (f:lsu) ft3  <-- 2.8284
       0     2188        M                                           #; (f:lsu) ft4  <-- 4.2426000
       0     2190        M 0x80000be4 li      a1, 2                  #; (wrb) a1  <-- 2
       0     2191        M 0x80000be8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000be0 fld     ft5, 8(s0)             #; ft5  <~~ Doub[0x001000a8]
       0     2192        M                                           #; (f:lsu) ft5  <-- 0.0
       0     2194        M 0x80000bec fadd.d  ft3, ft3, fs2          #; ft3  = 2.8284, fs2  = 4.2426000
       0     2197        M                                           #; (f:fpu) ft3  <-- 7.071
       0     2203        M 0x80000bf0 fadd.d  ft4, fs1, ft4          #; fs1  = 0.0, ft4  = 4.2426000
       0     2204        M 0x80000bf4 fsd     ft5, 80(sp)            #; 0.0 ~~> Doub[0x0011fee0]
       0     2206        M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     2207        M 0x80000bf8 fadd.d  ft3, ft3, ft4          #; ft3  = 7.071, ft4  = 4.2426000
       0     2210        M                                           #; (f:fpu) ft3  <-- 11.3136
       0     2211        M 0x80000bfc fsd     ft3, 72(sp)            #; 11.3136 ~~> Doub[0x0011fed8]
       0     2213        M 0x80000c00 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002c00
       0     2214        M 0x80000c04 jalr    ra, ra, 192            #; ra  = 0x80002c00, (wrb) ra  <-- 0x80000c08, goto 0x80002cc0
       0     2215        M 0x80002cc0 slli    a1, a1, 3              #; a1  = 2, (wrb) a1  <-- 16
       0     2216        M 0x80002cc4 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 16, (wrb) a0  <-- 0x001000b0
       0     2217        M 0x80002cc8 sw      zero, 4(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b4]
       0     2218        M 0x80002ccc sw      zero, 0(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b0]
       0     2219        M 0x80002cd0 ret                            #; ra  = 0x80000c08, goto 0x80000c08
       0     2222        M 0x80000c08 fld     ft3, 16(s2)            #; ft3  <~~ Doub[0x00100010]
       0     2223        M 0x80000c0c fld     fs10, 16(s1)           #; fs10 <~~ Doub[0x00100060], (f:lsu) ft3  <-- 4.2426000
       0     2224        M                                           #; (f:lsu) fs10 <-- 5.6568
       0     2226        M 0x80000c14 li      a1, 3                  #; (wrb) a1  <-- 3
       0     2227        M 0x80000c18 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000c10 fld     fs11, 16(s0)           #; fs11 <~~ Doub[0x001000b0]
       0     2228        M                                           #; (f:lsu) fs11 <-- 0.0
       0     2230        M 0x80000c1c fsd     ft3, 56(sp)            #; 4.2426000 ~~> Doub[0x0011fec8]
       0     2239        M 0x80000c28 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002c28
                         M 0x80000c20 fsd     fs10, 64(sp)           #; 5.6568 ~~> Doub[0x0011fed0]
       0     2240        M 0x80000c2c jalr    ra, ra, 152            #; ra  = 0x80002c28, (wrb) ra  <-- 0x80000c30, goto 0x80002cc0
                         M 0x80000c24 fsd     fs11, 48(sp)           #; 0.0 ~~> Doub[0x0011fec0]
       0     2251        M 0x80002cc0 slli    a1, a1, 3              #; a1  = 3, (wrb) a1  <-- 24
       0     2252        M 0x80002cc4 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 24, (wrb) a0  <-- 0x001000b8
       0     2253        M 0x80002cc8 sw      zero, 4(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000bc]
       0     2254        M 0x80002ccc sw      zero, 0(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000b8]
       0     2255        M 0x80002cd0 ret                            #; ra  = 0x80000c30, goto 0x80000c30
       0     2258        M 0x80000c30 fld     ft3, 24(s1)            #; ft3  <~~ Doub[0x00100068]
       0     2259        M 0x80000c3c li      a1, 4                  #; (wrb) a1  <-- 4
                         M 0x80000c34 fld     ft4, 24(s0)            #; ft4  <~~ Doub[0x001000b8], (f:lsu) ft3  <-- 7.071
       0     2260        M 0x80000c38 fld     ft5, 24(s2)            #; ft5  <~~ Doub[0x00100018], (f:lsu) ft4  <-- 0.0
       0     2261        M                                           #; (f:lsu) ft5  <-- 5.6568
       0     2270        M 0x80000c40 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2273        M 0x80000c44 fadd.d  ft3, ft3, ft4          #; ft3  = 7.071, ft4  = 0.0
       0     2274        M 0x80000c48 fsd     ft5, 40(sp)            #; 5.6568 ~~> Doub[0x0011feb8]
       0     2276        M                                           #; (f:fpu) ft3  <-- 7.071
       0     2277        M 0x80000c4c fsd     ft3, 24(sp)            #; 7.071 ~~> Doub[0x0011fea8]
       0     2282        M 0x80000c50 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002c50
       0     2283        M 0x80000c54 jalr    ra, ra, 112            #; ra  = 0x80002c50, (wrb) ra  <-- 0x80000c58, goto 0x80002cc0
       0     2284        M 0x80002cc0 slli    a1, a1, 3              #; a1  = 4, (wrb) a1  <-- 32
       0     2285        M 0x80002cc4 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 32, (wrb) a0  <-- 0x001000c0
       0     2286        M 0x80002cc8 sw      zero, 4(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c4]
       0     2287        M 0x80002ccc sw      zero, 0(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c0]
       0     2288        M 0x80002cd0 ret                            #; ra  = 0x80000c58, goto 0x80000c58
       0     2291        M 0x80000c58 fld     ft3, 32(s2)            #; ft3  <~~ Doub[0x00100020]
       0     2292        M 0x80000c5c fld     fs10, 32(s1)           #; fs10 <~~ Doub[0x00100070], (f:lsu) ft3  <-- 7.071
       0     2293        M                                           #; (f:lsu) fs10 <-- 8.4852000
       0     2295        M 0x80000c64 li      a1, 5                  #; (wrb) a1  <-- 5
       0     2296        M 0x80000c68 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000c60 fld     fs11, 32(s0)           #; fs11 <~~ Doub[0x001000c0]
       0     2297        M                                           #; (f:lsu) fs11 <-- 0.0
       0     2299        M 0x80000c6c fsd     ft3, 8(sp)             #; 7.071 ~~> Doub[0x0011fe98]
       0     2308        M 0x80000c78 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002c78
                         M 0x80000c70 fsd     fs10, 32(sp)           #; 8.4852000 ~~> Doub[0x0011feb0]
       0     2309        M 0x80000c7c jalr    ra, ra, 72             #; ra  = 0x80002c78, (wrb) ra  <-- 0x80000c80, goto 0x80002cc0
                         M 0x80000c74 fsd     fs11, 16(sp)           #; 0.0 ~~> Doub[0x0011fea0]
       0     2310        M 0x80002cc0 slli    a1, a1, 3              #; a1  = 5, (wrb) a1  <-- 40
       0     2311        M 0x80002cc4 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 40, (wrb) a0  <-- 0x001000c8
       0     2312        M 0x80002cc8 sw      zero, 4(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000cc]
       0     2313        M 0x80002ccc sw      zero, 0(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000c8]
       0     2314        M 0x80002cd0 ret                            #; ra  = 0x80000c80, goto 0x80000c80
       0     2320        M 0x80000c80 fld     fs10, 40(s2)           #; fs10 <~~ Doub[0x00100028]
       0     2321        M 0x80000c8c li      a1, 6                  #; (wrb) a1  <-- 6
                         M 0x80000c84 fld     fs11, 40(s1)           #; fs11 <~~ Doub[0x00100078], (f:lsu) fs10 <-- 8.4852000
       0     2322        M 0x80000c88 fld     fs0, 40(s0)            #; fs0  <~~ Doub[0x001000c8], (f:lsu) fs11 <-- 9.8994
       0     2323        M                                           #; (f:lsu) fs0  <-- 0.0
       0     2330        M 0x80000c90 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2331        M 0x80000c94 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002c94
       0     2332        M 0x80000c98 jalr    ra, ra, 44             #; ra  = 0x80002c94, (wrb) ra  <-- 0x80000c9c, goto 0x80002cc0
       0     2344        M 0x80002cc0 slli    a1, a1, 3              #; a1  = 6, (wrb) a1  <-- 48
       0     2345        M 0x80002cc4 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 48, (wrb) a0  <-- 0x001000d0
       0     2346        M 0x80002cc8 sw      zero, 4(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d4]
       0     2347        M 0x80002ccc sw      zero, 0(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d0]
       0     2348        M 0x80002cd0 ret                            #; ra  = 0x80000c9c, goto 0x80000c9c
       0     2351        M 0x80000c9c fld     fs1, 48(s2)            #; fs1  <~~ Doub[0x00100030]
       0     2352        M 0x80000ca8 li      a1, 7                  #; (wrb) a1  <-- 7
                         M 0x80000ca0 fld     fs2, 48(s1)            #; fs2  <~~ Doub[0x00100080], (f:lsu) fs1  <-- 9.8994
       0     2353        M 0x80000cac mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000ca4 fld     fs3, 48(s0)            #; fs3  <~~ Doub[0x001000d0], (f:lsu) fs2  <-- 11.3136
       0     2354        M                                           #; (f:lsu) fs3  <-- 0.0
       0     2363        M 0x80000cb0 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002cb0
       0     2364        M 0x80000cb4 jalr    ra, ra, 16             #; ra  = 0x80002cb0, (wrb) ra  <-- 0x80000cb8, goto 0x80002cc0
       0     2365        M 0x80002cc0 slli    a1, a1, 3              #; a1  = 7, (wrb) a1  <-- 56
       0     2366        M 0x80002cc4 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 56, (wrb) a0  <-- 0x001000d8
       0     2367        M 0x80002cc8 sw      zero, 4(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000dc]
       0     2368        M 0x80002ccc sw      zero, 0(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000d8]
       0     2369        M 0x80002cd0 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     2372        M 0x80000cb8 fld     fs4, 56(s2)            #; fs4  <~~ Doub[0x00100038]
       0     2373        M 0x80000cbc fld     fs5, 56(s1)            #; fs5  <~~ Doub[0x00100088], (f:lsu) fs4  <-- 11.3136
       0     2374        M                                           #; (f:lsu) fs5  <-- 12.7278000
       0     2377        M 0x80000cc4 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2378        M 0x80000cc8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000cc0 fld     fs6, 56(s0)            #; fs6  <~~ Doub[0x001000d8]
       0     2379        M 0x80000ccc auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002ccc
                         M                                           #; (f:lsu) fs6  <-- 0.0
       0     2389        M 0x80000cd0 jalr    ra, ra, -12            #; ra  = 0x80002ccc, (wrb) ra  <-- 0x80000cd4, goto 0x80002cc0
       0     2404        M 0x80002cc0 slli    a1, a1, 3              #; a1  = 8, (wrb) a1  <-- 64
       0     2405        M 0x80002cc4 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 64, (wrb) a0  <-- 0x001000e0
       0     2406        M 0x80002cc8 sw      zero, 4(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e4]
       0     2407        M 0x80002ccc sw      zero, 0(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e0]
       0     2409        M 0x80002cd0 ret                            #; ra  = 0x80000cd4, goto 0x80000cd4
       0     2415        M 0x80000cd4 fld     fs7, 64(s2)            #; fs7  <~~ Doub[0x00100040]
       0     2416        M 0x80000cd8 fld     fs8, 64(s1)            #; fs8  <~~ Doub[0x00100090], (f:lsu) fs7  <-- 12.7278000
       0     2417        M 0x80000ce0 li      a1, 9                  #; (wrb) a1  <-- 9
                         M 0x80000cdc fld     fs9, 64(s0)            #; fs9  <~~ Doub[0x001000e0], (f:lsu) fs8  <-- 14.142
       0     2418        M 0x80000ce4 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M                                           #; (f:lsu) fs9  <-- 0.0
       0     2419        M 0x80000ce8 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002ce8
       0     2420        M 0x80000cec jalr    ra, ra, -40            #; ra  = 0x80002ce8, (wrb) ra  <-- 0x80000cf0, goto 0x80002cc0
       0     2421        M 0x80002cc0 slli    a1, a1, 3              #; a1  = 9, (wrb) a1  <-- 72
       0     2422        M 0x80002cc4 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 72, (wrb) a0  <-- 0x001000e8
       0     2423        M 0x80002cc8 sw      zero, 4(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000ec]
       0     2424        M 0x80002ccc sw      zero, 0(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000e8]
       0     2432        M 0x80002cd0 ret                            #; ra  = 0x80000cf0, goto 0x80000cf0
       0     2434        M 0x80000cf4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002cf4
       0     2435        M 0x80000cf8 addi    a0, a0, 1860           #; a0  = 0x80002cf4, (wrb) a0  <-- 0x80003438
                         M 0x80000cf0 fld     ft3, 72(s2)            #; ft3  <~~ Doub[0x00100048]
       0     2436        M                                           #; (f:lsu) ft3  <-- 14.142
       0     2438        M 0x80000cfc fadd.d  ft9, fs5, fs6          #; fs5  = 12.7278000, fs6  = 0.0
       0     2441        M                                           #; (f:fpu) ft9  <-- 12.7278000
       0     2449        M 0x80000d00 fadd.d  ft10, fs4, fs1         #; fs4  = 11.3136, fs1  = 9.8994
       0     2450        M 0x80000d04 fld     ft6, 72(s1)            #; ft6  <~~ Doub[0x00100098]
       0     2451        M 0x80000d08 fld     ft4, 72(s0)            #; ft4  <~~ Doub[0x001000e8], (f:lsu) ft6  <-- 15.5562000
       0     2452        M 0x80000d0c fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011fec8], (f:fpu) ft10 <-- 21.213
       0     2453        M                                           #; (f:lsu) ft4  <-- 0.0
       0     2454        M                                           #; (f:lsu) fs4  <-- 4.2426000
       0     2461        M 0x80000d10 fld     ft7, 40(sp)            #; ft7  <~~ Doub[0x0011feb8]
       0     2462        M 0x80000d14 fld     fs5, 8(sp)             #; fs5  <~~ Doub[0x0011fe98], (f:lsu) ft7  <-- 5.6568
       0     2463        M 0x80000d18 fld     ft11, 48(sp)           #; ft11 <~~ Doub[0x0011fec0], (f:lsu) fs5  <-- 7.071
       0     2464        M 0x80000d1c fld     fs1, 24(sp)            #; fs1  <~~ Doub[0x0011fea8], (f:lsu) ft11 <-- 0.0
       0     2465        M                                           #; (f:lsu) fs1  <-- 7.071
       0     2473        M 0x80000d28 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d28
                         M 0x80000d20 fld     fs6, 80(sp)            #; fs6  <~~ Doub[0x0011fee0]
       0     2474        M 0x80000d2c addi    a0, a0, 1069           #; a0  = 0x80002d28, (wrb) a0  <-- 0x80003155
                         M 0x80000d24 fld     ft5, 0(a0)             #; ft5  <~~ Doub[0x80003438], (f:lsu) fs6  <-- 0.0
       0     2483        M                                           #; (f:lsu) ft5  <-- -169.704
       0     2485        M 0x80000d30 fadd.d  ft3, ft3, fs7          #; ft3  = 14.142, fs7  = 12.7278000
       0     2486        M 0x80000d34 fld     fs7, 64(sp)            #; fs7  <~~ Doub[0x0011fed0]
       0     2487        M 0x80000d38 fadd.d  ft8, fs9, ft6          #; fs9  = 0.0, ft6  = 15.5562000, (f:lsu) fs7  <-- 5.6568
       0     2488        M 0x80000d3c fadd.d  ft6, ft7, fs4          #; ft7  = 5.6568, fs4  = 4.2426000, (f:fpu) ft3  <-- 26.8698000
       0     2490        M                                           #; (f:fpu) ft8  <-- 15.5562000
       0     2491        M                                           #; (f:fpu) ft6  <-- 9.8994
       0     2497        M 0x80000d40 fadd.d  ft7, fs10, fs5         #; fs10 = 8.4852000, fs5  = 7.071
       0     2498        M 0x80000d44 fld     fs9, 32(sp)            #; fs9  <~~ Doub[0x0011feb0]
       0     2499        M 0x80000d48 fld     fs10, 16(sp)           #; fs10 <~~ Doub[0x0011fea0], (f:lsu) fs9  <-- 8.4852000
       0     2500        M 0x80000d4c fadd.d  ft4, ft4, ft5          #; ft4  = 0.0, ft5  = -169.704, (f:fpu) ft7  <-- 15.5562000
       0     2501        M                                           #; (f:lsu) fs10 <-- 0.0
       0     2503        M                                           #; (f:fpu) ft4  <-- -169.704
       0     2509        M 0x80000d50 fadd.d  ft5, ft9, fs8          #; ft9  = 12.7278000, fs8  = 14.142
       0     2510        M 0x80000d54 fld     fs8, 72(sp)            #; fs8  <~~ Doub[0x0011fed8]
       0     2511        M 0x80000d58 fadd.d  ft3, ft3, ft10         #; ft3  = 26.8698000, ft10 = 21.213, (f:lsu) fs8  <-- 11.3136
       0     2512        M 0x80000d5c fadd.d  ft6, ft7, ft6          #; ft7  = 15.5562000, ft6  = 9.8994, (f:fpu) ft5  <-- 26.8698000
       0     2514        M                                           #; (f:fpu) ft3  <-- 48.0828
       0     2515        M                                           #; (f:fpu) ft6  <-- 25.4556000
       0     2521        M 0x80000d60 fadd.d  ft4, ft8, ft4          #; ft8  = 15.5562000, ft4  = -169.704
       0     2522        M 0x80000d64 fadd.d  ft3, ft3, ft6          #; ft3  = 48.0828, ft6  = 25.4556000
       0     2524        M                                           #; (f:fpu) ft4  <-- -154.1478000
       0     2525        M 0x80000d68 fadd.d  ft4, ft5, ft4          #; ft5  = 26.8698000, ft4  = -154.1478000, (f:fpu) ft3  <-- 73.5384
       0     2526        M 0x80000d6c fadd.d  ft5, ft11, fs1         #; ft11 = 0.0, fs1  = 7.071
       0     2528        M                                           #; (f:fpu) ft4  <-- -127.2780000
       0     2529        M                                           #; (f:fpu) ft5  <-- 7.071
       0     2533        M 0x80000d70 fadd.d  ft6, fs6, fs7          #; fs6  = 0.0, fs7  = 5.6568
       0     2536        M                                           #; (f:fpu) ft6  <-- 5.6568
       0     2537        M 0x80000d74 fadd.d  ft5, ft6, ft5          #; ft6  = 5.6568, ft5  = 7.071
       0     2540        M                                           #; (f:fpu) ft5  <-- 12.7278000
       0     2541        M 0x80000d78 fadd.d  ft5, fs8, ft5          #; fs8  = 11.3136, ft5  = 12.7278000
       0     2544        M                                           #; (f:fpu) ft5  <-- 24.0414000
       0     2545        M 0x80000d7c fadd.d  ft3, ft3, ft5          #; ft3  = 73.5384, ft5  = 24.0414000
       0     2546        M 0x80000d80 fadd.d  ft5, fs9, fs10         #; fs9  = 8.4852000, fs10 = 0.0
       0     2548        M                                           #; (f:fpu) ft3  <-- 97.5798000
       0     2549        M                                           #; (f:fpu) ft5  <-- 8.4852000
       0     2550        M 0x80000d84 fadd.d  ft5, ft5, fs11         #; ft5  = 8.4852000, fs11 = 9.8994
       0     2551        M 0x80000d88 fadd.d  fs11, fs2, fs3         #; fs2  = 11.3136, fs3  = 0.0
       0     2553        M                                           #; (f:fpu) ft5  <-- 18.3846
       0     2554        M                                           #; (f:fpu) fs11 <-- 11.3136
       0     2555        M 0x80000d8c fadd.d  ft6, fs0, fs11         #; fs0  = 0.0, fs11 = 11.3136
       0     2558        M                                           #; (f:fpu) ft6  <-- 11.3136
       0     2559        M 0x80000d90 fadd.d  ft5, ft5, ft6          #; ft5  = 18.3846, ft6  = 11.3136
       0     2562        M                                           #; (f:fpu) ft5  <-- 29.6982
       0     2563        M 0x80000d94 fadd.d  ft4, ft5, ft4          #; ft5  = 29.6982, ft4  = -127.2780000
       0     2566        M                                           #; (f:fpu) ft4  <-- -97.5798000
       0     2567        M 0x80000d98 fadd.d  ft3, ft3, ft4          #; ft3  = 97.5798000, ft4  = -97.5798000
       0     2568        M 0x80000da4 lw      a2, 88(sp)             #; sp  = 0x0011fe90, a2  <~~ Word[0x0011fee8]
       0     2570        M                                           #; (f:fpu) ft3  <-- -0.0000000
       0     2571        M                                           #; (lsu) a2  <-- 0
                         M 0x80000d9c fsd     ft3, 88(sp)            #; -0.0000000 ~~> Doub[0x0011fee8]
       0     2572        M 0x80000da8 lw      a3, 92(sp)             #; sp  = 0x0011fe90, a3  <~~ Word[0x0011feec]
                         M 0x80000da0 fsgnjx.d fs0, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000
       0     2573        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     2575        M                                           #; (lsu) a3  <-- 0xbd200000
                         M 0x80000dac fsd     fs0, 88(sp)            #; 0.0000000 ~~> Doub[0x0011fee8]
       0     2579        M 0x80000db0 lw      a4, 88(sp)             #; sp  = 0x0011fe90, a4  <~~ Word[0x0011fee8]
       0     2582        M                                           #; (lsu) a4  <-- 0
       0     2583        M 0x80000db4 lw      a5, 92(sp)             #; sp  = 0x0011fe90, a5  <~~ Word[0x0011feec]
       0     2584        M 0x80000db8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000db8
       0     2585        M 0x80000dbc jalr    ra, ra, 96             #; ra  = 0x80000db8, (wrb) ra  <-- 0x80000dc0, goto 0x80000e18
       0     2586        M                                           #; (lsu) a5  <-- 0x3d200000
       0     2593        M 0x80000e18 addi    sp, sp, -48            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe60
       0     2594        M 0x80000e1c sw      ra, 12(sp)             #; sp  = 0x0011fe60, 0x80000dc0 ~~> Word[0x0011fe6c]
       0     2596        M 0x80000e20 mv      t0, a0                 #; a0  = 0x80003155, (wrb) t0  <-- 0x80003155
       0     2597        M 0x80000e24 sw      a5, 36(sp)             #; sp  = 0x0011fe60, 0x3d200000 ~~> Word[0x0011fe84]
       0     2598        M 0x80000e28 sw      a4, 32(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe80]
       0     2599        M 0x80000e2c sw      a3, 28(sp)             #; sp  = 0x0011fe60, 0xbd200000 ~~> Word[0x0011fe7c]
       0     2608        M 0x80000e30 sw      a2, 24(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe78]
       0     2609        M 0x80000e34 sw      a1, 20(sp)             #; sp  = 0x0011fe60, 72 ~~> Word[0x0011fe74]
       0     2610        M 0x80000e38 addi    a5, sp, 20             #; sp  = 0x0011fe60, (wrb) a5  <-- 0x0011fe74
       0     2611        M 0x80000e3c auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001e3c
       0     2620        M 0x80000e40 addi    a0, a0, -980           #; a0  = 0x80001e3c, (wrb) a0  <-- 0x80001a68
       0     2621        M 0x80000e44 addi    a1, sp, 7              #; sp  = 0x0011fe60, (wrb) a1  <-- 0x0011fe67
       0     2622        M 0x80000e48 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2623        M 0x80000e4c addi    a4, sp, 20             #; sp  = 0x0011fe60, (wrb) a4  <-- 0x0011fe74
       0     2632        M 0x80000e50 sw      a7, 44(sp)             #; sp  = 0x0011fe60, 0x80003418 ~~> Word[0x0011fe8c]
       0     2633        M 0x80000e54 sw      a6, 40(sp)             #; sp  = 0x0011fe60, 0x80003420 ~~> Word[0x0011fe88]
       0     2634        M 0x80000e58 mv      a3, t0                 #; t0  = 0x80003155, (wrb) a3  <-- 0x80003155
       0     2635        M 0x80000e5c sw      a5, 8(sp)              #; sp  = 0x0011fe60, 0x0011fe74 ~~> Word[0x0011fe68]
       0     2644        M 0x80000e60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000e60
       0     2645        M 0x80000e64 jalr    ra, ra, 20             #; ra  = 0x80000e60, (wrb) ra  <-- 0x80000e68, goto 0x80000e74
       0     2656        M 0x80000e74 addi    sp, sp, -112           #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fdf0
       0     2657        M 0x80000e78 sw      ra, 108(sp)            #; sp  = 0x0011fdf0, 0x80000e68 ~~> Word[0x0011fe5c]
       0     2658        M 0x80000e7c sw      s0, 104(sp)            #; sp  = 0x0011fdf0, 0x001000a0 ~~> Word[0x0011fe58]
       0     2668        M 0x80000e80 sw      s1, 100(sp)            #; sp  = 0x0011fdf0, 0x00100050 ~~> Word[0x0011fe54]
       0     2669        M 0x80000e84 sw      s2, 96(sp)             #; sp  = 0x0011fdf0, 0x00100000 ~~> Word[0x0011fe50]
       0     2670        M 0x80000e88 sw      s3, 92(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe4c]
       0     2671        M 0x80000e8c sw      s4, 88(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe48]
       0     2680        M 0x80000e90 sw      s5, 84(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe44]
       0     2681        M 0x80000e94 sw      s6, 80(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe40]
       0     2682        M 0x80000e98 sw      s7, 76(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe3c]
       0     2683        M 0x80000e9c sw      s8, 72(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe38]
       0     2692        M 0x80000ea0 sw      s9, 68(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe34]
       0     2693        M 0x80000ea4 sw      s10, 64(sp)            #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe30]
       0     2694        M 0x80000ea8 sw      s11, 60(sp)            #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe2c]
       0     2695        M 0x80000eac mv      s3, a4                 #; a4  = 0x0011fe74, (wrb) s3  <-- 0x0011fe74
       0     2704        M 0x80000eb0 mv      s0, a3                 #; a3  = 0x80003155, (wrb) s0  <-- 0x80003155
       0     2705        M 0x80000eb4 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2706        M 0x80000eb8 mv      s4, a1                 #; a1  = 0x0011fe67, (wrb) s4  <-- 0x0011fe67
       0     2707        M 0x80000ebc beqz    a1, pc + 12            #; a1  = 0x0011fe67, not taken
       0     2716        M 0x80000ec0 mv      s2, a0                 #; a0  = 0x80001a68, (wrb) s2  <-- 0x80001a68
       0     2717        M 0x80000ec4 j       pc + 0xc               #; goto 0x80000ed0
       0     2728        M 0x80000ed0 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2729        M 0x80000ed4 lui     a5, 0x10               #; (wrb) a5  <-- 0x00010000
       0     2730        M 0x80000ed8 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2731        M 0x80000edc li      s6, 37                 #; (wrb) s6  <-- 37
       0     2740        M 0x80000ee0 li      s11, 16                #; (wrb) s11 <-- 16
       0     2741        M 0x80000ee4 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2742        M 0x80000ee8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2743        M 0x80000eec sw      a0, 24(sp)             #; sp  = 0x0011fdf0, 2048 ~~> Word[0x0011fe08]
       0     2752        M 0x80000ef0 addi    a0, a5, -1             #; a5  = 0x00010000, (wrb) a0  <-- 65535
       0     2753        M 0x80000ef4 sw      a0, 16(sp)             #; sp  = 0x0011fdf0, 65535 ~~> Word[0x0011fe00]
       0     2754        M 0x80000ef8 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2755        M 0x80000efc addi    s10, s0, 2             #; s0  = 0x80003155, (wrb) s10 <-- 0x80003157
       0     2764        M 0x80000f00 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2765        M 0x80000f04 lbu     a0, 0(s0)              #; s0  = 0x80003155, a0  <~~ Byte[0x80003155]
       0     2776        M                                           #; (lsu) a0  <-- 101
       0     2777        M 0x80000f08 beqz    a0, pc + 2820          #; a0  = 101, not taken
       0     2778        M 0x80000f0c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2779        M 0x80000f10 mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     2780        M 0x80000f14 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2781        M 0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2782        M 0x80000f1c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2791        M 0x80000f20 jalr    s2                     #; s2  = 0x80001a68, (wrb) ra  <-- 0x80000f24, goto 0x80001a68
       0     2814        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2815        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2826        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2827        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     2828        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     2829        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2838        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     2839        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     2850        M                                           #; (lsu) a4  <-- 0
       0     2851        M 0x80001a88 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2852        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 0, (wrb) a4  <-- 0x800034f4
       0     2853        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 1 ~~> Word[0x800034f4]
       0     2854        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034f4, 101 ~~> Byte[0x8000353c]
       0     2855        M 0x80001a98 addi    a5, a0, -10            #; a0  = 101, (wrb) a5  <-- 91
       0     2856        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     2865        M 0x80001aa0 snez    a0, a5                 #; a5  = 91, (wrb) a0  <-- 1
       0     2876        M                                           #; (lsu) a4  <-- 1
       0     2877        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2878        M 0x80001aa8 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2879        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2880        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     2903        M 0x80001b10 ret                            #; ra  = 0x80000f24, goto 0x80000f24
       0     2917        M 0x80000f24 addi    s0, s0, 1              #; s0  = 0x80003155, (wrb) s0  <-- 0x80003156
       0     2918        M 0x80000f28 addi    s10, s10, 1            #; s10 = 0x80003157, (wrb) s10 <-- 0x80003158
       0     2919        M 0x80000f2c mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2920        M 0x80000f30 lbu     a0, 0(s0)              #; s0  = 0x80003156, a0  <~~ Byte[0x80003156]
       0     2931        M                                           #; (lsu) a0  <-- 114
       0     2932        M 0x80000f34 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f0c
       0     2933        M 0x80000f0c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2936        M 0x80000f10 mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     2937        M 0x80000f14 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2938        M 0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2939        M 0x80000f1c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2940        M 0x80000f20 jalr    s2                     #; s2  = 0x80001a68, (wrb) ra  <-- 0x80000f24, goto 0x80001a68
       0     2943        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2944        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2946        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2947        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     2948        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     2949        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2952        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2953        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     2954        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     2965        M                                           #; (lsu) a4  <-- 1
       0     2966        M 0x80001a88 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2967        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 1, (wrb) a4  <-- 0x800034f5
       0     2968        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 2 ~~> Word[0x800034f4]
       0     2969        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034f5, 114 ~~> Byte[0x8000353d]
       0     2970        M 0x80001a98 addi    a5, a0, -10            #; a0  = 114, (wrb) a5  <-- 104
       0     2971        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     2972        M 0x80001aa0 snez    a0, a5                 #; a5  = 104, (wrb) a0  <-- 1
       0     2991        M                                           #; (lsu) a4  <-- 2
       0     2992        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2993        M 0x80001aa8 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2994        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2995        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     3000        M 0x80001b10 ret                            #; ra  = 0x80000f24, goto 0x80000f24
       0     3005        M 0x80000f24 addi    s0, s0, 1              #; s0  = 0x80003156, (wrb) s0  <-- 0x80003157
       0     3006        M 0x80000f28 addi    s10, s10, 1            #; s10 = 0x80003158, (wrb) s10 <-- 0x80003159
       0     3007        M 0x80000f2c mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     3008        M 0x80000f30 lbu     a0, 0(s0)              #; s0  = 0x80003157, a0  <~~ Byte[0x80003157]
       0     3019        M                                           #; (lsu) a0  <-- 114
       0     3020        M 0x80000f34 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f0c
       0     3021        M 0x80000f0c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3024        M 0x80000f10 mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     3025        M 0x80000f14 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     3026        M 0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3027        M 0x80000f1c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     3028        M 0x80000f20 jalr    s2                     #; s2  = 0x80001a68, (wrb) ra  <-- 0x80000f24, goto 0x80001a68
       0     3031        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3032        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3034        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3035        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     3036        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     3037        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3040        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3041        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     3042        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3053        M                                           #; (lsu) a4  <-- 2
       0     3054        M 0x80001a88 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     3055        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 2, (wrb) a4  <-- 0x800034f6
       0     3056        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 3 ~~> Word[0x800034f4]
       0     3057        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034f6, 114 ~~> Byte[0x8000353e]
       0     3058        M 0x80001a98 addi    a5, a0, -10            #; a0  = 114, (wrb) a5  <-- 104
       0     3059        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3060        M 0x80001aa0 snez    a0, a5                 #; a5  = 104, (wrb) a0  <-- 1
       0     3079        M                                           #; (lsu) a4  <-- 3
       0     3080        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     3081        M 0x80001aa8 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     3082        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3083        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     3088        M 0x80001b10 ret                            #; ra  = 0x80000f24, goto 0x80000f24
       0     3093        M 0x80000f24 addi    s0, s0, 1              #; s0  = 0x80003157, (wrb) s0  <-- 0x80003158
       0     3094        M 0x80000f28 addi    s10, s10, 1            #; s10 = 0x80003159, (wrb) s10 <-- 0x8000315a
       0     3095        M 0x80000f2c mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3096        M 0x80000f30 lbu     a0, 0(s0)              #; s0  = 0x80003158, a0  <~~ Byte[0x80003158]
       0     3107        M                                           #; (lsu) a0  <-- 111
       0     3108        M 0x80000f34 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000f0c
       0     3109        M 0x80000f0c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3112        M 0x80000f10 mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     3113        M 0x80000f14 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3114        M 0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3115        M 0x80000f1c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3116        M 0x80000f20 jalr    s2                     #; s2  = 0x80001a68, (wrb) ra  <-- 0x80000f24, goto 0x80001a68
       0     3119        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3120        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3122        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3123        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     3124        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     3125        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3128        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3129        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     3130        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3141        M                                           #; (lsu) a4  <-- 3
       0     3142        M 0x80001a88 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3143        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 3, (wrb) a4  <-- 0x800034f7
       0     3144        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 4 ~~> Word[0x800034f4]
       0     3145        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034f7, 111 ~~> Byte[0x8000353f]
       0     3146        M 0x80001a98 addi    a5, a0, -10            #; a0  = 111, (wrb) a5  <-- 101
       0     3147        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3148        M 0x80001aa0 snez    a0, a5                 #; a5  = 101, (wrb) a0  <-- 1
       0     3167        M                                           #; (lsu) a4  <-- 4
       0     3168        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3169        M 0x80001aa8 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3170        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3171        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     3176        M 0x80001b10 ret                            #; ra  = 0x80000f24, goto 0x80000f24
       0     3181        M 0x80000f24 addi    s0, s0, 1              #; s0  = 0x80003158, (wrb) s0  <-- 0x80003159
       0     3182        M 0x80000f28 addi    s10, s10, 1            #; s10 = 0x8000315a, (wrb) s10 <-- 0x8000315b
       0     3183        M 0x80000f2c mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3184        M 0x80000f30 lbu     a0, 0(s0)              #; s0  = 0x80003159, a0  <~~ Byte[0x80003159]
       0     3195        M                                           #; (lsu) a0  <-- 114
       0     3196        M 0x80000f34 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f0c
       0     3197        M 0x80000f0c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3200        M 0x80000f10 mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     3201        M 0x80000f14 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3202        M 0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3203        M 0x80000f1c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3204        M 0x80000f20 jalr    s2                     #; s2  = 0x80001a68, (wrb) ra  <-- 0x80000f24, goto 0x80001a68
       0     3207        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3208        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3210        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3211        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     3212        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     3213        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3216        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3217        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     3218        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3229        M                                           #; (lsu) a4  <-- 4
       0     3230        M 0x80001a88 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3231        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 4, (wrb) a4  <-- 0x800034f8
       0     3232        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 5 ~~> Word[0x800034f4]
       0     3233        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034f8, 114 ~~> Byte[0x80003540]
       0     3234        M 0x80001a98 addi    a5, a0, -10            #; a0  = 114, (wrb) a5  <-- 104
       0     3235        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3236        M 0x80001aa0 snez    a0, a5                 #; a5  = 104, (wrb) a0  <-- 1
       0     3255        M                                           #; (lsu) a4  <-- 5
       0     3256        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3257        M 0x80001aa8 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3258        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3259        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     3264        M 0x80001b10 ret                            #; ra  = 0x80000f24, goto 0x80000f24
       0     3269        M 0x80000f24 addi    s0, s0, 1              #; s0  = 0x80003159, (wrb) s0  <-- 0x8000315a
       0     3270        M 0x80000f28 addi    s10, s10, 1            #; s10 = 0x8000315b, (wrb) s10 <-- 0x8000315c
       0     3271        M 0x80000f2c mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3272        M 0x80000f30 lbu     a0, 0(s0)              #; s0  = 0x8000315a, a0  <~~ Byte[0x8000315a]
       0     3283        M                                           #; (lsu) a0  <-- 32
       0     3284        M 0x80000f34 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000f0c
       0     3285        M 0x80000f0c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3288        M 0x80000f10 mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     3289        M 0x80000f14 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3290        M 0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3291        M 0x80000f1c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3292        M 0x80000f20 jalr    s2                     #; s2  = 0x80001a68, (wrb) ra  <-- 0x80000f24, goto 0x80001a68
       0     3295        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3296        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3298        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3299        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     3300        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     3301        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3304        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3305        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     3306        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3317        M                                           #; (lsu) a4  <-- 5
       0     3318        M 0x80001a88 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3319        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 5, (wrb) a4  <-- 0x800034f9
       0     3320        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 6 ~~> Word[0x800034f4]
       0     3321        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034f9, 32 ~~> Byte[0x80003541]
       0     3322        M 0x80001a98 addi    a5, a0, -10            #; a0  = 32, (wrb) a5  <-- 22
       0     3323        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3324        M 0x80001aa0 snez    a0, a5                 #; a5  = 22, (wrb) a0  <-- 1
       0     3343        M                                           #; (lsu) a4  <-- 6
       0     3344        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3345        M 0x80001aa8 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3346        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3347        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     3352        M 0x80001b10 ret                            #; ra  = 0x80000f24, goto 0x80000f24
       0     3357        M 0x80000f24 addi    s0, s0, 1              #; s0  = 0x8000315a, (wrb) s0  <-- 0x8000315b
       0     3358        M 0x80000f28 addi    s10, s10, 1            #; s10 = 0x8000315c, (wrb) s10 <-- 0x8000315d
       0     3359        M 0x80000f2c mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3360        M 0x80000f30 lbu     a0, 0(s0)              #; s0  = 0x8000315b, a0  <~~ Byte[0x8000315b]
       0     3371        M                                           #; (lsu) a0  <-- 61
       0     3372        M 0x80000f34 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000f0c
       0     3373        M 0x80000f0c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3376        M 0x80000f10 mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     3377        M 0x80000f14 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3378        M 0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3379        M 0x80000f1c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3380        M 0x80000f20 jalr    s2                     #; s2  = 0x80001a68, (wrb) ra  <-- 0x80000f24, goto 0x80001a68
       0     3383        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3384        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3386        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3387        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     3388        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     3389        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3392        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3393        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     3394        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3405        M                                           #; (lsu) a4  <-- 6
       0     3406        M 0x80001a88 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3407        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 6, (wrb) a4  <-- 0x800034fa
       0     3408        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 7 ~~> Word[0x800034f4]
       0     3409        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034fa, 61 ~~> Byte[0x80003542]
       0     3410        M 0x80001a98 addi    a5, a0, -10            #; a0  = 61, (wrb) a5  <-- 51
       0     3411        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3412        M 0x80001aa0 snez    a0, a5                 #; a5  = 51, (wrb) a0  <-- 1
       0     3431        M                                           #; (lsu) a4  <-- 7
       0     3432        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3433        M 0x80001aa8 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3434        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3435        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     3440        M 0x80001b10 ret                            #; ra  = 0x80000f24, goto 0x80000f24
       0     3445        M 0x80000f24 addi    s0, s0, 1              #; s0  = 0x8000315b, (wrb) s0  <-- 0x8000315c
       0     3446        M 0x80000f28 addi    s10, s10, 1            #; s10 = 0x8000315d, (wrb) s10 <-- 0x8000315e
       0     3447        M 0x80000f2c mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3448        M 0x80000f30 lbu     a0, 0(s0)              #; s0  = 0x8000315c, a0  <~~ Byte[0x8000315c]
       0     3459        M                                           #; (lsu) a0  <-- 32
       0     3460        M 0x80000f34 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000f0c
       0     3461        M 0x80000f0c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3464        M 0x80000f10 mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     3465        M 0x80000f14 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3466        M 0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3467        M 0x80000f1c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3468        M 0x80000f20 jalr    s2                     #; s2  = 0x80001a68, (wrb) ra  <-- 0x80000f24, goto 0x80001a68
       0     3471        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3472        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3474        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3475        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     3476        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     3477        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3480        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3481        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     3482        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3493        M                                           #; (lsu) a4  <-- 7
       0     3494        M 0x80001a88 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3495        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 7, (wrb) a4  <-- 0x800034fb
       0     3496        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 8 ~~> Word[0x800034f4]
       0     3497        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034fb, 32 ~~> Byte[0x80003543]
       0     3498        M 0x80001a98 addi    a5, a0, -10            #; a0  = 32, (wrb) a5  <-- 22
       0     3499        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     3500        M 0x80001aa0 snez    a0, a5                 #; a5  = 22, (wrb) a0  <-- 1
       0     3519        M                                           #; (lsu) a4  <-- 8
       0     3520        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3521        M 0x80001aa8 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3522        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3523        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     3528        M 0x80001b10 ret                            #; ra  = 0x80000f24, goto 0x80000f24
       0     3533        M 0x80000f24 addi    s0, s0, 1              #; s0  = 0x8000315c, (wrb) s0  <-- 0x8000315d
       0     3534        M 0x80000f28 addi    s10, s10, 1            #; s10 = 0x8000315e, (wrb) s10 <-- 0x8000315f
       0     3535        M 0x80000f2c mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3536        M 0x80000f30 lbu     a0, 0(s0)              #; s0  = 0x8000315d, a0  <~~ Byte[0x8000315d]
       0     3547        M                                           #; (lsu) a0  <-- 37
       0     3548        M 0x80000f34 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000f0c
       0     3549        M 0x80000f0c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000f3c
       0     3550        M 0x80000f3c li      s0, 0                  #; (wrb) s0  <-- 0
       0     3563        M 0x80000f40 j       pc + 0x10              #; goto 0x80000f50
       0     3575        M 0x80000f50 lbu     a0, -1(s10)            #; s10 = 0x8000315f, a0  <~~ Byte[0x8000315e]
       0     3586        M                                           #; (lsu) a0  <-- 102
       0     3587        M 0x80000f54 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3588        M 0x80000f58 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000f90
       0     3600        M 0x80000f90 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3601        M 0x80000f94 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3602        M 0x80000f98 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3603        M 0x80000f9c addi    a1, s10, -1            #; s10 = 0x8000315f, (wrb) a1  <-- 0x8000315e
       0     3612        M 0x80000fa0 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x8000101c
       0     3635        M 0x8000101c li      a2, 42                 #; (wrb) a2  <-- 42
       0     3647        M 0x80001020 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80001070
       0     3670        M 0x80001070 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3671        M 0x80001074 mv      s10, a1                #; a1  = 0x8000315e, (wrb) s10 <-- 0x8000315e
       0     3672        M 0x80001078 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3673        M 0x8000107c li      s7, 0                  #; (wrb) s7  <-- 0
       0     3693        M 0x80001080 j       pc + 0xc               #; goto 0x8000108c
       0     3694        M 0x8000108c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3706        M 0x80001090 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3707        M 0x80001094 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3708        M 0x80001098 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3709        M 0x8000109c li      a2, 9                  #; (wrb) a2  <-- 9
       0     3718        M 0x800010a0 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80001104
       0     3741        M 0x80001104 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3742        M 0x80001108 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3743        M 0x8000110c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3753        M 0x80001110 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3754        M 0x80001114 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80003114
       0     3755        M 0x80001118 addi    a2, a2, 192            #; a2  = 0x80003114, (wrb) a2  <-- 0x800031d4
       0     3756        M 0x8000111c li      s8, 16                 #; (wrb) s8  <-- 16
       0     3765        M 0x80001120 add     a1, a1, a2             #; a1  = 260, a2  = 0x800031d4, (wrb) a1  <-- 0x800032d8
       0     3766        M 0x80001124 lw      a2, 0(a1)              #; a1  = 0x800032d8, a2  <~~ Word[0x800032d8]
       0     3767        M 0x80001128 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3777        M                                           #; (lsu) a2  <-- 0x8000115c
       0     3778        M 0x8000112c jr      a2                     #; a2  = 0x8000115c, goto 0x8000115c
       0     3790        M 0x8000115c li      a1, 70                 #; (wrb) a1  <-- 70
       0     3802        M 0x80001160 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80001168
       0     3803        M 0x80001168 addi    a0, s3, 7              #; s3  = 0x0011fe74, (wrb) a0  <-- 0x0011fe7b
       0     3804        M 0x8000116c mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     3814        M 0x80001170 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3815        M 0x80001174 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3816        M 0x80001178 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3817        M 0x8000117c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3826        M 0x80001180 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3827        M 0x80001184 andi    a0, a0, -8             #; a0  = 0x0011fe7b, (wrb) a0  <-- 0x0011fe78
       0     3829        M 0x8000118c addi    s3, a0, 8              #; a0  = 0x0011fe78, (wrb) s3  <-- 0x0011fe80
       0     3830        M 0x80001188 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fe78]
       0     3831        M                                           #; (f:lsu) fa0  <-- -0.0000000
       0     3838        M 0x80001190 mv      a0, s2                 #; s2  = 0x80001a68, (wrb) a0  <-- 0x80001a68
       0     3839        M 0x80001194 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002194
       0     3840        M 0x80001198 jalr    ra, ra, -1660          #; ra  = 0x80002194, (wrb) ra  <-- 0x8000119c, goto 0x80001b18
       0     3852        M 0x80001b18 addi    sp, sp, -112           #; sp  = 0x0011fdf0, (wrb) sp  <-- 0x0011fd80
       0     3853        M 0x80001b1c sw      ra, 108(sp)            #; sp  = 0x0011fd80, 0x8000119c ~~> Word[0x0011fdec]
       0     3855        M 0x80001b20 sw      s0, 104(sp)            #; sp  = 0x0011fd80, 0 ~~> Word[0x0011fde8]
       0     3856        M 0x80001b24 sw      s1, 100(sp)            #; sp  = 0x0011fd80, 8 ~~> Word[0x0011fde4]
       0     3857        M 0x80001b28 sw      s2, 96(sp)             #; sp  = 0x0011fd80, 0x80001a68 ~~> Word[0x0011fde0]
       0     3858        M 0x80001b2c sw      s3, 92(sp)             #; sp  = 0x0011fd80, 0x0011fe80 ~~> Word[0x0011fddc]
       0     3867        M 0x80001b30 sw      s4, 88(sp)             #; sp  = 0x0011fd80, 0x0011fe67 ~~> Word[0x0011fdd8]
       0     3868        M 0x80001b34 sw      s5, 84(sp)             #; sp  = 0x0011fd80, -1 ~~> Word[0x0011fdd4]
       0     3869        M 0x80001b38 sw      s6, 80(sp)             #; sp  = 0x0011fd80, 0 ~~> Word[0x0011fdd0]
       0     3870        M 0x80001b3c sw      s7, 76(sp)             #; sp  = 0x0011fd80, 0 ~~> Word[0x0011fdcc]
       0     3879        M 0x80001b40 sw      s8, 72(sp)             #; sp  = 0x0011fd80, 16 ~~> Word[0x0011fdc8]
       0     3880        M 0x80001b44 sw      s9, 68(sp)             #; sp  = 0x0011fd80, 8 ~~> Word[0x0011fdc4]
       0     3881        M 0x80001b48 sw      s10, 64(sp)            #; sp  = 0x0011fd80, 0x8000315e ~~> Word[0x0011fdc0]
       0     3884        M 0x80001b4c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fdb8]
       0     3893        M 0x80001b58 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003b58
                         M 0x80001b50 fsd     fs1, 48(sp)            #; 7.071 ~~> Doub[0x0011fdb0]
       0     3894        M 0x80001b5c addi    s1, s1, -1808          #; s1  = 0x80003b58, (wrb) s1  <-- 0x80003448
                         M 0x80001b54 fsd     fs2, 40(sp)            #; 11.3136 ~~> Doub[0x0011fda8]
       0     3903        M 0x80001b60 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3904        M 0x80001b64 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     3905        M 0x80001b68 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     3906        M 0x80001b6c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3915        M 0x80001b70 mv      s6, a1                 #; a1  = 0x0011fe67, (wrb) s6  <-- 0x0011fe67
       0     3916        M 0x80001b74 mv      s7, a0                 #; a0  = 0x80001a68, (wrb) s7  <-- 0x80001a68
       0     3919        M 0x80001b78 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003448]
       0     3928        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3929        M 0x80001b7c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = -0.0000000
       0     3931        M                                           #; (acc) a6  <-- 0x0e049863
       0     3932        M 0x80001b80 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001c70
       0     3950        M 0x80001c70 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002c70
       0     3951        M 0x80001c74 addi    a0, a0, 2016           #; a0  = 0x80002c70, (wrb) a0  <-- 0x80003450
       0     3954        M 0x80001c78 fsgnj.d fs0, fa0, fa0          #; fa0  = -0.0000000, fa0  = -0.0000000
       0     3955        M 0x80001c7c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003450], (f:fpu) fs0  <-- -0.0000000
       0     3964        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3965        M 0x80001c80 fle.d   a0, fa0, ft0           #; fa0  = -0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3967        M                                           #; (acc) t3  <-- 0x00051e63
       0     3968        M 0x80001c84 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001ca0
       0     3985        M 0x80001ca0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002ca0
       0     3986        M 0x80001ca4 addi    a0, a0, 1976           #; a0  = 0x80002ca0, (wrb) a0  <-- 0x80003458
       0     3987        M 0x80001ca8 auipc   a3, 0x1                #; (wrb) a3  <-- 0x80002ca8
       0     3988        M 0x80001cac addi    a3, a3, 1976           #; a3  = 0x80002ca8, (wrb) a3  <-- 0x80003460
       0     3999        M 0x80001cb0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003458]
       0     4000        M 0x80001cb4 fld     ft1, 0(a3)             #; ft1  <~~ Doub[0x80003460]
       0     4008        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     4009        M 0x80001cb8 fle.d   a5, fs0, ft0           #; fs0  = -0.0000000, ft0  = 1000000000.0000000, (f:lsu) ft1  <-- -1000000000.0000000
       0     4010        M 0x80001cbc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = -0.0000000
       0     4011        M                                           #; (acc) a0  <-- 0x00b7f533
       0     4012        M                                           #; (acc) a0  <-- 0x00b7f533
       0     4013        M 0x80001cc0 and     a0, a5, a1             #; a5  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4014        M 0x80001cc4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001dc0
       0     4032        M 0x80001dc0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     4033        M 0x80001dc4 li      s8, 6                  #; (wrb) s8  <-- 6
       0     4034        M 0x80001dc8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001dd0
       0     4044        M 0x80001dd0 li      a0, 10                 #; (wrb) a0  <-- 10
       0     4046        M 0x80001dd8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001e10
       0     4047        M 0x80001dd4 fsgnjx.d fs2, fs0, fs0         #; fs0  = -0.0000000, fs0  = -0.0000000
       0     4048        M                                           #; (f:fpu) fs2  <-- 0.0000000
       0     4067        M 0x80001e10 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4068        M 0x80001e14 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     4069        M 0x80001e18 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002e18
       0     4070        M 0x80001e1c addi    a1, a1, 1296           #; a1  = 0x80002e18, (wrb) a1  <-- 0x80003328
       0     4080        M 0x80001e24 auipc   a5, 0x1                #; (wrb) a5  <-- 0x80002e24
                         M 0x80001e20 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
       0     4081        M 0x80001e28 addi    a5, a5, 1604           #; a5  = 0x80002e24, (wrb) a5  <-- 0x80003468
       0     4082        M 0x80001e2c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003328, (wrb) a0  <-- 0x80003358
       0     4092        M 0x80001e30 fcvt.d.w ft0, s1               #; ac1  = 0
       0     4093        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4094        M 0x80001e34 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003358]
       0     4095        M 0x80001e38 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
       0     4098        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     4103        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     4104        M 0x80001e3c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     4105        M 0x80001e40 fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x80003468]
       0     4107        M                                           #; (f:fpu) ft2  <-- 0.0000000
       0     4108        M 0x80001e44 fcvt.wu.d a0, ft2              #; ft2  = 0.0000000
       0     4110        M                                           #; (acc) gp  <-- 0xd21501d3
       0     4112        M 0x80001e48 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4113        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4114        M 0x80001e4c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000000, ft3  = 0.0, (f:lsu) ft0  <-- 0.5
       0     4117        M                                           #; (f:fpu) ft2  <-- 0.0000000
       0     4118        M 0x80001e50 fle.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
       0     4121        M 0x80001e54 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001e74
       0     4139        M 0x80001e74 flt.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
       0     4141        M                                           #; (acc) s4  <-- 0x00059a63
       0     4142        M 0x80001e78 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001e8c
       0     4151        M 0x80001e8c fcvt.d.w fs1, zero             #; ac1  = 0
       0     4152        M                                           #; (f:fpu) fs1  <-- 0.0
       0     4162        M 0x80001e90 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     4163        M 0x80001e94 addi    a1, sp, 8              #; sp  = 0x0011fd80, (wrb) a1  <-- 0x0011fd88
       0     4164        M 0x80001e98 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4165        M 0x80001e9c lui     a5, 0xccccd            #; (wrb) a5  <-- 0xccccd000
       0     4174        M 0x80001ea0 li      a2, 0                  #; (wrb) a2  <-- 0
       0     4175        M 0x80001ea4 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4176        M 0x80001ea8 li      a7, 9                  #; (wrb) a7  <-- 9
       0     4177        M 0x80001eac add     t1, a1, s0             #; a1  = 0x0011fd88, s0  = 0, (wrb) t1  <-- 0x0011fd88
       0     4186        M 0x80001eb0 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4187        M 0x80001eb4 addi    t2, a5, -819           #; a5  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4188        M 0x80001eb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4189        M 0x80001ebc mulhu   a5, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     4198        M 0x80001ec0 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     4199        M 0x80001ec4 srli    a0, a5, 3              #; a5  = 0, (wrb) a0  <-- 0
       0     4200        M 0x80001ec8 add     a5, t1, a2             #; t1  = 0x0011fd88, a2  = 0, (wrb) a5  <-- 0x0011fd88
       0     4201        M 0x80001ecc addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4210        M 0x80001ed0 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4213        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4214        M 0x80001ed4 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     4215        M 0x80001ed8 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4216        M 0x80001edc sb      a3, 0(a5)              #; a5  = 0x0011fd88, 48 ~~> Byte[0x0011fd88]
       0     4222        M 0x80001ee0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     4223        M 0x80001ee4 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     4224        M 0x80001ee8 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     4225        M 0x80001eec li      a3, 30                 #; (wrb) a3  <-- 30
       0     4235        M 0x80001ef0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     4236        M 0x80001ef4 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     4237        M 0x80001ef8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     4238        M 0x80001efc or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4247        M 0x80001f00 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4248        M 0x80001f04 addi    a0, sp, 8              #; sp  = 0x0011fd80, (wrb) a0  <-- 0x0011fd88
       0     4249        M 0x80001f08 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4250        M 0x80001f0c li      a5, 31                 #; (wrb) a5  <-- 31
       0     4259        M 0x80001f10 add     a0, a0, s0             #; a0  = 0x0011fd88, s0  = 0, (wrb) a0  <-- 0x0011fd88
       0     4260        M 0x80001f14 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4261        M 0x80001f18 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4262        M 0x80001f1c sub     a3, a5, s0             #; a5  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4271        M 0x80001f20 add     a0, a0, a2             #; a0  = 0x0011fd88, a2  = 1, (wrb) a0  <-- 0x0011fd89
       0     4272        M 0x80001f24 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4273        M 0x80001f28 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001f30
       0     4283        M 0x80001f30 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4284        M 0x80001f34 li      a1, 48                 #; (wrb) a1  <-- 48
       0     4285        M 0x80001f38 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7fffff38
       0     4286        M 0x80001f3c jalr    ra, ra, 1568           #; ra  = 0x7fffff38, (wrb) ra  <-- 0x80001f40, goto 0x80000558
       0     4306        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4307        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fd89, (wrb) a4  <-- 0x0011fd89
       0     4318        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4341        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4353        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4354        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4355        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4356        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4376        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fd89, 48 ~~> Byte[0x0011fd8d]
       0     4377        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fd89, 48 ~~> Byte[0x0011fd8c]
       0     4388        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fd89, 48 ~~> Byte[0x0011fd8b]
       0     4389        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fd89, 48 ~~> Byte[0x0011fd8a]
       0     4390        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fd89, 48 ~~> Byte[0x0011fd89]
       0     4391        M 0x800005ec ret                            #; ra  = 0x80001f40, goto 0x80001f40
       0     4402        M 0x80001f40 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4403        M 0x80001f44 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4404        M 0x80001f48 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4405        M 0x80001f4c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4414        M 0x80001f50 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4415        M 0x80001f54 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4416        M 0x80001f58 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4417        M 0x80001f5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f44
       0     4418        M 0x80001f44 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4419        M 0x80001f48 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4420        M 0x80001f4c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4421        M 0x80001f50 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4422        M 0x80001f54 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4423        M 0x80001f58 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4424        M 0x80001f5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f44
       0     4425        M 0x80001f44 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4426        M 0x80001f48 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4427        M 0x80001f4c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4428        M 0x80001f50 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4429        M 0x80001f54 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4430        M 0x80001f58 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4431        M 0x80001f5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f44
       0     4432        M 0x80001f44 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4433        M 0x80001f48 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4434        M 0x80001f4c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4435        M 0x80001f50 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4436        M 0x80001f54 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4437        M 0x80001f58 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4438        M 0x80001f5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f44
       0     4439        M 0x80001f44 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4440        M 0x80001f48 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4441        M 0x80001f4c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4442        M 0x80001f50 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4443        M 0x80001f54 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4444        M 0x80001f58 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4445        M 0x80001f5c bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4457        M 0x80001f60 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4458        M 0x80001f64 j       pc + 0x28              #; goto 0x80001f8c
       0     4469        M 0x80001f8c beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4481        M 0x80001f90 addi    a1, sp, 8              #; sp  = 0x0011fd80, (wrb) a1  <-- 0x0011fd88
       0     4482        M 0x80001f94 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4483        M 0x80001f98 li      a5, 46                 #; (wrb) a5  <-- 46
       0     4484        M 0x80001f9c add     a4, a1, a0             #; a1  = 0x0011fd88, a0  = 6, (wrb) a4  <-- 0x0011fd8e
       0     4493        M 0x80001fa0 sb      a5, 0(a4)              #; a4  = 0x0011fd8e, 46 ~~> Byte[0x0011fd8e]
       0     4494        M 0x80001fa4 j       pc + 0x8               #; goto 0x80001fac
       0     4495        M 0x80001fac li      a0, 32                 #; (wrb) a0  <-- 32
       0     4507        M 0x80001fb0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4508        M 0x80001fb4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4509        M 0x80001fb8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4510        M 0x80001fbc lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     4520        M 0x80001fc4 li      a6, 10                 #; (wrb) a6  <-- 10
                         M 0x80001fc0 flt.d   s9, fs0, fs1           #; fs0  = -0.0000000, fs1  = 0.0
       0     4521        M 0x80001fc8 addi    a3, sp, 8              #; sp  = 0x0011fd80, (wrb) a3  <-- 0x0011fd88
       0     4522        M 0x80001fcc li      a4, 18                 #; (wrb) a4  <-- 18
       0     4531        M 0x80001fd0 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4532        M 0x80001fd4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4533        M 0x80001fd8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4534        M 0x80001fdc addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4543        M 0x80001fe0 add     s0, a3, s0             #; a3  = 0x0011fd88, s0  = 7, (wrb) s0  <-- 0x0011fd8f
       0     4544        M 0x80001fe4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4545        M 0x80001fe8 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4546        M 0x80001fec srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4555        M 0x80001ff0 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4556        M 0x80001ff4 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4559        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4560        M 0x80001ff8 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4561        M 0x80001ffc mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4567        M 0x80002000 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4568        M 0x80002004 sb      a5, 0(s0)              #; s0  = 0x0011fd8f, 48 ~~> Byte[0x0011fd8f]
       0     4569        M 0x80002008 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4570        M 0x8000200c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4582        M 0x80002010 j       pc + 0x8               #; goto 0x80002018
       0     4583        M 0x80002018 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4584        M 0x8000201c li      a0, 1                  #; (wrb) a0  <-- 1
       0     4595        M 0x80002020 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x8000208c
       0     4618        M 0x8000208c li      a0, 31                 #; (wrb) a0  <-- 31
       0     4630        M 0x80002090 bltu    a0, s8, pc + 68        #; a0  = 31, s8  = 8, not taken
       0     4631        M 0x80002094 beqz    s9, pc + 16            #; s9  = 1, not taken
       0     4632        M 0x80002098 addi    a0, sp, 8              #; sp  = 0x0011fd80, (wrb) a0  <-- 0x0011fd88
       0     4633        M 0x8000209c li      a1, 45                 #; (wrb) a1  <-- 45
       0     4642        M 0x800020a0 j       pc + 0x28              #; goto 0x800020c8
       0     4654        M 0x800020c8 add     a0, a0, s8             #; a0  = 0x0011fd88, s8  = 8, (wrb) a0  <-- 0x0011fd90
       0     4655        M 0x800020cc addi    s8, s8, 1              #; s8  = 8, (wrb) s8  <-- 9
       0     4666        M 0x800020d0 sb      a1, 0(a0)              #; a0  = 0x0011fd90, 45 ~~> Byte[0x0011fd90]
       0     4667        M 0x800020d4 sltu    a1, s8, s2             #; s8  = 9, s2  = 0, (wrb) a1  <-- 0
       0     4668        M 0x800020d8 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4669        M 0x800020dc andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4678        M 0x800020e0 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4679        M 0x800020e4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4680        M 0x800020e8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4681        M 0x800020ec bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002118
       0     4701        M 0x80002118 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4702        M 0x8000211c beqz    s8, pc + 56            #; s8  = 9, not taken
       0     4713        M 0x80002120 addi    s9, sp, 7              #; sp  = 0x0011fd80, (wrb) s9  <-- 0x0011fd87
       0     4714        M 0x80002124 add     a0, s9, s8             #; s9  = 0x0011fd87, s8  = 9, (wrb) a0  <-- 0x0011fd90
       0     4715        M 0x80002128 mv      a1, s6                 #; s6  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     4716        M 0x8000212c mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4725        M 0x80002130 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4726        M 0x80002134 addi    s10, s8, -1            #; s8  = 9, (wrb) s10 <-- 8
       0     4727        M 0x80002138 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4728        M 0x8000213c lbu     a0, 0(a0)              #; a0  = 0x0011fd90, a0  <~~ Byte[0x0011fd90]
       0     4731        M                                           #; (lsu) a0  <-- 45
       0     4737        M 0x80002140 jalr    s7                     #; s7  = 0x80001a68, (wrb) ra  <-- 0x80002144, goto 0x80001a68
       0     4740        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 45, not taken
       0     4741        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4743        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4744        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     4745        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     4746        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4749        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4750        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     4751        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     4762        M                                           #; (lsu) a4  <-- 8
       0     4763        M 0x80001a88 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4764        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 8, (wrb) a4  <-- 0x800034fc
       0     4765        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 9 ~~> Word[0x800034f4]
       0     4766        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034fc, 45 ~~> Byte[0x80003544]
       0     4767        M 0x80001a98 addi    a5, a0, -10            #; a0  = 45, (wrb) a5  <-- 35
       0     4768        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     4769        M 0x80001aa0 snez    a0, a5                 #; a5  = 35, (wrb) a0  <-- 1
       0     4788        M                                           #; (lsu) a4  <-- 9
       0     4789        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4790        M 0x80001aa8 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4791        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4792        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     4797        M 0x80001b10 ret                            #; ra  = 0x80002144, goto 0x80002144
       0     4802        M 0x80002144 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4803        M 0x80002148 mv      s8, s10                #; s10 = 8, (wrb) s8  <-- 8
       0     4804        M 0x8000214c bnez    s10, pc - 40           #; s10 = 8, taken, goto 0x80002124
       0     4805        M 0x80002124 add     a0, s9, s8             #; s9  = 0x0011fd87, s8  = 8, (wrb) a0  <-- 0x0011fd8f
       0     4806        M 0x80002128 mv      a1, s6                 #; s6  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     4807        M 0x8000212c mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4808        M 0x80002130 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4809        M 0x80002134 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4810        M 0x80002138 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4811        M 0x8000213c lbu     a0, 0(a0)              #; a0  = 0x0011fd8f, a0  <~~ Byte[0x0011fd8f]
       0     4812        M 0x80002140 jalr    s7                     #; s7  = 0x80001a68, (wrb) ra  <-- 0x80002144, goto 0x80001a68
       0     4814        M                                           #; (lsu) a0  <-- 48
       0     4815        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4816        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4818        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4819        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     4820        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     4821        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4824        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4825        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     4826        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     4837        M                                           #; (lsu) a4  <-- 9
       0     4838        M 0x80001a88 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4839        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 9, (wrb) a4  <-- 0x800034fd
       0     4840        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 10 ~~> Word[0x800034f4]
       0     4841        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034fd, 48 ~~> Byte[0x80003545]
       0     4842        M 0x80001a98 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     4843        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     4844        M 0x80001aa0 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     4863        M                                           #; (lsu) a4  <-- 10
       0     4864        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4865        M 0x80001aa8 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4866        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4867        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     4872        M 0x80001b10 ret                            #; ra  = 0x80002144, goto 0x80002144
       0     4877        M 0x80002144 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4878        M 0x80002148 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4879        M 0x8000214c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80002124
       0     4880        M 0x80002124 add     a0, s9, s8             #; s9  = 0x0011fd87, s8  = 7, (wrb) a0  <-- 0x0011fd8e
       0     4881        M 0x80002128 mv      a1, s6                 #; s6  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     4882        M 0x8000212c mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4883        M 0x80002130 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4884        M 0x80002134 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4885        M 0x80002138 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4886        M 0x8000213c lbu     a0, 0(a0)              #; a0  = 0x0011fd8e, a0  <~~ Byte[0x0011fd8e]
       0     4887        M 0x80002140 jalr    s7                     #; s7  = 0x80001a68, (wrb) ra  <-- 0x80002144, goto 0x80001a68
       0     4889        M                                           #; (lsu) a0  <-- 46
       0     4890        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4891        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4893        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4894        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     4895        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     4896        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4899        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4900        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     4901        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     4912        M                                           #; (lsu) a4  <-- 10
       0     4913        M 0x80001a88 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4914        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 10, (wrb) a4  <-- 0x800034fe
       0     4915        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 11 ~~> Word[0x800034f4]
       0     4916        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034fe, 46 ~~> Byte[0x80003546]
       0     4917        M 0x80001a98 addi    a5, a0, -10            #; a0  = 46, (wrb) a5  <-- 36
       0     4918        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     4919        M 0x80001aa0 snez    a0, a5                 #; a5  = 36, (wrb) a0  <-- 1
       0     4938        M                                           #; (lsu) a4  <-- 11
       0     4939        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4940        M 0x80001aa8 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4941        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4942        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     4947        M 0x80001b10 ret                            #; ra  = 0x80002144, goto 0x80002144
       0     4952        M 0x80002144 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4953        M 0x80002148 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4954        M 0x8000214c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80002124
       0     4955        M 0x80002124 add     a0, s9, s8             #; s9  = 0x0011fd87, s8  = 6, (wrb) a0  <-- 0x0011fd8d
       0     4956        M 0x80002128 mv      a1, s6                 #; s6  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     4957        M 0x8000212c mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4958        M 0x80002130 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4959        M 0x80002134 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4960        M 0x80002138 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4961        M 0x8000213c lbu     a0, 0(a0)              #; a0  = 0x0011fd8d, a0  <~~ Byte[0x0011fd8d]
       0     4962        M 0x80002140 jalr    s7                     #; s7  = 0x80001a68, (wrb) ra  <-- 0x80002144, goto 0x80001a68
       0     4964        M                                           #; (lsu) a0  <-- 48
       0     4965        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4966        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4968        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4969        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     4970        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     4971        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4974        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4975        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     4976        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     4987        M                                           #; (lsu) a4  <-- 11
       0     4988        M 0x80001a88 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4989        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 11, (wrb) a4  <-- 0x800034ff
       0     4990        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 12 ~~> Word[0x800034f4]
       0     4991        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x800034ff, 48 ~~> Byte[0x80003547]
       0     4992        M 0x80001a98 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     4993        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     4994        M 0x80001aa0 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     5013        M                                           #; (lsu) a4  <-- 12
       0     5014        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     5015        M 0x80001aa8 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     5016        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5017        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     5022        M 0x80001b10 ret                            #; ra  = 0x80002144, goto 0x80002144
       0     5027        M 0x80002144 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     5028        M 0x80002148 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     5029        M 0x8000214c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80002124
       0     5030        M 0x80002124 add     a0, s9, s8             #; s9  = 0x0011fd87, s8  = 5, (wrb) a0  <-- 0x0011fd8c
       0     5031        M 0x80002128 mv      a1, s6                 #; s6  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     5032        M 0x8000212c mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     5033        M 0x80002130 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5034        M 0x80002134 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     5035        M 0x80002138 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     5036        M 0x8000213c lbu     a0, 0(a0)              #; a0  = 0x0011fd8c, a0  <~~ Byte[0x0011fd8c]
       0     5037        M 0x80002140 jalr    s7                     #; s7  = 0x80001a68, (wrb) ra  <-- 0x80002144, goto 0x80001a68
       0     5039        M                                           #; (lsu) a0  <-- 48
       0     5040        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5041        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5043        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5044        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     5045        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     5046        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5049        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5050        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     5051        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5062        M                                           #; (lsu) a4  <-- 12
       0     5063        M 0x80001a88 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     5064        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 12, (wrb) a4  <-- 0x80003500
       0     5065        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 13 ~~> Word[0x800034f4]
       0     5066        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x80003500, 48 ~~> Byte[0x80003548]
       0     5067        M 0x80001a98 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     5068        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5069        M 0x80001aa0 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     5088        M                                           #; (lsu) a4  <-- 13
       0     5089        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     5090        M 0x80001aa8 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     5091        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5092        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     5097        M 0x80001b10 ret                            #; ra  = 0x80002144, goto 0x80002144
       0     5102        M 0x80002144 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     5103        M 0x80002148 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     5104        M 0x8000214c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80002124
       0     5105        M 0x80002124 add     a0, s9, s8             #; s9  = 0x0011fd87, s8  = 4, (wrb) a0  <-- 0x0011fd8b
       0     5106        M 0x80002128 mv      a1, s6                 #; s6  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     5107        M 0x8000212c mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5108        M 0x80002130 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5109        M 0x80002134 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     5110        M 0x80002138 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     5111        M 0x8000213c lbu     a0, 0(a0)              #; a0  = 0x0011fd8b, a0  <~~ Byte[0x0011fd8b]
       0     5112        M 0x80002140 jalr    s7                     #; s7  = 0x80001a68, (wrb) ra  <-- 0x80002144, goto 0x80001a68
       0     5114        M                                           #; (lsu) a0  <-- 48
       0     5115        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5116        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5118        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5119        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     5120        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     5121        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5124        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5125        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     5126        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5137        M                                           #; (lsu) a4  <-- 13
       0     5138        M 0x80001a88 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5139        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 13, (wrb) a4  <-- 0x80003501
       0     5140        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 14 ~~> Word[0x800034f4]
       0     5141        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x80003501, 48 ~~> Byte[0x80003549]
       0     5142        M 0x80001a98 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     5143        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5144        M 0x80001aa0 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     5163        M                                           #; (lsu) a4  <-- 14
       0     5164        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5165        M 0x80001aa8 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5166        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5167        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     5172        M 0x80001b10 ret                            #; ra  = 0x80002144, goto 0x80002144
       0     5177        M 0x80002144 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5178        M 0x80002148 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5179        M 0x8000214c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80002124
       0     5180        M 0x80002124 add     a0, s9, s8             #; s9  = 0x0011fd87, s8  = 3, (wrb) a0  <-- 0x0011fd8a
       0     5181        M 0x80002128 mv      a1, s6                 #; s6  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     5182        M 0x8000212c mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5183        M 0x80002130 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5184        M 0x80002134 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5185        M 0x80002138 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5186        M 0x8000213c lbu     a0, 0(a0)              #; a0  = 0x0011fd8a, a0  <~~ Byte[0x0011fd8a]
       0     5187        M 0x80002140 jalr    s7                     #; s7  = 0x80001a68, (wrb) ra  <-- 0x80002144, goto 0x80001a68
       0     5189        M                                           #; (lsu) a0  <-- 48
       0     5190        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5191        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5193        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5194        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     5195        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     5196        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5199        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5200        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     5201        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5212        M                                           #; (lsu) a4  <-- 14
       0     5213        M 0x80001a88 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5214        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 14, (wrb) a4  <-- 0x80003502
       0     5215        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 15 ~~> Word[0x800034f4]
       0     5216        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x80003502, 48 ~~> Byte[0x8000354a]
       0     5217        M 0x80001a98 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     5218        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5219        M 0x80001aa0 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     5238        M                                           #; (lsu) a4  <-- 15
       0     5239        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5240        M 0x80001aa8 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5241        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5242        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     5247        M 0x80001b10 ret                            #; ra  = 0x80002144, goto 0x80002144
       0     5252        M 0x80002144 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5253        M 0x80002148 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5254        M 0x8000214c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80002124
       0     5255        M 0x80002124 add     a0, s9, s8             #; s9  = 0x0011fd87, s8  = 2, (wrb) a0  <-- 0x0011fd89
       0     5256        M 0x80002128 mv      a1, s6                 #; s6  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     5257        M 0x8000212c mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5258        M 0x80002130 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5259        M 0x80002134 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5260        M 0x80002138 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5261        M 0x8000213c lbu     a0, 0(a0)              #; a0  = 0x0011fd89, a0  <~~ Byte[0x0011fd89]
       0     5262        M 0x80002140 jalr    s7                     #; s7  = 0x80001a68, (wrb) ra  <-- 0x80002144, goto 0x80001a68
       0     5264        M                                           #; (lsu) a0  <-- 48
       0     5265        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5266        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5268        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5269        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     5270        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     5271        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5274        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5275        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     5276        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5287        M                                           #; (lsu) a4  <-- 15
       0     5288        M 0x80001a88 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5289        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 15, (wrb) a4  <-- 0x80003503
       0     5290        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 16 ~~> Word[0x800034f4]
       0     5291        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x80003503, 48 ~~> Byte[0x8000354b]
       0     5292        M 0x80001a98 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     5293        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5294        M 0x80001aa0 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     5313        M                                           #; (lsu) a4  <-- 16
       0     5314        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5315        M 0x80001aa8 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5316        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5317        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     5322        M 0x80001b10 ret                            #; ra  = 0x80002144, goto 0x80002144
       0     5327        M 0x80002144 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5328        M 0x80002148 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5329        M 0x8000214c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80002124
       0     5330        M 0x80002124 add     a0, s9, s8             #; s9  = 0x0011fd87, s8  = 1, (wrb) a0  <-- 0x0011fd88
       0     5331        M 0x80002128 mv      a1, s6                 #; s6  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     5332        M 0x8000212c mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
       0     5333        M 0x80002130 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5334        M 0x80002134 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5335        M 0x80002138 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
       0     5336        M 0x8000213c lbu     a0, 0(a0)              #; a0  = 0x0011fd88, a0  <~~ Byte[0x0011fd88]
       0     5337        M 0x80002140 jalr    s7                     #; s7  = 0x80001a68, (wrb) ra  <-- 0x80002144, goto 0x80001a68
       0     5339        M                                           #; (lsu) a0  <-- 48
       0     5340        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5341        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5343        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5344        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     5345        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     5346        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5349        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5350        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     5351        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5362        M                                           #; (lsu) a4  <-- 16
       0     5363        M 0x80001a88 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5364        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 16, (wrb) a4  <-- 0x80003504
       0     5365        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 17 ~~> Word[0x800034f4]
       0     5366        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x80003504, 48 ~~> Byte[0x8000354c]
       0     5367        M 0x80001a98 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     5368        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5369        M 0x80001aa0 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     5388        M                                           #; (lsu) a4  <-- 17
       0     5389        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5390        M 0x80001aa8 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5391        M 0x80001aac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5392        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b10
       0     5397        M 0x80001b10 ret                            #; ra  = 0x80002144, goto 0x80002144
       0     5402        M 0x80002144 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     5403        M 0x80002148 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5404        M 0x8000214c bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5416        M 0x80002150 j       pc + 0x8               #; goto 0x80002158
       0     5417        M 0x80002158 sub     a0, s1, s4             #; s1  = 17, s4  = 8, (wrb) a0  <-- 9
       0     5418        M 0x8000215c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5429        M 0x80002160 sltu    a0, a0, s2             #; a0  = 9, s2  = 0, (wrb) a0  <-- 0
       0     5430        M 0x80002164 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5431        M 0x80002168 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5432        M 0x8000216c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x8000219c
       0     5452        M 0x8000219c mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     5464        M 0x800021a0 mv      a0, s0                 #; s0  = 17, (wrb) a0  <-- 17
       0     5467        M 0x800021a4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fda8]
       0     5468        M 0x800021a8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fdb0], (f:lsu) fs2  <-- 11.3136
       0     5469        M 0x800021ac fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fdb8], (f:lsu) fs1  <-- 7.071
       0     5470        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5476        M 0x800021b0 lw      s10, 64(sp)            #; sp  = 0x0011fd80, s10 <~~ Word[0x0011fdc0]
       0     5479        M                                           #; (lsu) s10 <-- 0x8000315e
       0     5480        M 0x800021b4 lw      s9, 68(sp)             #; sp  = 0x0011fd80, s9  <~~ Word[0x0011fdc4]
       0     5483        M                                           #; (lsu) s9  <-- 8
       0     5484        M 0x800021b8 lw      s8, 72(sp)             #; sp  = 0x0011fd80, s8  <~~ Word[0x0011fdc8]
       0     5487        M                                           #; (lsu) s8  <-- 16
       0     5488        M 0x800021bc lw      s7, 76(sp)             #; sp  = 0x0011fd80, s7  <~~ Word[0x0011fdcc]
       0     5491        M                                           #; (lsu) s7  <-- 0
       0     5492        M 0x800021c0 lw      s6, 80(sp)             #; sp  = 0x0011fd80, s6  <~~ Word[0x0011fdd0]
       0     5495        M                                           #; (lsu) s6  <-- 0
       0     5496        M 0x800021c4 lw      s5, 84(sp)             #; sp  = 0x0011fd80, s5  <~~ Word[0x0011fdd4]
       0     5499        M                                           #; (lsu) s5  <-- -1
       0     5500        M 0x800021c8 lw      s4, 88(sp)             #; sp  = 0x0011fd80, s4  <~~ Word[0x0011fdd8]
       0     5503        M                                           #; (lsu) s4  <-- 0x0011fe67
       0     5504        M 0x800021cc lw      s3, 92(sp)             #; sp  = 0x0011fd80, s3  <~~ Word[0x0011fddc]
       0     5507        M                                           #; (lsu) s3  <-- 0x0011fe80
       0     5508        M 0x800021d0 lw      s2, 96(sp)             #; sp  = 0x0011fd80, s2  <~~ Word[0x0011fde0]
       0     5511        M                                           #; (lsu) s2  <-- 0x80001a68
       0     5512        M 0x800021d4 lw      s1, 100(sp)            #; sp  = 0x0011fd80, s1  <~~ Word[0x0011fde4]
       0     5515        M                                           #; (lsu) s1  <-- 8
       0     5516        M 0x800021d8 lw      s0, 104(sp)            #; sp  = 0x0011fd80, s0  <~~ Word[0x0011fde8]
       0     5519        M                                           #; (lsu) s0  <-- 0
       0     5520        M 0x800021dc lw      ra, 108(sp)            #; sp  = 0x0011fd80, ra  <~~ Word[0x0011fdec]
       0     5521        M 0x800021e0 addi    sp, sp, 112            #; sp  = 0x0011fd80, (wrb) sp  <-- 0x0011fdf0
       0     5523        M                                           #; (lsu) ra  <-- 0x8000119c
       0     5524        M 0x800021e4 ret                            #; ra  = 0x8000119c, goto 0x8000119c
       0     5545        M 0x8000119c j       pc + 0x7bc             #; goto 0x80001958
       0     5548        M 0x80001958 mv      s8, a0                 #; a0  = 17, (wrb) s8  <-- 17
       0     5549        M 0x8000195c li      s6, 37                 #; (wrb) s6  <-- 37
       0     5560        M 0x80001960 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5561        M 0x80001964 addi    s0, s10, 1             #; s10 = 0x8000315e, (wrb) s0  <-- 0x8000315f
       0     5562        M 0x80001968 j       pc - 0xa70             #; goto 0x80000ef8
       0     5572        M 0x80000ef8 mv      s9, s8                 #; s8  = 17, (wrb) s9  <-- 17
       0     5573        M 0x80000efc addi    s10, s0, 2             #; s0  = 0x8000315f, (wrb) s10 <-- 0x80003161
       0     5584        M 0x80000f00 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5585        M 0x80000f04 lbu     a0, 0(s0)              #; s0  = 0x8000315f, a0  <~~ Byte[0x8000315f]
       0     5596        M                                           #; (lsu) a0  <-- 10
       0     5597        M 0x80000f08 beqz    a0, pc + 2820          #; a0  = 10, not taken
       0     5598        M 0x80000f0c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5599        M 0x80000f10 mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     5600        M 0x80000f14 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5601        M 0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5602        M 0x80000f1c addi    s1, s9, 1              #; s9  = 17, (wrb) s1  <-- 18
       0     5611        M 0x80000f20 jalr    s2                     #; s2  = 0x80001a68, (wrb) ra  <-- 0x80000f24, goto 0x80001a68
       0     5625        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5626        M 0x80001a6c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5628        M 0x80001a70 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5629        M 0x80001a74 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a74
       0     5630        M 0x80001a78 addi    a3, a3, -1408          #; a3  = 0x80003a74, (wrb) a3  <-- 0x800034f4
       0     5631        M 0x80001a7c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5634        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5635        M 0x80001a80 add     a1, a2, a3             #; a2  = 0, a3  = 0x800034f4, (wrb) a1  <-- 0x800034f4
       0     5636        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5647        M                                           #; (lsu) a4  <-- 17
       0     5648        M 0x80001a88 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
       0     5649        M 0x80001a8c add     a4, a1, a4             #; a1  = 0x800034f4, a4  = 17, (wrb) a4  <-- 0x80003505
       0     5650        M 0x80001a90 sw      a5, 0(a1)              #; a1  = 0x800034f4, 18 ~~> Word[0x800034f4]
       0     5651        M 0x80001a94 sb      a0, 72(a4)             #; a4  = 0x80003505, 10 ~~> Byte[0x8000354d]
       0     5652        M 0x80001a98 addi    a5, a0, -10            #; a0  = 10, (wrb) a5  <-- 0
       0     5653        M 0x80001a9c lw      a4, 0(a1)              #; a1  = 0x800034f4, a4  <~~ Word[0x800034f4]
       0     5654        M 0x80001aa0 snez    a0, a5                 #; a5  = 0, (wrb) a0  <-- 0
       0     5673        M                                           #; (lsu) a4  <-- 18
       0     5674        M 0x80001aa4 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
       0     5675        M 0x80001aa8 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
       0     5676        M 0x80001aac and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5677        M 0x80001ab0 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5678        M 0x80001ab4 add     a0, a3, a2             #; a3  = 0x800034f4, a2  = 0, (wrb) a0  <-- 0x800034f4
       0     5679        M 0x80001ab8 li      a4, 64                 #; (wrb) a4  <-- 64
       0     5680        M 0x80001abc li      a5, 1                  #; (wrb) a5  <-- 1
       0     5681        M 0x80001ac0 addi    a2, a0, 72             #; a0  = 0x800034f4, (wrb) a2  <-- 0x8000353c
       0     5682        M 0x80001ac4 sw      zero, 12(a0)           #; a0  = 0x800034f4, 0 ~~> Word[0x80003500]
       0     5683        M 0x80001ac8 sw      a4, 8(a0)              #; a0  = 0x800034f4, 64 ~~> Word[0x800034fc]
       0     5684        M 0x80001acc sw      zero, 20(a0)           #; a0  = 0x800034f4, 0 ~~> Word[0x80003508]
       0     5693        M 0x80001ad0 sw      a5, 16(a0)             #; a0  = 0x800034f4, 1 ~~> Word[0x80003504]
       0     5695        M 0x80001ad4 sw      zero, 28(a0)           #; a0  = 0x800034f4, 0 ~~> Word[0x80003510]
       0     5696        M 0x80001ad8 addi    a4, a0, 8              #; a0  = 0x800034f4, (wrb) a4  <-- 0x800034fc
       0     5697        M 0x80001adc auipc   a5, 0x2                #; (wrb) a5  <-- 0x80003adc
       0     5705        M 0x80001ae0 addi    a5, a5, -1884          #; a5  = 0x80003adc, (wrb) a5  <-- 0x80003380
       0     5706        M 0x80001ae4 sw      a2, 24(a0)             #; a0  = 0x800034f4, 0x8000353c ~~> Word[0x8000350c]
       0     5707        M 0x80001ae8 lw      a2, 0(a1)              #; a1  = 0x800034f4, a2  <~~ Word[0x800034f4]
       0     5709        M 0x80001aec sw      zero, 36(a0)           #; a0  = 0x800034f4, 0 ~~> Word[0x80003518]
       0     5729        M                                           #; (lsu) a2  <-- 18
       0     5730        M 0x80001af0 sw      a2, 32(a0)             #; a0  = 0x800034f4, 18 ~~> Word[0x80003514]
       0     5731        M 0x80001af4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003af4
       0     5732        M 0x80001af8 addi    a0, a0, -1844          #; a0  = 0x80003af4, (wrb) a0  <-- 0x800033c0
       0     5733        M 0x80001afc sw      a4, 0(a5)              #; a5  = 0x80003380, 0x800034fc ~~> Word[0x80003380]
       0     5734        M 0x80001b00 lw      a2, 0(a0)              #; a0  = 0x800033c0, a2  <~~ Word[0x800033c0]
       0     5759        M                                           #; (lsu) a2  <-- 0
       0     5760        M 0x80001b04 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b00
       0     5761        M 0x80001b00 lw      a2, 0(a0)              #; a0  = 0x800033c0, a2  <~~ Word[0x800033c0]
       0     5772        M                                           #; (lsu) a2  <-- 0
       0     5773        M 0x80001b04 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b00
       0     5774        M 0x80001b00 lw      a2, 0(a0)              #; a0  = 0x800033c0, a2  <~~ Word[0x800033c0]
       0     5785        M                                           #; (lsu) a2  <-- 0
       0     5786        M 0x80001b04 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b00
       0     5787        M 0x80001b00 lw      a2, 0(a0)              #; a0  = 0x800033c0, a2  <~~ Word[0x800033c0]
       0     5798        M                                           #; (lsu) a2  <-- 0
       0     5799        M 0x80001b04 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b00
       0     5800        M 0x80001b00 lw      a2, 0(a0)              #; a0  = 0x800033c0, a2  <~~ Word[0x800033c0]
       0     5811        M                                           #; (lsu) a2  <-- 1
       0     5812        M 0x80001b04 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5813        M 0x80001b08 sw      zero, 0(a0)            #; a0  = 0x800033c0, 0 ~~> Word[0x800033c0]
       0     5814        M 0x80001b0c sw      zero, 0(a1)            #; a1  = 0x800034f4, 0 ~~> Word[0x800034f4]
       0     5816        M 0x80001b10 ret                            #; ra  = 0x80000f24, goto 0x80000f24
       0     5821        M 0x80000f24 addi    s0, s0, 1              #; s0  = 0x8000315f, (wrb) s0  <-- 0x80003160
       0     5822        M 0x80000f28 addi    s10, s10, 1            #; s10 = 0x80003161, (wrb) s10 <-- 0x80003162
       0     5823        M 0x80000f2c mv      s9, s1                 #; s1  = 18, (wrb) s9  <-- 18
       0     5824        M 0x80000f30 lbu     a0, 0(s0)              #; s0  = 0x80003160, a0  <~~ Byte[0x80003160]
       0     5836        M                                           #; (lsu) a0  <-- 0
       0     5837        M 0x80000f34 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5838        M 0x80000f38 j       pc + 0xad4             #; goto 0x80001a0c
       0     5850        M 0x80001a0c mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
       0     5862        M 0x80001a10 bltu    s9, s5, pc + 8         #; s9  = 18, s5  = -1, taken, goto 0x80001a18
       0     5863        M 0x80001a18 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5864        M 0x80001a1c mv      a1, s4                 #; s4  = 0x0011fe67, (wrb) a1  <-- 0x0011fe67
       0     5874        M 0x80001a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5875        M 0x80001a24 jalr    s2                     #; s2  = 0x80001a68, (wrb) ra  <-- 0x80001a28, goto 0x80001a68
       0     5888        M 0x80001a68 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001b10
       0     5893        M 0x80001b10 ret                            #; ra  = 0x80001a28, goto 0x80001a28
       0     5894        M 0x80001a28 mv      a0, s9                 #; s9  = 18, (wrb) a0  <-- 18
       0     5895        M 0x80001a2c lw      s11, 60(sp)            #; sp  = 0x0011fdf0, s11 <~~ Word[0x0011fe2c]
       0     5898        M                                           #; (lsu) s11 <-- 0
       0     5899        M 0x80001a30 lw      s10, 64(sp)            #; sp  = 0x0011fdf0, s10 <~~ Word[0x0011fe30]
       0     5902        M                                           #; (lsu) s10 <-- 0
       0     5903        M 0x80001a34 lw      s9, 68(sp)             #; sp  = 0x0011fdf0, s9  <~~ Word[0x0011fe34]
       0     5906        M                                           #; (lsu) s9  <-- 0
       0     5907        M 0x80001a38 lw      s8, 72(sp)             #; sp  = 0x0011fdf0, s8  <~~ Word[0x0011fe38]
       0     5910        M                                           #; (lsu) s8  <-- 0
       0     5911        M 0x80001a3c lw      s7, 76(sp)             #; sp  = 0x0011fdf0, s7  <~~ Word[0x0011fe3c]
       0     5914        M                                           #; (lsu) s7  <-- 0
       0     5915        M 0x80001a40 lw      s6, 80(sp)             #; sp  = 0x0011fdf0, s6  <~~ Word[0x0011fe40]
       0     5918        M                                           #; (lsu) s6  <-- 0
       0     5919        M 0x80001a44 lw      s5, 84(sp)             #; sp  = 0x0011fdf0, s5  <~~ Word[0x0011fe44]
       0     5922        M                                           #; (lsu) s5  <-- 0
       0     5923        M 0x80001a48 lw      s4, 88(sp)             #; sp  = 0x0011fdf0, s4  <~~ Word[0x0011fe48]
       0     5926        M                                           #; (lsu) s4  <-- 0
       0     5927        M 0x80001a4c lw      s3, 92(sp)             #; sp  = 0x0011fdf0, s3  <~~ Word[0x0011fe4c]
       0     5930        M                                           #; (lsu) s3  <-- 0
       0     5931        M 0x80001a50 lw      s2, 96(sp)             #; sp  = 0x0011fdf0, s2  <~~ Word[0x0011fe50]
       0     5934        M                                           #; (lsu) s2  <-- 0x00100000
       0     5935        M 0x80001a54 lw      s1, 100(sp)            #; sp  = 0x0011fdf0, s1  <~~ Word[0x0011fe54]
       0     5938        M                                           #; (lsu) s1  <-- 0x00100050
       0     5939        M 0x80001a58 lw      s0, 104(sp)            #; sp  = 0x0011fdf0, s0  <~~ Word[0x0011fe58]
       0     5942        M                                           #; (lsu) s0  <-- 0x001000a0
       0     5943        M 0x80001a5c lw      ra, 108(sp)            #; sp  = 0x0011fdf0, ra  <~~ Word[0x0011fe5c]
       0     5944        M 0x80001a60 addi    sp, sp, 112            #; sp  = 0x0011fdf0, (wrb) sp  <-- 0x0011fe60
       0     5946        M                                           #; (lsu) ra  <-- 0x80000e68
       0     5947        M 0x80001a64 ret                            #; ra  = 0x80000e68, goto 0x80000e68
       0     5959        M 0x80000e68 lw      ra, 12(sp)             #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fe6c]
       0     5960        M 0x80000e6c addi    sp, sp, 48             #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fe90
       0     5962        M                                           #; (lsu) ra  <-- 0x80000dc0
       0     5971        M 0x80000e70 ret                            #; ra  = 0x80000dc0, goto 0x80000dc0
       0     5994        M 0x80000dc0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002dc0
       0     5995        M 0x80000dc4 addi    a0, a0, 1664           #; a0  = 0x80002dc0, (wrb) a0  <-- 0x80003440
       0     5998        M 0x80000dc8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003440]
       0     6007        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     6008        M 0x80000dcc flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
       0     6010        M                                           #; (acc) s9  <-- 0x07013c87
                         M 0x80000dd0 fld     fs11, 96(sp)           #; fs11 <~~ Doub[0x0011fef0]
       0     6011        M 0x80000dd4 fld     fs10, 104(sp)          #; fs10 <~~ Doub[0x0011fef8], (f:lsu) fs11 <-- 0.0
       0     6012        M 0x80000dd8 fld     fs9, 112(sp)           #; fs9  <~~ Doub[0x0011ff00], (f:lsu) fs10 <-- 0.0
       0     6013        M 0x80000ddc fld     fs8, 120(sp)           #; fs8  <~~ Doub[0x0011ff08], (f:lsu) fs9  <-- 0.0
       0     6014        M 0x80000de0 fld     fs7, 128(sp)           #; fs7  <~~ Doub[0x0011ff10], (f:lsu) fs8  <-- 0.0
       0     6015        M 0x80000de4 fld     fs6, 136(sp)           #; fs6  <~~ Doub[0x0011ff18], (f:lsu) fs7  <-- 0.0
       0     6016        M 0x80000de8 fld     fs5, 144(sp)           #; fs5  <~~ Doub[0x0011ff20], (f:lsu) fs6  <-- 0.0
       0     6017        M 0x80000dec fld     fs4, 152(sp)           #; fs4  <~~ Doub[0x0011ff28], (f:lsu) fs5  <-- 0.0
       0     6018        M 0x80000df0 fld     fs3, 160(sp)           #; fs3  <~~ Doub[0x0011ff30], (f:lsu) fs4  <-- 0.0
       0     6019        M 0x80000df4 fld     fs2, 168(sp)           #; fs2  <~~ Doub[0x0011ff38], (f:lsu) fs3  <-- 0.0
       0     6020        M 0x80000e00 lw      s2, 192(sp)            #; sp  = 0x0011fe90, s2  <~~ Word[0x0011ff50]
                         M 0x80000df8 fld     fs1, 176(sp)           #; fs1  <~~ Doub[0x0011ff40], (f:lsu) fs2  <-- 0.0
       0     6021        M 0x80000dfc fld     fs0, 184(sp)           #; fs0  <~~ Doub[0x0011ff48], (f:lsu) fs1  <-- 0.0
       0     6022        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6024        M                                           #; (lsu) s2  <-- 0
       0     6025        M 0x80000e04 lw      s1, 196(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011ff54]
       0     6028        M                                           #; (lsu) s1  <-- 0
       0     6029        M 0x80000e08 lw      s0, 200(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011ff58]
       0     6032        M                                           #; (lsu) s0  <-- 0
       0     6033        M 0x80000e0c lw      ra, 204(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011ff5c]
       0     6034        M 0x80000e10 addi    sp, sp, 208            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff60
       0     6036        M                                           #; (lsu) ra  <-- 0x80002ed0
       0     6037        M 0x80000e14 ret                            #; ra  = 0x80002ed0, goto 0x80002ed0
       0     6049        M 0x80002ed0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     6050        M 0x80002ed4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ed4
       0     6051        M 0x80002ed8 jalr    ra, ra, 524            #; ra  = 0x80002ed4, (wrb) ra  <-- 0x80002edc, goto 0x800030e0
       0     6063        M 0x800030e0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     6064        M 0x800030e4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002edc ~~> Word[0x0011ff5c]
       0     6065        M 0x800030e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030e8
       0     6066        M 0x800030ec jalr    ra, ra, -1288          #; ra  = 0x800030e8, (wrb) ra  <-- 0x800030f0, goto 0x80002be0
       0     6077        M 0x80002be0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6078        M 0x80002be4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6079        M 0x80002be8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6082        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6083        M 0x80002bec lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6086        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6087        M 0x80002bf0 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     6088        M 0x80002bf4 ret                            #; ra  = 0x800030f0, goto 0x800030f0
       0     6090        M                                           #; (lsu) a0  <-- 0x00120190
       0     6091        M 0x800030f0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     6101        M                                           #; (lsu) a0  <-- 0
       0     6102        M 0x800030f4 mv      zero, a0               #; a0  = 0
       0     6103        M 0x800030f8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     6104        M 0x800030fc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     6106        M                                           #; (lsu) ra  <-- 0x80002edc
       0     6107        M 0x80003100 ret                            #; ra  = 0x80002edc, goto 0x80002edc
       0     6110        M 0x80002edc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     6114        M 0x80002ee0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ee0
       0     6115        M 0x80002ee4 jalr    ra, ra, 556            #; ra  = 0x80002ee0, (wrb) ra  <-- 0x80002ee8, goto 0x8000310c
       0     6116        M 0x8000310c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     6117        M 0x80003110 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     6118        M 0x80003114 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002ee8 ~~> Word[0x0011ff5c]
       0     6119        M 0x80003118 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003118
       0     6120        M 0x8000311c jalr    ra, ra, -1368          #; ra  = 0x80003118, (wrb) ra  <-- 0x80003120, goto 0x80002bc0
       0     6141        M 0x80002bc0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6142        M 0x80002bc4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6143        M 0x80002bc8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6144        M 0x80002bcc lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6147        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6153        M 0x80002bd0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6156        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6157        M 0x80002bd4 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     6160        M                                           #; (lsu) a0  <-- 0
       0     6161        M 0x80002bd8 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     6162        M 0x80002bdc ret                            #; ra  = 0x80003120, goto 0x80003120
       0     6163        M 0x80003120 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     6166        M                                           #; (lsu) t0  <-- 0
       0     6167        M 0x80003124 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     6168        M 0x80003128 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     6169        M 0x8000312c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     6170        M                                           #; (lsu) ra  <-- 0x80002ee8
       0     6175        M 0x80003130 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     6176        M 0x80003134 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     6177        M 0x80003138 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003138
       0     6178        M 0x8000313c addi    t1, t1, 584            #; t1  = 0x80003138, (wrb) t1  <-- 0x80003380
       0     6186        M 0x80003140 sw      t0, 0(t1)              #; t1  = 0x80003380, 1 ~~> Word[0x80003380]
       0     6187        M 0x80003144 ret                            #; ra  = 0x80002ee8, goto 0x80002ee8
       0     6188        M 0x80002ee8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 6188):
snitch_loads                                   146
snitch_stores                                  170
fpss_stores                                     27
fpss_loads                                      94
snitch_avg_load_latency                    11.1986
snitch_occupancy                            0.2309
snitch_fseq_rel_offloads                    0.1430
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.5045
fpss_avg_load_latency                       4.2660
fpss_occupancy                              0.0385
fpss_fpu_occupancy                          0.0180
fpss_fpu_rel_occupancy                      0.4664
cycles                                        6177
total_ipc                                   0.2694
