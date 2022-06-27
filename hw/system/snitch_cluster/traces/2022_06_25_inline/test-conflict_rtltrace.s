       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002c40
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002c40, (wrb) ra  <-- 4120, goto 0x80002c40
       0      269        M 0x80002c40 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003c40
       0      270        M 0x80002c44 addi    gp, gp, -248           #; gp  = 0x80003c40, (wrb) gp  <-- 0x80003b48
       0      271        M 0x80002c48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c48
       0      272        M 0x80002c4c jalr    ra, ra, 964            #; ra  = 0x80002c48, (wrb) ra  <-- 0x80002c50, goto 0x8000300c
       0      292        M 0x8000300c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80003010 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80003014 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80003018 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x8000301c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80003020 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80003024 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80003028 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x8000302c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80003030 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80003034 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80003038 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x8000303c ret                            #; ra  = 0x80002c50, goto 0x80002c50
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002c50 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002c54 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002c58 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c58
       0      508        M 0x80002c5c jalr    ra, ra, 1036           #; ra  = 0x80002c58, (wrb) ra  <-- 0x80002c60, goto 0x80003064
       0      523        M 0x80003064 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80003068 ret                            #; ra  = 0x80002c60, goto 0x80002c60
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002c60 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002c64 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002c68 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x80002c6c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002c70 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002c74 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002c74
       0      551        M 0x80002c78 addi    t0, t0, 2044           #; t0  = 0x80002c74, (wrb) t0  <-- 0x80003470
       0      552        M 0x80002c7c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c7c
       0      562        M 0x80002c80 addi    t1, t1, 2040           #; t1  = 0x80002c7c, (wrb) t1  <-- 0x80003474
       0      563        M 0x80002c84 bge     t0, t1, pc + 16        #; t0  = 0x80003470, t1  = 0x80003474, not taken
       0      564        M 0x80002c88 sw      zero, 0(t0)            #; t0  = 0x80003470, 0 ~~> Word[0x80003470]
       0      565        M 0x80002c8c addi    t0, t0, 4              #; t0  = 0x80003470, (wrb) t0  <-- 0x80003474
       0      573        M 0x80002c90 blt     t0, t1, pc - 8         #; t0  = 0x80003474, t1  = 0x80003474, not taken
       0      574        M 0x80002c94 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002c98 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x80002c9c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002ca0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002ca4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002ca8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x80002cac fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002cb0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002cb4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002cb8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x80002cbc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002cc0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002cc4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002cc8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002ccc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002cd0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002cd4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002cd8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002cdc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002ce0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002ce4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002ce8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002cec fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002cf0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002cf4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002cf8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002cfc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002d00 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002d04 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002d08 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002d0c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002d10 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002d14 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002d18 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002d1c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002d20 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002d24 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002d28 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d28
       0      684        M 0x80002d2c lw      t0, 900(t0)            #; t0  = 0x80002d28, t0  <~~ Word[0x800030ac]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002d30 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002d34 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002d38 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002d38
       0      708        M 0x80002d3c lw      t2, 880(t2)            #; t2  = 0x80002d38, t2  <~~ Word[0x800030a8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002d40 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002d44 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002d48 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002d4c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002d50 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002d54 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002d58 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002d5c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002d60 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d60
       0      762        M 0x80002d64 addi    t0, t0, 1512           #; t0  = 0x80002d60, (wrb) t0  <-- 0x80003348
       0      763        M 0x80002d68 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d68
       0      764        M 0x80002d6c addi    t1, t1, 1504           #; t1  = 0x80002d68, (wrb) t1  <-- 0x80003348
       0      775        M 0x80002d70 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002d70
       0      776        M 0x80002d74 addi    t2, t2, 1496           #; t2  = 0x80002d70, (wrb) t2  <-- 0x80003348
       0      777        M 0x80002d78 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002d78
       0      778        M 0x80002d7c addi    t3, t3, 1504           #; t3  = 0x80002d78, (wrb) t3  <-- 0x80003358
       0      787        M 0x80002d80 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003348, (wrb) sp  <-- 0x801232b8
       0      788        M 0x80002d84 sub     sp, sp, t1             #; sp  = 0x801232b8, t1  = 0x80003348, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002d88 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003348, (wrb) sp  <-- 0x801232b8
       0      790        M 0x80002d8c sub     sp, sp, t3             #; sp  = 0x801232b8, t3  = 0x80003358, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002d90 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002d94 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002d98 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002d9c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002da0 bge     t0, t1, pc + 24        #; t0  = 0x80003348, t1  = 0x80003348, taken, goto 0x80002db8
       0      823        M 0x80002db8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002db8
       0      824        M 0x80002dbc addi    t0, t0, 1424           #; t0  = 0x80002db8, (wrb) t0  <-- 0x80003348
       0      835        M 0x80002dc0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002dc0
       0      836        M 0x80002dc4 addi    t1, t1, 1432           #; t1  = 0x80002dc0, (wrb) t1  <-- 0x80003358
       0      837        M 0x80002dc8 bge     t0, t1, pc + 20        #; t0  = 0x80003348, t1  = 0x80003358, not taken
       0      838        M 0x80002dcc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002dd0 addi    t0, t0, 4              #; t0  = 0x80003348, (wrb) t0  <-- 0x8000334c
       0      848        M 0x80002dd4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002dd8 blt     t0, t2, pc - 12        #; t0  = 0x8000334c, t2  = 0x80003348, not taken
       0      850        M 0x80002ddc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002de0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002de4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002de8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002dec sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002df0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002df4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002df4
       0      877        M 0x80002df8 jalr    ra, ra, -1064          #; ra  = 0x80002df4, (wrb) ra  <-- 0x80002dfc, goto 0x800029cc
       0      899        M 0x800029cc sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      912        M 0x800029d0 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      913        M 0x800029d4 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      931        M                                           #; (lsu) t1  <-- 0
       0      932        M 0x800029d8 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      933        M 0x800029dc lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      971        M                                           #; (lsu) a6  <-- 1
       0      972        M 0x800029e0 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1011        M                                           #; (lsu) a7  <-- 1
       0     1012        M 0x800029e4 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1013        M 0x800029e8 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1016        M                                           #; (acc) a0  <-- 0x02580533
       0     1040        M                                           #; (lsu) t0  <-- 8
       0     1041        M 0x800029ec mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1044        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1045        M 0x800029f0 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1046        M 0x800029f4 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1047        M 0x800029f8 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1048        M 0x800029fc divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M 0x80002a00 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1055        M 0x80002a04 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1056        M 0x80002a08 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1057        M 0x80002a0c sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1067        M 0x80002a10 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1068        M 0x80002a14 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x80002a18 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x80002a1c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x80002a20 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80002a24 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80002a28 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x80002a2c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1180        M                                           #; (lsu) a1  <-- 1
       0     1181        M 0x80002a30 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1182        M 0x80002a34 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1183        M 0x80002a38 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1184        M 0x80002a3c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1185        M 0x80002a40 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1186        M 0x80002a44 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1201        M                                           #; (lsu) a0  <-- 0x00020000
       0     1202        M 0x80002a48 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1203        M 0x80002a4c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1204        M 0x80002a50 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80002a54 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1206        M 0x80002a58 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1207        M 0x80002a5c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1215        M 0x80002a60 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80002a64 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1217        M 0x80002a68 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1218        M 0x80002a6c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1228        M 0x80002a70 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1229        M 0x80002a74 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x80002a78 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80002a7c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x80002a80 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1241        M 0x80002a84 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1244        M 0x80002a88 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1245        M 0x80002a8c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1252        M 0x80002a90 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1253        M 0x80002a94 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1254        M 0x80002a98 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x80002a9c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x80002aa0 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x80002aa4 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1267        M                                           #; (lsu) a0  <-- 8
       0     1268        M 0x80002aa8 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1269        M 0x80002aac lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x80002ab0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M 0x80002ab4 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1278        M 0x80002ab8 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80002abc mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1288        M 0x80002ac0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003ac0
       0     1289        M 0x80002ac4 addi    a1, a1, -1612          #; a1  = 0x80003ac0, (wrb) a1  <-- 0x80003474
       0     1290        M 0x80002ac8 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003474, (wrb) a0  <-- 0x80003474
       0     1291        M 0x80002acc sw      zero, 0(a0)            #; a0  = 0x80003474, 0 ~~> Word[0x80003474]
       0     1300        M 0x80002ad0 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1367        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1368        M 0x80002ad4 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1369        M 0x80002ad8 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1370        M 0x80002adc sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1371        M 0x80002ae0 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1372        M 0x80002ae4 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1373        M 0x80002ae8 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1374        M 0x80002aec andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1375        M 0x80002af0 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1376        M 0x80002af4 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1377        M 0x80002af8 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1378        M 0x80002afc sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1379        M 0x80002b00 lw      a0, 0(a1)              #; a1  = 0x80003474, a0  <~~ Word[0x80003474]
       0     1390        M                                           #; (lsu) a0  <-- 0
       0     1391        M 0x80002b04 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1392        M 0x80002b08 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1393        M 0x80002b0c sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1394        M 0x80002b10 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1395        M 0x80002b14 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1396        M 0x80002b18 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1397        M 0x80002b1c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1398        M 0x80002b20 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x80002b24 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x80002b28 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x80002b2c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1406        M 0x80002b30 ret                            #; ra  = 0x80002dfc, goto 0x80002dfc
       0     1421        M 0x80002dfc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1424        M                                           #; (lsu) a0  <-- 0
       0     1425        M 0x80002e00 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1428        M                                           #; (lsu) a1  <-- 8
       0     1429        M 0x80002e04 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1432        M                                           #; (lsu) a2  <-- 0x00100000
       0     1433        M 0x80002e08 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1436        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1437        M 0x80002e0c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1438        M 0x80002e10 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1439        M 0x80002e14 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002e14
       0     1440        M 0x80002e18 addi    t0, t0, 60             #; t0  = 0x80002e14, (wrb) t0  <-- 0x80002e50
       0     1441        M 0x80002e1c csrw    mtvec, t0              #; t0  = 0x80002e50, (lsu) a4  <-- 4132
       0     1449        M 0x80002e20 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e20
       0     1450        M 0x80002e24 jalr    ra, ra, 544            #; ra  = 0x80002e20, (wrb) ra  <-- 0x80002e28, goto 0x80003040
       0     1466        M 0x80003040 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1467        M 0x80003044 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e28 ~~> Word[0x0011ff5c]
       0     1468        M 0x80003048 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003048
       0     1469        M 0x8000304c jalr    ra, ra, -1268          #; ra  = 0x80003048, (wrb) ra  <-- 0x80003050, goto 0x80002b54
       0     1487        M 0x80002b54 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1488        M 0x80002b58 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1489        M 0x80002b5c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1492        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1499        M 0x80002b60 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1503        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1504        M 0x80002b64 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1505        M 0x80002b68 ret                            #; ra  = 0x80003050, goto 0x80003050
       0     1507        M                                           #; (lsu) a0  <-- 0x00120190
       0     1508        M 0x80003050 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1537        M                                           #; (lsu) a0  <-- 0
       0     1538        M 0x80003054 mv      zero, a0               #; a0  = 0
       0     1539        M 0x80003058 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1540        M 0x8000305c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1542        M                                           #; (lsu) ra  <-- 0x80002e28
       0     1543        M 0x80003060 ret                            #; ra  = 0x80002e28, goto 0x80002e28
       0     1547        M 0x80002e28 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000e28
       0     1548        M 0x80002e2c jalr    ra, ra, -2036          #; ra  = 0x80000e28, (wrb) ra  <-- 0x80002e30, goto 0x80000634
       0     1553        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1554        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002e30 ~~> Word[0x0011ff5c]
       0     1555        M 0x8000063c sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1556        M 0x80000640 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
       0     1557        M 0x80000644 sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
       0     1559        M 0x8000064c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1560        M 0x80000648 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     1569        M 0x80000650 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1570        M 0x80000654 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1571        M 0x80000658 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1573        M                                           #; (lsu) a1  <-- 0
       0     1574        M 0x8000065c bnez    a1, pc + 1772          #; a1  = 0, not taken
       0     1581        M 0x80000660 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1582        M 0x80000664 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1583        M 0x80000668 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1586        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1587        M 0x8000066c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1590        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1597        M 0x80000670 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1600        M                                           #; (lsu) s0  <-- 0x00100000
       0     1601        M 0x80000674 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1604        M                                           #; (lsu) a1  <-- 0x00100000
       0     1605        M 0x80000678 lw      a2, 84(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc4]
       0     1606        M 0x8000067c addi    a3, s0, 80             #; s0  = 0x00100000, (wrb) a3  <-- 0x00100050
       0     1608        M                                           #; (lsu) a2  <-- 0x0001df30
       0     1610        M 0x80000680 add     a1, a2, a1             #; a2  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1611        M 0x80000684 bgeu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x00100050, taken, goto 0x800006b0
       0     1636        M 0x800006b0 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1637        M 0x800006b4 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1638        M 0x800006b8 addi    a2, s0, 160            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000a0
       0     1639        M 0x800006bc mv      s0, a3                 #; a3  = 0x00100050, (wrb) s0  <-- 0x00100050
       0     1662        M 0x800006c0 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x001000a0, taken, goto 0x80000694
       0     1663        M 0x80000694 mv      s1, s0                 #; s0  = 0x00100050, (wrb) s1  <-- 0x00100050
       0     1664        M 0x80000698 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1665        M 0x8000069c addi    a3, a2, 80             #; a2  = 0x001000a0, (wrb) a3  <-- 0x001000f0
       0     1675        M 0x800006a0 mv      s0, a2                 #; a2  = 0x001000a0, (wrb) s0  <-- 0x001000a0
       0     1676        M 0x800006a4 bltu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x001000f0, not taken
       0     1677        M 0x800006a8 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1678        M 0x800006ac j       pc + 0x28              #; goto 0x800006d4
       0     1687        M 0x800006d4 srli    a0, s2, 20             #; s2  = 0x00100000, (wrb) a0  <-- 1
       0     1688        M 0x800006d8 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     1689        M 0x800006dc lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     1699        M 0x800006e0 addi    a1, a1, -71            #; a1  = 0x00120000, (wrb) a1  <-- 0x0011ffb9
       0     1700        M 0x800006e4 sltu    a1, s2, a1             #; s2  = 0x00100000, a1  = 0x0011ffb9, (wrb) a1  <-- 1
       0     1701        M 0x800006e8 and     a2, a0, a1             #; a0  = 1, a1  = 1, (wrb) a2  <-- 1
       0     1702        M 0x800006ec auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036ec
       0     1711        M 0x800006f0 addi    a3, a3, -908           #; a3  = 0x800036ec, (wrb) a3  <-- 0x80003360
       0     1712        M 0x800006f4 auipc   t5, 0x3                #; (wrb) t5  <-- 0x800036f4
       0     1713        M 0x800006f8 addi    t5, t5, -908           #; t5  = 0x800036f4, (wrb) t5  <-- 0x80003368
       0     1714        M 0x800006fc auipc   t4, 0x3                #; (wrb) t4  <-- 0x800036fc
       0     1723        M 0x80000700 addi    t4, t4, -908           #; t4  = 0x800036fc, (wrb) t4  <-- 0x80003370
       0     1724        M 0x80000704 auipc   t3, 0x3                #; (wrb) t3  <-- 0x80003704
       0     1725        M 0x80000708 addi    t3, t3, -908           #; t3  = 0x80003704, (wrb) t3  <-- 0x80003378
       0     1726        M 0x8000070c auipc   t2, 0x3                #; (wrb) t2  <-- 0x8000370c
       0     1735        M 0x80000710 addi    t2, t2, -908           #; t2  = 0x8000370c, (wrb) t2  <-- 0x80003380
       0     1736        M 0x80000714 auipc   t1, 0x3                #; (wrb) t1  <-- 0x80003714
       0     1737        M 0x80000718 addi    t1, t1, -908           #; t1  = 0x80003714, (wrb) t1  <-- 0x80003388
       0     1738        M 0x8000071c auipc   t0, 0x3                #; (wrb) t0  <-- 0x8000371c
       0     1747        M 0x80000720 addi    t0, t0, -908           #; t0  = 0x8000371c, (wrb) t0  <-- 0x80003390
       0     1748        M 0x80000724 auipc   a7, 0x3                #; (wrb) a7  <-- 0x80003724
       0     1749        M 0x80000728 addi    a7, a7, -908           #; a7  = 0x80003724, (wrb) a7  <-- 0x80003398
       0     1750        M 0x8000072c auipc   a6, 0x3                #; (wrb) a6  <-- 0x8000372c
       0     1759        M 0x80000730 addi    a6, a6, -908           #; a6  = 0x8000372c, (wrb) a6  <-- 0x800033a0
       0     1760        M 0x80000734 beqz    a2, pc + 140           #; a2  = 1, not taken
       0     1761        M 0x80000738 li      a0, 8                  #; (wrb) a0  <-- 8
       0     1762        M 0x8000073c li      a2, 9                  #; (wrb) a2  <-- 9
       0     1771        M 0x80000740 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1772        M 0x80000744 li      a5, 192                #; (wrb) a5  <-- 192
       0     1773        M 0x80000748 scfgw   a2, a4                 #; a2  = 9, a4  = 64
       0     1774        M 0x8000074c scfgw   a0, a5                 #; a0  = 8, a5  = 192
       0     1783        M 0x80000750 li      a0, 32                 #; (wrb) a0  <-- 32
       0     1784        M 0x80000754 scfgw   zero, a0               #; a0  = 32
       0     1785        M 0x80000758 scfgwi  s2, 896                #; s2  = 0x00100000
       0     1786        M 0x8000075c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000375c
       0     1795        M 0x80000760 addi    a0, a0, -1028          #; a0  = 0x8000375c, (wrb) a0  <-- 0x80003358
       0     1798        M 0x80000764 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003358]
       0     1799        M 0x80000768 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x80003360]
       0     1800        M 0x8000076c csrrsi  a0, ssr, 1             #; 
       0     1807        M                                           #; (f:lsu) ft3  <-- 1.4142
       0     1808        M                                           #; (f:lsu) ft4  <-- 2.8284
       0     1809        M 0x80000770 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.4142, ft3  = 1.4142
       0     1810        M 0x80000774 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284, (f:fpu) ft0  <-- 1.4142
       0     1811        M 0x80000778 fld     ft3, 0(t5)             #; ft3  <~~ Doub[0x80003368], (f:fpu) ft0  <-- 2.8284
       0     1812        M 0x8000077c fld     ft4, 0(t4)             #; ft4  <~~ Doub[0x80003370]
       0     1820        M                                           #; (f:lsu) ft3  <-- 4.2426000
       0     1821        M 0x80000780 fld     ft5, 0(t3)             #; ft5  <~~ Doub[0x80003378], (f:lsu) ft4  <-- 5.6568
       0     1822        M 0x80000784 fld     ft6, 0(t2)             #; ft6  <~~ Doub[0x80003380]
       0     1823        M 0x80000788 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.2426000, ft3  = 4.2426000
       0     1824        M 0x8000078c fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568, (f:fpu) ft0  <-- 4.2426000
       0     1825        M                                           #; (f:fpu) ft0  <-- 5.6568
       0     1830        M                                           #; (f:lsu) ft5  <-- 7.071
       0     1831        M                                           #; (f:lsu) ft6  <-- 8.4852000
       0     1833        M 0x80000790 fsgnj.d ft0, ft5, ft5          #; ft5  = 7.071, ft5  = 7.071
       0     1834        M 0x80000794 fsgnj.d ft0, ft6, ft6          #; ft6  = 8.4852000, ft6  = 8.4852000, (f:fpu) ft0  <-- 7.071
       0     1835        M 0x80000798 fld     ft3, 0(t1)             #; ft3  <~~ Doub[0x80003388], (f:fpu) ft0  <-- 8.4852000
       0     1836        M 0x8000079c fld     ft4, 0(t0)             #; ft4  <~~ Doub[0x80003390]
       0     1844        M                                           #; (f:lsu) ft3  <-- 9.8994
       0     1845        M 0x800007a0 fld     ft5, 0(a7)             #; ft5  <~~ Doub[0x80003398], (f:lsu) ft4  <-- 11.3136
       0     1846        M 0x800007a4 fld     ft6, 0(a6)             #; ft6  <~~ Doub[0x800033a0]
       0     1847        M 0x800007a8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.8994, ft3  = 9.8994
       0     1848        M 0x800007ac fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136, (f:fpu) ft0  <-- 9.8994
       0     1849        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     1854        M                                           #; (f:lsu) ft5  <-- 12.7278000
       0     1855        M                                           #; (f:lsu) ft6  <-- 14.142
       0     1857        M 0x800007b0 fsgnj.d ft0, ft5, ft5          #; ft5  = 12.7278000, ft5  = 12.7278000
       0     1858        M 0x800007bc j       pc + 0xcc              #; goto 0x80000888
                         M 0x800007b4 fsgnj.d ft0, ft6, ft6          #; ft6  = 14.142, ft6  = 14.142, (f:fpu) ft0  <-- 12.7278000
       0     1859        M 0x800007b8 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 14.142
       0     1867        M 0x80000888 srli    a0, s1, 20             #; s1  = 0x00100050, (wrb) a0  <-- 1
       0     1868        M 0x8000088c snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     1879        M 0x80000890 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1880        M 0x80000894 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1881        M 0x80000898 sltu    a2, s1, a2             #; s1  = 0x00100050, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1882        M 0x8000089c and     a0, a0, a2             #; a0  = 1, a2  = 1, (wrb) a0  <-- 1
       0     1891        M 0x800008a0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038a0
       0     1892        M 0x800008a4 addi    a2, a2, -1272          #; a2  = 0x800038a0, (wrb) a2  <-- 0x800033a8
       0     1893        M 0x800008a8 beqz    a0, pc + 132           #; a0  = 1, not taken
       0     1894        M 0x800008ac li      a0, 8                  #; (wrb) a0  <-- 8
       0     1903        M 0x800008b0 li      a4, 9                  #; (wrb) a4  <-- 9
       0     1904        M 0x800008b4 li      a5, 64                 #; (wrb) a5  <-- 64
       0     1905        M 0x800008b8 li      a1, 192                #; (wrb) a1  <-- 192
       0     1906        M 0x800008bc scfgw   a4, a5                 #; a4  = 9, a5  = 64
       0     1915        M 0x800008c0 scfgw   a0, a1                 #; a0  = 8, a1  = 192
       0     1916        M 0x800008c4 li      a0, 32                 #; (wrb) a0  <-- 32
       0     1917        M 0x800008c8 scfgw   zero, a0               #; a0  = 32
       0     1918        M 0x800008cc scfgwi  s1, 896                #; s1  = 0x00100050
       0     1929        M 0x800008d0 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80003360]
       0     1930        M 0x800008d4 fld     ft4, 0(t5)             #; ft4  <~~ Doub[0x80003368]
       0     1931        M 0x800008d8 csrrsi  a0, ssr, 1             #; 
       0     1938        M                                           #; (f:lsu) ft3  <-- 2.8284
       0     1939        M 0x800008dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.8284, ft3  = 2.8284, (f:lsu) ft4  <-- 4.2426000
       0     1940        M                                           #; (f:fpu) ft0  <-- 2.8284
       0     1941        M 0x800008e0 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     1942        M 0x800008e4 fld     ft3, 0(t4)             #; ft3  <~~ Doub[0x80003370], (f:fpu) ft0  <-- 4.2426000
       0     1943        M 0x800008e8 fld     ft4, 0(t3)             #; ft4  <~~ Doub[0x80003378]
       0     1951        M                                           #; (f:lsu) ft3  <-- 5.6568
       0     1952        M 0x800008ec fld     ft5, 0(t2)             #; ft5  <~~ Doub[0x80003380], (f:lsu) ft4  <-- 7.071
       0     1953        M 0x800008f0 fld     ft6, 0(t1)             #; ft6  <~~ Doub[0x80003388]
       0     1954        M 0x800008f4 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.6568, ft3  = 5.6568
       0     1955        M 0x800008f8 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071, (f:fpu) ft0  <-- 5.6568
       0     1956        M                                           #; (f:fpu) ft0  <-- 7.071
       0     1961        M                                           #; (f:lsu) ft5  <-- 8.4852000
       0     1962        M 0x800008fc fsgnj.d ft0, ft5, ft5          #; ft5  = 8.4852000, ft5  = 8.4852000, (f:lsu) ft6  <-- 9.8994
       0     1963        M                                           #; (f:fpu) ft0  <-- 8.4852000
       0     1965        M 0x80000900 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.8994, ft6  = 9.8994
       0     1966        M 0x80000904 fld     ft3, 0(t0)             #; ft3  <~~ Doub[0x80003390], (f:fpu) ft0  <-- 9.8994
       0     1967        M 0x80000908 fld     ft4, 0(a7)             #; ft4  <~~ Doub[0x80003398]
       0     1975        M                                           #; (f:lsu) ft3  <-- 11.3136
       0     1976        M 0x8000090c fld     ft5, 0(a6)             #; ft5  <~~ Doub[0x800033a0], (f:lsu) ft4  <-- 12.7278000
       0     1977        M 0x80000910 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800033a8]
       0     1978        M 0x80000914 fsgnj.d ft0, ft3, ft3          #; ft3  = 11.3136, ft3  = 11.3136
       0     1979        M 0x80000918 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000, (f:fpu) ft0  <-- 11.3136
       0     1980        M                                           #; (f:fpu) ft0  <-- 12.7278000
       0     1985        M                                           #; (f:lsu) ft5  <-- 14.142
       0     1986        M 0x8000091c fsgnj.d ft0, ft5, ft5          #; ft5  = 14.142, ft5  = 14.142, (f:lsu) ft6  <-- 15.5562000
       0     1987        M                                           #; (f:fpu) ft0  <-- 14.142
       0     1989        M 0x80000928 j       pc + 0xd4              #; goto 0x800009fc
                         M 0x80000920 fsgnj.d ft0, ft6, ft6          #; ft6  = 15.5562000, ft6  = 15.5562000
       0     1990        M 0x80000924 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 15.5562000
       0     1999        M 0x800009fc srli    a0, s0, 20             #; s0  = 0x001000a0, (wrb) a0  <-- 1
       0     2011        M 0x80000a00 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     2012        M 0x80000a04 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     2013        M 0x80000a08 addi    a1, a1, -71            #; a1  = 0x00120000, (wrb) a1  <-- 0x0011ffb9
       0     2014        M 0x80000a0c sltu    a1, s0, a1             #; s0  = 0x001000a0, a1  = 0x0011ffb9, (wrb) a1  <-- 1
       0     2023        M 0x80000a10 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     2024        M 0x80000a14 beqz    a0, pc + 140           #; a0  = 1, not taken
       0     2025        M 0x80000a18 li      a0, 8                  #; (wrb) a0  <-- 8
       0     2026        M 0x80000a1c li      a1, 9                  #; (wrb) a1  <-- 9
       0     2035        M 0x80000a20 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2036        M 0x80000a24 li      a4, 192                #; (wrb) a4  <-- 192
       0     2037        M 0x80000a28 scfgw   a1, a3                 #; a1  = 9, a3  = 64
       0     2038        M 0x80000a2c scfgw   a0, a4                 #; a0  = 8, a4  = 192
       0     2047        M 0x80000a30 li      a0, 32                 #; (wrb) a0  <-- 32
       0     2048        M 0x80000a34 scfgw   zero, a0               #; a0  = 32
       0     2049        M 0x80000a38 scfgwi  s0, 896                #; s0  = 0x001000a0
       0     2052        M 0x80000a3c fld     ft3, 0(t5)             #; ft3  <~~ Doub[0x80003368]
       0     2061        M 0x80000a40 fld     ft4, 0(t4)             #; ft4  <~~ Doub[0x80003370], (f:lsu) ft3  <-- 4.2426000
       0     2062        M 0x80000a44 csrrsi  a0, ssr, 1             #; 
       0     2064        M 0x80000a48 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.2426000, ft3  = 4.2426000
       0     2065        M                                           #; (f:fpu) ft0  <-- 4.2426000
       0     2070        M                                           #; (f:lsu) ft4  <-- 5.6568
       0     2071        M 0x80000a4c fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     2072        M                                           #; (f:fpu) ft0  <-- 5.6568
       0     2073        M 0x80000a50 fld     ft3, 0(t3)             #; ft3  <~~ Doub[0x80003378]
       0     2074        M 0x80000a54 fld     ft4, 0(t2)             #; ft4  <~~ Doub[0x80003380]
       0     2082        M                                           #; (f:lsu) ft3  <-- 7.071
       0     2083        M 0x80000a58 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x80003388], (f:lsu) ft4  <-- 8.4852000
       0     2084        M 0x80000a5c fld     ft6, 0(t0)             #; ft6  <~~ Doub[0x80003390]
       0     2085        M 0x80000a60 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.071, ft3  = 7.071
       0     2086        M 0x80000a64 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000, (f:fpu) ft0  <-- 7.071
       0     2087        M                                           #; (f:fpu) ft0  <-- 8.4852000
       0     2092        M                                           #; (f:lsu) ft5  <-- 9.8994
       0     2093        M 0x80000a68 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.8994, ft5  = 9.8994, (f:lsu) ft6  <-- 11.3136
       0     2094        M 0x80000a6c fsgnj.d ft0, ft6, ft6          #; ft6  = 11.3136, ft6  = 11.3136, (f:fpu) ft0  <-- 9.8994
       0     2095        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     2097        M 0x80000a70 fld     ft3, 0(a7)             #; ft3  <~~ Doub[0x80003398]
       0     2098        M 0x80000a7c auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003a7c
                         M 0x80000a74 fld     ft4, 0(a6)             #; ft4  <~~ Doub[0x800033a0]
       0     2106        M                                           #; (f:lsu) ft3  <-- 12.7278000
       0     2107        M 0x80000a80 addi    a0, a0, -1740          #; a0  = 0x80003a7c, (wrb) a0  <-- 0x800033b0
                         M 0x80000a78 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800033a8], (f:lsu) ft4  <-- 14.142
       0     2110        M 0x80000a84 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x800033b0]
       0     2111        M 0x80000a88 fsgnj.d ft0, ft3, ft3          #; ft3  = 12.7278000, ft3  = 12.7278000
       0     2112        M 0x80000a8c fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142, (f:fpu) ft0  <-- 12.7278000
       0     2113        M                                           #; (f:fpu) ft0  <-- 14.142
       0     2116        M                                           #; (f:lsu) ft5  <-- 15.5562000
       0     2119        M                                           #; (f:lsu) ft6  <-- 16.9704000
       0     2121        M 0x80000a90 fsgnj.d ft0, ft5, ft5          #; ft5  = 15.5562000, ft5  = 15.5562000
       0     2122        M 0x80000a9c j       pc + 0xd4              #; goto 0x80000b70
                         M 0x80000a94 fsgnj.d ft0, ft6, ft6          #; ft6  = 16.9704000, ft6  = 16.9704000, (f:fpu) ft0  <-- 15.5562000
       0     2123        M 0x80000a98 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 16.9704000
       0     2131        M 0x80000b70 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2132        M 0x80000b74 li      a1, 0                  #; (wrb) a1  <-- 0
       0     2133        M 0x80000b78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b78
       0     2134        M 0x80000b7c jalr    ra, ra, 492            #; ra  = 0x80000b78, (wrb) ra  <-- 0x80000b80, goto 0x80000d64
       0     2145        M 0x80000d64 slli    a1, a1, 3              #; a1  = 0, (wrb) a1  <-- 0
       0     2146        M 0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 0, (wrb) a0  <-- 0x001000a0
       0     2147        M 0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a4]
       0     2148        M 0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a0]
       0     2149        M 0x80000d74 ret                            #; ra  = 0x80000b80, goto 0x80000b80
       0     2152        M 0x80000b80 fld     ft3, 0(s2)             #; ft3  <~~ Doub[0x00100000]
       0     2153        M 0x80000b84 fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 1.4142
       0     2154        M 0x80000b88 fld     ft5, 0(s0)             #; ft5  <~~ Doub[0x001000a0], (f:lsu) ft4  <-- 2.8284
       0     2155        M 0x80000b8c fadd.d  ft3, ft3, ft4          #; ft3  = 1.4142, ft4  = 2.8284, (f:lsu) ft5  <-- 0.0
       0     2158        M                                           #; (f:fpu) ft3  <-- 4.2426000
       0     2172        M 0x80000b94 li      a1, 1                  #; (wrb) a1  <-- 1
       0     2173        M 0x80000b98 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000b90 fadd.d  fs0, ft3, ft5          #; ft3  = 4.2426000, ft5  = 0.0
       0     2174        M 0x80000b9c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b9c
       0     2176        M                                           #; (f:fpu) fs0  <-- 4.2426000
       0     2183        M 0x80000ba0 jalr    ra, ra, 456            #; ra  = 0x80000b9c, (wrb) ra  <-- 0x80000ba4, goto 0x80000d64
       0     2184        M 0x80000d64 slli    a1, a1, 3              #; a1  = 1, (wrb) a1  <-- 8
       0     2185        M 0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 8, (wrb) a0  <-- 0x001000a8
       0     2186        M 0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000ac]
       0     2187        M 0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000a8]
       0     2188        M 0x80000d74 ret                            #; ra  = 0x80000ba4, goto 0x80000ba4
       0     2191        M 0x80000ba4 fld     ft3, 8(s2)             #; ft3  <~~ Doub[0x00100008]
       0     2192        M 0x80000ba8 fld     ft4, 8(s1)             #; ft4  <~~ Doub[0x00100058], (f:lsu) ft3  <-- 2.8284
       0     2193        M 0x80000bac fld     ft5, 8(s0)             #; ft5  <~~ Doub[0x001000a8], (f:lsu) ft4  <-- 4.2426000
       0     2194        M                                           #; (f:lsu) ft5  <-- 0.0
       0     2197        M 0x80000bb0 fadd.d  ft3, ft3, fs0          #; ft3  = 2.8284, fs0  = 4.2426000
       0     2198        M 0x80000bbc li      a1, 2                  #; (wrb) a1  <-- 2
       0     2200        M                                           #; (f:fpu) ft3  <-- 7.071
       0     2201        M 0x80000bb4 fadd.d  ft3, ft3, ft4          #; ft3  = 7.071, ft4  = 4.2426000
       0     2204        M                                           #; (f:fpu) ft3  <-- 11.3136
       0     2205        M 0x80000bb8 fadd.d  fs0, ft3, ft5          #; ft3  = 11.3136, ft5  = 0.0
       0     2207        M 0x80000bc0 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2208        M 0x80000bc4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000bc4
                         M                                           #; (f:fpu) fs0  <-- 11.3136
       0     2209        M 0x80000bc8 jalr    ra, ra, 416            #; ra  = 0x80000bc4, (wrb) ra  <-- 0x80000bcc, goto 0x80000d64
       0     2210        M 0x80000d64 slli    a1, a1, 3              #; a1  = 2, (wrb) a1  <-- 16
       0     2211        M 0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 16, (wrb) a0  <-- 0x001000b0
       0     2212        M 0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b4]
       0     2213        M 0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b0]
       0     2214        M 0x80000d74 ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
       0     2217        M 0x80000bcc fld     ft3, 16(s2)            #; ft3  <~~ Doub[0x00100010]
       0     2218        M                                           #; (f:lsu) ft3  <-- 4.2426000
       0     2221        M 0x80000bd0 fld     ft4, 16(s1)            #; ft4  <~~ Doub[0x00100060]
       0     2222        M 0x80000bd4 fld     ft5, 16(s0)            #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft4  <-- 5.6568
       0     2223        M 0x80000bd8 fadd.d  ft3, ft3, fs0          #; ft3  = 4.2426000, fs0  = 11.3136, (f:lsu) ft5  <-- 0.0
       0     2226        M                                           #; (f:fpu) ft3  <-- 15.5562000
       0     2227        M 0x80000bdc fadd.d  ft3, ft3, ft4          #; ft3  = 15.5562000, ft4  = 5.6568
       0     2230        M                                           #; (f:fpu) ft3  <-- 21.2130000
       0     2232        M 0x80000be4 li      a1, 3                  #; (wrb) a1  <-- 3
       0     2233        M 0x80000be8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000be0 fadd.d  fs0, ft3, ft5          #; ft3  = 21.2130000, ft5  = 0.0
       0     2234        M 0x80000bec auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000bec
       0     2236        M                                           #; (f:fpu) fs0  <-- 21.2130000
       0     2243        M 0x80000bf0 jalr    ra, ra, 376            #; ra  = 0x80000bec, (wrb) ra  <-- 0x80000bf4, goto 0x80000d64
       0     2257        M 0x80000d64 slli    a1, a1, 3              #; a1  = 3, (wrb) a1  <-- 24
       0     2258        M 0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 24, (wrb) a0  <-- 0x001000b8
       0     2259        M 0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000bc]
       0     2260        M 0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000b8]
       0     2261        M 0x80000d74 ret                            #; ra  = 0x80000bf4, goto 0x80000bf4
       0     2264        M 0x80000bf4 fld     ft3, 24(s2)            #; ft3  <~~ Doub[0x00100018]
       0     2265        M 0x80000bf8 fld     ft4, 24(s1)            #; ft4  <~~ Doub[0x00100068], (f:lsu) ft3  <-- 5.6568
       0     2266        M 0x80000bfc fld     ft5, 24(s0)            #; ft5  <~~ Doub[0x001000b8], (f:lsu) ft4  <-- 7.071
       0     2267        M 0x80000c00 fadd.d  ft3, ft3, fs0          #; ft3  = 5.6568, fs0  = 21.2130000, (f:lsu) ft5  <-- 0.0
       0     2268        M 0x80000c0c li      a1, 4                  #; (wrb) a1  <-- 4
       0     2270        M                                           #; (f:fpu) ft3  <-- 26.8698000
       0     2271        M 0x80000c04 fadd.d  ft3, ft3, ft4          #; ft3  = 26.8698000, ft4  = 7.071
       0     2274        M                                           #; (f:fpu) ft3  <-- 33.9408000
       0     2275        M 0x80000c08 fadd.d  fs0, ft3, ft5          #; ft3  = 33.9408000, ft5  = 0.0
       0     2277        M 0x80000c10 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2278        M 0x80000c14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000c14
                         M                                           #; (f:fpu) fs0  <-- 33.9408000
       0     2279        M 0x80000c18 jalr    ra, ra, 336            #; ra  = 0x80000c14, (wrb) ra  <-- 0x80000c1c, goto 0x80000d64
       0     2280        M 0x80000d64 slli    a1, a1, 3              #; a1  = 4, (wrb) a1  <-- 32
       0     2281        M 0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 32, (wrb) a0  <-- 0x001000c0
       0     2282        M 0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c4]
       0     2283        M 0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c0]
       0     2284        M 0x80000d74 ret                            #; ra  = 0x80000c1c, goto 0x80000c1c
       0     2287        M 0x80000c1c fld     ft3, 32(s2)            #; ft3  <~~ Doub[0x00100020]
       0     2288        M                                           #; (f:lsu) ft3  <-- 7.071
       0     2291        M 0x80000c20 fld     ft4, 32(s1)            #; ft4  <~~ Doub[0x00100070]
       0     2292        M 0x80000c24 fld     ft5, 32(s0)            #; ft5  <~~ Doub[0x001000c0], (f:lsu) ft4  <-- 8.4852000
       0     2293        M 0x80000c28 fadd.d  ft3, ft3, fs0          #; ft3  = 7.071, fs0  = 33.9408000, (f:lsu) ft5  <-- 0.0
       0     2296        M                                           #; (f:fpu) ft3  <-- 41.0118000
       0     2297        M 0x80000c2c fadd.d  ft3, ft3, ft4          #; ft3  = 41.0118000, ft4  = 8.4852000
       0     2300        M                                           #; (f:fpu) ft3  <-- 49.4970000
       0     2302        M 0x80000c34 li      a1, 5                  #; (wrb) a1  <-- 5
       0     2303        M 0x80000c38 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000c30 fadd.d  fs0, ft3, ft5          #; ft3  = 49.4970000, ft5  = 0.0
       0     2304        M 0x80000c3c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000c3c
       0     2306        M                                           #; (f:fpu) fs0  <-- 49.4970000
       0     2313        M 0x80000c40 jalr    ra, ra, 296            #; ra  = 0x80000c3c, (wrb) ra  <-- 0x80000c44, goto 0x80000d64
       0     2314        M 0x80000d64 slli    a1, a1, 3              #; a1  = 5, (wrb) a1  <-- 40
       0     2315        M 0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 40, (wrb) a0  <-- 0x001000c8
       0     2316        M 0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000cc]
       0     2317        M 0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000c8]
       0     2318        M 0x80000d74 ret                            #; ra  = 0x80000c44, goto 0x80000c44
       0     2321        M 0x80000c44 fld     ft3, 40(s2)            #; ft3  <~~ Doub[0x00100028]
       0     2322        M 0x80000c48 fld     ft4, 40(s1)            #; ft4  <~~ Doub[0x00100078], (f:lsu) ft3  <-- 8.4852000
       0     2323        M 0x80000c4c fld     ft5, 40(s0)            #; ft5  <~~ Doub[0x001000c8], (f:lsu) ft4  <-- 9.8994
       0     2324        M                                           #; (f:lsu) ft5  <-- 0.0
       0     2327        M 0x80000c50 fadd.d  ft3, ft3, fs0          #; ft3  = 8.4852000, fs0  = 49.4970000
       0     2328        M 0x80000c5c li      a1, 6                  #; (wrb) a1  <-- 6
       0     2330        M                                           #; (f:fpu) ft3  <-- 57.9822000
       0     2331        M 0x80000c54 fadd.d  ft3, ft3, ft4          #; ft3  = 57.9822000, ft4  = 9.8994
       0     2334        M                                           #; (f:fpu) ft3  <-- 67.8816000
       0     2335        M 0x80000c58 fadd.d  fs0, ft3, ft5          #; ft3  = 67.8816000, ft5  = 0.0
       0     2337        M 0x80000c60 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2338        M 0x80000c64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000c64
                         M                                           #; (f:fpu) fs0  <-- 67.8816000
       0     2339        M 0x80000c68 jalr    ra, ra, 256            #; ra  = 0x80000c64, (wrb) ra  <-- 0x80000c6c, goto 0x80000d64
       0     2351        M 0x80000d64 slli    a1, a1, 3              #; a1  = 6, (wrb) a1  <-- 48
       0     2352        M 0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 48, (wrb) a0  <-- 0x001000d0
       0     2353        M 0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d4]
       0     2354        M 0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d0]
       0     2355        M 0x80000d74 ret                            #; ra  = 0x80000c6c, goto 0x80000c6c
       0     2358        M 0x80000c6c fld     ft3, 48(s2)            #; ft3  <~~ Doub[0x00100030]
       0     2359        M 0x80000c70 fld     ft4, 48(s1)            #; ft4  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 9.8994
       0     2360        M 0x80000c74 fld     ft5, 48(s0)            #; ft5  <~~ Doub[0x001000d0], (f:lsu) ft4  <-- 11.3136
       0     2361        M 0x80000c78 fadd.d  ft3, ft3, fs0          #; ft3  = 9.8994, fs0  = 67.8816000, (f:lsu) ft5  <-- 0.0
       0     2364        M                                           #; (f:fpu) ft3  <-- 77.7810000
       0     2365        M 0x80000c7c fadd.d  ft3, ft3, ft4          #; ft3  = 77.7810000, ft4  = 11.3136
       0     2368        M                                           #; (f:fpu) ft3  <-- 89.0946000
       0     2370        M 0x80000c84 li      a1, 7                  #; (wrb) a1  <-- 7
       0     2371        M 0x80000c88 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000c80 fadd.d  fs0, ft3, ft5          #; ft3  = 89.0946000, ft5  = 0.0
       0     2372        M 0x80000c8c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000c8c
       0     2374        M                                           #; (f:fpu) fs0  <-- 89.0946000
       0     2381        M 0x80000c90 jalr    ra, ra, 216            #; ra  = 0x80000c8c, (wrb) ra  <-- 0x80000c94, goto 0x80000d64
       0     2382        M 0x80000d64 slli    a1, a1, 3              #; a1  = 7, (wrb) a1  <-- 56
       0     2383        M 0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 56, (wrb) a0  <-- 0x001000d8
       0     2384        M 0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000dc]
       0     2385        M 0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000d8]
       0     2386        M 0x80000d74 ret                            #; ra  = 0x80000c94, goto 0x80000c94
       0     2389        M 0x80000c94 fld     ft3, 56(s2)            #; ft3  <~~ Doub[0x00100038]
       0     2390        M 0x80000c98 fld     ft4, 56(s1)            #; ft4  <~~ Doub[0x00100088], (f:lsu) ft3  <-- 11.3136
       0     2391        M 0x80000c9c fld     ft5, 56(s0)            #; ft5  <~~ Doub[0x001000d8], (f:lsu) ft4  <-- 12.7278000
       0     2392        M                                           #; (f:lsu) ft5  <-- 0.0
       0     2395        M 0x80000ca0 fadd.d  ft3, ft3, fs0          #; ft3  = 11.3136, fs0  = 89.0946000
       0     2396        M 0x80000cac li      a1, 8                  #; (wrb) a1  <-- 8
       0     2398        M                                           #; (f:fpu) ft3  <-- 100.4082000
       0     2399        M 0x80000ca4 fadd.d  ft3, ft3, ft4          #; ft3  = 100.4082000, ft4  = 12.7278000
       0     2402        M                                           #; (f:fpu) ft3  <-- 113.1360000
       0     2403        M 0x80000ca8 fadd.d  fs0, ft3, ft5          #; ft3  = 113.1360000, ft5  = 0.0
       0     2405        M 0x80000cb0 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2406        M 0x80000cb4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000cb4
                         M                                           #; (f:fpu) fs0  <-- 113.1360000
       0     2407        M 0x80000cb8 jalr    ra, ra, 176            #; ra  = 0x80000cb4, (wrb) ra  <-- 0x80000cbc, goto 0x80000d64
       0     2408        M 0x80000d64 slli    a1, a1, 3              #; a1  = 8, (wrb) a1  <-- 64
       0     2409        M 0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 64, (wrb) a0  <-- 0x001000e0
       0     2410        M 0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e4]
       0     2411        M 0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e0]
       0     2412        M 0x80000d74 ret                            #; ra  = 0x80000cbc, goto 0x80000cbc
       0     2415        M 0x80000cbc fld     ft3, 64(s2)            #; ft3  <~~ Doub[0x00100040]
       0     2416        M                                           #; (f:lsu) ft3  <-- 12.7278000
       0     2419        M 0x80000cc0 fld     ft4, 64(s1)            #; ft4  <~~ Doub[0x00100090]
       0     2420        M 0x80000cc4 fld     ft5, 64(s0)            #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft4  <-- 14.142
       0     2421        M 0x80000cc8 fadd.d  ft3, ft3, fs0          #; ft3  = 12.7278000, fs0  = 113.1360000, (f:lsu) ft5  <-- 0.0
       0     2424        M                                           #; (f:fpu) ft3  <-- 125.8638000
       0     2425        M 0x80000ccc fadd.d  ft3, ft3, ft4          #; ft3  = 125.8638000, ft4  = 14.142
       0     2428        M                                           #; (f:fpu) ft3  <-- 140.0058
       0     2430        M 0x80000cd4 li      a1, 9                  #; (wrb) a1  <-- 9
       0     2431        M 0x80000cd8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M 0x80000cd0 fadd.d  fs0, ft3, ft5          #; ft3  = 140.0058, ft5  = 0.0
       0     2432        M 0x80000cdc auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000cdc
       0     2434        M                                           #; (f:fpu) fs0  <-- 140.0058
       0     2441        M 0x80000ce0 jalr    ra, ra, 136            #; ra  = 0x80000cdc, (wrb) ra  <-- 0x80000ce4, goto 0x80000d64
       0     2455        M 0x80000d64 slli    a1, a1, 3              #; a1  = 9, (wrb) a1  <-- 72
       0     2456        M 0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 72, (wrb) a0  <-- 0x001000e8
       0     2457        M 0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000ec]
       0     2458        M 0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000e8]
       0     2459        M 0x80000d74 ret                            #; ra  = 0x80000ce4, goto 0x80000ce4
       0     2462        M 0x80000ce4 fld     ft3, 72(s2)            #; ft3  <~~ Doub[0x00100048]
       0     2463        M 0x80000cf0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002cf0
                         M 0x80000ce8 fld     ft4, 72(s1)            #; ft4  <~~ Doub[0x00100098], (f:lsu) ft3  <-- 14.142
       0     2464        M 0x80000cf4 addi    a0, a0, 1736           #; a0  = 0x80002cf0, (wrb) a0  <-- 0x800033b8
                         M 0x80000cec fld     ft5, 72(s0)            #; ft5  <~~ Doub[0x001000e8], (f:lsu) ft4  <-- 15.5562000
       0     2465        M                                           #; (f:lsu) ft5  <-- 0.0
       0     2467        M 0x80000cf8 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x800033b8]
       0     2468        M 0x80000cfc fadd.d  ft3, ft3, fs0          #; ft3  = 14.142, fs0  = 140.0058
       0     2471        M                                           #; (f:fpu) ft3  <-- 154.1478
       0     2476        M                                           #; (f:lsu) ft6  <-- -169.704
       0     2477        M 0x80000d00 fadd.d  ft3, ft3, ft4          #; ft3  = 154.1478, ft4  = 15.5562000
       0     2480        M                                           #; (f:fpu) ft3  <-- 169.7040000
       0     2481        M 0x80000d04 fadd.d  ft3, ft3, ft5          #; ft3  = 169.7040000, ft5  = 0.0
       0     2484        M                                           #; (f:fpu) ft3  <-- 169.7040000
       0     2485        M 0x80000d08 fadd.d  ft4, ft3, ft6          #; ft3  = 169.7040000, ft6  = -169.704
       0     2488        M 0x80000d14 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
                         M                                           #; (f:fpu) ft4  <-- -0.0000000
       0     2489        M 0x80000d0c fsgnjx.d fs0, ft4, ft4         #; ft4  = -0.0000000, ft4  = -0.0000000
       0     2490        M 0x80000d10 fsd     ft3, 0(sp)             #; 169.7040000 ~~> Doub[0x0011ff40], (f:fpu) fs0  <-- 0.0000000
       0     2491        M                                           #; (lsu) a2  <-- 0
       0     2492        M 0x80000d18 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
       0     2495        M                                           #; (lsu) a3  <-- 0x40653687
                         M 0x80000d1c fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff40]
       0     2499        M 0x80000d20 lw      a4, 0(sp)              #; sp  = 0x0011ff40, a4  <~~ Word[0x0011ff40]
       0     2502        M                                           #; (lsu) a4  <-- 0
       0     2503        M 0x80000d24 lw      a5, 4(sp)              #; sp  = 0x0011ff40, a5  <~~ Word[0x0011ff44]
       0     2504        M 0x80000d28 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d28
       0     2505        M 0x80000d2c addi    a0, a0, 909            #; a0  = 0x80002d28, (wrb) a0  <-- 0x800030b5
       0     2506        M                                           #; (lsu) a5  <-- 0x3d200000
       0     2511        M 0x80000d30 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000d30
       0     2512        M 0x80000d34 jalr    ra, ra, 72             #; ra  = 0x80000d30, (wrb) ra  <-- 0x80000d38, goto 0x80000d78
       0     2513        M 0x80000d78 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2514        M 0x80000d7c sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000d38 ~~> Word[0x0011ff1c]
       0     2515        M 0x80000d80 mv      t0, a0                 #; a0  = 0x800030b5, (wrb) t0  <-- 0x800030b5
       0     2516        M 0x80000d84 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x80003398 ~~> Word[0x0011ff3c]
       0     2517        M 0x80000d88 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x800033a0 ~~> Word[0x0011ff38]
       0     2518        M 0x80000d8c sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x3d200000 ~~> Word[0x0011ff34]
       0     2527        M 0x80000d90 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff30]
       0     2528        M 0x80000d94 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x40653687 ~~> Word[0x0011ff2c]
       0     2529        M 0x80000d98 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2530        M 0x80000d9c sw      a1, 20(sp)             #; sp  = 0x0011ff10, 72 ~~> Word[0x0011ff24]
       0     2539        M 0x80000da0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2540        M 0x80000da4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2541        M 0x80000da8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001da8
       0     2542        M 0x80000dac addi    a0, a0, -988           #; a0  = 0x80001da8, (wrb) a0  <-- 0x800019cc
       0     2551        M 0x80000db0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2552        M 0x80000db4 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2553        M 0x80000db8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2554        M 0x80000dbc mv      a3, t0                 #; t0  = 0x800030b5, (wrb) a3  <-- 0x800030b5
       0     2563        M 0x80000dc0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000dc0
       0     2564        M 0x80000dc4 jalr    ra, ra, 20             #; ra  = 0x80000dc0, (wrb) ra  <-- 0x80000dc8, goto 0x80000dd4
       0     2575        M 0x80000dd4 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2576        M 0x80000dd8 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000dc8 ~~> Word[0x0011ff0c]
       0     2577        M 0x80000ddc sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x001000a0 ~~> Word[0x0011ff08]
       0     2587        M 0x80000de0 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff04]
       0     2588        M 0x80000de4 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
       0     2589        M 0x80000de8 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2590        M 0x80000dec sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2599        M 0x80000df0 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2600        M 0x80000df4 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2601        M 0x80000df8 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2602        M 0x80000dfc sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2611        M 0x80000e00 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2612        M 0x80000e04 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2613        M 0x80000e08 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2614        M 0x80000e0c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2623        M 0x80000e10 mv      s0, a3                 #; a3  = 0x800030b5, (wrb) s0  <-- 0x800030b5
       0     2624        M 0x80000e14 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2625        M 0x80000e18 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2626        M 0x80000e1c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2635        M 0x80000e20 mv      s2, a0                 #; a0  = 0x800019cc, (wrb) s2  <-- 0x800019cc
       0     2636        M 0x80000e24 j       pc + 0xc               #; goto 0x80000e30
       0     2647        M 0x80000e30 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2648        M 0x80000e34 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2649        M 0x80000e38 li      s11, 16                #; (wrb) s11 <-- 16
       0     2650        M 0x80000e3c li      s7, 46                 #; (wrb) s7  <-- 46
       0     2659        M 0x80000e40 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2660        M 0x80000e44 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2661        M 0x80000e48 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2662        M 0x80000e4c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2671        M 0x80000e50 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2672        M 0x80000e54 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2673        M 0x80000e58 addi    s10, s0, 2             #; s0  = 0x800030b5, (wrb) s10 <-- 0x800030b7
       0     2674        M 0x80000e5c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2683        M 0x80000e60 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2684        M 0x80000e64 lbu     a0, 0(s0)              #; s0  = 0x800030b5, a0  <~~ Byte[0x800030b5]
       0     2695        M                                           #; (lsu) a0  <-- 101
       0     2696        M 0x80000e68 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2697        M 0x80000e6c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2698        M 0x80000e70 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2699        M 0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2700        M 0x80000e78 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2701        M 0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2710        M 0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
       0     2733        M 0x800019cc beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2745        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2746        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2747        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2748        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     2757        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     2758        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     2759        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     2770        M                                           #; (lsu) a4  <-- 0
       0     2771        M 0x800019ec addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2772        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 1 ~~> Word[0x80003474]
       0     2773        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 0, (wrb) a4  <-- 0x80003474
       0     2774        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003474, 101 ~~> Byte[0x800034bc]
       0     2775        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     2796        M                                           #; (lsu) a4  <-- 1
       0     2797        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2798        M 0x80001a04 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2799        M 0x80001a08 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2800        M 0x80001a0c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2801        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2802        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     2824        M 0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
       0     2838        M 0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030b5, (wrb) s0  <-- 0x800030b6
       0     2839        M 0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030b7, (wrb) s10 <-- 0x800030b8
       0     2840        M 0x80000e8c mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2841        M 0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030b6, a0  <~~ Byte[0x800030b6]
       0     2852        M                                           #; (lsu) a0  <-- 114
       0     2853        M 0x80000e94 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e6c
       0     2854        M 0x80000e6c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2857        M 0x80000e70 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2858        M 0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2859        M 0x80000e78 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2860        M 0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2861        M 0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
       0     2864        M 0x800019cc beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2867        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2868        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2869        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2870        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     2871        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     2872        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2873        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     2874        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     2885        M                                           #; (lsu) a4  <-- 1
       0     2886        M 0x800019ec addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2887        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 2 ~~> Word[0x80003474]
       0     2888        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 1, (wrb) a4  <-- 0x80003475
       0     2889        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003475, 114 ~~> Byte[0x800034bd]
       0     2890        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     2911        M                                           #; (lsu) a4  <-- 2
       0     2912        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2913        M 0x80001a04 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2914        M 0x80001a08 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2915        M 0x80001a0c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2916        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2917        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     2921        M 0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
       0     2926        M 0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030b6, (wrb) s0  <-- 0x800030b7
       0     2927        M 0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030b8, (wrb) s10 <-- 0x800030b9
       0     2928        M 0x80000e8c mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2929        M 0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030b7, a0  <~~ Byte[0x800030b7]
       0     2940        M                                           #; (lsu) a0  <-- 114
       0     2941        M 0x80000e94 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e6c
       0     2942        M 0x80000e6c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2945        M 0x80000e70 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2946        M 0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2947        M 0x80000e78 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2948        M 0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2949        M 0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
       0     2952        M 0x800019cc beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2955        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2956        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2957        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2958        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     2959        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     2960        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2961        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     2962        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     2973        M                                           #; (lsu) a4  <-- 2
       0     2974        M 0x800019ec addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2975        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 3 ~~> Word[0x80003474]
       0     2976        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 2, (wrb) a4  <-- 0x80003476
       0     2977        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003476, 114 ~~> Byte[0x800034be]
       0     2978        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     2999        M                                           #; (lsu) a4  <-- 3
       0     3000        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     3001        M 0x80001a04 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     3002        M 0x80001a08 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3003        M 0x80001a0c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3004        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3005        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     3009        M 0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
       0     3014        M 0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030b7, (wrb) s0  <-- 0x800030b8
       0     3015        M 0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030b9, (wrb) s10 <-- 0x800030ba
       0     3016        M 0x80000e8c mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3017        M 0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030b8, a0  <~~ Byte[0x800030b8]
       0     3028        M                                           #; (lsu) a0  <-- 111
       0     3029        M 0x80000e94 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000e6c
       0     3030        M 0x80000e6c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3033        M 0x80000e70 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3034        M 0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3035        M 0x80000e78 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3036        M 0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3037        M 0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
       0     3040        M 0x800019cc beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3043        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3044        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3045        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3046        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     3047        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     3048        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3049        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3050        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3061        M                                           #; (lsu) a4  <-- 3
       0     3062        M 0x800019ec addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3063        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 4 ~~> Word[0x80003474]
       0     3064        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 3, (wrb) a4  <-- 0x80003477
       0     3065        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003477, 111 ~~> Byte[0x800034bf]
       0     3066        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3087        M                                           #; (lsu) a4  <-- 4
       0     3088        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3089        M 0x80001a04 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3090        M 0x80001a08 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3091        M 0x80001a0c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3092        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3093        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     3097        M 0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
       0     3102        M 0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030b8, (wrb) s0  <-- 0x800030b9
       0     3103        M 0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030ba, (wrb) s10 <-- 0x800030bb
       0     3104        M 0x80000e8c mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3105        M 0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030b9, a0  <~~ Byte[0x800030b9]
       0     3116        M                                           #; (lsu) a0  <-- 114
       0     3117        M 0x80000e94 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e6c
       0     3118        M 0x80000e6c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3121        M 0x80000e70 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3122        M 0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3123        M 0x80000e78 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3124        M 0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3125        M 0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
       0     3128        M 0x800019cc beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3131        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3132        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3133        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3134        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     3135        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     3136        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3137        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3138        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3149        M                                           #; (lsu) a4  <-- 4
       0     3150        M 0x800019ec addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3151        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 5 ~~> Word[0x80003474]
       0     3152        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 4, (wrb) a4  <-- 0x80003478
       0     3153        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003478, 114 ~~> Byte[0x800034c0]
       0     3154        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3175        M                                           #; (lsu) a4  <-- 5
       0     3176        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3177        M 0x80001a04 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3178        M 0x80001a08 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3179        M 0x80001a0c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3180        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3181        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     3185        M 0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
       0     3190        M 0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030b9, (wrb) s0  <-- 0x800030ba
       0     3191        M 0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030bb, (wrb) s10 <-- 0x800030bc
       0     3192        M 0x80000e8c mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3193        M 0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030ba, a0  <~~ Byte[0x800030ba]
       0     3204        M                                           #; (lsu) a0  <-- 32
       0     3205        M 0x80000e94 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e6c
       0     3206        M 0x80000e6c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3209        M 0x80000e70 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3210        M 0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3211        M 0x80000e78 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3212        M 0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3213        M 0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
       0     3216        M 0x800019cc beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3219        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3220        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3221        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3222        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     3223        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     3224        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3225        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3226        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3237        M                                           #; (lsu) a4  <-- 5
       0     3238        M 0x800019ec addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3239        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 6 ~~> Word[0x80003474]
       0     3240        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 5, (wrb) a4  <-- 0x80003479
       0     3241        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003479, 32 ~~> Byte[0x800034c1]
       0     3242        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3263        M                                           #; (lsu) a4  <-- 6
       0     3264        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3265        M 0x80001a04 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3266        M 0x80001a08 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3267        M 0x80001a0c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3268        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3269        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     3273        M 0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
       0     3278        M 0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030ba, (wrb) s0  <-- 0x800030bb
       0     3279        M 0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030bc, (wrb) s10 <-- 0x800030bd
       0     3280        M 0x80000e8c mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3281        M 0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030bb, a0  <~~ Byte[0x800030bb]
       0     3292        M                                           #; (lsu) a0  <-- 61
       0     3293        M 0x80000e94 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000e6c
       0     3294        M 0x80000e6c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3297        M 0x80000e70 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3298        M 0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3299        M 0x80000e78 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3300        M 0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3301        M 0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
       0     3304        M 0x800019cc beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3307        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3308        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3309        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3310        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     3311        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     3312        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3313        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3314        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3325        M                                           #; (lsu) a4  <-- 6
       0     3326        M 0x800019ec addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3327        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 7 ~~> Word[0x80003474]
       0     3328        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 6, (wrb) a4  <-- 0x8000347a
       0     3329        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347a, 61 ~~> Byte[0x800034c2]
       0     3330        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3351        M                                           #; (lsu) a4  <-- 7
       0     3352        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3353        M 0x80001a04 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3354        M 0x80001a08 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3355        M 0x80001a0c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3356        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3357        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     3361        M 0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
       0     3366        M 0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030bb, (wrb) s0  <-- 0x800030bc
       0     3367        M 0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030bd, (wrb) s10 <-- 0x800030be
       0     3368        M 0x80000e8c mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3369        M 0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030bc, a0  <~~ Byte[0x800030bc]
       0     3380        M                                           #; (lsu) a0  <-- 32
       0     3381        M 0x80000e94 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e6c
       0     3382        M 0x80000e6c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3385        M 0x80000e70 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3386        M 0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3387        M 0x80000e78 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3388        M 0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3389        M 0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
       0     3392        M 0x800019cc beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3395        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3396        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3397        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3398        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     3399        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     3400        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3401        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3402        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3413        M                                           #; (lsu) a4  <-- 7
       0     3414        M 0x800019ec addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3415        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 8 ~~> Word[0x80003474]
       0     3416        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 7, (wrb) a4  <-- 0x8000347b
       0     3417        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347b, 32 ~~> Byte[0x800034c3]
       0     3418        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3439        M                                           #; (lsu) a4  <-- 8
       0     3440        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3441        M 0x80001a04 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3442        M 0x80001a08 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3443        M 0x80001a0c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3444        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3445        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     3449        M 0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
       0     3454        M 0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030bc, (wrb) s0  <-- 0x800030bd
       0     3455        M 0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030be, (wrb) s10 <-- 0x800030bf
       0     3456        M 0x80000e8c mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3457        M 0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030bd, a0  <~~ Byte[0x800030bd]
       0     3468        M                                           #; (lsu) a0  <-- 37
       0     3469        M 0x80000e94 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000e6c
       0     3470        M 0x80000e6c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000e9c
       0     3471        M 0x80000e9c li      s0, 0                  #; (wrb) s0  <-- 0
       0     3484        M 0x80000ea0 j       pc + 0x10              #; goto 0x80000eb0
       0     3496        M 0x80000eb0 lbu     a0, -1(s10)            #; s10 = 0x800030bf, a0  <~~ Byte[0x800030be]
       0     3507        M                                           #; (lsu) a0  <-- 102
       0     3508        M 0x80000eb4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3509        M 0x80000eb8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000ef0
       0     3521        M 0x80000ef0 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3522        M 0x80000ef4 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3523        M 0x80000ef8 addi    a1, s10, -1            #; s10 = 0x800030bf, (wrb) a1  <-- 0x800030be
       0     3524        M 0x80000efc li      a3, 9                  #; (wrb) a3  <-- 9
       0     3533        M 0x80000f00 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000f7c
       0     3556        M 0x80000f7c li      a2, 42                 #; (wrb) a2  <-- 42
       0     3568        M 0x80000f80 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000fd0
       0     3591        M 0x80000fd0 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3592        M 0x80000fd4 mv      s10, a1                #; a1  = 0x800030be, (wrb) s10 <-- 0x800030be
       0     3593        M 0x80000fd8 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3594        M 0x80000fdc li      s7, 0                  #; (wrb) s7  <-- 0
       0     3614        M 0x80000fe0 j       pc + 0xc               #; goto 0x80000fec
       0     3615        M 0x80000fec addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3627        M 0x80000ff0 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3628        M 0x80000ff4 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3629        M 0x80000ff8 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3630        M 0x80000ffc li      a2, 9                  #; (wrb) a2  <-- 9
       0     3639        M 0x80001000 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80001064
       0     3662        M 0x80001064 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3663        M 0x80001068 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3664        M 0x8000106c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3674        M 0x80001070 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3675        M 0x80001074 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80003074
       0     3676        M 0x80001078 addi    a2, a2, 192            #; a2  = 0x80003074, (wrb) a2  <-- 0x80003134
       0     3677        M 0x8000107c add     a1, a1, a2             #; a1  = 260, a2  = 0x80003134, (wrb) a1  <-- 0x80003238
       0     3686        M 0x80001080 lw      a2, 0(a1)              #; a1  = 0x80003238, a2  <~~ Word[0x80003238]
       0     3687        M 0x80001084 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3688        M 0x80001088 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3697        M                                           #; (lsu) a2  <-- 0x800010bc
       0     3698        M 0x8000108c jr      a2                     #; a2  = 0x800010bc, goto 0x800010bc
       0     3710        M 0x800010bc li      a1, 70                 #; (wrb) a1  <-- 70
       0     3722        M 0x800010c0 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800010c8
       0     3723        M 0x800010c8 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3724        M 0x800010cc andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3735        M 0x800010d4 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3736        M 0x800010d8 mv      a0, s2                 #; s2  = 0x800019cc, (wrb) a0  <-- 0x800019cc
                         M 0x800010d0 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3737        M 0x800010dc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 169.7039795
       0     3746        M 0x800010e0 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3747        M 0x800010e4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3748        M 0x800010e8 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3749        M 0x800010ec mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3758        M 0x800010f0 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3759        M 0x800010f4 auipc   ra, 0x1                #; (wrb) ra  <-- 0x800020f4
       0     3760        M 0x800010f8 jalr    ra, ra, -1656          #; ra  = 0x800020f4, (wrb) ra  <-- 0x800010fc, goto 0x80001a7c
       0     3772        M 0x80001a7c addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3775        M 0x80001a80 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x800010fc ~~> Word[0x0011fe9c]
       0     3776        M 0x80001a84 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3777        M 0x80001a88 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3778        M 0x80001a8c sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800019cc ~~> Word[0x0011fe90]
       0     3787        M 0x80001a90 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3788        M 0x80001a94 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3789        M 0x80001a98 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3790        M 0x80001a9c sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3799        M 0x80001aa0 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3800        M 0x80001aa4 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3801        M 0x80001aa8 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3802        M 0x80001aac sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x800030be ~~> Word[0x0011fe70]
       0     3813        M 0x80001ab0 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     3814        M 0x80001abc auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003abc
                         M 0x80001ab4 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3815        M 0x80001ab8 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3823        M 0x80001ac0 addi    s1, s1, -1780          #; s1  = 0x80003abc, (wrb) s1  <-- 0x800033c8
       0     3826        M 0x80001acc mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001ac4 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800033c8]
       0     3835        M 0x80001ad0 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3836        M 0x80001ad4 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001ac8 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 169.7039795
       0     3837        M 0x80001ad8 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3838        M 0x80001adc mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3847        M 0x80001ae0 mv      s7, a0                 #; a0  = 0x800019cc, (wrb) s7  <-- 0x800019cc
       0     3848        M 0x80001ae4 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001bd4
       0     3871        M 0x80001bd8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bd8
       0     3872        M 0x80001bdc addi    a0, a0, 2040           #; a0  = 0x80002bd8, (wrb) a0  <-- 0x800033d0
                         M 0x80001bd4 fsgnj.d fs0, fa0, fa0          #; fa0  = 169.7039795, fa0  = 169.7039795
       0     3873        M                                           #; (f:fpu) fs0  <-- 169.7039795
       0     3884        M 0x80001be0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800033d0]
       0     3893        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3894        M 0x80001be4 fle.d   a0, fa0, ft0           #; fa0  = 169.7039795, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3896        M                                           #; (acc) t3  <-- 0x00051e63
       0     3897        M 0x80001be8 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001c04
       0     3909        M 0x80001c04 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002c04
       0     3910        M 0x80001c08 addi    a0, a0, 2004           #; a0  = 0x80002c04, (wrb) a0  <-- 0x800033d8
       0     3913        M 0x80001c0c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800033d8]
       0     3921        M 0x80001c10 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002c10
       0     3922        M 0x80001c14 addi    a0, a0, 2000           #; a0  = 0x80002c10, (wrb) a0  <-- 0x800033e0
                         M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3925        M 0x80001c18 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800033e0]
       0     3926        M 0x80001c1c fle.d   a0, fs0, ft0           #; fs0  = 169.7039795, ft0  = 1000000000.0000000
       0     3934        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3935        M 0x80001c20 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 169.7039795
       0     3937        M                                           #; (acc) a0  <-- 0x00b57533
       0     3938        M 0x80001c24 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3939        M 0x80001c28 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001d24
       0     3956        M 0x80001d24 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3957        M 0x80001d28 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3958        M 0x80001d2c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001d34
       0     3968        M 0x80001d34 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3970        M 0x80001d3c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001d74
       0     3971        M 0x80001d38 fsgnjx.d fs2, fs0, fs0         #; fs0  = 169.7039795, fs0  = 169.7039795
       0     3972        M                                           #; (f:fpu) fs2  <-- 169.7039795
       0     3991        M 0x80001d74 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3992        M 0x80001d78 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3993        M 0x80001d7c auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002d7c
       0     4003        M 0x80001d80 addi    a1, a1, 1292           #; a1  = 0x80002d7c, (wrb) a1  <-- 0x80003288
       0     4004        M 0x80001d84 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003288, (wrb) a0  <-- 0x800032b8
       0     4007        M 0x80001d88 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800032b8]
       0     4008        M 0x80001d8c fcvt.w.d s1, fs2               #; fs2  = 169.7039795
       0     4016        M 0x80001d90 fcvt.d.w ft0, s1               #; ac1  = 169, (f:lsu) ft1  <-- 1000000.0000000
       0     4017        M                                           #; (f:fpu) ft0  <-- 169.0
       0     4018        M 0x80001d9c auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002d9c
                         M 0x80001d94 fsub.d  ft0, fs2, ft0          #; fs2  = 169.7039795, ft0  = 169.0
       0     4021        M                                           #; (f:fpu) ft0  <-- 0.7039795
       0     4022        M 0x80001d98 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.7039795
       0     4025        M                                           #; (f:fpu) ft2  <-- 703979.4921875
       0     4027        M 0x80001da0 addi    a0, a0, 1612           #; a0  = 0x80002d9c, (wrb) a0  <-- 0x800033e8
       0     4030        M 0x80001da4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800033e8]
       0     4031        M 0x80001da8 fcvt.wu.d a0, ft2              #; ft2  = 703979.4921875
       0     4033        M                                           #; (acc) gp  <-- 0xd21501d3
       0     4035        M 0x80001dac fcvt.d.wu ft3, a0              #; ac1  = 0x000abdeb
       0     4036        M                                           #; (f:fpu) ft3  <-- 703979.0
       0     4039        M                                           #; (f:lsu) ft0  <-- 0.5
       0     4041        M 0x80001db0 fsub.d  ft2, ft2, ft3          #; ft2  = 703979.4921875, ft3  = 703979.0
       0     4044        M                                           #; (f:fpu) ft2  <-- 0.4921875
       0     4045        M 0x80001db4 fle.d   a1, ft2, ft0           #; ft2  = 0.4921875, ft0  = 0.5
       0     4048        M 0x80001db8 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001dd8
       0     4063        M 0x80001dd8 flt.d   a1, ft2, ft0           #; ft2  = 0.4921875, ft0  = 0.5
       0     4065        M                                           #; (acc) s4  <-- 0x00059a63
       0     4066        M 0x80001ddc bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001df0
       0     4086        M 0x80001df4 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001df0 fcvt.d.w fs1, zero             #; ac1  = 0
       0     4087        M 0x80001df8 li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     4088        M 0x80001dfc addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4097        M 0x80001e00 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     4098        M 0x80001e04 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4099        M 0x80001e08 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4100        M 0x80001e0c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4109        M 0x80001e10 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4110        M 0x80001e14 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4111        M 0x80001e18 li      a7, 9                  #; (wrb) a7  <-- 9
       0     4112        M 0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4121        M 0x80001e20 mv      a1, a0                 #; a0  = 0x000abdeb, (wrb) a1  <-- 0x000abdeb
       0     4122        M 0x80001e24 mulhu   a0, a0, t2             #; a0  = 0x000abdeb, t2  = 0xcccccccd
       0     4125        M                                           #; (acc) a0  <-- 0x00355513
       0     4126        M 0x80001e28 srli    a0, a0, 3              #; a0  = 0x000897ef, (wrb) a0  <-- 0x000112fd
       0     4127        M 0x80001e2c mul     a3, a0, a6             #; a0  = 0x000112fd, a6  = 10
       0     4133        M 0x80001e30 sub     a3, a1, a3             #; a1  = 0x000abdeb, a3  = 0x000abde2, (wrb) a3  <-- 9
       0     4134        M 0x80001e34 ori     a3, a3, 48             #; a3  = 9, (wrb) a3  <-- 57
       0     4135        M 0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     4136        M 0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 57 ~~> Byte[0x0011fe38]
       0     4145        M 0x80001e40 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4146        M 0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000abdeb, taken, goto 0x80001e1c
       0     4147        M 0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 1, not taken
       0     4148        M 0x80001e20 mv      a1, a0                 #; a0  = 0x000112fd, (wrb) a1  <-- 0x000112fd
       0     4149        M 0x80001e24 mulhu   a0, a0, t2             #; a0  = 0x000112fd, t2  = 0xcccccccd
       0     4152        M                                           #; (acc) a0  <-- 0x00355513
       0     4153        M 0x80001e28 srli    a0, a0, 3              #; a0  = 56317, (wrb) a0  <-- 7039
       0     4154        M 0x80001e2c mul     a3, a0, a6             #; a0  = 7039, a6  = 10
       0     4157        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4158        M 0x80001e30 sub     a3, a1, a3             #; a1  = 0x000112fd, a3  = 0x000112f6, (wrb) a3  <-- 7
       0     4159        M 0x80001e34 ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
       0     4160        M 0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 1, (wrb) a5  <-- 0x0011fe39
       0     4161        M 0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe39, 55 ~~> Byte[0x0011fe39]
       0     4162        M 0x80001e40 addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
       0     4163        M 0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000112fd, taken, goto 0x80001e1c
       0     4164        M 0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 2, not taken
       0     4165        M 0x80001e20 mv      a1, a0                 #; a0  = 7039, (wrb) a1  <-- 7039
       0     4166        M 0x80001e24 mulhu   a0, a0, t2             #; a0  = 7039, t2  = 0xcccccccd
       0     4169        M                                           #; (acc) a0  <-- 0x00355513
       0     4170        M 0x80001e28 srli    a0, a0, 3              #; a0  = 5631, (wrb) a0  <-- 703
       0     4171        M 0x80001e2c mul     a3, a0, a6             #; a0  = 703, a6  = 10
       0     4174        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4175        M 0x80001e30 sub     a3, a1, a3             #; a1  = 7039, a3  = 7030, (wrb) a3  <-- 9
       0     4176        M 0x80001e34 ori     a3, a3, 48             #; a3  = 9, (wrb) a3  <-- 57
       0     4177        M 0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 2, (wrb) a5  <-- 0x0011fe3a
       0     4178        M 0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe3a, 57 ~~> Byte[0x0011fe3a]
       0     4179        M 0x80001e40 addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
       0     4180        M 0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7039, taken, goto 0x80001e1c
       0     4181        M 0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 3, not taken
       0     4182        M 0x80001e20 mv      a1, a0                 #; a0  = 703, (wrb) a1  <-- 703
       0     4183        M 0x80001e24 mulhu   a0, a0, t2             #; a0  = 703, t2  = 0xcccccccd
       0     4186        M                                           #; (acc) a0  <-- 0x00355513
       0     4187        M 0x80001e28 srli    a0, a0, 3              #; a0  = 562, (wrb) a0  <-- 70
       0     4188        M 0x80001e2c mul     a3, a0, a6             #; a0  = 70, a6  = 10
       0     4191        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4192        M 0x80001e30 sub     a3, a1, a3             #; a1  = 703, a3  = 700, (wrb) a3  <-- 3
       0     4193        M 0x80001e34 ori     a3, a3, 48             #; a3  = 3, (wrb) a3  <-- 51
       0     4194        M 0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 3, (wrb) a5  <-- 0x0011fe3b
       0     4195        M 0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe3b, 51 ~~> Byte[0x0011fe3b]
       0     4196        M 0x80001e40 addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
       0     4197        M 0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 703, taken, goto 0x80001e1c
       0     4198        M 0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 4, not taken
       0     4199        M 0x80001e20 mv      a1, a0                 #; a0  = 70, (wrb) a1  <-- 70
       0     4200        M 0x80001e24 mulhu   a0, a0, t2             #; a0  = 70, t2  = 0xcccccccd
       0     4203        M                                           #; (acc) a0  <-- 0x00355513
       0     4204        M 0x80001e28 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     4205        M 0x80001e2c mul     a3, a0, a6             #; a0  = 7, a6  = 10
       0     4208        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4209        M 0x80001e30 sub     a3, a1, a3             #; a1  = 70, a3  = 70, (wrb) a3  <-- 0
       0     4210        M 0x80001e34 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4211        M 0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 4, (wrb) a5  <-- 0x0011fe3c
       0     4212        M 0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe3c, 48 ~~> Byte[0x0011fe3c]
       0     4213        M 0x80001e40 addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
       0     4214        M 0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 70, taken, goto 0x80001e1c
       0     4215        M 0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 5, not taken
       0     4216        M 0x80001e20 mv      a1, a0                 #; a0  = 7, (wrb) a1  <-- 7
       0     4217        M 0x80001e24 mulhu   a0, a0, t2             #; a0  = 7, t2  = 0xcccccccd
       0     4220        M                                           #; (acc) a0  <-- 0x00355513
       0     4221        M 0x80001e28 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
       0     4222        M 0x80001e2c mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4225        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4226        M 0x80001e30 sub     a3, a1, a3             #; a1  = 7, a3  = 0, (wrb) a3  <-- 7
       0     4227        M 0x80001e34 ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
       0     4228        M 0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 5, (wrb) a5  <-- 0x0011fe3d
       0     4229        M 0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe3d, 55 ~~> Byte[0x0011fe3d]
       0     4230        M 0x80001e40 addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
       0     4231        M 0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7, not taken
       0     4232        M 0x80001e48 add     a0, s0, a2             #; s0  = 0, a2  = 6, (wrb) a0  <-- 6
       0     4233        M 0x80001e4c addi    a1, a0, -1             #; a0  = 6, (wrb) a1  <-- 5
       0     4244        M 0x80001e50 li      a3, 30                 #; (wrb) a3  <-- 30
       0     4245        M 0x80001e54 sltu    a3, a3, a1             #; a3  = 30, a1  = 5, (wrb) a3  <-- 0
       0     4246        M 0x80001e58 xor     a4, s8, a2             #; s8  = 6, a2  = 6, (wrb) a4  <-- 0
       0     4247        M 0x80001e5c seqz    a4, a4                 #; a4  = 0, (wrb) a4  <-- 1
       0     4256        M 0x80001e60 or      a3, a3, a4             #; a3  = 0, a4  = 1, (wrb) a3  <-- 1
       0     4257        M 0x80001e64 bnez    a3, pc + 136           #; a3  = 1, taken, goto 0x80001eec
       0     4279        M 0x80001eec sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4291        M 0x80001ef0 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4292        M 0x80001ef4 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4293        M 0x80001ef8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4294        M 0x80001efc add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4303        M 0x80001f00 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4304        M 0x80001f04 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4305        M 0x80001f08 j       pc + 0x8               #; goto 0x80001f10
       0     4315        M 0x80001f10 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4316        M 0x80001f14 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4317        M 0x80001f18 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4318        M 0x80001f1c li      t0, 32                 #; (wrb) t0  <-- 32
       0     4328        M 0x80001f24 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001f20 flt.d   s9, fs0, fs1           #; fs0  = 169.7039795, fs1  = 0.0
       0     4329        M 0x80001f28 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4330        M 0x80001f2c li      a6, 10                 #; (wrb) a6  <-- 10
       0     4339        M 0x80001f30 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4340        M 0x80001f34 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4341        M 0x80001f38 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4342        M 0x80001f3c mulh    a0, s1, a1             #; s1  = 169, a1  = 0x66666667
       0     4351        M 0x80001f40 srli    a5, a0, 31             #; a0  = 67, (wrb) a5  <-- 0
       0     4352        M 0x80001f44 srai    a0, a0, 2              #; a0  = 67, (wrb) a0  <-- 16
       0     4353        M 0x80001f48 add     a0, a0, a5             #; a0  = 16, a5  = 0, (wrb) a0  <-- 16
       0     4354        M 0x80001f4c mul     a5, a0, a6             #; a0  = 16, a6  = 10
       0     4363        M 0x80001f50 sub     a5, s1, a5             #; s1  = 169, a5  = 160, (wrb) a5  <-- 9
       0     4364        M 0x80001f54 addi    a5, a5, 48             #; a5  = 9, (wrb) a5  <-- 57
       0     4365        M 0x80001f58 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4366        M 0x80001f5c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4375        M 0x80001f60 addi    a2, s1, 9              #; s1  = 169, (wrb) a2  <-- 178
       0     4376        M 0x80001f64 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 57 ~~> Byte[0x0011fe3f]
       0     4377        M 0x80001f68 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4378        M 0x80001f6c mv      s1, a0                 #; a0  = 16, (wrb) s1  <-- 16
       0     4387        M 0x80001f70 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 178, taken, goto 0x80001f38
       0     4388        M 0x80001f38 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 8, not taken
       0     4389        M 0x80001f3c mulh    a0, s1, a1             #; s1  = 16, a1  = 0x66666667
       0     4392        M                                           #; (acc) a5  <-- 0x01f55793
       0     4393        M 0x80001f40 srli    a5, a0, 31             #; a0  = 6, (wrb) a5  <-- 0
       0     4394        M 0x80001f44 srai    a0, a0, 2              #; a0  = 6, (wrb) a0  <-- 1
       0     4395        M 0x80001f48 add     a0, a0, a5             #; a0  = 1, a5  = 0, (wrb) a0  <-- 1
       0     4396        M 0x80001f4c mul     a5, a0, a6             #; a0  = 1, a6  = 10
       0     4399        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4400        M 0x80001f50 sub     a5, s1, a5             #; s1  = 16, a5  = 10, (wrb) a5  <-- 6
       0     4401        M 0x80001f54 addi    a5, a5, 48             #; a5  = 6, (wrb) a5  <-- 54
       0     4402        M 0x80001f58 addi    s8, s0, 1              #; s0  = 8, (wrb) s8  <-- 9
       0     4403        M 0x80001f5c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 8, (wrb) s0  <-- 0x0011fe40
       0     4404        M 0x80001f60 addi    a2, s1, 9              #; s1  = 16, (wrb) a2  <-- 25
       0     4405        M 0x80001f64 sb      a5, 0(s0)              #; s0  = 0x0011fe40, 54 ~~> Byte[0x0011fe40]
       0     4406        M 0x80001f68 mv      s0, s8                 #; s8  = 9, (wrb) s0  <-- 9
       0     4407        M 0x80001f6c mv      s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
       0     4408        M 0x80001f70 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 25, taken, goto 0x80001f38
       0     4409        M 0x80001f38 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 9, not taken
       0     4410        M 0x80001f3c mulh    a0, s1, a1             #; s1  = 1, a1  = 0x66666667
       0     4413        M                                           #; (acc) a5  <-- 0x01f55793
       0     4414        M 0x80001f40 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4415        M 0x80001f44 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4416        M 0x80001f48 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4417        M 0x80001f4c mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4420        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4421        M 0x80001f50 sub     a5, s1, a5             #; s1  = 1, a5  = 0, (wrb) a5  <-- 1
       0     4422        M 0x80001f54 addi    a5, a5, 48             #; a5  = 1, (wrb) a5  <-- 49
       0     4423        M 0x80001f58 addi    s8, s0, 1              #; s0  = 9, (wrb) s8  <-- 10
       0     4424        M 0x80001f5c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 9, (wrb) s0  <-- 0x0011fe41
       0     4425        M 0x80001f60 addi    a2, s1, 9              #; s1  = 1, (wrb) a2  <-- 10
       0     4426        M 0x80001f64 sb      a5, 0(s0)              #; s0  = 0x0011fe41, 49 ~~> Byte[0x0011fe41]
       0     4427        M 0x80001f68 mv      s0, s8                 #; s8  = 10, (wrb) s0  <-- 10
       0     4428        M 0x80001f6c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4429        M 0x80001f70 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 10, not taken
       0     4430        M 0x80001f74 j       pc + 0x8               #; goto 0x80001f7c
       0     4431        M 0x80001f7c andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4443        M 0x80001f80 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4444        M 0x80001f84 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ff0
       0     4466        M 0x80001ff0 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4467        M 0x80001ff4 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 10, not taken
       0     4468        M 0x80001ff8 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002010
       0     4489        M 0x80002010 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4490        M 0x80002014 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4491        M 0x80002018 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4492        M 0x8000201c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002048
       0     4512        M 0x80002048 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4513        M 0x8000204c sltu    a1, s8, s2             #; s8  = 10, s2  = 0, (wrb) a1  <-- 0
       0     4524        M 0x80002050 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4525        M 0x80002054 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4526        M 0x80002058 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4527        M 0x8000205c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4536        M 0x80002060 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x8000208c
       0     4559        M 0x8000208c srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4571        M 0x80002090 beqz    s8, pc + 56            #; s8  = 10, not taken
       0     4572        M 0x80002094 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4573        M 0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 10, (wrb) a0  <-- 0x0011fe41
       0     4574        M 0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe41, a0  <~~ Byte[0x0011fe41]
       0     4577        M                                           #; (lsu) a0  <-- 49
       0     4583        M 0x800020a0 addi    s10, s8, -1            #; s8  = 10, (wrb) s10 <-- 9
       0     4584        M 0x800020a4 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4585        M 0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4586        M 0x800020ac mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4595        M 0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4596        M 0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
       0     4609        M 0x800019cc beqz    a0, pc + 168           #; a0  = 49, not taken
       0     4612        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4613        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4614        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4615        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     4616        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     4617        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4618        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     4619        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4630        M                                           #; (lsu) a4  <-- 8
       0     4631        M 0x800019ec addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4632        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 9 ~~> Word[0x80003474]
       0     4633        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 8, (wrb) a4  <-- 0x8000347c
       0     4634        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347c, 49 ~~> Byte[0x800034c4]
       0     4635        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4656        M                                           #; (lsu) a4  <-- 9
       0     4657        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4658        M 0x80001a04 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4659        M 0x80001a08 addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
       0     4660        M 0x80001a0c snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
       0     4661        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4662        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     4666        M 0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
       0     4671        M 0x800020b8 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4672        M 0x800020bc mv      s8, s10                #; s10 = 9, (wrb) s8  <-- 9
       0     4674        M 0x800020c0 bnez    s10, pc - 40           #; s10 = 9, taken, goto 0x80002098
       0     4677        M 0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 9, (wrb) a0  <-- 0x0011fe40
       0     4678        M 0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe40, a0  <~~ Byte[0x0011fe40]
       0     4680        M 0x800020a0 addi    s10, s8, -1            #; s8  = 9, (wrb) s10 <-- 8
       0     4681        M 0x800020a4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4682        M 0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4683        M 0x800020ac mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4684        M 0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4685        M 0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
       0     4686        M                                           #; (lsu) a0  <-- 54
       0     4688        M 0x800019cc beqz    a0, pc + 168           #; a0  = 54, not taken
       0     4691        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4692        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4693        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4694        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     4695        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     4696        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4697        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     4698        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4709        M                                           #; (lsu) a4  <-- 9
       0     4710        M 0x800019ec addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4711        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 10 ~~> Word[0x80003474]
       0     4712        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 9, (wrb) a4  <-- 0x8000347d
       0     4713        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347d, 54 ~~> Byte[0x800034c5]
       0     4714        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4735        M                                           #; (lsu) a4  <-- 10
       0     4736        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4737        M 0x80001a04 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4738        M 0x80001a08 addi    a0, a0, -10            #; a0  = 54, (wrb) a0  <-- 44
       0     4739        M 0x80001a0c snez    a0, a0                 #; a0  = 44, (wrb) a0  <-- 1
       0     4740        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4741        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     4745        M 0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
       0     4750        M 0x800020b8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4751        M 0x800020bc mv      s8, s10                #; s10 = 8, (wrb) s8  <-- 8
       0     4753        M 0x800020c0 bnez    s10, pc - 40           #; s10 = 8, taken, goto 0x80002098
       0     4756        M 0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4757        M 0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4759        M 0x800020a0 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4760        M 0x800020a4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4761        M 0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4762        M 0x800020ac mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4763        M 0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4764        M 0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
       0     4765        M                                           #; (lsu) a0  <-- 57
       0     4767        M 0x800019cc beqz    a0, pc + 168           #; a0  = 57, not taken
       0     4770        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4771        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4772        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4773        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     4774        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     4775        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4776        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     4777        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4788        M                                           #; (lsu) a4  <-- 10
       0     4789        M 0x800019ec addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4790        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 11 ~~> Word[0x80003474]
       0     4791        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 10, (wrb) a4  <-- 0x8000347e
       0     4792        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347e, 57 ~~> Byte[0x800034c6]
       0     4793        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4814        M                                           #; (lsu) a4  <-- 11
       0     4815        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4816        M 0x80001a04 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4817        M 0x80001a08 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
       0     4818        M 0x80001a0c snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
       0     4819        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4820        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     4824        M 0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
       0     4829        M 0x800020b8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4830        M 0x800020bc mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4832        M 0x800020c0 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80002098
       0     4835        M 0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4836        M 0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4838        M 0x800020a0 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4839        M 0x800020a4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4840        M 0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4841        M 0x800020ac mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4842        M 0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4843        M 0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
       0     4844        M                                           #; (lsu) a0  <-- 46
       0     4846        M 0x800019cc beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4849        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4850        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4851        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4852        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     4853        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     4854        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4855        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     4856        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4867        M                                           #; (lsu) a4  <-- 11
       0     4868        M 0x800019ec addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4869        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 12 ~~> Word[0x80003474]
       0     4870        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 11, (wrb) a4  <-- 0x8000347f
       0     4871        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347f, 46 ~~> Byte[0x800034c7]
       0     4872        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4893        M                                           #; (lsu) a4  <-- 12
       0     4894        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4895        M 0x80001a04 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4896        M 0x80001a08 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4897        M 0x80001a0c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4898        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4899        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     4903        M 0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
       0     4908        M 0x800020b8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4909        M 0x800020bc mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4911        M 0x800020c0 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80002098
       0     4914        M 0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4915        M 0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4917        M 0x800020a0 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4918        M 0x800020a4 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4919        M 0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4920        M 0x800020ac mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4921        M 0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4922        M 0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
       0     4923        M                                           #; (lsu) a0  <-- 55
       0     4925        M 0x800019cc beqz    a0, pc + 168           #; a0  = 55, not taken
       0     4928        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4929        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4930        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4931        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     4932        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     4933        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4934        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     4935        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4946        M                                           #; (lsu) a4  <-- 12
       0     4947        M 0x800019ec addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4948        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 13 ~~> Word[0x80003474]
       0     4949        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 12, (wrb) a4  <-- 0x80003480
       0     4950        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003480, 55 ~~> Byte[0x800034c8]
       0     4951        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4972        M                                           #; (lsu) a4  <-- 13
       0     4973        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4974        M 0x80001a04 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4975        M 0x80001a08 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
       0     4976        M 0x80001a0c snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
       0     4977        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4978        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     4982        M 0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
       0     4987        M 0x800020b8 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4988        M 0x800020bc mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4990        M 0x800020c0 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80002098
       0     4993        M 0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4994        M 0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4996        M 0x800020a0 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4997        M 0x800020a4 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4998        M 0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4999        M 0x800020ac mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5000        M 0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5001        M 0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
       0     5002        M                                           #; (lsu) a0  <-- 48
       0     5004        M 0x800019cc beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5007        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5008        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5009        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5010        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     5011        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     5012        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5013        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5014        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5025        M                                           #; (lsu) a4  <-- 13
       0     5026        M 0x800019ec addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5027        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 14 ~~> Word[0x80003474]
       0     5028        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 13, (wrb) a4  <-- 0x80003481
       0     5029        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003481, 48 ~~> Byte[0x800034c9]
       0     5030        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5051        M                                           #; (lsu) a4  <-- 14
       0     5052        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5053        M 0x80001a04 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5054        M 0x80001a08 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5055        M 0x80001a0c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5056        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5057        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     5061        M 0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
       0     5066        M 0x800020b8 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5067        M 0x800020bc mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     5069        M 0x800020c0 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80002098
       0     5072        M 0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     5073        M 0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     5075        M 0x800020a0 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     5076        M 0x800020a4 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5077        M 0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5078        M 0x800020ac mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5079        M 0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5080        M 0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
       0     5081        M                                           #; (lsu) a0  <-- 51
       0     5083        M 0x800019cc beqz    a0, pc + 168           #; a0  = 51, not taken
       0     5086        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5087        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5088        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5089        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     5090        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     5091        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5092        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5093        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5104        M                                           #; (lsu) a4  <-- 14
       0     5105        M 0x800019ec addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5106        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 15 ~~> Word[0x80003474]
       0     5107        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 14, (wrb) a4  <-- 0x80003482
       0     5108        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003482, 51 ~~> Byte[0x800034ca]
       0     5109        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5130        M                                           #; (lsu) a4  <-- 15
       0     5131        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5132        M 0x80001a04 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5133        M 0x80001a08 addi    a0, a0, -10            #; a0  = 51, (wrb) a0  <-- 41
       0     5134        M 0x80001a0c snez    a0, a0                 #; a0  = 41, (wrb) a0  <-- 1
       0     5135        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5136        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     5140        M 0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
       0     5145        M 0x800020b8 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5146        M 0x800020bc mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5148        M 0x800020c0 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80002098
       0     5151        M 0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     5152        M 0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     5154        M 0x800020a0 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5155        M 0x800020a4 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5156        M 0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5157        M 0x800020ac mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5158        M 0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5159        M 0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
       0     5160        M                                           #; (lsu) a0  <-- 57
       0     5162        M 0x800019cc beqz    a0, pc + 168           #; a0  = 57, not taken
       0     5165        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5166        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5167        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5168        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     5169        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     5170        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5171        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5172        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5183        M                                           #; (lsu) a4  <-- 15
       0     5184        M 0x800019ec addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5185        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 16 ~~> Word[0x80003474]
       0     5186        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 15, (wrb) a4  <-- 0x80003483
       0     5187        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003483, 57 ~~> Byte[0x800034cb]
       0     5188        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5209        M                                           #; (lsu) a4  <-- 16
       0     5210        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5211        M 0x80001a04 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5212        M 0x80001a08 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
       0     5213        M 0x80001a0c snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
       0     5214        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5215        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     5219        M 0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
       0     5224        M 0x800020b8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5225        M 0x800020bc mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5227        M 0x800020c0 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80002098
       0     5230        M 0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     5231        M 0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     5233        M 0x800020a0 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5234        M 0x800020a4 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
       0     5235        M 0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5236        M 0x800020ac mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
       0     5237        M 0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5238        M 0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
       0     5239        M                                           #; (lsu) a0  <-- 55
       0     5241        M 0x800019cc beqz    a0, pc + 168           #; a0  = 55, not taken
       0     5244        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5245        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5246        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5247        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     5248        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     5249        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5250        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5251        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5262        M                                           #; (lsu) a4  <-- 16
       0     5263        M 0x800019ec addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5264        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 17 ~~> Word[0x80003474]
       0     5265        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 16, (wrb) a4  <-- 0x80003484
       0     5266        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003484, 55 ~~> Byte[0x800034cc]
       0     5267        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5288        M                                           #; (lsu) a4  <-- 17
       0     5289        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5290        M 0x80001a04 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5291        M 0x80001a08 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
       0     5292        M 0x80001a0c snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
       0     5293        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5294        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     5298        M 0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
       0     5303        M 0x800020b8 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     5304        M 0x800020bc mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5306        M 0x800020c0 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80002098
       0     5309        M 0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     5310        M 0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     5312        M 0x800020a0 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5313        M 0x800020a4 addi    s1, s0, 1              #; s0  = 17, (wrb) s1  <-- 18
       0     5314        M 0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5315        M 0x800020ac mv      a2, s0                 #; s0  = 17, (wrb) a2  <-- 17
       0     5316        M 0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5317        M 0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
       0     5318        M                                           #; (lsu) a0  <-- 57
       0     5320        M 0x800019cc beqz    a0, pc + 168           #; a0  = 57, not taken
       0     5323        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5324        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5325        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5326        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     5327        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     5328        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5329        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5330        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5341        M                                           #; (lsu) a4  <-- 17
       0     5342        M 0x800019ec addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
       0     5343        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 18 ~~> Word[0x80003474]
       0     5344        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 17, (wrb) a4  <-- 0x80003485
       0     5345        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003485, 57 ~~> Byte[0x800034cd]
       0     5346        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5367        M                                           #; (lsu) a4  <-- 18
       0     5368        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
       0     5369        M 0x80001a04 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
       0     5370        M 0x80001a08 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
       0     5371        M 0x80001a0c snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
       0     5372        M 0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5373        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
       0     5377        M 0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
       0     5382        M 0x800020b8 mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
       0     5383        M 0x800020bc mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5385        M 0x800020c0 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5386        M 0x800020c4 j       pc + 0x8               #; goto 0x800020cc
       0     5387        M 0x800020cc sub     a0, s1, s4             #; s1  = 18, s4  = 8, (wrb) a0  <-- 10
       0     5399        M 0x800020d0 sltu    a0, a0, s2             #; a0  = 10, s2  = 0, (wrb) a0  <-- 0
       0     5400        M 0x800020d4 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5401        M 0x800020d8 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5402        M 0x800020dc or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5411        M 0x800020e0 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002110
       0     5434        M 0x80002110 mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
       0     5435        M 0x80002114 mv      a0, s0                 #; s0  = 18, (wrb) a0  <-- 18
       0     5438        M 0x80002118 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5439        M 0x8000211c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     5440        M                                           #; (f:lsu) fs1  <-- 0.0
       0     5447        M 0x80002124 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     5448        M 0x80002120 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
       0     5449        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5451        M                                           #; (lsu) s10 <-- 0x800030be
       0     5452        M 0x80002128 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5455        M                                           #; (lsu) s9  <-- 8
       0     5456        M 0x8000212c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5459        M                                           #; (lsu) s8  <-- 16
       0     5460        M 0x80002130 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5463        M                                           #; (lsu) s7  <-- 0
       0     5464        M 0x80002134 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5467        M                                           #; (lsu) s6  <-- 0
       0     5468        M 0x80002138 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5471        M                                           #; (lsu) s5  <-- -1
       0     5472        M 0x8000213c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5475        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5476        M 0x80002140 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5479        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5480        M 0x80002144 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5483        M                                           #; (lsu) s2  <-- 0x800019cc
       0     5484        M 0x80002148 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5487        M                                           #; (lsu) s1  <-- 8
       0     5488        M 0x8000214c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5491        M                                           #; (lsu) s0  <-- 0
       0     5492        M 0x80002150 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5493        M 0x80002154 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5495        M                                           #; (lsu) ra  <-- 0x800010fc
       0     5496        M 0x80002158 ret                            #; ra  = 0x800010fc, goto 0x800010fc
       0     5504        M 0x800010fc j       pc + 0x7c0             #; goto 0x800018bc
       0     5507        M 0x800018bc mv      s8, a0                 #; a0  = 18, (wrb) s8  <-- 18
       0     5519        M 0x800018c0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5520        M 0x800018c4 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5521        M 0x800018c8 addi    s0, s10, 1             #; s10 = 0x800030be, (wrb) s0  <-- 0x800030bf
       0     5522        M 0x800018cc j       pc - 0xa74             #; goto 0x80000e58
       0     5531        M 0x80000e58 addi    s10, s0, 2             #; s0  = 0x800030bf, (wrb) s10 <-- 0x800030c1
       0     5532        M 0x80000e5c mv      s9, s8                 #; s8  = 18, (wrb) s9  <-- 18
       0     5543        M 0x80000e60 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5544        M 0x80000e64 lbu     a0, 0(s0)              #; s0  = 0x800030bf, a0  <~~ Byte[0x800030bf]
       0     5555        M                                           #; (lsu) a0  <-- 10
       0     5556        M 0x80000e68 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5557        M 0x80000e6c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5558        M 0x80000e70 addi    s1, s9, 1              #; s9  = 18, (wrb) s1  <-- 19
       0     5559        M 0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5560        M 0x80000e78 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
       0     5561        M 0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5562        M 0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
       0     5567        M 0x800019cc beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5570        M 0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5571        M 0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5572        M 0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5573        M 0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
       0     5574        M 0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
       0     5575        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5576        M 0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5577        M 0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5588        M                                           #; (lsu) a4  <-- 18
       0     5589        M 0x800019ec addi    a5, a4, 1              #; a4  = 18, (wrb) a5  <-- 19
       0     5590        M 0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 19 ~~> Word[0x80003474]
       0     5591        M 0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 18, (wrb) a4  <-- 0x80003486
       0     5592        M 0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003486, 10 ~~> Byte[0x800034ce]
       0     5593        M 0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5614        M                                           #; (lsu) a4  <-- 19
       0     5615        M 0x80001a00 addi    a4, a4, -1020          #; a4  = 19, (wrb) a4  <-- -1001
       0     5616        M 0x80001a04 snez    a4, a4                 #; a4  = -1001, (wrb) a4  <-- 1
       0     5617        M 0x80001a08 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5618        M 0x80001a0c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5619        M 0x80001a10 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5620        M 0x80001a14 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5621        M 0x80001a18 add     a0, a3, a2             #; a3  = 0x80003474, a2  = 0, (wrb) a0  <-- 0x80003474
       0     5622        M 0x80001a1c addi    a2, a0, 72             #; a0  = 0x80003474, (wrb) a2  <-- 0x800034bc
       0     5623        M 0x80001a20 sw      zero, 12(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003480]
       0     5624        M 0x80001a24 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5625        M 0x80001a28 sw      a3, 8(a0)              #; a0  = 0x80003474, 64 ~~> Word[0x8000347c]
       0     5626        M 0x80001a2c sw      zero, 20(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003488]
       0     5635        M 0x80001a30 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5636        M 0x80001a34 sw      a3, 16(a0)             #; a0  = 0x80003474, 1 ~~> Word[0x80003484]
       0     5637        M 0x80001a38 sw      zero, 28(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003490]
       0     5639        M 0x80001a3c sw      a2, 24(a0)             #; a0  = 0x80003474, 0x800034bc ~~> Word[0x8000348c]
       0     5649        M 0x80001a40 lw      a2, 0(a1)              #; a1  = 0x80003474, a2  <~~ Word[0x80003474]
       0     5650        M 0x80001a44 addi    a3, a0, 8              #; a0  = 0x80003474, (wrb) a3  <-- 0x8000347c
       0     5651        M 0x80001a48 sw      zero, 36(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003498]
       0     5671        M                                           #; (lsu) a2  <-- 19
       0     5672        M 0x80001a4c sw      a2, 32(a0)             #; a0  = 0x80003474, 19 ~~> Word[0x80003494]
       0     5673        M 0x80001a50 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a50
       0     5674        M 0x80001a54 addi    a0, a0, -1872          #; a0  = 0x80003a50, (wrb) a0  <-- 0x80003300
       0     5675        M 0x80001a58 sw      a3, 0(a0)              #; a0  = 0x80003300, 0x8000347c ~~> Word[0x80003300]
       0     5676        M 0x80001a5c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a5c
       0     5685        M 0x80001a60 addi    a0, a0, -1820          #; a0  = 0x80003a5c, (wrb) a0  <-- 0x80003340
       0     5686        M 0x80001a64 lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
       0     5701        M                                           #; (lsu) a2  <-- 0
       0     5702        M 0x80001a68 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a64
       0     5703        M 0x80001a64 lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
       0     5714        M                                           #; (lsu) a2  <-- 1
       0     5715        M 0x80001a68 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5716        M 0x80001a6c sw      zero, 0(a0)            #; a0  = 0x80003340, 0 ~~> Word[0x80003340]
       0     5719        M 0x80001a70 sw      zero, 0(a1)            #; a1  = 0x80003474, 0 ~~> Word[0x80003474]
       0     5720        M 0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
       0     5724        M 0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030bf, (wrb) s0  <-- 0x800030c0
       0     5725        M 0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030c1, (wrb) s10 <-- 0x800030c2
       0     5726        M 0x80000e8c mv      s9, s1                 #; s1  = 19, (wrb) s9  <-- 19
       0     5727        M 0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030c0, a0  <~~ Byte[0x800030c0]
       0     5740        M                                           #; (lsu) a0  <-- 0
       0     5741        M 0x80000e94 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5742        M 0x80000e98 j       pc + 0xad8             #; goto 0x80001970
       0     5754        M 0x80001970 mv      a2, s9                 #; s9  = 19, (wrb) a2  <-- 19
       0     5755        M 0x80001974 bltu    s9, s5, pc + 8         #; s9  = 19, s5  = -1, taken, goto 0x8000197c
       0     5756        M 0x8000197c li      a0, 0                  #; (wrb) a0  <-- 0
       0     5766        M 0x80001980 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5767        M 0x80001984 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5768        M 0x80001988 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x8000198c, goto 0x800019cc
       0     5780        M 0x800019cc beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001a74
       0     5785        M 0x80001a74 ret                            #; ra  = 0x8000198c, goto 0x8000198c
       0     5786        M 0x8000198c mv      a0, s9                 #; s9  = 19, (wrb) a0  <-- 19
       0     5787        M 0x80001990 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5790        M                                           #; (lsu) s11 <-- 0
       0     5791        M 0x80001994 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5794        M                                           #; (lsu) s10 <-- 0
       0     5795        M 0x80001998 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5798        M                                           #; (lsu) s9  <-- 0
       0     5799        M 0x8000199c lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5802        M                                           #; (lsu) s8  <-- 0
       0     5803        M 0x800019a0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5806        M                                           #; (lsu) s7  <-- 0
       0     5807        M 0x800019a4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5810        M                                           #; (lsu) s6  <-- 0
       0     5811        M 0x800019a8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5814        M                                           #; (lsu) s5  <-- 0
       0     5815        M 0x800019ac lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5818        M                                           #; (lsu) s4  <-- 0
       0     5819        M 0x800019b0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5822        M                                           #; (lsu) s3  <-- 0
       0     5823        M 0x800019b4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5826        M                                           #; (lsu) s2  <-- 0x00100000
       0     5827        M 0x800019b8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5830        M                                           #; (lsu) s1  <-- 0x00100050
       0     5831        M 0x800019bc lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5834        M                                           #; (lsu) s0  <-- 0x001000a0
       0     5835        M 0x800019c0 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5836        M 0x800019c4 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5838        M                                           #; (lsu) ra  <-- 0x80000dc8
       0     5839        M 0x800019c8 ret                            #; ra  = 0x80000dc8, goto 0x80000dc8
       0     5851        M 0x80000dc8 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5852        M 0x80000dcc addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5854        M                                           #; (lsu) ra  <-- 0x80000d38
       0     5863        M 0x80000dd0 ret                            #; ra  = 0x80000d38, goto 0x80000d38
       0     5877        M 0x80000d38 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d38
       0     5878        M 0x80000d3c addi    a0, a0, 1672           #; a0  = 0x80002d38, (wrb) a0  <-- 0x800033c0
       0     5882        M 0x80000d40 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800033c0]
       0     5883        M 0x80000d4c lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
       0     5891        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     5892        M 0x80000d44 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
       0     5893        M                                           #; (lsu) s2  <-- 0
       0     5894        M 0x80000d50 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54], (acc) s1  <-- 0x01412483
                         M 0x80000d48 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
       0     5895        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5897        M                                           #; (lsu) s1  <-- 0
       0     5898        M 0x80000d54 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0     5901        M                                           #; (lsu) s0  <-- 0
       0     5902        M 0x80000d58 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     5903        M 0x80000d5c addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     5905        M                                           #; (lsu) ra  <-- 0x80002e30
       0     5906        M 0x80000d60 ret                            #; ra  = 0x80002e30, goto 0x80002e30
       0     5918        M 0x80002e30 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5919        M 0x80002e34 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e34
       0     5920        M 0x80002e38 jalr    ra, ra, 524            #; ra  = 0x80002e34, (wrb) ra  <-- 0x80002e3c, goto 0x80003040
       0     5923        M 0x80003040 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5924        M 0x80003044 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e3c ~~> Word[0x0011ff5c]
       0     5925        M 0x80003048 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003048
       0     5926        M 0x8000304c jalr    ra, ra, -1268          #; ra  = 0x80003048, (wrb) ra  <-- 0x80003050, goto 0x80002b54
       0     5937        M 0x80002b54 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5938        M 0x80002b58 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5939        M 0x80002b5c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5942        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5943        M 0x80002b60 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5946        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5947        M 0x80002b64 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5948        M 0x80002b68 ret                            #; ra  = 0x80003050, goto 0x80003050
       0     5950        M                                           #; (lsu) a0  <-- 0x00120190
       0     5951        M 0x80003050 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5961        M                                           #; (lsu) a0  <-- 0
       0     5962        M 0x80003054 mv      zero, a0               #; a0  = 0
       0     5963        M 0x80003058 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5964        M 0x8000305c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5966        M                                           #; (lsu) ra  <-- 0x80002e3c
       0     5967        M 0x80003060 ret                            #; ra  = 0x80002e3c, goto 0x80002e3c
       0     5970        M 0x80002e3c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5974        M 0x80002e40 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e40
       0     5975        M 0x80002e44 jalr    ra, ra, 556            #; ra  = 0x80002e40, (wrb) ra  <-- 0x80002e48, goto 0x8000306c
       0     5976        M 0x8000306c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5977        M 0x80003070 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5978        M 0x80003074 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002e48 ~~> Word[0x0011ff5c]
       0     5979        M 0x80003078 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003078
       0     5980        M 0x8000307c jalr    ra, ra, -1348          #; ra  = 0x80003078, (wrb) ra  <-- 0x80003080, goto 0x80002b34
       0     5993        M 0x80002b34 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5994        M 0x80002b38 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5995        M 0x80002b3c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5998        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5999        M 0x80002b40 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6002        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6003        M 0x80002b44 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     6004        M 0x80002b48 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6006        M                                           #; (lsu) a0  <-- 0
       0     6007        M 0x80002b4c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     6008        M 0x80002b50 ret                            #; ra  = 0x80003080, goto 0x80003080
       0     6009        M 0x80003080 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     6012        M                                           #; (lsu) t0  <-- 0
       0     6013        M 0x80003084 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     6014        M 0x80003088 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     6015        M 0x8000308c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     6016        M                                           #; (lsu) ra  <-- 0x80002e48
       0     6023        M 0x80003090 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     6024        M 0x80003094 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     6025        M 0x80003098 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003098
       0     6026        M 0x8000309c addi    t1, t1, 616            #; t1  = 0x80003098, (wrb) t1  <-- 0x80003300
       0     6034        M 0x800030a0 sw      t0, 0(t1)              #; t1  = 0x80003300, 1 ~~> Word[0x80003300]
       0     6035        M 0x800030a4 ret                            #; ra  = 0x80002e48, goto 0x80002e48
       0     6050        M 0x80002e48 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 6050):
snitch_loads                                   146
snitch_stores                                  173
fpss_stores                                      6
fpss_loads                                      73
snitch_avg_load_latency                    11.6849
snitch_occupancy                            0.2428
snitch_fseq_rel_offloads                    0.1179
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.5045
fpss_avg_load_latency                       5.1644
fpss_occupancy                              0.0325
fpss_fpu_occupancy                          0.0184
fpss_fpu_rel_occupancy                      0.5663
cycles                                        6039
total_ipc                                   0.2752
