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
       0      877        M 0x80002df8 jalr    ra, ra, -1072          #; ra  = 0x80002df4, (wrb) ra  <-- 0x80002dfc, goto 0x800029c4
       0      899        M 0x800029c4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x800029c8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x800029cc lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x800029d0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x800029d4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x800029d8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x800029dc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x800029e0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x800029e4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x800029e8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x800029ec csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x800029f0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x800029f4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x800029f8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x800029fc sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x80002a00 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002a04 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002a08 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002a0c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002a10 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002a14 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002a18 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002a1c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002a20 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002a24 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002a28 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002a2c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002a30 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002a34 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002a38 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002a3c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002a40 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002a44 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002a48 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002a4c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002a50 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x80002a54 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x80002a58 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x80002a5c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002a60 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x80002a64 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x80002a68 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x80002a6c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002a70 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x80002a74 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x80002a78 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x80002a7c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x80002a80 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x80002a84 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x80002a88 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x80002a8c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002a90 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x80002a94 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x80002a98 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x80002a9c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x80002aa0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x80002aa4 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x80002aa8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x80002aac sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80002ab0 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80002ab4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80002ab8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003ab8
       0     1273        M 0x80002abc addi    a1, a1, -1604          #; a1  = 0x80003ab8, (wrb) a1  <-- 0x80003474
       0     1282        M 0x80002ac0 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003474, (wrb) a0  <-- 0x80003474
       0     1283        M 0x80002ac4 sw      zero, 0(a0)            #; a0  = 0x80003474, 0 ~~> Word[0x80003474]
       0     1284        M 0x80002ac8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x80002acc sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x80002ad0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x80002ad4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x80002ad8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x80002adc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x80002ae0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x80002ae4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x80002ae8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x80002aec sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x80002af0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x80002af4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x80002af8 lw      a0, 0(a1)              #; a1  = 0x80003474, a0  <~~ Word[0x80003474]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x80002afc addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002b00 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002b04 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x80002b08 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x80002b0c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x80002b10 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x80002b14 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x80002b18 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x80002b1c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80002b20 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80002b24 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80002b28 ret                            #; ra  = 0x80002dfc, goto 0x80002dfc
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
       0     1454        M 0x8000304c jalr    ra, ra, -1276          #; ra  = 0x80003048, (wrb) ra  <-- 0x80003050, goto 0x80002b4c
       0     1472        M 0x80002b4c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x80002b50 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80002b54 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80002b58 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x80002b5c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x80002b60 ret                            #; ra  = 0x80003050, goto 0x80003050
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
       0     1543        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1544        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002e30 ~~> Word[0x0011ff5c]
       0     1545        M 0x8000063c sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1546        M 0x80000640 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
       0     1547        M 0x80000644 sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
       0     1549        M 0x8000064c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1550        M 0x80000648 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     1559        M 0x80000650 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1560        M 0x80000654 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1561        M 0x80000658 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1563        M                                           #; (lsu) a1  <-- 0
       0     1564        M 0x8000065c bnez    a1, pc + 1784          #; a1  = 0, not taken
       0     1571        M 0x80000660 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1572        M 0x80000664 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1573        M 0x80000668 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1576        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1577        M 0x8000066c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1580        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1587        M 0x80000670 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1590        M                                           #; (lsu) s0  <-- 0x00100000
       0     1591        M 0x80000674 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1594        M                                           #; (lsu) a1  <-- 0x00100000
       0     1595        M 0x80000678 lw      a2, 84(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc4]
       0     1596        M 0x8000067c addi    a3, s0, 80             #; s0  = 0x00100000, (wrb) a3  <-- 0x00100050
       0     1598        M                                           #; (lsu) a2  <-- 0x0001df30
       0     1600        M 0x80000680 add     a1, a2, a1             #; a2  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1601        M 0x80000684 bgeu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x00100050, taken, goto 0x800006b0
       0     1636        M 0x800006b0 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1637        M 0x800006b4 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1638        M 0x800006b8 addi    a2, s0, 160            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000a0
       0     1639        M 0x800006bc mv      s0, a3                 #; a3  = 0x00100050, (wrb) s0  <-- 0x00100050
       0     1648        M 0x800006c0 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x001000a0, taken, goto 0x80000694
       0     1649        M 0x80000694 mv      s1, s0                 #; s0  = 0x00100050, (wrb) s1  <-- 0x00100050
       0     1650        M 0x80000698 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1651        M 0x8000069c addi    a3, a2, 80             #; a2  = 0x001000a0, (wrb) a3  <-- 0x001000f0
       0     1661        M 0x800006a0 mv      s0, a2                 #; a2  = 0x001000a0, (wrb) s0  <-- 0x001000a0
       0     1662        M 0x800006a4 bltu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x001000f0, not taken
       0     1663        M 0x800006a8 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1664        M 0x800006ac j       pc + 0x28              #; goto 0x800006d4
       0     1673        M 0x800006d4 addi    a0, s2, 72             #; s2  = 0x00100000, (wrb) a0  <-- 0x00100048
       0     1674        M 0x800006d8 srli    a1, s2, 20             #; s2  = 0x00100000, (wrb) a1  <-- 1
       0     1675        M 0x800006dc snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1685        M 0x800006e0 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1686        M 0x800006e4 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     1687        M 0x800006e8 sltu    a0, a0, a2             #; a0  = 0x00100048, a2  = 0x00120001, (wrb) a0  <-- 1
       0     1688        M 0x800006ec and     a2, a1, a0             #; a1  = 1, a0  = 1, (wrb) a2  <-- 1
       0     1697        M 0x800006f0 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036f0
       0     1698        M 0x800006f4 addi    a3, a3, -912           #; a3  = 0x800036f0, (wrb) a3  <-- 0x80003360
       0     1699        M 0x800006f8 auipc   t5, 0x3                #; (wrb) t5  <-- 0x800036f8
       0     1700        M 0x800006fc addi    t5, t5, -912           #; t5  = 0x800036f8, (wrb) t5  <-- 0x80003368
       0     1709        M 0x80000700 auipc   t4, 0x3                #; (wrb) t4  <-- 0x80003700
       0     1710        M 0x80000704 addi    t4, t4, -912           #; t4  = 0x80003700, (wrb) t4  <-- 0x80003370
       0     1711        M 0x80000708 auipc   t3, 0x3                #; (wrb) t3  <-- 0x80003708
       0     1712        M 0x8000070c addi    t3, t3, -912           #; t3  = 0x80003708, (wrb) t3  <-- 0x80003378
       0     1721        M 0x80000710 auipc   t2, 0x3                #; (wrb) t2  <-- 0x80003710
       0     1722        M 0x80000714 addi    t2, t2, -912           #; t2  = 0x80003710, (wrb) t2  <-- 0x80003380
       0     1723        M 0x80000718 auipc   t1, 0x3                #; (wrb) t1  <-- 0x80003718
       0     1724        M 0x8000071c addi    t1, t1, -912           #; t1  = 0x80003718, (wrb) t1  <-- 0x80003388
       0     1733        M 0x80000720 auipc   t0, 0x3                #; (wrb) t0  <-- 0x80003720
       0     1734        M 0x80000724 addi    t0, t0, -912           #; t0  = 0x80003720, (wrb) t0  <-- 0x80003390
       0     1735        M 0x80000728 auipc   a7, 0x3                #; (wrb) a7  <-- 0x80003728
       0     1736        M 0x8000072c addi    a7, a7, -912           #; a7  = 0x80003728, (wrb) a7  <-- 0x80003398
       0     1745        M 0x80000730 auipc   a6, 0x3                #; (wrb) a6  <-- 0x80003730
       0     1746        M 0x80000734 addi    a6, a6, -912           #; a6  = 0x80003730, (wrb) a6  <-- 0x800033a0
       0     1747        M 0x80000738 beqz    a2, pc + 140           #; a2  = 1, not taken
       0     1748        M 0x8000073c li      a0, 8                  #; (wrb) a0  <-- 8
       0     1757        M 0x80000740 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1758        M 0x80000744 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1759        M 0x80000748 li      a5, 192                #; (wrb) a5  <-- 192
       0     1760        M 0x8000074c scfgw   a2, a4                 #; a2  = 9, a4  = 64
       0     1769        M 0x80000750 scfgw   a0, a5                 #; a0  = 8, a5  = 192
       0     1770        M 0x80000754 li      a0, 32                 #; (wrb) a0  <-- 32
       0     1771        M 0x80000758 scfgw   zero, a0               #; a0  = 32
       0     1772        M 0x8000075c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000375c
       0     1781        M 0x80000760 addi    a0, a0, -1028          #; a0  = 0x8000375c, (wrb) a0  <-- 0x80003358
       0     1784        M 0x8000076c scfgwi  s2, 896                #; s2  = 0x00100000
                         M 0x80000764 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003358]
       0     1785        M 0x80000768 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x80003360]
       0     1793        M                                           #; (f:lsu) ft3  <-- 1.4142
       0     1794        M 0x80000770 csrrsi  a0, ssr, 1             #; (f:lsu) ft4  <-- 2.8284
       0     1796        M 0x80000774 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.4142, ft3  = 1.4142
       0     1797        M 0x80000778 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284, (f:fpu) ft0  <-- 1.4142
       0     1798        M 0x8000077c fld     ft3, 0(t5)             #; ft3  <~~ Doub[0x80003368], (f:fpu) ft0  <-- 2.8284
       0     1807        M 0x80000780 fld     ft4, 0(t4)             #; ft4  <~~ Doub[0x80003370], (f:lsu) ft3  <-- 4.2426000
       0     1808        M 0x80000784 fld     ft5, 0(t3)             #; ft5  <~~ Doub[0x80003378]
       0     1816        M                                           #; (f:lsu) ft4  <-- 5.6568
       0     1817        M 0x80000788 fld     ft6, 0(t2)             #; ft6  <~~ Doub[0x80003380], (f:lsu) ft5  <-- 7.071
       0     1818        M 0x8000078c fsgnj.d ft0, ft3, ft3          #; ft3  = 4.2426000, ft3  = 4.2426000
       0     1819        M 0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568, (f:fpu) ft0  <-- 4.2426000
       0     1820        M 0x80000794 fsgnj.d ft0, ft5, ft5          #; ft5  = 7.071, ft5  = 7.071, (f:fpu) ft0  <-- 5.6568
       0     1821        M                                           #; (f:fpu) ft0  <-- 7.071
       0     1826        M                                           #; (f:lsu) ft6  <-- 8.4852000
       0     1827        M 0x80000798 fsgnj.d ft0, ft6, ft6          #; ft6  = 8.4852000, ft6  = 8.4852000
       0     1828        M 0x8000079c fld     ft3, 0(t1)             #; ft3  <~~ Doub[0x80003388], (f:fpu) ft0  <-- 8.4852000
       0     1831        M 0x800007a0 fld     ft4, 0(t0)             #; ft4  <~~ Doub[0x80003390]
       0     1837        M                                           #; (f:lsu) ft3  <-- 9.8994
       0     1838        M 0x800007a4 fld     ft5, 0(a7)             #; ft5  <~~ Doub[0x80003398]
       0     1840        M                                           #; (f:lsu) ft4  <-- 11.3136
       0     1841        M 0x800007a8 fld     ft6, 0(a6)             #; ft6  <~~ Doub[0x800033a0]
       0     1842        M 0x800007ac fsgnj.d ft0, ft3, ft3          #; ft3  = 9.8994, ft3  = 9.8994
       0     1843        M 0x800007b0 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136, (f:fpu) ft0  <-- 9.8994
       0     1844        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     1847        M                                           #; (f:lsu) ft5  <-- 12.7278000
       0     1848        M 0x800007b4 fsgnj.d ft0, ft5, ft5          #; ft5  = 12.7278000, ft5  = 12.7278000
       0     1849        M                                           #; (f:fpu) ft0  <-- 12.7278000
       0     1850        M                                           #; (f:lsu) ft6  <-- 14.142
       0     1851        M 0x800007b8 fsgnj.d ft0, ft6, ft6          #; ft6  = 14.142, ft6  = 14.142
       0     1852        M 0x800007bc csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 14.142
       0     1853        M 0x800007c0 j       pc + 0xcc              #; goto 0x8000088c
       0     1865        M 0x8000088c addi    a0, s1, 72             #; s1  = 0x00100050, (wrb) a0  <-- 0x00100098
       0     1877        M 0x80000890 srli    a2, s1, 20             #; s1  = 0x00100050, (wrb) a2  <-- 1
       0     1878        M 0x80000894 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1879        M 0x80000898 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     1880        M 0x8000089c addi    a4, a4, 1              #; a4  = 0x00120000, (wrb) a4  <-- 0x00120001
       0     1889        M 0x800008a0 sltu    a0, a0, a4             #; a0  = 0x00100098, a4  = 0x00120001, (wrb) a0  <-- 1
       0     1890        M 0x800008a4 and     a0, a2, a0             #; a2  = 1, a0  = 1, (wrb) a0  <-- 1
       0     1891        M 0x800008a8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038a8
       0     1892        M 0x800008ac addi    a2, a2, -1280          #; a2  = 0x800038a8, (wrb) a2  <-- 0x800033a8
       0     1901        M 0x800008b0 beqz    a0, pc + 132           #; a0  = 1, not taken
       0     1902        M 0x800008b4 li      a0, 8                  #; (wrb) a0  <-- 8
       0     1903        M 0x800008b8 li      a4, 9                  #; (wrb) a4  <-- 9
       0     1904        M 0x800008bc li      a5, 64                 #; (wrb) a5  <-- 64
       0     1913        M 0x800008c0 li      a1, 192                #; (wrb) a1  <-- 192
       0     1914        M 0x800008c4 scfgw   a4, a5                 #; a4  = 9, a5  = 64
       0     1915        M 0x800008c8 scfgw   a0, a1                 #; a0  = 8, a1  = 192
       0     1916        M 0x800008cc li      a0, 32                 #; (wrb) a0  <-- 32
       0     1925        M 0x800008d0 scfgw   zero, a0               #; a0  = 32
       0     1928        M 0x800008dc scfgwi  s1, 896                #; s1  = 0x00100050
                         M 0x800008d4 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80003360]
       0     1929        M 0x800008d8 fld     ft4, 0(t5)             #; ft4  <~~ Doub[0x80003368]
       0     1937        M                                           #; (f:lsu) ft3  <-- 2.8284
       0     1938        M 0x800008e0 csrrsi  a0, ssr, 1             #; (f:lsu) ft4  <-- 4.2426000
       0     1940        M 0x800008e4 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.8284, ft3  = 2.8284
       0     1941        M 0x800008e8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000, (f:fpu) ft0  <-- 2.8284
       0     1942        M 0x800008ec fld     ft3, 0(t4)             #; ft3  <~~ Doub[0x80003370], (f:fpu) ft0  <-- 4.2426000
       0     1951        M 0x800008f0 fld     ft4, 0(t3)             #; ft4  <~~ Doub[0x80003378], (f:lsu) ft3  <-- 5.6568
       0     1952        M 0x800008f4 fld     ft5, 0(t2)             #; ft5  <~~ Doub[0x80003380]
       0     1960        M                                           #; (f:lsu) ft4  <-- 7.071
       0     1961        M 0x800008f8 fld     ft6, 0(t1)             #; ft6  <~~ Doub[0x80003388], (f:lsu) ft5  <-- 8.4852000
       0     1962        M 0x800008fc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.6568, ft3  = 5.6568
       0     1963        M 0x80000900 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071, (f:fpu) ft0  <-- 5.6568
       0     1964        M 0x80000904 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.4852000, ft5  = 8.4852000, (f:fpu) ft0  <-- 7.071
       0     1965        M                                           #; (f:fpu) ft0  <-- 8.4852000
       0     1970        M                                           #; (f:lsu) ft6  <-- 9.8994
       0     1971        M 0x80000908 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.8994, ft6  = 9.8994
       0     1972        M 0x8000090c fld     ft3, 0(t0)             #; ft3  <~~ Doub[0x80003390], (f:fpu) ft0  <-- 9.8994
       0     1975        M 0x80000910 fld     ft4, 0(a7)             #; ft4  <~~ Doub[0x80003398]
       0     1981        M                                           #; (f:lsu) ft3  <-- 11.3136
       0     1982        M 0x80000914 fld     ft5, 0(a6)             #; ft5  <~~ Doub[0x800033a0]
       0     1984        M                                           #; (f:lsu) ft4  <-- 12.7278000
       0     1985        M 0x80000918 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800033a8]
       0     1986        M 0x8000091c fsgnj.d ft0, ft3, ft3          #; ft3  = 11.3136, ft3  = 11.3136
       0     1987        M 0x80000920 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000, (f:fpu) ft0  <-- 11.3136
       0     1988        M                                           #; (f:fpu) ft0  <-- 12.7278000
       0     1991        M                                           #; (f:lsu) ft5  <-- 14.142
       0     1992        M 0x80000924 fsgnj.d ft0, ft5, ft5          #; ft5  = 14.142, ft5  = 14.142
       0     1993        M                                           #; (f:fpu) ft0  <-- 14.142
       0     1994        M                                           #; (f:lsu) ft6  <-- 15.5562000
       0     1995        M 0x80000928 fsgnj.d ft0, ft6, ft6          #; ft6  = 15.5562000, ft6  = 15.5562000
       0     1996        M 0x8000092c csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 15.5562000
       0     1997        M 0x80000930 j       pc + 0xd4              #; goto 0x80000a04
       0     2009        M 0x80000a04 addi    a0, s0, 72             #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000e8
       0     2010        M 0x80000a08 srli    a1, s0, 20             #; s0  = 0x001000a0, (wrb) a1  <-- 1
       0     2011        M 0x80000a0c snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     2021        M 0x80000a10 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     2022        M 0x80000a14 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     2023        M 0x80000a18 sltu    a0, a0, a3             #; a0  = 0x001000e8, a3  = 0x00120001, (wrb) a0  <-- 1
       0     2024        M 0x80000a1c and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     2033        M 0x80000a20 beqz    a0, pc + 140           #; a0  = 1, not taken
       0     2034        M 0x80000a24 li      a0, 8                  #; (wrb) a0  <-- 8
       0     2035        M 0x80000a28 li      a1, 9                  #; (wrb) a1  <-- 9
       0     2036        M 0x80000a2c li      a3, 64                 #; (wrb) a3  <-- 64
       0     2045        M 0x80000a30 li      a4, 192                #; (wrb) a4  <-- 192
       0     2046        M 0x80000a34 scfgw   a1, a3                 #; a1  = 9, a3  = 64
       0     2047        M 0x80000a38 scfgw   a0, a4                 #; a0  = 8, a4  = 192
       0     2048        M 0x80000a3c li      a0, 32                 #; (wrb) a0  <-- 32
       0     2057        M 0x80000a40 scfgw   zero, a0               #; a0  = 32
       0     2060        M 0x80000a4c scfgwi  s0, 896                #; s0  = 0x001000a0
                         M 0x80000a44 fld     ft3, 0(t5)             #; ft3  <~~ Doub[0x80003368]
       0     2061        M 0x80000a48 fld     ft4, 0(t4)             #; ft4  <~~ Doub[0x80003370]
       0     2069        M                                           #; (f:lsu) ft3  <-- 4.2426000
       0     2070        M 0x80000a50 csrrsi  a0, ssr, 1             #; (f:lsu) ft4  <-- 5.6568
       0     2072        M 0x80000a54 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.2426000, ft3  = 4.2426000
       0     2073        M 0x80000a58 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568, (f:fpu) ft0  <-- 4.2426000
       0     2074        M 0x80000a5c fld     ft3, 0(t3)             #; ft3  <~~ Doub[0x80003378], (f:fpu) ft0  <-- 5.6568
       0     2083        M 0x80000a60 fld     ft4, 0(t2)             #; ft4  <~~ Doub[0x80003380], (f:lsu) ft3  <-- 7.071
       0     2084        M 0x80000a64 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x80003388]
       0     2092        M                                           #; (f:lsu) ft4  <-- 8.4852000
       0     2093        M 0x80000a68 fld     ft6, 0(t0)             #; ft6  <~~ Doub[0x80003390], (f:lsu) ft5  <-- 9.8994
       0     2094        M 0x80000a6c fsgnj.d ft0, ft3, ft3          #; ft3  = 7.071, ft3  = 7.071
       0     2095        M 0x80000a70 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000, (f:fpu) ft0  <-- 7.071
       0     2096        M 0x80000a74 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.8994, ft5  = 9.8994, (f:fpu) ft0  <-- 8.4852000
       0     2097        M                                           #; (f:fpu) ft0  <-- 9.8994
       0     2102        M                                           #; (f:lsu) ft6  <-- 11.3136
       0     2103        M 0x80000a78 fsgnj.d ft0, ft6, ft6          #; ft6  = 11.3136, ft6  = 11.3136
       0     2104        M 0x80000a7c fld     ft3, 0(a7)             #; ft3  <~~ Doub[0x80003398], (f:fpu) ft0  <-- 11.3136
       0     2107        M 0x80000a88 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003a88
                         M 0x80000a80 fld     ft4, 0(a6)             #; ft4  <~~ Doub[0x800033a0]
       0     2108        M 0x80000a8c addi    a0, a0, -1752          #; a0  = 0x80003a88, (wrb) a0  <-- 0x800033b0
       0     2113        M                                           #; (f:lsu) ft3  <-- 12.7278000
       0     2114        M 0x80000a84 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800033a8]
       0     2116        M                                           #; (f:lsu) ft4  <-- 14.142
       0     2119        M 0x80000a90 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x800033b0]
       0     2120        M 0x80000a94 fsgnj.d ft0, ft3, ft3          #; ft3  = 12.7278000, ft3  = 12.7278000
       0     2121        M 0x80000a98 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142, (f:fpu) ft0  <-- 12.7278000
       0     2122        M                                           #; (f:fpu) ft0  <-- 14.142
       0     2123        M                                           #; (f:lsu) ft5  <-- 15.5562000
       0     2124        M 0x80000a9c fsgnj.d ft0, ft5, ft5          #; ft5  = 15.5562000, ft5  = 15.5562000
       0     2125        M                                           #; (f:fpu) ft0  <-- 15.5562000
       0     2128        M                                           #; (f:lsu) ft6  <-- 16.9704000
       0     2131        M 0x80000aa8 j       pc + 0xd4              #; goto 0x80000b7c
                         M 0x80000aa0 fsgnj.d ft0, ft6, ft6          #; ft6  = 16.9704000, ft6  = 16.9704000
       0     2132        M 0x80000aa4 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 16.9704000
       0     2141        M 0x80000b7c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2153        M 0x80000b80 li      a1, 0                  #; (wrb) a1  <-- 0
       0     2154        M 0x80000b84 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002b84
       0     2155        M 0x80000b88 jalr    ra, ra, 168            #; ra  = 0x80002b84, (wrb) ra  <-- 0x80000b8c, goto 0x80002c2c
       0     2176        M 0x80002c2c slli    a1, a1, 3              #; a1  = 0, (wrb) a1  <-- 0
       0     2188        M 0x80002c30 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 0, (wrb) a0  <-- 0x001000a0
       0     2189        M 0x80002c34 sw      zero, 4(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a4]
       0     2190        M 0x80002c38 sw      zero, 0(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a0]
       0     2191        M 0x80002c3c ret                            #; ra  = 0x80000b8c, goto 0x80000b8c
       0     2194        M 0x80000b8c fld     ft3, 0(s2)             #; ft3  <~~ Doub[0x00100000]
       0     2195        M 0x80000b90 fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 1.4142
       0     2196        M 0x80000b94 fld     ft5, 0(s0)             #; ft5  <~~ Doub[0x001000a0], (f:lsu) ft4  <-- 2.8284
       0     2197        M 0x80000b98 fadd.d  ft3, ft3, ft4          #; ft3  = 1.4142, ft4  = 2.8284, (f:lsu) ft5  <-- 0.0
       0     2200        M                                           #; (f:fpu) ft3  <-- 4.2426000
       0     2201        M 0x80000b9c fadd.d  fs0, ft3, ft5          #; ft3  = 4.2426000, ft5  = 0.0
       0     2204        M                                           #; (f:fpu) fs0  <-- 4.2426000
       0     2205        M 0x80000ba0 li      a1, 1                  #; (wrb) a1  <-- 1
       0     2206        M 0x80000ba4 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2207        M 0x80000ba8 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002ba8
       0     2208        M 0x80000bac jalr    ra, ra, 132            #; ra  = 0x80002ba8, (wrb) ra  <-- 0x80000bb0, goto 0x80002c2c
       0     2209        M 0x80002c2c slli    a1, a1, 3              #; a1  = 1, (wrb) a1  <-- 8
       0     2210        M 0x80002c30 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 8, (wrb) a0  <-- 0x001000a8
       0     2211        M 0x80002c34 sw      zero, 4(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000ac]
       0     2212        M 0x80002c38 sw      zero, 0(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000a8]
       0     2213        M 0x80002c3c ret                            #; ra  = 0x80000bb0, goto 0x80000bb0
       0     2219        M 0x80000bb0 fld     ft3, 8(s2)             #; ft3  <~~ Doub[0x00100008]
       0     2220        M 0x80000bb4 fld     ft4, 8(s1)             #; ft4  <~~ Doub[0x00100058], (f:lsu) ft3  <-- 2.8284
       0     2221        M 0x80000bb8 fld     ft5, 8(s0)             #; ft5  <~~ Doub[0x001000a8], (f:lsu) ft4  <-- 4.2426000
       0     2222        M 0x80000bbc fadd.d  ft3, ft3, fs0          #; ft3  = 2.8284, fs0  = 4.2426000, (f:lsu) ft5  <-- 0.0
       0     2225        M                                           #; (f:fpu) ft3  <-- 7.071
       0     2231        M 0x80000bc8 li      a1, 2                  #; (wrb) a1  <-- 2
                         M 0x80000bc0 fadd.d  ft3, ft3, ft4          #; ft3  = 7.071, ft4  = 4.2426000
       0     2232        M 0x80000bcc mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2234        M                                           #; (f:fpu) ft3  <-- 11.3136
       0     2235        M 0x80000bc4 fadd.d  fs0, ft3, ft5          #; ft3  = 11.3136, ft5  = 0.0
       0     2238        M                                           #; (f:fpu) fs0  <-- 11.3136
       0     2241        M 0x80000bd0 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002bd0
       0     2242        M 0x80000bd4 jalr    ra, ra, 92             #; ra  = 0x80002bd0, (wrb) ra  <-- 0x80000bd8, goto 0x80002c2c
       0     2243        M 0x80002c2c slli    a1, a1, 3              #; a1  = 2, (wrb) a1  <-- 16
       0     2244        M 0x80002c30 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 16, (wrb) a0  <-- 0x001000b0
       0     2245        M 0x80002c34 sw      zero, 4(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b4]
       0     2246        M 0x80002c38 sw      zero, 0(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b0]
       0     2247        M 0x80002c3c ret                            #; ra  = 0x80000bd8, goto 0x80000bd8
       0     2250        M 0x80000bd8 fld     ft3, 16(s2)            #; ft3  <~~ Doub[0x00100010]
       0     2251        M 0x80000bdc fld     ft4, 16(s1)            #; ft4  <~~ Doub[0x00100060], (f:lsu) ft3  <-- 4.2426000
       0     2252        M                                           #; (f:lsu) ft4  <-- 5.6568
       0     2255        M 0x80000be0 fld     ft5, 16(s0)            #; ft5  <~~ Doub[0x001000b0]
       0     2256        M 0x80000be4 fadd.d  ft3, ft3, fs0          #; ft3  = 4.2426000, fs0  = 11.3136, (f:lsu) ft5  <-- 0.0
       0     2259        M                                           #; (f:fpu) ft3  <-- 15.5562000
       0     2260        M 0x80000be8 fadd.d  ft3, ft3, ft4          #; ft3  = 15.5562000, ft4  = 5.6568
       0     2263        M                                           #; (f:fpu) ft3  <-- 21.2130000
       0     2264        M 0x80000bec fadd.d  fs0, ft3, ft5          #; ft3  = 21.2130000, ft5  = 0.0
       0     2265        M 0x80000bf0 li      a1, 3                  #; (wrb) a1  <-- 3
       0     2266        M 0x80000bf4 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2267        M 0x80000bf8 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002bf8
                         M                                           #; (f:fpu) fs0  <-- 21.2130000
       0     2268        M 0x80000bfc jalr    ra, ra, 52             #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80000c00, goto 0x80002c2c
       0     2279        M 0x80002c2c slli    a1, a1, 3              #; a1  = 3, (wrb) a1  <-- 24
       0     2282        M 0x80002c30 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 24, (wrb) a0  <-- 0x001000b8
       0     2283        M 0x80002c34 sw      zero, 4(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000bc]
       0     2284        M 0x80002c38 sw      zero, 0(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000b8]
       0     2285        M 0x80002c3c ret                            #; ra  = 0x80000c00, goto 0x80000c00
       0     2288        M 0x80000c00 fld     ft3, 24(s2)            #; ft3  <~~ Doub[0x00100018]
       0     2289        M 0x80000c04 fld     ft4, 24(s1)            #; ft4  <~~ Doub[0x00100068], (f:lsu) ft3  <-- 5.6568
       0     2290        M 0x80000c08 fld     ft5, 24(s0)            #; ft5  <~~ Doub[0x001000b8], (f:lsu) ft4  <-- 7.071
       0     2291        M 0x80000c0c fadd.d  ft3, ft3, fs0          #; ft3  = 5.6568, fs0  = 21.2130000, (f:lsu) ft5  <-- 0.0
       0     2294        M                                           #; (f:fpu) ft3  <-- 26.8698000
       0     2300        M 0x80000c18 li      a1, 4                  #; (wrb) a1  <-- 4
                         M 0x80000c10 fadd.d  ft3, ft3, ft4          #; ft3  = 26.8698000, ft4  = 7.071
       0     2301        M 0x80000c1c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2303        M                                           #; (f:fpu) ft3  <-- 33.9408000
       0     2304        M 0x80000c14 fadd.d  fs0, ft3, ft5          #; ft3  = 33.9408000, ft5  = 0.0
       0     2307        M                                           #; (f:fpu) fs0  <-- 33.9408000
       0     2311        M 0x80000c20 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002c20
       0     2312        M 0x80000c24 jalr    ra, ra, 12             #; ra  = 0x80002c20, (wrb) ra  <-- 0x80000c28, goto 0x80002c2c
       0     2335        M 0x80002c2c slli    a1, a1, 3              #; a1  = 4, (wrb) a1  <-- 32
       0     2337        M 0x80002c30 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 32, (wrb) a0  <-- 0x001000c0
       0     2338        M 0x80002c34 sw      zero, 4(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c4]
       0     2339        M 0x80002c38 sw      zero, 0(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c0]
       0     2340        M 0x80002c3c ret                            #; ra  = 0x80000c28, goto 0x80000c28
       0     2355        M 0x80000c28 fld     ft3, 32(s2)            #; ft3  <~~ Doub[0x00100020]
       0     2356        M 0x80000c2c fld     ft4, 32(s1)            #; ft4  <~~ Doub[0x00100070], (f:lsu) ft3  <-- 7.071
       0     2357        M                                           #; (f:lsu) ft4  <-- 8.4852000
       0     2359        M 0x80000c30 fld     ft5, 32(s0)            #; ft5  <~~ Doub[0x001000c0]
       0     2360        M 0x80000c34 fadd.d  ft3, ft3, fs0          #; ft3  = 7.071, fs0  = 33.9408000, (f:lsu) ft5  <-- 0.0
       0     2363        M                                           #; (f:fpu) ft3  <-- 41.0118000
       0     2364        M 0x80000c38 fadd.d  ft3, ft3, ft4          #; ft3  = 41.0118000, ft4  = 8.4852000
       0     2367        M                                           #; (f:fpu) ft3  <-- 49.4970000
       0     2368        M 0x80000c3c fadd.d  fs0, ft3, ft5          #; ft3  = 49.4970000, ft5  = 0.0
       0     2370        M 0x80000c40 li      a1, 5                  #; (wrb) a1  <-- 5
       0     2371        M 0x80000c44 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                         M                                           #; (f:fpu) fs0  <-- 49.4970000
       0     2372        M 0x80000c48 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002c48
       0     2373        M 0x80000c4c jalr    ra, ra, -28            #; ra  = 0x80002c48, (wrb) ra  <-- 0x80000c50, goto 0x80002c2c
       0     2385        M 0x80002c2c slli    a1, a1, 3              #; a1  = 5, (wrb) a1  <-- 40
       0     2398        M 0x80002c30 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 40, (wrb) a0  <-- 0x001000c8
       0     2399        M 0x80002c34 sw      zero, 4(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000cc]
       0     2400        M 0x80002c38 sw      zero, 0(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000c8]
       0     2401        M 0x80002c3c ret                            #; ra  = 0x80000c50, goto 0x80000c50
       0     2404        M 0x80000c50 fld     ft3, 40(s2)            #; ft3  <~~ Doub[0x00100028]
       0     2405        M 0x80000c54 fld     ft4, 40(s1)            #; ft4  <~~ Doub[0x00100078], (f:lsu) ft3  <-- 8.4852000
       0     2406        M 0x80000c58 fld     ft5, 40(s0)            #; ft5  <~~ Doub[0x001000c8], (f:lsu) ft4  <-- 9.8994
       0     2407        M 0x80000c5c fadd.d  ft3, ft3, fs0          #; ft3  = 8.4852000, fs0  = 49.4970000, (f:lsu) ft5  <-- 0.0
       0     2410        M                                           #; (f:fpu) ft3  <-- 57.9822000
       0     2423        M 0x80000c68 li      a1, 6                  #; (wrb) a1  <-- 6
                         M 0x80000c60 fadd.d  ft3, ft3, ft4          #; ft3  = 57.9822000, ft4  = 9.8994
       0     2424        M 0x80000c6c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2426        M                                           #; (f:fpu) ft3  <-- 67.8816000
       0     2427        M 0x80000c64 fadd.d  fs0, ft3, ft5          #; ft3  = 67.8816000, ft5  = 0.0
       0     2430        M                                           #; (f:fpu) fs0  <-- 67.8816000
       0     2433        M 0x80000c70 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002c70
       0     2434        M 0x80000c74 jalr    ra, ra, -68            #; ra  = 0x80002c70, (wrb) ra  <-- 0x80000c78, goto 0x80002c2c
       0     2435        M 0x80002c2c slli    a1, a1, 3              #; a1  = 6, (wrb) a1  <-- 48
       0     2436        M 0x80002c30 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 48, (wrb) a0  <-- 0x001000d0
       0     2437        M 0x80002c34 sw      zero, 4(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d4]
       0     2438        M 0x80002c38 sw      zero, 0(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d0]
       0     2439        M 0x80002c3c ret                            #; ra  = 0x80000c78, goto 0x80000c78
       0     2442        M 0x80000c78 fld     ft3, 48(s2)            #; ft3  <~~ Doub[0x00100030]
       0     2443        M 0x80000c7c fld     ft4, 48(s1)            #; ft4  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 9.8994
       0     2444        M                                           #; (f:lsu) ft4  <-- 11.3136
       0     2447        M 0x80000c80 fld     ft5, 48(s0)            #; ft5  <~~ Doub[0x001000d0]
       0     2448        M 0x80000c84 fadd.d  ft3, ft3, fs0          #; ft3  = 9.8994, fs0  = 67.8816000, (f:lsu) ft5  <-- 0.0
       0     2451        M                                           #; (f:fpu) ft3  <-- 77.7810000
       0     2452        M 0x80000c88 fadd.d  ft3, ft3, ft4          #; ft3  = 77.7810000, ft4  = 11.3136
       0     2455        M                                           #; (f:fpu) ft3  <-- 89.0946000
       0     2456        M 0x80000c8c fadd.d  fs0, ft3, ft5          #; ft3  = 89.0946000, ft5  = 0.0
       0     2457        M 0x80000c90 li      a1, 7                  #; (wrb) a1  <-- 7
       0     2458        M 0x80000c94 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2459        M 0x80000c98 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002c98
                         M                                           #; (f:fpu) fs0  <-- 89.0946000
       0     2460        M 0x80000c9c jalr    ra, ra, -108           #; ra  = 0x80002c98, (wrb) ra  <-- 0x80000ca0, goto 0x80002c2c
       0     2461        M 0x80002c2c slli    a1, a1, 3              #; a1  = 7, (wrb) a1  <-- 56
       0     2462        M 0x80002c30 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 56, (wrb) a0  <-- 0x001000d8
       0     2463        M 0x80002c34 sw      zero, 4(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000dc]
       0     2464        M 0x80002c38 sw      zero, 0(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000d8]
       0     2465        M 0x80002c3c ret                            #; ra  = 0x80000ca0, goto 0x80000ca0
       0     2471        M 0x80000ca0 fld     ft3, 56(s2)            #; ft3  <~~ Doub[0x00100038]
       0     2472        M 0x80000ca4 fld     ft4, 56(s1)            #; ft4  <~~ Doub[0x00100088], (f:lsu) ft3  <-- 11.3136
       0     2473        M 0x80000ca8 fld     ft5, 56(s0)            #; ft5  <~~ Doub[0x001000d8], (f:lsu) ft4  <-- 12.7278000
       0     2474        M 0x80000cac fadd.d  ft3, ft3, fs0          #; ft3  = 11.3136, fs0  = 89.0946000, (f:lsu) ft5  <-- 0.0
       0     2477        M                                           #; (f:fpu) ft3  <-- 100.4082000
       0     2483        M 0x80000cb8 li      a1, 8                  #; (wrb) a1  <-- 8
                         M 0x80000cb0 fadd.d  ft3, ft3, ft4          #; ft3  = 100.4082000, ft4  = 12.7278000
       0     2484        M 0x80000cbc mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2486        M                                           #; (f:fpu) ft3  <-- 113.1360000
       0     2487        M 0x80000cb4 fadd.d  fs0, ft3, ft5          #; ft3  = 113.1360000, ft5  = 0.0
       0     2490        M                                           #; (f:fpu) fs0  <-- 113.1360000
       0     2493        M 0x80000cc0 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002cc0
       0     2494        M 0x80000cc4 jalr    ra, ra, -148           #; ra  = 0x80002cc0, (wrb) ra  <-- 0x80000cc8, goto 0x80002c2c
       0     2507        M 0x80002c2c slli    a1, a1, 3              #; a1  = 8, (wrb) a1  <-- 64
       0     2510        M 0x80002c30 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 64, (wrb) a0  <-- 0x001000e0
       0     2511        M 0x80002c34 sw      zero, 4(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e4]
       0     2512        M 0x80002c38 sw      zero, 0(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e0]
       0     2513        M 0x80002c3c ret                            #; ra  = 0x80000cc8, goto 0x80000cc8
       0     2516        M 0x80000cc8 fld     ft3, 64(s2)            #; ft3  <~~ Doub[0x00100040]
       0     2517        M 0x80000ccc fld     ft4, 64(s1)            #; ft4  <~~ Doub[0x00100090], (f:lsu) ft3  <-- 12.7278000
       0     2518        M 0x80000cd0 fld     ft5, 64(s0)            #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft4  <-- 14.142
       0     2519        M 0x80000cd4 fadd.d  ft3, ft3, fs0          #; ft3  = 12.7278000, fs0  = 113.1360000, (f:lsu) ft5  <-- 0.0
       0     2522        M                                           #; (f:fpu) ft3  <-- 125.8638000
       0     2523        M 0x80000cd8 fadd.d  ft3, ft3, ft4          #; ft3  = 125.8638000, ft4  = 14.142
       0     2526        M                                           #; (f:fpu) ft3  <-- 140.0058
       0     2527        M 0x80000cdc fadd.d  fs0, ft3, ft5          #; ft3  = 140.0058, ft5  = 0.0
       0     2528        M 0x80000ce0 li      a1, 9                  #; (wrb) a1  <-- 9
       0     2529        M 0x80000ce4 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2530        M 0x80000ce8 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002ce8
                         M                                           #; (f:fpu) fs0  <-- 140.0058
       0     2531        M 0x80000cec jalr    ra, ra, -188           #; ra  = 0x80002ce8, (wrb) ra  <-- 0x80000cf0, goto 0x80002c2c
       0     2532        M 0x80002c2c slli    a1, a1, 3              #; a1  = 9, (wrb) a1  <-- 72
       0     2533        M 0x80002c30 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 72, (wrb) a0  <-- 0x001000e8
       0     2534        M 0x80002c34 sw      zero, 4(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000ec]
       0     2535        M 0x80002c38 sw      zero, 0(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000e8]
       0     2536        M 0x80002c3c ret                            #; ra  = 0x80000cf0, goto 0x80000cf0
       0     2542        M 0x80000cf0 fld     ft3, 72(s2)            #; ft3  <~~ Doub[0x00100048]
       0     2543        M 0x80000cfc auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002cfc
                         M 0x80000cf4 fld     ft4, 72(s1)            #; ft4  <~~ Doub[0x00100098], (f:lsu) ft3  <-- 14.142
       0     2544        M 0x80000cf8 fld     ft5, 72(s0)            #; ft5  <~~ Doub[0x001000e8], (f:lsu) ft4  <-- 15.5562000
       0     2545        M                                           #; (f:lsu) ft5  <-- 0.0
       0     2552        M 0x80000d00 addi    a0, a0, 1724           #; a0  = 0x80002cfc, (wrb) a0  <-- 0x800033b8
       0     2555        M 0x80000d04 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x800033b8]
       0     2556        M 0x80000d08 fadd.d  ft3, ft3, fs0          #; ft3  = 14.142, fs0  = 140.0058
       0     2559        M                                           #; (f:fpu) ft3  <-- 154.1478
       0     2560        M 0x80000d0c fadd.d  ft3, ft3, ft4          #; ft3  = 154.1478, ft4  = 15.5562000
       0     2563        M                                           #; (f:fpu) ft3  <-- 169.7040000
       0     2564        M                                           #; (f:lsu) ft6  <-- -169.704
       0     2566        M 0x80000d10 fadd.d  ft3, ft3, ft5          #; ft3  = 169.7040000, ft5  = 0.0
       0     2569        M                                           #; (f:fpu) ft3  <-- 169.7040000
       0     2570        M 0x80000d14 fadd.d  ft4, ft3, ft6          #; ft3  = 169.7040000, ft6  = -169.704
       0     2573        M                                           #; (f:fpu) ft4  <-- -0.0000000
       0     2574        M 0x80000d18 fsgnjx.d fs0, ft4, ft4         #; ft4  = -0.0000000, ft4  = -0.0000000
       0     2575        M 0x80000d1c fsd     ft3, 0(sp)             #; 169.7040000 ~~> Doub[0x0011ff40], (f:fpu) fs0  <-- 0.0000000
       0     2576        M 0x80000d20 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
       0     2579        M                                           #; (lsu) a2  <-- 0x2b020c49
       0     2580        M 0x80000d24 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
       0     2583        M                                           #; (lsu) a3  <-- 0x40653687
                         M 0x80000d28 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff40]
       0     2584        M 0x80000d2c lw      a4, 0(sp)              #; sp  = 0x0011ff40, a4  <~~ Word[0x0011ff40]
       0     2587        M                                           #; (lsu) a4  <-- 0
       0     2588        M 0x80000d30 lw      a5, 4(sp)              #; sp  = 0x0011ff40, a5  <~~ Word[0x0011ff44]
       0     2589        M 0x80000d34 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d34
       0     2590        M 0x80000d38 addi    a0, a0, 897            #; a0  = 0x80002d34, (wrb) a0  <-- 0x800030b5
       0     2591        M 0x80000d3c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000d3c
       0     2592        M                                           #; (lsu) a5  <-- 0x3d200000
       0     2600        M 0x80000d40 jalr    ra, ra, 52             #; ra  = 0x80000d3c, (wrb) ra  <-- 0x80000d44, goto 0x80000d70
       0     2605        M 0x80000d70 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2606        M 0x80000d74 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000d44 ~~> Word[0x0011ff1c]
       0     2607        M 0x80000d78 mv      t0, a0                 #; a0  = 0x800030b5, (wrb) t0  <-- 0x800030b5
       0     2608        M 0x80000d7c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x80003398 ~~> Word[0x0011ff3c]
       0     2617        M 0x80000d80 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x800033a0 ~~> Word[0x0011ff38]
       0     2618        M 0x80000d84 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x3d200000 ~~> Word[0x0011ff34]
       0     2619        M 0x80000d88 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff30]
       0     2620        M 0x80000d8c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x40653687 ~~> Word[0x0011ff2c]
       0     2629        M 0x80000d90 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0x2b020c49 ~~> Word[0x0011ff28]
       0     2630        M 0x80000d94 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 72 ~~> Word[0x0011ff24]
       0     2631        M 0x80000d98 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2632        M 0x80000d9c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2641        M 0x80000da0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001da0
       0     2642        M 0x80000da4 addi    a0, a0, -988           #; a0  = 0x80001da0, (wrb) a0  <-- 0x800019c4
       0     2643        M 0x80000da8 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2644        M 0x80000dac li      a2, -1                 #; (wrb) a2  <-- -1
       0     2653        M 0x80000db0 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2654        M 0x80000db4 mv      a3, t0                 #; t0  = 0x800030b5, (wrb) a3  <-- 0x800030b5
       0     2655        M 0x80000db8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000db8
       0     2656        M 0x80000dbc jalr    ra, ra, 20             #; ra  = 0x80000db8, (wrb) ra  <-- 0x80000dc0, goto 0x80000dcc
       0     2665        M 0x80000dcc addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2677        M 0x80000dd0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000dc0 ~~> Word[0x0011ff0c]
       0     2678        M 0x80000dd4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x001000a0 ~~> Word[0x0011ff08]
       0     2679        M 0x80000dd8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff04]
       0     2680        M 0x80000ddc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
       0     2689        M 0x80000de0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2690        M 0x80000de4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2691        M 0x80000de8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2692        M 0x80000dec sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2701        M 0x80000df0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2702        M 0x80000df4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2703        M 0x80000df8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2704        M 0x80000dfc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2713        M 0x80000e00 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2714        M 0x80000e04 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2715        M 0x80000e08 mv      s0, a3                 #; a3  = 0x800030b5, (wrb) s0  <-- 0x800030b5
       0     2716        M 0x80000e0c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2725        M 0x80000e10 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2726        M 0x80000e14 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2727        M 0x80000e18 mv      s2, a0                 #; a0  = 0x800019c4, (wrb) s2  <-- 0x800019c4
       0     2728        M 0x80000e1c j       pc + 0xc               #; goto 0x80000e28
       0     2737        M 0x80000e28 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2738        M 0x80000e2c li      s6, 37                 #; (wrb) s6  <-- 37
       0     2749        M 0x80000e30 li      s11, 16                #; (wrb) s11 <-- 16
       0     2750        M 0x80000e34 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2751        M 0x80000e38 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2752        M 0x80000e3c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2761        M 0x80000e40 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2762        M 0x80000e44 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2763        M 0x80000e48 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2764        M 0x80000e4c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2773        M 0x80000e50 addi    s10, s0, 2             #; s0  = 0x800030b5, (wrb) s10 <-- 0x800030b7
       0     2774        M 0x80000e54 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2775        M 0x80000e58 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2776        M 0x80000e5c lbu     a0, 0(s0)              #; s0  = 0x800030b5, a0  <~~ Byte[0x800030b5]
       0     2787        M                                           #; (lsu) a0  <-- 101
       0     2788        M 0x80000e60 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2789        M 0x80000e64 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2790        M 0x80000e68 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2791        M 0x80000e6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2797        M 0x80000e70 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2798        M 0x80000e74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2799        M 0x80000e78 jalr    s2                     #; s2  = 0x800019c4, (wrb) ra  <-- 0x80000e7c, goto 0x800019c4
       0     2820        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2821        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2822        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2832        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2833        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     2834        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     2835        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2836        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     2844        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     2855        M                                           #; (lsu) a4  <-- 0
       0     2856        M 0x800019e4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2857        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 1 ~~> Word[0x80003474]
       0     2858        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 0, (wrb) a4  <-- 0x80003474
       0     2859        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003474, 101 ~~> Byte[0x800034bc]
       0     2860        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     2881        M                                           #; (lsu) a4  <-- 1
       0     2882        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2883        M 0x800019fc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2884        M 0x80001a00 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2885        M 0x80001a04 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2886        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2887        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     2907        M 0x80001a6c ret                            #; ra  = 0x80000e7c, goto 0x80000e7c
       0     2921        M 0x80000e7c addi    s0, s0, 1              #; s0  = 0x800030b5, (wrb) s0  <-- 0x800030b6
       0     2924        M 0x80000e80 addi    s10, s10, 1            #; s10 = 0x800030b7, (wrb) s10 <-- 0x800030b8
       0     2925        M 0x80000e84 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2926        M 0x80000e88 lbu     a0, 0(s0)              #; s0  = 0x800030b6, a0  <~~ Byte[0x800030b6]
       0     2937        M                                           #; (lsu) a0  <-- 114
       0     2938        M 0x80000e8c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e64
       0     2939        M 0x80000e64 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2940        M 0x80000e68 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2941        M 0x80000e6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2942        M 0x80000e70 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2943        M 0x80000e74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2944        M 0x80000e78 jalr    s2                     #; s2  = 0x800019c4, (wrb) ra  <-- 0x80000e7c, goto 0x800019c4
       0     2947        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2948        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2949        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2950        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2951        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     2952        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     2953        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2954        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     2955        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     2966        M                                           #; (lsu) a4  <-- 1
       0     2967        M 0x800019e4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2968        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 2 ~~> Word[0x80003474]
       0     2969        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 1, (wrb) a4  <-- 0x80003475
       0     2970        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003475, 114 ~~> Byte[0x800034bd]
       0     2971        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     2992        M                                           #; (lsu) a4  <-- 2
       0     2993        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2994        M 0x800019fc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2995        M 0x80001a00 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2996        M 0x80001a04 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2997        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2998        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     3001        M 0x80001a6c ret                            #; ra  = 0x80000e7c, goto 0x80000e7c
       0     3006        M 0x80000e7c addi    s0, s0, 1              #; s0  = 0x800030b6, (wrb) s0  <-- 0x800030b7
       0     3009        M 0x80000e80 addi    s10, s10, 1            #; s10 = 0x800030b8, (wrb) s10 <-- 0x800030b9
       0     3010        M 0x80000e84 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     3011        M 0x80000e88 lbu     a0, 0(s0)              #; s0  = 0x800030b7, a0  <~~ Byte[0x800030b7]
       0     3022        M                                           #; (lsu) a0  <-- 114
       0     3023        M 0x80000e8c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e64
       0     3024        M 0x80000e64 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3025        M 0x80000e68 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     3026        M 0x80000e6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3027        M 0x80000e70 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     3028        M 0x80000e74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3029        M 0x80000e78 jalr    s2                     #; s2  = 0x800019c4, (wrb) ra  <-- 0x80000e7c, goto 0x800019c4
       0     3032        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3033        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3034        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3035        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3036        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     3037        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     3038        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3039        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3040        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3051        M                                           #; (lsu) a4  <-- 2
       0     3052        M 0x800019e4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     3053        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 3 ~~> Word[0x80003474]
       0     3054        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 2, (wrb) a4  <-- 0x80003476
       0     3055        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003476, 114 ~~> Byte[0x800034be]
       0     3056        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3077        M                                           #; (lsu) a4  <-- 3
       0     3078        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     3079        M 0x800019fc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     3080        M 0x80001a00 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3081        M 0x80001a04 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3082        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3083        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     3086        M 0x80001a6c ret                            #; ra  = 0x80000e7c, goto 0x80000e7c
       0     3091        M 0x80000e7c addi    s0, s0, 1              #; s0  = 0x800030b7, (wrb) s0  <-- 0x800030b8
       0     3094        M 0x80000e80 addi    s10, s10, 1            #; s10 = 0x800030b9, (wrb) s10 <-- 0x800030ba
       0     3095        M 0x80000e84 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3096        M 0x80000e88 lbu     a0, 0(s0)              #; s0  = 0x800030b8, a0  <~~ Byte[0x800030b8]
       0     3107        M                                           #; (lsu) a0  <-- 111
       0     3108        M 0x80000e8c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000e64
       0     3109        M 0x80000e64 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3110        M 0x80000e68 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3111        M 0x80000e6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3112        M 0x80000e70 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3113        M 0x80000e74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3114        M 0x80000e78 jalr    s2                     #; s2  = 0x800019c4, (wrb) ra  <-- 0x80000e7c, goto 0x800019c4
       0     3117        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3118        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3119        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3120        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3121        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     3122        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     3123        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3124        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3125        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3136        M                                           #; (lsu) a4  <-- 3
       0     3137        M 0x800019e4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3138        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 4 ~~> Word[0x80003474]
       0     3139        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 3, (wrb) a4  <-- 0x80003477
       0     3140        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003477, 111 ~~> Byte[0x800034bf]
       0     3141        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3162        M                                           #; (lsu) a4  <-- 4
       0     3163        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3164        M 0x800019fc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3165        M 0x80001a00 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3166        M 0x80001a04 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3167        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3168        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     3171        M 0x80001a6c ret                            #; ra  = 0x80000e7c, goto 0x80000e7c
       0     3176        M 0x80000e7c addi    s0, s0, 1              #; s0  = 0x800030b8, (wrb) s0  <-- 0x800030b9
       0     3179        M 0x80000e80 addi    s10, s10, 1            #; s10 = 0x800030ba, (wrb) s10 <-- 0x800030bb
       0     3180        M 0x80000e84 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3181        M 0x80000e88 lbu     a0, 0(s0)              #; s0  = 0x800030b9, a0  <~~ Byte[0x800030b9]
       0     3192        M                                           #; (lsu) a0  <-- 114
       0     3193        M 0x80000e8c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e64
       0     3194        M 0x80000e64 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3195        M 0x80000e68 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3196        M 0x80000e6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3197        M 0x80000e70 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3198        M 0x80000e74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3199        M 0x80000e78 jalr    s2                     #; s2  = 0x800019c4, (wrb) ra  <-- 0x80000e7c, goto 0x800019c4
       0     3202        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3203        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3204        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3205        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3206        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     3207        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     3208        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3209        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3210        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3221        M                                           #; (lsu) a4  <-- 4
       0     3222        M 0x800019e4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3223        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 5 ~~> Word[0x80003474]
       0     3224        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 4, (wrb) a4  <-- 0x80003478
       0     3225        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003478, 114 ~~> Byte[0x800034c0]
       0     3226        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3247        M                                           #; (lsu) a4  <-- 5
       0     3248        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3249        M 0x800019fc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3250        M 0x80001a00 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3251        M 0x80001a04 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3252        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3253        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     3256        M 0x80001a6c ret                            #; ra  = 0x80000e7c, goto 0x80000e7c
       0     3261        M 0x80000e7c addi    s0, s0, 1              #; s0  = 0x800030b9, (wrb) s0  <-- 0x800030ba
       0     3264        M 0x80000e80 addi    s10, s10, 1            #; s10 = 0x800030bb, (wrb) s10 <-- 0x800030bc
       0     3265        M 0x80000e84 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3266        M 0x80000e88 lbu     a0, 0(s0)              #; s0  = 0x800030ba, a0  <~~ Byte[0x800030ba]
       0     3277        M                                           #; (lsu) a0  <-- 32
       0     3278        M 0x80000e8c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e64
       0     3279        M 0x80000e64 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3280        M 0x80000e68 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3281        M 0x80000e6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3282        M 0x80000e70 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3283        M 0x80000e74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3284        M 0x80000e78 jalr    s2                     #; s2  = 0x800019c4, (wrb) ra  <-- 0x80000e7c, goto 0x800019c4
       0     3287        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3288        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3289        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3290        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3291        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     3292        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     3293        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3294        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3295        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3306        M                                           #; (lsu) a4  <-- 5
       0     3307        M 0x800019e4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3308        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 6 ~~> Word[0x80003474]
       0     3309        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 5, (wrb) a4  <-- 0x80003479
       0     3310        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003479, 32 ~~> Byte[0x800034c1]
       0     3311        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3332        M                                           #; (lsu) a4  <-- 6
       0     3333        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3334        M 0x800019fc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3335        M 0x80001a00 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3336        M 0x80001a04 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3337        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3338        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     3341        M 0x80001a6c ret                            #; ra  = 0x80000e7c, goto 0x80000e7c
       0     3346        M 0x80000e7c addi    s0, s0, 1              #; s0  = 0x800030ba, (wrb) s0  <-- 0x800030bb
       0     3349        M 0x80000e80 addi    s10, s10, 1            #; s10 = 0x800030bc, (wrb) s10 <-- 0x800030bd
       0     3350        M 0x80000e84 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3351        M 0x80000e88 lbu     a0, 0(s0)              #; s0  = 0x800030bb, a0  <~~ Byte[0x800030bb]
       0     3362        M                                           #; (lsu) a0  <-- 61
       0     3363        M 0x80000e8c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000e64
       0     3364        M 0x80000e64 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3365        M 0x80000e68 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3366        M 0x80000e6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3367        M 0x80000e70 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3368        M 0x80000e74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3369        M 0x80000e78 jalr    s2                     #; s2  = 0x800019c4, (wrb) ra  <-- 0x80000e7c, goto 0x800019c4
       0     3372        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3373        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3374        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3375        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3376        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     3377        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     3378        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3379        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3380        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3391        M                                           #; (lsu) a4  <-- 6
       0     3392        M 0x800019e4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3393        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 7 ~~> Word[0x80003474]
       0     3394        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 6, (wrb) a4  <-- 0x8000347a
       0     3395        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x8000347a, 61 ~~> Byte[0x800034c2]
       0     3396        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3417        M                                           #; (lsu) a4  <-- 7
       0     3418        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3419        M 0x800019fc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3420        M 0x80001a00 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3421        M 0x80001a04 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3422        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3423        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     3426        M 0x80001a6c ret                            #; ra  = 0x80000e7c, goto 0x80000e7c
       0     3431        M 0x80000e7c addi    s0, s0, 1              #; s0  = 0x800030bb, (wrb) s0  <-- 0x800030bc
       0     3434        M 0x80000e80 addi    s10, s10, 1            #; s10 = 0x800030bd, (wrb) s10 <-- 0x800030be
       0     3435        M 0x80000e84 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3436        M 0x80000e88 lbu     a0, 0(s0)              #; s0  = 0x800030bc, a0  <~~ Byte[0x800030bc]
       0     3447        M                                           #; (lsu) a0  <-- 32
       0     3448        M 0x80000e8c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e64
       0     3449        M 0x80000e64 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3450        M 0x80000e68 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3451        M 0x80000e6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3452        M 0x80000e70 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3453        M 0x80000e74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3454        M 0x80000e78 jalr    s2                     #; s2  = 0x800019c4, (wrb) ra  <-- 0x80000e7c, goto 0x800019c4
       0     3457        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3458        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3459        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3460        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3461        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     3462        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     3463        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3464        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     3465        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3476        M                                           #; (lsu) a4  <-- 7
       0     3477        M 0x800019e4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3478        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 8 ~~> Word[0x80003474]
       0     3479        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 7, (wrb) a4  <-- 0x8000347b
       0     3480        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x8000347b, 32 ~~> Byte[0x800034c3]
       0     3481        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     3502        M                                           #; (lsu) a4  <-- 8
       0     3503        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3504        M 0x800019fc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3505        M 0x80001a00 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3506        M 0x80001a04 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3507        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3508        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     3511        M 0x80001a6c ret                            #; ra  = 0x80000e7c, goto 0x80000e7c
       0     3516        M 0x80000e7c addi    s0, s0, 1              #; s0  = 0x800030bc, (wrb) s0  <-- 0x800030bd
       0     3519        M 0x80000e80 addi    s10, s10, 1            #; s10 = 0x800030be, (wrb) s10 <-- 0x800030bf
       0     3520        M 0x80000e84 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3521        M 0x80000e88 lbu     a0, 0(s0)              #; s0  = 0x800030bd, a0  <~~ Byte[0x800030bd]
       0     3532        M                                           #; (lsu) a0  <-- 37
       0     3533        M 0x80000e8c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000e64
       0     3534        M 0x80000e64 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000e94
       0     3546        M 0x80000e94 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3547        M 0x80000e98 j       pc + 0x10              #; goto 0x80000ea8
       0     3558        M 0x80000ea8 lbu     a0, -1(s10)            #; s10 = 0x800030bf, a0  <~~ Byte[0x800030be]
       0     3569        M                                           #; (lsu) a0  <-- 102
       0     3570        M 0x80000eac addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3571        M 0x80000eb0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000ee8
       0     3594        M 0x80000ee8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3595        M 0x80000eec andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3606        M 0x80000ef0 addi    a1, s10, -1            #; s10 = 0x800030bf, (wrb) a1  <-- 0x800030be
       0     3607        M 0x80000ef4 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3608        M 0x80000ef8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000f74
       0     3629        M 0x80000f74 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3630        M 0x80000f78 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000fc8
       0     3652        M 0x80000fc8 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3653        M 0x80000fcc mv      s10, a1                #; a1  = 0x800030be, (wrb) s10 <-- 0x800030be
       0     3664        M 0x80000fd0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3665        M 0x80000fd4 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3666        M 0x80000fd8 j       pc + 0xc               #; goto 0x80000fe4
       0     3687        M 0x80000fe4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3688        M 0x80000fe8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3689        M 0x80000fec slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3699        M 0x80000ff0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3700        M 0x80000ff4 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3701        M 0x80000ff8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x8000105c
       0     3722        M 0x8000105c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3734        M 0x80001060 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3735        M 0x80001064 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3736        M 0x80001068 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3737        M 0x8000106c auipc   a2, 0x2                #; (wrb) a2  <-- 0x8000306c
       0     3746        M 0x80001070 addi    a2, a2, 200            #; a2  = 0x8000306c, (wrb) a2  <-- 0x80003134
       0     3747        M 0x80001074 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003134, (wrb) a1  <-- 0x80003238
       0     3748        M 0x80001078 lw      a2, 0(a1)              #; a1  = 0x80003238, a2  <~~ Word[0x80003238]
       0     3749        M 0x8000107c li      a1, 8                  #; (wrb) a1  <-- 8
       0     3758        M 0x80001080 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3759        M                                           #; (lsu) a2  <-- 0x800010b4
       0     3760        M 0x80001084 jr      a2                     #; a2  = 0x800010b4, goto 0x800010b4
       0     3781        M 0x800010b4 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3782        M 0x800010b8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800010c0
       0     3793        M 0x800010c0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3794        M 0x800010c4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3796        M 0x800010cc addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3797        M 0x800010c8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3798        M                                           #; (f:lsu) fa0  <-- 169.7040000
       0     3805        M 0x800010d0 mv      a0, s2                 #; s2  = 0x800019c4, (wrb) a0  <-- 0x800019c4
       0     3806        M 0x800010d4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3807        M 0x800010d8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3808        M 0x800010dc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3817        M 0x800010e0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3818        M 0x800010e4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3819        M 0x800010e8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3820        M 0x800010ec auipc   ra, 0x1                #; (wrb) ra  <-- 0x800020ec
       0     3829        M 0x800010f0 jalr    ra, ra, -1656          #; ra  = 0x800020ec, (wrb) ra  <-- 0x800010f4, goto 0x80001a74
       0     3843        M 0x80001a74 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3844        M 0x80001a78 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x800010f4 ~~> Word[0x0011fe9c]
       0     3845        M 0x80001a7c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3855        M 0x80001a80 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3856        M 0x80001a84 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800019c4 ~~> Word[0x0011fe90]
       0     3857        M 0x80001a88 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3858        M 0x80001a8c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3867        M 0x80001a90 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3868        M 0x80001a94 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3869        M 0x80001a98 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3870        M 0x80001a9c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3879        M 0x80001aa0 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3880        M 0x80001aa4 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x800030be ~~> Word[0x0011fe70]
       0     3883        M 0x80001aa8 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     3884        M 0x80001aac fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3892        M 0x80001ab4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003ab4
       0     3893        M 0x80001ab8 addi    s1, s1, -1772          #; s1  = 0x80003ab4, (wrb) s1  <-- 0x800033c8
                         M 0x80001ab0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3896        M 0x80001abc fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800033c8]
       0     3904        M 0x80001ac4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3905        M 0x80001ac8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3906        M 0x80001acc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001ac0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 169.7040000
       0     3915        M 0x80001ad0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3916        M 0x80001ad4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3917        M 0x80001ad8 mv      s7, a0                 #; a0  = 0x800019c4, (wrb) s7  <-- 0x800019c4
       0     3918        M 0x80001adc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001bcc
       0     3940        M 0x80001bcc fsgnj.d fs0, fa0, fa0          #; fa0  = 169.7040000, fa0  = 169.7040000
       0     3941        M                                           #; (f:fpu) fs0  <-- 169.7040000
       0     3950        M 0x80001bd0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003bd0
       0     3951        M 0x80001bd4 addi    a0, a0, -2048          #; a0  = 0x80003bd0, (wrb) a0  <-- 0x800033d0
       0     3954        M 0x80001bd8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800033d0]
       0     3963        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3964        M 0x80001bdc fle.d   a0, fa0, ft0           #; fa0  = 169.7040000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3966        M                                           #; (acc) t3  <-- 0x00051e63
       0     3967        M 0x80001be0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001bfc
       0     3974        M 0x80001bfc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bfc
       0     3986        M 0x80001c00 addi    a0, a0, 2012           #; a0  = 0x80002bfc, (wrb) a0  <-- 0x800033d8
       0     3988        M 0x80001c08 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002c08
       0     3989        M 0x80001c0c addi    a0, a0, 2008           #; a0  = 0x80002c08, (wrb) a0  <-- 0x800033e0
                         M 0x80001c04 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800033d8]
       0     3998        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     4000        M 0x80001c10 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800033e0]
       0     4001        M 0x80001c14 fle.d   a0, fs0, ft0           #; fs0  = 169.7040000, ft0  = 1000000000.0000000
       0     4003        M                                           #; (acc) a0  <-- 0x00b57533
       0     4009        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     4010        M 0x80001c18 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 169.7040000
       0     4012        M                                           #; (acc) a0  <-- 0x00b57533
       0     4013        M 0x80001c1c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4014        M 0x80001c20 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001d1c
       0     4037        M 0x80001d1c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     4049        M 0x80001d20 li      s8, 6                  #; (wrb) s8  <-- 6
       0     4050        M 0x80001d24 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001d2c
       0     4051        M 0x80001d2c li      a0, 10                 #; (wrb) a0  <-- 10
       0     4062        M 0x80001d34 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001d6c
       0     4063        M 0x80001d30 fsgnjx.d fs2, fs0, fs0         #; fs0  = 169.7040000, fs0  = 169.7040000
       0     4064        M                                           #; (f:fpu) fs2  <-- 169.7040000
       0     4084        M 0x80001d6c li      s0, 0                  #; (wrb) s0  <-- 0
       0     4096        M 0x80001d70 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     4097        M 0x80001d74 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002d74
       0     4098        M 0x80001d78 addi    a1, a1, 1300           #; a1  = 0x80002d74, (wrb) a1  <-- 0x80003288
       0     4099        M 0x80001d7c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003288, (wrb) a0  <-- 0x800032b8
       0     4110        M 0x80001d80 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800032b8]
       0     4111        M 0x80001d84 fcvt.w.d s1, fs2               #; fs2  = 169.7040000
       0     4115        M 0x80001d88 fcvt.d.w ft0, s1               #; ac1  = 169
       0     4116        M                                           #; (f:fpu) ft0  <-- 169.0
       0     4117        M 0x80001d8c fsub.d  ft0, fs2, ft0          #; fs2  = 169.7040000, ft0  = 169.0
       0     4119        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     4120        M                                           #; (f:fpu) ft0  <-- 0.7040000
       0     4121        M 0x80001d94 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002d94
       0     4122        M 0x80001d98 addi    a0, a0, 1620           #; a0  = 0x80002d94, (wrb) a0  <-- 0x800033e8
                         M 0x80001d90 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.7040000
       0     4125        M 0x80001d9c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800033e8], (f:fpu) ft2  <-- 704000.0000000
       0     4133        M 0x80001da0 fcvt.wu.d a0, ft2              #; ft2  = 704000.0000000
       0     4134        M                                           #; (f:lsu) ft0  <-- 0.5
       0     4135        M                                           #; (acc) gp  <-- 0xd21501d3
       0     4137        M 0x80001da4 fcvt.d.wu ft3, a0              #; ac1  = 0x000abdff
       0     4138        M                                           #; (f:fpu) ft3  <-- 703999.0
       0     4139        M 0x80001da8 fsub.d  ft2, ft2, ft3          #; ft2  = 704000.0000000, ft3  = 703999.0
       0     4142        M                                           #; (f:fpu) ft2  <-- 1.0000000
       0     4143        M 0x80001dac fle.d   a1, ft2, ft0           #; ft2  = 1.0000000, ft0  = 0.5
       0     4146        M 0x80001db0 bnez    a1, pc + 32            #; a1  = 0, not taken
       0     4147        M 0x80001db4 addi    a0, a0, 1              #; a0  = 0x000abdff, (wrb) a0  <-- 0x000abe00
       0     4149        M 0x80001db8 fcvt.d.wu ft2, a0              #; ac1  = 0x000abe00
       0     4150        M                                           #; (f:fpu) ft2  <-- 704000.0
       0     4151        M 0x80001dbc flt.d   a1, ft2, ft1           #; ft2  = 704000.0, ft1  = 1000000.0000000
       0     4156        M 0x80001dc0 bnez    a1, pc + 40            #; a1  = 1, taken, goto 0x80001de8
       0     4169        M 0x80001dec beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001de8 fcvt.d.w fs1, zero             #; ac1  = 0
       0     4170        M                                           #; (f:fpu) fs1  <-- 0.0
       0     4180        M 0x80001df0 li      a2, 0                  #; (wrb) a2  <-- 0
       0     4181        M 0x80001df4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4182        M 0x80001df8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     4183        M 0x80001dfc li      t0, 32                 #; (wrb) t0  <-- 32
       0     4192        M 0x80001e00 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4193        M 0x80001e04 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4194        M 0x80001e08 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4195        M 0x80001e0c li      a6, 10                 #; (wrb) a6  <-- 10
       0     4204        M 0x80001e10 li      a7, 9                  #; (wrb) a7  <-- 9
       0     4205        M 0x80001e14 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4206        M 0x80001e18 mv      a1, a0                 #; a0  = 0x000abe00, (wrb) a1  <-- 0x000abe00
       0     4207        M 0x80001e1c mulhu   a0, a0, t2             #; a0  = 0x000abe00, t2  = 0xcccccccd
       0     4216        M 0x80001e20 srli    a0, a0, 3              #; a0  = 0x00089800, (wrb) a0  <-- 0x00011300
       0     4217        M 0x80001e24 mul     a3, a0, a6             #; a0  = 0x00011300, a6  = 10
       0     4220        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4221        M 0x80001e28 sub     a3, a1, a3             #; a1  = 0x000abe00, a3  = 0x000abe00, (wrb) a3  <-- 0
       0     4222        M 0x80001e2c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4228        M 0x80001e30 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     4229        M 0x80001e34 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     4230        M 0x80001e38 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4231        M 0x80001e3c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000abe00, taken, goto 0x80001e14
       0     4232        M 0x80001e14 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 1, not taken
       0     4233        M 0x80001e18 mv      a1, a0                 #; a0  = 0x00011300, (wrb) a1  <-- 0x00011300
       0     4234        M 0x80001e1c mulhu   a0, a0, t2             #; a0  = 0x00011300, t2  = 0xcccccccd
       0     4237        M                                           #; (acc) a0  <-- 0x00355513
       0     4238        M 0x80001e20 srli    a0, a0, 3              #; a0  = 56320, (wrb) a0  <-- 7040
       0     4239        M 0x80001e24 mul     a3, a0, a6             #; a0  = 7040, a6  = 10
       0     4242        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4243        M 0x80001e28 sub     a3, a1, a3             #; a1  = 0x00011300, a3  = 0x00011300, (wrb) a3  <-- 0
       0     4244        M 0x80001e2c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4245        M 0x80001e30 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 1, (wrb) a5  <-- 0x0011fe39
       0     4246        M 0x80001e34 sb      a3, 0(a5)              #; a5  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4247        M 0x80001e38 addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
       0     4248        M 0x80001e3c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x00011300, taken, goto 0x80001e14
       0     4249        M 0x80001e14 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 2, not taken
       0     4250        M 0x80001e18 mv      a1, a0                 #; a0  = 7040, (wrb) a1  <-- 7040
       0     4251        M 0x80001e1c mulhu   a0, a0, t2             #; a0  = 7040, t2  = 0xcccccccd
       0     4254        M                                           #; (acc) a0  <-- 0x00355513
       0     4255        M 0x80001e20 srli    a0, a0, 3              #; a0  = 5632, (wrb) a0  <-- 704
       0     4256        M 0x80001e24 mul     a3, a0, a6             #; a0  = 704, a6  = 10
       0     4259        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4260        M 0x80001e28 sub     a3, a1, a3             #; a1  = 7040, a3  = 7040, (wrb) a3  <-- 0
       0     4261        M 0x80001e2c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4262        M 0x80001e30 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 2, (wrb) a5  <-- 0x0011fe3a
       0     4263        M 0x80001e34 sb      a3, 0(a5)              #; a5  = 0x0011fe3a, 48 ~~> Byte[0x0011fe3a]
       0     4264        M 0x80001e38 addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
       0     4265        M 0x80001e3c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7040, taken, goto 0x80001e14
       0     4266        M 0x80001e14 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 3, not taken
       0     4267        M 0x80001e18 mv      a1, a0                 #; a0  = 704, (wrb) a1  <-- 704
       0     4268        M 0x80001e1c mulhu   a0, a0, t2             #; a0  = 704, t2  = 0xcccccccd
       0     4271        M                                           #; (acc) a0  <-- 0x00355513
       0     4272        M 0x80001e20 srli    a0, a0, 3              #; a0  = 563, (wrb) a0  <-- 70
       0     4273        M 0x80001e24 mul     a3, a0, a6             #; a0  = 70, a6  = 10
       0     4276        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4277        M 0x80001e28 sub     a3, a1, a3             #; a1  = 704, a3  = 700, (wrb) a3  <-- 4
       0     4278        M 0x80001e2c ori     a3, a3, 48             #; a3  = 4, (wrb) a3  <-- 52
       0     4279        M 0x80001e30 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 3, (wrb) a5  <-- 0x0011fe3b
       0     4280        M 0x80001e34 sb      a3, 0(a5)              #; a5  = 0x0011fe3b, 52 ~~> Byte[0x0011fe3b]
       0     4281        M 0x80001e38 addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
       0     4282        M 0x80001e3c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 704, taken, goto 0x80001e14
       0     4283        M 0x80001e14 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 4, not taken
       0     4284        M 0x80001e18 mv      a1, a0                 #; a0  = 70, (wrb) a1  <-- 70
       0     4285        M 0x80001e1c mulhu   a0, a0, t2             #; a0  = 70, t2  = 0xcccccccd
       0     4288        M                                           #; (acc) a0  <-- 0x00355513
       0     4289        M 0x80001e20 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     4290        M 0x80001e24 mul     a3, a0, a6             #; a0  = 7, a6  = 10
       0     4293        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4294        M 0x80001e28 sub     a3, a1, a3             #; a1  = 70, a3  = 70, (wrb) a3  <-- 0
       0     4295        M 0x80001e2c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4296        M 0x80001e30 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 4, (wrb) a5  <-- 0x0011fe3c
       0     4297        M 0x80001e34 sb      a3, 0(a5)              #; a5  = 0x0011fe3c, 48 ~~> Byte[0x0011fe3c]
       0     4298        M 0x80001e38 addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
       0     4299        M 0x80001e3c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 70, taken, goto 0x80001e14
       0     4300        M 0x80001e14 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 5, not taken
       0     4301        M 0x80001e18 mv      a1, a0                 #; a0  = 7, (wrb) a1  <-- 7
       0     4302        M 0x80001e1c mulhu   a0, a0, t2             #; a0  = 7, t2  = 0xcccccccd
       0     4305        M                                           #; (acc) a0  <-- 0x00355513
       0     4306        M 0x80001e20 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
       0     4307        M 0x80001e24 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4310        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4311        M 0x80001e28 sub     a3, a1, a3             #; a1  = 7, a3  = 0, (wrb) a3  <-- 7
       0     4312        M 0x80001e2c ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
       0     4313        M 0x80001e30 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 5, (wrb) a5  <-- 0x0011fe3d
       0     4314        M 0x80001e34 sb      a3, 0(a5)              #; a5  = 0x0011fe3d, 55 ~~> Byte[0x0011fe3d]
       0     4315        M 0x80001e38 addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
       0     4316        M 0x80001e3c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7, not taken
       0     4328        M 0x80001e40 add     a0, s0, a2             #; s0  = 0, a2  = 6, (wrb) a0  <-- 6
       0     4329        M 0x80001e44 addi    a1, a0, -1             #; a0  = 6, (wrb) a1  <-- 5
       0     4330        M 0x80001e48 li      a3, 30                 #; (wrb) a3  <-- 30
       0     4331        M 0x80001e4c sltu    a3, a3, a1             #; a3  = 30, a1  = 5, (wrb) a3  <-- 0
       0     4340        M 0x80001e50 xor     a4, s8, a2             #; s8  = 6, a2  = 6, (wrb) a4  <-- 0
       0     4341        M 0x80001e54 seqz    a4, a4                 #; a4  = 0, (wrb) a4  <-- 1
       0     4342        M 0x80001e58 or      a3, a3, a4             #; a3  = 0, a4  = 1, (wrb) a3  <-- 1
       0     4343        M 0x80001e5c bnez    a3, pc + 136           #; a3  = 1, taken, goto 0x80001ee4
       0     4363        M 0x80001ee4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4364        M 0x80001ee8 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4365        M 0x80001eec addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4375        M 0x80001ef0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4376        M 0x80001ef4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4377        M 0x80001ef8 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4378        M 0x80001efc sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4387        M 0x80001f00 j       pc + 0x8               #; goto 0x80001f08
       0     4388        M 0x80001f08 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4389        M 0x80001f0c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4400        M 0x80001f10 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4401        M 0x80001f14 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4403        M 0x80001f1c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001f18 flt.d   s9, fs0, fs1           #; fs0  = 169.7040000, fs1  = 0.0
       0     4412        M 0x80001f20 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4413        M 0x80001f24 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4414        M 0x80001f28 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4415        M 0x80001f2c li      a4, 18                 #; (wrb) a4  <-- 18
       0     4424        M 0x80001f30 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4425        M 0x80001f34 mulh    a0, s1, a1             #; s1  = 169, a1  = 0x66666667
       0     4428        M                                           #; (acc) a5  <-- 0x01f55793
       0     4429        M 0x80001f38 srli    a5, a0, 31             #; a0  = 67, (wrb) a5  <-- 0
       0     4430        M 0x80001f3c srai    a0, a0, 2              #; a0  = 67, (wrb) a0  <-- 16
       0     4436        M 0x80001f40 add     a0, a0, a5             #; a0  = 16, a5  = 0, (wrb) a0  <-- 16
       0     4437        M 0x80001f44 mul     a5, a0, a6             #; a0  = 16, a6  = 10
       0     4440        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4441        M 0x80001f48 sub     a5, s1, a5             #; s1  = 169, a5  = 160, (wrb) a5  <-- 9
       0     4442        M 0x80001f4c addi    a5, a5, 48             #; a5  = 9, (wrb) a5  <-- 57
       0     4448        M 0x80001f50 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4449        M 0x80001f54 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4450        M 0x80001f58 addi    a2, s1, 9              #; s1  = 169, (wrb) a2  <-- 178
       0     4451        M 0x80001f5c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 57 ~~> Byte[0x0011fe3f]
       0     4460        M 0x80001f60 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4461        M 0x80001f64 mv      s1, a0                 #; a0  = 16, (wrb) s1  <-- 16
       0     4462        M 0x80001f68 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 178, taken, goto 0x80001f30
       0     4463        M 0x80001f30 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 8, not taken
       0     4464        M 0x80001f34 mulh    a0, s1, a1             #; s1  = 16, a1  = 0x66666667
       0     4467        M                                           #; (acc) a5  <-- 0x01f55793
       0     4468        M 0x80001f38 srli    a5, a0, 31             #; a0  = 6, (wrb) a5  <-- 0
       0     4469        M 0x80001f3c srai    a0, a0, 2              #; a0  = 6, (wrb) a0  <-- 1
       0     4470        M 0x80001f40 add     a0, a0, a5             #; a0  = 1, a5  = 0, (wrb) a0  <-- 1
       0     4471        M 0x80001f44 mul     a5, a0, a6             #; a0  = 1, a6  = 10
       0     4474        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4475        M 0x80001f48 sub     a5, s1, a5             #; s1  = 16, a5  = 10, (wrb) a5  <-- 6
       0     4476        M 0x80001f4c addi    a5, a5, 48             #; a5  = 6, (wrb) a5  <-- 54
       0     4477        M 0x80001f50 addi    s8, s0, 1              #; s0  = 8, (wrb) s8  <-- 9
       0     4478        M 0x80001f54 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 8, (wrb) s0  <-- 0x0011fe40
       0     4479        M 0x80001f58 addi    a2, s1, 9              #; s1  = 16, (wrb) a2  <-- 25
       0     4480        M 0x80001f5c sb      a5, 0(s0)              #; s0  = 0x0011fe40, 54 ~~> Byte[0x0011fe40]
       0     4481        M 0x80001f60 mv      s0, s8                 #; s8  = 9, (wrb) s0  <-- 9
       0     4482        M 0x80001f64 mv      s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
       0     4483        M 0x80001f68 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 25, taken, goto 0x80001f30
       0     4484        M 0x80001f30 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 9, not taken
       0     4485        M 0x80001f34 mulh    a0, s1, a1             #; s1  = 1, a1  = 0x66666667
       0     4488        M                                           #; (acc) a5  <-- 0x01f55793
       0     4489        M 0x80001f38 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4490        M 0x80001f3c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4491        M 0x80001f40 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4492        M 0x80001f44 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4495        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4496        M 0x80001f48 sub     a5, s1, a5             #; s1  = 1, a5  = 0, (wrb) a5  <-- 1
       0     4497        M 0x80001f4c addi    a5, a5, 48             #; a5  = 1, (wrb) a5  <-- 49
       0     4498        M 0x80001f50 addi    s8, s0, 1              #; s0  = 9, (wrb) s8  <-- 10
       0     4499        M 0x80001f54 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 9, (wrb) s0  <-- 0x0011fe41
       0     4500        M 0x80001f58 addi    a2, s1, 9              #; s1  = 1, (wrb) a2  <-- 10
       0     4501        M 0x80001f5c sb      a5, 0(s0)              #; s0  = 0x0011fe41, 49 ~~> Byte[0x0011fe41]
       0     4502        M 0x80001f60 mv      s0, s8                 #; s8  = 10, (wrb) s0  <-- 10
       0     4503        M 0x80001f64 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4504        M 0x80001f68 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 10, not taken
       0     4505        M 0x80001f6c j       pc + 0x8               #; goto 0x80001f74
       0     4517        M 0x80001f74 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4518        M 0x80001f78 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4519        M 0x80001f7c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001fe8
       0     4540        M 0x80001fe8 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4541        M 0x80001fec bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 10, not taken
       0     4552        M 0x80001ff0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002008
       0     4564        M 0x80002008 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4565        M 0x8000200c bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4576        M 0x80002010 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4577        M 0x80002014 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002040
       0     4599        M 0x80002040 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4600        M 0x80002044 sltu    a1, s8, s2             #; s8  = 10, s2  = 0, (wrb) a1  <-- 0
       0     4601        M 0x80002048 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4602        M 0x8000204c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4611        M 0x80002050 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4612        M 0x80002054 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4613        M 0x80002058 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002084
       0     4634        M 0x80002084 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4635        M 0x80002088 beqz    s8, pc + 56            #; s8  = 10, not taken
       0     4636        M 0x8000208c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4646        M 0x80002090 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 10, (wrb) a0  <-- 0x0011fe41
       0     4647        M 0x80002094 lbu     a0, 0(a0)              #; a0  = 0x0011fe41, a0  <~~ Byte[0x0011fe41]
       0     4648        M 0x80002098 addi    s10, s8, -1            #; s8  = 10, (wrb) s10 <-- 9
       0     4649        M 0x8000209c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4650        M                                           #; (lsu) a0  <-- 49
       0     4658        M 0x800020a0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4659        M 0x800020a4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4660        M 0x800020a8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4661        M 0x800020ac jalr    s7                     #; s7  = 0x800019c4, (wrb) ra  <-- 0x800020b0, goto 0x800019c4
       0     4672        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 49, not taken
       0     4673        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4674        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4675        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4676        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     4677        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     4678        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4679        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     4680        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4691        M                                           #; (lsu) a4  <-- 8
       0     4692        M 0x800019e4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4693        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 9 ~~> Word[0x80003474]
       0     4694        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 8, (wrb) a4  <-- 0x8000347c
       0     4695        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x8000347c, 49 ~~> Byte[0x800034c4]
       0     4696        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4717        M                                           #; (lsu) a4  <-- 9
       0     4718        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4719        M 0x800019fc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4720        M 0x80001a00 addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
       0     4721        M 0x80001a04 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
       0     4722        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4723        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     4726        M 0x80001a6c ret                            #; ra  = 0x800020b0, goto 0x800020b0
       0     4731        M 0x800020b0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4732        M 0x800020b4 mv      s8, s10                #; s10 = 9, (wrb) s8  <-- 9
       0     4733        M 0x800020b8 bnez    s10, pc - 40           #; s10 = 9, taken, goto 0x80002090
       0     4734        M 0x80002090 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 9, (wrb) a0  <-- 0x0011fe40
       0     4735        M 0x80002094 lbu     a0, 0(a0)              #; a0  = 0x0011fe40, a0  <~~ Byte[0x0011fe40]
       0     4736        M 0x80002098 addi    s10, s8, -1            #; s8  = 9, (wrb) s10 <-- 8
       0     4737        M 0x8000209c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4738        M 0x800020a0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4739        M 0x800020a4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4740        M 0x800020a8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4741        M 0x800020ac jalr    s7                     #; s7  = 0x800019c4, (wrb) ra  <-- 0x800020b0, goto 0x800019c4
       0     4742        M                                           #; (lsu) a0  <-- 54
       0     4744        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 54, not taken
       0     4745        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4746        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4747        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4748        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     4749        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     4750        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4751        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     4752        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4763        M                                           #; (lsu) a4  <-- 9
       0     4764        M 0x800019e4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4765        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 10 ~~> Word[0x80003474]
       0     4766        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 9, (wrb) a4  <-- 0x8000347d
       0     4767        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x8000347d, 54 ~~> Byte[0x800034c5]
       0     4768        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4789        M                                           #; (lsu) a4  <-- 10
       0     4790        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4791        M 0x800019fc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4792        M 0x80001a00 addi    a0, a0, -10            #; a0  = 54, (wrb) a0  <-- 44
       0     4793        M 0x80001a04 snez    a0, a0                 #; a0  = 44, (wrb) a0  <-- 1
       0     4794        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4795        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     4798        M 0x80001a6c ret                            #; ra  = 0x800020b0, goto 0x800020b0
       0     4803        M 0x800020b0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4804        M 0x800020b4 mv      s8, s10                #; s10 = 8, (wrb) s8  <-- 8
       0     4805        M 0x800020b8 bnez    s10, pc - 40           #; s10 = 8, taken, goto 0x80002090
       0     4806        M 0x80002090 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4807        M 0x80002094 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4808        M 0x80002098 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4809        M 0x8000209c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4810        M 0x800020a0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4811        M 0x800020a4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4812        M 0x800020a8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4813        M 0x800020ac jalr    s7                     #; s7  = 0x800019c4, (wrb) ra  <-- 0x800020b0, goto 0x800019c4
       0     4814        M                                           #; (lsu) a0  <-- 57
       0     4816        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 57, not taken
       0     4817        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4818        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4819        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4820        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     4821        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     4822        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4823        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     4824        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4835        M                                           #; (lsu) a4  <-- 10
       0     4836        M 0x800019e4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4837        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 11 ~~> Word[0x80003474]
       0     4838        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 10, (wrb) a4  <-- 0x8000347e
       0     4839        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x8000347e, 57 ~~> Byte[0x800034c6]
       0     4840        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4861        M                                           #; (lsu) a4  <-- 11
       0     4862        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4863        M 0x800019fc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4864        M 0x80001a00 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
       0     4865        M 0x80001a04 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
       0     4866        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4867        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     4870        M 0x80001a6c ret                            #; ra  = 0x800020b0, goto 0x800020b0
       0     4875        M 0x800020b0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4876        M 0x800020b4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4877        M 0x800020b8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80002090
       0     4878        M 0x80002090 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4879        M 0x80002094 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4880        M 0x80002098 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4881        M 0x8000209c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4882        M 0x800020a0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4883        M 0x800020a4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4884        M 0x800020a8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4885        M 0x800020ac jalr    s7                     #; s7  = 0x800019c4, (wrb) ra  <-- 0x800020b0, goto 0x800019c4
       0     4886        M                                           #; (lsu) a0  <-- 46
       0     4888        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4889        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4890        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4891        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4892        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     4893        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     4894        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4895        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     4896        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4907        M                                           #; (lsu) a4  <-- 11
       0     4908        M 0x800019e4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4909        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 12 ~~> Word[0x80003474]
       0     4910        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 11, (wrb) a4  <-- 0x8000347f
       0     4911        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x8000347f, 46 ~~> Byte[0x800034c7]
       0     4912        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4933        M                                           #; (lsu) a4  <-- 12
       0     4934        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4935        M 0x800019fc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4936        M 0x80001a00 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4937        M 0x80001a04 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4938        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4939        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     4942        M 0x80001a6c ret                            #; ra  = 0x800020b0, goto 0x800020b0
       0     4947        M 0x800020b0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4948        M 0x800020b4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4949        M 0x800020b8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80002090
       0     4950        M 0x80002090 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4951        M 0x80002094 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4952        M 0x80002098 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4953        M 0x8000209c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4954        M 0x800020a0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4955        M 0x800020a4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4956        M 0x800020a8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4957        M 0x800020ac jalr    s7                     #; s7  = 0x800019c4, (wrb) ra  <-- 0x800020b0, goto 0x800019c4
       0     4958        M                                           #; (lsu) a0  <-- 55
       0     4960        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 55, not taken
       0     4961        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4962        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4963        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4964        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     4965        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     4966        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4967        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     4968        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     4979        M                                           #; (lsu) a4  <-- 12
       0     4980        M 0x800019e4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4981        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 13 ~~> Word[0x80003474]
       0     4982        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 12, (wrb) a4  <-- 0x80003480
       0     4983        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003480, 55 ~~> Byte[0x800034c8]
       0     4984        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5005        M                                           #; (lsu) a4  <-- 13
       0     5006        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     5007        M 0x800019fc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     5008        M 0x80001a00 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
       0     5009        M 0x80001a04 snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
       0     5010        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5011        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     5014        M 0x80001a6c ret                            #; ra  = 0x800020b0, goto 0x800020b0
       0     5019        M 0x800020b0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     5020        M 0x800020b4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     5021        M 0x800020b8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80002090
       0     5022        M 0x80002090 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     5023        M 0x80002094 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     5024        M 0x80002098 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     5025        M 0x8000209c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     5026        M 0x800020a0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5027        M 0x800020a4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5028        M 0x800020a8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5029        M 0x800020ac jalr    s7                     #; s7  = 0x800019c4, (wrb) ra  <-- 0x800020b0, goto 0x800019c4
       0     5030        M                                           #; (lsu) a0  <-- 48
       0     5032        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5033        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5034        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5035        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5036        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     5037        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     5038        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5039        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5040        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5051        M                                           #; (lsu) a4  <-- 13
       0     5052        M 0x800019e4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5053        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 14 ~~> Word[0x80003474]
       0     5054        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 13, (wrb) a4  <-- 0x80003481
       0     5055        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003481, 48 ~~> Byte[0x800034c9]
       0     5056        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5077        M                                           #; (lsu) a4  <-- 14
       0     5078        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5079        M 0x800019fc snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5080        M 0x80001a00 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5081        M 0x80001a04 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5082        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5083        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     5086        M 0x80001a6c ret                            #; ra  = 0x800020b0, goto 0x800020b0
       0     5091        M 0x800020b0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5092        M 0x800020b4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     5093        M 0x800020b8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80002090
       0     5094        M 0x80002090 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     5095        M 0x80002094 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     5096        M 0x80002098 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     5097        M 0x8000209c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5098        M 0x800020a0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5099        M 0x800020a4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5100        M 0x800020a8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5101        M 0x800020ac jalr    s7                     #; s7  = 0x800019c4, (wrb) ra  <-- 0x800020b0, goto 0x800019c4
       0     5102        M                                           #; (lsu) a0  <-- 52
       0     5104        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 52, not taken
       0     5105        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5106        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5107        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5108        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     5109        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     5110        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5111        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5112        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5123        M                                           #; (lsu) a4  <-- 14
       0     5124        M 0x800019e4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5125        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 15 ~~> Word[0x80003474]
       0     5126        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 14, (wrb) a4  <-- 0x80003482
       0     5127        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003482, 52 ~~> Byte[0x800034ca]
       0     5128        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5149        M                                           #; (lsu) a4  <-- 15
       0     5150        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5151        M 0x800019fc snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5152        M 0x80001a00 addi    a0, a0, -10            #; a0  = 52, (wrb) a0  <-- 42
       0     5153        M 0x80001a04 snez    a0, a0                 #; a0  = 42, (wrb) a0  <-- 1
       0     5154        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5155        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     5158        M 0x80001a6c ret                            #; ra  = 0x800020b0, goto 0x800020b0
       0     5163        M 0x800020b0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5164        M 0x800020b4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5165        M 0x800020b8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80002090
       0     5166        M 0x80002090 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     5167        M 0x80002094 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     5168        M 0x80002098 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5169        M 0x8000209c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5170        M 0x800020a0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5171        M 0x800020a4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5172        M 0x800020a8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5173        M 0x800020ac jalr    s7                     #; s7  = 0x800019c4, (wrb) ra  <-- 0x800020b0, goto 0x800019c4
       0     5174        M                                           #; (lsu) a0  <-- 48
       0     5176        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5177        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5178        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5179        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5180        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     5181        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     5182        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5183        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5184        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5195        M                                           #; (lsu) a4  <-- 15
       0     5196        M 0x800019e4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5197        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 16 ~~> Word[0x80003474]
       0     5198        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 15, (wrb) a4  <-- 0x80003483
       0     5199        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003483, 48 ~~> Byte[0x800034cb]
       0     5200        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5221        M                                           #; (lsu) a4  <-- 16
       0     5222        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5223        M 0x800019fc snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5224        M 0x80001a00 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5225        M 0x80001a04 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5226        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5227        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     5230        M 0x80001a6c ret                            #; ra  = 0x800020b0, goto 0x800020b0
       0     5235        M 0x800020b0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5236        M 0x800020b4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5237        M 0x800020b8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80002090
       0     5238        M 0x80002090 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     5239        M 0x80002094 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     5240        M 0x80002098 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5241        M 0x8000209c addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
       0     5242        M 0x800020a0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5243        M 0x800020a4 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
       0     5244        M 0x800020a8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5245        M 0x800020ac jalr    s7                     #; s7  = 0x800019c4, (wrb) ra  <-- 0x800020b0, goto 0x800019c4
       0     5246        M                                           #; (lsu) a0  <-- 48
       0     5248        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5249        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5250        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5251        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5252        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     5253        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     5254        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5255        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5256        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5267        M                                           #; (lsu) a4  <-- 16
       0     5268        M 0x800019e4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5269        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 17 ~~> Word[0x80003474]
       0     5270        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 16, (wrb) a4  <-- 0x80003484
       0     5271        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003484, 48 ~~> Byte[0x800034cc]
       0     5272        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5293        M                                           #; (lsu) a4  <-- 17
       0     5294        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5295        M 0x800019fc snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5296        M 0x80001a00 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5297        M 0x80001a04 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5298        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5299        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     5302        M 0x80001a6c ret                            #; ra  = 0x800020b0, goto 0x800020b0
       0     5307        M 0x800020b0 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     5308        M 0x800020b4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5309        M 0x800020b8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80002090
       0     5310        M 0x80002090 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     5311        M 0x80002094 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     5312        M 0x80002098 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5313        M 0x8000209c addi    s1, s0, 1              #; s0  = 17, (wrb) s1  <-- 18
       0     5314        M 0x800020a0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5315        M 0x800020a4 mv      a2, s0                 #; s0  = 17, (wrb) a2  <-- 17
       0     5316        M 0x800020a8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5317        M 0x800020ac jalr    s7                     #; s7  = 0x800019c4, (wrb) ra  <-- 0x800020b0, goto 0x800019c4
       0     5318        M                                           #; (lsu) a0  <-- 48
       0     5320        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5321        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5322        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5323        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5324        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     5325        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     5326        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5327        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5328        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5339        M                                           #; (lsu) a4  <-- 17
       0     5340        M 0x800019e4 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
       0     5341        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 18 ~~> Word[0x80003474]
       0     5342        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 17, (wrb) a4  <-- 0x80003485
       0     5343        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003485, 48 ~~> Byte[0x800034cd]
       0     5344        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5365        M                                           #; (lsu) a4  <-- 18
       0     5366        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
       0     5367        M 0x800019fc snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
       0     5368        M 0x80001a00 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5369        M 0x80001a04 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5370        M 0x80001a08 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5371        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a6c
       0     5374        M 0x80001a6c ret                            #; ra  = 0x800020b0, goto 0x800020b0
       0     5379        M 0x800020b0 mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
       0     5380        M 0x800020b4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5381        M 0x800020b8 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5382        M 0x800020bc j       pc + 0x8               #; goto 0x800020c4
       0     5394        M 0x800020c4 sub     a0, s1, s4             #; s1  = 18, s4  = 8, (wrb) a0  <-- 10
       0     5395        M 0x800020c8 sltu    a0, a0, s2             #; a0  = 10, s2  = 0, (wrb) a0  <-- 0
       0     5396        M 0x800020cc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5406        M 0x800020d0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5407        M 0x800020d4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5408        M 0x800020d8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002108
       0     5429        M 0x80002108 mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
       0     5430        M 0x8000210c mv      a0, s0                 #; s0  = 18, (wrb) a0  <-- 18
       0     5443        M 0x80002110 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5444        M 0x8000211c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80002114 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     5445        M 0x80002118 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5446        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5448        M                                           #; (lsu) s10 <-- 0x800030be
       0     5453        M 0x80002120 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5456        M                                           #; (lsu) s9  <-- 8
       0     5457        M 0x80002124 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5460        M                                           #; (lsu) s8  <-- 16
       0     5461        M 0x80002128 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5464        M                                           #; (lsu) s7  <-- 0
       0     5465        M 0x8000212c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5468        M                                           #; (lsu) s6  <-- 0
       0     5469        M 0x80002130 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5472        M                                           #; (lsu) s5  <-- -1
       0     5473        M 0x80002134 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5476        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5477        M 0x80002138 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5480        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5481        M 0x8000213c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5484        M                                           #; (lsu) s2  <-- 0x800019c4
       0     5485        M 0x80002140 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5488        M                                           #; (lsu) s1  <-- 8
       0     5489        M 0x80002144 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5492        M                                           #; (lsu) s0  <-- 0
       0     5493        M 0x80002148 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5494        M 0x8000214c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5496        M                                           #; (lsu) ra  <-- 0x800010f4
       0     5497        M 0x80002150 ret                            #; ra  = 0x800010f4, goto 0x800010f4
       0     5509        M 0x800010f4 j       pc + 0x7c0             #; goto 0x800018b4
       0     5512        M 0x800018b4 mv      s8, a0                 #; a0  = 18, (wrb) s8  <-- 18
       0     5513        M 0x800018b8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5514        M 0x800018bc li      s7, 46                 #; (wrb) s7  <-- 46
       0     5524        M 0x800018c0 addi    s0, s10, 1             #; s10 = 0x800030be, (wrb) s0  <-- 0x800030bf
       0     5525        M 0x800018c4 j       pc - 0xa74             #; goto 0x80000e50
       0     5527        M 0x80000e50 addi    s10, s0, 2             #; s0  = 0x800030bf, (wrb) s10 <-- 0x800030c1
       0     5528        M 0x80000e54 mv      s9, s8                 #; s8  = 18, (wrb) s9  <-- 18
       0     5529        M 0x80000e58 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5530        M 0x80000e5c lbu     a0, 0(s0)              #; s0  = 0x800030bf, a0  <~~ Byte[0x800030bf]
       0     5541        M                                           #; (lsu) a0  <-- 10
       0     5542        M 0x80000e60 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5543        M 0x80000e64 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5544        M 0x80000e68 addi    s1, s9, 1              #; s9  = 18, (wrb) s1  <-- 19
       0     5545        M 0x80000e6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5546        M 0x80000e70 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
       0     5547        M 0x80000e74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5548        M 0x80000e78 jalr    s2                     #; s2  = 0x800019c4, (wrb) ra  <-- 0x80000e7c, goto 0x800019c4
       0     5551        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5552        M 0x800019c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5553        M 0x800019cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5554        M 0x800019d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5555        M 0x800019d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039d4
       0     5556        M 0x800019d8 addi    a3, a3, -1376          #; a3  = 0x800039d4, (wrb) a3  <-- 0x80003474
       0     5557        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5558        M 0x800019dc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
       0     5559        M 0x800019e0 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5570        M                                           #; (lsu) a4  <-- 18
       0     5571        M 0x800019e4 addi    a5, a4, 1              #; a4  = 18, (wrb) a5  <-- 19
       0     5572        M 0x800019e8 sw      a5, 0(a1)              #; a1  = 0x80003474, 19 ~~> Word[0x80003474]
       0     5573        M 0x800019ec add     a4, a1, a4             #; a1  = 0x80003474, a4  = 18, (wrb) a4  <-- 0x80003486
       0     5574        M 0x800019f0 sb      a0, 72(a4)             #; a4  = 0x80003486, 10 ~~> Byte[0x800034ce]
       0     5575        M 0x800019f4 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
       0     5596        M                                           #; (lsu) a4  <-- 19
       0     5597        M 0x800019f8 addi    a4, a4, -1020          #; a4  = 19, (wrb) a4  <-- -1001
       0     5598        M 0x800019fc snez    a4, a4                 #; a4  = -1001, (wrb) a4  <-- 1
       0     5599        M 0x80001a00 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5600        M 0x80001a04 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5601        M 0x80001a08 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5602        M 0x80001a0c bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5603        M 0x80001a10 add     a0, a3, a2             #; a3  = 0x80003474, a2  = 0, (wrb) a0  <-- 0x80003474
       0     5604        M 0x80001a14 addi    a2, a0, 72             #; a0  = 0x80003474, (wrb) a2  <-- 0x800034bc
       0     5605        M 0x80001a18 sw      zero, 12(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003480]
       0     5606        M 0x80001a1c li      a3, 64                 #; (wrb) a3  <-- 64
       0     5615        M 0x80001a20 sw      a3, 8(a0)              #; a0  = 0x80003474, 64 ~~> Word[0x8000347c]
       0     5616        M 0x80001a24 sw      zero, 20(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003488]
       0     5617        M 0x80001a28 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5618        M 0x80001a2c sw      a3, 16(a0)             #; a0  = 0x80003474, 1 ~~> Word[0x80003484]
       0     5627        M 0x80001a30 sw      zero, 28(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003490]
       0     5628        M 0x80001a34 sw      a2, 24(a0)             #; a0  = 0x80003474, 0x800034bc ~~> Word[0x8000348c]
       0     5630        M 0x80001a38 lw      a2, 0(a1)              #; a1  = 0x80003474, a2  <~~ Word[0x80003474]
       0     5631        M 0x80001a3c addi    a3, a0, 8              #; a0  = 0x80003474, (wrb) a3  <-- 0x8000347c
       0     5640        M 0x80001a40 sw      zero, 36(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003498]
       0     5659        M                                           #; (lsu) a2  <-- 19
       0     5660        M 0x80001a44 sw      a2, 32(a0)             #; a0  = 0x80003474, 19 ~~> Word[0x80003494]
       0     5661        M 0x80001a48 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a48
       0     5662        M 0x80001a4c addi    a0, a0, -1864          #; a0  = 0x80003a48, (wrb) a0  <-- 0x80003300
       0     5663        M 0x80001a50 sw      a3, 0(a0)              #; a0  = 0x80003300, 0x8000347c ~~> Word[0x80003300]
       0     5664        M 0x80001a54 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a54
       0     5665        M 0x80001a58 addi    a0, a0, -1812          #; a0  = 0x80003a54, (wrb) a0  <-- 0x80003340
       0     5666        M 0x80001a5c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
       0     5689        M                                           #; (lsu) a2  <-- 0
       0     5690        M 0x80001a60 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a5c
       0     5691        M 0x80001a5c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
       0     5702        M                                           #; (lsu) a2  <-- 0
       0     5703        M 0x80001a60 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a5c
       0     5704        M 0x80001a5c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
       0     5715        M                                           #; (lsu) a2  <-- 1
       0     5716        M 0x80001a60 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5717        M 0x80001a64 sw      zero, 0(a0)            #; a0  = 0x80003340, 0 ~~> Word[0x80003340]
       0     5718        M 0x80001a68 sw      zero, 0(a1)            #; a1  = 0x80003474, 0 ~~> Word[0x80003474]
       0     5719        M 0x80001a6c ret                            #; ra  = 0x80000e7c, goto 0x80000e7c
       0     5722        M 0x80000e7c addi    s0, s0, 1              #; s0  = 0x800030bf, (wrb) s0  <-- 0x800030c0
       0     5725        M 0x80000e80 addi    s10, s10, 1            #; s10 = 0x800030c1, (wrb) s10 <-- 0x800030c2
       0     5726        M 0x80000e84 mv      s9, s1                 #; s1  = 19, (wrb) s9  <-- 19
       0     5727        M 0x80000e88 lbu     a0, 0(s0)              #; s0  = 0x800030c0, a0  <~~ Byte[0x800030c0]
       0     5740        M                                           #; (lsu) a0  <-- 0
       0     5741        M 0x80000e8c bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5744        M 0x80000e90 j       pc + 0xad8             #; goto 0x80001968
       0     5756        M 0x80001968 mv      a2, s9                 #; s9  = 19, (wrb) a2  <-- 19
       0     5757        M 0x8000196c bltu    s9, s5, pc + 8         #; s9  = 19, s5  = -1, taken, goto 0x80001974
       0     5768        M 0x80001974 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5769        M 0x80001978 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5770        M 0x8000197c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5780        M 0x80001980 jalr    s2                     #; s2  = 0x800019c4, (wrb) ra  <-- 0x80001984, goto 0x800019c4
       0     5794        M 0x800019c4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001a6c
       0     5799        M 0x80001a6c ret                            #; ra  = 0x80001984, goto 0x80001984
       0     5800        M 0x80001984 mv      a0, s9                 #; s9  = 19, (wrb) a0  <-- 19
       0     5801        M 0x80001988 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5804        M                                           #; (lsu) s11 <-- 0
       0     5805        M 0x8000198c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5808        M                                           #; (lsu) s10 <-- 0
       0     5809        M 0x80001990 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5812        M                                           #; (lsu) s9  <-- 0
       0     5813        M 0x80001994 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5816        M                                           #; (lsu) s8  <-- 0
       0     5817        M 0x80001998 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5820        M                                           #; (lsu) s7  <-- 0
       0     5821        M 0x8000199c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5824        M                                           #; (lsu) s6  <-- 0
       0     5825        M 0x800019a0 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5828        M                                           #; (lsu) s5  <-- 0
       0     5829        M 0x800019a4 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5832        M                                           #; (lsu) s4  <-- 0
       0     5833        M 0x800019a8 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5836        M                                           #; (lsu) s3  <-- 0
       0     5837        M 0x800019ac lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5840        M                                           #; (lsu) s2  <-- 0x00100000
       0     5841        M 0x800019b0 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5844        M                                           #; (lsu) s1  <-- 0x00100050
       0     5845        M 0x800019b4 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5848        M                                           #; (lsu) s0  <-- 0x001000a0
       0     5849        M 0x800019b8 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5850        M 0x800019bc addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5852        M                                           #; (lsu) ra  <-- 0x80000dc0
       0     5853        M 0x800019c0 ret                            #; ra  = 0x80000dc0, goto 0x80000dc0
       0     5865        M 0x80000dc0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5866        M 0x80000dc4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5868        M                                           #; (lsu) ra  <-- 0x80000d44
       0     5869        M 0x80000dc8 ret                            #; ra  = 0x80000d44, goto 0x80000d44
       0     5881        M 0x80000d44 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d44
       0     5882        M 0x80000d48 addi    a0, a0, 1660           #; a0  = 0x80002d44, (wrb) a0  <-- 0x800033c0
       0     5885        M 0x80000d4c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800033c0]
       0     5886        M 0x80000d58 lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
       0     5894        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     5895        M 0x80000d50 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
       0     5896        M                                           #; (lsu) s2  <-- 0
       0     5897        M 0x80000d5c lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54], (acc) s1  <-- 0x01412483
                         M 0x80000d54 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
       0     5898        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5900        M                                           #; (lsu) s1  <-- 0
       0     5901        M 0x80000d60 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0     5904        M                                           #; (lsu) s0  <-- 0
       0     5905        M 0x80000d64 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     5906        M 0x80000d68 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     5908        M                                           #; (lsu) ra  <-- 0x80002e30
       0     5909        M 0x80000d6c ret                            #; ra  = 0x80002e30, goto 0x80002e30
       0     5921        M 0x80002e30 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5922        M 0x80002e34 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e34
       0     5923        M 0x80002e38 jalr    ra, ra, 524            #; ra  = 0x80002e34, (wrb) ra  <-- 0x80002e3c, goto 0x80003040
       0     5935        M 0x80003040 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5936        M 0x80003044 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e3c ~~> Word[0x0011ff5c]
       0     5937        M 0x80003048 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003048
       0     5938        M 0x8000304c jalr    ra, ra, -1276          #; ra  = 0x80003048, (wrb) ra  <-- 0x80003050, goto 0x80002b4c
       0     5949        M 0x80002b4c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5952        M 0x80002b50 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5953        M 0x80002b54 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5956        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5957        M 0x80002b58 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5960        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5961        M 0x80002b5c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5962        M 0x80002b60 ret                            #; ra  = 0x80003050, goto 0x80003050
       0     5964        M                                           #; (lsu) a0  <-- 0x00120190
       0     5965        M 0x80003050 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5975        M                                           #; (lsu) a0  <-- 0
       0     5976        M 0x80003054 mv      zero, a0               #; a0  = 0
       0     5977        M 0x80003058 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5978        M 0x8000305c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5980        M                                           #; (lsu) ra  <-- 0x80002e3c
       0     5981        M 0x80003060 ret                            #; ra  = 0x80002e3c, goto 0x80002e3c
       0     5995        M 0x80002e3c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5999        M 0x80002e40 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e40
       0     6000        M 0x80002e44 jalr    ra, ra, 556            #; ra  = 0x80002e40, (wrb) ra  <-- 0x80002e48, goto 0x8000306c
       0     6001        M 0x8000306c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     6002        M 0x80003070 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     6003        M 0x80003074 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002e48 ~~> Word[0x0011ff5c]
       0     6004        M 0x80003078 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003078
       0     6005        M 0x8000307c jalr    ra, ra, -1356          #; ra  = 0x80003078, (wrb) ra  <-- 0x80003080, goto 0x80002b2c
       0     6016        M 0x80002b2c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6020        M 0x80002b30 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6021        M 0x80002b34 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6024        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6025        M 0x80002b38 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6028        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6029        M 0x80002b3c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     6030        M 0x80002b40 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6032        M                                           #; (lsu) a0  <-- 0
       0     6033        M 0x80002b44 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     6034        M 0x80002b48 ret                            #; ra  = 0x80003080, goto 0x80003080
       0     6035        M 0x80003080 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     6038        M                                           #; (lsu) t0  <-- 0
       0     6039        M 0x80003084 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     6040        M 0x80003088 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     6041        M 0x8000308c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     6042        M                                           #; (lsu) ra  <-- 0x80002e48
       0     6046        M 0x80003090 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     6047        M 0x80003094 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     6048        M 0x80003098 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003098
       0     6049        M 0x8000309c addi    t1, t1, 616            #; t1  = 0x80003098, (wrb) t1  <-- 0x80003300
       0     6057        M 0x800030a0 sw      t0, 0(t1)              #; t1  = 0x80003300, 1 ~~> Word[0x80003300]
       0     6058        M 0x800030a4 ret                            #; ra  = 0x80002e48, goto 0x80002e48
       0     6072        M 0x80002e48 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 6072):
snitch_loads                                   147
snitch_stores                                  173
fpss_stores                                      6
fpss_loads                                      73
snitch_avg_load_latency                    11.7891
snitch_occupancy                            0.2429
snitch_fseq_rel_offloads                    0.1180
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.5
fpss_avg_load_latency                       5.1644
fpss_occupancy                              0.0325
fpss_fpu_occupancy                          0.0185
fpss_fpu_rel_occupancy                      0.5685
cycles                                        6061
total_ipc                                   0.2754
