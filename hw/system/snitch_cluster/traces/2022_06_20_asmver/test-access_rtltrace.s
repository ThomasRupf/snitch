       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002cc0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002cc0, (wrb) ra  <-- 4120, goto 0x80002cc0
       0      269        M 0x80002cc0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003cc0
       0      270        M 0x80002cc4 addi    gp, gp, -248           #; gp  = 0x80003cc0, (wrb) gp  <-- 0x80003bc8
       0      271        M 0x80002cc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cc8
       0      272        M 0x80002ccc jalr    ra, ra, 964            #; ra  = 0x80002cc8, (wrb) ra  <-- 0x80002cd0, goto 0x8000308c
       0      292        M 0x8000308c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80003090 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80003094 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80003098 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x8000309c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x800030a0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x800030a4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x800030a8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x800030ac mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x800030b0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x800030b4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x800030b8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x800030bc ret                            #; ra  = 0x80002cd0, goto 0x80002cd0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002cd0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002cd4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002cd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cd8
       0      508        M 0x80002cdc jalr    ra, ra, 1036           #; ra  = 0x80002cd8, (wrb) ra  <-- 0x80002ce0, goto 0x800030e4
       0      523        M 0x800030e4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x800030e8 ret                            #; ra  = 0x80002ce0, goto 0x80002ce0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002ce0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002ce4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002ce8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x80002cec sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002cf0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002cf4 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80003cf4
       0      551        M 0x80002cf8 addi    t0, t0, -1924          #; t0  = 0x80003cf4, (wrb) t0  <-- 0x80003570
       0      552        M 0x80002cfc auipc   t1, 0x1                #; (wrb) t1  <-- 0x80003cfc
       0      562        M 0x80002d00 addi    t1, t1, -1928          #; t1  = 0x80003cfc, (wrb) t1  <-- 0x80003574
       0      563        M 0x80002d04 bge     t0, t1, pc + 16        #; t0  = 0x80003570, t1  = 0x80003574, not taken
       0      564        M 0x80002d08 sw      zero, 0(t0)            #; t0  = 0x80003570, 0 ~~> Word[0x80003570]
       0      565        M 0x80002d0c addi    t0, t0, 4              #; t0  = 0x80003570, (wrb) t0  <-- 0x80003574
       0      573        M 0x80002d10 blt     t0, t1, pc - 8         #; t0  = 0x80003574, t1  = 0x80003574, not taken
       0      574        M 0x80002d14 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002d18 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x80002d1c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002d20 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002d24 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002d28 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x80002d2c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002d30 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002d34 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002d38 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x80002d3c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002d40 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002d44 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002d48 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002d4c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002d50 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002d54 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002d58 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002d5c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002d60 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002d64 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002d68 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002d6c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002d70 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002d74 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002d78 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002d7c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002d80 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002d84 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002d88 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002d8c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002d90 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002d94 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002d98 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002d9c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002da0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002da4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002da8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002da8
       0      684        M 0x80002dac lw      t0, 900(t0)            #; t0  = 0x80002da8, t0  <~~ Word[0x8000312c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002db0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002db4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002db8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002db8
       0      708        M 0x80002dbc lw      t2, 880(t2)            #; t2  = 0x80002db8, t2  <~~ Word[0x80003128]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002dc0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002dc4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002dc8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002dcc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002dd0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002dd4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002dd8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002ddc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002de0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002de0
       0      762        M 0x80002de4 addi    t0, t0, 1512           #; t0  = 0x80002de0, (wrb) t0  <-- 0x800033c8
       0      763        M 0x80002de8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002de8
       0      764        M 0x80002dec addi    t1, t1, 1504           #; t1  = 0x80002de8, (wrb) t1  <-- 0x800033c8
       0      775        M 0x80002df0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002df0
       0      776        M 0x80002df4 addi    t2, t2, 1496           #; t2  = 0x80002df0, (wrb) t2  <-- 0x800033c8
       0      777        M 0x80002df8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002df8
       0      778        M 0x80002dfc addi    t3, t3, 1504           #; t3  = 0x80002df8, (wrb) t3  <-- 0x800033d8
       0      787        M 0x80002e00 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800033c8, (wrb) sp  <-- 0x80123338
       0      788        M 0x80002e04 sub     sp, sp, t1             #; sp  = 0x80123338, t1  = 0x800033c8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002e08 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800033c8, (wrb) sp  <-- 0x80123338
       0      790        M 0x80002e0c sub     sp, sp, t3             #; sp  = 0x80123338, t3  = 0x800033d8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002e10 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002e14 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002e18 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002e1c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002e20 bge     t0, t1, pc + 24        #; t0  = 0x800033c8, t1  = 0x800033c8, taken, goto 0x80002e38
       0      823        M 0x80002e38 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002e38
       0      824        M 0x80002e3c addi    t0, t0, 1424           #; t0  = 0x80002e38, (wrb) t0  <-- 0x800033c8
       0      835        M 0x80002e40 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e40
       0      836        M 0x80002e44 addi    t1, t1, 1432           #; t1  = 0x80002e40, (wrb) t1  <-- 0x800033d8
       0      837        M 0x80002e48 bge     t0, t1, pc + 20        #; t0  = 0x800033c8, t1  = 0x800033d8, not taken
       0      838        M 0x80002e4c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002e50 addi    t0, t0, 4              #; t0  = 0x800033c8, (wrb) t0  <-- 0x800033cc
       0      848        M 0x80002e54 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002e58 blt     t0, t2, pc - 12        #; t0  = 0x800033cc, t2  = 0x800033c8, not taken
       0      850        M 0x80002e5c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002e60 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002e64 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002e68 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002e6c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002e70 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002e74 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e74
       0      877        M 0x80002e78 jalr    ra, ra, -1056          #; ra  = 0x80002e74, (wrb) ra  <-- 0x80002e7c, goto 0x80002a54
       0      899        M 0x80002a54 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x80002a58 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x80002a5c lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x80002a60 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002a64 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002a68 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002a6c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x80002a70 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002a74 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002a78 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002a7c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x80002a80 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002a84 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002a88 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002a8c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x80002a90 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002a94 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002a98 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002a9c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002aa0 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002aa4 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002aa8 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002aac lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002ab0 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002ab4 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002ab8 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002abc sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002ac0 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002ac4 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002ac8 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002acc lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002ad0 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002ad4 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002ad8 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002adc sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002ae0 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x80002ae4 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x80002ae8 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x80002aec add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002af0 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x80002af4 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x80002af8 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x80002afc add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002b00 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x80002b04 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x80002b08 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x80002b0c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x80002b10 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x80002b14 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x80002b18 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x80002b1c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002b20 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x80002b24 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x80002b28 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x80002b2c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x80002b30 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x80002b34 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x80002b38 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x80002b3c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80002b40 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80002b44 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80002b48 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003b48
       0     1273        M 0x80002b4c addi    a1, a1, -1492          #; a1  = 0x80003b48, (wrb) a1  <-- 0x80003574
       0     1282        M 0x80002b50 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003574, (wrb) a0  <-- 0x80003574
       0     1283        M 0x80002b54 sw      zero, 0(a0)            #; a0  = 0x80003574, 0 ~~> Word[0x80003574]
       0     1284        M 0x80002b58 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x80002b5c sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x80002b60 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x80002b64 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x80002b68 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x80002b6c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x80002b70 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x80002b74 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x80002b78 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x80002b7c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x80002b80 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x80002b84 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x80002b88 lw      a0, 0(a1)              #; a1  = 0x80003574, a0  <~~ Word[0x80003574]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x80002b8c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002b90 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002b94 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x80002b98 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x80002b9c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x80002ba0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x80002ba4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x80002ba8 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x80002bac lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80002bb0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80002bb4 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80002bb8 ret                            #; ra  = 0x80002e7c, goto 0x80002e7c
       0     1406        M 0x80002e7c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x80002e80 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x80002e84 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x80002e88 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x80002e8c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x80002e90 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x80002e94 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002e94
       0     1425        M 0x80002e98 addi    t0, t0, 60             #; t0  = 0x80002e94, (wrb) t0  <-- 0x80002ed0
       0     1426        M 0x80002e9c csrw    mtvec, t0              #; t0  = 0x80002ed0, (lsu) a4  <-- 4132
       0     1434        M 0x80002ea0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ea0
       0     1435        M 0x80002ea4 jalr    ra, ra, 544            #; ra  = 0x80002ea0, (wrb) ra  <-- 0x80002ea8, goto 0x800030c0
       0     1451        M 0x800030c0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x800030c4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002ea8 ~~> Word[0x0011ff5c]
       0     1453        M 0x800030c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030c8
       0     1454        M 0x800030cc jalr    ra, ra, -1260          #; ra  = 0x800030c8, (wrb) ra  <-- 0x800030d0, goto 0x80002bdc
       0     1472        M 0x80002bdc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x80002be0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80002be4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80002be8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x80002bec lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x80002bf0 ret                            #; ra  = 0x800030d0, goto 0x800030d0
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x800030d0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x800030d4 mv      zero, a0               #; a0  = 0
       0     1529        M 0x800030d8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x800030dc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x80002ea8
       0     1533        M 0x800030e0 ret                            #; ra  = 0x80002ea8, goto 0x80002ea8
       0     1537        M 0x80002ea8 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x7ffffea8
       0     1538        M 0x80002eac jalr    ra, ra, 1932           #; ra  = 0x7ffffea8, (wrb) ra  <-- 0x80002eb0, goto 0x80000634
       0     1543        M 0x80000634 addi    sp, sp, -96            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff00
       0     1544        M 0x80000638 sw      ra, 92(sp)             #; sp  = 0x0011ff00, 0x80002eb0 ~~> Word[0x0011ff5c]
       0     1547        M 0x8000063c fsd     fs0, 80(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1548        M 0x80000640 fsd     fs1, 72(sp)            #; 0.0 ~~> Doub[0x0011ff48]
       0     1549        M 0x80000644 fsd     fs2, 64(sp)            #; 0.0 ~~> Doub[0x0011ff40]
       0     1550        M 0x80000648 fsd     fs3, 56(sp)            #; 0.0 ~~> Doub[0x0011ff38]
       0     1551        M 0x8000064c fsd     fs4, 48(sp)            #; 0.0 ~~> Doub[0x0011ff30]
       0     1561        M 0x80000650 fsd     fs5, 40(sp)            #; 0.0 ~~> Doub[0x0011ff28]
       0     1563        M 0x80000654 fsd     fs6, 32(sp)            #; 0.0 ~~> Doub[0x0011ff20]
       0     1564        M 0x80000658 fsd     fs7, 24(sp)            #; 0.0 ~~> Doub[0x0011ff18]
       0     1565        M 0x8000065c fsd     fs8, 16(sp)            #; 0.0 ~~> Doub[0x0011ff10]
       0     1572        M 0x80000664 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1573        M 0x80000668 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000660 fsd     fs9, 8(sp)             #; 0.0 ~~> Doub[0x0011ff08]
       0     1574        M 0x8000066c lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1577        M                                           #; (lsu) a1  <-- 0
       0     1583        M 0x80000670 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1584        M 0x80000674 bnez    a1, pc + 1880          #; a1  = 0, not taken
       0     1585        M 0x80000678 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1586        M 0x8000067c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1595        M 0x80000680 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1598        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1599        M 0x80000684 lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1602        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1603        M 0x80000688 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1606        M                                           #; (lsu) a0  <-- 0x00100000
       0     1607        M 0x8000068c lw      a3, 80(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
       0     1610        M                                           #; (lsu) a3  <-- 0x00100000
       0     1611        M 0x80000690 lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1612        M 0x80000694 addi    a2, a0, 224            #; a0  = 0x00100000, (wrb) a2  <-- 0x001000e0
       0     1614        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1615        M 0x80000698 add     a3, a4, a3             #; a4  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1616        M 0x8000069c bgeu    a3, a2, pc + 12        #; a3  = 0x0011df30, a2  = 0x001000e0, taken, goto 0x800006a8
       0     1624        M 0x800006a8 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
       0     1625        M 0x800006ac snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     1637        M 0x800006b0 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     1638        M 0x800006b4 addi    a4, a4, -215           #; a4  = 0x00120000, (wrb) a4  <-- 0x0011ff29
       0     1639        M 0x800006b8 sltu    a4, a0, a4             #; a0  = 0x00100000, a4  = 0x0011ff29, (wrb) a4  <-- 1
       0     1640        M 0x800006bc and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     1650        M 0x800006c0 sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x001000e0 ~~> Word[0x0011ffc8]
       0     1651        M 0x800006c4 beqz    a3, pc + 616           #; a3  = 1, not taken
       0     1652        M 0x800006c8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1653        M 0x800006cc li      a2, 27                 #; (wrb) a2  <-- 27
       0     1663        M 0x800006d0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1664        M 0x800006d4 li      a4, 192                #; (wrb) a4  <-- 192
       0     1665        M 0x800006d8 scfgw   a2, a3                 #; a2  = 27, a3  = 64
       0     1666        M 0x800006dc scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1689        M 0x800006e0 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1690        M 0x800006e4 scfgw   zero, a1               #; a1  = 32
       0     1691        M 0x800006e8 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1693        M 0x800006ec csrsi   ssr, 1                 #; 
       0     1701        M 0x800006f0 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800036f0
       0     1702        M 0x800006f4 addi    a1, a1, -792           #; a1  = 0x800036f0, (wrb) a1  <-- 0x800033d8
       0     1704        M 0x800006fc auipc   a1, 0x3                #; (wrb) a1  <-- 0x800036fc
       0     1705        M 0x800006f8 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x800033d8]
       0     1713        M 0x80000700 addi    a1, a1, -796           #; a1  = 0x800036fc, (wrb) a1  <-- 0x800033e0
       0     1714        M                                           #; (f:lsu) ft3  <-- 3.141
       0     1715        M 0x80000708 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003708
       0     1716        M 0x8000070c addi    a1, a1, -800           #; a1  = 0x80003708, (wrb) a1  <-- 0x800033e8
                         M 0x80000704 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x800033e0]
       0     1725        M                                           #; (f:lsu) ft4  <-- 6.282
       0     1726        M 0x80000714 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003714
       0     1727        M 0x80000718 addi    a1, a1, -804           #; a1  = 0x80003714, (wrb) a1  <-- 0x800033f0
                         M 0x80000710 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x800033e8]
       0     1730        M 0x8000071c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x800033f0]
       0     1736        M                                           #; (f:lsu) ft5  <-- 9.423
       0     1739        M 0x80000720 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141, (f:lsu) ft6  <-- 12.564
       0     1740        M 0x80000724 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
       0     1741        M 0x80000728 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.423, ft5  = 9.423, (f:fpu) ft0  <-- 6.282
       0     1742        M 0x8000072c fsgnj.d ft0, ft6, ft6          #; ft6  = 12.564, ft6  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1743        M                                           #; (f:fpu) ft0  <-- 12.564
       0     1749        M 0x80000730 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003730
       0     1750        M 0x80000734 addi    a1, a1, -824           #; a1  = 0x80003730, (wrb) a1  <-- 0x800033f8
       0     1752        M 0x8000073c auipc   a1, 0x3                #; (wrb) a1  <-- 0x8000373c
       0     1753        M 0x80000738 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x800033f8]
       0     1761        M 0x80000740 addi    a1, a1, -828           #; a1  = 0x8000373c, (wrb) a1  <-- 0x80003400
       0     1762        M                                           #; (f:lsu) ft3  <-- 15.705
       0     1763        M 0x80000748 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003748
       0     1764        M 0x8000074c addi    a1, a1, -832           #; a1  = 0x80003748, (wrb) a1  <-- 0x80003408
                         M 0x80000744 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80003400]
       0     1773        M                                           #; (f:lsu) ft4  <-- 18.846
       0     1774        M 0x80000754 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003754
       0     1775        M 0x80000758 addi    a1, a1, -836           #; a1  = 0x80003754, (wrb) a1  <-- 0x80003410
                         M 0x80000750 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80003408]
       0     1778        M 0x8000075c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80003410]
       0     1784        M                                           #; (f:lsu) ft5  <-- 21.9870000
       0     1787        M 0x80000760 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.705, ft3  = 15.705, (f:lsu) ft6  <-- 25.128
       0     1788        M 0x80000764 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846, (f:fpu) ft0  <-- 15.705
       0     1789        M 0x80000768 fsgnj.d ft0, ft5, ft5          #; ft5  = 21.9870000, ft5  = 21.9870000, (f:fpu) ft0  <-- 18.846
       0     1790        M 0x8000076c fsgnj.d ft0, ft6, ft6          #; ft6  = 25.128, ft6  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     1791        M                                           #; (f:fpu) ft0  <-- 25.128
       0     1797        M 0x80000770 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003770
       0     1798        M 0x80000774 addi    a1, a1, -856           #; a1  = 0x80003770, (wrb) a1  <-- 0x80003418
       0     1800        M 0x8000077c auipc   a1, 0x3                #; (wrb) a1  <-- 0x8000377c
       0     1801        M 0x80000778 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80003418]
       0     1809        M 0x80000780 addi    a1, a1, -860           #; a1  = 0x8000377c, (wrb) a1  <-- 0x80003420
       0     1810        M                                           #; (f:lsu) ft3  <-- 28.269
       0     1811        M 0x80000788 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003788
       0     1812        M 0x8000078c addi    a1, a1, -864           #; a1  = 0x80003788, (wrb) a1  <-- 0x80003428
                         M 0x80000784 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80003420]
       0     1821        M                                           #; (f:lsu) ft4  <-- 31.41
       0     1822        M 0x80000794 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003794
       0     1823        M 0x80000798 addi    a1, a1, -868           #; a1  = 0x80003794, (wrb) a1  <-- 0x80003430
                         M 0x80000790 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80003428]
       0     1826        M 0x8000079c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80003430]
       0     1832        M                                           #; (f:lsu) ft5  <-- 34.551
       0     1835        M 0x800007a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.269, ft3  = 28.269, (f:lsu) ft6  <-- 37.692
       0     1836        M 0x800007a4 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41, (f:fpu) ft0  <-- 28.269
       0     1837        M 0x800007a8 fsgnj.d ft0, ft5, ft5          #; ft5  = 34.551, ft5  = 34.551, (f:fpu) ft0  <-- 31.41
       0     1838        M 0x800007ac fsgnj.d ft0, ft6, ft6          #; ft6  = 37.692, ft6  = 37.692, (f:fpu) ft0  <-- 34.551
       0     1839        M                                           #; (f:fpu) ft0  <-- 37.692
       0     1845        M 0x800007b0 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037b0
       0     1846        M 0x800007b4 addi    a1, a1, -888           #; a1  = 0x800037b0, (wrb) a1  <-- 0x80003438
       0     1848        M 0x800007bc auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037bc
       0     1849        M 0x800007b8 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80003438]
       0     1857        M 0x800007c0 addi    a1, a1, -892           #; a1  = 0x800037bc, (wrb) a1  <-- 0x80003440
       0     1858        M                                           #; (f:lsu) ft3  <-- 40.833
       0     1859        M 0x800007c8 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037c8
       0     1860        M 0x800007cc addi    a1, a1, -896           #; a1  = 0x800037c8, (wrb) a1  <-- 0x80003448
                         M 0x800007c4 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80003440]
       0     1869        M                                           #; (f:lsu) ft4  <-- 43.9740000
       0     1870        M 0x800007d4 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037d4
       0     1871        M 0x800007d8 addi    a1, a1, -900           #; a1  = 0x800037d4, (wrb) a1  <-- 0x80003450
                         M 0x800007d0 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80003448]
       0     1874        M 0x800007dc fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80003450]
       0     1880        M                                           #; (f:lsu) ft5  <-- 47.115
       0     1883        M 0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 40.833, ft3  = 40.833, (f:lsu) ft6  <-- 50.256
       0     1884        M 0x800007e4 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000, (f:fpu) ft0  <-- 40.833
       0     1885        M 0x800007e8 fsgnj.d ft0, ft5, ft5          #; ft5  = 47.115, ft5  = 47.115, (f:fpu) ft0  <-- 43.9740000
       0     1886        M 0x800007ec fsgnj.d ft0, ft6, ft6          #; ft6  = 50.256, ft6  = 50.256, (f:fpu) ft0  <-- 47.115
       0     1887        M                                           #; (f:fpu) ft0  <-- 50.256
       0     1893        M 0x800007f0 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037f0
       0     1894        M 0x800007f4 addi    a1, a1, -920           #; a1  = 0x800037f0, (wrb) a1  <-- 0x80003458
       0     1896        M 0x800007fc auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037fc
       0     1897        M 0x800007f8 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80003458]
       0     1905        M 0x80000800 addi    a1, a1, -924           #; a1  = 0x800037fc, (wrb) a1  <-- 0x80003460
       0     1906        M                                           #; (f:lsu) ft3  <-- 53.397
       0     1907        M 0x80000808 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003808
       0     1908        M 0x8000080c addi    a1, a1, -928           #; a1  = 0x80003808, (wrb) a1  <-- 0x80003468
                         M 0x80000804 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80003460]
       0     1917        M                                           #; (f:lsu) ft4  <-- 56.538
       0     1918        M 0x80000814 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003814
       0     1919        M 0x80000818 addi    a1, a1, -932           #; a1  = 0x80003814, (wrb) a1  <-- 0x80003470
                         M 0x80000810 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80003468]
       0     1922        M 0x8000081c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80003470]
       0     1928        M                                           #; (f:lsu) ft5  <-- 59.679
       0     1931        M 0x80000820 fsgnj.d ft0, ft3, ft3          #; ft3  = 53.397, ft3  = 53.397, (f:lsu) ft6  <-- 62.82
       0     1932        M 0x80000824 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538, (f:fpu) ft0  <-- 53.397
       0     1933        M 0x80000828 fsgnj.d ft0, ft5, ft5          #; ft5  = 59.679, ft5  = 59.679, (f:fpu) ft0  <-- 56.538
       0     1934        M 0x8000082c fsgnj.d ft0, ft6, ft6          #; ft6  = 62.82, ft6  = 62.82, (f:fpu) ft0  <-- 59.679
       0     1935        M                                           #; (f:fpu) ft0  <-- 62.82
       0     1941        M 0x80000830 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003830
       0     1942        M 0x80000834 addi    a1, a1, -952           #; a1  = 0x80003830, (wrb) a1  <-- 0x80003478
       0     1944        M 0x8000083c auipc   a1, 0x3                #; (wrb) a1  <-- 0x8000383c
       0     1945        M 0x80000838 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80003478]
       0     1953        M 0x80000840 addi    a1, a1, -956           #; a1  = 0x8000383c, (wrb) a1  <-- 0x80003480
       0     1954        M                                           #; (f:lsu) ft3  <-- 65.961
       0     1955        M 0x80000848 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003848
       0     1956        M 0x8000084c addi    a1, a1, -960           #; a1  = 0x80003848, (wrb) a1  <-- 0x80003488
                         M 0x80000844 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80003480]
       0     1965        M                                           #; (f:lsu) ft4  <-- 69.102
       0     1966        M 0x80000854 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003854
       0     1967        M 0x80000858 addi    a1, a1, -964           #; a1  = 0x80003854, (wrb) a1  <-- 0x80003490
                         M 0x80000850 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80003488]
       0     1970        M 0x8000085c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80003490]
       0     1976        M                                           #; (f:lsu) ft5  <-- 72.243
       0     1979        M 0x80000860 fsgnj.d ft0, ft3, ft3          #; ft3  = 65.961, ft3  = 65.961, (f:lsu) ft6  <-- 75.384
       0     1980        M 0x80000864 fsgnj.d ft0, ft4, ft4          #; ft4  = 69.102, ft4  = 69.102, (f:fpu) ft0  <-- 65.961
       0     1981        M 0x80000868 fsgnj.d ft0, ft5, ft5          #; ft5  = 72.243, ft5  = 72.243, (f:fpu) ft0  <-- 69.102
       0     1982        M 0x8000086c fsgnj.d ft0, ft6, ft6          #; ft6  = 75.384, ft6  = 75.384, (f:fpu) ft0  <-- 72.243
       0     1983        M                                           #; (f:fpu) ft0  <-- 75.384
       0     1989        M 0x80000870 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003870
       0     1990        M 0x80000874 addi    a1, a1, -984           #; a1  = 0x80003870, (wrb) a1  <-- 0x80003498
       0     1992        M 0x8000087c auipc   a1, 0x3                #; (wrb) a1  <-- 0x8000387c
       0     1993        M 0x80000878 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80003498]
       0     2001        M 0x80000880 addi    a1, a1, -988           #; a1  = 0x8000387c, (wrb) a1  <-- 0x800034a0
       0     2002        M                                           #; (f:lsu) ft3  <-- 78.525
       0     2003        M 0x80000888 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003888
       0     2004        M 0x8000088c addi    a1, a1, -992           #; a1  = 0x80003888, (wrb) a1  <-- 0x800034a8
                         M 0x80000884 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x800034a0]
       0     2013        M                                           #; (f:lsu) ft4  <-- 81.666
       0     2014        M 0x80000894 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003894
       0     2015        M 0x80000898 addi    a1, a1, -996           #; a1  = 0x80003894, (wrb) a1  <-- 0x800034b0
                         M 0x80000890 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x800034a8]
       0     2018        M 0x8000089c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x800034b0]
       0     2024        M                                           #; (f:lsu) ft5  <-- 84.807
       0     2027        M 0x800008a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 78.525, ft3  = 78.525, (f:lsu) ft6  <-- 87.9480000
       0     2028        M 0x800008a4 fsgnj.d ft0, ft4, ft4          #; ft4  = 81.666, ft4  = 81.666, (f:fpu) ft0  <-- 78.525
       0     2029        M 0x800008a8 fsgnj.d ft0, ft5, ft5          #; ft5  = 84.807, ft5  = 84.807, (f:fpu) ft0  <-- 81.666
       0     2030        M 0x800008ac fsgnj.d ft0, ft6, ft6          #; ft6  = 87.9480000, ft6  = 87.9480000, (f:fpu) ft0  <-- 84.807
       0     2031        M                                           #; (f:fpu) ft0  <-- 87.9480000
       0     2038        M 0x800008b0 csrci   ssr, 1                 #; 
       0     2040        M 0x800008b4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100000]
       0     2041        M 0x800008b8 fld     ft1, 8(a0)             #; ft1  <~~ Doub[0x00100008], (f:lsu) ft0  <-- 3.141
       0     2042        M 0x800008bc fld     ft3, 16(a0)            #; ft3  <~~ Doub[0x00100010], (f:lsu) ft1  <-- 6.282
       0     2043        M                                           #; (f:lsu) ft3  <-- 9.423
       0     2051        M 0x800008c0 fld     ft5, 24(a0)            #; ft5  <~~ Doub[0x00100018]
       0     2052        M 0x800008c4 fld     ft2, 32(a0)            #; ft2  <~~ Doub[0x00100020], (f:lsu) ft5  <-- 12.564
       0     2053        M 0x800008c8 fld     ft4, 40(a0)            #; ft4  <~~ Doub[0x00100028], (f:lsu) ft2  <-- 15.705
       0     2054        M 0x800008cc fld     ft6, 48(a0)            #; ft6  <~~ Doub[0x00100030], (f:lsu) ft4  <-- 18.846
       0     2055        M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     2063        M 0x800008d0 fld     ft7, 56(a0)            #; ft7  <~~ Doub[0x00100038]
       0     2064        M 0x800008d4 fld     fa0, 64(a0)            #; fa0  <~~ Doub[0x00100040], (f:lsu) ft7  <-- 25.128
       0     2065        M 0x800008d8 fld     fa1, 72(a0)            #; fa1  <~~ Doub[0x00100048], (f:lsu) fa0  <-- 28.269
       0     2066        M 0x800008dc fld     fa2, 80(a0)            #; fa2  <~~ Doub[0x00100050], (f:lsu) fa1  <-- 31.41
       0     2067        M                                           #; (f:lsu) fa2  <-- 34.551
       0     2075        M 0x800008e0 fld     fa3, 88(a0)            #; fa3  <~~ Doub[0x00100058]
       0     2076        M 0x800008e4 fld     fa4, 96(a0)            #; fa4  <~~ Doub[0x00100060], (f:lsu) fa3  <-- 37.692
       0     2077        M 0x800008e8 fld     fa5, 104(a0)           #; fa5  <~~ Doub[0x00100068], (f:lsu) fa4  <-- 40.833
       0     2078        M 0x800008ec fld     fa6, 112(a0)           #; fa6  <~~ Doub[0x00100070], (f:lsu) fa5  <-- 43.9740000
       0     2079        M                                           #; (f:lsu) fa6  <-- 47.115
       0     2087        M 0x800008f0 fld     fa7, 120(a0)           #; fa7  <~~ Doub[0x00100078]
       0     2088        M 0x800008f4 fld     ft8, 128(a0)           #; ft8  <~~ Doub[0x00100080], (f:lsu) fa7  <-- 50.256
       0     2089        M 0x800008f8 fld     ft9, 136(a0)           #; ft9  <~~ Doub[0x00100088], (f:lsu) ft8  <-- 53.397
       0     2090        M 0x800008fc fld     ft10, 144(a0)          #; ft10 <~~ Doub[0x00100090], (f:lsu) ft9  <-- 56.538
       0     2091        M                                           #; (f:lsu) ft10 <-- 59.679
       0     2099        M 0x80000900 fld     ft11, 152(a0)          #; ft11 <~~ Doub[0x00100098]
       0     2100        M 0x80000904 fld     fs0, 160(a0)           #; fs0  <~~ Doub[0x001000a0], (f:lsu) ft11 <-- 62.82
       0     2101        M 0x80000908 fld     fs2, 168(a0)           #; fs2  <~~ Doub[0x001000a8], (f:lsu) fs0  <-- 65.961
       0     2102        M 0x8000090c fld     fs3, 176(a0)           #; fs3  <~~ Doub[0x001000b0], (f:lsu) fs2  <-- 69.102
       0     2103        M                                           #; (f:lsu) fs3  <-- 72.243
       0     2111        M 0x80000910 fld     fs4, 184(a0)           #; fs4  <~~ Doub[0x001000b8]
       0     2112        M 0x80000914 fld     fs5, 192(a0)           #; fs5  <~~ Doub[0x001000c0], (f:lsu) fs4  <-- 75.384
       0     2113        M 0x80000918 fld     fs6, 200(a0)           #; fs6  <~~ Doub[0x001000c8], (f:lsu) fs5  <-- 78.525
       0     2114        M 0x8000091c fld     fs7, 208(a0)           #; fs7  <~~ Doub[0x001000d0], (f:lsu) fs6  <-- 81.666
       0     2115        M                                           #; (f:lsu) fs7  <-- 84.807
       0     2123        M 0x80000928 j       pc + 0x388             #; goto 0x80000cb0
                         M 0x80000920 fld     fs8, 216(a0)           #; fs8  <~~ Doub[0x001000d8]
       0     2124        M 0x80000924 fsgnj.d fs1, ft0, ft0          #; ft0  = 3.141, ft0  = 3.141, (f:lsu) fs8  <-- 87.9480000
       0     2125        M                                           #; (f:fpu) fs1  <-- 3.141
       0     2135        M 0x80000cb0 fadd.d  fs9, fs7, fs8          #; fs7  = 84.807, fs8  = 87.9480000
       0     2138        M                                           #; (f:fpu) fs9  <-- 172.755
       0     2139        M 0x80000cb4 fadd.d  fs9, fs9, fs6          #; fs9  = 172.755, fs6  = 81.666
       0     2142        M                                           #; (f:fpu) fs9  <-- 254.421
       0     2143        M 0x80000cb8 fadd.d  fs9, fs9, fs5          #; fs9  = 254.421, fs5  = 78.525
       0     2146        M                                           #; (f:fpu) fs9  <-- 332.946
       0     2147        M 0x80000cbc fadd.d  fs9, fs9, fs4          #; fs9  = 332.946, fs4  = 75.384
       0     2150        M                                           #; (f:fpu) fs9  <-- 408.3300000
       0     2151        M 0x80000cc0 fadd.d  fs9, fs9, fs3          #; fs9  = 408.3300000, fs3  = 72.243
       0     2154        M                                           #; (f:fpu) fs9  <-- 480.5730000
       0     2155        M 0x80000cc4 fadd.d  fs9, fs9, fs2          #; fs9  = 480.5730000, fs2  = 69.102
       0     2158        M                                           #; (f:fpu) fs9  <-- 549.6750000
       0     2159        M 0x80000cc8 fadd.d  fs9, fs9, fs0          #; fs9  = 549.6750000, fs0  = 65.961
       0     2162        M                                           #; (f:fpu) fs9  <-- 615.6360000
       0     2163        M 0x80000ccc fadd.d  fs9, fs9, ft11         #; fs9  = 615.6360000, ft11 = 62.82
       0     2166        M                                           #; (f:fpu) fs9  <-- 678.4560000
       0     2167        M 0x80000cd0 fadd.d  fs9, fs9, ft10         #; fs9  = 678.4560000, ft10 = 59.679
       0     2170        M                                           #; (f:fpu) fs9  <-- 738.1350000
       0     2171        M 0x80000cd4 fadd.d  fs9, fs9, ft9          #; fs9  = 738.1350000, ft9  = 56.538
       0     2174        M                                           #; (f:fpu) fs9  <-- 794.6730000
       0     2175        M 0x80000cd8 fadd.d  fs9, fs9, ft8          #; fs9  = 794.6730000, ft8  = 53.397
       0     2178        M                                           #; (f:fpu) fs9  <-- 848.0700000
       0     2179        M 0x80000cdc fadd.d  fs9, fs9, fa7          #; fs9  = 848.0700000, fa7  = 50.256
       0     2182        M                                           #; (f:fpu) fs9  <-- 898.3260000
       0     2183        M 0x80000ce0 fadd.d  fs9, fs9, fa6          #; fs9  = 898.3260000, fa6  = 47.115
       0     2186        M                                           #; (f:fpu) fs9  <-- 945.4410000
       0     2187        M 0x80000ce4 fadd.d  fs9, fs9, fa5          #; fs9  = 945.4410000, fa5  = 43.9740000
       0     2190        M                                           #; (f:fpu) fs9  <-- 989.4150000
       0     2191        M 0x80000ce8 fadd.d  fs9, fs9, fa4          #; fs9  = 989.4150000, fa4  = 40.833
       0     2194        M                                           #; (f:fpu) fs9  <-- 1030.2480000
       0     2195        M 0x80000cec fadd.d  fs9, fs9, fa3          #; fs9  = 1030.2480000, fa3  = 37.692
       0     2198        M                                           #; (f:fpu) fs9  <-- 1067.9400000
       0     2199        M 0x80000cf0 fadd.d  fs9, fs9, fa2          #; fs9  = 1067.9400000, fa2  = 34.551
       0     2202        M                                           #; (f:fpu) fs9  <-- 1102.4910000
       0     2203        M 0x80000cf4 fadd.d  fs9, fs9, fa1          #; fs9  = 1102.4910000, fa1  = 31.41
       0     2206        M                                           #; (f:fpu) fs9  <-- 1133.9010000
       0     2207        M 0x80000cf8 fadd.d  fs9, fs9, fa0          #; fs9  = 1133.9010000, fa0  = 28.269
       0     2210        M                                           #; (f:fpu) fs9  <-- 1162.1700000
       0     2211        M 0x80000cfc fadd.d  fs9, fs9, ft7          #; fs9  = 1162.1700000, ft7  = 25.128
       0     2214        M                                           #; (f:fpu) fs9  <-- 1187.2980000
       0     2215        M 0x80000d00 fadd.d  fs9, fs9, ft6          #; fs9  = 1187.2980000, ft6  = 21.9870000
       0     2218        M                                           #; (f:fpu) fs9  <-- 1209.2850000
       0     2219        M 0x80000d04 fadd.d  fs9, fs9, ft4          #; fs9  = 1209.2850000, ft4  = 18.846
       0     2222        M                                           #; (f:fpu) fs9  <-- 1228.1310000
       0     2223        M 0x80000d08 fadd.d  fs9, fs9, ft2          #; fs9  = 1228.1310000, ft2  = 15.705
       0     2226        M                                           #; (f:fpu) fs9  <-- 1243.8360000
       0     2227        M 0x80000d0c fadd.d  fs9, fs9, ft5          #; fs9  = 1243.8360000, ft5  = 12.564
       0     2230        M                                           #; (f:fpu) fs9  <-- 1256.4000000
       0     2231        M 0x80000d10 fadd.d  fs9, fs9, ft3          #; fs9  = 1256.4000000, ft3  = 9.423
       0     2234        M                                           #; (f:fpu) fs9  <-- 1265.8230000
       0     2235        M 0x80000d14 fadd.d  fs9, fs9, ft1          #; fs9  = 1265.8230000, ft1  = 6.282
       0     2238        M                                           #; (f:fpu) fs9  <-- 1272.1050000
       0     2239        M 0x80000d18 fadd.d  fs1, fs9, fs1          #; fs9  = 1272.1050000, fs1  = 3.141
       0     2242        M                                           #; (f:fpu) fs1  <-- 1275.2460000
       0     2243        M 0x80000d1c fadd.d  fs2, fs2, fs1          #; fs2  = 69.102, fs1  = 1275.2460000
       0     2246        M                                           #; (f:fpu) fs2  <-- 1344.3480000
       0     2247        M 0x80000d20 fadd.d  fs2, fs3, fs2          #; fs3  = 72.243, fs2  = 1344.3480000
       0     2250        M                                           #; (f:fpu) fs2  <-- 1416.5910000
       0     2251        M 0x80000d24 fadd.d  fs2, fs4, fs2          #; fs4  = 75.384, fs2  = 1416.5910000
       0     2254        M                                           #; (f:fpu) fs2  <-- 1491.9750000
       0     2255        M 0x80000d28 fadd.d  fs2, fs5, fs2          #; fs5  = 78.525, fs2  = 1491.9750000
       0     2258        M                                           #; (f:fpu) fs2  <-- 1570.5000000
       0     2259        M 0x80000d2c fadd.d  fs2, fs6, fs2          #; fs6  = 81.666, fs2  = 1570.5000000
       0     2262        M                                           #; (f:fpu) fs2  <-- 1652.1660000
       0     2263        M 0x80000d30 fadd.d  fs2, fs7, fs2          #; fs7  = 84.807, fs2  = 1652.1660000
       0     2266        M                                           #; (f:fpu) fs2  <-- 1736.9730000
       0     2267        M 0x80000d34 fadd.d  fs2, fs8, fs2          #; fs8  = 87.9480000, fs2  = 1736.9730000
       0     2270        M                                           #; (f:fpu) fs2  <-- 1824.9210000
       0     2271        M 0x80000d38 fadd.d  fa6, fa6, fs2          #; fa6  = 47.115, fs2  = 1824.9210000
       0     2274        M                                           #; (f:fpu) fa6  <-- 1872.0360000
       0     2275        M 0x80000d3c fadd.d  fa6, fa7, fa6          #; fa7  = 50.256, fa6  = 1872.0360000
       0     2278        M                                           #; (f:fpu) fa6  <-- 1922.2920000
       0     2279        M 0x80000d40 fadd.d  fa6, ft8, fa6          #; ft8  = 53.397, fa6  = 1922.2920000
       0     2282        M                                           #; (f:fpu) fa6  <-- 1975.6890000
       0     2283        M 0x80000d44 fadd.d  fa6, ft9, fa6          #; ft9  = 56.538, fa6  = 1975.6890000
       0     2286        M                                           #; (f:fpu) fa6  <-- 2032.2270000
       0     2287        M 0x80000d48 fadd.d  fa6, ft10, fa6         #; ft10 = 59.679, fa6  = 2032.2270000
       0     2289        M 0x80000d80 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d80
       0     2290        M 0x80000d84 addi    a0, a0, 1848           #; a0  = 0x80002d80, (wrb) a0  <-- 0x800034b8
                         M                                           #; (f:fpu) fa6  <-- 2091.9060000
       0     2291        M 0x80000d4c fadd.d  fa6, ft11, fa6         #; ft11 = 62.82, fa6  = 2091.9060000
       0     2294        M                                           #; (f:fpu) fa6  <-- 2154.7260000
       0     2295        M 0x80000d50 fadd.d  fa6, fs0, fa6          #; fs0  = 65.961, fa6  = 2154.7260000
       0     2298        M                                           #; (f:fpu) fa6  <-- 2220.6870000
       0     2299        M 0x80000d54 fadd.d  ft7, ft7, fa6          #; ft7  = 25.128, fa6  = 2220.6870000
       0     2302        M                                           #; (f:fpu) ft7  <-- 2245.8150000
       0     2303        M 0x80000d58 fadd.d  ft7, fa0, ft7          #; fa0  = 28.269, ft7  = 2245.8150000
       0     2306        M                                           #; (f:fpu) ft7  <-- 2274.0840000
       0     2307        M 0x80000d5c fadd.d  ft7, fa1, ft7          #; fa1  = 31.41, ft7  = 2274.0840000
       0     2310        M                                           #; (f:fpu) ft7  <-- 2305.494
       0     2311        M 0x80000d60 fadd.d  ft7, fa2, ft7          #; fa2  = 34.551, ft7  = 2305.494
       0     2314        M 0x80000da4 lw      a2, 0(sp)              #; sp  = 0x0011ff00, a2  <~~ Word[0x0011ff00]
                         M                                           #; (f:fpu) ft7  <-- 2340.045
       0     2315        M 0x80000d64 fadd.d  ft7, fa3, ft7          #; fa3  = 37.692, ft7  = 2340.045
       0     2317        M                                           #; (lsu) a2  <-- 0
       0     2318        M 0x80000da8 lw      a3, 4(sp)              #; sp  = 0x0011ff00, a3  <~~ Word[0x0011ff04]
                         M                                           #; (f:fpu) ft7  <-- 2377.737
       0     2319        M 0x80000dac auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002dac
                         M 0x80000d68 fadd.d  ft7, fa4, ft7          #; fa4  = 40.833, ft7  = 2377.737
       0     2321        M                                           #; (lsu) a3  <-- 0
       0     2322        M                                           #; (f:fpu) ft7  <-- 2418.57
       0     2323        M 0x80000d6c fadd.d  ft7, fa5, ft7          #; fa5  = 43.9740000, ft7  = 2418.57
       0     2325        M 0x80000db0 addi    a0, a0, 905            #; a0  = 0x80002dac, (wrb) a0  <-- 0x80003135
       0     2326        M 0x80000db4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000db4
                         M                                           #; (f:fpu) ft7  <-- 2462.5440000
       0     2327        M 0x80000db8 jalr    ra, ra, 76             #; ra  = 0x80000db4, (wrb) ra  <-- 0x80000dbc, goto 0x80000e00
                         M 0x80000d70 fadd.d  ft0, ft0, ft7          #; ft0  = 3.141, ft7  = 2462.5440000
       0     2330        M 0x80000e00 addi    sp, sp, -48            #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fed0
                         M                                           #; (f:fpu) ft0  <-- 2465.6850000
       0     2331        M 0x80000e04 sw      ra, 12(sp)             #; sp  = 0x0011fed0, 0x80000dbc ~~> Word[0x0011fedc]
                         M 0x80000d74 fadd.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 2465.6850000
       0     2332        M 0x80000e08 mv      t0, a0                 #; a0  = 0x80003135, (wrb) t0  <-- 0x80003135
       0     2333        M 0x80000e0c sw      a7, 44(sp)             #; sp  = 0x0011fed0, 0xffff0000 ~~> Word[0x0011fefc]
       0     2334        M                                           #; (f:fpu) ft0  <-- 2471.9670000
       0     2335        M 0x80000d78 fadd.d  ft0, ft3, ft0          #; ft3  = 9.423, ft0  = 2471.9670000
       0     2338        M                                           #; (f:fpu) ft0  <-- 2481.3900000
       0     2339        M 0x80000d7c fadd.d  ft0, ft5, ft0          #; ft5  = 12.564, ft0  = 2481.3900000
       0     2340        M 0x80000d88 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800034b8]
       0     2342        M 0x80000e10 sw      a6, 40(sp)             #; sp  = 0x0011fed0, 0x00120000 ~~> Word[0x0011fef8]
                         M                                           #; (f:fpu) ft0  <-- 2493.954
       0     2343        M 0x80000e14 sw      a5, 36(sp)             #; sp  = 0x0011fed0, 0x0011ff70 ~~> Word[0x0011fef4]
                         M 0x80000d8c fadd.d  ft0, ft2, ft0          #; ft2  = 15.705, ft0  = 2493.954
       0     2344        M 0x80000e18 sw      a4, 32(sp)             #; sp  = 0x0011fed0, 192 ~~> Word[0x0011fef0]
       0     2345        M 0x80000e1c sw      a3, 28(sp)             #; sp  = 0x0011fed0, 0 ~~> Word[0x0011feec]
       0     2346        M                                           #; (f:fpu) ft0  <-- 2509.659
       0     2347        M 0x80000d90 fadd.d  ft0, ft4, ft0          #; ft4  = 18.846, ft0  = 2509.659
       0     2349        M                                           #; (f:lsu) ft1  <-- -2.0
       0     2350        M                                           #; (f:fpu) ft0  <-- 2528.505
       0     2351        M 0x80000d94 fadd.d  ft0, ft6, ft0          #; ft6  = 21.9870000, ft0  = 2528.505
       0     2354        M 0x80000e20 sw      a2, 24(sp)             #; sp  = 0x0011fed0, 0 ~~> Word[0x0011fee8]
                         M                                           #; (f:fpu) ft0  <-- 2550.492
       0     2355        M 0x80000e24 sw      a1, 20(sp)             #; sp  = 0x0011fed0, 0x800034b0 ~~> Word[0x0011fee4]
                         M 0x80000d98 fmadd.d ft0, fs1, ft1, ft0     #; fs1  = 1275.2460000, ft1  = -2.0, ft0  = 2550.492
       0     2356        M 0x80000e28 addi    a0, sp, 20             #; sp  = 0x0011fed0, (wrb) a0  <-- 0x0011fee4
       0     2357        M 0x80000e2c sw      a0, 8(sp)              #; sp  = 0x0011fed0, 0x0011fee4 ~~> Word[0x0011fed8]
       0     2358        M                                           #; (f:fpu) ft0  <-- -0.0000000
       0     2359        M 0x80000d9c fsgnjx.d fs0, ft0, ft0         #; ft0  = -0.0000000, ft0  = -0.0000000
       0     2360        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     2361        M 0x80000da0 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff00]
       0     2366        M 0x80000e30 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001e30
       0     2367        M 0x80000e34 addi    a0, a0, -988           #; a0  = 0x80001e30, (wrb) a0  <-- 0x80001a54
       0     2368        M 0x80000e38 addi    a1, sp, 7              #; sp  = 0x0011fed0, (wrb) a1  <-- 0x0011fed7
       0     2369        M 0x80000e3c li      a2, -1                 #; (wrb) a2  <-- -1
       0     2378        M 0x80000e40 addi    a4, sp, 20             #; sp  = 0x0011fed0, (wrb) a4  <-- 0x0011fee4
       0     2379        M 0x80000e44 mv      a3, t0                 #; t0  = 0x80003135, (wrb) a3  <-- 0x80003135
       0     2380        M 0x80000e48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000e48
       0     2381        M 0x80000e4c jalr    ra, ra, 20             #; ra  = 0x80000e48, (wrb) ra  <-- 0x80000e50, goto 0x80000e5c
       0     2390        M 0x80000e5c addi    sp, sp, -112           #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011fe60
       0     2402        M 0x80000e60 sw      ra, 108(sp)            #; sp  = 0x0011fe60, 0x80000e50 ~~> Word[0x0011fecc]
       0     2403        M 0x80000e64 sw      s0, 104(sp)            #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fec8]
       0     2404        M 0x80000e68 sw      s1, 100(sp)            #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fec4]
       0     2405        M 0x80000e6c sw      s2, 96(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fec0]
       0     2414        M 0x80000e70 sw      s3, 92(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011febc]
       0     2415        M 0x80000e74 sw      s4, 88(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011feb8]
       0     2416        M 0x80000e78 sw      s5, 84(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011feb4]
       0     2417        M 0x80000e7c sw      s6, 80(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011feb0]
       0     2426        M 0x80000e80 sw      s7, 76(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011feac]
       0     2427        M 0x80000e84 sw      s8, 72(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fea8]
       0     2428        M 0x80000e88 sw      s9, 68(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fea4]
       0     2429        M 0x80000e8c sw      s10, 64(sp)            #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fea0]
       0     2438        M 0x80000e90 sw      s11, 60(sp)            #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe9c]
       0     2439        M 0x80000e94 mv      s3, a4                 #; a4  = 0x0011fee4, (wrb) s3  <-- 0x0011fee4
       0     2440        M 0x80000e98 mv      s0, a3                 #; a3  = 0x80003135, (wrb) s0  <-- 0x80003135
       0     2441        M 0x80000e9c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2450        M 0x80000ea0 mv      s4, a1                 #; a1  = 0x0011fed7, (wrb) s4  <-- 0x0011fed7
       0     2451        M 0x80000ea4 beqz    a1, pc + 12            #; a1  = 0x0011fed7, not taken
       0     2452        M 0x80000ea8 mv      s2, a0                 #; a0  = 0x80001a54, (wrb) s2  <-- 0x80001a54
       0     2453        M 0x80000eac j       pc + 0xc               #; goto 0x80000eb8
       0     2462        M 0x80000eb8 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2463        M 0x80000ebc li      s6, 37                 #; (wrb) s6  <-- 37
       0     2474        M 0x80000ec0 li      s11, 16                #; (wrb) s11 <-- 16
       0     2475        M 0x80000ec4 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2476        M 0x80000ec8 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2477        M 0x80000ecc addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2486        M 0x80000ed0 sw      a0, 24(sp)             #; sp  = 0x0011fe60, 2048 ~~> Word[0x0011fe78]
       0     2487        M 0x80000ed4 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2488        M 0x80000ed8 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2489        M 0x80000edc sw      a0, 16(sp)             #; sp  = 0x0011fe60, 65535 ~~> Word[0x0011fe70]
       0     2498        M 0x80000ee0 addi    s10, s0, 2             #; s0  = 0x80003135, (wrb) s10 <-- 0x80003137
       0     2499        M 0x80000ee4 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2500        M 0x80000ee8 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2501        M 0x80000eec lbu     a0, 0(s0)              #; s0  = 0x80003135, a0  <~~ Byte[0x80003135]
       0     2512        M                                           #; (lsu) a0  <-- 101
       0     2513        M 0x80000ef0 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2514        M 0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2515        M 0x80000ef8 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2516        M 0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     2522        M 0x80000f00 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2523        M 0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2524        M 0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
       0     2545        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2546        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2547        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2557        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2558        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     2559        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     2560        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2561        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     2569        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     2580        M                                           #; (lsu) a4  <-- 0
       0     2581        M 0x80001a74 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2582        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 1 ~~> Word[0x80003574]
       0     2583        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 0, (wrb) a4  <-- 0x80003574
       0     2584        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003574, 101 ~~> Byte[0x800035bc]
       0     2585        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     2606        M                                           #; (lsu) a4  <-- 1
       0     2607        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2608        M 0x80001a8c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2609        M 0x80001a90 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2610        M 0x80001a94 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2611        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2612        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     2632        M 0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
       0     2646        M 0x80000f0c addi    s0, s0, 1              #; s0  = 0x80003135, (wrb) s0  <-- 0x80003136
       0     2649        M 0x80000f10 addi    s10, s10, 1            #; s10 = 0x80003137, (wrb) s10 <-- 0x80003138
       0     2650        M 0x80000f14 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2651        M 0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x80003136, a0  <~~ Byte[0x80003136]
       0     2662        M                                           #; (lsu) a0  <-- 114
       0     2663        M 0x80000f1c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ef4
       0     2664        M 0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2665        M 0x80000ef8 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2666        M 0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     2667        M 0x80000f00 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2668        M 0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2669        M 0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
       0     2672        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2673        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2674        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2675        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2676        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     2677        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     2678        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2679        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     2680        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     2691        M                                           #; (lsu) a4  <-- 1
       0     2692        M 0x80001a74 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2693        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 2 ~~> Word[0x80003574]
       0     2694        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 1, (wrb) a4  <-- 0x80003575
       0     2695        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003575, 114 ~~> Byte[0x800035bd]
       0     2696        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     2717        M                                           #; (lsu) a4  <-- 2
       0     2718        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2719        M 0x80001a8c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2720        M 0x80001a90 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2721        M 0x80001a94 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2722        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2723        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     2726        M 0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
       0     2731        M 0x80000f0c addi    s0, s0, 1              #; s0  = 0x80003136, (wrb) s0  <-- 0x80003137
       0     2734        M 0x80000f10 addi    s10, s10, 1            #; s10 = 0x80003138, (wrb) s10 <-- 0x80003139
       0     2735        M 0x80000f14 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2736        M 0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x80003137, a0  <~~ Byte[0x80003137]
       0     2747        M                                           #; (lsu) a0  <-- 114
       0     2748        M 0x80000f1c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ef4
       0     2749        M 0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2750        M 0x80000ef8 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2751        M 0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     2752        M 0x80000f00 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2753        M 0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2754        M 0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
       0     2757        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2758        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2759        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2760        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2761        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     2762        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     2763        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2764        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     2765        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     2776        M                                           #; (lsu) a4  <-- 2
       0     2777        M 0x80001a74 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2778        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 3 ~~> Word[0x80003574]
       0     2779        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 2, (wrb) a4  <-- 0x80003576
       0     2780        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003576, 114 ~~> Byte[0x800035be]
       0     2781        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     2802        M                                           #; (lsu) a4  <-- 3
       0     2803        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2804        M 0x80001a8c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2805        M 0x80001a90 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2806        M 0x80001a94 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2807        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2808        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     2811        M 0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
       0     2816        M 0x80000f0c addi    s0, s0, 1              #; s0  = 0x80003137, (wrb) s0  <-- 0x80003138
       0     2819        M 0x80000f10 addi    s10, s10, 1            #; s10 = 0x80003139, (wrb) s10 <-- 0x8000313a
       0     2820        M 0x80000f14 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2821        M 0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x80003138, a0  <~~ Byte[0x80003138]
       0     2832        M                                           #; (lsu) a0  <-- 111
       0     2833        M 0x80000f1c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000ef4
       0     2834        M 0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2835        M 0x80000ef8 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2836        M 0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     2837        M 0x80000f00 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2838        M 0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2839        M 0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
       0     2842        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2843        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2844        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2845        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2846        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     2847        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     2848        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2849        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     2850        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     2861        M                                           #; (lsu) a4  <-- 3
       0     2862        M 0x80001a74 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2863        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 4 ~~> Word[0x80003574]
       0     2864        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 3, (wrb) a4  <-- 0x80003577
       0     2865        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003577, 111 ~~> Byte[0x800035bf]
       0     2866        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     2887        M                                           #; (lsu) a4  <-- 4
       0     2888        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2889        M 0x80001a8c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2890        M 0x80001a90 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2891        M 0x80001a94 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2892        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2893        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     2896        M 0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
       0     2901        M 0x80000f0c addi    s0, s0, 1              #; s0  = 0x80003138, (wrb) s0  <-- 0x80003139
       0     2904        M 0x80000f10 addi    s10, s10, 1            #; s10 = 0x8000313a, (wrb) s10 <-- 0x8000313b
       0     2905        M 0x80000f14 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2906        M 0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x80003139, a0  <~~ Byte[0x80003139]
       0     2917        M                                           #; (lsu) a0  <-- 114
       0     2918        M 0x80000f1c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ef4
       0     2919        M 0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2920        M 0x80000ef8 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2921        M 0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     2922        M 0x80000f00 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2923        M 0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2924        M 0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
       0     2927        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2928        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2929        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2930        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2931        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     2932        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     2933        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2934        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     2935        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     2946        M                                           #; (lsu) a4  <-- 4
       0     2947        M 0x80001a74 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2948        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 5 ~~> Word[0x80003574]
       0     2949        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 4, (wrb) a4  <-- 0x80003578
       0     2950        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003578, 114 ~~> Byte[0x800035c0]
       0     2951        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     2972        M                                           #; (lsu) a4  <-- 5
       0     2973        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2974        M 0x80001a8c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2975        M 0x80001a90 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2976        M 0x80001a94 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2977        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2978        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     2981        M 0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
       0     2986        M 0x80000f0c addi    s0, s0, 1              #; s0  = 0x80003139, (wrb) s0  <-- 0x8000313a
       0     2989        M 0x80000f10 addi    s10, s10, 1            #; s10 = 0x8000313b, (wrb) s10 <-- 0x8000313c
       0     2990        M 0x80000f14 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2991        M 0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x8000313a, a0  <~~ Byte[0x8000313a]
       0     3002        M                                           #; (lsu) a0  <-- 32
       0     3003        M 0x80000f1c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ef4
       0     3004        M 0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3005        M 0x80000ef8 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3006        M 0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     3007        M 0x80000f00 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3008        M 0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3009        M 0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
       0     3012        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3013        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3014        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3015        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3016        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     3017        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     3018        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3019        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     3020        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     3031        M                                           #; (lsu) a4  <-- 5
       0     3032        M 0x80001a74 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3033        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 6 ~~> Word[0x80003574]
       0     3034        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 5, (wrb) a4  <-- 0x80003579
       0     3035        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003579, 32 ~~> Byte[0x800035c1]
       0     3036        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     3057        M                                           #; (lsu) a4  <-- 6
       0     3058        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3059        M 0x80001a8c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3060        M 0x80001a90 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3061        M 0x80001a94 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3062        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3063        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     3066        M 0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
       0     3071        M 0x80000f0c addi    s0, s0, 1              #; s0  = 0x8000313a, (wrb) s0  <-- 0x8000313b
       0     3074        M 0x80000f10 addi    s10, s10, 1            #; s10 = 0x8000313c, (wrb) s10 <-- 0x8000313d
       0     3075        M 0x80000f14 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3076        M 0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x8000313b, a0  <~~ Byte[0x8000313b]
       0     3087        M                                           #; (lsu) a0  <-- 61
       0     3088        M 0x80000f1c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000ef4
       0     3089        M 0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3090        M 0x80000ef8 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3091        M 0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     3092        M 0x80000f00 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3093        M 0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3094        M 0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
       0     3097        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3098        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3099        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3100        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3101        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     3102        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     3103        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3104        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     3105        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     3116        M                                           #; (lsu) a4  <-- 6
       0     3117        M 0x80001a74 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3118        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 7 ~~> Word[0x80003574]
       0     3119        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 6, (wrb) a4  <-- 0x8000357a
       0     3120        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357a, 61 ~~> Byte[0x800035c2]
       0     3121        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     3142        M                                           #; (lsu) a4  <-- 7
       0     3143        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3144        M 0x80001a8c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3145        M 0x80001a90 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3146        M 0x80001a94 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3147        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3148        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     3151        M 0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
       0     3156        M 0x80000f0c addi    s0, s0, 1              #; s0  = 0x8000313b, (wrb) s0  <-- 0x8000313c
       0     3159        M 0x80000f10 addi    s10, s10, 1            #; s10 = 0x8000313d, (wrb) s10 <-- 0x8000313e
       0     3160        M 0x80000f14 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3161        M 0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x8000313c, a0  <~~ Byte[0x8000313c]
       0     3172        M                                           #; (lsu) a0  <-- 32
       0     3173        M 0x80000f1c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ef4
       0     3174        M 0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3175        M 0x80000ef8 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3176        M 0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     3177        M 0x80000f00 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3178        M 0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3179        M 0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
       0     3182        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3183        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3184        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3185        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3186        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     3187        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     3188        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3189        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     3190        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     3201        M                                           #; (lsu) a4  <-- 7
       0     3202        M 0x80001a74 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3203        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 8 ~~> Word[0x80003574]
       0     3204        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 7, (wrb) a4  <-- 0x8000357b
       0     3205        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357b, 32 ~~> Byte[0x800035c3]
       0     3206        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     3227        M                                           #; (lsu) a4  <-- 8
       0     3228        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3229        M 0x80001a8c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3230        M 0x80001a90 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3231        M 0x80001a94 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3232        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3233        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     3236        M 0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
       0     3241        M 0x80000f0c addi    s0, s0, 1              #; s0  = 0x8000313c, (wrb) s0  <-- 0x8000313d
       0     3244        M 0x80000f10 addi    s10, s10, 1            #; s10 = 0x8000313e, (wrb) s10 <-- 0x8000313f
       0     3245        M 0x80000f14 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3246        M 0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x8000313d, a0  <~~ Byte[0x8000313d]
       0     3257        M                                           #; (lsu) a0  <-- 37
       0     3258        M 0x80000f1c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000ef4
       0     3259        M 0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000f24
       0     3271        M 0x80000f24 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3272        M 0x80000f28 j       pc + 0x10              #; goto 0x80000f38
       0     3283        M 0x80000f38 lbu     a0, -1(s10)            #; s10 = 0x8000313f, a0  <~~ Byte[0x8000313e]
       0     3294        M                                           #; (lsu) a0  <-- 102
       0     3295        M 0x80000f3c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3296        M 0x80000f40 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000f78
       0     3319        M 0x80000f78 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3320        M 0x80000f7c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3331        M 0x80000f80 addi    a1, s10, -1            #; s10 = 0x8000313f, (wrb) a1  <-- 0x8000313e
       0     3332        M 0x80000f84 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3333        M 0x80000f88 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80001004
       0     3354        M 0x80001004 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3355        M 0x80001008 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80001058
       0     3377        M 0x80001058 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3378        M 0x8000105c mv      s10, a1                #; a1  = 0x8000313e, (wrb) s10 <-- 0x8000313e
       0     3389        M 0x80001060 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3390        M 0x80001064 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3391        M 0x80001068 j       pc + 0xc               #; goto 0x80001074
       0     3412        M 0x80001074 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3413        M 0x80001078 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3414        M 0x8000107c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3424        M 0x80001080 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3425        M 0x80001084 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3426        M 0x80001088 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x800010ec
       0     3447        M 0x800010ec addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3459        M 0x800010f0 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3460        M 0x800010f4 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3461        M 0x800010f8 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3462        M 0x800010fc auipc   a2, 0x2                #; (wrb) a2  <-- 0x800030fc
       0     3471        M 0x80001100 addi    a2, a2, 184            #; a2  = 0x800030fc, (wrb) a2  <-- 0x800031b4
       0     3472        M 0x80001104 add     a1, a1, a2             #; a1  = 260, a2  = 0x800031b4, (wrb) a1  <-- 0x800032b8
       0     3473        M 0x80001108 lw      a2, 0(a1)              #; a1  = 0x800032b8, a2  <~~ Word[0x800032b8]
       0     3474        M 0x8000110c li      a1, 8                  #; (wrb) a1  <-- 8
       0     3483        M 0x80001110 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3484        M                                           #; (lsu) a2  <-- 0x80001144
       0     3485        M 0x80001114 jr      a2                     #; a2  = 0x80001144, goto 0x80001144
       0     3506        M 0x80001144 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3507        M 0x80001148 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80001150
       0     3518        M 0x80001150 addi    a0, s3, 7              #; s3  = 0x0011fee4, (wrb) a0  <-- 0x0011feeb
       0     3519        M 0x80001154 andi    a0, a0, -8             #; a0  = 0x0011feeb, (wrb) a0  <-- 0x0011fee8
       0     3521        M 0x8000115c addi    s3, a0, 8              #; a0  = 0x0011fee8, (wrb) s3  <-- 0x0011fef0
       0     3522        M 0x80001158 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fee8]
       0     3523        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3530        M 0x80001160 mv      a0, s2                 #; s2  = 0x80001a54, (wrb) a0  <-- 0x80001a54
       0     3531        M 0x80001164 mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     3532        M 0x80001168 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3533        M 0x8000116c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3542        M 0x80001170 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3543        M 0x80001174 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3544        M 0x80001178 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3545        M 0x8000117c auipc   ra, 0x1                #; (wrb) ra  <-- 0x8000217c
       0     3554        M 0x80001180 jalr    ra, ra, -1656          #; ra  = 0x8000217c, (wrb) ra  <-- 0x80001184, goto 0x80001b04
       0     3568        M 0x80001b04 addi    sp, sp, -112           #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fdf0
       0     3569        M 0x80001b08 sw      ra, 108(sp)            #; sp  = 0x0011fdf0, 0x80001184 ~~> Word[0x0011fe5c]
       0     3570        M 0x80001b0c sw      s0, 104(sp)            #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe58]
       0     3580        M 0x80001b10 sw      s1, 100(sp)            #; sp  = 0x0011fdf0, 8 ~~> Word[0x0011fe54]
       0     3581        M 0x80001b14 sw      s2, 96(sp)             #; sp  = 0x0011fdf0, 0x80001a54 ~~> Word[0x0011fe50]
       0     3582        M 0x80001b18 sw      s3, 92(sp)             #; sp  = 0x0011fdf0, 0x0011fef0 ~~> Word[0x0011fe4c]
       0     3583        M 0x80001b1c sw      s4, 88(sp)             #; sp  = 0x0011fdf0, 0x0011fed7 ~~> Word[0x0011fe48]
       0     3592        M 0x80001b20 sw      s5, 84(sp)             #; sp  = 0x0011fdf0, -1 ~~> Word[0x0011fe44]
       0     3593        M 0x80001b24 sw      s6, 80(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe40]
       0     3594        M 0x80001b28 sw      s7, 76(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe3c]
       0     3595        M 0x80001b2c sw      s8, 72(sp)             #; sp  = 0x0011fdf0, 16 ~~> Word[0x0011fe38]
       0     3604        M 0x80001b30 sw      s9, 68(sp)             #; sp  = 0x0011fdf0, 8 ~~> Word[0x0011fe34]
       0     3605        M 0x80001b34 sw      s10, 64(sp)            #; sp  = 0x0011fdf0, 0x8000313e ~~> Word[0x0011fe30]
       0     3608        M 0x80001b38 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe28]
       0     3609        M 0x80001b3c fsd     fs1, 48(sp)            #; 1275.2460000 ~~> Doub[0x0011fe20]
       0     3617        M 0x80001b44 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003b44
       0     3618        M 0x80001b48 addi    s1, s1, -1660          #; s1  = 0x80003b44, (wrb) s1  <-- 0x800034c8
                         M 0x80001b40 fsd     fs2, 40(sp)            #; 1824.9210000 ~~> Doub[0x0011fe18]
       0     3621        M 0x80001b4c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800034c8]
       0     3629        M 0x80001b54 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3630        M 0x80001b58 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3631        M 0x80001b5c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001b50 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3640        M 0x80001b60 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3641        M 0x80001b64 mv      s6, a1                 #; a1  = 0x0011fed7, (wrb) s6  <-- 0x0011fed7
       0     3642        M 0x80001b68 mv      s7, a0                 #; a0  = 0x80001a54, (wrb) s7  <-- 0x80001a54
       0     3643        M 0x80001b6c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001c5c
       0     3665        M 0x80001c5c fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3666        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3675        M 0x80001c60 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003c60
       0     3676        M 0x80001c64 addi    a0, a0, -1936          #; a0  = 0x80003c60, (wrb) a0  <-- 0x800034d0
       0     3679        M 0x80001c68 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800034d0]
       0     3688        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3689        M 0x80001c6c fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3691        M                                           #; (acc) t3  <-- 0x00051e63
       0     3692        M 0x80001c70 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001c8c
       0     3699        M 0x80001c8c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003c8c
       0     3711        M 0x80001c90 addi    a0, a0, -1972          #; a0  = 0x80003c8c, (wrb) a0  <-- 0x800034d8
       0     3713        M 0x80001c98 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003c98
       0     3714        M 0x80001c9c addi    a0, a0, -1976          #; a0  = 0x80003c98, (wrb) a0  <-- 0x800034e0
                         M 0x80001c94 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800034d8]
       0     3723        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3725        M 0x80001ca0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800034e0]
       0     3726        M 0x80001ca4 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3728        M                                           #; (acc) a0  <-- 0x00b57533
       0     3734        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3735        M 0x80001ca8 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3737        M                                           #; (acc) a0  <-- 0x00b57533
       0     3738        M 0x80001cac and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3739        M 0x80001cb0 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001dac
       0     3762        M 0x80001dac andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3774        M 0x80001db0 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3775        M 0x80001db4 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001dbc
       0     3776        M 0x80001dbc li      a0, 10                 #; (wrb) a0  <-- 10
       0     3787        M 0x80001dc4 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001dfc
       0     3788        M 0x80001dc0 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3789        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3809        M 0x80001dfc li      s0, 0                  #; (wrb) s0  <-- 0
       0     3821        M 0x80001e00 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3822        M 0x80001e04 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002e04
       0     3823        M 0x80001e08 addi    a1, a1, 1284           #; a1  = 0x80002e04, (wrb) a1  <-- 0x80003308
       0     3824        M 0x80001e0c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003308, (wrb) a0  <-- 0x80003338
       0     3835        M 0x80001e10 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003338]
       0     3836        M 0x80001e14 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3840        M 0x80001e18 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3841        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3842        M 0x80001e1c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3844        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3845        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3846        M 0x80001e24 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002e24
       0     3847        M 0x80001e28 addi    a0, a0, 1732           #; a0  = 0x80002e24, (wrb) a0  <-- 0x800034e8
                         M 0x80001e20 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3850        M 0x80001e2c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800034e8], (f:fpu) ft2  <-- 0.0
       0     3858        M 0x80001e30 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3859        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3860        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3862        M 0x80001e34 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3863        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3864        M 0x80001e38 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3867        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3868        M 0x80001e3c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3871        M 0x80001e40 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001e60
       0     3893        M 0x80001e60 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3895        M                                           #; (acc) s4  <-- 0x00059a63
       0     3896        M 0x80001e64 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001e78
       0     3905        M 0x80001e7c beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001e78 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3906        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3916        M 0x80001e80 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3917        M 0x80001e84 addi    a1, sp, 8              #; sp  = 0x0011fdf0, (wrb) a1  <-- 0x0011fdf8
       0     3918        M 0x80001e88 add     t1, a1, s0             #; a1  = 0x0011fdf8, s0  = 0, (wrb) t1  <-- 0x0011fdf8
       0     3919        M 0x80001e8c li      t0, 32                 #; (wrb) t0  <-- 32
       0     3928        M 0x80001e90 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3929        M 0x80001e94 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3930        M 0x80001e98 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3931        M 0x80001e9c li      a6, 10                 #; (wrb) a6  <-- 10
       0     3940        M 0x80001ea0 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3941        M 0x80001ea4 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3942        M 0x80001ea8 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3943        M 0x80001eac mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3952        M 0x80001eb0 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3953        M 0x80001eb4 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3956        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3957        M 0x80001eb8 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3958        M 0x80001ebc ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3964        M 0x80001ec0 add     a5, t1, a2             #; t1  = 0x0011fdf8, a2  = 0, (wrb) a5  <-- 0x0011fdf8
       0     3965        M 0x80001ec4 sb      a3, 0(a5)              #; a5  = 0x0011fdf8, 48 ~~> Byte[0x0011fdf8]
       0     3966        M 0x80001ec8 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3967        M 0x80001ecc bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3979        M 0x80001ed0 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3980        M 0x80001ed4 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3981        M 0x80001ed8 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3982        M 0x80001edc sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3991        M 0x80001ee0 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3992        M 0x80001ee4 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3993        M 0x80001ee8 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3994        M 0x80001eec bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4003        M 0x80001ef0 addi    a0, sp, 8              #; sp  = 0x0011fdf0, (wrb) a0  <-- 0x0011fdf8
       0     4004        M 0x80001ef4 add     a0, a0, s0             #; a0  = 0x0011fdf8, s0  = 0, (wrb) a0  <-- 0x0011fdf8
       0     4005        M 0x80001ef8 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4006        M 0x80001efc add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4015        M 0x80001f00 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4016        M 0x80001f04 li      a1, 31                 #; (wrb) a1  <-- 31
       0     4017        M 0x80001f08 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4018        M 0x80001f0c add     a0, a0, a2             #; a0  = 0x0011fdf8, a2  = 1, (wrb) a0  <-- 0x0011fdf9
       0     4027        M 0x80001f10 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4028        M 0x80001f14 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001f1c
       0     4029        M 0x80001f1c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4039        M 0x80001f20 li      a1, 48                 #; (wrb) a1  <-- 48
       0     4040        M 0x80001f24 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7fffff24
       0     4041        M 0x80001f28 jalr    ra, ra, 1588           #; ra  = 0x7fffff24, (wrb) ra  <-- 0x80001f2c, goto 0x80000558
       0     4062        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4063        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fdf9, (wrb) a4  <-- 0x0011fdf9
       0     4074        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4097        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4109        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4110        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4111        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4112        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4132        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fdf9, 48 ~~> Byte[0x0011fdfd]
       0     4133        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fdf9, 48 ~~> Byte[0x0011fdfc]
       0     4144        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fdf9, 48 ~~> Byte[0x0011fdfb]
       0     4145        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fdf9, 48 ~~> Byte[0x0011fdfa]
       0     4146        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fdf9, 48 ~~> Byte[0x0011fdf9]
       0     4147        M 0x800005ec ret                            #; ra  = 0x80001f2c, goto 0x80001f2c
       0     4158        M 0x80001f2c li      a0, 0                  #; (wrb) a0  <-- 0
       0     4161        M 0x80001f30 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4162        M 0x80001f34 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4163        M 0x80001f38 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4164        M 0x80001f3c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4173        M 0x80001f40 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4174        M 0x80001f44 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4175        M 0x80001f48 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f30
       0     4176        M 0x80001f30 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4177        M 0x80001f34 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4178        M 0x80001f38 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4179        M 0x80001f3c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4180        M 0x80001f40 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4181        M 0x80001f44 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4182        M 0x80001f48 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f30
       0     4183        M 0x80001f30 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4184        M 0x80001f34 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4185        M 0x80001f38 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4186        M 0x80001f3c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4187        M 0x80001f40 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4188        M 0x80001f44 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4189        M 0x80001f48 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f30
       0     4190        M 0x80001f30 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4191        M 0x80001f34 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4192        M 0x80001f38 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4193        M 0x80001f3c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4194        M 0x80001f40 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4195        M 0x80001f44 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4196        M 0x80001f48 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f30
       0     4197        M 0x80001f30 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4198        M 0x80001f34 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4199        M 0x80001f38 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4200        M 0x80001f3c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4201        M 0x80001f40 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4202        M 0x80001f44 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4203        M 0x80001f48 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4204        M 0x80001f4c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4216        M 0x80001f50 j       pc + 0x28              #; goto 0x80001f78
       0     4228        M 0x80001f78 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4229        M 0x80001f7c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4240        M 0x80001f80 addi    a1, sp, 8              #; sp  = 0x0011fdf0, (wrb) a1  <-- 0x0011fdf8
       0     4241        M 0x80001f84 add     a0, a1, a0             #; a1  = 0x0011fdf8, a0  = 6, (wrb) a0  <-- 0x0011fdfe
       0     4242        M 0x80001f88 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4243        M 0x80001f8c sb      a1, 0(a0)              #; a0  = 0x0011fdfe, 46 ~~> Byte[0x0011fdfe]
       0     4252        M 0x80001f90 j       pc + 0x8               #; goto 0x80001f98
       0     4253        M 0x80001f98 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4254        M 0x80001f9c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4265        M 0x80001fa0 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4266        M 0x80001fa4 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4268        M 0x80001fac lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001fa8 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4277        M 0x80001fb0 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4278        M 0x80001fb4 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4279        M 0x80001fb8 addi    a3, sp, 8              #; sp  = 0x0011fdf0, (wrb) a3  <-- 0x0011fdf8
       0     4280        M 0x80001fbc li      a4, 18                 #; (wrb) a4  <-- 18
       0     4289        M 0x80001fc0 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4290        M 0x80001fc4 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4293        M                                           #; (acc) a5  <-- 0x01f55793
       0     4294        M 0x80001fc8 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4295        M 0x80001fcc srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4301        M 0x80001fd0 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4302        M 0x80001fd4 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4305        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4306        M 0x80001fd8 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4307        M 0x80001fdc addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4313        M 0x80001fe0 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4314        M 0x80001fe4 add     s0, a3, s0             #; a3  = 0x0011fdf8, s0  = 7, (wrb) s0  <-- 0x0011fdff
       0     4315        M 0x80001fe8 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4316        M 0x80001fec sb      a5, 0(s0)              #; s0  = 0x0011fdff, 48 ~~> Byte[0x0011fdff]
       0     4325        M 0x80001ff0 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4326        M 0x80001ff4 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4327        M 0x80001ff8 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4328        M 0x80001ffc j       pc + 0x8               #; goto 0x80002004
       0     4340        M 0x80002004 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4341        M 0x80002008 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4342        M 0x8000200c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002078
       0     4363        M 0x80002078 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4364        M 0x8000207c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4375        M 0x80002080 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002098
       0     4387        M 0x80002098 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4388        M 0x8000209c bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4399        M 0x800020a0 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4400        M 0x800020a4 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x800020d0
       0     4422        M 0x800020d0 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4423        M 0x800020d4 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4424        M 0x800020d8 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4425        M 0x800020dc or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4434        M 0x800020e0 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4435        M 0x800020e4 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4436        M 0x800020e8 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002114
       0     4457        M 0x80002114 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4458        M 0x80002118 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4459        M 0x8000211c addi    s9, sp, 7              #; sp  = 0x0011fdf0, (wrb) s9  <-- 0x0011fdf7
       0     4469        M 0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 8, (wrb) a0  <-- 0x0011fdff
       0     4470        M 0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdff, a0  <~~ Byte[0x0011fdff]
       0     4471        M 0x80002128 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4472        M 0x8000212c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4473        M                                           #; (lsu) a0  <-- 48
       0     4481        M 0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     4482        M 0x80002134 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4483        M 0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4484        M 0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
       0     4495        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4496        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4497        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4498        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4499        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     4500        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     4501        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4502        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     4503        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4514        M                                           #; (lsu) a4  <-- 8
       0     4515        M 0x80001a74 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4516        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 9 ~~> Word[0x80003574]
       0     4517        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 8, (wrb) a4  <-- 0x8000357c
       0     4518        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357c, 48 ~~> Byte[0x800035c4]
       0     4519        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4540        M                                           #; (lsu) a4  <-- 9
       0     4541        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4542        M 0x80001a8c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4543        M 0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4544        M 0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4545        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4546        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     4549        M 0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
       0     4554        M 0x80002140 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4555        M 0x80002144 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4556        M 0x80002148 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80002120
       0     4557        M 0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 7, (wrb) a0  <-- 0x0011fdfe
       0     4558        M 0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdfe, a0  <~~ Byte[0x0011fdfe]
       0     4559        M 0x80002128 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4560        M 0x8000212c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4561        M 0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     4562        M 0x80002134 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4563        M 0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4564        M 0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
       0     4565        M                                           #; (lsu) a0  <-- 46
       0     4567        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4568        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4569        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4570        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4571        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     4572        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     4573        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4574        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     4575        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4586        M                                           #; (lsu) a4  <-- 9
       0     4587        M 0x80001a74 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4588        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 10 ~~> Word[0x80003574]
       0     4589        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 9, (wrb) a4  <-- 0x8000357d
       0     4590        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357d, 46 ~~> Byte[0x800035c5]
       0     4591        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4612        M                                           #; (lsu) a4  <-- 10
       0     4613        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4614        M 0x80001a8c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4615        M 0x80001a90 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4616        M 0x80001a94 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4617        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4618        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     4621        M 0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
       0     4626        M 0x80002140 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4627        M 0x80002144 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4628        M 0x80002148 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80002120
       0     4629        M 0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 6, (wrb) a0  <-- 0x0011fdfd
       0     4630        M 0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdfd, a0  <~~ Byte[0x0011fdfd]
       0     4631        M 0x80002128 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4632        M 0x8000212c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4633        M 0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     4634        M 0x80002134 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4635        M 0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4636        M 0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
       0     4637        M                                           #; (lsu) a0  <-- 48
       0     4639        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4640        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4641        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4642        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4643        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     4644        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     4645        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4646        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     4647        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4658        M                                           #; (lsu) a4  <-- 10
       0     4659        M 0x80001a74 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4660        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 11 ~~> Word[0x80003574]
       0     4661        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 10, (wrb) a4  <-- 0x8000357e
       0     4662        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357e, 48 ~~> Byte[0x800035c6]
       0     4663        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4684        M                                           #; (lsu) a4  <-- 11
       0     4685        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4686        M 0x80001a8c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4687        M 0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4688        M 0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4689        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4690        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     4693        M 0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
       0     4698        M 0x80002140 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4699        M 0x80002144 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4700        M 0x80002148 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80002120
       0     4701        M 0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 5, (wrb) a0  <-- 0x0011fdfc
       0     4702        M 0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdfc, a0  <~~ Byte[0x0011fdfc]
       0     4703        M 0x80002128 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4704        M 0x8000212c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4705        M 0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     4706        M 0x80002134 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4707        M 0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4708        M 0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
       0     4709        M                                           #; (lsu) a0  <-- 48
       0     4711        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4712        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4713        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4714        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4715        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     4716        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     4717        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4718        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     4719        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4730        M                                           #; (lsu) a4  <-- 11
       0     4731        M 0x80001a74 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4732        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 12 ~~> Word[0x80003574]
       0     4733        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 11, (wrb) a4  <-- 0x8000357f
       0     4734        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357f, 48 ~~> Byte[0x800035c7]
       0     4735        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4756        M                                           #; (lsu) a4  <-- 12
       0     4757        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4758        M 0x80001a8c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4759        M 0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4760        M 0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4761        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4762        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     4765        M 0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
       0     4770        M 0x80002140 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4771        M 0x80002144 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4772        M 0x80002148 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80002120
       0     4773        M 0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 4, (wrb) a0  <-- 0x0011fdfb
       0     4774        M 0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdfb, a0  <~~ Byte[0x0011fdfb]
       0     4775        M 0x80002128 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4776        M 0x8000212c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4777        M 0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     4778        M 0x80002134 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4779        M 0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4780        M 0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
       0     4781        M                                           #; (lsu) a0  <-- 48
       0     4783        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4784        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4785        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4786        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4787        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     4788        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     4789        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4790        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     4791        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4802        M                                           #; (lsu) a4  <-- 12
       0     4803        M 0x80001a74 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4804        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 13 ~~> Word[0x80003574]
       0     4805        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 12, (wrb) a4  <-- 0x80003580
       0     4806        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003580, 48 ~~> Byte[0x800035c8]
       0     4807        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4828        M                                           #; (lsu) a4  <-- 13
       0     4829        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4830        M 0x80001a8c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4831        M 0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4832        M 0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4833        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4834        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     4837        M 0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
       0     4842        M 0x80002140 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4843        M 0x80002144 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4844        M 0x80002148 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80002120
       0     4845        M 0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 3, (wrb) a0  <-- 0x0011fdfa
       0     4846        M 0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdfa, a0  <~~ Byte[0x0011fdfa]
       0     4847        M 0x80002128 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4848        M 0x8000212c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4849        M 0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     4850        M 0x80002134 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4851        M 0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4852        M 0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
       0     4853        M                                           #; (lsu) a0  <-- 48
       0     4855        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4856        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4857        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4858        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4859        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     4860        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     4861        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4862        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     4863        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4874        M                                           #; (lsu) a4  <-- 13
       0     4875        M 0x80001a74 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4876        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 14 ~~> Word[0x80003574]
       0     4877        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 13, (wrb) a4  <-- 0x80003581
       0     4878        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003581, 48 ~~> Byte[0x800035c9]
       0     4879        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4900        M                                           #; (lsu) a4  <-- 14
       0     4901        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4902        M 0x80001a8c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4903        M 0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4904        M 0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4905        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4906        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     4909        M 0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
       0     4914        M 0x80002140 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4915        M 0x80002144 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4916        M 0x80002148 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80002120
       0     4917        M 0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 2, (wrb) a0  <-- 0x0011fdf9
       0     4918        M 0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdf9, a0  <~~ Byte[0x0011fdf9]
       0     4919        M 0x80002128 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4920        M 0x8000212c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4921        M 0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     4922        M 0x80002134 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4923        M 0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4924        M 0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
       0     4925        M                                           #; (lsu) a0  <-- 48
       0     4927        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4928        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4929        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4930        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4931        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     4932        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     4933        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4934        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     4935        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4946        M                                           #; (lsu) a4  <-- 14
       0     4947        M 0x80001a74 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4948        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 15 ~~> Word[0x80003574]
       0     4949        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 14, (wrb) a4  <-- 0x80003582
       0     4950        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003582, 48 ~~> Byte[0x800035ca]
       0     4951        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     4972        M                                           #; (lsu) a4  <-- 15
       0     4973        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4974        M 0x80001a8c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4975        M 0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4976        M 0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4977        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4978        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     4981        M 0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
       0     4986        M 0x80002140 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4987        M 0x80002144 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4988        M 0x80002148 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80002120
       0     4989        M 0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 1, (wrb) a0  <-- 0x0011fdf8
       0     4990        M 0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdf8, a0  <~~ Byte[0x0011fdf8]
       0     4991        M 0x80002128 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4992        M 0x8000212c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4993        M 0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     4994        M 0x80002134 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4995        M 0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4996        M 0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
       0     4997        M                                           #; (lsu) a0  <-- 48
       0     4999        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5000        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5001        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5002        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5003        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     5004        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     5005        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5006        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     5007        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     5018        M                                           #; (lsu) a4  <-- 15
       0     5019        M 0x80001a74 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5020        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 16 ~~> Word[0x80003574]
       0     5021        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 15, (wrb) a4  <-- 0x80003583
       0     5022        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003583, 48 ~~> Byte[0x800035cb]
       0     5023        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     5044        M                                           #; (lsu) a4  <-- 16
       0     5045        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5046        M 0x80001a8c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5047        M 0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5048        M 0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5049        M 0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5050        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
       0     5053        M 0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
       0     5058        M 0x80002140 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5059        M 0x80002144 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5060        M 0x80002148 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5061        M 0x8000214c j       pc + 0x8               #; goto 0x80002154
       0     5073        M 0x80002154 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5074        M 0x80002158 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5075        M 0x8000215c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5085        M 0x80002160 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5086        M 0x80002164 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5087        M 0x80002168 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002198
       0     5108        M 0x80002198 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5109        M 0x8000219c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5122        M 0x800021a0 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe18]
       0     5123        M 0x800021ac lw      s10, 64(sp)            #; sp  = 0x0011fdf0, s10 <~~ Word[0x0011fe30]
                         M 0x800021a4 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe20], (f:lsu) fs2  <-- 1824.9210000
       0     5124        M 0x800021a8 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe28], (f:lsu) fs1  <-- 1275.2460000
       0     5125        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5127        M                                           #; (lsu) s10 <-- 0x8000313e
       0     5132        M 0x800021b0 lw      s9, 68(sp)             #; sp  = 0x0011fdf0, s9  <~~ Word[0x0011fe34]
       0     5135        M                                           #; (lsu) s9  <-- 8
       0     5136        M 0x800021b4 lw      s8, 72(sp)             #; sp  = 0x0011fdf0, s8  <~~ Word[0x0011fe38]
       0     5139        M                                           #; (lsu) s8  <-- 16
       0     5140        M 0x800021b8 lw      s7, 76(sp)             #; sp  = 0x0011fdf0, s7  <~~ Word[0x0011fe3c]
       0     5143        M                                           #; (lsu) s7  <-- 0
       0     5144        M 0x800021bc lw      s6, 80(sp)             #; sp  = 0x0011fdf0, s6  <~~ Word[0x0011fe40]
       0     5147        M                                           #; (lsu) s6  <-- 0
       0     5148        M 0x800021c0 lw      s5, 84(sp)             #; sp  = 0x0011fdf0, s5  <~~ Word[0x0011fe44]
       0     5151        M                                           #; (lsu) s5  <-- -1
       0     5152        M 0x800021c4 lw      s4, 88(sp)             #; sp  = 0x0011fdf0, s4  <~~ Word[0x0011fe48]
       0     5155        M                                           #; (lsu) s4  <-- 0x0011fed7
       0     5156        M 0x800021c8 lw      s3, 92(sp)             #; sp  = 0x0011fdf0, s3  <~~ Word[0x0011fe4c]
       0     5159        M                                           #; (lsu) s3  <-- 0x0011fef0
       0     5160        M 0x800021cc lw      s2, 96(sp)             #; sp  = 0x0011fdf0, s2  <~~ Word[0x0011fe50]
       0     5163        M                                           #; (lsu) s2  <-- 0x80001a54
       0     5164        M 0x800021d0 lw      s1, 100(sp)            #; sp  = 0x0011fdf0, s1  <~~ Word[0x0011fe54]
       0     5167        M                                           #; (lsu) s1  <-- 8
       0     5168        M 0x800021d4 lw      s0, 104(sp)            #; sp  = 0x0011fdf0, s0  <~~ Word[0x0011fe58]
       0     5171        M                                           #; (lsu) s0  <-- 0
       0     5172        M 0x800021d8 lw      ra, 108(sp)            #; sp  = 0x0011fdf0, ra  <~~ Word[0x0011fe5c]
       0     5173        M 0x800021dc addi    sp, sp, 112            #; sp  = 0x0011fdf0, (wrb) sp  <-- 0x0011fe60
       0     5175        M                                           #; (lsu) ra  <-- 0x80001184
       0     5176        M 0x800021e0 ret                            #; ra  = 0x80001184, goto 0x80001184
       0     5188        M 0x80001184 j       pc + 0x7c0             #; goto 0x80001944
       0     5191        M 0x80001944 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5192        M 0x80001948 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5193        M 0x8000194c li      s7, 46                 #; (wrb) s7  <-- 46
       0     5203        M 0x80001950 addi    s0, s10, 1             #; s10 = 0x8000313e, (wrb) s0  <-- 0x8000313f
       0     5204        M 0x80001954 j       pc - 0xa74             #; goto 0x80000ee0
       0     5215        M 0x80000ee0 addi    s10, s0, 2             #; s0  = 0x8000313f, (wrb) s10 <-- 0x80003141
       0     5216        M 0x80000ee4 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5217        M 0x80000ee8 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5218        M 0x80000eec lbu     a0, 0(s0)              #; s0  = 0x8000313f, a0  <~~ Byte[0x8000313f]
       0     5229        M                                           #; (lsu) a0  <-- 10
       0     5230        M 0x80000ef0 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5231        M 0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5232        M 0x80000ef8 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5233        M 0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     5239        M 0x80000f00 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5240        M 0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5241        M 0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
       0     5253        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5254        M 0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5255        M 0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5256        M 0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5257        M 0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
       0     5258        M 0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
       0     5259        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5260        M 0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
       0     5261        M 0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     5272        M                                           #; (lsu) a4  <-- 16
       0     5273        M 0x80001a74 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5274        M 0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 17 ~~> Word[0x80003574]
       0     5275        M 0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 16, (wrb) a4  <-- 0x80003584
       0     5276        M 0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003584, 10 ~~> Byte[0x800035cc]
       0     5277        M 0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
       0     5298        M                                           #; (lsu) a4  <-- 17
       0     5299        M 0x80001a88 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5300        M 0x80001a8c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5301        M 0x80001a90 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5302        M 0x80001a94 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5303        M 0x80001a98 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5304        M 0x80001a9c bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5305        M 0x80001aa0 add     a0, a3, a2             #; a3  = 0x80003574, a2  = 0, (wrb) a0  <-- 0x80003574
       0     5306        M 0x80001aa4 addi    a2, a0, 72             #; a0  = 0x80003574, (wrb) a2  <-- 0x800035bc
       0     5307        M 0x80001aa8 sw      zero, 12(a0)           #; a0  = 0x80003574, 0 ~~> Word[0x80003580]
       0     5308        M 0x80001aac li      a3, 64                 #; (wrb) a3  <-- 64
       0     5317        M 0x80001ab0 sw      a3, 8(a0)              #; a0  = 0x80003574, 64 ~~> Word[0x8000357c]
       0     5318        M 0x80001ab4 sw      zero, 20(a0)           #; a0  = 0x80003574, 0 ~~> Word[0x80003588]
       0     5319        M 0x80001ab8 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5320        M 0x80001abc sw      a3, 16(a0)             #; a0  = 0x80003574, 1 ~~> Word[0x80003584]
       0     5329        M 0x80001ac0 sw      zero, 28(a0)           #; a0  = 0x80003574, 0 ~~> Word[0x80003590]
       0     5330        M 0x80001ac4 sw      a2, 24(a0)             #; a0  = 0x80003574, 0x800035bc ~~> Word[0x8000358c]
       0     5332        M 0x80001ac8 lw      a2, 0(a1)              #; a1  = 0x80003574, a2  <~~ Word[0x80003574]
       0     5333        M 0x80001acc addi    a3, a0, 8              #; a0  = 0x80003574, (wrb) a3  <-- 0x8000357c
       0     5342        M 0x80001ad0 sw      zero, 36(a0)           #; a0  = 0x80003574, 0 ~~> Word[0x80003598]
       0     5361        M                                           #; (lsu) a2  <-- 17
       0     5362        M 0x80001ad4 sw      a2, 32(a0)             #; a0  = 0x80003574, 17 ~~> Word[0x80003594]
       0     5363        M 0x80001ad8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003ad8
       0     5364        M 0x80001adc addi    a0, a0, -1880          #; a0  = 0x80003ad8, (wrb) a0  <-- 0x80003380
       0     5365        M 0x80001ae0 sw      a3, 0(a0)              #; a0  = 0x80003380, 0x8000357c ~~> Word[0x80003380]
       0     5366        M 0x80001ae4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003ae4
       0     5367        M 0x80001ae8 addi    a0, a0, -1828          #; a0  = 0x80003ae4, (wrb) a0  <-- 0x800033c0
       0     5368        M 0x80001aec lw      a2, 0(a0)              #; a0  = 0x800033c0, a2  <~~ Word[0x800033c0]
       0     5391        M                                           #; (lsu) a2  <-- 0
       0     5392        M 0x80001af0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001aec
       0     5393        M 0x80001aec lw      a2, 0(a0)              #; a0  = 0x800033c0, a2  <~~ Word[0x800033c0]
       0     5404        M                                           #; (lsu) a2  <-- 1
       0     5405        M 0x80001af0 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5406        M 0x80001af4 sw      zero, 0(a0)            #; a0  = 0x800033c0, 0 ~~> Word[0x800033c0]
       0     5407        M 0x80001af8 sw      zero, 0(a1)            #; a1  = 0x80003574, 0 ~~> Word[0x80003574]
       0     5408        M 0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
       0     5411        M 0x80000f0c addi    s0, s0, 1              #; s0  = 0x8000313f, (wrb) s0  <-- 0x80003140
       0     5414        M 0x80000f10 addi    s10, s10, 1            #; s10 = 0x80003141, (wrb) s10 <-- 0x80003142
       0     5415        M 0x80000f14 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5416        M 0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x80003140, a0  <~~ Byte[0x80003140]
       0     5429        M                                           #; (lsu) a0  <-- 0
       0     5430        M 0x80000f1c bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5442        M 0x80000f20 j       pc + 0xad8             #; goto 0x800019f8
       0     5454        M 0x800019f8 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5455        M 0x800019fc bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001a04
       0     5466        M 0x80001a04 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5467        M 0x80001a08 mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
       0     5468        M 0x80001a0c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5478        M 0x80001a10 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80001a14, goto 0x80001a54
       0     5492        M 0x80001a54 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001afc
       0     5497        M 0x80001afc ret                            #; ra  = 0x80001a14, goto 0x80001a14
       0     5498        M 0x80001a14 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5499        M 0x80001a18 lw      s11, 60(sp)            #; sp  = 0x0011fe60, s11 <~~ Word[0x0011fe9c]
       0     5502        M                                           #; (lsu) s11 <-- 0
       0     5503        M 0x80001a1c lw      s10, 64(sp)            #; sp  = 0x0011fe60, s10 <~~ Word[0x0011fea0]
       0     5506        M                                           #; (lsu) s10 <-- 0
       0     5507        M 0x80001a20 lw      s9, 68(sp)             #; sp  = 0x0011fe60, s9  <~~ Word[0x0011fea4]
       0     5510        M                                           #; (lsu) s9  <-- 0
       0     5511        M 0x80001a24 lw      s8, 72(sp)             #; sp  = 0x0011fe60, s8  <~~ Word[0x0011fea8]
       0     5514        M                                           #; (lsu) s8  <-- 0
       0     5515        M 0x80001a28 lw      s7, 76(sp)             #; sp  = 0x0011fe60, s7  <~~ Word[0x0011feac]
       0     5518        M                                           #; (lsu) s7  <-- 0
       0     5519        M 0x80001a2c lw      s6, 80(sp)             #; sp  = 0x0011fe60, s6  <~~ Word[0x0011feb0]
       0     5522        M                                           #; (lsu) s6  <-- 0
       0     5523        M 0x80001a30 lw      s5, 84(sp)             #; sp  = 0x0011fe60, s5  <~~ Word[0x0011feb4]
       0     5526        M                                           #; (lsu) s5  <-- 0
       0     5527        M 0x80001a34 lw      s4, 88(sp)             #; sp  = 0x0011fe60, s4  <~~ Word[0x0011feb8]
       0     5530        M                                           #; (lsu) s4  <-- 0
       0     5531        M 0x80001a38 lw      s3, 92(sp)             #; sp  = 0x0011fe60, s3  <~~ Word[0x0011febc]
       0     5534        M                                           #; (lsu) s3  <-- 0
       0     5535        M 0x80001a3c lw      s2, 96(sp)             #; sp  = 0x0011fe60, s2  <~~ Word[0x0011fec0]
       0     5538        M                                           #; (lsu) s2  <-- 0
       0     5539        M 0x80001a40 lw      s1, 100(sp)            #; sp  = 0x0011fe60, s1  <~~ Word[0x0011fec4]
       0     5542        M                                           #; (lsu) s1  <-- 0
       0     5543        M 0x80001a44 lw      s0, 104(sp)            #; sp  = 0x0011fe60, s0  <~~ Word[0x0011fec8]
       0     5546        M                                           #; (lsu) s0  <-- 0
       0     5547        M 0x80001a48 lw      ra, 108(sp)            #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fecc]
       0     5548        M 0x80001a4c addi    sp, sp, 112            #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fed0
       0     5550        M                                           #; (lsu) ra  <-- 0x80000e50
       0     5551        M 0x80001a50 ret                            #; ra  = 0x80000e50, goto 0x80000e50
       0     5563        M 0x80000e50 lw      ra, 12(sp)             #; sp  = 0x0011fed0, ra  <~~ Word[0x0011fedc]
       0     5564        M 0x80000e54 addi    sp, sp, 48             #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011ff00
       0     5566        M                                           #; (lsu) ra  <-- 0x80000dbc
       0     5567        M 0x80000e58 ret                            #; ra  = 0x80000dbc, goto 0x80000dbc
       0     5586        M 0x80000dbc auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002dbc
       0     5589        M 0x80000dc0 addi    a0, a0, 1796           #; a0  = 0x80002dbc, (wrb) a0  <-- 0x800034c0
       0     5592        M 0x80000dc4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800034c0]
       0     5601        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5602        M 0x80000dc8 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0     5604        M                                           #; (acc) s7  <-- 0x01813b87
                         M 0x80000dcc fld     fs9, 8(sp)             #; fs9  <~~ Doub[0x0011ff08]
       0     5605        M 0x80000dd0 fld     fs8, 16(sp)            #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
       0     5606        M 0x80000dd4 fld     fs7, 24(sp)            #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
       0     5607        M 0x80000dd8 fld     fs6, 32(sp)            #; fs6  <~~ Doub[0x0011ff20], (f:lsu) fs7  <-- 0.0
       0     5608        M 0x80000ddc fld     fs5, 40(sp)            #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
       0     5609        M 0x80000de0 fld     fs4, 48(sp)            #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
       0     5610        M 0x80000de4 fld     fs3, 56(sp)            #; fs3  <~~ Doub[0x0011ff38], (f:lsu) fs4  <-- 0.0
       0     5611        M 0x80000de8 fld     fs2, 64(sp)            #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
       0     5612        M 0x80000df4 lw      ra, 92(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff5c]
                         M 0x80000dec fld     fs1, 72(sp)            #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
       0     5613        M 0x80000df8 addi    sp, sp, 96             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff60
                         M 0x80000df0 fld     fs0, 80(sp)            #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
       0     5614        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5616        M                                           #; (lsu) ra  <-- 0x80002eb0
       0     5617        M 0x80000dfc ret                            #; ra  = 0x80002eb0, goto 0x80002eb0
       0     5634        M 0x80002eb0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5635        M 0x80002eb4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002eb4
       0     5636        M 0x80002eb8 jalr    ra, ra, 524            #; ra  = 0x80002eb4, (wrb) ra  <-- 0x80002ebc, goto 0x800030c0
       0     5648        M 0x800030c0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5649        M 0x800030c4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002ebc ~~> Word[0x0011ff5c]
       0     5650        M 0x800030c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030c8
       0     5651        M 0x800030cc jalr    ra, ra, -1260          #; ra  = 0x800030c8, (wrb) ra  <-- 0x800030d0, goto 0x80002bdc
       0     5654        M 0x80002bdc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5657        M 0x80002be0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5658        M 0x80002be4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5661        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5662        M 0x80002be8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5665        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5666        M 0x80002bec lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5667        M 0x80002bf0 ret                            #; ra  = 0x800030d0, goto 0x800030d0
       0     5669        M                                           #; (lsu) a0  <-- 0x00120190
       0     5670        M 0x800030d0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5680        M                                           #; (lsu) a0  <-- 0
       0     5681        M 0x800030d4 mv      zero, a0               #; a0  = 0
       0     5682        M 0x800030d8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5683        M 0x800030dc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5685        M                                           #; (lsu) ra  <-- 0x80002ebc
       0     5686        M 0x800030e0 ret                            #; ra  = 0x80002ebc, goto 0x80002ebc
       0     5700        M 0x80002ebc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5704        M 0x80002ec0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ec0
       0     5705        M 0x80002ec4 jalr    ra, ra, 556            #; ra  = 0x80002ec0, (wrb) ra  <-- 0x80002ec8, goto 0x800030ec
       0     5706        M 0x800030ec addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5707        M 0x800030f0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5708        M 0x800030f4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002ec8 ~~> Word[0x0011ff5c]
       0     5709        M 0x800030f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030f8
       0     5710        M 0x800030fc jalr    ra, ra, -1340          #; ra  = 0x800030f8, (wrb) ra  <-- 0x80003100, goto 0x80002bbc
       0     5721        M 0x80002bbc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5725        M 0x80002bc0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5726        M 0x80002bc4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5729        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5730        M 0x80002bc8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5733        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5734        M 0x80002bcc lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5735        M 0x80002bd0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5737        M                                           #; (lsu) a0  <-- 0
       0     5738        M 0x80002bd4 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5739        M 0x80002bd8 ret                            #; ra  = 0x80003100, goto 0x80003100
       0     5740        M 0x80003100 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5743        M                                           #; (lsu) t0  <-- 0
       0     5744        M 0x80003104 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5745        M 0x80003108 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5746        M 0x8000310c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5747        M                                           #; (lsu) ra  <-- 0x80002ec8
       0     5751        M 0x80003110 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5752        M 0x80003114 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5753        M 0x80003118 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003118
       0     5754        M 0x8000311c addi    t1, t1, 616            #; t1  = 0x80003118, (wrb) t1  <-- 0x80003380
       0     5762        M 0x80003120 sw      t0, 0(t1)              #; t1  = 0x80003380, 1 ~~> Word[0x80003380]
       0     5763        M 0x80003124 ret                            #; ra  = 0x80002ec8, goto 0x80002ec8
       0     5776        M 0x80002ec8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5776):
snitch_loads                                   135
snitch_stores                                  142
fpss_stores                                     14
fpss_loads                                      78
snitch_avg_load_latency                    12.0148
snitch_occupancy                            0.2208
snitch_fseq_rel_offloads                    0.1530
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.7941
fpss_avg_load_latency                       4.6923
fpss_occupancy                              0.0399
fpss_fpu_occupancy                          0.0236
fpss_fpu_rel_occupancy                      0.5913
cycles                                        5765
total_ipc                                   0.2607
