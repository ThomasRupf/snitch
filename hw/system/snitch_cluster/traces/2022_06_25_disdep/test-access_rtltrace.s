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
       0      551        M 0x80002c78 addi    t0, t0, 1940           #; t0  = 0x80002c74, (wrb) t0  <-- 0x80003408
       0      552        M 0x80002c7c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c7c
       0      562        M 0x80002c80 addi    t1, t1, 1936           #; t1  = 0x80002c7c, (wrb) t1  <-- 0x8000340c
       0      563        M 0x80002c84 bge     t0, t1, pc + 16        #; t0  = 0x80003408, t1  = 0x8000340c, not taken
       0      564        M 0x80002c88 sw      zero, 0(t0)            #; t0  = 0x80003408, 0 ~~> Word[0x80003408]
       0      565        M 0x80002c8c addi    t0, t0, 4              #; t0  = 0x80003408, (wrb) t0  <-- 0x8000340c
       0      573        M 0x80002c90 blt     t0, t1, pc - 8         #; t0  = 0x8000340c, t1  = 0x8000340c, not taken
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
       0      877        M 0x80002df8 jalr    ra, ra, -1056          #; ra  = 0x80002df4, (wrb) ra  <-- 0x80002dfc, goto 0x800029d4
       0      899        M 0x800029d4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x800029d8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x800029dc lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x800029e0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x800029e4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x800029e8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x800029ec lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x800029f0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x800029f4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x800029f8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x800029fc csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x80002a00 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002a04 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002a08 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002a0c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x80002a10 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002a14 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002a18 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002a1c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002a20 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002a24 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002a28 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002a2c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002a30 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002a34 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002a38 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002a3c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002a40 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002a44 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002a48 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002a4c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002a50 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002a54 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002a58 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002a5c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002a60 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x80002a64 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x80002a68 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x80002a6c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002a70 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x80002a74 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x80002a78 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x80002a7c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002a80 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x80002a84 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x80002a88 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x80002a8c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x80002a90 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x80002a94 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x80002a98 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x80002a9c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002aa0 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x80002aa4 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x80002aa8 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x80002aac sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x80002ab0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x80002ab4 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x80002ab8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x80002abc sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80002ac0 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80002ac4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80002ac8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003ac8
       0     1273        M 0x80002acc addi    a1, a1, -1724          #; a1  = 0x80003ac8, (wrb) a1  <-- 0x8000340c
       0     1282        M 0x80002ad0 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000340c, (wrb) a0  <-- 0x8000340c
       0     1283        M 0x80002ad4 sw      zero, 0(a0)            #; a0  = 0x8000340c, 0 ~~> Word[0x8000340c]
       0     1284        M 0x80002ad8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x80002adc sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x80002ae0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x80002ae4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x80002ae8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x80002aec sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x80002af0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x80002af4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x80002af8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x80002afc sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x80002b00 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x80002b04 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x80002b08 lw      a0, 0(a1)              #; a1  = 0x8000340c, a0  <~~ Word[0x8000340c]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x80002b0c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002b10 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002b14 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x80002b18 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x80002b1c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x80002b20 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x80002b24 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x80002b28 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x80002b2c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80002b30 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80002b34 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80002b38 ret                            #; ra  = 0x80002dfc, goto 0x80002dfc
       0     1406        M 0x80002dfc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x80002e00 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x80002e04 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x80002e08 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x80002e0c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x80002e10 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x80002e14 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002e14
       0     1425        M 0x80002e18 addi    t0, t0, 60             #; t0  = 0x80002e14, (wrb) t0  <-- 0x80002e50
       0     1426        M 0x80002e1c csrw    mtvec, t0              #; t0  = 0x80002e50, (lsu) a4  <-- 4132
       0     1434        M 0x80002e20 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e20
       0     1435        M 0x80002e24 jalr    ra, ra, 544            #; ra  = 0x80002e20, (wrb) ra  <-- 0x80002e28, goto 0x80003040
       0     1451        M 0x80003040 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x80003044 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e28 ~~> Word[0x0011ff5c]
       0     1453        M 0x80003048 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003048
       0     1454        M 0x8000304c jalr    ra, ra, -1260          #; ra  = 0x80003048, (wrb) ra  <-- 0x80003050, goto 0x80002b5c
       0     1472        M 0x80002b5c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x80002b60 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80002b64 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80002b68 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x80002b6c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x80002b70 ret                            #; ra  = 0x80003050, goto 0x80003050
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80003050 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80003054 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80003058 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x8000305c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x80002e28
       0     1533        M 0x80003060 ret                            #; ra  = 0x80002e28, goto 0x80002e28
       0     1537        M 0x80002e28 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000e28
       0     1538        M 0x80002e2c jalr    ra, ra, -2036          #; ra  = 0x80000e28, (wrb) ra  <-- 0x80002e30, goto 0x80000634
       0     1543        M 0x80000634 addi    sp, sp, -752           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fc70
       0     1544        M 0x80000638 sw      ra, 748(sp)            #; sp  = 0x0011fc70, 0x80002e30 ~~> Word[0x0011ff5c]
       0     1547        M 0x8000063c fsd     fs0, 736(sp)           #; 0.0 ~~> Doub[0x0011ff50]
       0     1548        M 0x80000640 fsd     fs1, 728(sp)           #; 0.0 ~~> Doub[0x0011ff48]
       0     1549        M 0x80000644 fsd     fs2, 720(sp)           #; 0.0 ~~> Doub[0x0011ff40]
       0     1550        M 0x80000648 fsd     fs3, 712(sp)           #; 0.0 ~~> Doub[0x0011ff38]
       0     1551        M 0x8000064c fsd     fs4, 704(sp)           #; 0.0 ~~> Doub[0x0011ff30]
       0     1561        M 0x80000650 fsd     fs5, 696(sp)           #; 0.0 ~~> Doub[0x0011ff28]
       0     1563        M 0x80000654 fsd     fs6, 688(sp)           #; 0.0 ~~> Doub[0x0011ff20]
       0     1564        M 0x80000658 fsd     fs7, 680(sp)           #; 0.0 ~~> Doub[0x0011ff18]
       0     1565        M 0x8000065c fsd     fs8, 672(sp)           #; 0.0 ~~> Doub[0x0011ff10]
       0     1573        M 0x80000660 fsd     fs9, 664(sp)           #; 0.0 ~~> Doub[0x0011ff08]
       0     1574        M 0x8000066c lui     a0, 0x0                #; (wrb) a0  <-- 0
                         M 0x80000664 fsd     fs10, 656(sp)          #; 0.0 ~~> Doub[0x0011ff00]
       0     1575        M 0x80000668 fsd     fs11, 648(sp)          #; 0.0 ~~> Doub[0x0011fef8]
       0     1583        M 0x80000670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1584        M 0x80000674 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1585        M 0x80000678 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1587        M                                           #; (lsu) a1  <-- 0
       0     1588        M 0x8000067c bnez    a1, pc + 1736          #; a1  = 0, not taken
       0     1595        M 0x80000680 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1596        M 0x80000684 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1597        M 0x80000688 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1600        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1601        M 0x8000068c lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1604        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1611        M 0x80000690 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1614        M                                           #; (lsu) a0  <-- 0x00100000
       0     1615        M 0x80000694 lw      a3, 80(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
       0     1618        M                                           #; (lsu) a3  <-- 0x00100000
       0     1619        M 0x80000698 lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1620        M 0x8000069c addi    a2, a0, 864            #; a0  = 0x00100000, (wrb) a2  <-- 0x00100360
       0     1622        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1624        M 0x800006a0 add     a3, a4, a3             #; a4  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1625        M 0x800006a4 bgeu    a3, a2, pc + 12        #; a3  = 0x0011df30, a2  = 0x00100360, taken, goto 0x800006b0
       0     1637        M 0x800006b0 sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x00100360 ~~> Word[0x0011ffc8]
       0     1638        M 0x800006b4 li      a1, 1                  #; (wrb) a1  <-- 1
       0     1639        M 0x800006b8 li      a2, 109                #; (wrb) a2  <-- 109
       0     1640        M 0x800006bc mv      a3, a0                 #; a0  = 0x00100000, (wrb) a3  <-- 0x00100000
       0     1651        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 1
       0     1652        M 0x800006c8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1653        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 1.0 ~~> Doub[0x00100000]
       0     1663        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 2, a2  = 109, taken, goto 0x800006c0
       0     1665        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 2
       0     1666        M 0x800006c8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1667        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 2.0 ~~> Doub[0x00100008]
       0     1668        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 3, a2  = 109, taken, goto 0x800006c0
       0     1670        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 3
       0     1671        M 0x800006c8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1672        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 3.0 ~~> Doub[0x00100010]
       0     1673        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 4, a2  = 109, taken, goto 0x800006c0
       0     1675        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 4
       0     1676        M 0x800006c8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1677        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 4.0 ~~> Doub[0x00100018]
       0     1678        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 5, a2  = 109, taken, goto 0x800006c0
       0     1680        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 5
       0     1681        M 0x800006c8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     1682        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 5.0 ~~> Doub[0x00100020]
       0     1683        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 6, a2  = 109, taken, goto 0x800006c0
       0     1685        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 6
       0     1686        M 0x800006c8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     1687        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 6.0 ~~> Doub[0x00100028]
       0     1688        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 7, a2  = 109, taken, goto 0x800006c0
       0     1690        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 7
       0     1691        M 0x800006c8 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     1692        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 7.0 ~~> Doub[0x00100030]
       0     1693        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 8, a2  = 109, taken, goto 0x800006c0
       0     1695        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 8
       0     1696        M 0x800006c8 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     1697        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 8.0 ~~> Doub[0x00100038]
       0     1698        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 9, a2  = 109, taken, goto 0x800006c0
       0     1700        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 9
       0     1701        M 0x800006c8 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     1702        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 9.0 ~~> Doub[0x00100040]
       0     1703        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 10, a2  = 109, taken, goto 0x800006c0
       0     1705        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 10
       0     1706        M 0x800006c8 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
                         M                                           #; (f:fpu) ft0  <-- 10.0
       0     1707        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 10.0 ~~> Doub[0x00100048]
       0     1708        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 11, a2  = 109, taken, goto 0x800006c0
       0     1710        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 11
       0     1711        M 0x800006c8 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
                         M                                           #; (f:fpu) ft0  <-- 11.0
       0     1712        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 11.0 ~~> Doub[0x00100050]
       0     1713        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 12, a2  = 109, taken, goto 0x800006c0
       0     1715        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 12
       0     1716        M 0x800006c8 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
                         M                                           #; (f:fpu) ft0  <-- 12.0
       0     1717        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 12.0 ~~> Doub[0x00100058]
       0     1718        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 13, a2  = 109, taken, goto 0x800006c0
       0     1720        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 13
       0     1721        M 0x800006c8 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
                         M                                           #; (f:fpu) ft0  <-- 13.0
       0     1722        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 13.0 ~~> Doub[0x00100060]
       0     1723        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 14, a2  = 109, taken, goto 0x800006c0
       0     1725        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 14
       0     1726        M 0x800006c8 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
                         M                                           #; (f:fpu) ft0  <-- 14.0
       0     1727        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 14.0 ~~> Doub[0x00100068]
       0     1728        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 15, a2  = 109, taken, goto 0x800006c0
       0     1730        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 15
       0     1731        M 0x800006c8 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
                         M                                           #; (f:fpu) ft0  <-- 15.0
       0     1732        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 15.0 ~~> Doub[0x00100070]
       0     1733        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 16, a2  = 109, taken, goto 0x800006c0
       0     1735        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 16
       0     1736        M 0x800006c8 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
                         M                                           #; (f:fpu) ft0  <-- 16.0
       0     1737        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 16.0 ~~> Doub[0x00100078]
       0     1738        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 17, a2  = 109, taken, goto 0x800006c0
       0     1740        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 17
       0     1741        M 0x800006c8 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
                         M                                           #; (f:fpu) ft0  <-- 17.0
       0     1742        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 17.0 ~~> Doub[0x00100080]
       0     1743        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 18, a2  = 109, taken, goto 0x800006c0
       0     1745        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 18
       0     1746        M 0x800006c8 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
                         M                                           #; (f:fpu) ft0  <-- 18.0
       0     1747        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 18.0 ~~> Doub[0x00100088]
       0     1748        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 19, a2  = 109, taken, goto 0x800006c0
       0     1750        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 19
       0     1751        M 0x800006c8 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
                         M                                           #; (f:fpu) ft0  <-- 19.0
       0     1752        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 19.0 ~~> Doub[0x00100090]
       0     1753        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 20, a2  = 109, taken, goto 0x800006c0
       0     1755        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 20
       0     1756        M 0x800006c8 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
                         M                                           #; (f:fpu) ft0  <-- 20.0
       0     1757        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 20.0 ~~> Doub[0x00100098]
       0     1758        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 21, a2  = 109, taken, goto 0x800006c0
       0     1760        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 21
       0     1761        M 0x800006c8 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
                         M                                           #; (f:fpu) ft0  <-- 21.0
       0     1762        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 21.0 ~~> Doub[0x001000a0]
       0     1763        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 22, a2  = 109, taken, goto 0x800006c0
       0     1765        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 22
       0     1766        M 0x800006c8 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
                         M                                           #; (f:fpu) ft0  <-- 22.0
       0     1767        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 22.0 ~~> Doub[0x001000a8]
       0     1768        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 23, a2  = 109, taken, goto 0x800006c0
       0     1770        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 23
       0     1771        M 0x800006c8 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
                         M                                           #; (f:fpu) ft0  <-- 23.0
       0     1772        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 23.0 ~~> Doub[0x001000b0]
       0     1773        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 24, a2  = 109, taken, goto 0x800006c0
       0     1775        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 24
       0     1776        M 0x800006c8 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
                         M                                           #; (f:fpu) ft0  <-- 24.0
       0     1777        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 24.0 ~~> Doub[0x001000b8]
       0     1778        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 25, a2  = 109, taken, goto 0x800006c0
       0     1780        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 25
       0     1781        M 0x800006c8 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
                         M                                           #; (f:fpu) ft0  <-- 25.0
       0     1782        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 25.0 ~~> Doub[0x001000c0]
       0     1783        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 26, a2  = 109, taken, goto 0x800006c0
       0     1785        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 26
       0     1786        M 0x800006c8 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
                         M                                           #; (f:fpu) ft0  <-- 26.0
       0     1787        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000c8, (wrb) a3  <-- 0x001000d0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 26.0 ~~> Doub[0x001000c8]
       0     1788        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 27, a2  = 109, taken, goto 0x800006c0
       0     1790        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 27
       0     1791        M 0x800006c8 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
                         M                                           #; (f:fpu) ft0  <-- 27.0
       0     1792        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000d0, (wrb) a3  <-- 0x001000d8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 27.0 ~~> Doub[0x001000d0]
       0     1793        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 28, a2  = 109, taken, goto 0x800006c0
       0     1795        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 28
       0     1796        M 0x800006c8 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
                         M                                           #; (f:fpu) ft0  <-- 28.0
       0     1797        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000d8, (wrb) a3  <-- 0x001000e0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 28.0 ~~> Doub[0x001000d8]
       0     1798        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 29, a2  = 109, taken, goto 0x800006c0
       0     1800        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 29
       0     1801        M 0x800006c8 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
                         M                                           #; (f:fpu) ft0  <-- 29.0
       0     1802        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000e0, (wrb) a3  <-- 0x001000e8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 29.0 ~~> Doub[0x001000e0]
       0     1803        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 30, a2  = 109, taken, goto 0x800006c0
       0     1805        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 30
       0     1806        M 0x800006c8 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
                         M                                           #; (f:fpu) ft0  <-- 30.0
       0     1807        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000e8, (wrb) a3  <-- 0x001000f0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 30.0 ~~> Doub[0x001000e8]
       0     1808        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 31, a2  = 109, taken, goto 0x800006c0
       0     1810        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 31
       0     1811        M 0x800006c8 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
                         M                                           #; (f:fpu) ft0  <-- 31.0
       0     1812        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000f0, (wrb) a3  <-- 0x001000f8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 31.0 ~~> Doub[0x001000f0]
       0     1813        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 32, a2  = 109, taken, goto 0x800006c0
       0     1815        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 32
       0     1816        M 0x800006c8 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
                         M                                           #; (f:fpu) ft0  <-- 32.0
       0     1817        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001000f8, (wrb) a3  <-- 0x00100100
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 32.0 ~~> Doub[0x001000f8]
       0     1818        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 33, a2  = 109, taken, goto 0x800006c0
       0     1820        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 33
       0     1821        M 0x800006c8 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
                         M                                           #; (f:fpu) ft0  <-- 33.0
       0     1822        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100100, (wrb) a3  <-- 0x00100108
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 33.0 ~~> Doub[0x00100100]
       0     1823        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 34, a2  = 109, taken, goto 0x800006c0
       0     1825        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 34
       0     1826        M 0x800006c8 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
                         M                                           #; (f:fpu) ft0  <-- 34.0
       0     1827        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100108, (wrb) a3  <-- 0x00100110
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 34.0 ~~> Doub[0x00100108]
       0     1828        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 35, a2  = 109, taken, goto 0x800006c0
       0     1830        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 35
       0     1831        M 0x800006c8 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
                         M                                           #; (f:fpu) ft0  <-- 35.0
       0     1832        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100110, (wrb) a3  <-- 0x00100118
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 35.0 ~~> Doub[0x00100110]
       0     1833        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 36, a2  = 109, taken, goto 0x800006c0
       0     1835        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 36
       0     1836        M 0x800006c8 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
                         M                                           #; (f:fpu) ft0  <-- 36.0
       0     1837        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100118, (wrb) a3  <-- 0x00100120
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 36.0 ~~> Doub[0x00100118]
       0     1838        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 37, a2  = 109, taken, goto 0x800006c0
       0     1840        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 37
       0     1841        M 0x800006c8 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
                         M                                           #; (f:fpu) ft0  <-- 37.0
       0     1842        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100120, (wrb) a3  <-- 0x00100128
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 37.0 ~~> Doub[0x00100120]
       0     1843        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 38, a2  = 109, taken, goto 0x800006c0
       0     1845        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 38
       0     1846        M 0x800006c8 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
                         M                                           #; (f:fpu) ft0  <-- 38.0
       0     1847        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100128, (wrb) a3  <-- 0x00100130
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 38.0 ~~> Doub[0x00100128]
       0     1848        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 39, a2  = 109, taken, goto 0x800006c0
       0     1850        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 39
       0     1851        M 0x800006c8 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
                         M                                           #; (f:fpu) ft0  <-- 39.0
       0     1852        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100130, (wrb) a3  <-- 0x00100138
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 39.0 ~~> Doub[0x00100130]
       0     1853        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 40, a2  = 109, taken, goto 0x800006c0
       0     1855        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 40
       0     1856        M 0x800006c8 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
                         M                                           #; (f:fpu) ft0  <-- 40.0
       0     1857        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100138, (wrb) a3  <-- 0x00100140
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 40.0 ~~> Doub[0x00100138]
       0     1858        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 41, a2  = 109, taken, goto 0x800006c0
       0     1860        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 41
       0     1861        M 0x800006c8 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
                         M                                           #; (f:fpu) ft0  <-- 41.0
       0     1862        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100140, (wrb) a3  <-- 0x00100148
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 41.0 ~~> Doub[0x00100140]
       0     1863        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 42, a2  = 109, taken, goto 0x800006c0
       0     1865        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 42
       0     1866        M 0x800006c8 addi    a1, a1, 1              #; a1  = 42, (wrb) a1  <-- 43
                         M                                           #; (f:fpu) ft0  <-- 42.0
       0     1867        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100148, (wrb) a3  <-- 0x00100150
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 42.0 ~~> Doub[0x00100148]
       0     1868        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 43, a2  = 109, taken, goto 0x800006c0
       0     1870        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 43
       0     1871        M 0x800006c8 addi    a1, a1, 1              #; a1  = 43, (wrb) a1  <-- 44
                         M                                           #; (f:fpu) ft0  <-- 43.0
       0     1872        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100150, (wrb) a3  <-- 0x00100158
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 43.0 ~~> Doub[0x00100150]
       0     1873        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 44, a2  = 109, taken, goto 0x800006c0
       0     1875        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 44
       0     1876        M 0x800006c8 addi    a1, a1, 1              #; a1  = 44, (wrb) a1  <-- 45
                         M                                           #; (f:fpu) ft0  <-- 44.0
       0     1877        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100158, (wrb) a3  <-- 0x00100160
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 44.0 ~~> Doub[0x00100158]
       0     1878        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 45, a2  = 109, taken, goto 0x800006c0
       0     1880        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 45
       0     1881        M 0x800006c8 addi    a1, a1, 1              #; a1  = 45, (wrb) a1  <-- 46
                         M                                           #; (f:fpu) ft0  <-- 45.0
       0     1882        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100160, (wrb) a3  <-- 0x00100168
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 45.0 ~~> Doub[0x00100160]
       0     1883        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 46, a2  = 109, taken, goto 0x800006c0
       0     1885        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 46
       0     1886        M 0x800006c8 addi    a1, a1, 1              #; a1  = 46, (wrb) a1  <-- 47
                         M                                           #; (f:fpu) ft0  <-- 46.0
       0     1887        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100168, (wrb) a3  <-- 0x00100170
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 46.0 ~~> Doub[0x00100168]
       0     1888        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 47, a2  = 109, taken, goto 0x800006c0
       0     1890        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 47
       0     1891        M 0x800006c8 addi    a1, a1, 1              #; a1  = 47, (wrb) a1  <-- 48
                         M                                           #; (f:fpu) ft0  <-- 47.0
       0     1892        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100170, (wrb) a3  <-- 0x00100178
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 47.0 ~~> Doub[0x00100170]
       0     1893        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 48, a2  = 109, taken, goto 0x800006c0
       0     1895        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 48
       0     1896        M 0x800006c8 addi    a1, a1, 1              #; a1  = 48, (wrb) a1  <-- 49
                         M                                           #; (f:fpu) ft0  <-- 48.0
       0     1897        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100178, (wrb) a3  <-- 0x00100180
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 48.0 ~~> Doub[0x00100178]
       0     1898        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 49, a2  = 109, taken, goto 0x800006c0
       0     1900        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 49
       0     1901        M 0x800006c8 addi    a1, a1, 1              #; a1  = 49, (wrb) a1  <-- 50
                         M                                           #; (f:fpu) ft0  <-- 49.0
       0     1902        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100180, (wrb) a3  <-- 0x00100188
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 49.0 ~~> Doub[0x00100180]
       0     1903        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 50, a2  = 109, taken, goto 0x800006c0
       0     1905        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 50
       0     1906        M 0x800006c8 addi    a1, a1, 1              #; a1  = 50, (wrb) a1  <-- 51
                         M                                           #; (f:fpu) ft0  <-- 50.0
       0     1907        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100188, (wrb) a3  <-- 0x00100190
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 50.0 ~~> Doub[0x00100188]
       0     1908        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 51, a2  = 109, taken, goto 0x800006c0
       0     1910        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 51
       0     1911        M 0x800006c8 addi    a1, a1, 1              #; a1  = 51, (wrb) a1  <-- 52
                         M                                           #; (f:fpu) ft0  <-- 51.0
       0     1912        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100190, (wrb) a3  <-- 0x00100198
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 51.0 ~~> Doub[0x00100190]
       0     1913        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 52, a2  = 109, taken, goto 0x800006c0
       0     1915        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 52
       0     1916        M 0x800006c8 addi    a1, a1, 1              #; a1  = 52, (wrb) a1  <-- 53
                         M                                           #; (f:fpu) ft0  <-- 52.0
       0     1917        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100198, (wrb) a3  <-- 0x001001a0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 52.0 ~~> Doub[0x00100198]
       0     1918        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 53, a2  = 109, taken, goto 0x800006c0
       0     1920        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 53
       0     1921        M 0x800006c8 addi    a1, a1, 1              #; a1  = 53, (wrb) a1  <-- 54
                         M                                           #; (f:fpu) ft0  <-- 53.0
       0     1922        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001a0, (wrb) a3  <-- 0x001001a8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 53.0 ~~> Doub[0x001001a0]
       0     1923        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 54, a2  = 109, taken, goto 0x800006c0
       0     1925        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 54
       0     1926        M 0x800006c8 addi    a1, a1, 1              #; a1  = 54, (wrb) a1  <-- 55
                         M                                           #; (f:fpu) ft0  <-- 54.0
       0     1927        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001a8, (wrb) a3  <-- 0x001001b0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 54.0 ~~> Doub[0x001001a8]
       0     1928        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 55, a2  = 109, taken, goto 0x800006c0
       0     1930        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 55
       0     1931        M 0x800006c8 addi    a1, a1, 1              #; a1  = 55, (wrb) a1  <-- 56
                         M                                           #; (f:fpu) ft0  <-- 55.0
       0     1932        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001b0, (wrb) a3  <-- 0x001001b8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 55.0 ~~> Doub[0x001001b0]
       0     1933        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 56, a2  = 109, taken, goto 0x800006c0
       0     1935        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 56
       0     1936        M 0x800006c8 addi    a1, a1, 1              #; a1  = 56, (wrb) a1  <-- 57
                         M                                           #; (f:fpu) ft0  <-- 56.0
       0     1937        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001b8, (wrb) a3  <-- 0x001001c0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 56.0 ~~> Doub[0x001001b8]
       0     1938        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 57, a2  = 109, taken, goto 0x800006c0
       0     1940        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 57
       0     1941        M 0x800006c8 addi    a1, a1, 1              #; a1  = 57, (wrb) a1  <-- 58
                         M                                           #; (f:fpu) ft0  <-- 57.0
       0     1942        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001c0, (wrb) a3  <-- 0x001001c8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 57.0 ~~> Doub[0x001001c0]
       0     1943        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 58, a2  = 109, taken, goto 0x800006c0
       0     1945        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 58
       0     1946        M 0x800006c8 addi    a1, a1, 1              #; a1  = 58, (wrb) a1  <-- 59
                         M                                           #; (f:fpu) ft0  <-- 58.0
       0     1947        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001c8, (wrb) a3  <-- 0x001001d0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 58.0 ~~> Doub[0x001001c8]
       0     1948        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 59, a2  = 109, taken, goto 0x800006c0
       0     1950        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 59
       0     1951        M 0x800006c8 addi    a1, a1, 1              #; a1  = 59, (wrb) a1  <-- 60
                         M                                           #; (f:fpu) ft0  <-- 59.0
       0     1952        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001d0, (wrb) a3  <-- 0x001001d8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 59.0 ~~> Doub[0x001001d0]
       0     1953        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 60, a2  = 109, taken, goto 0x800006c0
       0     1955        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 60
       0     1956        M 0x800006c8 addi    a1, a1, 1              #; a1  = 60, (wrb) a1  <-- 61
                         M                                           #; (f:fpu) ft0  <-- 60.0
       0     1957        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001d8, (wrb) a3  <-- 0x001001e0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 60.0 ~~> Doub[0x001001d8]
       0     1958        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 61, a2  = 109, taken, goto 0x800006c0
       0     1960        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 61
       0     1961        M 0x800006c8 addi    a1, a1, 1              #; a1  = 61, (wrb) a1  <-- 62
                         M                                           #; (f:fpu) ft0  <-- 61.0
       0     1962        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001e0, (wrb) a3  <-- 0x001001e8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 61.0 ~~> Doub[0x001001e0]
       0     1963        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 62, a2  = 109, taken, goto 0x800006c0
       0     1965        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 62
       0     1966        M 0x800006c8 addi    a1, a1, 1              #; a1  = 62, (wrb) a1  <-- 63
                         M                                           #; (f:fpu) ft0  <-- 62.0
       0     1967        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001e8, (wrb) a3  <-- 0x001001f0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 62.0 ~~> Doub[0x001001e8]
       0     1968        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 63, a2  = 109, taken, goto 0x800006c0
       0     1970        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 63
       0     1971        M 0x800006c8 addi    a1, a1, 1              #; a1  = 63, (wrb) a1  <-- 64
                         M                                           #; (f:fpu) ft0  <-- 63.0
       0     1972        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001f0, (wrb) a3  <-- 0x001001f8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 63.0 ~~> Doub[0x001001f0]
       0     1973        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 64, a2  = 109, taken, goto 0x800006c0
       0     1975        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 64
       0     1976        M 0x800006c8 addi    a1, a1, 1              #; a1  = 64, (wrb) a1  <-- 65
                         M                                           #; (f:fpu) ft0  <-- 64.0
       0     1977        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001001f8, (wrb) a3  <-- 0x00100200
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 64.0 ~~> Doub[0x001001f8]
       0     1978        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 65, a2  = 109, taken, goto 0x800006c0
       0     1980        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 65
       0     1981        M 0x800006c8 addi    a1, a1, 1              #; a1  = 65, (wrb) a1  <-- 66
                         M                                           #; (f:fpu) ft0  <-- 65.0
       0     1982        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100200, (wrb) a3  <-- 0x00100208
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 65.0 ~~> Doub[0x00100200]
       0     1983        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 66, a2  = 109, taken, goto 0x800006c0
       0     1985        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 66
       0     1986        M 0x800006c8 addi    a1, a1, 1              #; a1  = 66, (wrb) a1  <-- 67
                         M                                           #; (f:fpu) ft0  <-- 66.0
       0     1987        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100208, (wrb) a3  <-- 0x00100210
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 66.0 ~~> Doub[0x00100208]
       0     1988        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 67, a2  = 109, taken, goto 0x800006c0
       0     1990        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 67
       0     1991        M 0x800006c8 addi    a1, a1, 1              #; a1  = 67, (wrb) a1  <-- 68
                         M                                           #; (f:fpu) ft0  <-- 67.0
       0     1992        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100210, (wrb) a3  <-- 0x00100218
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 67.0 ~~> Doub[0x00100210]
       0     1993        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 68, a2  = 109, taken, goto 0x800006c0
       0     1995        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 68
       0     1996        M 0x800006c8 addi    a1, a1, 1              #; a1  = 68, (wrb) a1  <-- 69
                         M                                           #; (f:fpu) ft0  <-- 68.0
       0     1997        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100218, (wrb) a3  <-- 0x00100220
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 68.0 ~~> Doub[0x00100218]
       0     1998        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 69, a2  = 109, taken, goto 0x800006c0
       0     2000        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 69
       0     2001        M 0x800006c8 addi    a1, a1, 1              #; a1  = 69, (wrb) a1  <-- 70
                         M                                           #; (f:fpu) ft0  <-- 69.0
       0     2002        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100220, (wrb) a3  <-- 0x00100228
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 69.0 ~~> Doub[0x00100220]
       0     2003        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 70, a2  = 109, taken, goto 0x800006c0
       0     2005        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 70
       0     2006        M 0x800006c8 addi    a1, a1, 1              #; a1  = 70, (wrb) a1  <-- 71
                         M                                           #; (f:fpu) ft0  <-- 70.0
       0     2007        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100228, (wrb) a3  <-- 0x00100230
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 70.0 ~~> Doub[0x00100228]
       0     2008        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 71, a2  = 109, taken, goto 0x800006c0
       0     2010        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 71
       0     2011        M 0x800006c8 addi    a1, a1, 1              #; a1  = 71, (wrb) a1  <-- 72
                         M                                           #; (f:fpu) ft0  <-- 71.0
       0     2012        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100230, (wrb) a3  <-- 0x00100238
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 71.0 ~~> Doub[0x00100230]
       0     2013        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 72, a2  = 109, taken, goto 0x800006c0
       0     2015        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 72
       0     2016        M 0x800006c8 addi    a1, a1, 1              #; a1  = 72, (wrb) a1  <-- 73
                         M                                           #; (f:fpu) ft0  <-- 72.0
       0     2017        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100238, (wrb) a3  <-- 0x00100240
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 72.0 ~~> Doub[0x00100238]
       0     2018        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 73, a2  = 109, taken, goto 0x800006c0
       0     2020        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 73
       0     2021        M 0x800006c8 addi    a1, a1, 1              #; a1  = 73, (wrb) a1  <-- 74
                         M                                           #; (f:fpu) ft0  <-- 73.0
       0     2022        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100240, (wrb) a3  <-- 0x00100248
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 73.0 ~~> Doub[0x00100240]
       0     2023        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 74, a2  = 109, taken, goto 0x800006c0
       0     2025        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 74
       0     2026        M 0x800006c8 addi    a1, a1, 1              #; a1  = 74, (wrb) a1  <-- 75
                         M                                           #; (f:fpu) ft0  <-- 74.0
       0     2027        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100248, (wrb) a3  <-- 0x00100250
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 74.0 ~~> Doub[0x00100248]
       0     2028        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 75, a2  = 109, taken, goto 0x800006c0
       0     2030        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 75
       0     2031        M 0x800006c8 addi    a1, a1, 1              #; a1  = 75, (wrb) a1  <-- 76
                         M                                           #; (f:fpu) ft0  <-- 75.0
       0     2032        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100250, (wrb) a3  <-- 0x00100258
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 75.0 ~~> Doub[0x00100250]
       0     2033        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 76, a2  = 109, taken, goto 0x800006c0
       0     2035        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 76
       0     2036        M 0x800006c8 addi    a1, a1, 1              #; a1  = 76, (wrb) a1  <-- 77
                         M                                           #; (f:fpu) ft0  <-- 76.0
       0     2037        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100258, (wrb) a3  <-- 0x00100260
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 76.0 ~~> Doub[0x00100258]
       0     2038        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 77, a2  = 109, taken, goto 0x800006c0
       0     2040        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 77
       0     2041        M 0x800006c8 addi    a1, a1, 1              #; a1  = 77, (wrb) a1  <-- 78
                         M                                           #; (f:fpu) ft0  <-- 77.0
       0     2042        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100260, (wrb) a3  <-- 0x00100268
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 77.0 ~~> Doub[0x00100260]
       0     2043        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 78, a2  = 109, taken, goto 0x800006c0
       0     2045        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 78
       0     2046        M 0x800006c8 addi    a1, a1, 1              #; a1  = 78, (wrb) a1  <-- 79
                         M                                           #; (f:fpu) ft0  <-- 78.0
       0     2047        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100268, (wrb) a3  <-- 0x00100270
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 78.0 ~~> Doub[0x00100268]
       0     2048        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 79, a2  = 109, taken, goto 0x800006c0
       0     2050        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 79
       0     2051        M 0x800006c8 addi    a1, a1, 1              #; a1  = 79, (wrb) a1  <-- 80
                         M                                           #; (f:fpu) ft0  <-- 79.0
       0     2052        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100270, (wrb) a3  <-- 0x00100278
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 79.0 ~~> Doub[0x00100270]
       0     2053        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 80, a2  = 109, taken, goto 0x800006c0
       0     2055        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 80
       0     2056        M 0x800006c8 addi    a1, a1, 1              #; a1  = 80, (wrb) a1  <-- 81
                         M                                           #; (f:fpu) ft0  <-- 80.0
       0     2057        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100278, (wrb) a3  <-- 0x00100280
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 80.0 ~~> Doub[0x00100278]
       0     2058        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 81, a2  = 109, taken, goto 0x800006c0
       0     2060        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 81
       0     2061        M 0x800006c8 addi    a1, a1, 1              #; a1  = 81, (wrb) a1  <-- 82
                         M                                           #; (f:fpu) ft0  <-- 81.0
       0     2062        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100280, (wrb) a3  <-- 0x00100288
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 81.0 ~~> Doub[0x00100280]
       0     2063        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 82, a2  = 109, taken, goto 0x800006c0
       0     2065        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 82
       0     2066        M 0x800006c8 addi    a1, a1, 1              #; a1  = 82, (wrb) a1  <-- 83
                         M                                           #; (f:fpu) ft0  <-- 82.0
       0     2067        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100288, (wrb) a3  <-- 0x00100290
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 82.0 ~~> Doub[0x00100288]
       0     2068        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 83, a2  = 109, taken, goto 0x800006c0
       0     2070        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 83
       0     2071        M 0x800006c8 addi    a1, a1, 1              #; a1  = 83, (wrb) a1  <-- 84
                         M                                           #; (f:fpu) ft0  <-- 83.0
       0     2072        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100290, (wrb) a3  <-- 0x00100298
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 83.0 ~~> Doub[0x00100290]
       0     2073        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 84, a2  = 109, taken, goto 0x800006c0
       0     2075        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 84
       0     2076        M 0x800006c8 addi    a1, a1, 1              #; a1  = 84, (wrb) a1  <-- 85
                         M                                           #; (f:fpu) ft0  <-- 84.0
       0     2077        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100298, (wrb) a3  <-- 0x001002a0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 84.0 ~~> Doub[0x00100298]
       0     2078        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 85, a2  = 109, taken, goto 0x800006c0
       0     2080        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 85
       0     2081        M 0x800006c8 addi    a1, a1, 1              #; a1  = 85, (wrb) a1  <-- 86
                         M                                           #; (f:fpu) ft0  <-- 85.0
       0     2082        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002a0, (wrb) a3  <-- 0x001002a8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 85.0 ~~> Doub[0x001002a0]
       0     2083        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 86, a2  = 109, taken, goto 0x800006c0
       0     2085        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 86
       0     2086        M 0x800006c8 addi    a1, a1, 1              #; a1  = 86, (wrb) a1  <-- 87
                         M                                           #; (f:fpu) ft0  <-- 86.0
       0     2087        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002a8, (wrb) a3  <-- 0x001002b0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 86.0 ~~> Doub[0x001002a8]
       0     2088        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 87, a2  = 109, taken, goto 0x800006c0
       0     2090        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 87
       0     2091        M 0x800006c8 addi    a1, a1, 1              #; a1  = 87, (wrb) a1  <-- 88
                         M                                           #; (f:fpu) ft0  <-- 87.0
       0     2092        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002b0, (wrb) a3  <-- 0x001002b8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 87.0 ~~> Doub[0x001002b0]
       0     2093        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 88, a2  = 109, taken, goto 0x800006c0
       0     2095        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 88
       0     2096        M 0x800006c8 addi    a1, a1, 1              #; a1  = 88, (wrb) a1  <-- 89
                         M                                           #; (f:fpu) ft0  <-- 88.0
       0     2097        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002b8, (wrb) a3  <-- 0x001002c0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 88.0 ~~> Doub[0x001002b8]
       0     2098        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 89, a2  = 109, taken, goto 0x800006c0
       0     2100        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 89
       0     2101        M 0x800006c8 addi    a1, a1, 1              #; a1  = 89, (wrb) a1  <-- 90
                         M                                           #; (f:fpu) ft0  <-- 89.0
       0     2102        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002c0, (wrb) a3  <-- 0x001002c8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 89.0 ~~> Doub[0x001002c0]
       0     2103        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 90, a2  = 109, taken, goto 0x800006c0
       0     2105        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 90
       0     2106        M 0x800006c8 addi    a1, a1, 1              #; a1  = 90, (wrb) a1  <-- 91
                         M                                           #; (f:fpu) ft0  <-- 90.0
       0     2107        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002c8, (wrb) a3  <-- 0x001002d0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 90.0 ~~> Doub[0x001002c8]
       0     2108        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 91, a2  = 109, taken, goto 0x800006c0
       0     2110        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 91
       0     2111        M 0x800006c8 addi    a1, a1, 1              #; a1  = 91, (wrb) a1  <-- 92
                         M                                           #; (f:fpu) ft0  <-- 91.0
       0     2112        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002d0, (wrb) a3  <-- 0x001002d8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 91.0 ~~> Doub[0x001002d0]
       0     2113        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 92, a2  = 109, taken, goto 0x800006c0
       0     2115        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 92
       0     2116        M 0x800006c8 addi    a1, a1, 1              #; a1  = 92, (wrb) a1  <-- 93
                         M                                           #; (f:fpu) ft0  <-- 92.0
       0     2117        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002d8, (wrb) a3  <-- 0x001002e0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 92.0 ~~> Doub[0x001002d8]
       0     2118        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 93, a2  = 109, taken, goto 0x800006c0
       0     2120        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 93
       0     2121        M 0x800006c8 addi    a1, a1, 1              #; a1  = 93, (wrb) a1  <-- 94
                         M                                           #; (f:fpu) ft0  <-- 93.0
       0     2122        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002e0, (wrb) a3  <-- 0x001002e8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 93.0 ~~> Doub[0x001002e0]
       0     2123        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 94, a2  = 109, taken, goto 0x800006c0
       0     2125        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 94
       0     2126        M 0x800006c8 addi    a1, a1, 1              #; a1  = 94, (wrb) a1  <-- 95
                         M                                           #; (f:fpu) ft0  <-- 94.0
       0     2127        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002e8, (wrb) a3  <-- 0x001002f0
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 94.0 ~~> Doub[0x001002e8]
       0     2128        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 95, a2  = 109, taken, goto 0x800006c0
       0     2130        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 95
       0     2131        M 0x800006c8 addi    a1, a1, 1              #; a1  = 95, (wrb) a1  <-- 96
                         M                                           #; (f:fpu) ft0  <-- 95.0
       0     2132        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002f0, (wrb) a3  <-- 0x001002f8
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 95.0 ~~> Doub[0x001002f0]
       0     2133        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 96, a2  = 109, taken, goto 0x800006c0
       0     2135        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 96
       0     2136        M 0x800006c8 addi    a1, a1, 1              #; a1  = 96, (wrb) a1  <-- 97
                         M                                           #; (f:fpu) ft0  <-- 96.0
       0     2137        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x001002f8, (wrb) a3  <-- 0x00100300
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 96.0 ~~> Doub[0x001002f8]
       0     2138        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 97, a2  = 109, taken, goto 0x800006c0
       0     2140        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 97
       0     2141        M 0x800006c8 addi    a1, a1, 1              #; a1  = 97, (wrb) a1  <-- 98
                         M                                           #; (f:fpu) ft0  <-- 97.0
       0     2142        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100300, (wrb) a3  <-- 0x00100308
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 97.0 ~~> Doub[0x00100300]
       0     2143        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 98, a2  = 109, taken, goto 0x800006c0
       0     2145        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 98
       0     2146        M 0x800006c8 addi    a1, a1, 1              #; a1  = 98, (wrb) a1  <-- 99
                         M                                           #; (f:fpu) ft0  <-- 98.0
       0     2147        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100308, (wrb) a3  <-- 0x00100310
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 98.0 ~~> Doub[0x00100308]
       0     2148        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 99, a2  = 109, taken, goto 0x800006c0
       0     2150        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 99
       0     2151        M 0x800006c8 addi    a1, a1, 1              #; a1  = 99, (wrb) a1  <-- 100
                         M                                           #; (f:fpu) ft0  <-- 99.0
       0     2152        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100310, (wrb) a3  <-- 0x00100318
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 99.0 ~~> Doub[0x00100310]
       0     2153        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 100, a2  = 109, taken, goto 0x800006c0
       0     2155        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 100
       0     2156        M 0x800006c8 addi    a1, a1, 1              #; a1  = 100, (wrb) a1  <-- 101
                         M                                           #; (f:fpu) ft0  <-- 100.0
       0     2157        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100318, (wrb) a3  <-- 0x00100320
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 100.0 ~~> Doub[0x00100318]
       0     2158        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 101, a2  = 109, taken, goto 0x800006c0
       0     2160        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 101
       0     2161        M 0x800006c8 addi    a1, a1, 1              #; a1  = 101, (wrb) a1  <-- 102
                         M                                           #; (f:fpu) ft0  <-- 101.0
       0     2162        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100320, (wrb) a3  <-- 0x00100328
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 101.0 ~~> Doub[0x00100320]
       0     2163        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 102, a2  = 109, taken, goto 0x800006c0
       0     2165        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 102
       0     2166        M 0x800006c8 addi    a1, a1, 1              #; a1  = 102, (wrb) a1  <-- 103
                         M                                           #; (f:fpu) ft0  <-- 102.0
       0     2167        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100328, (wrb) a3  <-- 0x00100330
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 102.0 ~~> Doub[0x00100328]
       0     2168        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 103, a2  = 109, taken, goto 0x800006c0
       0     2170        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 103
       0     2171        M 0x800006c8 addi    a1, a1, 1              #; a1  = 103, (wrb) a1  <-- 104
                         M                                           #; (f:fpu) ft0  <-- 103.0
       0     2172        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100330, (wrb) a3  <-- 0x00100338
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 103.0 ~~> Doub[0x00100330]
       0     2173        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 104, a2  = 109, taken, goto 0x800006c0
       0     2175        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 104
       0     2176        M 0x800006c8 addi    a1, a1, 1              #; a1  = 104, (wrb) a1  <-- 105
                         M                                           #; (f:fpu) ft0  <-- 104.0
       0     2177        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100338, (wrb) a3  <-- 0x00100340
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 104.0 ~~> Doub[0x00100338]
       0     2178        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 105, a2  = 109, taken, goto 0x800006c0
       0     2180        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 105
       0     2181        M 0x800006c8 addi    a1, a1, 1              #; a1  = 105, (wrb) a1  <-- 106
                         M                                           #; (f:fpu) ft0  <-- 105.0
       0     2182        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100340, (wrb) a3  <-- 0x00100348
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 105.0 ~~> Doub[0x00100340]
       0     2183        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 106, a2  = 109, taken, goto 0x800006c0
       0     2185        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 106
       0     2186        M 0x800006c8 addi    a1, a1, 1              #; a1  = 106, (wrb) a1  <-- 107
                         M                                           #; (f:fpu) ft0  <-- 106.0
       0     2187        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100348, (wrb) a3  <-- 0x00100350
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 106.0 ~~> Doub[0x00100348]
       0     2188        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 107, a2  = 109, taken, goto 0x800006c0
       0     2190        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 107
       0     2191        M 0x800006c8 addi    a1, a1, 1              #; a1  = 107, (wrb) a1  <-- 108
                         M                                           #; (f:fpu) ft0  <-- 107.0
       0     2192        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100350, (wrb) a3  <-- 0x00100358
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 107.0 ~~> Doub[0x00100350]
       0     2193        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 108, a2  = 109, taken, goto 0x800006c0
       0     2195        M 0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 108
       0     2196        M 0x800006c8 addi    a1, a1, 1              #; a1  = 108, (wrb) a1  <-- 109
                         M                                           #; (f:fpu) ft0  <-- 108.0
       0     2197        M 0x800006cc addi    a3, a3, 8              #; a3  = 0x00100358, (wrb) a3  <-- 0x00100360
                         M 0x800006c4 fsd     ft0, 0(a3)             #; 108.0 ~~> Doub[0x00100358]
       0     2198        M 0x800006d0 bne     a1, a2, pc - 16        #; a1  = 109, a2  = 109, not taken
       0     2201        M 0x800006d4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100000]
       0     2202        M                                           #; (f:lsu) ft0  <-- 1.0
       0     2203        M 0x800006d8 fsd     ft0, 632(sp)           #; 1.0 ~~> Doub[0x0011fee8]
       0     2204        M 0x800006dc fld     ft0, 8(a0)             #; ft0  <~~ Doub[0x00100008]
       0     2205        M                                           #; (f:lsu) ft0  <-- 2.0
       0     2213        M 0x800006e0 fsd     ft0, 624(sp)           #; 2.0 ~~> Doub[0x0011fee0]
       0     2214        M 0x800006e4 fld     ft0, 16(a0)            #; ft0  <~~ Doub[0x00100010]
       0     2215        M                                           #; (f:lsu) ft0  <-- 3.0
       0     2216        M 0x800006e8 fsd     ft0, 616(sp)           #; 3.0 ~~> Doub[0x0011fed8]
       0     2217        M 0x800006ec fld     ft0, 24(a0)            #; ft0  <~~ Doub[0x00100018]
       0     2218        M                                           #; (f:lsu) ft0  <-- 4.0
       0     2225        M 0x800006f0 fsd     ft0, 608(sp)           #; 4.0 ~~> Doub[0x0011fed0]
       0     2226        M 0x800006f4 fld     ft0, 32(a0)            #; ft0  <~~ Doub[0x00100020]
       0     2227        M                                           #; (f:lsu) ft0  <-- 5.0
       0     2228        M 0x800006f8 fsd     ft0, 600(sp)           #; 5.0 ~~> Doub[0x0011fec8]
       0     2229        M 0x800006fc fld     ft0, 40(a0)            #; ft0  <~~ Doub[0x00100028]
       0     2230        M                                           #; (f:lsu) ft0  <-- 6.0
       0     2237        M 0x80000700 fsd     ft0, 592(sp)           #; 6.0 ~~> Doub[0x0011fec0]
       0     2238        M 0x80000704 fld     ft0, 48(a0)            #; ft0  <~~ Doub[0x00100030]
       0     2239        M                                           #; (f:lsu) ft0  <-- 7.0
       0     2240        M 0x80000708 fsd     ft0, 584(sp)           #; 7.0 ~~> Doub[0x0011feb8]
       0     2241        M 0x8000070c fld     ft0, 56(a0)            #; ft0  <~~ Doub[0x00100038]
       0     2242        M                                           #; (f:lsu) ft0  <-- 8.0
       0     2249        M 0x80000710 fsd     ft0, 576(sp)           #; 8.0 ~~> Doub[0x0011feb0]
       0     2250        M 0x80000714 fld     ft0, 64(a0)            #; ft0  <~~ Doub[0x00100040]
       0     2251        M                                           #; (f:lsu) ft0  <-- 9.0
       0     2252        M 0x80000718 fsd     ft0, 568(sp)           #; 9.0 ~~> Doub[0x0011fea8]
       0     2253        M 0x8000071c fld     ft0, 72(a0)            #; ft0  <~~ Doub[0x00100048]
       0     2254        M                                           #; (f:lsu) ft0  <-- 10.0
       0     2261        M 0x80000720 fsd     ft0, 560(sp)           #; 10.0 ~~> Doub[0x0011fea0]
       0     2262        M 0x80000724 fld     ft0, 80(a0)            #; ft0  <~~ Doub[0x00100050]
       0     2263        M                                           #; (f:lsu) ft0  <-- 11.0
       0     2264        M 0x80000728 fsd     ft0, 552(sp)           #; 11.0 ~~> Doub[0x0011fe98]
       0     2265        M 0x8000072c fld     ft0, 88(a0)            #; ft0  <~~ Doub[0x00100058]
       0     2266        M                                           #; (f:lsu) ft0  <-- 12.0
       0     2273        M 0x80000730 fsd     ft0, 544(sp)           #; 12.0 ~~> Doub[0x0011fe90]
       0     2274        M 0x80000734 fld     ft0, 96(a0)            #; ft0  <~~ Doub[0x00100060]
       0     2275        M                                           #; (f:lsu) ft0  <-- 13.0
       0     2276        M 0x80000738 fsd     ft0, 536(sp)           #; 13.0 ~~> Doub[0x0011fe88]
       0     2277        M 0x8000073c fld     ft0, 104(a0)           #; ft0  <~~ Doub[0x00100068]
       0     2278        M                                           #; (f:lsu) ft0  <-- 14.0
       0     2285        M 0x80000740 fsd     ft0, 528(sp)           #; 14.0 ~~> Doub[0x0011fe80]
       0     2286        M 0x80000744 fld     ft0, 112(a0)           #; ft0  <~~ Doub[0x00100070]
       0     2287        M                                           #; (f:lsu) ft0  <-- 15.0
       0     2288        M 0x80000748 fsd     ft0, 520(sp)           #; 15.0 ~~> Doub[0x0011fe78]
       0     2289        M 0x8000074c fld     ft0, 120(a0)           #; ft0  <~~ Doub[0x00100078]
       0     2290        M                                           #; (f:lsu) ft0  <-- 16.0
       0     2297        M 0x80000750 fsd     ft0, 512(sp)           #; 16.0 ~~> Doub[0x0011fe70]
       0     2298        M 0x80000754 fld     ft0, 128(a0)           #; ft0  <~~ Doub[0x00100080]
       0     2299        M                                           #; (f:lsu) ft0  <-- 17.0
       0     2300        M 0x80000758 fsd     ft0, 504(sp)           #; 17.0 ~~> Doub[0x0011fe68]
       0     2301        M 0x8000075c fld     ft0, 136(a0)           #; ft0  <~~ Doub[0x00100088]
       0     2302        M                                           #; (f:lsu) ft0  <-- 18.0
       0     2309        M 0x80000760 fsd     ft0, 496(sp)           #; 18.0 ~~> Doub[0x0011fe60]
       0     2310        M 0x80000764 fld     ft0, 144(a0)           #; ft0  <~~ Doub[0x00100090]
       0     2311        M                                           #; (f:lsu) ft0  <-- 19.0
       0     2312        M 0x80000768 fsd     ft0, 488(sp)           #; 19.0 ~~> Doub[0x0011fe58]
       0     2313        M 0x8000076c fld     ft0, 152(a0)           #; ft0  <~~ Doub[0x00100098]
       0     2314        M                                           #; (f:lsu) ft0  <-- 20.0
       0     2321        M 0x80000770 fsd     ft0, 480(sp)           #; 20.0 ~~> Doub[0x0011fe50]
       0     2322        M 0x80000774 fld     ft0, 160(a0)           #; ft0  <~~ Doub[0x001000a0]
       0     2323        M                                           #; (f:lsu) ft0  <-- 21.0
       0     2324        M 0x80000778 fsd     ft0, 472(sp)           #; 21.0 ~~> Doub[0x0011fe48]
       0     2325        M 0x8000077c fld     ft0, 168(a0)           #; ft0  <~~ Doub[0x001000a8]
       0     2326        M                                           #; (f:lsu) ft0  <-- 22.0
       0     2333        M 0x80000780 fsd     ft0, 464(sp)           #; 22.0 ~~> Doub[0x0011fe40]
       0     2334        M 0x80000784 fld     ft0, 176(a0)           #; ft0  <~~ Doub[0x001000b0]
       0     2335        M                                           #; (f:lsu) ft0  <-- 23.0
       0     2336        M 0x80000788 fsd     ft0, 456(sp)           #; 23.0 ~~> Doub[0x0011fe38]
       0     2337        M 0x8000078c fld     ft0, 184(a0)           #; ft0  <~~ Doub[0x001000b8]
       0     2338        M                                           #; (f:lsu) ft0  <-- 24.0
       0     2345        M 0x80000790 fsd     ft0, 448(sp)           #; 24.0 ~~> Doub[0x0011fe30]
       0     2346        M 0x80000794 fld     ft0, 192(a0)           #; ft0  <~~ Doub[0x001000c0]
       0     2347        M                                           #; (f:lsu) ft0  <-- 25.0
       0     2348        M 0x80000798 fsd     ft0, 440(sp)           #; 25.0 ~~> Doub[0x0011fe28]
       0     2349        M 0x8000079c fld     ft0, 200(a0)           #; ft0  <~~ Doub[0x001000c8]
       0     2350        M                                           #; (f:lsu) ft0  <-- 26.0
       0     2357        M 0x800007a0 fsd     ft0, 432(sp)           #; 26.0 ~~> Doub[0x0011fe20]
       0     2358        M 0x800007a4 fld     ft0, 208(a0)           #; ft0  <~~ Doub[0x001000d0]
       0     2359        M                                           #; (f:lsu) ft0  <-- 27.0
       0     2360        M 0x800007a8 fsd     ft0, 424(sp)           #; 27.0 ~~> Doub[0x0011fe18]
       0     2361        M 0x800007ac fld     ft0, 216(a0)           #; ft0  <~~ Doub[0x001000d8]
       0     2362        M                                           #; (f:lsu) ft0  <-- 28.0
       0     2369        M 0x800007b0 fsd     ft0, 416(sp)           #; 28.0 ~~> Doub[0x0011fe10]
       0     2370        M 0x800007b4 fld     ft0, 224(a0)           #; ft0  <~~ Doub[0x001000e0]
       0     2371        M                                           #; (f:lsu) ft0  <-- 29.0
       0     2372        M 0x800007b8 fsd     ft0, 408(sp)           #; 29.0 ~~> Doub[0x0011fe08]
       0     2373        M 0x800007bc fld     ft0, 232(a0)           #; ft0  <~~ Doub[0x001000e8]
       0     2374        M                                           #; (f:lsu) ft0  <-- 30.0
       0     2381        M 0x800007c0 fsd     ft0, 400(sp)           #; 30.0 ~~> Doub[0x0011fe00]
       0     2382        M 0x800007c4 fld     ft0, 240(a0)           #; ft0  <~~ Doub[0x001000f0]
       0     2383        M                                           #; (f:lsu) ft0  <-- 31.0
       0     2384        M 0x800007c8 fsd     ft0, 392(sp)           #; 31.0 ~~> Doub[0x0011fdf8]
       0     2385        M 0x800007cc fld     ft0, 248(a0)           #; ft0  <~~ Doub[0x001000f8]
       0     2386        M                                           #; (f:lsu) ft0  <-- 32.0
       0     2393        M 0x800007d0 fsd     ft0, 384(sp)           #; 32.0 ~~> Doub[0x0011fdf0]
       0     2394        M 0x800007d4 fld     ft0, 256(a0)           #; ft0  <~~ Doub[0x00100100]
       0     2395        M                                           #; (f:lsu) ft0  <-- 33.0
       0     2396        M 0x800007d8 fsd     ft0, 376(sp)           #; 33.0 ~~> Doub[0x0011fde8]
       0     2397        M 0x800007dc fld     ft0, 264(a0)           #; ft0  <~~ Doub[0x00100108]
       0     2398        M                                           #; (f:lsu) ft0  <-- 34.0
       0     2405        M 0x800007e0 fsd     ft0, 368(sp)           #; 34.0 ~~> Doub[0x0011fde0]
       0     2406        M 0x800007e4 fld     ft0, 272(a0)           #; ft0  <~~ Doub[0x00100110]
       0     2407        M                                           #; (f:lsu) ft0  <-- 35.0
       0     2408        M 0x800007e8 fsd     ft0, 360(sp)           #; 35.0 ~~> Doub[0x0011fdd8]
       0     2409        M 0x800007ec fld     ft0, 280(a0)           #; ft0  <~~ Doub[0x00100118]
       0     2410        M                                           #; (f:lsu) ft0  <-- 36.0
       0     2417        M 0x800007f0 fsd     ft0, 352(sp)           #; 36.0 ~~> Doub[0x0011fdd0]
       0     2418        M 0x800007f4 fld     ft0, 288(a0)           #; ft0  <~~ Doub[0x00100120]
       0     2419        M                                           #; (f:lsu) ft0  <-- 37.0
       0     2420        M 0x800007f8 fsd     ft0, 344(sp)           #; 37.0 ~~> Doub[0x0011fdc8]
       0     2421        M 0x800007fc fld     ft0, 296(a0)           #; ft0  <~~ Doub[0x00100128]
       0     2422        M                                           #; (f:lsu) ft0  <-- 38.0
       0     2429        M 0x80000800 fsd     ft0, 336(sp)           #; 38.0 ~~> Doub[0x0011fdc0]
       0     2430        M 0x80000804 fld     ft0, 304(a0)           #; ft0  <~~ Doub[0x00100130]
       0     2431        M                                           #; (f:lsu) ft0  <-- 39.0
       0     2432        M 0x80000808 fsd     ft0, 328(sp)           #; 39.0 ~~> Doub[0x0011fdb8]
       0     2433        M 0x8000080c fld     ft0, 312(a0)           #; ft0  <~~ Doub[0x00100138]
       0     2434        M                                           #; (f:lsu) ft0  <-- 40.0
       0     2441        M 0x80000810 fsd     ft0, 320(sp)           #; 40.0 ~~> Doub[0x0011fdb0]
       0     2442        M 0x80000814 fld     ft0, 320(a0)           #; ft0  <~~ Doub[0x00100140]
       0     2443        M                                           #; (f:lsu) ft0  <-- 41.0
       0     2444        M 0x80000818 fsd     ft0, 312(sp)           #; 41.0 ~~> Doub[0x0011fda8]
       0     2445        M 0x8000081c fld     ft0, 328(a0)           #; ft0  <~~ Doub[0x00100148]
       0     2446        M                                           #; (f:lsu) ft0  <-- 42.0
       0     2453        M 0x80000820 fsd     ft0, 304(sp)           #; 42.0 ~~> Doub[0x0011fda0]
       0     2454        M 0x80000824 fld     ft0, 336(a0)           #; ft0  <~~ Doub[0x00100150]
       0     2455        M                                           #; (f:lsu) ft0  <-- 43.0
       0     2456        M 0x80000828 fsd     ft0, 296(sp)           #; 43.0 ~~> Doub[0x0011fd98]
       0     2457        M 0x8000082c fld     ft0, 344(a0)           #; ft0  <~~ Doub[0x00100158]
       0     2458        M                                           #; (f:lsu) ft0  <-- 44.0
       0     2465        M 0x80000830 fsd     ft0, 288(sp)           #; 44.0 ~~> Doub[0x0011fd90]
       0     2466        M 0x80000834 fld     ft0, 352(a0)           #; ft0  <~~ Doub[0x00100160]
       0     2467        M                                           #; (f:lsu) ft0  <-- 45.0
       0     2468        M 0x80000838 fsd     ft0, 280(sp)           #; 45.0 ~~> Doub[0x0011fd88]
       0     2469        M 0x8000083c fld     ft0, 360(a0)           #; ft0  <~~ Doub[0x00100168]
       0     2470        M                                           #; (f:lsu) ft0  <-- 46.0
       0     2477        M 0x80000840 fsd     ft0, 272(sp)           #; 46.0 ~~> Doub[0x0011fd80]
       0     2478        M 0x80000844 fld     ft0, 368(a0)           #; ft0  <~~ Doub[0x00100170]
       0     2479        M                                           #; (f:lsu) ft0  <-- 47.0
       0     2480        M 0x80000848 fsd     ft0, 264(sp)           #; 47.0 ~~> Doub[0x0011fd78]
       0     2481        M 0x8000084c fld     ft0, 376(a0)           #; ft0  <~~ Doub[0x00100178]
       0     2482        M                                           #; (f:lsu) ft0  <-- 48.0
       0     2489        M 0x80000850 fsd     ft0, 256(sp)           #; 48.0 ~~> Doub[0x0011fd70]
       0     2490        M 0x80000854 fld     ft0, 384(a0)           #; ft0  <~~ Doub[0x00100180]
       0     2491        M                                           #; (f:lsu) ft0  <-- 49.0
       0     2492        M 0x80000858 fsd     ft0, 248(sp)           #; 49.0 ~~> Doub[0x0011fd68]
       0     2493        M 0x8000085c fld     ft0, 392(a0)           #; ft0  <~~ Doub[0x00100188]
       0     2494        M                                           #; (f:lsu) ft0  <-- 50.0
       0     2501        M 0x80000860 fsd     ft0, 240(sp)           #; 50.0 ~~> Doub[0x0011fd60]
       0     2502        M 0x80000864 fld     ft0, 400(a0)           #; ft0  <~~ Doub[0x00100190]
       0     2503        M                                           #; (f:lsu) ft0  <-- 51.0
       0     2504        M 0x80000868 fsd     ft0, 232(sp)           #; 51.0 ~~> Doub[0x0011fd58]
       0     2505        M 0x8000086c fld     ft0, 408(a0)           #; ft0  <~~ Doub[0x00100198]
       0     2506        M                                           #; (f:lsu) ft0  <-- 52.0
       0     2513        M 0x80000870 fsd     ft0, 224(sp)           #; 52.0 ~~> Doub[0x0011fd50]
       0     2514        M 0x80000874 fld     ft4, 416(a0)           #; ft4  <~~ Doub[0x001001a0]
       0     2515        M 0x80000878 fld     ft5, 424(a0)           #; ft5  <~~ Doub[0x001001a8], (f:lsu) ft4  <-- 53.0
       0     2516        M 0x8000087c fld     ft6, 432(a0)           #; ft6  <~~ Doub[0x001001b0], (f:lsu) ft5  <-- 54.0
       0     2517        M                                           #; (f:lsu) ft6  <-- 55.0
       0     2525        M 0x80000880 fld     ft7, 440(a0)           #; ft7  <~~ Doub[0x001001b8]
       0     2526        M 0x80000884 fld     fa0, 448(a0)           #; fa0  <~~ Doub[0x001001c0], (f:lsu) ft7  <-- 56.0
       0     2527        M 0x80000888 fld     fa1, 456(a0)           #; fa1  <~~ Doub[0x001001c8], (f:lsu) fa0  <-- 57.0
       0     2528        M 0x8000088c fld     fa2, 464(a0)           #; fa2  <~~ Doub[0x001001d0], (f:lsu) fa1  <-- 58.0
       0     2529        M                                           #; (f:lsu) fa2  <-- 59.0
       0     2537        M 0x80000890 fld     fa3, 472(a0)           #; fa3  <~~ Doub[0x001001d8]
       0     2538        M 0x80000894 fld     fa4, 480(a0)           #; fa4  <~~ Doub[0x001001e0], (f:lsu) fa3  <-- 60.0
       0     2539        M 0x80000898 fld     fa5, 488(a0)           #; fa5  <~~ Doub[0x001001e8], (f:lsu) fa4  <-- 61.0
       0     2540        M 0x8000089c fld     fa6, 496(a0)           #; fa6  <~~ Doub[0x001001f0], (f:lsu) fa5  <-- 62.0
       0     2541        M                                           #; (f:lsu) fa6  <-- 63.0
       0     2549        M 0x800008a0 fld     fa7, 504(a0)           #; fa7  <~~ Doub[0x001001f8]
       0     2550        M 0x800008a4 fld     ft8, 512(a0)           #; ft8  <~~ Doub[0x00100200], (f:lsu) fa7  <-- 64.0
       0     2551        M 0x800008a8 fld     ft9, 520(a0)           #; ft9  <~~ Doub[0x00100208], (f:lsu) ft8  <-- 65.0
       0     2552        M 0x800008ac fld     ft10, 528(a0)          #; ft10 <~~ Doub[0x00100210], (f:lsu) ft9  <-- 66.0
       0     2553        M                                           #; (f:lsu) ft10 <-- 67.0
       0     2561        M 0x800008b0 fld     ft11, 536(a0)          #; ft11 <~~ Doub[0x00100218]
       0     2562        M 0x800008b4 fld     fs0, 544(a0)           #; fs0  <~~ Doub[0x00100220], (f:lsu) ft11 <-- 68.0
       0     2563        M 0x800008b8 fld     fs1, 552(a0)           #; fs1  <~~ Doub[0x00100228], (f:lsu) fs0  <-- 69.0
       0     2564        M 0x800008bc fld     fs2, 560(a0)           #; fs2  <~~ Doub[0x00100230], (f:lsu) fs1  <-- 70.0
       0     2565        M                                           #; (f:lsu) fs2  <-- 71.0
       0     2573        M 0x800008c0 fld     fs3, 568(a0)           #; fs3  <~~ Doub[0x00100238]
       0     2574        M 0x800008c4 fld     fs4, 576(a0)           #; fs4  <~~ Doub[0x00100240], (f:lsu) fs3  <-- 72.0
       0     2575        M 0x800008c8 fld     fs5, 584(a0)           #; fs5  <~~ Doub[0x00100248], (f:lsu) fs4  <-- 73.0
       0     2576        M 0x800008cc fld     fs6, 592(a0)           #; fs6  <~~ Doub[0x00100250], (f:lsu) fs5  <-- 74.0
       0     2577        M                                           #; (f:lsu) fs6  <-- 75.0
       0     2585        M 0x800008d0 fld     fs7, 600(a0)           #; fs7  <~~ Doub[0x00100258]
       0     2586        M 0x800008d4 fld     fs8, 608(a0)           #; fs8  <~~ Doub[0x00100260], (f:lsu) fs7  <-- 76.0
       0     2587        M 0x800008d8 fld     fs9, 616(a0)           #; fs9  <~~ Doub[0x00100268], (f:lsu) fs8  <-- 77.0
       0     2588        M 0x800008dc fld     fs10, 624(a0)          #; fs10 <~~ Doub[0x00100270], (f:lsu) fs9  <-- 78.0
       0     2589        M                                           #; (f:lsu) fs10 <-- 79.0
       0     2597        M 0x800008e0 fld     fs11, 632(a0)          #; fs11 <~~ Doub[0x00100278]
       0     2598        M 0x800008e4 fld     ft0, 640(a0)           #; ft0  <~~ Doub[0x00100280], (f:lsu) fs11 <-- 80.0
       0     2599        M                                           #; (f:lsu) ft0  <-- 81.0
       0     2600        M 0x800008e8 fsd     ft0, 216(sp)           #; 81.0 ~~> Doub[0x0011fd48]
       0     2601        M 0x800008ec fld     ft0, 648(a0)           #; ft0  <~~ Doub[0x00100288]
       0     2602        M                                           #; (f:lsu) ft0  <-- 82.0
       0     2609        M 0x800008f0 fsd     ft0, 208(sp)           #; 82.0 ~~> Doub[0x0011fd40]
       0     2610        M 0x800008f4 fld     ft0, 656(a0)           #; ft0  <~~ Doub[0x00100290]
       0     2611        M                                           #; (f:lsu) ft0  <-- 83.0
       0     2612        M 0x800008f8 fsd     ft0, 200(sp)           #; 83.0 ~~> Doub[0x0011fd38]
       0     2613        M 0x800008fc fld     ft0, 664(a0)           #; ft0  <~~ Doub[0x00100298]
       0     2614        M                                           #; (f:lsu) ft0  <-- 84.0
       0     2621        M 0x80000900 fsd     ft0, 192(sp)           #; 84.0 ~~> Doub[0x0011fd30]
       0     2622        M 0x80000904 fld     ft0, 672(a0)           #; ft0  <~~ Doub[0x001002a0]
       0     2623        M                                           #; (f:lsu) ft0  <-- 85.0
       0     2624        M 0x80000908 fsd     ft0, 184(sp)           #; 85.0 ~~> Doub[0x0011fd28]
       0     2625        M 0x8000090c fld     ft0, 680(a0)           #; ft0  <~~ Doub[0x001002a8]
       0     2626        M                                           #; (f:lsu) ft0  <-- 86.0
       0     2633        M 0x80000910 fsd     ft0, 176(sp)           #; 86.0 ~~> Doub[0x0011fd20]
       0     2634        M 0x80000914 fld     ft0, 688(a0)           #; ft0  <~~ Doub[0x001002b0]
       0     2635        M                                           #; (f:lsu) ft0  <-- 87.0
       0     2636        M 0x80000918 fsd     ft0, 168(sp)           #; 87.0 ~~> Doub[0x0011fd18]
       0     2637        M 0x8000091c fld     ft0, 696(a0)           #; ft0  <~~ Doub[0x001002b8]
       0     2638        M                                           #; (f:lsu) ft0  <-- 88.0
       0     2645        M 0x80000920 fsd     ft0, 160(sp)           #; 88.0 ~~> Doub[0x0011fd10]
       0     2646        M 0x80000924 fld     ft0, 704(a0)           #; ft0  <~~ Doub[0x001002c0]
       0     2647        M                                           #; (f:lsu) ft0  <-- 89.0
       0     2648        M 0x80000928 fsd     ft0, 152(sp)           #; 89.0 ~~> Doub[0x0011fd08]
       0     2649        M 0x8000092c fld     ft0, 712(a0)           #; ft0  <~~ Doub[0x001002c8]
       0     2650        M                                           #; (f:lsu) ft0  <-- 90.0
       0     2657        M 0x80000930 fsd     ft0, 144(sp)           #; 90.0 ~~> Doub[0x0011fd00]
       0     2658        M 0x80000934 fld     ft0, 720(a0)           #; ft0  <~~ Doub[0x001002d0]
       0     2659        M                                           #; (f:lsu) ft0  <-- 91.0
       0     2660        M 0x80000938 fsd     ft0, 136(sp)           #; 91.0 ~~> Doub[0x0011fcf8]
       0     2661        M 0x8000093c fld     ft0, 728(a0)           #; ft0  <~~ Doub[0x001002d8]
       0     2662        M                                           #; (f:lsu) ft0  <-- 92.0
       0     2669        M 0x80000940 fsd     ft0, 128(sp)           #; 92.0 ~~> Doub[0x0011fcf0]
       0     2670        M 0x80000944 fld     ft0, 736(a0)           #; ft0  <~~ Doub[0x001002e0]
       0     2671        M                                           #; (f:lsu) ft0  <-- 93.0
       0     2672        M 0x80000948 fsd     ft0, 120(sp)           #; 93.0 ~~> Doub[0x0011fce8]
       0     2673        M 0x8000094c fld     ft0, 744(a0)           #; ft0  <~~ Doub[0x001002e8]
       0     2674        M                                           #; (f:lsu) ft0  <-- 94.0
       0     2681        M 0x80000950 fsd     ft0, 112(sp)           #; 94.0 ~~> Doub[0x0011fce0]
       0     2682        M 0x80000954 fld     ft0, 752(a0)           #; ft0  <~~ Doub[0x001002f0]
       0     2683        M                                           #; (f:lsu) ft0  <-- 95.0
       0     2684        M 0x80000958 fsd     ft0, 104(sp)           #; 95.0 ~~> Doub[0x0011fcd8]
       0     2685        M 0x8000095c fld     ft0, 760(a0)           #; ft0  <~~ Doub[0x001002f8]
       0     2686        M                                           #; (f:lsu) ft0  <-- 96.0
       0     2693        M 0x80000960 fsd     ft0, 96(sp)            #; 96.0 ~~> Doub[0x0011fcd0]
       0     2694        M 0x80000964 fld     ft0, 768(a0)           #; ft0  <~~ Doub[0x00100300]
       0     2695        M                                           #; (f:lsu) ft0  <-- 97.0
       0     2696        M 0x80000968 fsd     ft0, 88(sp)            #; 97.0 ~~> Doub[0x0011fcc8]
       0     2697        M 0x8000096c fld     ft0, 776(a0)           #; ft0  <~~ Doub[0x00100308]
       0     2698        M                                           #; (f:lsu) ft0  <-- 98.0
       0     2705        M 0x80000970 fsd     ft0, 80(sp)            #; 98.0 ~~> Doub[0x0011fcc0]
       0     2706        M 0x80000974 fld     ft0, 784(a0)           #; ft0  <~~ Doub[0x00100310]
       0     2707        M                                           #; (f:lsu) ft0  <-- 99.0
       0     2708        M 0x80000978 fsd     ft0, 72(sp)            #; 99.0 ~~> Doub[0x0011fcb8]
       0     2709        M 0x8000097c fld     ft0, 792(a0)           #; ft0  <~~ Doub[0x00100318]
       0     2710        M                                           #; (f:lsu) ft0  <-- 100.0
       0     2717        M 0x80000980 fsd     ft0, 64(sp)            #; 100.0 ~~> Doub[0x0011fcb0]
       0     2718        M 0x80000984 fld     ft0, 800(a0)           #; ft0  <~~ Doub[0x00100320]
       0     2719        M                                           #; (f:lsu) ft0  <-- 101.0
       0     2720        M 0x80000988 fsd     ft0, 56(sp)            #; 101.0 ~~> Doub[0x0011fca8]
       0     2721        M 0x8000098c fld     ft0, 808(a0)           #; ft0  <~~ Doub[0x00100328]
       0     2722        M                                           #; (f:lsu) ft0  <-- 102.0
       0     2729        M 0x80000990 fsd     ft0, 48(sp)            #; 102.0 ~~> Doub[0x0011fca0]
       0     2730        M 0x80000994 fld     ft0, 816(a0)           #; ft0  <~~ Doub[0x00100330]
       0     2731        M                                           #; (f:lsu) ft0  <-- 103.0
       0     2732        M 0x80000998 fsd     ft0, 40(sp)            #; 103.0 ~~> Doub[0x0011fc98]
       0     2733        M 0x8000099c fld     ft0, 824(a0)           #; ft0  <~~ Doub[0x00100338]
       0     2734        M                                           #; (f:lsu) ft0  <-- 104.0
       0     2741        M 0x800009a0 fsd     ft0, 32(sp)            #; 104.0 ~~> Doub[0x0011fc90]
       0     2742        M 0x800009a4 fld     ft0, 832(a0)           #; ft0  <~~ Doub[0x00100340]
       0     2743        M                                           #; (f:lsu) ft0  <-- 105.0
       0     2744        M 0x800009a8 fsd     ft0, 24(sp)            #; 105.0 ~~> Doub[0x0011fc88]
       0     2745        M 0x800009ac fld     ft0, 840(a0)           #; ft0  <~~ Doub[0x00100348]
       0     2746        M                                           #; (f:lsu) ft0  <-- 106.0
       0     2753        M 0x800009b0 fsd     ft0, 16(sp)            #; 106.0 ~~> Doub[0x0011fc80]
       0     2754        M 0x800009b4 fld     ft0, 848(a0)           #; ft0  <~~ Doub[0x00100350]
       0     2755        M                                           #; (f:lsu) ft0  <-- 107.0
       0     2756        M 0x800009b8 fsd     ft0, 8(sp)             #; 107.0 ~~> Doub[0x0011fc78]
       0     2757        M 0x800009bc fld     ft0, 856(a0)           #; ft0  <~~ Doub[0x00100358]
       0     2758        M                                           #; (f:lsu) ft0  <-- 108.0
       0     2764        M 0x800009c4 addi    a0, a0, 384            #; a0  = 0x00100000, (wrb) a0  <-- 0x00100180
       0     2765        M 0x800009c8 li      a1, -96                #; (wrb) a1  <-- -96
                         M 0x800009c0 fsd     ft0, 0(sp)             #; 108.0 ~~> Doub[0x0011fc70]
       0     2767        M 0x800009cc fcvt.d.w ft0, zero             #; ac1  = 0
       0     2768        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2775        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -96, (wrb) a2  <-- 0x00100120
       0     2778        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100000]
       0     2779        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100060], (f:lsu) ft1  <-- 1.0
       0     2780        M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 1.0, ft0  = 0.0, (f:lsu) ft2  <-- 13.0
       0     2783        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2789        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000c0]
       0     2790        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100120], (f:lsu) ft1  <-- 25.0
       0     2791        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 1.0, ft2  = 13.0, (f:lsu) ft3  <-- 37.0
       0     2792        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x00100180]
       0     2793        M                                           #; (f:lsu) ft2  <-- 49.0
       0     2794        M                                           #; (f:fpu) ft0  <-- 14.0
       0     2801        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 14.0, ft1  = 25.0
       0     2804        M                                           #; (f:fpu) ft0  <-- 39.0
       0     2805        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 39.0, ft3  = 37.0
       0     2806        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x001001e0]
       0     2807        M                                           #; (f:lsu) ft1  <-- 61.0
       0     2808        M                                           #; (f:fpu) ft0  <-- 76.0
       0     2809        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 76.0, ft2  = 49.0
       0     2812        M                                           #; (f:fpu) ft0  <-- 125.0
       0     2813        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100240]
       0     2814        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002a0], (f:lsu) ft2  <-- 73.0
       0     2815        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 125.0, ft1  = 61.0, (f:lsu) ft3  <-- 85.0
       0     2816        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100300]
       0     2817        M                                           #; (f:lsu) ft1  <-- 97.0
       0     2818        M                                           #; (f:fpu) ft0  <-- 186.0
       0     2825        M 0x80000a18 addi    a1, a1, 8              #; a1  = -96, (wrb) a1  <-- -88
                         M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 186.0, ft2  = 73.0
       0     2828        M                                           #; (f:fpu) ft0  <-- 259.0
       0     2829        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 259.0, ft3  = 85.0
       0     2832        M                                           #; (f:fpu) ft0  <-- 344.0
       0     2833        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 344.0, ft1  = 97.0
       0     2835        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -88, taken, goto 0x800009d0
       0     2836        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -88, (wrb) a2  <-- 0x00100128
                         M                                           #; (f:fpu) ft0  <-- 441.0
       0     2839        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100008]
       0     2840        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 2.0
       0     2841        M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 2.0, ft0  = 441.0, (f:lsu) ft2  <-- 14.0
       0     2842        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000c8]
       0     2843        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100128], (f:lsu) ft1  <-- 26.0
       0     2844        M                                           #; (f:fpu) ft0  <-- 443.0
       0     2845        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 443.0, ft2  = 14.0, (f:lsu) ft3  <-- 38.0
       0     2846        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x00100188]
       0     2847        M                                           #; (f:lsu) ft2  <-- 50.0
       0     2848        M                                           #; (f:fpu) ft0  <-- 457.0
       0     2849        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 457.0, ft1  = 26.0
       0     2852        M                                           #; (f:fpu) ft0  <-- 483.0
       0     2853        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 483.0, ft3  = 38.0
       0     2854        M 0x80000a18 addi    a1, a1, 8              #; a1  = -88, (wrb) a1  <-- -80
                         M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x001001e8]
       0     2855        M                                           #; (f:lsu) ft1  <-- 62.0
       0     2856        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -80, taken, goto 0x800009d0
                         M                                           #; (f:fpu) ft0  <-- 521.0
       0     2857        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -80, (wrb) a2  <-- 0x00100130
                         M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 521.0, ft2  = 50.0
       0     2858        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100248]
       0     2859        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002a8], (f:lsu) ft2  <-- 74.0
       0     2860        M                                           #; (f:fpu) ft0  <-- 571.0
       0     2861        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 571.0, ft1  = 62.0, (f:lsu) ft3  <-- 86.0
       0     2862        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100308]
       0     2863        M                                           #; (f:lsu) ft1  <-- 98.0
       0     2864        M                                           #; (f:fpu) ft0  <-- 633.0
       0     2865        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 633.0, ft2  = 74.0
       0     2868        M                                           #; (f:fpu) ft0  <-- 707.0
       0     2869        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 707.0, ft3  = 86.0
       0     2872        M                                           #; (f:fpu) ft0  <-- 793.0
       0     2873        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 793.0, ft1  = 98.0
       0     2874        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100010]
       0     2875        M 0x80000a18 addi    a1, a1, 8              #; a1  = -80, (wrb) a1  <-- -72
                         M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100070], (f:lsu) ft1  <-- 3.0
       0     2876        M                                           #; (f:fpu) ft0  <-- 891.0
       0     2877        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -72, taken, goto 0x800009d0
                         M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 3.0, ft0  = 891.0, (f:lsu) ft2  <-- 15.0
       0     2878        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -72, (wrb) a2  <-- 0x00100138
                         M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000d0]
       0     2879        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100130], (f:lsu) ft1  <-- 27.0
       0     2880        M                                           #; (f:fpu) ft0  <-- 894.0
       0     2881        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 894.0, ft2  = 15.0, (f:lsu) ft3  <-- 39.0
       0     2882        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x00100190]
       0     2883        M                                           #; (f:lsu) ft2  <-- 51.0
       0     2884        M                                           #; (f:fpu) ft0  <-- 909.0
       0     2885        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 909.0, ft1  = 27.0
       0     2888        M                                           #; (f:fpu) ft0  <-- 936.0
       0     2889        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 936.0, ft3  = 39.0
       0     2890        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x001001f0]
       0     2891        M                                           #; (f:lsu) ft1  <-- 63.0
       0     2892        M                                           #; (f:fpu) ft0  <-- 975.0
       0     2893        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 975.0, ft2  = 51.0
       0     2894        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100250]
       0     2895        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002b0], (f:lsu) ft2  <-- 75.0
       0     2896        M                                           #; (f:fpu) ft0  <-- 1026.0
       0     2897        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 1026.0, ft1  = 63.0, (f:lsu) ft3  <-- 87.0
       0     2898        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100310]
       0     2899        M                                           #; (f:lsu) ft1  <-- 99.0
       0     2900        M                                           #; (f:fpu) ft0  <-- 1089.0
       0     2901        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 1089.0, ft2  = 75.0
       0     2904        M                                           #; (f:fpu) ft0  <-- 1164.0
       0     2905        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 1164.0, ft3  = 87.0
       0     2908        M 0x80000a18 addi    a1, a1, 8              #; a1  = -72, (wrb) a1  <-- -64
                         M                                           #; (f:fpu) ft0  <-- 1251.0
       0     2909        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 1251.0, ft1  = 99.0
       0     2910        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100018]
       0     2911        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100078], (f:lsu) ft1  <-- 4.0
       0     2912        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -64, taken, goto 0x800009d0
                         M                                           #; (f:fpu) ft0  <-- 1350.0
       0     2913        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -64, (wrb) a2  <-- 0x00100140
                         M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 4.0, ft0  = 1350.0, (f:lsu) ft2  <-- 16.0
       0     2914        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000d8]
       0     2915        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100138], (f:lsu) ft1  <-- 28.0
       0     2916        M                                           #; (f:fpu) ft0  <-- 1354.0
       0     2917        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 1354.0, ft2  = 16.0, (f:lsu) ft3  <-- 40.0
       0     2918        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x00100198]
       0     2919        M                                           #; (f:lsu) ft2  <-- 52.0
       0     2920        M                                           #; (f:fpu) ft0  <-- 1370.0
       0     2921        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 1370.0, ft1  = 28.0
       0     2924        M                                           #; (f:fpu) ft0  <-- 1398.0
       0     2925        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 1398.0, ft3  = 40.0
       0     2926        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x001001f8]
       0     2927        M                                           #; (f:lsu) ft1  <-- 64.0
       0     2928        M                                           #; (f:fpu) ft0  <-- 1438.0
       0     2929        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 1438.0, ft2  = 52.0
       0     2930        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100258]
       0     2931        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002b8], (f:lsu) ft2  <-- 76.0
       0     2932        M                                           #; (f:fpu) ft0  <-- 1490.0
       0     2933        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 1490.0, ft1  = 64.0, (f:lsu) ft3  <-- 88.0
       0     2934        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100318]
       0     2935        M                                           #; (f:lsu) ft1  <-- 100.0
       0     2936        M                                           #; (f:fpu) ft0  <-- 1554.0
       0     2937        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 1554.0, ft2  = 76.0
       0     2940        M                                           #; (f:fpu) ft0  <-- 1630.0
       0     2941        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 1630.0, ft3  = 88.0
       0     2944        M 0x80000a18 addi    a1, a1, 8              #; a1  = -64, (wrb) a1  <-- -56
                         M                                           #; (f:fpu) ft0  <-- 1718.0
       0     2945        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 1718.0, ft1  = 100.0
       0     2946        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100020]
       0     2947        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100080], (f:lsu) ft1  <-- 5.0
       0     2948        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -56, taken, goto 0x800009d0
                         M                                           #; (f:fpu) ft0  <-- 1818.0
       0     2949        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -56, (wrb) a2  <-- 0x00100148
                         M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 5.0, ft0  = 1818.0, (f:lsu) ft2  <-- 17.0
       0     2950        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000e0]
       0     2951        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100140], (f:lsu) ft1  <-- 29.0
       0     2952        M                                           #; (f:fpu) ft0  <-- 1823.0
       0     2953        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 1823.0, ft2  = 17.0, (f:lsu) ft3  <-- 41.0
       0     2954        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001a0]
       0     2955        M                                           #; (f:lsu) ft2  <-- 53.0
       0     2956        M                                           #; (f:fpu) ft0  <-- 1840.0
       0     2957        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 1840.0, ft1  = 29.0
       0     2960        M                                           #; (f:fpu) ft0  <-- 1869.0
       0     2961        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 1869.0, ft3  = 41.0
       0     2962        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100200]
       0     2963        M                                           #; (f:lsu) ft1  <-- 65.0
       0     2964        M                                           #; (f:fpu) ft0  <-- 1910.0
       0     2965        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 1910.0, ft2  = 53.0
       0     2966        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100260]
       0     2967        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002c0], (f:lsu) ft2  <-- 77.0
       0     2968        M                                           #; (f:fpu) ft0  <-- 1963.0
       0     2969        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 1963.0, ft1  = 65.0, (f:lsu) ft3  <-- 89.0
       0     2970        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100320]
       0     2971        M                                           #; (f:lsu) ft1  <-- 101.0
       0     2972        M                                           #; (f:fpu) ft0  <-- 2028.0
       0     2973        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 2028.0, ft2  = 77.0
       0     2976        M                                           #; (f:fpu) ft0  <-- 2105.0
       0     2977        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 2105.0, ft3  = 89.0
       0     2980        M 0x80000a18 addi    a1, a1, 8              #; a1  = -56, (wrb) a1  <-- -48
                         M                                           #; (f:fpu) ft0  <-- 2194.0
       0     2981        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 2194.0, ft1  = 101.0
       0     2982        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100028]
       0     2983        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100088], (f:lsu) ft1  <-- 6.0
       0     2984        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -48, taken, goto 0x800009d0
                         M                                           #; (f:fpu) ft0  <-- 2295.0
       0     2985        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -48, (wrb) a2  <-- 0x00100150
                         M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 6.0, ft0  = 2295.0, (f:lsu) ft2  <-- 18.0
       0     2986        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000e8]
       0     2987        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100148], (f:lsu) ft1  <-- 30.0
       0     2988        M                                           #; (f:fpu) ft0  <-- 2301.0
       0     2989        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 2301.0, ft2  = 18.0, (f:lsu) ft3  <-- 42.0
       0     2990        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001a8]
       0     2991        M                                           #; (f:lsu) ft2  <-- 54.0
       0     2992        M                                           #; (f:fpu) ft0  <-- 2319.0
       0     2993        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 2319.0, ft1  = 30.0
       0     2996        M                                           #; (f:fpu) ft0  <-- 2349.0
       0     2997        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 2349.0, ft3  = 42.0
       0     2998        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100208]
       0     2999        M                                           #; (f:lsu) ft1  <-- 66.0
       0     3000        M                                           #; (f:fpu) ft0  <-- 2391.0
       0     3001        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 2391.0, ft2  = 54.0
       0     3002        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100268]
       0     3003        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002c8], (f:lsu) ft2  <-- 78.0
       0     3004        M                                           #; (f:fpu) ft0  <-- 2445.0
       0     3005        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 2445.0, ft1  = 66.0, (f:lsu) ft3  <-- 90.0
       0     3006        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100328]
       0     3007        M                                           #; (f:lsu) ft1  <-- 102.0
       0     3008        M                                           #; (f:fpu) ft0  <-- 2511.0
       0     3009        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 2511.0, ft2  = 78.0
       0     3012        M                                           #; (f:fpu) ft0  <-- 2589.0
       0     3013        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 2589.0, ft3  = 90.0
       0     3016        M 0x80000a18 addi    a1, a1, 8              #; a1  = -48, (wrb) a1  <-- -40
                         M                                           #; (f:fpu) ft0  <-- 2679.0
       0     3017        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 2679.0, ft1  = 102.0
       0     3018        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100030]
       0     3019        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100090], (f:lsu) ft1  <-- 7.0
       0     3020        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -40, taken, goto 0x800009d0
                         M                                           #; (f:fpu) ft0  <-- 2781.0
       0     3021        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -40, (wrb) a2  <-- 0x00100158
                         M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 7.0, ft0  = 2781.0, (f:lsu) ft2  <-- 19.0
       0     3022        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000f0]
       0     3023        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100150], (f:lsu) ft1  <-- 31.0
       0     3024        M                                           #; (f:fpu) ft0  <-- 2788.0
       0     3025        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 2788.0, ft2  = 19.0, (f:lsu) ft3  <-- 43.0
       0     3026        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001b0]
       0     3027        M                                           #; (f:lsu) ft2  <-- 55.0
       0     3028        M                                           #; (f:fpu) ft0  <-- 2807.0
       0     3029        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 2807.0, ft1  = 31.0
       0     3032        M                                           #; (f:fpu) ft0  <-- 2838.0
       0     3033        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 2838.0, ft3  = 43.0
       0     3034        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100210]
       0     3035        M                                           #; (f:lsu) ft1  <-- 67.0
       0     3036        M                                           #; (f:fpu) ft0  <-- 2881.0
       0     3037        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 2881.0, ft2  = 55.0
       0     3038        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100270]
       0     3039        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002d0], (f:lsu) ft2  <-- 79.0
       0     3040        M                                           #; (f:fpu) ft0  <-- 2936.0
       0     3041        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 2936.0, ft1  = 67.0, (f:lsu) ft3  <-- 91.0
       0     3042        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100330]
       0     3043        M                                           #; (f:lsu) ft1  <-- 103.0
       0     3044        M                                           #; (f:fpu) ft0  <-- 3003.0
       0     3045        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 3003.0, ft2  = 79.0
       0     3048        M                                           #; (f:fpu) ft0  <-- 3082.0
       0     3049        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 3082.0, ft3  = 91.0
       0     3052        M 0x80000a18 addi    a1, a1, 8              #; a1  = -40, (wrb) a1  <-- -32
                         M                                           #; (f:fpu) ft0  <-- 3173.0
       0     3053        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 3173.0, ft1  = 103.0
       0     3054        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100038]
       0     3055        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 8.0
       0     3056        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -32, taken, goto 0x800009d0
                         M                                           #; (f:fpu) ft0  <-- 3276.0
       0     3057        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -32, (wrb) a2  <-- 0x00100160
                         M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 8.0, ft0  = 3276.0, (f:lsu) ft2  <-- 20.0
       0     3058        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000f8]
       0     3059        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100158], (f:lsu) ft1  <-- 32.0
       0     3060        M                                           #; (f:fpu) ft0  <-- 3284.0
       0     3061        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 3284.0, ft2  = 20.0, (f:lsu) ft3  <-- 44.0
       0     3062        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001b8]
       0     3063        M                                           #; (f:lsu) ft2  <-- 56.0
       0     3064        M                                           #; (f:fpu) ft0  <-- 3304.0
       0     3065        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 3304.0, ft1  = 32.0
       0     3068        M                                           #; (f:fpu) ft0  <-- 3336.0
       0     3069        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 3336.0, ft3  = 44.0
       0     3070        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100218]
       0     3071        M                                           #; (f:lsu) ft1  <-- 68.0
       0     3072        M                                           #; (f:fpu) ft0  <-- 3380.0
       0     3073        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 3380.0, ft2  = 56.0
       0     3074        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100278]
       0     3075        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002d8], (f:lsu) ft2  <-- 80.0
       0     3076        M                                           #; (f:fpu) ft0  <-- 3436.0
       0     3077        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 3436.0, ft1  = 68.0, (f:lsu) ft3  <-- 92.0
       0     3078        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100338]
       0     3079        M                                           #; (f:lsu) ft1  <-- 104.0
       0     3080        M                                           #; (f:fpu) ft0  <-- 3504.0
       0     3081        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 3504.0, ft2  = 80.0
       0     3084        M                                           #; (f:fpu) ft0  <-- 3584.0
       0     3085        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 3584.0, ft3  = 92.0
       0     3088        M 0x80000a18 addi    a1, a1, 8              #; a1  = -32, (wrb) a1  <-- -24
                         M                                           #; (f:fpu) ft0  <-- 3676.0
       0     3089        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 3676.0, ft1  = 104.0
       0     3090        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100040]
       0     3091        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x001000a0], (f:lsu) ft1  <-- 9.0
       0     3092        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -24, taken, goto 0x800009d0
                         M                                           #; (f:fpu) ft0  <-- 3780.0
       0     3093        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -24, (wrb) a2  <-- 0x00100168
                         M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 9.0, ft0  = 3780.0, (f:lsu) ft2  <-- 21.0
       0     3094        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x00100100]
       0     3095        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 33.0
       0     3096        M                                           #; (f:fpu) ft0  <-- 3789.0
       0     3097        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 3789.0, ft2  = 21.0, (f:lsu) ft3  <-- 45.0
       0     3098        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001c0]
       0     3099        M                                           #; (f:lsu) ft2  <-- 57.0
       0     3100        M                                           #; (f:fpu) ft0  <-- 3810.0
       0     3101        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 3810.0, ft1  = 33.0
       0     3104        M                                           #; (f:fpu) ft0  <-- 3843.0
       0     3105        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 3843.0, ft3  = 45.0
       0     3106        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100220]
       0     3107        M                                           #; (f:lsu) ft1  <-- 69.0
       0     3108        M                                           #; (f:fpu) ft0  <-- 3888.0
       0     3109        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 3888.0, ft2  = 57.0
       0     3110        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100280]
       0     3111        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002e0], (f:lsu) ft2  <-- 81.0
       0     3112        M                                           #; (f:fpu) ft0  <-- 3945.0
       0     3113        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 3945.0, ft1  = 69.0, (f:lsu) ft3  <-- 93.0
       0     3114        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100340]
       0     3115        M                                           #; (f:lsu) ft1  <-- 105.0
       0     3116        M                                           #; (f:fpu) ft0  <-- 4014.0
       0     3117        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 4014.0, ft2  = 81.0
       0     3120        M                                           #; (f:fpu) ft0  <-- 4095.0
       0     3121        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 4095.0, ft3  = 93.0
       0     3124        M 0x80000a18 addi    a1, a1, 8              #; a1  = -24, (wrb) a1  <-- -16
                         M                                           #; (f:fpu) ft0  <-- 4188.0
       0     3125        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 4188.0, ft1  = 105.0
       0     3126        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100048]
       0     3127        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x001000a8], (f:lsu) ft1  <-- 10.0
       0     3128        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -16, taken, goto 0x800009d0
                         M                                           #; (f:fpu) ft0  <-- 4293.0
       0     3129        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -16, (wrb) a2  <-- 0x00100170
                         M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 10.0, ft0  = 4293.0, (f:lsu) ft2  <-- 22.0
       0     3130        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x00100108]
       0     3131        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 34.0
       0     3132        M                                           #; (f:fpu) ft0  <-- 4303.0
       0     3133        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 4303.0, ft2  = 22.0, (f:lsu) ft3  <-- 46.0
       0     3134        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001c8]
       0     3135        M                                           #; (f:lsu) ft2  <-- 58.0
       0     3136        M                                           #; (f:fpu) ft0  <-- 4325.0
       0     3137        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 4325.0, ft1  = 34.0
       0     3140        M                                           #; (f:fpu) ft0  <-- 4359.0
       0     3141        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 4359.0, ft3  = 46.0
       0     3142        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100228]
       0     3143        M                                           #; (f:lsu) ft1  <-- 70.0
       0     3144        M                                           #; (f:fpu) ft0  <-- 4405.0
       0     3145        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 4405.0, ft2  = 58.0
       0     3146        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100288]
       0     3147        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002e8], (f:lsu) ft2  <-- 82.0
       0     3148        M                                           #; (f:fpu) ft0  <-- 4463.0
       0     3149        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 4463.0, ft1  = 70.0, (f:lsu) ft3  <-- 94.0
       0     3150        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100348]
       0     3151        M                                           #; (f:lsu) ft1  <-- 106.0
       0     3152        M                                           #; (f:fpu) ft0  <-- 4533.0
       0     3153        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 4533.0, ft2  = 82.0
       0     3156        M                                           #; (f:fpu) ft0  <-- 4615.0
       0     3157        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 4615.0, ft3  = 94.0
       0     3160        M 0x80000a18 addi    a1, a1, 8              #; a1  = -16, (wrb) a1  <-- -8
                         M                                           #; (f:fpu) ft0  <-- 4709.0
       0     3161        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 4709.0, ft1  = 106.0
       0     3162        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100050]
       0     3163        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x001000b0], (f:lsu) ft1  <-- 11.0
       0     3164        M 0x80000a20 bnez    a1, pc - 80            #; a1  = -8, taken, goto 0x800009d0
                         M                                           #; (f:fpu) ft0  <-- 4815.0
       0     3165        M 0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -8, (wrb) a2  <-- 0x00100178
                         M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 11.0, ft0  = 4815.0, (f:lsu) ft2  <-- 23.0
       0     3166        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x00100110]
       0     3167        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 35.0
       0     3168        M                                           #; (f:fpu) ft0  <-- 4826.0
       0     3169        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 4826.0, ft2  = 23.0, (f:lsu) ft3  <-- 47.0
       0     3170        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001d0]
       0     3171        M                                           #; (f:lsu) ft2  <-- 59.0
       0     3172        M                                           #; (f:fpu) ft0  <-- 4849.0
       0     3173        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 4849.0, ft1  = 35.0
       0     3176        M                                           #; (f:fpu) ft0  <-- 4884.0
       0     3177        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 4884.0, ft3  = 47.0
       0     3178        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100230]
       0     3179        M                                           #; (f:lsu) ft1  <-- 71.0
       0     3180        M                                           #; (f:fpu) ft0  <-- 4931.0
       0     3181        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 4931.0, ft2  = 59.0
       0     3182        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100290]
       0     3183        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002f0], (f:lsu) ft2  <-- 83.0
       0     3184        M                                           #; (f:fpu) ft0  <-- 4990.0
       0     3185        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 4990.0, ft1  = 71.0, (f:lsu) ft3  <-- 95.0
       0     3186        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100350]
       0     3187        M                                           #; (f:lsu) ft1  <-- 107.0
       0     3188        M                                           #; (f:fpu) ft0  <-- 5061.0
       0     3189        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 5061.0, ft2  = 83.0
       0     3192        M                                           #; (f:fpu) ft0  <-- 5144.0
       0     3193        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 5144.0, ft3  = 95.0
       0     3196        M 0x80000a18 addi    a1, a1, 8              #; a1  = -8, (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 5239.0
       0     3197        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 5239.0, ft1  = 107.0
       0     3198        M 0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100058]
       0     3199        M 0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x001000b8], (f:lsu) ft1  <-- 12.0
       0     3200        M 0x80000a20 bnez    a1, pc - 80            #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 5346.0
       0     3201        M 0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 12.0, ft0  = 5346.0, (f:lsu) ft2  <-- 24.0
       0     3202        M 0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x00100118]
       0     3203        M 0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 36.0
       0     3204        M                                           #; (f:fpu) ft0  <-- 5358.0
       0     3205        M 0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 5358.0, ft2  = 24.0, (f:lsu) ft3  <-- 48.0
       0     3206        M 0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001d8]
       0     3207        M                                           #; (f:lsu) ft2  <-- 60.0
       0     3208        M                                           #; (f:fpu) ft0  <-- 5382.0
       0     3209        M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 5382.0, ft1  = 36.0
       0     3212        M                                           #; (f:fpu) ft0  <-- 5418.0
       0     3213        M 0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 5418.0, ft3  = 48.0
       0     3214        M 0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100238]
       0     3215        M                                           #; (f:lsu) ft1  <-- 72.0
       0     3216        M                                           #; (f:fpu) ft0  <-- 5466.0
       0     3217        M 0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 5466.0, ft2  = 60.0
       0     3218        M 0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100298]
       0     3219        M 0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002f8], (f:lsu) ft2  <-- 84.0
       0     3220        M                                           #; (f:fpu) ft0  <-- 5526.0
       0     3221        M 0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 5526.0, ft1  = 72.0, (f:lsu) ft3  <-- 96.0
       0     3222        M 0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100358]
       0     3223        M                                           #; (f:lsu) ft1  <-- 108.0
       0     3224        M                                           #; (f:fpu) ft0  <-- 5598.0
       0     3225        M 0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 5598.0, ft2  = 84.0
       0     3228        M                                           #; (f:fpu) ft0  <-- 5682.0
       0     3229        M 0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 5682.0, ft3  = 96.0
       0     3232        M                                           #; (f:fpu) ft0  <-- 5778.0
       0     3233        M 0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 5778.0, ft1  = 108.0
       0     3234        M 0x80000a24 fld     ft1, 632(sp)           #; ft1  <~~ Doub[0x0011fee8]
       0     3235        M 0x80000a28 fld     ft2, 624(sp)           #; ft2  <~~ Doub[0x0011fee0], (f:lsu) ft1  <-- 1.0
       0     3236        M                                           #; (f:fpu) ft0  <-- 5886.0
       0     3237        M                                           #; (f:lsu) ft2  <-- 2.0
       0     3238        M 0x80000a2c fadd.d  ft1, ft2, ft1          #; ft2  = 2.0, ft1  = 1.0
       0     3239        M 0x80000a30 fld     ft2, 616(sp)           #; ft2  <~~ Doub[0x0011fed8]
       0     3240        M                                           #; (f:lsu) ft2  <-- 3.0
       0     3241        M                                           #; (f:fpu) ft1  <-- 3.0
       0     3242        M 0x80000a34 fadd.d  ft1, ft1, ft2          #; ft1  = 3.0, ft2  = 3.0
       0     3243        M 0x80000a38 fld     ft2, 608(sp)           #; ft2  <~~ Doub[0x0011fed0]
       0     3244        M                                           #; (f:lsu) ft2  <-- 4.0
       0     3245        M                                           #; (f:fpu) ft1  <-- 6.0
       0     3246        M 0x80000a3c fadd.d  ft1, ft1, ft2          #; ft1  = 6.0, ft2  = 4.0
       0     3247        M 0x80000a40 fld     ft2, 600(sp)           #; ft2  <~~ Doub[0x0011fec8]
       0     3248        M                                           #; (f:lsu) ft2  <-- 5.0
       0     3249        M                                           #; (f:fpu) ft1  <-- 10.0
       0     3250        M 0x80000a44 fadd.d  ft1, ft1, ft2          #; ft1  = 10.0, ft2  = 5.0
       0     3251        M 0x80000a48 fld     ft2, 592(sp)           #; ft2  <~~ Doub[0x0011fec0]
       0     3252        M                                           #; (f:lsu) ft2  <-- 6.0
       0     3253        M                                           #; (f:fpu) ft1  <-- 15.0
       0     3254        M 0x80000a4c fadd.d  ft1, ft1, ft2          #; ft1  = 15.0, ft2  = 6.0
       0     3255        M 0x80000a50 fld     ft2, 584(sp)           #; ft2  <~~ Doub[0x0011feb8]
       0     3256        M                                           #; (f:lsu) ft2  <-- 7.0
       0     3257        M                                           #; (f:fpu) ft1  <-- 21.0
       0     3258        M 0x80000a54 fadd.d  ft1, ft1, ft2          #; ft1  = 21.0, ft2  = 7.0
       0     3259        M 0x80000a58 fld     ft2, 576(sp)           #; ft2  <~~ Doub[0x0011feb0]
       0     3260        M                                           #; (f:lsu) ft2  <-- 8.0
       0     3261        M                                           #; (f:fpu) ft1  <-- 28.0
       0     3262        M 0x80000a5c fadd.d  ft1, ft1, ft2          #; ft1  = 28.0, ft2  = 8.0
       0     3263        M 0x80000a60 fld     ft2, 568(sp)           #; ft2  <~~ Doub[0x0011fea8]
       0     3264        M                                           #; (f:lsu) ft2  <-- 9.0
       0     3265        M                                           #; (f:fpu) ft1  <-- 36.0
       0     3266        M 0x80000a64 fadd.d  ft1, ft1, ft2          #; ft1  = 36.0, ft2  = 9.0
       0     3267        M 0x80000a68 fld     ft2, 560(sp)           #; ft2  <~~ Doub[0x0011fea0]
       0     3268        M                                           #; (f:lsu) ft2  <-- 10.0
       0     3269        M                                           #; (f:fpu) ft1  <-- 45.0
       0     3270        M 0x80000a6c fadd.d  ft1, ft1, ft2          #; ft1  = 45.0, ft2  = 10.0
       0     3271        M 0x80000a70 fld     ft2, 552(sp)           #; ft2  <~~ Doub[0x0011fe98]
       0     3272        M                                           #; (f:lsu) ft2  <-- 11.0
       0     3273        M                                           #; (f:fpu) ft1  <-- 55.0
       0     3274        M 0x80000a74 fadd.d  ft1, ft1, ft2          #; ft1  = 55.0, ft2  = 11.0
       0     3275        M 0x80000a78 fld     ft2, 544(sp)           #; ft2  <~~ Doub[0x0011fe90]
       0     3276        M                                           #; (f:lsu) ft2  <-- 12.0
       0     3277        M                                           #; (f:fpu) ft1  <-- 66.0
       0     3278        M 0x80000a7c fadd.d  ft1, ft1, ft2          #; ft1  = 66.0, ft2  = 12.0
       0     3279        M 0x80000a80 fld     ft2, 536(sp)           #; ft2  <~~ Doub[0x0011fe88]
       0     3280        M                                           #; (f:lsu) ft2  <-- 13.0
       0     3281        M                                           #; (f:fpu) ft1  <-- 78.0
       0     3282        M 0x80000a84 fadd.d  ft1, ft1, ft2          #; ft1  = 78.0, ft2  = 13.0
       0     3283        M 0x80000a88 fld     ft2, 528(sp)           #; ft2  <~~ Doub[0x0011fe80]
       0     3284        M                                           #; (f:lsu) ft2  <-- 14.0
       0     3285        M                                           #; (f:fpu) ft1  <-- 91.0
       0     3286        M 0x80000a8c fadd.d  ft1, ft1, ft2          #; ft1  = 91.0, ft2  = 14.0
       0     3287        M 0x80000a90 fld     ft2, 520(sp)           #; ft2  <~~ Doub[0x0011fe78]
       0     3288        M                                           #; (f:lsu) ft2  <-- 15.0
       0     3289        M                                           #; (f:fpu) ft1  <-- 105.0
       0     3290        M 0x80000a94 fadd.d  ft1, ft1, ft2          #; ft1  = 105.0, ft2  = 15.0
       0     3291        M 0x80000a98 fld     ft2, 512(sp)           #; ft2  <~~ Doub[0x0011fe70]
       0     3292        M                                           #; (f:lsu) ft2  <-- 16.0
       0     3293        M                                           #; (f:fpu) ft1  <-- 120.0
       0     3294        M 0x80000a9c fadd.d  ft1, ft1, ft2          #; ft1  = 120.0, ft2  = 16.0
       0     3297        M                                           #; (f:fpu) ft1  <-- 136.0
       0     3299        M 0x80000aa0 fld     ft2, 504(sp)           #; ft2  <~~ Doub[0x0011fe68]
       0     3300        M                                           #; (f:lsu) ft2  <-- 17.0
       0     3301        M 0x80000aa4 fadd.d  ft1, ft1, ft2          #; ft1  = 136.0, ft2  = 17.0
       0     3302        M 0x80000aa8 fld     ft2, 496(sp)           #; ft2  <~~ Doub[0x0011fe60]
       0     3303        M                                           #; (f:lsu) ft2  <-- 18.0
       0     3304        M                                           #; (f:fpu) ft1  <-- 153.0
       0     3305        M 0x80000aac fadd.d  ft1, ft1, ft2          #; ft1  = 153.0, ft2  = 18.0
       0     3308        M                                           #; (f:fpu) ft1  <-- 171.0
       0     3311        M 0x80000ab0 fld     ft2, 488(sp)           #; ft2  <~~ Doub[0x0011fe58]
       0     3312        M                                           #; (f:lsu) ft2  <-- 19.0
       0     3313        M 0x80000ab4 fadd.d  ft1, ft1, ft2          #; ft1  = 171.0, ft2  = 19.0
       0     3314        M 0x80000ab8 fld     ft2, 480(sp)           #; ft2  <~~ Doub[0x0011fe50]
       0     3315        M                                           #; (f:lsu) ft2  <-- 20.0
       0     3316        M                                           #; (f:fpu) ft1  <-- 190.0
       0     3317        M 0x80000abc fadd.d  ft1, ft1, ft2          #; ft1  = 190.0, ft2  = 20.0
       0     3320        M                                           #; (f:fpu) ft1  <-- 210.0
       0     3323        M 0x80000ac0 fld     ft2, 472(sp)           #; ft2  <~~ Doub[0x0011fe48]
       0     3324        M                                           #; (f:lsu) ft2  <-- 21.0
       0     3325        M 0x80000ac4 fadd.d  ft1, ft1, ft2          #; ft1  = 210.0, ft2  = 21.0
       0     3326        M 0x80000ac8 fld     ft2, 464(sp)           #; ft2  <~~ Doub[0x0011fe40]
       0     3327        M                                           #; (f:lsu) ft2  <-- 22.0
       0     3328        M                                           #; (f:fpu) ft1  <-- 231.0
       0     3329        M 0x80000acc fadd.d  ft1, ft1, ft2          #; ft1  = 231.0, ft2  = 22.0
       0     3332        M                                           #; (f:fpu) ft1  <-- 253.0
       0     3335        M 0x80000ad0 fld     ft2, 456(sp)           #; ft2  <~~ Doub[0x0011fe38]
       0     3336        M                                           #; (f:lsu) ft2  <-- 23.0
       0     3337        M 0x80000ad4 fadd.d  ft1, ft1, ft2          #; ft1  = 253.0, ft2  = 23.0
       0     3338        M 0x80000ad8 fld     ft2, 448(sp)           #; ft2  <~~ Doub[0x0011fe30]
       0     3339        M                                           #; (f:lsu) ft2  <-- 24.0
       0     3340        M                                           #; (f:fpu) ft1  <-- 276.0
       0     3341        M 0x80000adc fadd.d  ft1, ft1, ft2          #; ft1  = 276.0, ft2  = 24.0
       0     3344        M                                           #; (f:fpu) ft1  <-- 300.0
       0     3347        M 0x80000ae0 fld     ft2, 440(sp)           #; ft2  <~~ Doub[0x0011fe28]
       0     3348        M                                           #; (f:lsu) ft2  <-- 25.0
       0     3349        M 0x80000ae4 fadd.d  ft1, ft1, ft2          #; ft1  = 300.0, ft2  = 25.0
       0     3350        M 0x80000ae8 fld     ft2, 432(sp)           #; ft2  <~~ Doub[0x0011fe20]
       0     3351        M                                           #; (f:lsu) ft2  <-- 26.0
       0     3352        M                                           #; (f:fpu) ft1  <-- 325.0
       0     3353        M 0x80000aec fadd.d  ft1, ft1, ft2          #; ft1  = 325.0, ft2  = 26.0
       0     3356        M                                           #; (f:fpu) ft1  <-- 351.0
       0     3359        M 0x80000af0 fld     ft2, 424(sp)           #; ft2  <~~ Doub[0x0011fe18]
       0     3360        M                                           #; (f:lsu) ft2  <-- 27.0
       0     3361        M 0x80000af4 fadd.d  ft1, ft1, ft2          #; ft1  = 351.0, ft2  = 27.0
       0     3362        M 0x80000af8 fld     ft2, 416(sp)           #; ft2  <~~ Doub[0x0011fe10]
       0     3363        M                                           #; (f:lsu) ft2  <-- 28.0
       0     3364        M                                           #; (f:fpu) ft1  <-- 378.0
       0     3365        M 0x80000afc fadd.d  ft1, ft1, ft2          #; ft1  = 378.0, ft2  = 28.0
       0     3368        M                                           #; (f:fpu) ft1  <-- 406.0
       0     3371        M 0x80000b00 fld     ft2, 408(sp)           #; ft2  <~~ Doub[0x0011fe08]
       0     3372        M                                           #; (f:lsu) ft2  <-- 29.0
       0     3373        M 0x80000b04 fadd.d  ft1, ft1, ft2          #; ft1  = 406.0, ft2  = 29.0
       0     3374        M 0x80000b08 fld     ft2, 400(sp)           #; ft2  <~~ Doub[0x0011fe00]
       0     3375        M                                           #; (f:lsu) ft2  <-- 30.0
       0     3376        M                                           #; (f:fpu) ft1  <-- 435.0
       0     3377        M 0x80000b0c fadd.d  ft1, ft1, ft2          #; ft1  = 435.0, ft2  = 30.0
       0     3380        M                                           #; (f:fpu) ft1  <-- 465.0
       0     3383        M 0x80000b10 fld     ft2, 392(sp)           #; ft2  <~~ Doub[0x0011fdf8]
       0     3384        M                                           #; (f:lsu) ft2  <-- 31.0
       0     3385        M 0x80000b14 fadd.d  ft1, ft1, ft2          #; ft1  = 465.0, ft2  = 31.0
       0     3386        M 0x80000b18 fld     ft2, 384(sp)           #; ft2  <~~ Doub[0x0011fdf0]
       0     3387        M                                           #; (f:lsu) ft2  <-- 32.0
       0     3388        M                                           #; (f:fpu) ft1  <-- 496.0
       0     3389        M 0x80000b1c fadd.d  ft1, ft1, ft2          #; ft1  = 496.0, ft2  = 32.0
       0     3392        M                                           #; (f:fpu) ft1  <-- 528.0
       0     3395        M 0x80000b20 fld     ft2, 376(sp)           #; ft2  <~~ Doub[0x0011fde8]
       0     3396        M                                           #; (f:lsu) ft2  <-- 33.0
       0     3397        M 0x80000b24 fadd.d  ft1, ft1, ft2          #; ft1  = 528.0, ft2  = 33.0
       0     3398        M 0x80000b28 fld     ft2, 368(sp)           #; ft2  <~~ Doub[0x0011fde0]
       0     3399        M                                           #; (f:lsu) ft2  <-- 34.0
       0     3400        M                                           #; (f:fpu) ft1  <-- 561.0
       0     3401        M 0x80000b2c fadd.d  ft1, ft1, ft2          #; ft1  = 561.0, ft2  = 34.0
       0     3404        M                                           #; (f:fpu) ft1  <-- 595.0
       0     3407        M 0x80000b30 fld     ft2, 360(sp)           #; ft2  <~~ Doub[0x0011fdd8]
       0     3408        M                                           #; (f:lsu) ft2  <-- 35.0
       0     3409        M 0x80000b34 fadd.d  ft1, ft1, ft2          #; ft1  = 595.0, ft2  = 35.0
       0     3410        M 0x80000b38 fld     ft2, 352(sp)           #; ft2  <~~ Doub[0x0011fdd0]
       0     3411        M                                           #; (f:lsu) ft2  <-- 36.0
       0     3412        M                                           #; (f:fpu) ft1  <-- 630.0
       0     3413        M 0x80000b3c fadd.d  ft1, ft1, ft2          #; ft1  = 630.0, ft2  = 36.0
       0     3416        M                                           #; (f:fpu) ft1  <-- 666.0
       0     3419        M 0x80000b40 fld     ft2, 344(sp)           #; ft2  <~~ Doub[0x0011fdc8]
       0     3420        M                                           #; (f:lsu) ft2  <-- 37.0
       0     3421        M 0x80000b44 fadd.d  ft1, ft1, ft2          #; ft1  = 666.0, ft2  = 37.0
       0     3422        M 0x80000b48 fld     ft2, 336(sp)           #; ft2  <~~ Doub[0x0011fdc0]
       0     3423        M                                           #; (f:lsu) ft2  <-- 38.0
       0     3424        M                                           #; (f:fpu) ft1  <-- 703.0
       0     3425        M 0x80000b4c fadd.d  ft1, ft1, ft2          #; ft1  = 703.0, ft2  = 38.0
       0     3428        M                                           #; (f:fpu) ft1  <-- 741.0
       0     3431        M 0x80000b50 fld     ft2, 328(sp)           #; ft2  <~~ Doub[0x0011fdb8]
       0     3432        M                                           #; (f:lsu) ft2  <-- 39.0
       0     3433        M 0x80000b54 fadd.d  ft1, ft1, ft2          #; ft1  = 741.0, ft2  = 39.0
       0     3434        M 0x80000b58 fld     ft2, 320(sp)           #; ft2  <~~ Doub[0x0011fdb0]
       0     3435        M                                           #; (f:lsu) ft2  <-- 40.0
       0     3436        M                                           #; (f:fpu) ft1  <-- 780.0
       0     3437        M 0x80000b5c fadd.d  ft1, ft1, ft2          #; ft1  = 780.0, ft2  = 40.0
       0     3440        M                                           #; (f:fpu) ft1  <-- 820.0
       0     3443        M 0x80000b60 fld     ft2, 312(sp)           #; ft2  <~~ Doub[0x0011fda8]
       0     3444        M                                           #; (f:lsu) ft2  <-- 41.0
       0     3445        M 0x80000b64 fadd.d  ft1, ft1, ft2          #; ft1  = 820.0, ft2  = 41.0
       0     3446        M 0x80000b68 fld     ft2, 304(sp)           #; ft2  <~~ Doub[0x0011fda0]
       0     3447        M                                           #; (f:lsu) ft2  <-- 42.0
       0     3448        M                                           #; (f:fpu) ft1  <-- 861.0
       0     3449        M 0x80000b6c fadd.d  ft1, ft1, ft2          #; ft1  = 861.0, ft2  = 42.0
       0     3452        M                                           #; (f:fpu) ft1  <-- 903.0
       0     3455        M 0x80000b70 fld     ft2, 296(sp)           #; ft2  <~~ Doub[0x0011fd98]
       0     3456        M                                           #; (f:lsu) ft2  <-- 43.0
       0     3457        M 0x80000b74 fadd.d  ft1, ft1, ft2          #; ft1  = 903.0, ft2  = 43.0
       0     3458        M 0x80000b78 fld     ft2, 288(sp)           #; ft2  <~~ Doub[0x0011fd90]
       0     3459        M                                           #; (f:lsu) ft2  <-- 44.0
       0     3460        M                                           #; (f:fpu) ft1  <-- 946.0
       0     3461        M 0x80000b7c fadd.d  ft1, ft1, ft2          #; ft1  = 946.0, ft2  = 44.0
       0     3464        M                                           #; (f:fpu) ft1  <-- 990.0
       0     3467        M 0x80000b80 fld     ft2, 280(sp)           #; ft2  <~~ Doub[0x0011fd88]
       0     3468        M                                           #; (f:lsu) ft2  <-- 45.0
       0     3469        M 0x80000b84 fadd.d  ft1, ft1, ft2          #; ft1  = 990.0, ft2  = 45.0
       0     3470        M 0x80000b88 fld     ft2, 272(sp)           #; ft2  <~~ Doub[0x0011fd80]
       0     3471        M                                           #; (f:lsu) ft2  <-- 46.0
       0     3472        M                                           #; (f:fpu) ft1  <-- 1035.0
       0     3473        M 0x80000b8c fadd.d  ft1, ft1, ft2          #; ft1  = 1035.0, ft2  = 46.0
       0     3476        M                                           #; (f:fpu) ft1  <-- 1081.0
       0     3479        M 0x80000b90 fld     ft2, 264(sp)           #; ft2  <~~ Doub[0x0011fd78]
       0     3480        M                                           #; (f:lsu) ft2  <-- 47.0
       0     3481        M 0x80000b94 fadd.d  ft1, ft1, ft2          #; ft1  = 1081.0, ft2  = 47.0
       0     3482        M 0x80000b98 fld     ft2, 256(sp)           #; ft2  <~~ Doub[0x0011fd70]
       0     3483        M                                           #; (f:lsu) ft2  <-- 48.0
       0     3484        M                                           #; (f:fpu) ft1  <-- 1128.0
       0     3485        M 0x80000b9c fadd.d  ft1, ft1, ft2          #; ft1  = 1128.0, ft2  = 48.0
       0     3488        M                                           #; (f:fpu) ft1  <-- 1176.0
       0     3491        M 0x80000ba0 fld     ft2, 248(sp)           #; ft2  <~~ Doub[0x0011fd68]
       0     3492        M                                           #; (f:lsu) ft2  <-- 49.0
       0     3493        M 0x80000ba4 fadd.d  ft1, ft1, ft2          #; ft1  = 1176.0, ft2  = 49.0
       0     3494        M 0x80000ba8 fld     ft2, 240(sp)           #; ft2  <~~ Doub[0x0011fd60]
       0     3495        M                                           #; (f:lsu) ft2  <-- 50.0
       0     3496        M                                           #; (f:fpu) ft1  <-- 1225.0
       0     3497        M 0x80000bac fadd.d  ft1, ft1, ft2          #; ft1  = 1225.0, ft2  = 50.0
       0     3500        M                                           #; (f:fpu) ft1  <-- 1275.0
       0     3503        M 0x80000bb0 fld     ft2, 232(sp)           #; ft2  <~~ Doub[0x0011fd58]
       0     3504        M                                           #; (f:lsu) ft2  <-- 51.0
       0     3505        M 0x80000bb4 fadd.d  ft1, ft1, ft2          #; ft1  = 1275.0, ft2  = 51.0
       0     3506        M 0x80000bb8 fld     ft2, 224(sp)           #; ft2  <~~ Doub[0x0011fd50]
       0     3507        M                                           #; (f:lsu) ft2  <-- 52.0
       0     3508        M                                           #; (f:fpu) ft1  <-- 1326.0
       0     3509        M 0x80000bbc fadd.d  ft1, ft1, ft2          #; ft1  = 1326.0, ft2  = 52.0
       0     3512        M                                           #; (f:fpu) ft1  <-- 1378.0
       0     3515        M 0x80000bc0 fadd.d  ft1, ft1, ft4          #; ft1  = 1378.0, ft4  = 53.0
       0     3518        M                                           #; (f:fpu) ft1  <-- 1431.0
       0     3519        M 0x80000bc4 fadd.d  ft1, ft1, ft5          #; ft1  = 1431.0, ft5  = 54.0
       0     3522        M                                           #; (f:fpu) ft1  <-- 1485.0
       0     3523        M 0x80000bc8 fadd.d  ft1, ft1, ft6          #; ft1  = 1485.0, ft6  = 55.0
       0     3526        M                                           #; (f:fpu) ft1  <-- 1540.0
       0     3527        M 0x80000bcc fadd.d  ft1, ft1, ft7          #; ft1  = 1540.0, ft7  = 56.0
       0     3530        M                                           #; (f:fpu) ft1  <-- 1596.0
       0     3531        M 0x80000bd0 fadd.d  ft1, ft1, fa0          #; ft1  = 1596.0, fa0  = 57.0
       0     3534        M                                           #; (f:fpu) ft1  <-- 1653.0
       0     3535        M 0x80000bd4 fadd.d  ft1, ft1, fa1          #; ft1  = 1653.0, fa1  = 58.0
       0     3538        M                                           #; (f:fpu) ft1  <-- 1711.0
       0     3539        M 0x80000bd8 fadd.d  ft1, ft1, fa2          #; ft1  = 1711.0, fa2  = 59.0
       0     3542        M                                           #; (f:fpu) ft1  <-- 1770.0
       0     3543        M 0x80000bdc fadd.d  ft1, ft1, fa3          #; ft1  = 1770.0, fa3  = 60.0
       0     3546        M                                           #; (f:fpu) ft1  <-- 1830.0
       0     3547        M 0x80000be0 fadd.d  ft1, ft1, fa4          #; ft1  = 1830.0, fa4  = 61.0
       0     3550        M                                           #; (f:fpu) ft1  <-- 1891.0
       0     3551        M 0x80000be4 fadd.d  ft1, ft1, fa5          #; ft1  = 1891.0, fa5  = 62.0
       0     3554        M                                           #; (f:fpu) ft1  <-- 1953.0
       0     3555        M 0x80000be8 fadd.d  ft1, ft1, fa6          #; ft1  = 1953.0, fa6  = 63.0
       0     3558        M                                           #; (f:fpu) ft1  <-- 2016.0
       0     3559        M 0x80000bec fadd.d  ft1, ft1, fa7          #; ft1  = 2016.0, fa7  = 64.0
       0     3562        M                                           #; (f:fpu) ft1  <-- 2080.0
       0     3563        M 0x80000bf0 fadd.d  ft1, ft1, ft8          #; ft1  = 2080.0, ft8  = 65.0
       0     3566        M                                           #; (f:fpu) ft1  <-- 2145.0
       0     3567        M 0x80000bf4 fadd.d  ft1, ft1, ft9          #; ft1  = 2145.0, ft9  = 66.0
       0     3570        M                                           #; (f:fpu) ft1  <-- 2211.0
       0     3571        M 0x80000bf8 fadd.d  ft1, ft1, ft10         #; ft1  = 2211.0, ft10 = 67.0
       0     3574        M                                           #; (f:fpu) ft1  <-- 2278.0
       0     3575        M 0x80000bfc fadd.d  ft1, ft1, ft11         #; ft1  = 2278.0, ft11 = 68.0
       0     3578        M                                           #; (f:fpu) ft1  <-- 2346.0
       0     3579        M 0x80000c00 fadd.d  ft1, ft1, fs0          #; ft1  = 2346.0, fs0  = 69.0
       0     3582        M                                           #; (f:fpu) ft1  <-- 2415.0
       0     3583        M 0x80000c04 fadd.d  ft1, ft1, fs1          #; ft1  = 2415.0, fs1  = 70.0
       0     3586        M                                           #; (f:fpu) ft1  <-- 2485.0
       0     3587        M 0x80000c08 fadd.d  ft1, ft1, fs2          #; ft1  = 2485.0, fs2  = 71.0
       0     3590        M                                           #; (f:fpu) ft1  <-- 2556.0
       0     3591        M 0x80000c0c fadd.d  ft1, ft1, fs3          #; ft1  = 2556.0, fs3  = 72.0
       0     3594        M                                           #; (f:fpu) ft1  <-- 2628.0
       0     3595        M 0x80000c10 fadd.d  ft1, ft1, fs4          #; ft1  = 2628.0, fs4  = 73.0
       0     3598        M                                           #; (f:fpu) ft1  <-- 2701.0
       0     3599        M 0x80000c14 fadd.d  ft1, ft1, fs5          #; ft1  = 2701.0, fs5  = 74.0
       0     3602        M                                           #; (f:fpu) ft1  <-- 2775.0
       0     3603        M 0x80000c18 fadd.d  ft1, ft1, fs6          #; ft1  = 2775.0, fs6  = 75.0
       0     3606        M                                           #; (f:fpu) ft1  <-- 2850.0
       0     3607        M 0x80000c1c fadd.d  ft1, ft1, fs7          #; ft1  = 2850.0, fs7  = 76.0
       0     3610        M                                           #; (f:fpu) ft1  <-- 2926.0
       0     3611        M 0x80000c20 fadd.d  ft1, ft1, fs8          #; ft1  = 2926.0, fs8  = 77.0
       0     3614        M                                           #; (f:fpu) ft1  <-- 3003.0
       0     3615        M 0x80000c24 fadd.d  ft1, ft1, fs9          #; ft1  = 3003.0, fs9  = 78.0
       0     3618        M                                           #; (f:fpu) ft1  <-- 3081.0
       0     3619        M 0x80000c28 fadd.d  ft1, ft1, fs10         #; ft1  = 3081.0, fs10 = 79.0
       0     3622        M                                           #; (f:fpu) ft1  <-- 3160.0
       0     3623        M 0x80000c2c fadd.d  ft1, ft1, fs11         #; ft1  = 3160.0, fs11 = 80.0
       0     3624        M 0x80000c30 fld     ft2, 216(sp)           #; ft2  <~~ Doub[0x0011fd48]
       0     3625        M                                           #; (f:lsu) ft2  <-- 81.0
       0     3626        M                                           #; (f:fpu) ft1  <-- 3240.0
       0     3627        M 0x80000c34 fadd.d  ft1, ft1, ft2          #; ft1  = 3240.0, ft2  = 81.0
       0     3628        M 0x80000c38 fld     ft2, 208(sp)           #; ft2  <~~ Doub[0x0011fd40]
       0     3629        M                                           #; (f:lsu) ft2  <-- 82.0
       0     3630        M                                           #; (f:fpu) ft1  <-- 3321.0
       0     3631        M 0x80000c3c fadd.d  ft1, ft1, ft2          #; ft1  = 3321.0, ft2  = 82.0
       0     3632        M 0x80000c40 fld     ft2, 200(sp)           #; ft2  <~~ Doub[0x0011fd38]
       0     3633        M                                           #; (f:lsu) ft2  <-- 83.0
       0     3634        M                                           #; (f:fpu) ft1  <-- 3403.0
       0     3635        M 0x80000c44 fadd.d  ft1, ft1, ft2          #; ft1  = 3403.0, ft2  = 83.0
       0     3636        M 0x80000c48 fld     ft2, 192(sp)           #; ft2  <~~ Doub[0x0011fd30]
       0     3637        M                                           #; (f:lsu) ft2  <-- 84.0
       0     3638        M                                           #; (f:fpu) ft1  <-- 3486.0
       0     3639        M 0x80000c4c fadd.d  ft1, ft1, ft2          #; ft1  = 3486.0, ft2  = 84.0
       0     3640        M 0x80000c50 fld     ft2, 184(sp)           #; ft2  <~~ Doub[0x0011fd28]
       0     3641        M                                           #; (f:lsu) ft2  <-- 85.0
       0     3642        M                                           #; (f:fpu) ft1  <-- 3570.0
       0     3643        M 0x80000c54 fadd.d  ft1, ft1, ft2          #; ft1  = 3570.0, ft2  = 85.0
       0     3644        M 0x80000c58 fld     ft2, 176(sp)           #; ft2  <~~ Doub[0x0011fd20]
       0     3645        M                                           #; (f:lsu) ft2  <-- 86.0
       0     3646        M                                           #; (f:fpu) ft1  <-- 3655.0
       0     3647        M 0x80000c5c fadd.d  ft1, ft1, ft2          #; ft1  = 3655.0, ft2  = 86.0
       0     3648        M 0x80000c60 fld     ft2, 168(sp)           #; ft2  <~~ Doub[0x0011fd18]
       0     3649        M                                           #; (f:lsu) ft2  <-- 87.0
       0     3650        M                                           #; (f:fpu) ft1  <-- 3741.0
       0     3651        M 0x80000c64 fadd.d  ft1, ft1, ft2          #; ft1  = 3741.0, ft2  = 87.0
       0     3652        M 0x80000c68 fld     ft2, 160(sp)           #; ft2  <~~ Doub[0x0011fd10]
       0     3653        M                                           #; (f:lsu) ft2  <-- 88.0
       0     3654        M                                           #; (f:fpu) ft1  <-- 3828.0
       0     3655        M 0x80000c6c fadd.d  ft1, ft1, ft2          #; ft1  = 3828.0, ft2  = 88.0
       0     3656        M 0x80000c70 fld     ft2, 152(sp)           #; ft2  <~~ Doub[0x0011fd08]
       0     3657        M                                           #; (f:lsu) ft2  <-- 89.0
       0     3658        M                                           #; (f:fpu) ft1  <-- 3916.0
       0     3659        M 0x80000c74 fadd.d  ft1, ft1, ft2          #; ft1  = 3916.0, ft2  = 89.0
       0     3660        M 0x80000c78 fld     ft2, 144(sp)           #; ft2  <~~ Doub[0x0011fd00]
       0     3661        M                                           #; (f:lsu) ft2  <-- 90.0
       0     3662        M                                           #; (f:fpu) ft1  <-- 4005.0
       0     3663        M 0x80000c7c fadd.d  ft1, ft1, ft2          #; ft1  = 4005.0, ft2  = 90.0
       0     3664        M 0x80000c80 fld     ft2, 136(sp)           #; ft2  <~~ Doub[0x0011fcf8]
       0     3665        M                                           #; (f:lsu) ft2  <-- 91.0
       0     3666        M                                           #; (f:fpu) ft1  <-- 4095.0
       0     3667        M 0x80000c84 fadd.d  ft1, ft1, ft2          #; ft1  = 4095.0, ft2  = 91.0
       0     3668        M 0x80000c88 fld     ft2, 128(sp)           #; ft2  <~~ Doub[0x0011fcf0]
       0     3669        M                                           #; (f:lsu) ft2  <-- 92.0
       0     3670        M                                           #; (f:fpu) ft1  <-- 4186.0
       0     3671        M 0x80000c8c fadd.d  ft1, ft1, ft2          #; ft1  = 4186.0, ft2  = 92.0
       0     3672        M 0x80000c90 fld     ft2, 120(sp)           #; ft2  <~~ Doub[0x0011fce8]
       0     3673        M                                           #; (f:lsu) ft2  <-- 93.0
       0     3674        M                                           #; (f:fpu) ft1  <-- 4278.0
       0     3675        M 0x80000c94 fadd.d  ft1, ft1, ft2          #; ft1  = 4278.0, ft2  = 93.0
       0     3676        M 0x80000c98 fld     ft2, 112(sp)           #; ft2  <~~ Doub[0x0011fce0]
       0     3677        M                                           #; (f:lsu) ft2  <-- 94.0
       0     3678        M                                           #; (f:fpu) ft1  <-- 4371.0
       0     3679        M 0x80000c9c fadd.d  ft1, ft1, ft2          #; ft1  = 4371.0, ft2  = 94.0
       0     3682        M                                           #; (f:fpu) ft1  <-- 4465.0
       0     3683        M 0x80000ca0 fld     ft2, 104(sp)           #; ft2  <~~ Doub[0x0011fcd8]
       0     3684        M                                           #; (f:lsu) ft2  <-- 95.0
       0     3685        M 0x80000ca4 fadd.d  ft1, ft1, ft2          #; ft1  = 4465.0, ft2  = 95.0
       0     3686        M 0x80000ca8 fld     ft2, 96(sp)            #; ft2  <~~ Doub[0x0011fcd0]
       0     3687        M                                           #; (f:lsu) ft2  <-- 96.0
       0     3688        M                                           #; (f:fpu) ft1  <-- 4560.0
       0     3689        M 0x80000cac fadd.d  ft1, ft1, ft2          #; ft1  = 4560.0, ft2  = 96.0
       0     3692        M                                           #; (f:fpu) ft1  <-- 4656.0
       0     3695        M 0x80000cb0 fld     ft2, 88(sp)            #; ft2  <~~ Doub[0x0011fcc8]
       0     3696        M                                           #; (f:lsu) ft2  <-- 97.0
       0     3697        M 0x80000cb4 fadd.d  ft1, ft1, ft2          #; ft1  = 4656.0, ft2  = 97.0
       0     3698        M 0x80000cb8 fld     ft2, 80(sp)            #; ft2  <~~ Doub[0x0011fcc0]
       0     3699        M                                           #; (f:lsu) ft2  <-- 98.0
       0     3700        M                                           #; (f:fpu) ft1  <-- 4753.0
       0     3701        M 0x80000cbc fadd.d  ft1, ft1, ft2          #; ft1  = 4753.0, ft2  = 98.0
       0     3704        M                                           #; (f:fpu) ft1  <-- 4851.0
       0     3707        M 0x80000cc0 fld     ft2, 72(sp)            #; ft2  <~~ Doub[0x0011fcb8]
       0     3708        M                                           #; (f:lsu) ft2  <-- 99.0
       0     3709        M 0x80000cc4 fadd.d  ft1, ft1, ft2          #; ft1  = 4851.0, ft2  = 99.0
       0     3710        M 0x80000cc8 fld     ft2, 64(sp)            #; ft2  <~~ Doub[0x0011fcb0]
       0     3711        M                                           #; (f:lsu) ft2  <-- 100.0
       0     3712        M                                           #; (f:fpu) ft1  <-- 4950.0
       0     3713        M 0x80000ccc fadd.d  ft1, ft1, ft2          #; ft1  = 4950.0, ft2  = 100.0
       0     3716        M                                           #; (f:fpu) ft1  <-- 5050.0
       0     3719        M 0x80000cd0 fld     ft2, 56(sp)            #; ft2  <~~ Doub[0x0011fca8]
       0     3720        M                                           #; (f:lsu) ft2  <-- 101.0
       0     3721        M 0x80000cd4 fadd.d  ft1, ft1, ft2          #; ft1  = 5050.0, ft2  = 101.0
       0     3722        M 0x80000cd8 fld     ft2, 48(sp)            #; ft2  <~~ Doub[0x0011fca0]
       0     3723        M                                           #; (f:lsu) ft2  <-- 102.0
       0     3724        M                                           #; (f:fpu) ft1  <-- 5151.0
       0     3725        M 0x80000cdc fadd.d  ft1, ft1, ft2          #; ft1  = 5151.0, ft2  = 102.0
       0     3728        M                                           #; (f:fpu) ft1  <-- 5253.0
       0     3731        M 0x80000ce0 fld     ft2, 40(sp)            #; ft2  <~~ Doub[0x0011fc98]
       0     3732        M                                           #; (f:lsu) ft2  <-- 103.0
       0     3733        M 0x80000ce4 fadd.d  ft1, ft1, ft2          #; ft1  = 5253.0, ft2  = 103.0
       0     3734        M 0x80000ce8 fld     ft2, 32(sp)            #; ft2  <~~ Doub[0x0011fc90]
       0     3735        M                                           #; (f:lsu) ft2  <-- 104.0
       0     3736        M                                           #; (f:fpu) ft1  <-- 5356.0
       0     3737        M 0x80000cec fadd.d  ft1, ft1, ft2          #; ft1  = 5356.0, ft2  = 104.0
       0     3740        M                                           #; (f:fpu) ft1  <-- 5460.0
       0     3743        M 0x80000cf0 fld     ft2, 24(sp)            #; ft2  <~~ Doub[0x0011fc88]
       0     3744        M                                           #; (f:lsu) ft2  <-- 105.0
       0     3745        M 0x80000cf4 fadd.d  ft1, ft1, ft2          #; ft1  = 5460.0, ft2  = 105.0
       0     3746        M 0x80000cf8 fld     ft2, 16(sp)            #; ft2  <~~ Doub[0x0011fc80]
       0     3747        M                                           #; (f:lsu) ft2  <-- 106.0
       0     3748        M                                           #; (f:fpu) ft1  <-- 5565.0
       0     3749        M 0x80000cfc fadd.d  ft1, ft1, ft2          #; ft1  = 5565.0, ft2  = 106.0
       0     3752        M                                           #; (f:fpu) ft1  <-- 5671.0
       0     3755        M 0x80000d00 fld     ft2, 8(sp)             #; ft2  <~~ Doub[0x0011fc78]
       0     3756        M                                           #; (f:lsu) ft2  <-- 107.0
       0     3757        M 0x80000d04 fadd.d  ft1, ft1, ft2          #; ft1  = 5671.0, ft2  = 107.0
       0     3758        M 0x80000d08 fld     ft2, 0(sp)             #; ft2  <~~ Doub[0x0011fc70]
       0     3759        M                                           #; (f:lsu) ft2  <-- 108.0
       0     3760        M                                           #; (f:fpu) ft1  <-- 5778.0
       0     3761        M 0x80000d0c fadd.d  ft1, ft1, ft2          #; ft1  = 5778.0, ft2  = 108.0
       0     3764        M                                           #; (f:fpu) ft1  <-- 5886.0
       0     3767        M 0x80000d10 fsub.d  ft0, ft1, ft0          #; ft1  = 5886.0, ft0  = 5886.0
       0     3768        M 0x80000d1c lw      a2, 640(sp)            #; sp  = 0x0011fc70, a2  <~~ Word[0x0011fef0]
       0     3770        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3771        M                                           #; (lsu) a2  <-- 0
                         M 0x80000d14 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     3772        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3773        M 0x80000d18 fsd     fs0, 640(sp)           #; 0.0 ~~> Doub[0x0011fef0]
       0     3777        M 0x80000d20 lw      a3, 644(sp)            #; sp  = 0x0011fc70, a3  <~~ Word[0x0011fef4]
       0     3778        M 0x80000d24 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d24
       0     3779        M 0x80000d28 addi    a0, a0, 913            #; a0  = 0x80002d24, (wrb) a0  <-- 0x800030b5
       0     3780        M 0x80000d2c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000d2c
       0     3781        M                                           #; (lsu) a3  <-- 0
       0     3789        M 0x80000d30 jalr    ra, ra, 84             #; ra  = 0x80000d2c, (wrb) ra  <-- 0x80000d34, goto 0x80000d80
       0     3794        M 0x80000d80 addi    sp, sp, -48            #; sp  = 0x0011fc70, (wrb) sp  <-- 0x0011fc40
       0     3795        M 0x80000d84 sw      ra, 12(sp)             #; sp  = 0x0011fc40, 0x80000d34 ~~> Word[0x0011fc4c]
       0     3796        M 0x80000d88 mv      t0, a0                 #; a0  = 0x800030b5, (wrb) t0  <-- 0x800030b5
       0     3797        M 0x80000d8c sw      a7, 44(sp)             #; sp  = 0x0011fc40, 0xffff0000 ~~> Word[0x0011fc6c]
       0     3806        M 0x80000d90 sw      a6, 40(sp)             #; sp  = 0x0011fc40, 0x00120000 ~~> Word[0x0011fc68]
       0     3807        M 0x80000d94 sw      a5, 36(sp)             #; sp  = 0x0011fc40, 0x0011ff70 ~~> Word[0x0011fc64]
       0     3808        M 0x80000d98 sw      a4, 32(sp)             #; sp  = 0x0011fc40, 0x0001df30 ~~> Word[0x0011fc60]
       0     3809        M 0x80000d9c sw      a3, 28(sp)             #; sp  = 0x0011fc40, 0 ~~> Word[0x0011fc5c]
       0     3818        M 0x80000da0 sw      a2, 24(sp)             #; sp  = 0x0011fc40, 0 ~~> Word[0x0011fc58]
       0     3819        M 0x80000da4 sw      a1, 20(sp)             #; sp  = 0x0011fc40, 0 ~~> Word[0x0011fc54]
       0     3820        M 0x80000da8 addi    a0, sp, 20             #; sp  = 0x0011fc40, (wrb) a0  <-- 0x0011fc54
       0     3821        M 0x80000dac sw      a0, 8(sp)              #; sp  = 0x0011fc40, 0x0011fc54 ~~> Word[0x0011fc48]
       0     3830        M 0x80000db0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001db0
       0     3831        M 0x80000db4 addi    a0, a0, -988           #; a0  = 0x80001db0, (wrb) a0  <-- 0x800019d4
       0     3832        M 0x80000db8 addi    a1, sp, 7              #; sp  = 0x0011fc40, (wrb) a1  <-- 0x0011fc47
       0     3833        M 0x80000dbc li      a2, -1                 #; (wrb) a2  <-- -1
       0     3842        M 0x80000dc0 addi    a4, sp, 20             #; sp  = 0x0011fc40, (wrb) a4  <-- 0x0011fc54
       0     3843        M 0x80000dc4 mv      a3, t0                 #; t0  = 0x800030b5, (wrb) a3  <-- 0x800030b5
       0     3844        M 0x80000dc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000dc8
       0     3845        M 0x80000dcc jalr    ra, ra, 20             #; ra  = 0x80000dc8, (wrb) ra  <-- 0x80000dd0, goto 0x80000ddc
       0     3854        M 0x80000ddc addi    sp, sp, -112           #; sp  = 0x0011fc40, (wrb) sp  <-- 0x0011fbd0
       0     3866        M 0x80000de0 sw      ra, 108(sp)            #; sp  = 0x0011fbd0, 0x80000dd0 ~~> Word[0x0011fc3c]
       0     3867        M 0x80000de4 sw      s0, 104(sp)            #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc38]
       0     3868        M 0x80000de8 sw      s1, 100(sp)            #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc34]
       0     3869        M 0x80000dec sw      s2, 96(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc30]
       0     3878        M 0x80000df0 sw      s3, 92(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc2c]
       0     3879        M 0x80000df4 sw      s4, 88(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc28]
       0     3880        M 0x80000df8 sw      s5, 84(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc24]
       0     3881        M 0x80000dfc sw      s6, 80(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc20]
       0     3890        M 0x80000e00 sw      s7, 76(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc1c]
       0     3891        M 0x80000e04 sw      s8, 72(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc18]
       0     3892        M 0x80000e08 sw      s9, 68(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc14]
       0     3893        M 0x80000e0c sw      s10, 64(sp)            #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc10]
       0     3902        M 0x80000e10 sw      s11, 60(sp)            #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc0c]
       0     3903        M 0x80000e14 mv      s3, a4                 #; a4  = 0x0011fc54, (wrb) s3  <-- 0x0011fc54
       0     3904        M 0x80000e18 mv      s0, a3                 #; a3  = 0x800030b5, (wrb) s0  <-- 0x800030b5
       0     3905        M 0x80000e1c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     3914        M 0x80000e20 mv      s4, a1                 #; a1  = 0x0011fc47, (wrb) s4  <-- 0x0011fc47
       0     3915        M 0x80000e24 beqz    a1, pc + 12            #; a1  = 0x0011fc47, not taken
       0     3916        M 0x80000e28 mv      s2, a0                 #; a0  = 0x800019d4, (wrb) s2  <-- 0x800019d4
       0     3917        M 0x80000e2c j       pc + 0xc               #; goto 0x80000e38
       0     3926        M 0x80000e38 li      s8, 0                  #; (wrb) s8  <-- 0
       0     3927        M 0x80000e3c li      s6, 37                 #; (wrb) s6  <-- 37
       0     3938        M 0x80000e40 li      s11, 16                #; (wrb) s11 <-- 16
       0     3939        M 0x80000e44 li      s7, 46                 #; (wrb) s7  <-- 46
       0     3940        M 0x80000e48 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     3941        M 0x80000e4c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     3950        M 0x80000e50 sw      a0, 24(sp)             #; sp  = 0x0011fbd0, 2048 ~~> Word[0x0011fbe8]
       0     3951        M 0x80000e54 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     3952        M 0x80000e58 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     3953        M 0x80000e5c sw      a0, 16(sp)             #; sp  = 0x0011fbd0, 65535 ~~> Word[0x0011fbe0]
       0     3962        M 0x80000e60 addi    s10, s0, 2             #; s0  = 0x800030b5, (wrb) s10 <-- 0x800030b7
       0     3963        M 0x80000e64 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     3964        M 0x80000e68 li      s8, 10                 #; (wrb) s8  <-- 10
       0     3965        M 0x80000e6c lbu     a0, 0(s0)              #; s0  = 0x800030b5, a0  <~~ Byte[0x800030b5]
       0     3976        M                                           #; (lsu) a0  <-- 101
       0     3977        M 0x80000e70 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     3978        M 0x80000e74 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3979        M 0x80000e78 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3980        M 0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     3986        M 0x80000e80 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3987        M 0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3988        M 0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
       0     4009        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     4010        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4011        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4021        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4022        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     4023        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     4024        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4025        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     4033        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4044        M                                           #; (lsu) a4  <-- 0
       0     4045        M 0x800019f4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     4046        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 1 ~~> Word[0x8000340c]
       0     4047        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 0, (wrb) a4  <-- 0x8000340c
       0     4048        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000340c, 101 ~~> Byte[0x80003454]
       0     4049        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4070        M                                           #; (lsu) a4  <-- 1
       0     4071        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     4072        M 0x80001a0c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     4073        M 0x80001a10 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     4074        M 0x80001a14 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     4075        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4076        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     4096        M 0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
       0     4110        M 0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030b5, (wrb) s0  <-- 0x800030b6
       0     4113        M 0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030b7, (wrb) s10 <-- 0x800030b8
       0     4114        M 0x80000e94 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     4115        M 0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030b6, a0  <~~ Byte[0x800030b6]
       0     4126        M                                           #; (lsu) a0  <-- 114
       0     4127        M 0x80000e9c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e74
       0     4128        M 0x80000e74 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4129        M 0x80000e78 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     4130        M 0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     4131        M 0x80000e80 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     4132        M 0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4133        M 0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
       0     4136        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4137        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4138        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4139        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4140        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     4141        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     4142        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4143        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     4144        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4155        M                                           #; (lsu) a4  <-- 1
       0     4156        M 0x800019f4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     4157        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 2 ~~> Word[0x8000340c]
       0     4158        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 1, (wrb) a4  <-- 0x8000340d
       0     4159        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000340d, 114 ~~> Byte[0x80003455]
       0     4160        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4181        M                                           #; (lsu) a4  <-- 2
       0     4182        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     4183        M 0x80001a0c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     4184        M 0x80001a10 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4185        M 0x80001a14 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4186        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4187        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     4190        M 0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
       0     4195        M 0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030b6, (wrb) s0  <-- 0x800030b7
       0     4198        M 0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030b8, (wrb) s10 <-- 0x800030b9
       0     4199        M 0x80000e94 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     4200        M 0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030b7, a0  <~~ Byte[0x800030b7]
       0     4211        M                                           #; (lsu) a0  <-- 114
       0     4212        M 0x80000e9c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e74
       0     4213        M 0x80000e74 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4214        M 0x80000e78 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     4215        M 0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     4216        M 0x80000e80 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     4217        M 0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4218        M 0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
       0     4221        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4222        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4223        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4224        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4225        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     4226        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     4227        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4228        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     4229        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4240        M                                           #; (lsu) a4  <-- 2
       0     4241        M 0x800019f4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     4242        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 3 ~~> Word[0x8000340c]
       0     4243        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 2, (wrb) a4  <-- 0x8000340e
       0     4244        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000340e, 114 ~~> Byte[0x80003456]
       0     4245        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4266        M                                           #; (lsu) a4  <-- 3
       0     4267        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     4268        M 0x80001a0c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     4269        M 0x80001a10 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4270        M 0x80001a14 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4271        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4272        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     4275        M 0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
       0     4280        M 0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030b7, (wrb) s0  <-- 0x800030b8
       0     4283        M 0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030b9, (wrb) s10 <-- 0x800030ba
       0     4284        M 0x80000e94 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     4285        M 0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030b8, a0  <~~ Byte[0x800030b8]
       0     4296        M                                           #; (lsu) a0  <-- 111
       0     4297        M 0x80000e9c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000e74
       0     4298        M 0x80000e74 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     4299        M 0x80000e78 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     4300        M 0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     4301        M 0x80000e80 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     4302        M 0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4303        M 0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
       0     4306        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     4307        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4308        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4309        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4310        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     4311        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     4312        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4313        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     4314        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4325        M                                           #; (lsu) a4  <-- 3
       0     4326        M 0x800019f4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     4327        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 4 ~~> Word[0x8000340c]
       0     4328        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 3, (wrb) a4  <-- 0x8000340f
       0     4329        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000340f, 111 ~~> Byte[0x80003457]
       0     4330        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4351        M                                           #; (lsu) a4  <-- 4
       0     4352        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     4353        M 0x80001a0c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     4354        M 0x80001a10 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     4355        M 0x80001a14 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     4356        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4357        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     4360        M 0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
       0     4365        M 0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030b8, (wrb) s0  <-- 0x800030b9
       0     4368        M 0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030ba, (wrb) s10 <-- 0x800030bb
       0     4369        M 0x80000e94 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     4370        M 0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030b9, a0  <~~ Byte[0x800030b9]
       0     4381        M                                           #; (lsu) a0  <-- 114
       0     4382        M 0x80000e9c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e74
       0     4383        M 0x80000e74 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4384        M 0x80000e78 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     4385        M 0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     4386        M 0x80000e80 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     4387        M 0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4388        M 0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
       0     4391        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4392        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4393        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4394        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4395        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     4396        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     4397        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4398        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     4399        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4410        M                                           #; (lsu) a4  <-- 4
       0     4411        M 0x800019f4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     4412        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 5 ~~> Word[0x8000340c]
       0     4413        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 4, (wrb) a4  <-- 0x80003410
       0     4414        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003410, 114 ~~> Byte[0x80003458]
       0     4415        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4436        M                                           #; (lsu) a4  <-- 5
       0     4437        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     4438        M 0x80001a0c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     4439        M 0x80001a10 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4440        M 0x80001a14 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4441        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4442        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     4445        M 0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
       0     4450        M 0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030b9, (wrb) s0  <-- 0x800030ba
       0     4453        M 0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030bb, (wrb) s10 <-- 0x800030bc
       0     4454        M 0x80000e94 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     4455        M 0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030ba, a0  <~~ Byte[0x800030ba]
       0     4466        M                                           #; (lsu) a0  <-- 32
       0     4467        M 0x80000e9c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e74
       0     4468        M 0x80000e74 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4469        M 0x80000e78 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     4470        M 0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     4471        M 0x80000e80 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     4472        M 0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4473        M 0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
       0     4476        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4477        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4478        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4479        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4480        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     4481        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     4482        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4483        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     4484        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4495        M                                           #; (lsu) a4  <-- 5
       0     4496        M 0x800019f4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     4497        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 6 ~~> Word[0x8000340c]
       0     4498        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 5, (wrb) a4  <-- 0x80003411
       0     4499        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003411, 32 ~~> Byte[0x80003459]
       0     4500        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4521        M                                           #; (lsu) a4  <-- 6
       0     4522        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     4523        M 0x80001a0c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     4524        M 0x80001a10 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     4525        M 0x80001a14 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     4526        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4527        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     4530        M 0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
       0     4535        M 0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030ba, (wrb) s0  <-- 0x800030bb
       0     4538        M 0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030bc, (wrb) s10 <-- 0x800030bd
       0     4539        M 0x80000e94 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     4540        M 0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030bb, a0  <~~ Byte[0x800030bb]
       0     4551        M                                           #; (lsu) a0  <-- 61
       0     4552        M 0x80000e9c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000e74
       0     4553        M 0x80000e74 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     4554        M 0x80000e78 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     4555        M 0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     4556        M 0x80000e80 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     4557        M 0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4558        M 0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
       0     4561        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     4562        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4563        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4564        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4565        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     4566        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     4567        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4568        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     4569        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4580        M                                           #; (lsu) a4  <-- 6
       0     4581        M 0x800019f4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     4582        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 7 ~~> Word[0x8000340c]
       0     4583        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 6, (wrb) a4  <-- 0x80003412
       0     4584        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003412, 61 ~~> Byte[0x8000345a]
       0     4585        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4606        M                                           #; (lsu) a4  <-- 7
       0     4607        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     4608        M 0x80001a0c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     4609        M 0x80001a10 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     4610        M 0x80001a14 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     4611        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4612        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     4615        M 0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
       0     4620        M 0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030bb, (wrb) s0  <-- 0x800030bc
       0     4623        M 0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030bd, (wrb) s10 <-- 0x800030be
       0     4624        M 0x80000e94 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     4625        M 0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030bc, a0  <~~ Byte[0x800030bc]
       0     4636        M                                           #; (lsu) a0  <-- 32
       0     4637        M 0x80000e9c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e74
       0     4638        M 0x80000e74 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4639        M 0x80000e78 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     4640        M 0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     4641        M 0x80000e80 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     4642        M 0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4643        M 0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
       0     4646        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4647        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4648        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4649        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4650        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     4651        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     4652        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4653        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     4654        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4665        M                                           #; (lsu) a4  <-- 7
       0     4666        M 0x800019f4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     4667        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 8 ~~> Word[0x8000340c]
       0     4668        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 7, (wrb) a4  <-- 0x80003413
       0     4669        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003413, 32 ~~> Byte[0x8000345b]
       0     4670        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     4691        M                                           #; (lsu) a4  <-- 8
       0     4692        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     4693        M 0x80001a0c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     4694        M 0x80001a10 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     4695        M 0x80001a14 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     4696        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4697        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     4700        M 0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
       0     4705        M 0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030bc, (wrb) s0  <-- 0x800030bd
       0     4708        M 0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030be, (wrb) s10 <-- 0x800030bf
       0     4709        M 0x80000e94 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     4710        M 0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030bd, a0  <~~ Byte[0x800030bd]
       0     4721        M                                           #; (lsu) a0  <-- 37
       0     4722        M 0x80000e9c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000e74
       0     4723        M 0x80000e74 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000ea4
       0     4735        M 0x80000ea4 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4736        M 0x80000ea8 j       pc + 0x10              #; goto 0x80000eb8
       0     4747        M 0x80000eb8 lbu     a0, -1(s10)            #; s10 = 0x800030bf, a0  <~~ Byte[0x800030be]
       0     4758        M                                           #; (lsu) a0  <-- 102
       0     4759        M 0x80000ebc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     4760        M 0x80000ec0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000ef8
       0     4783        M 0x80000ef8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     4784        M 0x80000efc andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     4795        M 0x80000f00 addi    a1, s10, -1            #; s10 = 0x800030bf, (wrb) a1  <-- 0x800030be
       0     4796        M 0x80000f04 li      a3, 9                  #; (wrb) a3  <-- 9
       0     4797        M 0x80000f08 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000f84
       0     4818        M 0x80000f84 li      a2, 42                 #; (wrb) a2  <-- 42
       0     4819        M 0x80000f88 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000fd8
       0     4841        M 0x80000fd8 li      s6, 0                  #; (wrb) s6  <-- 0
       0     4842        M 0x80000fdc mv      s10, a1                #; a1  = 0x800030be, (wrb) s10 <-- 0x800030be
       0     4853        M 0x80000fe0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     4854        M 0x80000fe4 li      s7, 0                  #; (wrb) s7  <-- 0
       0     4855        M 0x80000fe8 j       pc + 0xc               #; goto 0x80000ff4
       0     4876        M 0x80000ff4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     4877        M 0x80000ff8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     4878        M 0x80000ffc slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     4888        M 0x80001000 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     4889        M 0x80001004 li      a2, 9                  #; (wrb) a2  <-- 9
       0     4890        M 0x80001008 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x8000106c
       0     4911        M 0x8000106c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     4923        M 0x80001070 li      a2, 83                 #; (wrb) a2  <-- 83
       0     4924        M 0x80001074 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     4925        M 0x80001078 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     4926        M 0x8000107c auipc   a2, 0x2                #; (wrb) a2  <-- 0x8000307c
       0     4935        M 0x80001080 addi    a2, a2, 184            #; a2  = 0x8000307c, (wrb) a2  <-- 0x80003134
       0     4936        M 0x80001084 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003134, (wrb) a1  <-- 0x80003238
       0     4937        M 0x80001088 lw      a2, 0(a1)              #; a1  = 0x80003238, a2  <~~ Word[0x80003238]
       0     4938        M 0x8000108c li      a1, 8                  #; (wrb) a1  <-- 8
       0     4947        M 0x80001090 li      s8, 16                 #; (wrb) s8  <-- 16
       0     4948        M                                           #; (lsu) a2  <-- 0x800010c4
       0     4949        M 0x80001094 jr      a2                     #; a2  = 0x800010c4, goto 0x800010c4
       0     4970        M 0x800010c4 li      a1, 70                 #; (wrb) a1  <-- 70
       0     4971        M 0x800010c8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800010d0
       0     4982        M 0x800010d0 addi    a0, s3, 7              #; s3  = 0x0011fc54, (wrb) a0  <-- 0x0011fc5b
       0     4983        M 0x800010d4 andi    a0, a0, -8             #; a0  = 0x0011fc5b, (wrb) a0  <-- 0x0011fc58
       0     4985        M 0x800010dc addi    s3, a0, 8              #; a0  = 0x0011fc58, (wrb) s3  <-- 0x0011fc60
       0     4986        M 0x800010d8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fc58]
       0     4987        M                                           #; (f:lsu) fa0  <-- 0.0
       0     4994        M 0x800010e0 mv      a0, s2                 #; s2  = 0x800019d4, (wrb) a0  <-- 0x800019d4
       0     4995        M 0x800010e4 mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     4996        M 0x800010e8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4997        M 0x800010ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5006        M 0x800010f0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     5007        M 0x800010f4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     5008        M 0x800010f8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     5009        M 0x800010fc auipc   ra, 0x1                #; (wrb) ra  <-- 0x800020fc
       0     5018        M 0x80001100 jalr    ra, ra, -1656          #; ra  = 0x800020fc, (wrb) ra  <-- 0x80001104, goto 0x80001a84
       0     5032        M 0x80001a84 addi    sp, sp, -112           #; sp  = 0x0011fbd0, (wrb) sp  <-- 0x0011fb60
       0     5033        M 0x80001a88 sw      ra, 108(sp)            #; sp  = 0x0011fb60, 0x80001104 ~~> Word[0x0011fbcc]
       0     5034        M 0x80001a8c sw      s0, 104(sp)            #; sp  = 0x0011fb60, 0 ~~> Word[0x0011fbc8]
       0     5044        M 0x80001a90 sw      s1, 100(sp)            #; sp  = 0x0011fb60, 8 ~~> Word[0x0011fbc4]
       0     5045        M 0x80001a94 sw      s2, 96(sp)             #; sp  = 0x0011fb60, 0x800019d4 ~~> Word[0x0011fbc0]
       0     5046        M 0x80001a98 sw      s3, 92(sp)             #; sp  = 0x0011fb60, 0x0011fc60 ~~> Word[0x0011fbbc]
       0     5047        M 0x80001a9c sw      s4, 88(sp)             #; sp  = 0x0011fb60, 0x0011fc47 ~~> Word[0x0011fbb8]
       0     5056        M 0x80001aa0 sw      s5, 84(sp)             #; sp  = 0x0011fb60, -1 ~~> Word[0x0011fbb4]
       0     5057        M 0x80001aa4 sw      s6, 80(sp)             #; sp  = 0x0011fb60, 0 ~~> Word[0x0011fbb0]
       0     5058        M 0x80001aa8 sw      s7, 76(sp)             #; sp  = 0x0011fb60, 0 ~~> Word[0x0011fbac]
       0     5059        M 0x80001aac sw      s8, 72(sp)             #; sp  = 0x0011fb60, 16 ~~> Word[0x0011fba8]
       0     5068        M 0x80001ab0 sw      s9, 68(sp)             #; sp  = 0x0011fb60, 8 ~~> Word[0x0011fba4]
       0     5069        M 0x80001ab4 sw      s10, 64(sp)            #; sp  = 0x0011fb60, 0x800030be ~~> Word[0x0011fba0]
       0     5072        M 0x80001ab8 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fb98]
       0     5073        M 0x80001abc fsd     fs1, 48(sp)            #; 70.0 ~~> Doub[0x0011fb90]
       0     5081        M 0x80001ac4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003ac4
       0     5082        M 0x80001ac8 addi    s1, s1, -1892          #; s1  = 0x80003ac4, (wrb) s1  <-- 0x80003360
                         M 0x80001ac0 fsd     fs2, 40(sp)            #; 71.0 ~~> Doub[0x0011fb88]
       0     5085        M 0x80001acc fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003360]
       0     5093        M 0x80001ad4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     5094        M 0x80001ad8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5095        M 0x80001adc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001ad0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     5104        M 0x80001ae0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     5105        M 0x80001ae4 mv      s6, a1                 #; a1  = 0x0011fc47, (wrb) s6  <-- 0x0011fc47
       0     5106        M 0x80001ae8 mv      s7, a0                 #; a0  = 0x800019d4, (wrb) s7  <-- 0x800019d4
       0     5107        M 0x80001aec bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001bdc
       0     5129        M 0x80001bdc fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     5130        M                                           #; (f:fpu) fs0  <-- 0.0
       0     5139        M 0x80001be0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002be0
       0     5140        M 0x80001be4 addi    a0, a0, 1928           #; a0  = 0x80002be0, (wrb) a0  <-- 0x80003368
       0     5143        M 0x80001be8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003368]
       0     5152        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5153        M 0x80001bec fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5155        M                                           #; (acc) t3  <-- 0x00051e63
       0     5156        M 0x80001bf0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001c0c
       0     5163        M 0x80001c0c auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002c0c
       0     5175        M 0x80001c10 addi    a0, a0, 1892           #; a0  = 0x80002c0c, (wrb) a0  <-- 0x80003370
       0     5177        M 0x80001c18 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002c18
       0     5178        M 0x80001c1c addi    a0, a0, 1888           #; a0  = 0x80002c18, (wrb) a0  <-- 0x80003378
                         M 0x80001c14 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003370]
       0     5187        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     5189        M 0x80001c20 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003378]
       0     5190        M 0x80001c24 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     5192        M                                           #; (acc) a0  <-- 0x00b57533
       0     5198        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     5199        M 0x80001c28 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     5201        M                                           #; (acc) a0  <-- 0x00b57533
       0     5202        M 0x80001c2c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     5203        M 0x80001c30 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001d2c
       0     5226        M 0x80001d2c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     5238        M 0x80001d30 li      s8, 6                  #; (wrb) s8  <-- 6
       0     5239        M 0x80001d34 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001d3c
       0     5240        M 0x80001d3c li      a0, 10                 #; (wrb) a0  <-- 10
       0     5251        M 0x80001d44 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001d7c
       0     5252        M 0x80001d40 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     5253        M                                           #; (f:fpu) fs2  <-- 0.0
       0     5273        M 0x80001d7c li      s0, 0                  #; (wrb) s0  <-- 0
       0     5285        M 0x80001d80 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     5286        M 0x80001d84 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002d84
       0     5287        M 0x80001d88 addi    a1, a1, 1284           #; a1  = 0x80002d84, (wrb) a1  <-- 0x80003288
       0     5288        M 0x80001d8c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003288, (wrb) a0  <-- 0x800032b8
       0     5299        M 0x80001d90 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800032b8]
       0     5300        M 0x80001d94 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     5304        M 0x80001d98 fcvt.d.w ft0, s1               #; ac1  = 0
       0     5305        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5306        M 0x80001d9c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     5308        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     5309        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5310        M 0x80001da4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002da4
       0     5311        M 0x80001da8 addi    a0, a0, 1500           #; a0  = 0x80002da4, (wrb) a0  <-- 0x80003380
                         M 0x80001da0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     5314        M 0x80001dac fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003380], (f:fpu) ft2  <-- 0.0
       0     5322        M 0x80001db0 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     5323        M                                           #; (f:lsu) ft0  <-- 0.5
       0     5324        M                                           #; (acc) gp  <-- 0xd21501d3
       0     5326        M 0x80001db4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     5327        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5328        M 0x80001db8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     5331        M                                           #; (f:fpu) ft2  <-- 0.0
       0     5332        M 0x80001dbc fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5335        M 0x80001dc0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001de0
       0     5357        M 0x80001de0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5359        M                                           #; (acc) s4  <-- 0x00059a63
       0     5360        M 0x80001de4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001df8
       0     5369        M 0x80001dfc beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001df8 fcvt.d.w fs1, zero             #; ac1  = 0
       0     5370        M                                           #; (f:fpu) fs1  <-- 0.0
       0     5380        M 0x80001e00 li      a2, 0                  #; (wrb) a2  <-- 0
       0     5381        M 0x80001e04 addi    a1, sp, 8              #; sp  = 0x0011fb60, (wrb) a1  <-- 0x0011fb68
       0     5382        M 0x80001e08 add     t1, a1, s0             #; a1  = 0x0011fb68, s0  = 0, (wrb) t1  <-- 0x0011fb68
       0     5383        M 0x80001e0c li      t0, 32                 #; (wrb) t0  <-- 32
       0     5392        M 0x80001e10 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     5393        M 0x80001e14 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     5394        M 0x80001e18 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     5395        M 0x80001e1c li      a6, 10                 #; (wrb) a6  <-- 10
       0     5404        M 0x80001e20 li      a7, 9                  #; (wrb) a7  <-- 9
       0     5405        M 0x80001e24 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     5406        M 0x80001e28 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     5407        M 0x80001e2c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     5416        M 0x80001e30 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     5417        M 0x80001e34 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     5420        M                                           #; (acc) a3  <-- 0x40d586b3
       0     5421        M 0x80001e38 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     5422        M 0x80001e3c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     5428        M 0x80001e40 add     a5, t1, a2             #; t1  = 0x0011fb68, a2  = 0, (wrb) a5  <-- 0x0011fb68
       0     5429        M 0x80001e44 sb      a3, 0(a5)              #; a5  = 0x0011fb68, 48 ~~> Byte[0x0011fb68]
       0     5430        M 0x80001e48 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     5431        M 0x80001e4c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     5443        M 0x80001e50 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     5444        M 0x80001e54 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     5445        M 0x80001e58 li      a3, 30                 #; (wrb) a3  <-- 30
       0     5446        M 0x80001e5c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     5455        M 0x80001e60 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     5456        M 0x80001e64 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     5457        M 0x80001e68 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     5458        M 0x80001e6c bnez    a3, pc + 136           #; a3  = 0, not taken
       0     5467        M 0x80001e70 addi    a0, sp, 8              #; sp  = 0x0011fb60, (wrb) a0  <-- 0x0011fb68
       0     5468        M 0x80001e74 add     a0, a0, s0             #; a0  = 0x0011fb68, s0  = 0, (wrb) a0  <-- 0x0011fb68
       0     5469        M 0x80001e78 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     5470        M 0x80001e7c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     5479        M 0x80001e80 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     5480        M 0x80001e84 li      a1, 31                 #; (wrb) a1  <-- 31
       0     5481        M 0x80001e88 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     5482        M 0x80001e8c add     a0, a0, a2             #; a0  = 0x0011fb68, a2  = 1, (wrb) a0  <-- 0x0011fb69
       0     5491        M 0x80001e90 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     5492        M 0x80001e94 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001e9c
       0     5493        M 0x80001e9c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     5503        M 0x80001ea0 li      a1, 48                 #; (wrb) a1  <-- 48
       0     5504        M 0x80001ea4 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7ffffea4
       0     5505        M 0x80001ea8 jalr    ra, ra, 1716           #; ra  = 0x7ffffea4, (wrb) ra  <-- 0x80001eac, goto 0x80000558
       0     5526        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     5527        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fb69, (wrb) a4  <-- 0x0011fb69
       0     5538        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     5561        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     5573        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     5574        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     5575        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     5576        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     5596        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fb69, 48 ~~> Byte[0x0011fb6d]
       0     5597        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fb69, 48 ~~> Byte[0x0011fb6c]
       0     5608        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fb69, 48 ~~> Byte[0x0011fb6b]
       0     5609        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fb69, 48 ~~> Byte[0x0011fb6a]
       0     5610        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fb69, 48 ~~> Byte[0x0011fb69]
       0     5611        M 0x800005ec ret                            #; ra  = 0x80001eac, goto 0x80001eac
       0     5622        M 0x80001eac li      a0, 0                  #; (wrb) a0  <-- 0
       0     5625        M 0x80001eb0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     5626        M 0x80001eb4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     5627        M 0x80001eb8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     5628        M 0x80001ebc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     5637        M 0x80001ec0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5638        M 0x80001ec4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5639        M 0x80001ec8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001eb0
       0     5640        M 0x80001eb0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     5641        M 0x80001eb4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     5642        M 0x80001eb8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     5643        M 0x80001ebc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     5644        M 0x80001ec0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5645        M 0x80001ec4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     5646        M 0x80001ec8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001eb0
       0     5647        M 0x80001eb0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     5648        M 0x80001eb4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     5649        M 0x80001eb8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     5650        M 0x80001ebc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     5651        M 0x80001ec0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5652        M 0x80001ec4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     5653        M 0x80001ec8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001eb0
       0     5654        M 0x80001eb0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     5655        M 0x80001eb4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     5656        M 0x80001eb8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     5657        M 0x80001ebc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     5658        M 0x80001ec0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5659        M 0x80001ec4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     5660        M 0x80001ec8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001eb0
       0     5661        M 0x80001eb0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     5662        M 0x80001eb4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     5663        M 0x80001eb8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     5664        M 0x80001ebc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     5665        M 0x80001ec0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     5666        M 0x80001ec4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     5667        M 0x80001ec8 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     5668        M 0x80001ecc add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     5680        M 0x80001ed0 j       pc + 0x28              #; goto 0x80001ef8
       0     5692        M 0x80001ef8 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     5693        M 0x80001efc addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     5704        M 0x80001f00 addi    a1, sp, 8              #; sp  = 0x0011fb60, (wrb) a1  <-- 0x0011fb68
       0     5705        M 0x80001f04 add     a0, a1, a0             #; a1  = 0x0011fb68, a0  = 6, (wrb) a0  <-- 0x0011fb6e
       0     5706        M 0x80001f08 li      a1, 46                 #; (wrb) a1  <-- 46
       0     5707        M 0x80001f0c sb      a1, 0(a0)              #; a0  = 0x0011fb6e, 46 ~~> Byte[0x0011fb6e]
       0     5716        M 0x80001f10 j       pc + 0x8               #; goto 0x80001f18
       0     5717        M 0x80001f18 li      a0, 32                 #; (wrb) a0  <-- 32
       0     5718        M 0x80001f1c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     5729        M 0x80001f20 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     5730        M 0x80001f24 li      t0, 32                 #; (wrb) t0  <-- 32
       0     5732        M 0x80001f2c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001f28 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     5741        M 0x80001f30 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     5742        M 0x80001f34 li      a6, 10                 #; (wrb) a6  <-- 10
       0     5743        M 0x80001f38 addi    a3, sp, 8              #; sp  = 0x0011fb60, (wrb) a3  <-- 0x0011fb68
       0     5744        M 0x80001f3c li      a4, 18                 #; (wrb) a4  <-- 18
       0     5753        M 0x80001f40 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     5754        M 0x80001f44 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     5757        M                                           #; (acc) a5  <-- 0x01f55793
       0     5758        M 0x80001f48 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     5759        M 0x80001f4c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     5765        M 0x80001f50 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     5766        M 0x80001f54 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     5769        M                                           #; (acc) a5  <-- 0x40f487b3
       0     5770        M 0x80001f58 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     5771        M 0x80001f5c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     5777        M 0x80001f60 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     5778        M 0x80001f64 add     s0, a3, s0             #; a3  = 0x0011fb68, s0  = 7, (wrb) s0  <-- 0x0011fb6f
       0     5779        M 0x80001f68 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     5780        M 0x80001f6c sb      a5, 0(s0)              #; s0  = 0x0011fb6f, 48 ~~> Byte[0x0011fb6f]
       0     5789        M 0x80001f70 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     5790        M 0x80001f74 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     5791        M 0x80001f78 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     5792        M 0x80001f7c j       pc + 0x8               #; goto 0x80001f84
       0     5804        M 0x80001f84 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     5805        M 0x80001f88 li      a0, 1                  #; (wrb) a0  <-- 1
       0     5806        M 0x80001f8c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ff8
       0     5827        M 0x80001ff8 li      a0, 31                 #; (wrb) a0  <-- 31
       0     5828        M 0x80001ffc bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     5839        M 0x80002000 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002018
       0     5851        M 0x80002018 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     5852        M 0x8000201c bnez    a0, pc + 32            #; a0  = 0, not taken
       0     5863        M 0x80002020 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     5864        M 0x80002024 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002050
       0     5886        M 0x80002050 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     5887        M 0x80002054 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     5888        M 0x80002058 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     5889        M 0x8000205c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     5898        M 0x80002060 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     5899        M 0x80002064 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     5900        M 0x80002068 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002094
       0     5921        M 0x80002094 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     5922        M 0x80002098 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     5923        M 0x8000209c addi    s9, sp, 7              #; sp  = 0x0011fb60, (wrb) s9  <-- 0x0011fb67
       0     5933        M 0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 8, (wrb) a0  <-- 0x0011fb6f
       0     5934        M 0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6f, a0  <~~ Byte[0x0011fb6f]
       0     5935        M 0x800020a8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     5936        M 0x800020ac addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     5937        M                                           #; (lsu) a0  <-- 48
       0     5945        M 0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     5946        M 0x800020b4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     5947        M 0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5948        M 0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
       0     5959        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5960        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5961        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5962        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5963        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     5964        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     5965        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5966        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     5967        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     5978        M                                           #; (lsu) a4  <-- 8
       0     5979        M 0x800019f4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5980        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 9 ~~> Word[0x8000340c]
       0     5981        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 8, (wrb) a4  <-- 0x80003414
       0     5982        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003414, 48 ~~> Byte[0x8000345c]
       0     5983        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6004        M                                           #; (lsu) a4  <-- 9
       0     6005        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6006        M 0x80001a0c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6007        M 0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6008        M 0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6009        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6010        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     6013        M 0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
       0     6018        M 0x800020c0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     6019        M 0x800020c4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     6020        M 0x800020c8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800020a0
       0     6021        M 0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 7, (wrb) a0  <-- 0x0011fb6e
       0     6022        M 0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6e, a0  <~~ Byte[0x0011fb6e]
       0     6023        M 0x800020a8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     6024        M 0x800020ac addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     6025        M 0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     6026        M 0x800020b4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     6027        M 0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6028        M 0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
       0     6029        M                                           #; (lsu) a0  <-- 46
       0     6031        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     6032        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6033        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6034        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6035        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     6036        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     6037        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6038        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     6039        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6050        M                                           #; (lsu) a4  <-- 9
       0     6051        M 0x800019f4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     6052        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 10 ~~> Word[0x8000340c]
       0     6053        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 9, (wrb) a4  <-- 0x80003415
       0     6054        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003415, 46 ~~> Byte[0x8000345d]
       0     6055        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6076        M                                           #; (lsu) a4  <-- 10
       0     6077        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     6078        M 0x80001a0c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     6079        M 0x80001a10 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     6080        M 0x80001a14 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     6081        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6082        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     6085        M 0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
       0     6090        M 0x800020c0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     6091        M 0x800020c4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     6092        M 0x800020c8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800020a0
       0     6093        M 0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 6, (wrb) a0  <-- 0x0011fb6d
       0     6094        M 0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6d, a0  <~~ Byte[0x0011fb6d]
       0     6095        M 0x800020a8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     6096        M 0x800020ac addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     6097        M 0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     6098        M 0x800020b4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     6099        M 0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6100        M 0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
       0     6101        M                                           #; (lsu) a0  <-- 48
       0     6103        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6104        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6105        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6106        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6107        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     6108        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     6109        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6110        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     6111        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6122        M                                           #; (lsu) a4  <-- 10
       0     6123        M 0x800019f4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     6124        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 11 ~~> Word[0x8000340c]
       0     6125        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 10, (wrb) a4  <-- 0x80003416
       0     6126        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003416, 48 ~~> Byte[0x8000345e]
       0     6127        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6148        M                                           #; (lsu) a4  <-- 11
       0     6149        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     6150        M 0x80001a0c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     6151        M 0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6152        M 0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6153        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6154        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     6157        M 0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
       0     6162        M 0x800020c0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     6163        M 0x800020c4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     6164        M 0x800020c8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800020a0
       0     6165        M 0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 5, (wrb) a0  <-- 0x0011fb6c
       0     6166        M 0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6c, a0  <~~ Byte[0x0011fb6c]
       0     6167        M 0x800020a8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     6168        M 0x800020ac addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     6169        M 0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     6170        M 0x800020b4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     6171        M 0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6172        M 0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
       0     6173        M                                           #; (lsu) a0  <-- 48
       0     6175        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6176        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6177        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6178        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6179        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     6180        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     6181        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6182        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     6183        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6194        M                                           #; (lsu) a4  <-- 11
       0     6195        M 0x800019f4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     6196        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 12 ~~> Word[0x8000340c]
       0     6197        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 11, (wrb) a4  <-- 0x80003417
       0     6198        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003417, 48 ~~> Byte[0x8000345f]
       0     6199        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6220        M                                           #; (lsu) a4  <-- 12
       0     6221        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     6222        M 0x80001a0c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     6223        M 0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6224        M 0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6225        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6226        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     6229        M 0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
       0     6234        M 0x800020c0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     6235        M 0x800020c4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     6236        M 0x800020c8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800020a0
       0     6237        M 0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 4, (wrb) a0  <-- 0x0011fb6b
       0     6238        M 0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6b, a0  <~~ Byte[0x0011fb6b]
       0     6239        M 0x800020a8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     6240        M 0x800020ac addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     6241        M 0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     6242        M 0x800020b4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     6243        M 0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6244        M 0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
       0     6245        M                                           #; (lsu) a0  <-- 48
       0     6247        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6248        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6249        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6250        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6251        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     6252        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     6253        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6254        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     6255        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6266        M                                           #; (lsu) a4  <-- 12
       0     6267        M 0x800019f4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     6268        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 13 ~~> Word[0x8000340c]
       0     6269        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 12, (wrb) a4  <-- 0x80003418
       0     6270        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003418, 48 ~~> Byte[0x80003460]
       0     6271        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6292        M                                           #; (lsu) a4  <-- 13
       0     6293        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     6294        M 0x80001a0c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     6295        M 0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6296        M 0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6297        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6298        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     6301        M 0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
       0     6306        M 0x800020c0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     6307        M 0x800020c4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     6308        M 0x800020c8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800020a0
       0     6309        M 0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 3, (wrb) a0  <-- 0x0011fb6a
       0     6310        M 0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6a, a0  <~~ Byte[0x0011fb6a]
       0     6311        M 0x800020a8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     6312        M 0x800020ac addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     6313        M 0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     6314        M 0x800020b4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     6315        M 0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6316        M 0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
       0     6317        M                                           #; (lsu) a0  <-- 48
       0     6319        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6320        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6321        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6322        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6323        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     6324        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     6325        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6326        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     6327        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6338        M                                           #; (lsu) a4  <-- 13
       0     6339        M 0x800019f4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     6340        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 14 ~~> Word[0x8000340c]
       0     6341        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 13, (wrb) a4  <-- 0x80003419
       0     6342        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003419, 48 ~~> Byte[0x80003461]
       0     6343        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6364        M                                           #; (lsu) a4  <-- 14
       0     6365        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     6366        M 0x80001a0c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     6367        M 0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6368        M 0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6369        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6370        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     6373        M 0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
       0     6378        M 0x800020c0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     6379        M 0x800020c4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     6380        M 0x800020c8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800020a0
       0     6381        M 0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 2, (wrb) a0  <-- 0x0011fb69
       0     6382        M 0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb69, a0  <~~ Byte[0x0011fb69]
       0     6383        M 0x800020a8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     6384        M 0x800020ac addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     6385        M 0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     6386        M 0x800020b4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     6387        M 0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6388        M 0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
       0     6389        M                                           #; (lsu) a0  <-- 48
       0     6391        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6392        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6393        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6394        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6395        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     6396        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     6397        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6398        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     6399        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6410        M                                           #; (lsu) a4  <-- 14
       0     6411        M 0x800019f4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     6412        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 15 ~~> Word[0x8000340c]
       0     6413        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 14, (wrb) a4  <-- 0x8000341a
       0     6414        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000341a, 48 ~~> Byte[0x80003462]
       0     6415        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6436        M                                           #; (lsu) a4  <-- 15
       0     6437        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     6438        M 0x80001a0c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     6439        M 0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6440        M 0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6441        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6442        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     6445        M 0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
       0     6450        M 0x800020c0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     6451        M 0x800020c4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     6452        M 0x800020c8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800020a0
       0     6453        M 0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 1, (wrb) a0  <-- 0x0011fb68
       0     6454        M 0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb68, a0  <~~ Byte[0x0011fb68]
       0     6455        M 0x800020a8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     6456        M 0x800020ac addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     6457        M 0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     6458        M 0x800020b4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     6459        M 0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6460        M 0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
       0     6461        M                                           #; (lsu) a0  <-- 48
       0     6463        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6464        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6465        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6466        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6467        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     6468        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     6469        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6470        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     6471        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6482        M                                           #; (lsu) a4  <-- 15
       0     6483        M 0x800019f4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     6484        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 16 ~~> Word[0x8000340c]
       0     6485        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 15, (wrb) a4  <-- 0x8000341b
       0     6486        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000341b, 48 ~~> Byte[0x80003463]
       0     6487        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6508        M                                           #; (lsu) a4  <-- 16
       0     6509        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     6510        M 0x80001a0c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     6511        M 0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6512        M 0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6513        M 0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6514        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
       0     6517        M 0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
       0     6522        M 0x800020c0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     6523        M 0x800020c4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     6524        M 0x800020c8 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     6525        M 0x800020cc j       pc + 0x8               #; goto 0x800020d4
       0     6537        M 0x800020d4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     6538        M 0x800020d8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     6539        M 0x800020dc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6549        M 0x800020e0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     6550        M 0x800020e4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     6551        M 0x800020e8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002118
       0     6572        M 0x80002118 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     6573        M 0x8000211c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     6586        M 0x80002120 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fb88]
       0     6587        M 0x8000212c lw      s10, 64(sp)            #; sp  = 0x0011fb60, s10 <~~ Word[0x0011fba0]
                         M 0x80002124 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fb90], (f:lsu) fs2  <-- 71.0
       0     6588        M 0x80002128 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fb98], (f:lsu) fs1  <-- 70.0
       0     6589        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6591        M                                           #; (lsu) s10 <-- 0x800030be
       0     6596        M 0x80002130 lw      s9, 68(sp)             #; sp  = 0x0011fb60, s9  <~~ Word[0x0011fba4]
       0     6599        M                                           #; (lsu) s9  <-- 8
       0     6600        M 0x80002134 lw      s8, 72(sp)             #; sp  = 0x0011fb60, s8  <~~ Word[0x0011fba8]
       0     6603        M                                           #; (lsu) s8  <-- 16
       0     6604        M 0x80002138 lw      s7, 76(sp)             #; sp  = 0x0011fb60, s7  <~~ Word[0x0011fbac]
       0     6607        M                                           #; (lsu) s7  <-- 0
       0     6608        M 0x8000213c lw      s6, 80(sp)             #; sp  = 0x0011fb60, s6  <~~ Word[0x0011fbb0]
       0     6611        M                                           #; (lsu) s6  <-- 0
       0     6612        M 0x80002140 lw      s5, 84(sp)             #; sp  = 0x0011fb60, s5  <~~ Word[0x0011fbb4]
       0     6615        M                                           #; (lsu) s5  <-- -1
       0     6616        M 0x80002144 lw      s4, 88(sp)             #; sp  = 0x0011fb60, s4  <~~ Word[0x0011fbb8]
       0     6619        M                                           #; (lsu) s4  <-- 0x0011fc47
       0     6620        M 0x80002148 lw      s3, 92(sp)             #; sp  = 0x0011fb60, s3  <~~ Word[0x0011fbbc]
       0     6623        M                                           #; (lsu) s3  <-- 0x0011fc60
       0     6624        M 0x8000214c lw      s2, 96(sp)             #; sp  = 0x0011fb60, s2  <~~ Word[0x0011fbc0]
       0     6627        M                                           #; (lsu) s2  <-- 0x800019d4
       0     6628        M 0x80002150 lw      s1, 100(sp)            #; sp  = 0x0011fb60, s1  <~~ Word[0x0011fbc4]
       0     6631        M                                           #; (lsu) s1  <-- 8
       0     6632        M 0x80002154 lw      s0, 104(sp)            #; sp  = 0x0011fb60, s0  <~~ Word[0x0011fbc8]
       0     6635        M                                           #; (lsu) s0  <-- 0
       0     6636        M 0x80002158 lw      ra, 108(sp)            #; sp  = 0x0011fb60, ra  <~~ Word[0x0011fbcc]
       0     6637        M 0x8000215c addi    sp, sp, 112            #; sp  = 0x0011fb60, (wrb) sp  <-- 0x0011fbd0
       0     6639        M                                           #; (lsu) ra  <-- 0x80001104
       0     6640        M 0x80002160 ret                            #; ra  = 0x80001104, goto 0x80001104
       0     6652        M 0x80001104 j       pc + 0x7c0             #; goto 0x800018c4
       0     6655        M 0x800018c4 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     6656        M 0x800018c8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     6657        M 0x800018cc li      s7, 46                 #; (wrb) s7  <-- 46
       0     6667        M 0x800018d0 addi    s0, s10, 1             #; s10 = 0x800030be, (wrb) s0  <-- 0x800030bf
       0     6668        M 0x800018d4 j       pc - 0xa74             #; goto 0x80000e60
       0     6679        M 0x80000e60 addi    s10, s0, 2             #; s0  = 0x800030bf, (wrb) s10 <-- 0x800030c1
       0     6680        M 0x80000e64 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     6681        M 0x80000e68 li      s8, 10                 #; (wrb) s8  <-- 10
       0     6682        M 0x80000e6c lbu     a0, 0(s0)              #; s0  = 0x800030bf, a0  <~~ Byte[0x800030bf]
       0     6693        M                                           #; (lsu) a0  <-- 10
       0     6694        M 0x80000e70 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     6695        M 0x80000e74 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     6696        M 0x80000e78 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     6697        M 0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     6703        M 0x80000e80 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     6704        M 0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6705        M 0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
       0     6717        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     6718        M 0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6719        M 0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6720        M 0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6721        M 0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
       0     6722        M 0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
       0     6723        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6724        M 0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
       0     6725        M 0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6736        M                                           #; (lsu) a4  <-- 16
       0     6737        M 0x800019f4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     6738        M 0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 17 ~~> Word[0x8000340c]
       0     6739        M 0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 16, (wrb) a4  <-- 0x8000341c
       0     6740        M 0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000341c, 10 ~~> Byte[0x80003464]
       0     6741        M 0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
       0     6762        M                                           #; (lsu) a4  <-- 17
       0     6763        M 0x80001a08 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     6764        M 0x80001a0c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     6765        M 0x80001a10 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     6766        M 0x80001a14 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     6767        M 0x80001a18 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     6768        M 0x80001a1c bnez    a0, pc + 96            #; a0  = 0, not taken
       0     6769        M 0x80001a20 add     a0, a3, a2             #; a3  = 0x8000340c, a2  = 0, (wrb) a0  <-- 0x8000340c
       0     6770        M 0x80001a24 addi    a2, a0, 72             #; a0  = 0x8000340c, (wrb) a2  <-- 0x80003454
       0     6771        M 0x80001a28 sw      zero, 12(a0)           #; a0  = 0x8000340c, 0 ~~> Word[0x80003418]
       0     6772        M 0x80001a2c li      a3, 64                 #; (wrb) a3  <-- 64
       0     6781        M 0x80001a30 sw      a3, 8(a0)              #; a0  = 0x8000340c, 64 ~~> Word[0x80003414]
       0     6782        M 0x80001a34 sw      zero, 20(a0)           #; a0  = 0x8000340c, 0 ~~> Word[0x80003420]
       0     6783        M 0x80001a38 li      a3, 1                  #; (wrb) a3  <-- 1
       0     6784        M 0x80001a3c sw      a3, 16(a0)             #; a0  = 0x8000340c, 1 ~~> Word[0x8000341c]
       0     6793        M 0x80001a40 sw      zero, 28(a0)           #; a0  = 0x8000340c, 0 ~~> Word[0x80003428]
       0     6794        M 0x80001a44 sw      a2, 24(a0)             #; a0  = 0x8000340c, 0x80003454 ~~> Word[0x80003424]
       0     6796        M 0x80001a48 lw      a2, 0(a1)              #; a1  = 0x8000340c, a2  <~~ Word[0x8000340c]
       0     6797        M 0x80001a4c addi    a3, a0, 8              #; a0  = 0x8000340c, (wrb) a3  <-- 0x80003414
       0     6806        M 0x80001a50 sw      zero, 36(a0)           #; a0  = 0x8000340c, 0 ~~> Word[0x80003430]
       0     6825        M                                           #; (lsu) a2  <-- 17
       0     6826        M 0x80001a54 sw      a2, 32(a0)             #; a0  = 0x8000340c, 17 ~~> Word[0x8000342c]
       0     6827        M 0x80001a58 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a58
       0     6828        M 0x80001a5c addi    a0, a0, -1880          #; a0  = 0x80003a58, (wrb) a0  <-- 0x80003300
       0     6829        M 0x80001a60 sw      a3, 0(a0)              #; a0  = 0x80003300, 0x80003414 ~~> Word[0x80003300]
       0     6830        M 0x80001a64 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a64
       0     6831        M 0x80001a68 addi    a0, a0, -1828          #; a0  = 0x80003a64, (wrb) a0  <-- 0x80003340
       0     6832        M 0x80001a6c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
       0     6855        M                                           #; (lsu) a2  <-- 0
       0     6856        M 0x80001a70 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a6c
       0     6857        M 0x80001a6c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
       0     6868        M                                           #; (lsu) a2  <-- 0
       0     6869        M 0x80001a70 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a6c
       0     6870        M 0x80001a6c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
       0     6881        M                                           #; (lsu) a2  <-- 0
       0     6882        M 0x80001a70 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a6c
       0     6883        M 0x80001a6c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
       0     6894        M                                           #; (lsu) a2  <-- 0
       0     6895        M 0x80001a70 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a6c
       0     6896        M 0x80001a6c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
       0     6907        M                                           #; (lsu) a2  <-- 1
       0     6908        M 0x80001a70 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6909        M 0x80001a74 sw      zero, 0(a0)            #; a0  = 0x80003340, 0 ~~> Word[0x80003340]
       0     6910        M 0x80001a78 sw      zero, 0(a1)            #; a1  = 0x8000340c, 0 ~~> Word[0x8000340c]
       0     6911        M 0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
       0     6914        M 0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030bf, (wrb) s0  <-- 0x800030c0
       0     6917        M 0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030c1, (wrb) s10 <-- 0x800030c2
       0     6918        M 0x80000e94 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6919        M 0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030c0, a0  <~~ Byte[0x800030c0]
       0     6932        M                                           #; (lsu) a0  <-- 0
       0     6933        M 0x80000e9c bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6945        M 0x80000ea0 j       pc + 0xad8             #; goto 0x80001978
       0     6957        M 0x80001978 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6958        M 0x8000197c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001984
       0     6969        M 0x80001984 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6970        M 0x80001988 mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
       0     6971        M 0x8000198c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6981        M 0x80001990 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80001994, goto 0x800019d4
       0     6995        M 0x800019d4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001a7c
       0     7000        M 0x80001a7c ret                            #; ra  = 0x80001994, goto 0x80001994
       0     7001        M 0x80001994 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     7002        M 0x80001998 lw      s11, 60(sp)            #; sp  = 0x0011fbd0, s11 <~~ Word[0x0011fc0c]
       0     7005        M                                           #; (lsu) s11 <-- 0
       0     7006        M 0x8000199c lw      s10, 64(sp)            #; sp  = 0x0011fbd0, s10 <~~ Word[0x0011fc10]
       0     7009        M                                           #; (lsu) s10 <-- 0
       0     7010        M 0x800019a0 lw      s9, 68(sp)             #; sp  = 0x0011fbd0, s9  <~~ Word[0x0011fc14]
       0     7013        M                                           #; (lsu) s9  <-- 0
       0     7014        M 0x800019a4 lw      s8, 72(sp)             #; sp  = 0x0011fbd0, s8  <~~ Word[0x0011fc18]
       0     7017        M                                           #; (lsu) s8  <-- 0
       0     7018        M 0x800019a8 lw      s7, 76(sp)             #; sp  = 0x0011fbd0, s7  <~~ Word[0x0011fc1c]
       0     7021        M                                           #; (lsu) s7  <-- 0
       0     7022        M 0x800019ac lw      s6, 80(sp)             #; sp  = 0x0011fbd0, s6  <~~ Word[0x0011fc20]
       0     7025        M                                           #; (lsu) s6  <-- 0
       0     7026        M 0x800019b0 lw      s5, 84(sp)             #; sp  = 0x0011fbd0, s5  <~~ Word[0x0011fc24]
       0     7029        M                                           #; (lsu) s5  <-- 0
       0     7030        M 0x800019b4 lw      s4, 88(sp)             #; sp  = 0x0011fbd0, s4  <~~ Word[0x0011fc28]
       0     7033        M                                           #; (lsu) s4  <-- 0
       0     7034        M 0x800019b8 lw      s3, 92(sp)             #; sp  = 0x0011fbd0, s3  <~~ Word[0x0011fc2c]
       0     7037        M                                           #; (lsu) s3  <-- 0
       0     7038        M 0x800019bc lw      s2, 96(sp)             #; sp  = 0x0011fbd0, s2  <~~ Word[0x0011fc30]
       0     7041        M                                           #; (lsu) s2  <-- 0
       0     7042        M 0x800019c0 lw      s1, 100(sp)            #; sp  = 0x0011fbd0, s1  <~~ Word[0x0011fc34]
       0     7045        M                                           #; (lsu) s1  <-- 0
       0     7046        M 0x800019c4 lw      s0, 104(sp)            #; sp  = 0x0011fbd0, s0  <~~ Word[0x0011fc38]
       0     7049        M                                           #; (lsu) s0  <-- 0
       0     7050        M 0x800019c8 lw      ra, 108(sp)            #; sp  = 0x0011fbd0, ra  <~~ Word[0x0011fc3c]
       0     7051        M 0x800019cc addi    sp, sp, 112            #; sp  = 0x0011fbd0, (wrb) sp  <-- 0x0011fc40
       0     7053        M                                           #; (lsu) ra  <-- 0x80000dd0
       0     7054        M 0x800019d0 ret                            #; ra  = 0x80000dd0, goto 0x80000dd0
       0     7066        M 0x80000dd0 lw      ra, 12(sp)             #; sp  = 0x0011fc40, ra  <~~ Word[0x0011fc4c]
       0     7067        M 0x80000dd4 addi    sp, sp, 48             #; sp  = 0x0011fc40, (wrb) sp  <-- 0x0011fc70
       0     7069        M                                           #; (lsu) ra  <-- 0x80000d34
       0     7070        M 0x80000dd8 ret                            #; ra  = 0x80000d34, goto 0x80000d34
       0     7089        M 0x80000d34 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d34
       0     7090        M 0x80000d38 addi    a0, a0, 1572           #; a0  = 0x80002d34, (wrb) a0  <-- 0x80003358
       0     7093        M 0x80000d3c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003358]
       0     7102        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     7103        M 0x80000d40 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
       0     7105        M                                           #; (acc) s9  <-- 0x29813c87
                         M 0x80000d44 fld     fs11, 648(sp)          #; fs11 <~~ Doub[0x0011fef8]
       0     7106        M 0x80000d48 fld     fs10, 656(sp)          #; fs10 <~~ Doub[0x0011ff00], (f:lsu) fs11 <-- 0.0
       0     7107        M 0x80000d4c fld     fs9, 664(sp)           #; fs9  <~~ Doub[0x0011ff08], (f:lsu) fs10 <-- 0.0
       0     7108        M 0x80000d50 fld     fs8, 672(sp)           #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
       0     7109        M 0x80000d54 fld     fs7, 680(sp)           #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
       0     7110        M 0x80000d58 fld     fs6, 688(sp)           #; fs6  <~~ Doub[0x0011ff20], (f:lsu) fs7  <-- 0.0
       0     7111        M 0x80000d5c fld     fs5, 696(sp)           #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
       0     7112        M 0x80000d60 fld     fs4, 704(sp)           #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
       0     7113        M 0x80000d64 fld     fs3, 712(sp)           #; fs3  <~~ Doub[0x0011ff38], (f:lsu) fs4  <-- 0.0
       0     7114        M 0x80000d68 fld     fs2, 720(sp)           #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
       0     7115        M 0x80000d74 lw      ra, 748(sp)            #; sp  = 0x0011fc70, ra  <~~ Word[0x0011ff5c]
                         M 0x80000d6c fld     fs1, 728(sp)           #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
       0     7116        M 0x80000d78 addi    sp, sp, 752            #; sp  = 0x0011fc70, (wrb) sp  <-- 0x0011ff60
                         M 0x80000d70 fld     fs0, 736(sp)           #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
       0     7117        M                                           #; (f:lsu) fs0  <-- 0.0
       0     7119        M                                           #; (lsu) ra  <-- 0x80002e30
       0     7120        M 0x80000d7c ret                            #; ra  = 0x80002e30, goto 0x80002e30
       0     7137        M 0x80002e30 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     7138        M 0x80002e34 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e34
       0     7139        M 0x80002e38 jalr    ra, ra, 524            #; ra  = 0x80002e34, (wrb) ra  <-- 0x80002e3c, goto 0x80003040
       0     7151        M 0x80003040 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     7152        M 0x80003044 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e3c ~~> Word[0x0011ff5c]
       0     7153        M 0x80003048 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003048
       0     7154        M 0x8000304c jalr    ra, ra, -1260          #; ra  = 0x80003048, (wrb) ra  <-- 0x80003050, goto 0x80002b5c
       0     7157        M 0x80002b5c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7160        M 0x80002b60 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7161        M 0x80002b64 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7164        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7165        M 0x80002b68 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7168        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7169        M 0x80002b6c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     7170        M 0x80002b70 ret                            #; ra  = 0x80003050, goto 0x80003050
       0     7172        M                                           #; (lsu) a0  <-- 0x00120190
       0     7173        M 0x80003050 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     7183        M                                           #; (lsu) a0  <-- 0
       0     7184        M 0x80003054 mv      zero, a0               #; a0  = 0
       0     7185        M 0x80003058 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     7186        M 0x8000305c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     7188        M                                           #; (lsu) ra  <-- 0x80002e3c
       0     7189        M 0x80003060 ret                            #; ra  = 0x80002e3c, goto 0x80002e3c
       0     7203        M 0x80002e3c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     7207        M 0x80002e40 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e40
       0     7208        M 0x80002e44 jalr    ra, ra, 556            #; ra  = 0x80002e40, (wrb) ra  <-- 0x80002e48, goto 0x8000306c
       0     7209        M 0x8000306c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     7210        M 0x80003070 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     7211        M 0x80003074 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002e48 ~~> Word[0x0011ff5c]
       0     7212        M 0x80003078 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003078
       0     7213        M 0x8000307c jalr    ra, ra, -1340          #; ra  = 0x80003078, (wrb) ra  <-- 0x80003080, goto 0x80002b3c
       0     7224        M 0x80002b3c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7228        M 0x80002b40 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7229        M 0x80002b44 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7232        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7233        M 0x80002b48 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7236        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7237        M 0x80002b4c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     7238        M 0x80002b50 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7240        M                                           #; (lsu) a0  <-- 0
       0     7241        M 0x80002b54 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     7242        M 0x80002b58 ret                            #; ra  = 0x80003080, goto 0x80003080
       0     7243        M 0x80003080 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     7246        M                                           #; (lsu) t0  <-- 0
       0     7247        M 0x80003084 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     7248        M 0x80003088 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     7249        M 0x8000308c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     7250        M                                           #; (lsu) ra  <-- 0x80002e48
       0     7254        M 0x80003090 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     7255        M 0x80003094 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     7256        M 0x80003098 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003098
       0     7257        M 0x8000309c addi    t1, t1, 616            #; t1  = 0x80003098, (wrb) t1  <-- 0x80003300
       0     7265        M 0x800030a0 sw      t0, 0(t1)              #; t1  = 0x80003300, 1 ~~> Word[0x80003300]
       0     7266        M 0x800030a4 ret                            #; ra  = 0x80002e48, goto 0x80002e48
       0     7279        M 0x80002e48 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 7279):
snitch_loads                                   138
snitch_stores                                  142
fpss_stores                                    204
fpss_loads                                     319
snitch_avg_load_latency                       12.0
snitch_occupancy                            0.2159
snitch_fseq_rel_offloads                    0.3643
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.1383
fpss_avg_load_latency                       1.2790
fpss_occupancy                              0.1237
fpss_fpu_occupancy                          0.0517
fpss_fpu_rel_occupancy                      0.4182
cycles                                        7268
total_ipc                                   0.3396
