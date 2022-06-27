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

## Performance metrics

Performance metrics for section 0 @ (12, 2396):
snitch_loads                                    42
snitch_stores                                   75
fpss_stores                                      2
fpss_loads                                      21
snitch_avg_load_latency                    17.1429
snitch_occupancy                            0.1711
snitch_fseq_rel_offloads                    0.1873
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.3385
fpss_avg_load_latency                          9.0
fpss_occupancy                              0.0394
fpss_fpu_occupancy                          0.0273
fpss_fpu_rel_occupancy                      0.6915
cycles                                        2385
total_ipc                                   0.2105
