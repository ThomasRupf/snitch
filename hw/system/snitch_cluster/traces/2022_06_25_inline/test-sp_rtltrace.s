       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002a10
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002a10, (wrb) ra  <-- 4120, goto 0x80002a10
       0      269        M 0x80002a10 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003a10
       0      270        M 0x80002a14 addi    gp, gp, -264           #; gp  = 0x80003a10, (wrb) gp  <-- 0x80003908
       0      271        M 0x80002a18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a18
       0      272        M 0x80002a1c jalr    ra, ra, 964            #; ra  = 0x80002a18, (wrb) ra  <-- 0x80002a20, goto 0x80002ddc
       0      292        M 0x80002ddc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002de0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002de4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002de8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002dec lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002df0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002df4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002df8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002dfc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002e00 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002e04 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002e08 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002e0c ret                            #; ra  = 0x80002a20, goto 0x80002a20
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002a20 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002a24 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002a28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a28
       0      508        M 0x80002a2c jalr    ra, ra, 1036           #; ra  = 0x80002a28, (wrb) ra  <-- 0x80002a30, goto 0x80002e34
       0      523        M 0x80002e34 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002e38 ret                            #; ra  = 0x80002a30, goto 0x80002a30
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002a30 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002a34 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002a38 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x80002a3c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002a40 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002a44 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a44
       0      551        M 0x80002a48 addi    t0, t0, 2012           #; t0  = 0x80002a44, (wrb) t0  <-- 0x80003220
       0      552        M 0x80002a4c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a4c
       0      562        M 0x80002a50 addi    t1, t1, 2008           #; t1  = 0x80002a4c, (wrb) t1  <-- 0x80003224
       0      563        M 0x80002a54 bge     t0, t1, pc + 16        #; t0  = 0x80003220, t1  = 0x80003224, not taken
       0      564        M 0x80002a58 sw      zero, 0(t0)            #; t0  = 0x80003220, 0 ~~> Word[0x80003220]
       0      565        M 0x80002a5c addi    t0, t0, 4              #; t0  = 0x80003220, (wrb) t0  <-- 0x80003224
       0      573        M 0x80002a60 blt     t0, t1, pc - 8         #; t0  = 0x80003224, t1  = 0x80003224, not taken
       0      574        M 0x80002a64 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002a68 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x80002a6c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002a70 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002a74 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002a78 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x80002a7c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002a80 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002a84 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002a88 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x80002a8c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002a90 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002a94 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002a98 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002a9c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002aa0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002aa4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002aa8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002aac fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002ab0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002ab4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002ab8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002abc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002ac0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002ac4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002ac8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002acc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002ad0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002ad4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002ad8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002adc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002ae0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002ae4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002ae8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002aec fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002af0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002af4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002af8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002af8
       0      684        M 0x80002afc lw      t0, 900(t0)            #; t0  = 0x80002af8, t0  <~~ Word[0x80002e7c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002b00 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002b04 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002b08 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b08
       0      708        M 0x80002b0c lw      t2, 880(t2)            #; t2  = 0x80002b08, t2  <~~ Word[0x80002e78]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002b10 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002b14 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002b18 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002b1c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002b20 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002b24 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002b28 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002b2c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002b30 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b30
       0      762        M 0x80002b34 addi    t0, t0, 1496           #; t0  = 0x80002b30, (wrb) t0  <-- 0x80003108
       0      763        M 0x80002b38 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b38
       0      764        M 0x80002b3c addi    t1, t1, 1488           #; t1  = 0x80002b38, (wrb) t1  <-- 0x80003108
       0      775        M 0x80002b40 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b40
       0      776        M 0x80002b44 addi    t2, t2, 1480           #; t2  = 0x80002b40, (wrb) t2  <-- 0x80003108
       0      777        M 0x80002b48 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002b48
       0      778        M 0x80002b4c addi    t3, t3, 1488           #; t3  = 0x80002b48, (wrb) t3  <-- 0x80003118
       0      787        M 0x80002b50 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003108, (wrb) sp  <-- 0x80123078
       0      788        M 0x80002b54 sub     sp, sp, t1             #; sp  = 0x80123078, t1  = 0x80003108, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002b58 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003108, (wrb) sp  <-- 0x80123078
       0      790        M 0x80002b5c sub     sp, sp, t3             #; sp  = 0x80123078, t3  = 0x80003118, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002b60 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002b64 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002b68 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002b6c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002b70 bge     t0, t1, pc + 24        #; t0  = 0x80003108, t1  = 0x80003108, taken, goto 0x80002b88
       0      823        M 0x80002b88 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b88
       0      824        M 0x80002b8c addi    t0, t0, 1408           #; t0  = 0x80002b88, (wrb) t0  <-- 0x80003108
       0      835        M 0x80002b90 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b90
       0      836        M 0x80002b94 addi    t1, t1, 1416           #; t1  = 0x80002b90, (wrb) t1  <-- 0x80003118
       0      837        M 0x80002b98 bge     t0, t1, pc + 20        #; t0  = 0x80003108, t1  = 0x80003118, not taken
       0      838        M 0x80002b9c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002ba0 addi    t0, t0, 4              #; t0  = 0x80003108, (wrb) t0  <-- 0x8000310c
       0      848        M 0x80002ba4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002ba8 blt     t0, t2, pc - 12        #; t0  = 0x8000310c, t2  = 0x80003108, not taken
       0      850        M 0x80002bac addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002bb0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002bb4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002bb8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002bbc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002bc0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002bc4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc4
       0      877        M 0x80002bc8 jalr    ra, ra, -1056          #; ra  = 0x80002bc4, (wrb) ra  <-- 0x80002bcc, goto 0x800027a4
       0      899        M 0x800027a4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x800027a8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x800027ac lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x800027b0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x800027b4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x800027b8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x800027bc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x800027c0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x800027c4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x800027c8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x800027cc csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x800027d0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x800027d4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x800027d8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x800027dc sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x800027e0 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x800027e4 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x800027e8 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x800027ec lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x800027f0 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x800027f4 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x800027f8 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x800027fc lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002800 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002804 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002808 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x8000280c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002810 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002814 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002818 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x8000281c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002820 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002824 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002828 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x8000282c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002830 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x80002834 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x80002838 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x8000283c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002840 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x80002844 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x80002848 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x8000284c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002850 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x80002854 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x80002858 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x8000285c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x80002860 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x80002864 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x80002868 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x8000286c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002870 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x80002874 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x80002878 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x8000287c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x80002880 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x80002884 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x80002888 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x8000288c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80002890 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80002894 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80002898 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003898
       0     1273        M 0x8000289c addi    a1, a1, -1652          #; a1  = 0x80003898, (wrb) a1  <-- 0x80003224
       0     1282        M 0x800028a0 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003224, (wrb) a0  <-- 0x80003224
       0     1283        M 0x800028a4 sw      zero, 0(a0)            #; a0  = 0x80003224, 0 ~~> Word[0x80003224]
       0     1284        M 0x800028a8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x800028ac sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x800028b0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x800028b4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x800028b8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x800028bc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x800028c0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x800028c4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x800028c8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x800028cc sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x800028d0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x800028d4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x800028d8 lw      a0, 0(a1)              #; a1  = 0x80003224, a0  <~~ Word[0x80003224]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x800028dc addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x800028e0 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x800028e4 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x800028e8 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x800028ec sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x800028f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x800028f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x800028f8 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x800028fc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80002900 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80002904 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80002908 ret                            #; ra  = 0x80002bcc, goto 0x80002bcc
       0     1406        M 0x80002bcc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x80002bd0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x80002bd4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x80002bd8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x80002bdc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x80002be0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x80002be4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002be4
       0     1425        M 0x80002be8 addi    t0, t0, 60             #; t0  = 0x80002be4, (wrb) t0  <-- 0x80002c20
       0     1426        M 0x80002bec csrw    mtvec, t0              #; t0  = 0x80002c20, (lsu) a4  <-- 4132
       0     1434        M 0x80002bf0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bf0
       0     1435        M 0x80002bf4 jalr    ra, ra, 544            #; ra  = 0x80002bf0, (wrb) ra  <-- 0x80002bf8, goto 0x80002e10
       0     1451        M 0x80002e10 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x80002e14 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bf8 ~~> Word[0x0011ff5c]
       0     1453        M 0x80002e18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e18
       0     1454        M 0x80002e1c jalr    ra, ra, -1260          #; ra  = 0x80002e18, (wrb) ra  <-- 0x80002e20, goto 0x8000292c
       0     1472        M 0x8000292c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x80002930 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80002934 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80002938 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x8000293c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x80002940 ret                            #; ra  = 0x80002e20, goto 0x80002e20
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80002e20 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80002e24 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80002e28 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x80002e2c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x80002bf8
       0     1533        M 0x80002e30 ret                            #; ra  = 0x80002bf8, goto 0x80002bf8
       0     1537        M 0x80002bf8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000bf8
       0     1538        M 0x80002bfc jalr    ra, ra, -1476          #; ra  = 0x80000bf8, (wrb) ra  <-- 0x80002c00, goto 0x80000634
       0     1543        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1544        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002c00 ~~> Word[0x0011ff5c]
       0     1546        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1547        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1548        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1549        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1551        M                                           #; (lsu) a1  <-- 0
       0     1559        M 0x80000650 bnez    a1, pc + 1264          #; a1  = 0, not taken
       0     1560        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1561        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1562        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1565        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1571        M 0x80000660 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1574        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1575        M 0x80000664 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1578        M                                           #; (lsu) a0  <-- 0x00100000
       0     1579        M 0x80000668 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1582        M                                           #; (lsu) a1  <-- 0x00100000
       0     1583        M 0x8000066c lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1586        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1587        M 0x80000670 addi    a4, a0, 80             #; a0  = 0x00100000, (wrb) a4  <-- 0x00100050
       0     1588        M 0x80000674 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1589        M 0x80000678 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100050, taken, goto 0x80000690
       0     1623        M 0x80000690 mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     1624        M 0x80000694 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1625        M 0x80000698 addi    a5, a0, 160            #; a0  = 0x00100000, (wrb) a5  <-- 0x001000a0
       0     1626        M 0x8000069c mv      a0, a4                 #; a4  = 0x00100050, (wrb) a0  <-- 0x00100050
       0     1635        M 0x800006a0 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x001000a0, taken, goto 0x80000688
       0     1636        M 0x80000688 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1637        M 0x8000068c j       pc + 0x1c              #; goto 0x800006a8
       0     1638        M 0x800006a8 srli    a2, a1, 20             #; a1  = 0x00100000, (wrb) a2  <-- 1
       0     1639        M 0x800006ac snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1650        M 0x800006b0 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1651        M 0x800006b4 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     1652        M 0x800006b8 sltu    a3, a1, a3             #; a1  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     1653        M 0x800006bc and     a6, a2, a3             #; a2  = 1, a3  = 1, (wrb) a6  <-- 1
       0     1662        M 0x800006c0 beqz    a6, pc + 212           #; a6  = 1, not taken
       0     1663        M 0x800006c4 li      a2, 8                  #; (wrb) a2  <-- 8
       0     1664        M 0x800006c8 li      a3, 9                  #; (wrb) a3  <-- 9
       0     1665        M 0x800006cc li      a4, 64                 #; (wrb) a4  <-- 64
       0     1674        M 0x800006d0 li      a5, 192                #; (wrb) a5  <-- 192
       0     1675        M 0x800006d4 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     1676        M 0x800006d8 scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     1677        M 0x800006dc li      a2, 32                 #; (wrb) a2  <-- 32
       0     1686        M 0x800006e0 scfgw   zero, a2               #; a2  = 32
       0     1687        M 0x800006e4 scfgwi  a1, 896                #; a1  = 0x00100000
       0     1688        M 0x800006e8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036e8
       0     1689        M 0x800006ec addi    a2, a2, -1488          #; a2  = 0x800036e8, (wrb) a2  <-- 0x80003118
       0     1699        M 0x800006f4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036f4
       0     1700        M 0x800006f8 addi    a2, a2, -1492          #; a2  = 0x800036f4, (wrb) a2  <-- 0x80003120
                         M 0x800006f0 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003118]
       0     1703        M 0x800006fc fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003120]
       0     1709        M                                           #; (f:lsu) ft3  <-- 3.141
       0     1711        M 0x80000700 csrrsi  a2, ssr, 1             #; 
       0     1712        M                                           #; (f:lsu) ft4  <-- 6.282
       0     1713        M 0x8000070c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000370c
                         M 0x80000704 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
       0     1714        M 0x80000708 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
       0     1715        M                                           #; (f:fpu) ft0  <-- 6.282
       0     1722        M 0x80000710 addi    a2, a2, -1508          #; a2  = 0x8000370c, (wrb) a2  <-- 0x80003128
       0     1724        M 0x80000718 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003718
       0     1725        M 0x8000071c addi    a2, a2, -1512          #; a2  = 0x80003718, (wrb) a2  <-- 0x80003130
                         M 0x80000714 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003128]
       0     1734        M                                           #; (f:lsu) ft3  <-- 9.423
       0     1735        M 0x80000724 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003724
       0     1736        M 0x80000728 addi    a2, a2, -1516          #; a2  = 0x80003724, (wrb) a2  <-- 0x80003138
                         M 0x80000720 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003130]
       0     1739        M 0x8000072c fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x80003138]
       0     1745        M                                           #; (f:lsu) ft4  <-- 12.564
       0     1746        M 0x80000730 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003730
       0     1747        M 0x80000734 addi    a2, a2, -1520          #; a2  = 0x80003730, (wrb) a2  <-- 0x80003140
       0     1748        M                                           #; (f:lsu) ft5  <-- 15.705
       0     1750        M 0x80000738 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x80003140]
       0     1751        M 0x8000073c fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423
       0     1752        M                                           #; (f:fpu) ft0  <-- 9.423
       0     1759        M                                           #; (f:lsu) ft6  <-- 18.846
       0     1760        M 0x80000740 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     1761        M 0x8000074c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000374c
                         M 0x80000744 fsgnj.d ft0, ft5, ft5          #; ft5  = 15.705, ft5  = 15.705, (f:fpu) ft0  <-- 12.564
       0     1762        M 0x80000748 fsgnj.d ft0, ft6, ft6          #; ft6  = 18.846, ft6  = 18.846, (f:fpu) ft0  <-- 15.705
       0     1763        M                                           #; (f:fpu) ft0  <-- 18.846
       0     1770        M 0x80000750 addi    a2, a2, -1540          #; a2  = 0x8000374c, (wrb) a2  <-- 0x80003148
       0     1772        M 0x80000758 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003758
       0     1773        M 0x8000075c addi    a2, a2, -1544          #; a2  = 0x80003758, (wrb) a2  <-- 0x80003150
                         M 0x80000754 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003148]
       0     1782        M                                           #; (f:lsu) ft3  <-- 21.9870000
       0     1783        M 0x80000764 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003764
       0     1784        M 0x80000768 addi    a2, a2, -1548          #; a2  = 0x80003764, (wrb) a2  <-- 0x80003158
                         M 0x80000760 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003150]
       0     1787        M 0x8000076c fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x80003158]
       0     1793        M                                           #; (f:lsu) ft4  <-- 25.128
       0     1794        M 0x80000770 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003770
       0     1795        M 0x80000774 addi    a2, a2, -1552          #; a2  = 0x80003770, (wrb) a2  <-- 0x80003160
       0     1796        M                                           #; (f:lsu) ft5  <-- 28.269
       0     1798        M 0x80000778 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x80003160]
       0     1799        M 0x8000077c fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000
       0     1800        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     1807        M                                           #; (f:lsu) ft6  <-- 31.41
       0     1808        M 0x80000780 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     1809        M 0x80000784 fsgnj.d ft0, ft5, ft5          #; ft5  = 28.269, ft5  = 28.269, (f:fpu) ft0  <-- 25.128
       0     1810        M 0x80000788 fsgnj.d ft0, ft6, ft6          #; ft6  = 31.41, ft6  = 31.41, (f:fpu) ft0  <-- 28.269
       0     1811        M 0x8000078c csrrci  a2, ssr, 1             #; (f:fpu) ft0  <-- 31.41
       0     1818        M 0x80000790 j       pc + 0xcc              #; goto 0x8000085c
       0     1830        M 0x8000085c srli    a2, a0, 20             #; a0  = 0x00100050, (wrb) a2  <-- 1
       0     1842        M 0x80000860 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1843        M 0x80000864 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1844        M 0x80000868 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     1845        M 0x8000086c sltu    a3, a0, a3             #; a0  = 0x00100050, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     1854        M 0x80000870 and     a5, a2, a3             #; a2  = 1, a3  = 1, (wrb) a5  <-- 1
       0     1855        M 0x80000874 beqz    a5, pc + 332           #; a5  = 1, not taken
       0     1856        M 0x80000878 li      a7, 8                  #; (wrb) a7  <-- 8
       0     1857        M 0x8000087c li      a4, 9                  #; (wrb) a4  <-- 9
       0     1866        M 0x80000880 li      a2, 64                 #; (wrb) a2  <-- 64
       0     1867        M 0x80000884 li      a3, 192                #; (wrb) a3  <-- 192
       0     1868        M 0x80000888 scfgw   a4, a2                 #; a4  = 9, a2  = 64
       0     1869        M 0x8000088c scfgw   a7, a3                 #; a7  = 8, a3  = 192
       0     1878        M 0x80000890 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1879        M 0x80000894 scfgw   zero, a2               #; a2  = 32
       0     1880        M 0x80000898 scfgwi  a0, 896                #; a0  = 0x00100050
       0     1881        M 0x8000089c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000389c
       0     1890        M 0x800008a0 addi    a2, a2, -1924          #; a2  = 0x8000389c, (wrb) a2  <-- 0x80003118
       0     1892        M 0x800008a8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038a8
       0     1893        M 0x800008ac addi    a2, a2, -1928          #; a2  = 0x800038a8, (wrb) a2  <-- 0x80003120
                         M 0x800008a4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003118]
       0     1902        M                                           #; (f:lsu) ft3  <-- 3.141
       0     1904        M 0x800008b0 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003120]
       0     1905        M 0x800008b4 csrrsi  a2, ssr, 1             #; 
       0     1907        M 0x800008b8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
       0     1908        M                                           #; (f:fpu) ft0  <-- 3.141
       0     1913        M                                           #; (f:lsu) ft4  <-- 6.282
       0     1914        M 0x800008c0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038c0
                         M 0x800008bc fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     1915        M 0x800008c4 addi    a2, a2, -1944          #; a2  = 0x800038c0, (wrb) a2  <-- 0x80003128
                         M                                           #; (f:fpu) ft0  <-- 6.282
       0     1917        M 0x800008cc auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038cc
       0     1918        M 0x800008c8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003128]
       0     1926        M 0x800008d0 addi    a2, a2, -1948          #; a2  = 0x800038cc, (wrb) a2  <-- 0x80003130
       0     1927        M                                           #; (f:lsu) ft3  <-- 9.423
       0     1928        M 0x800008d8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038d8
       0     1929        M 0x800008dc addi    a2, a2, -1952          #; a2  = 0x800038d8, (wrb) a2  <-- 0x80003138
                         M 0x800008d4 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003130]
       0     1938        M                                           #; (f:lsu) ft4  <-- 12.564
       0     1939        M 0x800008e4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038e4
       0     1940        M 0x800008e8 addi    a2, a2, -1956          #; a2  = 0x800038e4, (wrb) a2  <-- 0x80003140
                         M 0x800008e0 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x80003138]
       0     1943        M 0x800008ec fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x80003140]
       0     1949        M                                           #; (f:lsu) ft5  <-- 15.705
       0     1952        M 0x800008f0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423, (f:lsu) ft6  <-- 18.846
       0     1953        M 0x800008f4 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1954        M 0x800008f8 fsgnj.d ft0, ft5, ft5          #; ft5  = 15.705, ft5  = 15.705, (f:fpu) ft0  <-- 12.564
       0     1955        M 0x800008fc fsgnj.d ft0, ft6, ft6          #; ft6  = 18.846, ft6  = 18.846, (f:fpu) ft0  <-- 15.705
       0     1956        M                                           #; (f:fpu) ft0  <-- 18.846
       0     1962        M 0x80000900 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003900
       0     1963        M 0x80000904 addi    a2, a2, -1976          #; a2  = 0x80003900, (wrb) a2  <-- 0x80003148
       0     1965        M 0x8000090c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000390c
       0     1966        M 0x80000908 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003148]
       0     1974        M 0x80000910 addi    a2, a2, -1980          #; a2  = 0x8000390c, (wrb) a2  <-- 0x80003150
       0     1975        M                                           #; (f:lsu) ft3  <-- 21.9870000
       0     1976        M 0x80000918 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003918
       0     1977        M 0x8000091c addi    a2, a2, -1984          #; a2  = 0x80003918, (wrb) a2  <-- 0x80003158
                         M 0x80000914 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003150]
       0     1986        M                                           #; (f:lsu) ft4  <-- 25.128
       0     1987        M 0x80000924 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003924
       0     1988        M 0x80000928 addi    a2, a2, -1988          #; a2  = 0x80003924, (wrb) a2  <-- 0x80003160
                         M 0x80000920 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x80003158]
       0     1991        M 0x8000092c fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x80003160]
       0     1997        M                                           #; (f:lsu) ft5  <-- 28.269
       0     2000        M 0x80000930 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000, (f:lsu) ft6  <-- 31.41
       0     2001        M 0x80000934 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     2002        M 0x80000938 fsgnj.d ft0, ft5, ft5          #; ft5  = 28.269, ft5  = 28.269, (f:fpu) ft0  <-- 25.128
       0     2003        M 0x8000093c fsgnj.d ft0, ft6, ft6          #; ft6  = 31.41, ft6  = 31.41, (f:fpu) ft0  <-- 28.269
       0     2004        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2010        M 0x80000940 and     a2, a6, a5             #; a6  = 1, a5  = 1, (wrb) a2  <-- 1
       0     2012        M 0x80000948 beqz    a2, pc + 320           #; a2  = 1, not taken
                         M 0x80000944 csrrci  a3, ssr, 1             #; 
       0     2013        M 0x8000094c li      a2, 64                 #; (wrb) a2  <-- 64
       0     2022        M 0x80000950 li      a3, 192                #; (wrb) a3  <-- 192
       0     2023        M 0x80000954 scfgw   a4, a2                 #; a4  = 9, a2  = 64
       0     2024        M 0x80000958 scfgw   a7, a3                 #; a7  = 8, a3  = 192
       0     2025        M 0x8000095c li      a2, 32                 #; (wrb) a2  <-- 32
       0     2034        M 0x80000960 scfgw   zero, a2               #; a2  = 32
       0     2035        M 0x80000964 scfgwi  a1, 768                #; a1  = 0x00100000
       0     2036        M 0x80000968 li      a1, 1                  #; (wrb) a1  <-- 1
       0     2037        M 0x8000096c addi    a2, a1, 64             #; a1  = 1, (wrb) a2  <-- 65
       0     2046        M 0x80000970 addi    a3, a1, 192            #; a1  = 1, (wrb) a3  <-- 193
       0     2047        M 0x80000974 scfgw   a4, a2                 #; a4  = 9, a2  = 65
       0     2048        M 0x80000978 scfgw   a7, a3                 #; a7  = 8, a3  = 193
       0     2049        M 0x8000097c addi    a1, a1, 32             #; a1  = 1, (wrb) a1  <-- 33
       0     2058        M 0x80000980 scfgw   zero, a1               #; a1  = 33
       0     2059        M 0x80000984 scfgwi  a0, 769                #; a0  = 0x00100050
       0     2061        M                                           #; (acc) gp  <-- 0x220001d3
                         M 0x80000988 csrrsi  a0, ssr, 1             #; 
       0     2063        M 0x8000098c fsgnj.d ft3, ft0, ft0          #; ft0  = 3.141, ft0  = 3.141
       0     2064        M                                           #; (f:fpu) ft3  <-- 3.141
       0     2072        M 0x80000990 fmul.d  ft3, ft1, ft3          #; ft1  = 3.141, ft3  = 3.141
       0     2075        M                                           #; (f:fpu) ft3  <-- 9.865881
       0     2076        M 0x80000994 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 6.282, ft0  = 6.282, ft3  = 9.865881
       0     2079        M                                           #; (f:fpu) ft3  <-- 49.3294050
       0     2080        M 0x80000998 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 9.423, ft0  = 9.423, ft3  = 49.3294050
       0     2083        M                                           #; (f:fpu) ft3  <-- 138.1223340
       0     2084        M 0x8000099c fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 12.564, ft0  = 12.564, ft3  = 138.1223340
       0     2087        M                                           #; (f:fpu) ft3  <-- 295.9764300
       0     2088        M 0x800009a0 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 15.705, ft0  = 15.705, ft3  = 295.9764300
       0     2091        M                                           #; (f:fpu) ft3  <-- 542.6234550
       0     2092        M 0x800009a4 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 18.846, ft0  = 18.846, ft3  = 542.6234550
       0     2095        M                                           #; (f:fpu) ft3  <-- 897.7951710
       0     2096        M 0x800009a8 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 21.9870000, ft0  = 21.9870000, ft3  = 897.7951710
       0     2097        M 0x800009bc j       pc + 0x144             #; goto 0x80000b00
       0     2099        M                                           #; (f:fpu) ft3  <-- 1381.2233400
       0     2100        M 0x800009ac fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 25.128, ft0  = 25.128, ft3  = 1381.2233400
       0     2103        M                                           #; (f:fpu) ft3  <-- 2012.6397240
       0     2104        M 0x800009b0 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 28.269, ft0  = 28.269, ft3  = 2012.6397240
       0     2106        M 0x80000b00 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b00
       0     2107        M 0x80000b04 addi    a0, a0, 1640           #; a0  = 0x80002b00, (wrb) a0  <-- 0x80003168
                         M                                           #; (f:fpu) ft3  <-- 2811.7760850
       0     2108        M 0x800009b4 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 31.41, ft0  = 31.41, ft3  = 2811.7760850
       0     2109        M 0x800009b8 csrrci  a0, ssr, 1             #; 
       0     2111        M 0x80000b08 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003168], (f:fpu) ft3  <-- 3798.3641850
       0     2120        M 0x80000b18 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M                                           #; (f:lsu) ft4  <-- -3798.3641850
       0     2121        M 0x80000b0c fadd.d  ft3, ft3, ft4          #; ft3  = 3798.3641850, ft4  = -3798.3641850
       0     2123        M                                           #; (lsu) a2  <-- 0
       0     2124        M 0x80000b1c lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2125        M 0x80000b10 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     2126        M                                           #; (f:fpu) fs0  <-- 0.0
       0     2127        M                                           #; (lsu) a3  <-- 0
                         M 0x80000b14 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     2130        M 0x80000b20 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b20
       0     2131        M 0x80000b24 addi    a0, a0, 869            #; a0  = 0x80002b20, (wrb) a0  <-- 0x80002e85
       0     2132        M 0x80000b28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b28
       0     2133        M 0x80000b2c jalr    ra, ra, 40             #; ra  = 0x80000b28, (wrb) ra  <-- 0x80000b30, goto 0x80000b50
       0     2144        M 0x80000b50 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2145        M 0x80000b54 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000b30 ~~> Word[0x0011ff1c]
       0     2146        M 0x80000b58 mv      t0, a0                 #; a0  = 0x80002e85, (wrb) t0  <-- 0x80002e85
       0     2147        M 0x80000b5c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff3c]
       0     2156        M 0x80000b60 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     2157        M 0x80000b64 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff34]
       0     2158        M 0x80000b68 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff30]
       0     2159        M 0x80000b6c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2168        M 0x80000b70 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2169        M 0x80000b74 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 33 ~~> Word[0x0011ff24]
       0     2170        M 0x80000b78 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2171        M 0x80000b7c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2180        M 0x80000b80 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001b80
       0     2181        M 0x80000b84 addi    a0, a0, -988           #; a0  = 0x80001b80, (wrb) a0  <-- 0x800017a4
       0     2182        M 0x80000b88 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2183        M 0x80000b8c li      a2, -1                 #; (wrb) a2  <-- -1
       0     2192        M 0x80000b90 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2193        M 0x80000b94 mv      a3, t0                 #; t0  = 0x80002e85, (wrb) a3  <-- 0x80002e85
       0     2194        M 0x80000b98 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b98
       0     2195        M 0x80000b9c jalr    ra, ra, 20             #; ra  = 0x80000b98, (wrb) ra  <-- 0x80000ba0, goto 0x80000bac
       0     2204        M 0x80000bac addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2216        M 0x80000bb0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000ba0 ~~> Word[0x0011ff0c]
       0     2217        M 0x80000bb4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2218        M 0x80000bb8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2219        M 0x80000bbc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2228        M 0x80000bc0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2229        M 0x80000bc4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2230        M 0x80000bc8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2231        M 0x80000bcc sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2240        M 0x80000bd0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2241        M 0x80000bd4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2242        M 0x80000bd8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2243        M 0x80000bdc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2252        M 0x80000be0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2253        M 0x80000be4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2254        M 0x80000be8 mv      s0, a3                 #; a3  = 0x80002e85, (wrb) s0  <-- 0x80002e85
       0     2255        M 0x80000bec mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2264        M 0x80000bf0 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2265        M 0x80000bf4 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2266        M 0x80000bf8 mv      s2, a0                 #; a0  = 0x800017a4, (wrb) s2  <-- 0x800017a4
       0     2267        M 0x80000bfc j       pc + 0xc               #; goto 0x80000c08
       0     2276        M 0x80000c08 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2277        M 0x80000c0c li      s6, 37                 #; (wrb) s6  <-- 37
       0     2288        M 0x80000c10 li      s11, 16                #; (wrb) s11 <-- 16
       0     2289        M 0x80000c14 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2290        M 0x80000c18 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2291        M 0x80000c1c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2300        M 0x80000c20 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2301        M 0x80000c24 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2302        M 0x80000c28 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2303        M 0x80000c2c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2312        M 0x80000c30 addi    s10, s0, 2             #; s0  = 0x80002e85, (wrb) s10 <-- 0x80002e87
       0     2313        M 0x80000c34 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2314        M 0x80000c38 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2315        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e85, a0  <~~ Byte[0x80002e85]
       0     2326        M                                           #; (lsu) a0  <-- 101
       0     2327        M 0x80000c40 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2328        M 0x80000c44 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2329        M 0x80000c48 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2330        M 0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2336        M 0x80000c50 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2337        M 0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2338        M 0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
       0     2359        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2360        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2361        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2371        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2372        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     2373        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     2374        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2375        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     2383        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2394        M                                           #; (lsu) a4  <-- 0
       0     2395        M 0x800017c4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2396        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 1 ~~> Word[0x80003224]
       0     2397        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 0, (wrb) a4  <-- 0x80003224
       0     2398        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003224, 101 ~~> Byte[0x8000326c]
       0     2399        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2420        M                                           #; (lsu) a4  <-- 1
       0     2421        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2422        M 0x800017dc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2423        M 0x800017e0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2424        M 0x800017e4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2425        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2426        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     2446        M 0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
       0     2460        M 0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e85, (wrb) s0  <-- 0x80002e86
       0     2463        M 0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e87, (wrb) s10 <-- 0x80002e88
       0     2464        M 0x80000c64 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2465        M 0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e86, a0  <~~ Byte[0x80002e86]
       0     2476        M                                           #; (lsu) a0  <-- 114
       0     2477        M 0x80000c6c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c44
       0     2478        M 0x80000c44 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2479        M 0x80000c48 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2480        M 0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2481        M 0x80000c50 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2482        M 0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2483        M 0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
       0     2486        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2487        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2488        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2489        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2490        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     2491        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     2492        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2493        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     2494        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2505        M                                           #; (lsu) a4  <-- 1
       0     2506        M 0x800017c4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2507        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 2 ~~> Word[0x80003224]
       0     2508        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 1, (wrb) a4  <-- 0x80003225
       0     2509        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003225, 114 ~~> Byte[0x8000326d]
       0     2510        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2531        M                                           #; (lsu) a4  <-- 2
       0     2532        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2533        M 0x800017dc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2534        M 0x800017e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2535        M 0x800017e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2536        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2537        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     2540        M 0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
       0     2545        M 0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e86, (wrb) s0  <-- 0x80002e87
       0     2548        M 0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e88, (wrb) s10 <-- 0x80002e89
       0     2549        M 0x80000c64 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2550        M 0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e87, a0  <~~ Byte[0x80002e87]
       0     2561        M                                           #; (lsu) a0  <-- 114
       0     2562        M 0x80000c6c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c44
       0     2563        M 0x80000c44 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2564        M 0x80000c48 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2565        M 0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2566        M 0x80000c50 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2567        M 0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2568        M 0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
       0     2571        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2572        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2573        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2574        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2575        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     2576        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     2577        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2578        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     2579        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2590        M                                           #; (lsu) a4  <-- 2
       0     2591        M 0x800017c4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2592        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 3 ~~> Word[0x80003224]
       0     2593        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 2, (wrb) a4  <-- 0x80003226
       0     2594        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003226, 114 ~~> Byte[0x8000326e]
       0     2595        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2616        M                                           #; (lsu) a4  <-- 3
       0     2617        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2618        M 0x800017dc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2619        M 0x800017e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2620        M 0x800017e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2621        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2622        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     2625        M 0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
       0     2630        M 0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e87, (wrb) s0  <-- 0x80002e88
       0     2633        M 0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e89, (wrb) s10 <-- 0x80002e8a
       0     2634        M 0x80000c64 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2635        M 0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e88, a0  <~~ Byte[0x80002e88]
       0     2646        M                                           #; (lsu) a0  <-- 111
       0     2647        M 0x80000c6c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000c44
       0     2648        M 0x80000c44 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2649        M 0x80000c48 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2650        M 0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2651        M 0x80000c50 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2652        M 0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2653        M 0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
       0     2656        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2657        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2658        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2659        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2660        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     2661        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     2662        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2663        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     2664        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2675        M                                           #; (lsu) a4  <-- 3
       0     2676        M 0x800017c4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2677        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 4 ~~> Word[0x80003224]
       0     2678        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 3, (wrb) a4  <-- 0x80003227
       0     2679        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003227, 111 ~~> Byte[0x8000326f]
       0     2680        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2701        M                                           #; (lsu) a4  <-- 4
       0     2702        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2703        M 0x800017dc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2704        M 0x800017e0 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2705        M 0x800017e4 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2706        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2707        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     2710        M 0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
       0     2715        M 0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e88, (wrb) s0  <-- 0x80002e89
       0     2718        M 0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e8a, (wrb) s10 <-- 0x80002e8b
       0     2719        M 0x80000c64 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2720        M 0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e89, a0  <~~ Byte[0x80002e89]
       0     2731        M                                           #; (lsu) a0  <-- 114
       0     2732        M 0x80000c6c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c44
       0     2733        M 0x80000c44 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2734        M 0x80000c48 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2735        M 0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2736        M 0x80000c50 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2737        M 0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2738        M 0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
       0     2741        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2742        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2743        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2744        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2745        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     2746        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     2747        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2748        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     2749        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2760        M                                           #; (lsu) a4  <-- 4
       0     2761        M 0x800017c4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2762        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 5 ~~> Word[0x80003224]
       0     2763        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 4, (wrb) a4  <-- 0x80003228
       0     2764        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003228, 114 ~~> Byte[0x80003270]
       0     2765        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2786        M                                           #; (lsu) a4  <-- 5
       0     2787        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2788        M 0x800017dc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2789        M 0x800017e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2790        M 0x800017e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2791        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2792        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     2795        M 0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
       0     2800        M 0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e89, (wrb) s0  <-- 0x80002e8a
       0     2803        M 0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e8b, (wrb) s10 <-- 0x80002e8c
       0     2804        M 0x80000c64 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2805        M 0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e8a, a0  <~~ Byte[0x80002e8a]
       0     2816        M                                           #; (lsu) a0  <-- 32
       0     2817        M 0x80000c6c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c44
       0     2818        M 0x80000c44 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2819        M 0x80000c48 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2820        M 0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2821        M 0x80000c50 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2822        M 0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2823        M 0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
       0     2826        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2827        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2828        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2829        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2830        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     2831        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     2832        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2833        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     2834        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2845        M                                           #; (lsu) a4  <-- 5
       0     2846        M 0x800017c4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2847        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 6 ~~> Word[0x80003224]
       0     2848        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 5, (wrb) a4  <-- 0x80003229
       0     2849        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003229, 32 ~~> Byte[0x80003271]
       0     2850        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2871        M                                           #; (lsu) a4  <-- 6
       0     2872        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2873        M 0x800017dc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2874        M 0x800017e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2875        M 0x800017e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2876        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2877        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     2880        M 0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
       0     2885        M 0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e8a, (wrb) s0  <-- 0x80002e8b
       0     2888        M 0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e8c, (wrb) s10 <-- 0x80002e8d
       0     2889        M 0x80000c64 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2890        M 0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e8b, a0  <~~ Byte[0x80002e8b]
       0     2901        M                                           #; (lsu) a0  <-- 61
       0     2902        M 0x80000c6c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000c44
       0     2903        M 0x80000c44 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2904        M 0x80000c48 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2905        M 0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2906        M 0x80000c50 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2907        M 0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2908        M 0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
       0     2911        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2912        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2913        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2914        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2915        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     2916        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     2917        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2918        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     2919        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2930        M                                           #; (lsu) a4  <-- 6
       0     2931        M 0x800017c4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2932        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 7 ~~> Word[0x80003224]
       0     2933        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 6, (wrb) a4  <-- 0x8000322a
       0     2934        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322a, 61 ~~> Byte[0x80003272]
       0     2935        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     2956        M                                           #; (lsu) a4  <-- 7
       0     2957        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2958        M 0x800017dc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2959        M 0x800017e0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     2960        M 0x800017e4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     2961        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2962        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     2965        M 0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
       0     2970        M 0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e8b, (wrb) s0  <-- 0x80002e8c
       0     2973        M 0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e8d, (wrb) s10 <-- 0x80002e8e
       0     2974        M 0x80000c64 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2975        M 0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e8c, a0  <~~ Byte[0x80002e8c]
       0     2986        M                                           #; (lsu) a0  <-- 32
       0     2987        M 0x80000c6c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c44
       0     2988        M 0x80000c44 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2989        M 0x80000c48 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     2990        M 0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2991        M 0x80000c50 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     2992        M 0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2993        M 0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
       0     2996        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2997        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2998        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2999        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3000        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     3001        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     3002        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3003        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     3004        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     3015        M                                           #; (lsu) a4  <-- 7
       0     3016        M 0x800017c4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3017        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 8 ~~> Word[0x80003224]
       0     3018        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 7, (wrb) a4  <-- 0x8000322b
       0     3019        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322b, 32 ~~> Byte[0x80003273]
       0     3020        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     3041        M                                           #; (lsu) a4  <-- 8
       0     3042        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3043        M 0x800017dc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3044        M 0x800017e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3045        M 0x800017e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3046        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3047        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     3050        M 0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
       0     3055        M 0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e8c, (wrb) s0  <-- 0x80002e8d
       0     3058        M 0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e8e, (wrb) s10 <-- 0x80002e8f
       0     3059        M 0x80000c64 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3060        M 0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e8d, a0  <~~ Byte[0x80002e8d]
       0     3071        M                                           #; (lsu) a0  <-- 37
       0     3072        M 0x80000c6c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000c44
       0     3073        M 0x80000c44 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000c74
       0     3085        M 0x80000c74 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3086        M 0x80000c78 j       pc + 0x10              #; goto 0x80000c88
       0     3097        M 0x80000c88 lbu     a0, -1(s10)            #; s10 = 0x80002e8f, a0  <~~ Byte[0x80002e8e]
       0     3108        M                                           #; (lsu) a0  <-- 102
       0     3109        M 0x80000c8c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3110        M 0x80000c90 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000cc8
       0     3133        M 0x80000cc8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3134        M 0x80000ccc andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3145        M 0x80000cd0 addi    a1, s10, -1            #; s10 = 0x80002e8f, (wrb) a1  <-- 0x80002e8e
       0     3146        M 0x80000cd4 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3147        M 0x80000cd8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000d54
       0     3168        M 0x80000d54 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3169        M 0x80000d58 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000da8
       0     3191        M 0x80000da8 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3192        M 0x80000dac mv      s10, a1                #; a1  = 0x80002e8e, (wrb) s10 <-- 0x80002e8e
       0     3203        M 0x80000db0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3204        M 0x80000db4 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3205        M 0x80000db8 j       pc + 0xc               #; goto 0x80000dc4
       0     3226        M 0x80000dc4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3227        M 0x80000dc8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3228        M 0x80000dcc slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3238        M 0x80000dd0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3239        M 0x80000dd4 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3240        M 0x80000dd8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e3c
       0     3261        M 0x80000e3c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3273        M 0x80000e40 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3274        M 0x80000e44 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3275        M 0x80000e48 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3276        M 0x80000e4c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002e4c
       0     3285        M 0x80000e50 addi    a2, a2, 184            #; a2  = 0x80002e4c, (wrb) a2  <-- 0x80002f04
       0     3286        M 0x80000e54 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002f04, (wrb) a1  <-- 0x80003008
       0     3287        M 0x80000e58 lw      a2, 0(a1)              #; a1  = 0x80003008, a2  <~~ Word[0x80003008]
       0     3288        M 0x80000e5c li      a1, 8                  #; (wrb) a1  <-- 8
       0     3297        M 0x80000e60 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3298        M                                           #; (lsu) a2  <-- 0x80000e94
       0     3299        M 0x80000e64 jr      a2                     #; a2  = 0x80000e94, goto 0x80000e94
       0     3320        M 0x80000e94 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3321        M 0x80000e98 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000ea0
       0     3332        M 0x80000ea0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3333        M 0x80000ea4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3335        M 0x80000eac addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3336        M 0x80000ea8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3337        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3344        M 0x80000eb0 mv      a0, s2                 #; s2  = 0x800017a4, (wrb) a0  <-- 0x800017a4
       0     3345        M 0x80000eb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3346        M 0x80000eb8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3347        M 0x80000ebc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3356        M 0x80000ec0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3357        M 0x80000ec4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3358        M 0x80000ec8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3359        M 0x80000ecc auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001ecc
       0     3368        M 0x80000ed0 jalr    ra, ra, -1656          #; ra  = 0x80001ecc, (wrb) ra  <-- 0x80000ed4, goto 0x80001854
       0     3382        M 0x80001854 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3383        M 0x80001858 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000ed4 ~~> Word[0x0011fe9c]
       0     3384        M 0x8000185c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3394        M 0x80001860 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3395        M 0x80001864 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800017a4 ~~> Word[0x0011fe90]
       0     3396        M 0x80001868 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3397        M 0x8000186c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3406        M 0x80001870 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3407        M 0x80001874 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3408        M 0x80001878 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3409        M 0x8000187c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3418        M 0x80001880 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3419        M 0x80001884 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002e8e ~~> Word[0x0011fe70]
       0     3422        M 0x80001888 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3423        M 0x8000188c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3431        M 0x80001894 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003894
       0     3432        M 0x80001898 addi    s1, s1, -1820          #; s1  = 0x80003894, (wrb) s1  <-- 0x80003178
                         M 0x80001890 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3435        M 0x8000189c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003178]
       0     3443        M 0x800018a4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3444        M 0x800018a8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3445        M 0x800018ac mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800018a0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3454        M 0x800018b0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3455        M 0x800018b4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3456        M 0x800018b8 mv      s7, a0                 #; a0  = 0x800017a4, (wrb) s7  <-- 0x800017a4
       0     3457        M 0x800018bc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800019ac
       0     3479        M 0x800019ac fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3480        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3489        M 0x800019b0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029b0
       0     3490        M 0x800019b4 addi    a0, a0, 2000           #; a0  = 0x800029b0, (wrb) a0  <-- 0x80003180
       0     3493        M 0x800019b8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003180]
       0     3502        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3503        M 0x800019bc fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3505        M                                           #; (acc) t3  <-- 0x00051e63
       0     3506        M 0x800019c0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800019dc
       0     3513        M 0x800019dc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029dc
       0     3525        M 0x800019e0 addi    a0, a0, 1964           #; a0  = 0x800029dc, (wrb) a0  <-- 0x80003188
       0     3527        M 0x800019e8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029e8
       0     3528        M 0x800019ec addi    a0, a0, 1960           #; a0  = 0x800029e8, (wrb) a0  <-- 0x80003190
                         M 0x800019e4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003188]
       0     3537        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3539        M 0x800019f0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003190]
       0     3540        M 0x800019f4 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3542        M                                           #; (acc) a0  <-- 0x00b57533
       0     3548        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3549        M 0x800019f8 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3551        M                                           #; (acc) a0  <-- 0x00b57533
       0     3552        M 0x800019fc and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3553        M 0x80001a00 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001afc
       0     3576        M 0x80001afc andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3588        M 0x80001b00 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3589        M 0x80001b04 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001b0c
       0     3590        M 0x80001b0c li      a0, 10                 #; (wrb) a0  <-- 10
       0     3601        M 0x80001b14 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001b4c
       0     3602        M 0x80001b10 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3603        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3623        M 0x80001b4c li      s0, 0                  #; (wrb) s0  <-- 0
       0     3635        M 0x80001b50 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3636        M 0x80001b54 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002b54
       0     3637        M 0x80001b58 addi    a1, a1, 1284           #; a1  = 0x80002b54, (wrb) a1  <-- 0x80003058
       0     3638        M 0x80001b5c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003058, (wrb) a0  <-- 0x80003088
       0     3649        M 0x80001b60 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003088]
       0     3650        M 0x80001b64 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3654        M 0x80001b68 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3655        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3656        M 0x80001b6c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3658        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3659        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3660        M 0x80001b74 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002b74
       0     3661        M 0x80001b78 addi    a0, a0, 1572           #; a0  = 0x80002b74, (wrb) a0  <-- 0x80003198
                         M 0x80001b70 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3664        M 0x80001b7c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003198], (f:fpu) ft2  <-- 0.0
       0     3672        M 0x80001b80 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3673        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3674        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3676        M 0x80001b84 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3677        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3678        M 0x80001b88 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3681        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3682        M 0x80001b8c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3685        M 0x80001b90 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001bb0
       0     3707        M 0x80001bb0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3709        M                                           #; (acc) s4  <-- 0x00059a63
       0     3710        M 0x80001bb4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001bc8
       0     3719        M 0x80001bcc beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001bc8 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3720        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3730        M 0x80001bd0 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3731        M 0x80001bd4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3732        M 0x80001bd8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3733        M 0x80001bdc li      t0, 32                 #; (wrb) t0  <-- 32
       0     3742        M 0x80001be0 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3743        M 0x80001be4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3744        M 0x80001be8 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3745        M 0x80001bec li      a6, 10                 #; (wrb) a6  <-- 10
       0     3754        M 0x80001bf0 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3755        M 0x80001bf4 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3756        M 0x80001bf8 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3757        M 0x80001bfc mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3766        M 0x80001c00 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3767        M 0x80001c04 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3770        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3771        M 0x80001c08 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3772        M 0x80001c0c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3778        M 0x80001c10 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3779        M 0x80001c14 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3780        M 0x80001c18 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3781        M 0x80001c1c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3793        M 0x80001c20 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3794        M 0x80001c24 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3795        M 0x80001c28 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3796        M 0x80001c2c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3805        M 0x80001c30 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3806        M 0x80001c34 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3807        M 0x80001c38 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3808        M 0x80001c3c bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3817        M 0x80001c40 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3818        M 0x80001c44 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3819        M 0x80001c48 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3820        M 0x80001c4c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3829        M 0x80001c50 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3830        M 0x80001c54 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3831        M 0x80001c58 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3832        M 0x80001c5c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3841        M 0x80001c60 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3842        M 0x80001c64 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001c6c
       0     3843        M 0x80001c6c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3853        M 0x80001c70 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3854        M 0x80001c74 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000c74
       0     3855        M 0x80001c78 jalr    ra, ra, -1820          #; ra  = 0x80000c74, (wrb) ra  <-- 0x80001c7c, goto 0x80000558
       0     3876        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3877        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3888        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3911        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3923        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3924        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     3925        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     3926        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     3946        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     3947        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     3958        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     3959        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     3960        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     3961        M 0x800005ec ret                            #; ra  = 0x80001c7c, goto 0x80001c7c
       0     3972        M 0x80001c7c li      a0, 0                  #; (wrb) a0  <-- 0
       0     3975        M 0x80001c80 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     3976        M 0x80001c84 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     3977        M 0x80001c88 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     3978        M 0x80001c8c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     3987        M 0x80001c90 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3988        M 0x80001c94 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3989        M 0x80001c98 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c80
       0     3990        M 0x80001c80 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     3991        M 0x80001c84 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     3992        M 0x80001c88 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     3993        M 0x80001c8c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     3994        M 0x80001c90 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3995        M 0x80001c94 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3996        M 0x80001c98 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c80
       0     3997        M 0x80001c80 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     3998        M 0x80001c84 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     3999        M 0x80001c88 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4000        M 0x80001c8c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4001        M 0x80001c90 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4002        M 0x80001c94 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4003        M 0x80001c98 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c80
       0     4004        M 0x80001c80 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4005        M 0x80001c84 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4006        M 0x80001c88 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4007        M 0x80001c8c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4008        M 0x80001c90 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4009        M 0x80001c94 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4010        M 0x80001c98 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c80
       0     4011        M 0x80001c80 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4012        M 0x80001c84 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4013        M 0x80001c88 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4014        M 0x80001c8c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4015        M 0x80001c90 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4016        M 0x80001c94 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4017        M 0x80001c98 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4018        M 0x80001c9c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4030        M 0x80001ca0 j       pc + 0x28              #; goto 0x80001cc8
       0     4042        M 0x80001cc8 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4043        M 0x80001ccc addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4054        M 0x80001cd0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4055        M 0x80001cd4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4056        M 0x80001cd8 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4057        M 0x80001cdc sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4066        M 0x80001ce0 j       pc + 0x8               #; goto 0x80001ce8
       0     4067        M 0x80001ce8 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4068        M 0x80001cec mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4079        M 0x80001cf0 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4080        M 0x80001cf4 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4082        M 0x80001cfc lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001cf8 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4091        M 0x80001d00 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4092        M 0x80001d04 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4093        M 0x80001d08 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4094        M 0x80001d0c li      a4, 18                 #; (wrb) a4  <-- 18
       0     4103        M 0x80001d10 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4104        M 0x80001d14 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4107        M                                           #; (acc) a5  <-- 0x01f55793
       0     4108        M 0x80001d18 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4109        M 0x80001d1c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4115        M 0x80001d20 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4116        M 0x80001d24 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4119        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4120        M 0x80001d28 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4121        M 0x80001d2c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4127        M 0x80001d30 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4128        M 0x80001d34 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4129        M 0x80001d38 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4130        M 0x80001d3c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4139        M 0x80001d40 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4140        M 0x80001d44 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4141        M 0x80001d48 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4142        M 0x80001d4c j       pc + 0x8               #; goto 0x80001d54
       0     4154        M 0x80001d54 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4155        M 0x80001d58 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4156        M 0x80001d5c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001dc8
       0     4177        M 0x80001dc8 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4178        M 0x80001dcc bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4189        M 0x80001dd0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001de8
       0     4201        M 0x80001de8 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4202        M 0x80001dec bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4213        M 0x80001df0 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4214        M 0x80001df4 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001e20
       0     4236        M 0x80001e20 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4237        M 0x80001e24 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4238        M 0x80001e28 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4239        M 0x80001e2c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4248        M 0x80001e30 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4249        M 0x80001e34 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4250        M 0x80001e38 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001e64
       0     4271        M 0x80001e64 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4272        M 0x80001e68 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4273        M 0x80001e6c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4283        M 0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4284        M 0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4285        M 0x80001e78 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4286        M 0x80001e7c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4287        M                                           #; (lsu) a0  <-- 48
       0     4295        M 0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4296        M 0x80001e84 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4297        M 0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4298        M 0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
       0     4309        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4310        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4311        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4312        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4313        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     4314        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     4315        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4316        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     4317        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4328        M                                           #; (lsu) a4  <-- 8
       0     4329        M 0x800017c4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4330        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 9 ~~> Word[0x80003224]
       0     4331        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 8, (wrb) a4  <-- 0x8000322c
       0     4332        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322c, 48 ~~> Byte[0x80003274]
       0     4333        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4354        M                                           #; (lsu) a4  <-- 9
       0     4355        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4356        M 0x800017dc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4357        M 0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4358        M 0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4359        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4360        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     4363        M 0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
       0     4368        M 0x80001e90 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4369        M 0x80001e94 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4370        M 0x80001e98 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001e70
       0     4371        M 0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4372        M 0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4373        M 0x80001e78 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4374        M 0x80001e7c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4375        M 0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4376        M 0x80001e84 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4377        M 0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4378        M 0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
       0     4379        M                                           #; (lsu) a0  <-- 46
       0     4381        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4382        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4383        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4384        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4385        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     4386        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     4387        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4388        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     4389        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4400        M                                           #; (lsu) a4  <-- 9
       0     4401        M 0x800017c4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4402        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 10 ~~> Word[0x80003224]
       0     4403        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 9, (wrb) a4  <-- 0x8000322d
       0     4404        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322d, 46 ~~> Byte[0x80003275]
       0     4405        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4426        M                                           #; (lsu) a4  <-- 10
       0     4427        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4428        M 0x800017dc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4429        M 0x800017e0 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4430        M 0x800017e4 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4431        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4432        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     4435        M 0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
       0     4440        M 0x80001e90 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4441        M 0x80001e94 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4442        M 0x80001e98 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001e70
       0     4443        M 0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4444        M 0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4445        M 0x80001e78 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4446        M 0x80001e7c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4447        M 0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4448        M 0x80001e84 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4449        M 0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4450        M 0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
       0     4451        M                                           #; (lsu) a0  <-- 48
       0     4453        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4454        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4455        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4456        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4457        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     4458        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     4459        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4460        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     4461        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4472        M                                           #; (lsu) a4  <-- 10
       0     4473        M 0x800017c4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4474        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 11 ~~> Word[0x80003224]
       0     4475        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 10, (wrb) a4  <-- 0x8000322e
       0     4476        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322e, 48 ~~> Byte[0x80003276]
       0     4477        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4498        M                                           #; (lsu) a4  <-- 11
       0     4499        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4500        M 0x800017dc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4501        M 0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4502        M 0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4503        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4504        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     4507        M 0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
       0     4512        M 0x80001e90 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4513        M 0x80001e94 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4514        M 0x80001e98 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001e70
       0     4515        M 0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4516        M 0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4517        M 0x80001e78 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4518        M 0x80001e7c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4519        M 0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4520        M 0x80001e84 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4521        M 0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4522        M 0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
       0     4523        M                                           #; (lsu) a0  <-- 48
       0     4525        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4526        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4527        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4528        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4529        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     4530        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     4531        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4532        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     4533        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4544        M                                           #; (lsu) a4  <-- 11
       0     4545        M 0x800017c4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4546        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 12 ~~> Word[0x80003224]
       0     4547        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 11, (wrb) a4  <-- 0x8000322f
       0     4548        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322f, 48 ~~> Byte[0x80003277]
       0     4549        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4570        M                                           #; (lsu) a4  <-- 12
       0     4571        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4572        M 0x800017dc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4573        M 0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4574        M 0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4575        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4576        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     4579        M 0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
       0     4584        M 0x80001e90 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4585        M 0x80001e94 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4586        M 0x80001e98 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001e70
       0     4587        M 0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4588        M 0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4589        M 0x80001e78 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4590        M 0x80001e7c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4591        M 0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4592        M 0x80001e84 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4593        M 0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4594        M 0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
       0     4595        M                                           #; (lsu) a0  <-- 48
       0     4597        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4598        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4599        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4600        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4601        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     4602        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     4603        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4604        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     4605        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4616        M                                           #; (lsu) a4  <-- 12
       0     4617        M 0x800017c4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4618        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 13 ~~> Word[0x80003224]
       0     4619        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 12, (wrb) a4  <-- 0x80003230
       0     4620        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003230, 48 ~~> Byte[0x80003278]
       0     4621        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4642        M                                           #; (lsu) a4  <-- 13
       0     4643        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4644        M 0x800017dc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4645        M 0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4646        M 0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4647        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4648        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     4651        M 0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
       0     4656        M 0x80001e90 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4657        M 0x80001e94 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4658        M 0x80001e98 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001e70
       0     4659        M 0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4660        M 0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4661        M 0x80001e78 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4662        M 0x80001e7c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4663        M 0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4664        M 0x80001e84 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4665        M 0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4666        M 0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
       0     4667        M                                           #; (lsu) a0  <-- 48
       0     4669        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4670        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4671        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4672        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4673        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     4674        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     4675        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4676        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     4677        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4688        M                                           #; (lsu) a4  <-- 13
       0     4689        M 0x800017c4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4690        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 14 ~~> Word[0x80003224]
       0     4691        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 13, (wrb) a4  <-- 0x80003231
       0     4692        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003231, 48 ~~> Byte[0x80003279]
       0     4693        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4714        M                                           #; (lsu) a4  <-- 14
       0     4715        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4716        M 0x800017dc snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4717        M 0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4718        M 0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4719        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4720        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     4723        M 0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
       0     4728        M 0x80001e90 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4729        M 0x80001e94 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4730        M 0x80001e98 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001e70
       0     4731        M 0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4732        M 0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4733        M 0x80001e78 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4734        M 0x80001e7c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4735        M 0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4736        M 0x80001e84 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4737        M 0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4738        M 0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
       0     4739        M                                           #; (lsu) a0  <-- 48
       0     4741        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4742        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4743        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4744        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4745        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     4746        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     4747        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4748        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     4749        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4760        M                                           #; (lsu) a4  <-- 14
       0     4761        M 0x800017c4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4762        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 15 ~~> Word[0x80003224]
       0     4763        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 14, (wrb) a4  <-- 0x80003232
       0     4764        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003232, 48 ~~> Byte[0x8000327a]
       0     4765        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4786        M                                           #; (lsu) a4  <-- 15
       0     4787        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4788        M 0x800017dc snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4789        M 0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4790        M 0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4791        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4792        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     4795        M 0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
       0     4800        M 0x80001e90 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4801        M 0x80001e94 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4802        M 0x80001e98 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001e70
       0     4803        M 0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4804        M 0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4805        M 0x80001e78 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4806        M 0x80001e7c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4807        M 0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4808        M 0x80001e84 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4809        M 0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4810        M 0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
       0     4811        M                                           #; (lsu) a0  <-- 48
       0     4813        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4814        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4815        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4816        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4817        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     4818        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     4819        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4820        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     4821        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4832        M                                           #; (lsu) a4  <-- 15
       0     4833        M 0x800017c4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4834        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 16 ~~> Word[0x80003224]
       0     4835        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 15, (wrb) a4  <-- 0x80003233
       0     4836        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003233, 48 ~~> Byte[0x8000327b]
       0     4837        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     4858        M                                           #; (lsu) a4  <-- 16
       0     4859        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4860        M 0x800017dc snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4861        M 0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4862        M 0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4863        M 0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4864        M 0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
       0     4867        M 0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
       0     4872        M 0x80001e90 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4873        M 0x80001e94 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4874        M 0x80001e98 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4875        M 0x80001e9c j       pc + 0x8               #; goto 0x80001ea4
       0     4887        M 0x80001ea4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4888        M 0x80001ea8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4889        M 0x80001eac xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4899        M 0x80001eb0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4900        M 0x80001eb4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4901        M 0x80001eb8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001ee8
       0     4922        M 0x80001ee8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4923        M 0x80001eec mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     4936        M 0x80001ef0 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     4937        M 0x80001efc lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001ef4 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     4938        M 0x80001ef8 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     4939        M                                           #; (f:lsu) fs0  <-- 0.0
       0     4941        M                                           #; (lsu) s10 <-- 0x80002e8e
       0     4946        M 0x80001f00 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     4949        M                                           #; (lsu) s9  <-- 8
       0     4950        M 0x80001f04 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     4953        M                                           #; (lsu) s8  <-- 16
       0     4954        M 0x80001f08 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     4957        M                                           #; (lsu) s7  <-- 0
       0     4958        M 0x80001f0c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     4961        M                                           #; (lsu) s6  <-- 0
       0     4962        M 0x80001f10 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     4965        M                                           #; (lsu) s5  <-- -1
       0     4966        M 0x80001f14 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     4969        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     4970        M 0x80001f18 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     4973        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     4974        M 0x80001f1c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     4977        M                                           #; (lsu) s2  <-- 0x800017a4
       0     4978        M 0x80001f20 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     4981        M                                           #; (lsu) s1  <-- 8
       0     4982        M 0x80001f24 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     4985        M                                           #; (lsu) s0  <-- 0
       0     4986        M 0x80001f28 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     4987        M 0x80001f2c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     4989        M                                           #; (lsu) ra  <-- 0x80000ed4
       0     4990        M 0x80001f30 ret                            #; ra  = 0x80000ed4, goto 0x80000ed4
       0     5002        M 0x80000ed4 j       pc + 0x7c0             #; goto 0x80001694
       0     5005        M 0x80001694 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5006        M 0x80001698 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5007        M 0x8000169c li      s7, 46                 #; (wrb) s7  <-- 46
       0     5017        M 0x800016a0 addi    s0, s10, 1             #; s10 = 0x80002e8e, (wrb) s0  <-- 0x80002e8f
       0     5018        M 0x800016a4 j       pc - 0xa74             #; goto 0x80000c30
       0     5029        M 0x80000c30 addi    s10, s0, 2             #; s0  = 0x80002e8f, (wrb) s10 <-- 0x80002e91
       0     5030        M 0x80000c34 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5031        M 0x80000c38 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5032        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e8f, a0  <~~ Byte[0x80002e8f]
       0     5043        M                                           #; (lsu) a0  <-- 10
       0     5044        M 0x80000c40 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5045        M 0x80000c44 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5046        M 0x80000c48 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5047        M 0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5053        M 0x80000c50 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5054        M 0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5055        M 0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
       0     5067        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5068        M 0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5069        M 0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5070        M 0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5071        M 0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
       0     5072        M 0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
       0     5073        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5074        M 0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
       0     5075        M 0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     5086        M                                           #; (lsu) a4  <-- 16
       0     5087        M 0x800017c4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5088        M 0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 17 ~~> Word[0x80003224]
       0     5089        M 0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 16, (wrb) a4  <-- 0x80003234
       0     5090        M 0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003234, 10 ~~> Byte[0x8000327c]
       0     5091        M 0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
       0     5112        M                                           #; (lsu) a4  <-- 17
       0     5113        M 0x800017d8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5114        M 0x800017dc snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5115        M 0x800017e0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5116        M 0x800017e4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5117        M 0x800017e8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5118        M 0x800017ec bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5119        M 0x800017f0 add     a0, a3, a2             #; a3  = 0x80003224, a2  = 0, (wrb) a0  <-- 0x80003224
       0     5120        M 0x800017f4 addi    a2, a0, 72             #; a0  = 0x80003224, (wrb) a2  <-- 0x8000326c
       0     5121        M 0x800017f8 sw      zero, 12(a0)           #; a0  = 0x80003224, 0 ~~> Word[0x80003230]
       0     5122        M 0x800017fc li      a3, 64                 #; (wrb) a3  <-- 64
       0     5131        M 0x80001800 sw      a3, 8(a0)              #; a0  = 0x80003224, 64 ~~> Word[0x8000322c]
       0     5132        M 0x80001804 sw      zero, 20(a0)           #; a0  = 0x80003224, 0 ~~> Word[0x80003238]
       0     5133        M 0x80001808 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5134        M 0x8000180c sw      a3, 16(a0)             #; a0  = 0x80003224, 1 ~~> Word[0x80003234]
       0     5143        M 0x80001810 sw      zero, 28(a0)           #; a0  = 0x80003224, 0 ~~> Word[0x80003240]
       0     5144        M 0x80001814 sw      a2, 24(a0)             #; a0  = 0x80003224, 0x8000326c ~~> Word[0x8000323c]
       0     5146        M 0x80001818 lw      a2, 0(a1)              #; a1  = 0x80003224, a2  <~~ Word[0x80003224]
       0     5147        M 0x8000181c addi    a3, a0, 8              #; a0  = 0x80003224, (wrb) a3  <-- 0x8000322c
       0     5156        M 0x80001820 sw      zero, 36(a0)           #; a0  = 0x80003224, 0 ~~> Word[0x80003248]
       0     5175        M                                           #; (lsu) a2  <-- 17
       0     5176        M 0x80001824 sw      a2, 32(a0)             #; a0  = 0x80003224, 17 ~~> Word[0x80003244]
       0     5177        M 0x80001828 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003828
       0     5178        M 0x8000182c addi    a0, a0, -1896          #; a0  = 0x80003828, (wrb) a0  <-- 0x800030c0
       0     5179        M 0x80001830 sw      a3, 0(a0)              #; a0  = 0x800030c0, 0x8000322c ~~> Word[0x800030c0]
       0     5180        M 0x80001834 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003834
       0     5181        M 0x80001838 addi    a0, a0, -1844          #; a0  = 0x80003834, (wrb) a0  <-- 0x80003100
       0     5182        M 0x8000183c lw      a2, 0(a0)              #; a0  = 0x80003100, a2  <~~ Word[0x80003100]
       0     5205        M                                           #; (lsu) a2  <-- 1
       0     5206        M 0x80001840 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5207        M 0x80001844 sw      zero, 0(a0)            #; a0  = 0x80003100, 0 ~~> Word[0x80003100]
       0     5208        M 0x80001848 sw      zero, 0(a1)            #; a1  = 0x80003224, 0 ~~> Word[0x80003224]
       0     5209        M 0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
       0     5212        M 0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e8f, (wrb) s0  <-- 0x80002e90
       0     5215        M 0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e91, (wrb) s10 <-- 0x80002e92
       0     5216        M 0x80000c64 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5217        M 0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e90, a0  <~~ Byte[0x80002e90]
       0     5230        M                                           #; (lsu) a0  <-- 0
       0     5231        M 0x80000c6c bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5243        M 0x80000c70 j       pc + 0xad8             #; goto 0x80001748
       0     5255        M 0x80001748 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5256        M 0x8000174c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001754
       0     5267        M 0x80001754 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5268        M 0x80001758 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5269        M 0x8000175c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5279        M 0x80001760 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80001764, goto 0x800017a4
       0     5293        M 0x800017a4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000184c
       0     5298        M 0x8000184c ret                            #; ra  = 0x80001764, goto 0x80001764
       0     5299        M 0x80001764 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5300        M 0x80001768 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5303        M                                           #; (lsu) s11 <-- 0
       0     5304        M 0x8000176c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5307        M                                           #; (lsu) s10 <-- 0
       0     5308        M 0x80001770 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5311        M                                           #; (lsu) s9  <-- 0
       0     5312        M 0x80001774 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5315        M                                           #; (lsu) s8  <-- 0
       0     5316        M 0x80001778 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5319        M                                           #; (lsu) s7  <-- 0
       0     5320        M 0x8000177c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5323        M                                           #; (lsu) s6  <-- 0
       0     5324        M 0x80001780 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5327        M                                           #; (lsu) s5  <-- 0
       0     5328        M 0x80001784 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5331        M                                           #; (lsu) s4  <-- 0
       0     5332        M 0x80001788 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5335        M                                           #; (lsu) s3  <-- 0
       0     5336        M 0x8000178c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5339        M                                           #; (lsu) s2  <-- 0
       0     5340        M 0x80001790 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5343        M                                           #; (lsu) s1  <-- 0
       0     5344        M 0x80001794 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5347        M                                           #; (lsu) s0  <-- 0
       0     5348        M 0x80001798 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5349        M 0x8000179c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5351        M                                           #; (lsu) ra  <-- 0x80000ba0
       0     5352        M 0x800017a0 ret                            #; ra  = 0x80000ba0, goto 0x80000ba0
       0     5364        M 0x80000ba0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5365        M 0x80000ba4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5367        M                                           #; (lsu) ra  <-- 0x80000b30
       0     5368        M 0x80000ba8 ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0     5378        M 0x80000b30 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b30
       0     5379        M 0x80000b34 addi    a0, a0, 1600           #; a0  = 0x80002b30, (wrb) a0  <-- 0x80003170
       0     5382        M 0x80000b38 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003170]
       0     5391        M 0x80000b44 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                         M                                           #; (f:lsu) ft3  <-- 0.0001
       0     5392        M 0x80000b48 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M 0x80000b3c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     5394        M                                           #; (lsu) ra  <-- 0x80002c00
                         M 0x80000b40 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     5395        M 0x80000b4c ret                            #; ra  = 0x80002c00, goto 0x80002c00
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0     5398        M 0x80002c00 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5399        M 0x80002c04 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c04
       0     5400        M 0x80002c08 jalr    ra, ra, 524            #; ra  = 0x80002c04, (wrb) ra  <-- 0x80002c0c, goto 0x80002e10
       0     5412        M 0x80002e10 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5413        M 0x80002e14 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c0c ~~> Word[0x0011ff5c]
       0     5414        M 0x80002e18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e18
       0     5415        M 0x80002e1c jalr    ra, ra, -1260          #; ra  = 0x80002e18, (wrb) ra  <-- 0x80002e20, goto 0x8000292c
       0     5426        M 0x8000292c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5429        M 0x80002930 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5430        M 0x80002934 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5433        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5434        M 0x80002938 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5437        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5438        M 0x8000293c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5439        M 0x80002940 ret                            #; ra  = 0x80002e20, goto 0x80002e20
       0     5441        M                                           #; (lsu) a0  <-- 0x00120190
       0     5442        M 0x80002e20 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5452        M                                           #; (lsu) a0  <-- 0
       0     5453        M 0x80002e24 mv      zero, a0               #; a0  = 0
       0     5454        M 0x80002e28 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5455        M 0x80002e2c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5457        M                                           #; (lsu) ra  <-- 0x80002c0c
       0     5458        M 0x80002e30 ret                            #; ra  = 0x80002c0c, goto 0x80002c0c
       0     5472        M 0x80002c0c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5476        M 0x80002c10 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c10
       0     5477        M 0x80002c14 jalr    ra, ra, 556            #; ra  = 0x80002c10, (wrb) ra  <-- 0x80002c18, goto 0x80002e3c
       0     5478        M 0x80002e3c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5479        M 0x80002e40 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5480        M 0x80002e44 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002c18 ~~> Word[0x0011ff5c]
       0     5481        M 0x80002e48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e48
       0     5482        M 0x80002e4c jalr    ra, ra, -1340          #; ra  = 0x80002e48, (wrb) ra  <-- 0x80002e50, goto 0x8000290c
       0     5493        M 0x8000290c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5497        M 0x80002910 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5498        M 0x80002914 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5502        M 0x80002918 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5505        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5506        M 0x8000291c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5507        M 0x80002920 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5509        M                                           #; (lsu) a0  <-- 0
       0     5510        M 0x80002924 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5511        M 0x80002928 ret                            #; ra  = 0x80002e50, goto 0x80002e50
       0     5512        M 0x80002e50 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5515        M                                           #; (lsu) t0  <-- 0
       0     5516        M 0x80002e54 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5517        M 0x80002e58 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5518        M 0x80002e5c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5519        M                                           #; (lsu) ra  <-- 0x80002c18
       0     5523        M 0x80002e60 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5524        M 0x80002e64 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5525        M 0x80002e68 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e68
       0     5526        M 0x80002e6c addi    t1, t1, 600            #; t1  = 0x80002e68, (wrb) t1  <-- 0x800030c0
       0     5534        M 0x80002e70 sw      t0, 0(t1)              #; t1  = 0x800030c0, 1 ~~> Word[0x800030c0]
       0     5535        M 0x80002e74 ret                            #; ra  = 0x80002c18, goto 0x80002c18
       0     5549        M 0x80002c18 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5549):
snitch_loads                                   134
snitch_stores                                  143
fpss_stores                                      5
fpss_loads                                      33
snitch_avg_load_latency                    12.0149
snitch_occupancy                            0.2338
snitch_fseq_rel_offloads                    0.0893
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.2169
fpss_avg_load_latency                       7.7879
fpss_occupancy                              0.0229
fpss_fpu_occupancy                          0.0150
fpss_fpu_rel_occupancy                      0.6535
cycles                                        5538
total_ipc                                   0.2568
