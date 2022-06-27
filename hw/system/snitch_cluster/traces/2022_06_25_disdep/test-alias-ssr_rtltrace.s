       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002a60
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002a60, (wrb) ra  <-- 4120, goto 0x80002a60
       0      269        M 0x80002a60 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003a60
       0      270        M 0x80002a64 addi    gp, gp, -280           #; gp  = 0x80003a60, (wrb) gp  <-- 0x80003948
       0      271        M 0x80002a68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a68
       0      272        M 0x80002a6c jalr    ra, ra, 964            #; ra  = 0x80002a68, (wrb) ra  <-- 0x80002a70, goto 0x80002e2c
       0      292        M 0x80002e2c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002e30 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002e34 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002e38 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002e3c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002e40 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002e44 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002e48 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002e4c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002e50 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002e54 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002e58 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002e5c ret                            #; ra  = 0x80002a70, goto 0x80002a70
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002a70 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002a74 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002a78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a78
       0      508        M 0x80002a7c jalr    ra, ra, 1036           #; ra  = 0x80002a78, (wrb) ra  <-- 0x80002a80, goto 0x80002e84
       0      523        M 0x80002e84 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002e88 ret                            #; ra  = 0x80002a80, goto 0x80002a80
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002a80 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002a84 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002a88 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x80002a8c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002a90 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002a94 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a94
       0      551        M 0x80002a98 addi    t0, t0, 1988           #; t0  = 0x80002a94, (wrb) t0  <-- 0x80003258
       0      552        M 0x80002a9c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a9c
       0      562        M 0x80002aa0 addi    t1, t1, 1984           #; t1  = 0x80002a9c, (wrb) t1  <-- 0x8000325c
       0      563        M 0x80002aa4 bge     t0, t1, pc + 16        #; t0  = 0x80003258, t1  = 0x8000325c, not taken
       0      564        M 0x80002aa8 sw      zero, 0(t0)            #; t0  = 0x80003258, 0 ~~> Word[0x80003258]
       0      565        M 0x80002aac addi    t0, t0, 4              #; t0  = 0x80003258, (wrb) t0  <-- 0x8000325c
       0      573        M 0x80002ab0 blt     t0, t1, pc - 8         #; t0  = 0x8000325c, t1  = 0x8000325c, not taken
       0      574        M 0x80002ab4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002ab8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x80002abc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002ac0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002ac4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002ac8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x80002acc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002ad0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002ad4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002ad8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x80002adc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002ae0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002ae4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002ae8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002aec fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002af0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002af4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002af8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002afc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002b00 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002b04 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002b08 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002b0c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002b10 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002b14 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002b18 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002b1c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002b20 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002b24 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002b28 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002b2c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002b30 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002b34 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002b38 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002b3c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002b40 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002b44 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002b48 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b48
       0      684        M 0x80002b4c lw      t0, 900(t0)            #; t0  = 0x80002b48, t0  <~~ Word[0x80002ecc]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002b50 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002b54 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002b58 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b58
       0      708        M 0x80002b5c lw      t2, 880(t2)            #; t2  = 0x80002b58, t2  <~~ Word[0x80002ec8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002b60 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002b64 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002b68 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002b6c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002b70 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002b74 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002b78 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002b7c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002b80 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b80
       0      762        M 0x80002b84 addi    t0, t0, 1480           #; t0  = 0x80002b80, (wrb) t0  <-- 0x80003148
       0      763        M 0x80002b88 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b88
       0      764        M 0x80002b8c addi    t1, t1, 1472           #; t1  = 0x80002b88, (wrb) t1  <-- 0x80003148
       0      775        M 0x80002b90 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b90
       0      776        M 0x80002b94 addi    t2, t2, 1464           #; t2  = 0x80002b90, (wrb) t2  <-- 0x80003148
       0      777        M 0x80002b98 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002b98
       0      778        M 0x80002b9c addi    t3, t3, 1472           #; t3  = 0x80002b98, (wrb) t3  <-- 0x80003158
       0      787        M 0x80002ba0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003148, (wrb) sp  <-- 0x801230b8
       0      788        M 0x80002ba4 sub     sp, sp, t1             #; sp  = 0x801230b8, t1  = 0x80003148, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002ba8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003148, (wrb) sp  <-- 0x801230b8
       0      790        M 0x80002bac sub     sp, sp, t3             #; sp  = 0x801230b8, t3  = 0x80003158, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002bb0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002bb4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002bb8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002bbc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002bc0 bge     t0, t1, pc + 24        #; t0  = 0x80003148, t1  = 0x80003148, taken, goto 0x80002bd8
       0      823        M 0x80002bd8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002bd8
       0      824        M 0x80002bdc addi    t0, t0, 1392           #; t0  = 0x80002bd8, (wrb) t0  <-- 0x80003148
       0      835        M 0x80002be0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002be0
       0      836        M 0x80002be4 addi    t1, t1, 1400           #; t1  = 0x80002be0, (wrb) t1  <-- 0x80003158
       0      837        M 0x80002be8 bge     t0, t1, pc + 20        #; t0  = 0x80003148, t1  = 0x80003158, not taken
       0      838        M 0x80002bec sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002bf0 addi    t0, t0, 4              #; t0  = 0x80003148, (wrb) t0  <-- 0x8000314c
       0      848        M 0x80002bf4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002bf8 blt     t0, t2, pc - 12        #; t0  = 0x8000314c, t2  = 0x80003148, not taken
       0      850        M 0x80002bfc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002c00 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002c04 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002c08 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002c0c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002c10 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002c14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c14
       0      877        M 0x80002c18 jalr    ra, ra, -1060          #; ra  = 0x80002c14, (wrb) ra  <-- 0x80002c1c, goto 0x800027f0
       0      898        M 0x800027f0 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x800027f4 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x800027f8 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x800027fc sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002800 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002804 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002808 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x8000280c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002810 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002814 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002818 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x8000281c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002820 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002824 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002828 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x8000282c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002830 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002834 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002838 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x8000283c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002840 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002844 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002848 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x8000284c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002850 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002854 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002858 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x8000285c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002860 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002864 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002868 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x8000286c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002870 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002874 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002878 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x8000287c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x80002880 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x80002884 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x80002888 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x8000288c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x80002890 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x80002894 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x80002898 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x8000289c sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x800028a0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x800028a4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x800028a8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x800028ac sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x800028b0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x800028b4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x800028b8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x800028bc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x800028c0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x800028c4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x800028c8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x800028cc remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x800028d0 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x800028d4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x800028d8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x800028dc li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x800028e0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x800028e4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800038e4
       0     1281        M 0x800028e8 addi    a1, a1, -1672          #; a1  = 0x800038e4, (wrb) a1  <-- 0x8000325c
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x800028ec add     a0, a0, a1             #; a0  = 0, a1  = 0x8000325c, (wrb) a0  <-- 0x8000325c
       0     1291        M 0x800028f0 sw      zero, 0(a0)            #; a0  = 0x8000325c, 0 ~~> Word[0x8000325c]
       0     1292        M 0x800028f4 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x800028f8 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x800028fc sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002900 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002904 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002908 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000290c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002910 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002914 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002918 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000291c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80002920 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80002924 lw      a0, 0(a1)              #; a1  = 0x8000325c, a0  <~~ Word[0x8000325c]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80002928 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x8000292c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x80002930 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x80002934 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x80002938 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x8000293c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x80002940 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x80002944 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x80002948 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x8000294c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x80002950 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x80002954 ret                            #; ra  = 0x80002c1c, goto 0x80002c1c
       0     1415        M 0x80002c1c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002c20 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002c24 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002c28 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002c2c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002c30 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002c34 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002c34
       0     1434        M 0x80002c38 addi    t0, t0, 60             #; t0  = 0x80002c34, (wrb) t0  <-- 0x80002c70
       0     1435        M 0x80002c3c csrw    mtvec, t0              #; t0  = 0x80002c70, (lsu) a4  <-- 4132
       0     1443        M 0x80002c40 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c40
       0     1444        M 0x80002c44 jalr    ra, ra, 544            #; ra  = 0x80002c40, (wrb) ra  <-- 0x80002c48, goto 0x80002e60
       0     1460        M 0x80002e60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80002e64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c48 ~~> Word[0x0011ff5c]
       0     1462        M 0x80002e68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e68
       0     1463        M 0x80002e6c jalr    ra, ra, -1264          #; ra  = 0x80002e68, (wrb) ra  <-- 0x80002e70, goto 0x80002978
       0     1481        M 0x80002978 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x8000297c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x80002980 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x80002984 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x80002988 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x8000298c ret                            #; ra  = 0x80002e70, goto 0x80002e70
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80002e70 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80002e74 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80002e78 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x80002e7c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x80002c48
       0     1541        M 0x80002e80 ret                            #; ra  = 0x80002c48, goto 0x80002c48
       0     1545        M 0x80002c48 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000c48
       0     1546        M 0x80002c4c jalr    ra, ra, -1204          #; ra  = 0x80000c48, (wrb) ra  <-- 0x80002c50, goto 0x80000794
       0     1551        M 0x80000794 addi    sp, sp, -144           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fed0
       0     1552        M 0x80000798 sw      ra, 140(sp)            #; sp  = 0x0011fed0, 0x80002c50 ~~> Word[0x0011ff5c]
       0     1553        M 0x8000079c sw      s0, 136(sp)            #; sp  = 0x0011fed0, 0 ~~> Word[0x0011ff58]
       0     1554        M 0x800007a0 sw      s1, 132(sp)            #; sp  = 0x0011fed0, 0 ~~> Word[0x0011ff54]
       0     1555        M 0x800007a4 sw      s2, 128(sp)            #; sp  = 0x0011fed0, 0 ~~> Word[0x0011ff50]
       0     1558        M 0x800007a8 fsd     fs0, 120(sp)           #; 0.0 ~~> Doub[0x0011ff48]
       0     1559        M 0x800007ac fsd     fs1, 112(sp)           #; 0.0 ~~> Doub[0x0011ff40]
       0     1569        M 0x800007b0 fsd     fs2, 104(sp)           #; 0.0 ~~> Doub[0x0011ff38]
       0     1570        M 0x800007b4 fsd     fs3, 96(sp)            #; 0.0 ~~> Doub[0x0011ff30]
       0     1571        M 0x800007b8 fsd     fs4, 88(sp)            #; 0.0 ~~> Doub[0x0011ff28]
       0     1572        M 0x800007bc fsd     fs5, 80(sp)            #; 0.0 ~~> Doub[0x0011ff20]
       0     1581        M 0x800007c0 fsd     fs6, 72(sp)            #; 0.0 ~~> Doub[0x0011ff18]
       0     1582        M 0x800007c4 fsd     fs7, 64(sp)            #; 0.0 ~~> Doub[0x0011ff10]
       0     1583        M 0x800007c8 fsd     fs8, 56(sp)            #; 0.0 ~~> Doub[0x0011ff08]
       0     1584        M 0x800007cc fsd     fs9, 48(sp)            #; 0.0 ~~> Doub[0x0011ff00]
       0     1593        M 0x800007d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
                         M 0x800007d0 fsd     fs10, 40(sp)           #; 0.0 ~~> Doub[0x0011fef8]
       0     1594        M 0x800007dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x800007d4 fsd     fs11, 32(sp)           #; 0.0 ~~> Doub[0x0011fef0]
       0     1603        M 0x800007e0 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1604        M 0x800007e4 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1606        M                                           #; (lsu) a1  <-- 0
       0     1607        M 0x800007e8 bnez    a1, pc + 876           #; a1  = 0, not taken
       0     1608        M 0x800007ec lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1615        M 0x800007f0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1616        M 0x800007f4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1619        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1620        M 0x800007f8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1623        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1624        M 0x800007fc lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1627        M                                           #; (lsu) s0  <-- 0x00100000
       0     1631        M 0x80000800 lw      a2, 80(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
       0     1634        M                                           #; (lsu) a2  <-- 0x00100000
       0     1635        M 0x80000804 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1636        M 0x80000808 addi    a1, s0, 80             #; s0  = 0x00100000, (wrb) a1  <-- 0x00100050
       0     1638        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1639        M 0x8000080c add     a2, a3, a2             #; a3  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
       0     1644        M 0x80000810 bgeu    a2, a1, pc + 12        #; a2  = 0x0011df30, a1  = 0x00100050, taken, goto 0x8000081c
       0     1645        M 0x8000081c srli    a2, s0, 20             #; s0  = 0x00100000, (wrb) a2  <-- 1
       0     1670        M 0x80000820 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1671        M 0x80000824 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1672        M 0x80000828 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     1673        M 0x8000082c sltu    a3, s0, a3             #; s0  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     1683        M 0x80000830 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     1684        M 0x80000834 sw      a1, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1685        M 0x80000838 beqz    a2, pc + 412           #; a2  = 1, not taken
       0     1686        M 0x8000083c li      s2, 8                  #; (wrb) s2  <-- 8
       0     1696        M 0x80000840 li      s1, 9                  #; (wrb) s1  <-- 9
       0     1697        M 0x80000844 li      a0, 64                 #; (wrb) a0  <-- 64
       0     1698        M 0x80000848 li      a1, 192                #; (wrb) a1  <-- 192
       0     1699        M 0x8000084c scfgw   s1, a0                 #; s1  = 9, a0  = 64
       0     1722        M 0x80000850 scfgw   s2, a1                 #; s2  = 8, a1  = 192
       0     1723        M 0x80000854 li      a0, 32                 #; (wrb) a0  <-- 32
       0     1724        M 0x80000858 scfgw   zero, a0               #; a0  = 32
       0     1725        M 0x8000085c scfgwi  s0, 896                #; s0  = 0x00100000
       0     1734        M 0x80000860 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003860
       0     1735        M 0x80000864 addi    a0, a0, -1800          #; a0  = 0x80003860, (wrb) a0  <-- 0x80003158
       0     1738        M 0x80000868 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003158]
       0     1739        M 0x8000086c csrrsi  a0, ssr, 1             #; 
       0     1747        M 0x80000870 fcvt.d.w ft4, zero             #; ac1  = 0, (f:lsu) ft3  <-- 1.0
       0     1748        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1749        M 0x8000087c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000387c
                         M 0x80000874 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1750        M 0x80000878 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0, (f:fpu) ft0  <-- 0.0
       0     1751        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1758        M 0x80000880 addi    a0, a0, -1820          #; a0  = 0x8000387c, (wrb) a0  <-- 0x80003160
       0     1760        M 0x80000888 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003888
       0     1761        M 0x8000088c addi    a0, a0, -1824          #; a0  = 0x80003888, (wrb) a0  <-- 0x80003168
                         M 0x80000884 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003160]
       0     1770        M                                           #; (f:lsu) ft3  <-- 2.0
       0     1771        M 0x80000894 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003894
       0     1772        M 0x80000898 addi    a0, a0, -1828          #; a0  = 0x80003894, (wrb) a0  <-- 0x80003170
                         M 0x80000890 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003168]
       0     1775        M 0x8000089c fld     ft5, 0(a0)             #; ft5  <~~ Doub[0x80003170]
       0     1781        M                                           #; (f:lsu) ft4  <-- 3.0
       0     1782        M 0x800008a0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038a0
       0     1783        M 0x800008a4 addi    a0, a0, -1832          #; a0  = 0x800038a0, (wrb) a0  <-- 0x80003178
       0     1784        M                                           #; (f:lsu) ft5  <-- 4.0
       0     1786        M 0x800008a8 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x80003178]
       0     1787        M 0x800008ac fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1788        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1795        M                                           #; (f:lsu) ft6  <-- 5.0
       0     1796        M 0x800008b0 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
       0     1797        M 0x800008bc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038bc
                         M 0x800008b4 fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0, (f:fpu) ft0  <-- 3.0
       0     1798        M 0x800008b8 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0, (f:fpu) ft0  <-- 4.0
       0     1799        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1806        M 0x800008c0 addi    a0, a0, -1852          #; a0  = 0x800038bc, (wrb) a0  <-- 0x80003180
       0     1808        M 0x800008c8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038c8
       0     1809        M 0x800008cc addi    a0, a0, -1856          #; a0  = 0x800038c8, (wrb) a0  <-- 0x80003188
                         M 0x800008c4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003180]
       0     1818        M                                           #; (f:lsu) ft3  <-- 6.0
       0     1819        M 0x800008d4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038d4
       0     1820        M 0x800008d8 addi    a0, a0, -1860          #; a0  = 0x800038d4, (wrb) a0  <-- 0x80003190
                         M 0x800008d0 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003188]
       0     1823        M 0x800008dc fld     ft5, 0(a0)             #; ft5  <~~ Doub[0x80003190]
       0     1829        M                                           #; (f:lsu) ft4  <-- 7.0
       0     1830        M 0x800008e0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038e0
       0     1831        M 0x800008e4 addi    a0, a0, -1864          #; a0  = 0x800038e0, (wrb) a0  <-- 0x80003198
       0     1832        M                                           #; (f:lsu) ft5  <-- 8.0
       0     1834        M 0x800008e8 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x80003198]
       0     1835        M 0x800008ec fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1836        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1843        M                                           #; (f:lsu) ft6  <-- 9.0
       0     1844        M 0x800008f0 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
       0     1845        M 0x800008f4 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0, (f:fpu) ft0  <-- 7.0
       0     1846        M 0x800008f8 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0, (f:fpu) ft0  <-- 8.0
       0     1847        M 0x800008fc csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 9.0
       0     1854        M 0x80000900 li      a2, 10                 #; (wrb) a2  <-- 10
       0     1855        M 0x80000904 mv      a0, s0                 #; s0  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1856        M 0x80000908 mv      a1, s0                 #; s0  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     1857        M 0x8000090c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000090c
       0     1866        M 0x80000910 jalr    ra, ra, -728           #; ra  = 0x8000090c, (wrb) ra  <-- 0x80000914, goto 0x80000634
       0     1889        M 0x80000634 addi    sp, sp, -96            #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011fe70
       0     1892        M 0x80000638 fsd     fs0, 88(sp)            #; 0.0 ~~> Doub[0x0011fec8]
       0     1893        M 0x8000063c fsd     fs1, 80(sp)            #; 0.0 ~~> Doub[0x0011fec0]
       0     1903        M 0x80000640 fsd     fs2, 72(sp)            #; 0.0 ~~> Doub[0x0011feb8]
       0     1904        M 0x80000644 fsd     fs3, 64(sp)            #; 0.0 ~~> Doub[0x0011feb0]
       0     1905        M 0x80000648 fsd     fs4, 56(sp)            #; 0.0 ~~> Doub[0x0011fea8]
       0     1906        M 0x8000064c fsd     fs5, 48(sp)            #; 0.0 ~~> Doub[0x0011fea0]
       0     1915        M 0x80000650 fsd     fs6, 40(sp)            #; 0.0 ~~> Doub[0x0011fe98]
       0     1916        M 0x80000654 fsd     fs7, 32(sp)            #; 0.0 ~~> Doub[0x0011fe90]
       0     1917        M 0x80000658 fsd     fs8, 24(sp)            #; 0.0 ~~> Doub[0x0011fe88]
       0     1918        M 0x8000065c fsd     fs9, 16(sp)            #; 0.0 ~~> Doub[0x0011fe80]
       0     1927        M 0x80000668 addi    a6, a2, -1             #; a2  = 10, (wrb) a6  <-- 9
                         M 0x80000660 fsd     fs10, 8(sp)            #; 0.0 ~~> Doub[0x0011fe78]
       0     1928        M 0x8000066c slli    a4, a6, 3              #; a6  = 9, (wrb) a4  <-- 72
                         M 0x80000664 fsd     fs11, 0(sp)            #; 0.0 ~~> Doub[0x0011fe70]
       0     1937        M 0x80000670 add     a3, a4, a1             #; a4  = 72, a1  = 0x00100000, (wrb) a3  <-- 0x00100048
       0     1938        M 0x80000674 add     t2, a4, a0             #; a4  = 72, a0  = 0x00100000, (wrb) t2  <-- 0x00100048
       0     1939        M 0x80000678 bgeu    a3, a4, pc + 20        #; a3  = 0x00100048, a4  = 72, taken, goto 0x8000068c
       0     1949        M 0x8000068c sltu    a7, a3, a0             #; a3  = 0x00100048, a0  = 0x00100000, (wrb) a7  <-- 0
       0     1961        M 0x80000690 bgeu    t2, a4, pc - 12        #; t2  = 0x00100048, a4  = 72, taken, goto 0x80000684
       0     1962        M 0x80000684 sltu    a5, t2, a1             #; t2  = 0x00100048, a1  = 0x00100000, (wrb) a5  <-- 0
       0     1963        M 0x80000688 j       pc + 0x10              #; goto 0x80000698
       0     1964        M 0x80000698 or      t0, a7, a5             #; a7  = 0, a5  = 0, (wrb) t0  <-- 0
       0     1965        M 0x8000069c srli    a5, a1, 20             #; a1  = 0x00100000, (wrb) a5  <-- 1
       0     1976        M 0x800006a0 snez    t1, a5                 #; a5  = 1, (wrb) t1  <-- 1
       0     1977        M 0x800006a4 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     1978        M 0x800006a8 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
       0     1979        M 0x800006ac bgeu    a3, a4, pc + 12        #; a3  = 0x00100048, a4  = 72, taken, goto 0x800006b8
       0     1988        M 0x800006b8 sltu    a3, a3, a7             #; a3  = 0x00100048, a7  = 0x00120001, (wrb) a3  <-- 1
       0     1989        M 0x800006bc and     a3, t1, a3             #; t1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     2000        M 0x800006c0 and     t0, t0, a3             #; t0  = 0, a3  = 1, (wrb) t0  <-- 0
       0     2001        M 0x800006c4 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
       0     2002        M 0x800006c8 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     2003        M 0x800006cc bgeu    t2, a4, pc + 12        #; t2  = 0x00100048, a4  = 72, taken, goto 0x800006d8
       0     2012        M 0x800006d8 sltu    a4, t2, a7             #; t2  = 0x00100048, a7  = 0x00120001, (wrb) a4  <-- 1
       0     2013        M 0x800006dc and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     2024        M 0x800006e0 and     a3, a3, t0             #; a3  = 1, t0  = 0, (wrb) a3  <-- 0
       0     2025        M 0x800006e4 beqz    a3, pc + 96            #; a3  = 0, taken, goto 0x80000744
       0     2049        M 0x8000074c addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100000]
       0     2050        M                                           #; (f:lsu) ft3  <-- 0.0
       0     2051        M 0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100000]
       0     2059        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100000, (wrb) a0  <-- 0x00100008
       0     2060        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
       0     2061        M 0x80000758 bnez    a2, pc - 20            #; a2  = 9, taken, goto 0x80000744
       0     2064        M 0x8000074c addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100008]
       0     2065        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100008, (wrb) a0  <-- 0x00100010
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     2066        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
                         M 0x80000748 fsd     ft3, 0(a0)             #; 1.0 ~~> Doub[0x00100008]
       0     2067        M 0x80000758 bnez    a2, pc - 20            #; a2  = 8, taken, goto 0x80000744
       0     2070        M 0x8000074c addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100010]
       0     2071        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100010, (wrb) a0  <-- 0x00100018
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     2072        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
                         M 0x80000748 fsd     ft3, 0(a0)             #; 2.0 ~~> Doub[0x00100010]
       0     2073        M 0x80000758 bnez    a2, pc - 20            #; a2  = 7, taken, goto 0x80000744
       0     2076        M 0x8000074c addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100018]
       0     2077        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100018, (wrb) a0  <-- 0x00100020
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     2078        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
                         M 0x80000748 fsd     ft3, 0(a0)             #; 3.0 ~~> Doub[0x00100018]
       0     2079        M 0x80000758 bnez    a2, pc - 20            #; a2  = 6, taken, goto 0x80000744
       0     2082        M 0x8000074c addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100020]
       0     2083        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100020, (wrb) a0  <-- 0x00100028
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     2084        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
                         M 0x80000748 fsd     ft3, 0(a0)             #; 4.0 ~~> Doub[0x00100020]
       0     2085        M 0x80000758 bnez    a2, pc - 20            #; a2  = 5, taken, goto 0x80000744
       0     2088        M 0x8000074c addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100028]
       0     2089        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100028, (wrb) a0  <-- 0x00100030
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     2090        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
                         M 0x80000748 fsd     ft3, 0(a0)             #; 5.0 ~~> Doub[0x00100028]
       0     2091        M 0x80000758 bnez    a2, pc - 20            #; a2  = 4, taken, goto 0x80000744
       0     2094        M 0x8000074c addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100030]
       0     2095        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100030, (wrb) a0  <-- 0x00100038
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     2096        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
                         M 0x80000748 fsd     ft3, 0(a0)             #; 6.0 ~~> Doub[0x00100030]
       0     2097        M 0x80000758 bnez    a2, pc - 20            #; a2  = 3, taken, goto 0x80000744
       0     2100        M 0x8000074c addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100038]
       0     2101        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100038, (wrb) a0  <-- 0x00100040
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     2102        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
                         M 0x80000748 fsd     ft3, 0(a0)             #; 7.0 ~~> Doub[0x00100038]
       0     2103        M 0x80000758 bnez    a2, pc - 20            #; a2  = 2, taken, goto 0x80000744
       0     2106        M 0x8000074c addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100040]
       0     2107        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100040, (wrb) a0  <-- 0x00100048
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     2108        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
                         M 0x80000748 fsd     ft3, 0(a0)             #; 8.0 ~~> Doub[0x00100040]
       0     2109        M 0x80000758 bnez    a2, pc - 20            #; a2  = 1, taken, goto 0x80000744
       0     2112        M 0x8000074c addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100048]
       0     2113        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100048, (wrb) a0  <-- 0x00100050
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     2114        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
                         M 0x80000748 fsd     ft3, 0(a0)             #; 9.0 ~~> Doub[0x00100048]
       0     2115        M 0x80000758 bnez    a2, pc - 20            #; a2  = 0, not taken
       0     2118        M 0x8000075c fld     fs11, 0(sp)            #; fs11 <~~ Doub[0x0011fe70]
       0     2119        M                                           #; (f:lsu) fs11 <-- 0.0
       0     2130        M 0x80000760 fld     fs10, 8(sp)            #; fs10 <~~ Doub[0x0011fe78]
       0     2131        M 0x80000764 fld     fs9, 16(sp)            #; fs9  <~~ Doub[0x0011fe80], (f:lsu) fs10 <-- 0.0
       0     2132        M 0x80000768 fld     fs8, 24(sp)            #; fs8  <~~ Doub[0x0011fe88], (f:lsu) fs9  <-- 0.0
       0     2133        M 0x8000076c fld     fs7, 32(sp)            #; fs7  <~~ Doub[0x0011fe90], (f:lsu) fs8  <-- 0.0
       0     2134        M                                           #; (f:lsu) fs7  <-- 0.0
       0     2142        M 0x80000770 fld     fs6, 40(sp)            #; fs6  <~~ Doub[0x0011fe98]
       0     2143        M 0x80000774 fld     fs5, 48(sp)            #; fs5  <~~ Doub[0x0011fea0], (f:lsu) fs6  <-- 0.0
       0     2144        M 0x80000778 fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011fea8], (f:lsu) fs5  <-- 0.0
       0     2145        M 0x8000077c fld     fs3, 64(sp)            #; fs3  <~~ Doub[0x0011feb0], (f:lsu) fs4  <-- 0.0
       0     2146        M                                           #; (f:lsu) fs3  <-- 0.0
       0     2154        M 0x80000780 fld     fs2, 72(sp)            #; fs2  <~~ Doub[0x0011feb8]
       0     2155        M 0x8000078c addi    sp, sp, 96             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fed0
                         M 0x80000784 fld     fs1, 80(sp)            #; fs1  <~~ Doub[0x0011fec0], (f:lsu) fs2  <-- 0.0
       0     2156        M 0x80000790 ret                            #; ra  = 0x80000914, goto 0x80000914
                         M 0x80000788 fld     fs0, 88(sp)            #; fs0  <~~ Doub[0x0011fec8], (f:lsu) fs1  <-- 0.0
       0     2157        M                                           #; (f:lsu) fs0  <-- 0.0
       0     2161        M 0x80000914 li      a0, 64                 #; (wrb) a0  <-- 64
       0     2162        M 0x80000918 li      a1, 192                #; (wrb) a1  <-- 192
       0     2163        M 0x8000091c scfgw   s1, a0                 #; s1  = 9, a0  = 64
       0     2164        M 0x80000920 scfgw   s2, a1                 #; s2  = 8, a1  = 192
       0     2165        M 0x80000924 li      a0, 32                 #; (wrb) a0  <-- 32
       0     2166        M 0x80000928 scfgw   zero, a0               #; a0  = 32, (acc) ra  <-- 0x00a020ab
       0     2167        M 0x8000092c scfgwi  s0, 768                #; s0  = 0x00100000
       0     2177        M 0x80000930 csrrsi  a0, ssr, 1             #; 
       0     2179        M 0x80000934 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2180        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2181        M 0x80000938 fadd.d  ft3, ft0, ft3          #; ft0  = 1.0, ft3  = 0.0
       0     2184        M                                           #; (f:fpu) ft3  <-- 1.0
       0     2185        M 0x8000093c fadd.d  ft3, ft3, ft0          #; ft3  = 1.0, ft0  = 2.0
       0     2188        M                                           #; (f:fpu) ft3  <-- 3.0
       0     2190        M 0x80000940 fadd.d  ft3, ft3, ft0          #; ft3  = 3.0, ft0  = 3.0
       0     2193        M                                           #; (f:fpu) ft3  <-- 6.0
       0     2194        M 0x80000944 fadd.d  ft3, ft3, ft0          #; ft3  = 6.0, ft0  = 4.0
       0     2197        M                                           #; (f:fpu) ft3  <-- 10.0
       0     2198        M 0x80000948 fadd.d  ft3, ft3, ft0          #; ft3  = 10.0, ft0  = 5.0
       0     2201        M                                           #; (f:fpu) ft3  <-- 15.0
       0     2202        M 0x8000094c fadd.d  ft3, ft3, ft0          #; ft3  = 15.0, ft0  = 6.0
       0     2205        M                                           #; (f:fpu) ft3  <-- 21.0
       0     2206        M 0x80000950 fadd.d  ft3, ft3, ft0          #; ft3  = 21.0, ft0  = 7.0
       0     2209        M                                           #; (f:fpu) ft3  <-- 28.0
       0     2210        M 0x80000954 fadd.d  ft3, ft3, ft0          #; ft3  = 28.0, ft0  = 8.0
       0     2213        M 0x80000964 addi    a0, s0, 8              #; s0  = 0x00100000, (wrb) a0  <-- 0x00100008
                         M                                           #; (f:fpu) ft3  <-- 36.0
       0     2214        M 0x80000968 li      a2, 9                  #; (wrb) a2  <-- 9
                         M 0x80000958 fadd.d  ft3, ft3, ft0          #; ft3  = 36.0, ft0  = 9.0
       0     2215        M 0x8000096c mv      a1, s0                 #; s0  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     2217        M                                           #; (f:fpu) ft3  <-- 45.0
       0     2218        M 0x8000095c fsd     ft3, 16(sp)            #; 45.0 ~~> Doub[0x0011fee0]
       0     2219        M 0x80000960 csrrci  a0, ssr, 1             #; 
       0     2224        M 0x80000970 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000970
       0     2225        M 0x80000974 jalr    ra, ra, -828           #; ra  = 0x80000970, (wrb) ra  <-- 0x80000978, goto 0x80000634
       0     2238        M 0x80000634 addi    sp, sp, -96            #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011fe70
       0     2241        M 0x80000638 fsd     fs0, 88(sp)            #; 0.0 ~~> Doub[0x0011fec8]
       0     2242        M 0x8000063c fsd     fs1, 80(sp)            #; 0.0 ~~> Doub[0x0011fec0]
       0     2243        M 0x80000640 fsd     fs2, 72(sp)            #; 0.0 ~~> Doub[0x0011feb8]
       0     2244        M 0x80000644 fsd     fs3, 64(sp)            #; 0.0 ~~> Doub[0x0011feb0]
       0     2245        M 0x80000648 fsd     fs4, 56(sp)            #; 0.0 ~~> Doub[0x0011fea8]
       0     2246        M 0x8000064c fsd     fs5, 48(sp)            #; 0.0 ~~> Doub[0x0011fea0]
       0     2247        M 0x80000650 fsd     fs6, 40(sp)            #; 0.0 ~~> Doub[0x0011fe98]
       0     2248        M 0x80000654 fsd     fs7, 32(sp)            #; 0.0 ~~> Doub[0x0011fe90]
       0     2249        M 0x80000658 fsd     fs8, 24(sp)            #; 0.0 ~~> Doub[0x0011fe88]
       0     2250        M 0x8000065c fsd     fs9, 16(sp)            #; 0.0 ~~> Doub[0x0011fe80]
       0     2251        M 0x80000668 addi    a6, a2, -1             #; a2  = 9, (wrb) a6  <-- 8
                         M 0x80000660 fsd     fs10, 8(sp)            #; 0.0 ~~> Doub[0x0011fe78]
       0     2252        M 0x8000066c slli    a4, a6, 3              #; a6  = 8, (wrb) a4  <-- 64
                         M 0x80000664 fsd     fs11, 0(sp)            #; 0.0 ~~> Doub[0x0011fe70]
       0     2253        M 0x80000670 add     a3, a4, a1             #; a4  = 64, a1  = 0x00100000, (wrb) a3  <-- 0x00100040
       0     2254        M 0x80000674 add     t2, a4, a0             #; a4  = 64, a0  = 0x00100008, (wrb) t2  <-- 0x00100048
       0     2255        M 0x80000678 bgeu    a3, a4, pc + 20        #; a3  = 0x00100040, a4  = 64, taken, goto 0x8000068c
       0     2256        M 0x8000068c sltu    a7, a3, a0             #; a3  = 0x00100040, a0  = 0x00100008, (wrb) a7  <-- 0
       0     2259        M 0x80000690 bgeu    t2, a4, pc - 12        #; t2  = 0x00100048, a4  = 64, taken, goto 0x80000684
       0     2260        M 0x80000684 sltu    a5, t2, a1             #; t2  = 0x00100048, a1  = 0x00100000, (wrb) a5  <-- 0
       0     2261        M 0x80000688 j       pc + 0x10              #; goto 0x80000698
       0     2262        M 0x80000698 or      t0, a7, a5             #; a7  = 0, a5  = 0, (wrb) t0  <-- 0
       0     2263        M 0x8000069c srli    a5, a1, 20             #; a1  = 0x00100000, (wrb) a5  <-- 1
       0     2265        M 0x800006a0 snez    t1, a5                 #; a5  = 1, (wrb) t1  <-- 1
       0     2266        M 0x800006a4 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     2267        M 0x800006a8 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
       0     2268        M 0x800006ac bgeu    a3, a4, pc + 12        #; a3  = 0x00100040, a4  = 64, taken, goto 0x800006b8
       0     2269        M 0x800006b8 sltu    a3, a3, a7             #; a3  = 0x00100040, a7  = 0x00120001, (wrb) a3  <-- 1
       0     2270        M 0x800006bc and     a3, t1, a3             #; t1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     2272        M 0x800006c0 and     t0, t0, a3             #; t0  = 0, a3  = 1, (wrb) t0  <-- 0
       0     2273        M 0x800006c4 srli    a3, a0, 20             #; a0  = 0x00100008, (wrb) a3  <-- 1
       0     2274        M 0x800006c8 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     2275        M 0x800006cc bgeu    t2, a4, pc + 12        #; t2  = 0x00100048, a4  = 64, taken, goto 0x800006d8
       0     2276        M 0x800006d8 sltu    a4, t2, a7             #; t2  = 0x00100048, a7  = 0x00120001, (wrb) a4  <-- 1
       0     2277        M 0x800006dc and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     2279        M 0x800006e0 and     a3, a3, t0             #; a3  = 1, t0  = 0, (wrb) a3  <-- 0
       0     2280        M 0x800006e4 beqz    a3, pc + 96            #; a3  = 0, taken, goto 0x80000744
       0     2286        M 0x8000074c addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100000]
       0     2287        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100008, (wrb) a0  <-- 0x00100010
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2288        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
                         M 0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100008]
       0     2289        M 0x80000758 bnez    a2, pc - 20            #; a2  = 8, taken, goto 0x80000744
       0     2292        M 0x8000074c addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100008]
       0     2293        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100010, (wrb) a0  <-- 0x00100018
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2294        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
                         M 0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100010]
       0     2295        M 0x80000758 bnez    a2, pc - 20            #; a2  = 7, taken, goto 0x80000744
       0     2298        M 0x8000074c addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100010]
       0     2299        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100018, (wrb) a0  <-- 0x00100020
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2300        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
                         M 0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100018]
       0     2301        M 0x80000758 bnez    a2, pc - 20            #; a2  = 6, taken, goto 0x80000744
       0     2304        M 0x8000074c addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100018]
       0     2305        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100020, (wrb) a0  <-- 0x00100028
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2306        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
                         M 0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100020]
       0     2307        M 0x80000758 bnez    a2, pc - 20            #; a2  = 5, taken, goto 0x80000744
       0     2310        M 0x8000074c addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100020]
       0     2311        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100028, (wrb) a0  <-- 0x00100030
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2312        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
                         M 0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100028]
       0     2313        M 0x80000758 bnez    a2, pc - 20            #; a2  = 4, taken, goto 0x80000744
       0     2316        M 0x8000074c addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100028]
       0     2317        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100030, (wrb) a0  <-- 0x00100038
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2318        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
                         M 0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100030]
       0     2319        M 0x80000758 bnez    a2, pc - 20            #; a2  = 3, taken, goto 0x80000744
       0     2322        M 0x8000074c addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100030]
       0     2323        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100038, (wrb) a0  <-- 0x00100040
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2324        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
                         M 0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100038]
       0     2325        M 0x80000758 bnez    a2, pc - 20            #; a2  = 2, taken, goto 0x80000744
       0     2328        M 0x8000074c addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100038]
       0     2329        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100040, (wrb) a0  <-- 0x00100048
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2330        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
                         M 0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100040]
       0     2331        M 0x80000758 bnez    a2, pc - 20            #; a2  = 1, taken, goto 0x80000744
       0     2334        M 0x8000074c addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100040]
       0     2335        M 0x80000750 addi    a0, a0, 8              #; a0  = 0x00100048, (wrb) a0  <-- 0x00100050
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     2336        M 0x80000754 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
                         M 0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100048]
       0     2337        M 0x80000758 bnez    a2, pc - 20            #; a2  = 0, not taken
       0     2340        M 0x8000075c fld     fs11, 0(sp)            #; fs11 <~~ Doub[0x0011fe70]
       0     2341        M                                           #; (f:lsu) fs11 <-- 0.0
       0     2343        M 0x80000760 fld     fs10, 8(sp)            #; fs10 <~~ Doub[0x0011fe78]
       0     2344        M 0x80000764 fld     fs9, 16(sp)            #; fs9  <~~ Doub[0x0011fe80], (f:lsu) fs10 <-- 0.0
       0     2345        M 0x80000768 fld     fs8, 24(sp)            #; fs8  <~~ Doub[0x0011fe88], (f:lsu) fs9  <-- 0.0
       0     2346        M 0x8000076c fld     fs7, 32(sp)            #; fs7  <~~ Doub[0x0011fe90], (f:lsu) fs8  <-- 0.0
       0     2347        M 0x80000770 fld     fs6, 40(sp)            #; fs6  <~~ Doub[0x0011fe98], (f:lsu) fs7  <-- 0.0
       0     2348        M 0x80000774 fld     fs5, 48(sp)            #; fs5  <~~ Doub[0x0011fea0], (f:lsu) fs6  <-- 0.0
       0     2349        M 0x80000778 fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011fea8], (f:lsu) fs5  <-- 0.0
       0     2350        M 0x8000077c fld     fs3, 64(sp)            #; fs3  <~~ Doub[0x0011feb0], (f:lsu) fs4  <-- 0.0
       0     2351        M 0x80000780 fld     fs2, 72(sp)            #; fs2  <~~ Doub[0x0011feb8], (f:lsu) fs3  <-- 0.0
       0     2352        M 0x8000078c addi    sp, sp, 96             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fed0
                         M 0x80000784 fld     fs1, 80(sp)            #; fs1  <~~ Doub[0x0011fec0], (f:lsu) fs2  <-- 0.0
       0     2353        M 0x80000790 ret                            #; ra  = 0x80000978, goto 0x80000978
                         M 0x80000788 fld     fs0, 88(sp)            #; fs0  <~~ Doub[0x0011fec8], (f:lsu) fs1  <-- 0.0
       0     2354        M                                           #; (f:lsu) fs0  <-- 0.0
       0     2358        M 0x80000978 li      a0, 64                 #; (wrb) a0  <-- 64
       0     2359        M 0x8000097c li      a1, 192                #; (wrb) a1  <-- 192
       0     2361        M 0x80000980 scfgw   s1, a0                 #; s1  = 9, a0  = 64
       0     2362        M 0x80000984 scfgw   s2, a1                 #; s2  = 8, a1  = 192
       0     2363        M 0x80000988 li      a0, 32                 #; (wrb) a0  <-- 32
       0     2364        M 0x8000098c scfgw   zero, a0               #; a0  = 32, (acc) ra  <-- 0x00a020ab
       0     2373        M 0x80000990 scfgwi  s0, 768                #; s0  = 0x00100000
       0     2375        M 0x80000994 csrrsi  a0, ssr, 1             #; 
       0     2376        M                                           #; (acc) gp  <-- 0x023071d3
       0     2377        M 0x80000998 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2378        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2379        M 0x8000099c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2382        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2387        M 0x800009a0 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
       0     2390        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2391        M 0x800009a4 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
       0     2394        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2395        M 0x800009a8 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
       0     2398        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2399        M 0x800009ac fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
       0     2402        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2403        M 0x800009b0 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
       0     2406        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2407        M 0x800009b4 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
       0     2410        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2411        M 0x800009b8 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
       0     2413        M 0x800009d0 j       pc + 0x13c             #; goto 0x80000b0c
       0     2414        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2415        M 0x800009bc fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
       0     2418        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2419        M 0x800009c0 fsd     ft3, 8(sp)             #; 0.0 ~~> Doub[0x0011fed8]
       0     2420        M 0x800009c4 fld     ft4, 8(sp)             #; ft4  <~~ Doub[0x0011fed8]
       0     2421        M 0x800009c8 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011fee0], (f:lsu) ft4  <-- 0.0
       0     2422        M 0x800009cc csrrci  a0, ssr, 1             #; (f:lsu) fs0  <-- 45.0
       0     2425        M 0x80000b0c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b0c
       0     2437        M 0x80000b10 addi    a0, a0, 1684           #; a0  = 0x80002b0c, (wrb) a0  <-- 0x800031a0
       0     2440        M 0x80000b14 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800031a0]
       0     2449        M                                           #; (f:lsu) ft3  <-- -45.0
       0     2450        M 0x80000b18 fadd.d  ft3, fs0, ft3          #; fs0  = 45.0, ft3  = -45.0
       0     2452        M 0x80000b2c lw      a2, 24(sp)             #; sp  = 0x0011fed0, a2  <~~ Word[0x0011fee8]
       0     2453        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2454        M 0x80000b1c fsgnjx.d ft3, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     2455        M                                           #; (lsu) a2  <-- 0
                         M 0x80000b20 fsgnjx.d ft4, ft4, ft4         #; ft4  = 0.0, ft4  = 0.0, (f:fpu) ft3  <-- 0.0
       0     2456        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2457        M 0x80000b24 fadd.d  fs0, ft4, ft3          #; ft4  = 0.0, ft3  = 0.0
       0     2460        M                                           #; (f:fpu) fs0  <-- 0.0
       0     2461        M 0x80000b30 lw      a3, 28(sp)             #; sp  = 0x0011fed0, a3  <~~ Word[0x0011feec]
                         M 0x80000b28 fsd     fs0, 24(sp)            #; 0.0 ~~> Doub[0x0011fee8]
       0     2462        M 0x80000b34 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b34
       0     2463        M 0x80000b38 addi    a0, a0, 929            #; a0  = 0x80002b34, (wrb) a0  <-- 0x80002ed5
       0     2464        M 0x80000b3c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b3c
       0     2465        M                                           #; (lsu) a3  <-- 0
       0     2473        M 0x80000b40 jalr    ra, ra, 96             #; ra  = 0x80000b3c, (wrb) ra  <-- 0x80000b44, goto 0x80000b9c
       0     2478        M 0x80000b9c addi    sp, sp, -48            #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011fea0
       0     2481        M 0x80000ba0 sw      ra, 12(sp)             #; sp  = 0x0011fea0, 0x80000b44 ~~> Word[0x0011feac]
       0     2482        M 0x80000ba4 mv      t0, a0                 #; a0  = 0x80002ed5, (wrb) t0  <-- 0x80002ed5
       0     2483        M 0x80000ba8 sw      a7, 44(sp)             #; sp  = 0x0011fea0, 0x00120001 ~~> Word[0x0011fecc]
       0     2484        M 0x80000bac sw      a6, 40(sp)             #; sp  = 0x0011fea0, 8 ~~> Word[0x0011fec8]
       0     2493        M 0x80000bb0 sw      a5, 36(sp)             #; sp  = 0x0011fea0, 0x00120000 ~~> Word[0x0011fec4]
       0     2494        M 0x80000bb4 sw      a4, 32(sp)             #; sp  = 0x0011fea0, 1 ~~> Word[0x0011fec0]
       0     2495        M 0x80000bb8 sw      a3, 28(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011febc]
       0     2496        M 0x80000bbc sw      a2, 24(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feb8]
       0     2505        M 0x80000bc0 sw      a1, 20(sp)             #; sp  = 0x0011fea0, 192 ~~> Word[0x0011feb4]
       0     2506        M 0x80000bc4 addi    a0, sp, 20             #; sp  = 0x0011fea0, (wrb) a0  <-- 0x0011feb4
       0     2507        M 0x80000bc8 sw      a0, 8(sp)              #; sp  = 0x0011fea0, 0x0011feb4 ~~> Word[0x0011fea8]
       0     2508        M 0x80000bcc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001bcc
       0     2517        M 0x80000bd0 addi    a0, a0, -988           #; a0  = 0x80001bcc, (wrb) a0  <-- 0x800017f0
       0     2518        M 0x80000bd4 addi    a1, sp, 7              #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011fea7
       0     2519        M 0x80000bd8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2520        M 0x80000bdc addi    a4, sp, 20             #; sp  = 0x0011fea0, (wrb) a4  <-- 0x0011feb4
       0     2529        M 0x80000be0 mv      a3, t0                 #; t0  = 0x80002ed5, (wrb) a3  <-- 0x80002ed5
       0     2530        M 0x80000be4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000be4
       0     2531        M 0x80000be8 jalr    ra, ra, 20             #; ra  = 0x80000be4, (wrb) ra  <-- 0x80000bec, goto 0x80000bf8
       0     2541        M 0x80000bf8 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     2542        M 0x80000bfc sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000bec ~~> Word[0x0011fe9c]
       0     2553        M 0x80000c00 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0x00100000 ~~> Word[0x0011fe98]
       0     2554        M 0x80000c04 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe94]
       0     2555        M 0x80000c08 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe90]
       0     2556        M 0x80000c0c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe8c]
       0     2565        M 0x80000c10 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe88]
       0     2566        M 0x80000c14 sw      s5, 84(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe84]
       0     2567        M 0x80000c18 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     2568        M 0x80000c1c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     2577        M 0x80000c20 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe78]
       0     2578        M 0x80000c24 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe74]
       0     2579        M 0x80000c28 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe70]
       0     2580        M 0x80000c2c sw      s11, 60(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe6c]
       0     2589        M 0x80000c30 mv      s3, a4                 #; a4  = 0x0011feb4, (wrb) s3  <-- 0x0011feb4
       0     2590        M 0x80000c34 mv      s0, a3                 #; a3  = 0x80002ed5, (wrb) s0  <-- 0x80002ed5
       0     2591        M 0x80000c38 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2592        M 0x80000c3c mv      s4, a1                 #; a1  = 0x0011fea7, (wrb) s4  <-- 0x0011fea7
       0     2601        M 0x80000c40 beqz    a1, pc + 12            #; a1  = 0x0011fea7, not taken
       0     2602        M 0x80000c44 mv      s2, a0                 #; a0  = 0x800017f0, (wrb) s2  <-- 0x800017f0
       0     2603        M 0x80000c48 j       pc + 0xc               #; goto 0x80000c54
       0     2613        M 0x80000c54 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2614        M 0x80000c58 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2615        M 0x80000c5c li      s11, 16                #; (wrb) s11 <-- 16
       0     2625        M 0x80000c60 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2626        M 0x80000c64 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2627        M 0x80000c68 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2628        M 0x80000c6c sw      a0, 24(sp)             #; sp  = 0x0011fe30, 2048 ~~> Word[0x0011fe48]
       0     2637        M 0x80000c70 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2638        M 0x80000c74 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2639        M 0x80000c78 sw      a0, 16(sp)             #; sp  = 0x0011fe30, 65535 ~~> Word[0x0011fe40]
       0     2640        M 0x80000c7c addi    s10, s0, 2             #; s0  = 0x80002ed5, (wrb) s10 <-- 0x80002ed7
       0     2649        M 0x80000c80 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2650        M 0x80000c84 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2651        M 0x80000c88 lbu     a0, 0(s0)              #; s0  = 0x80002ed5, a0  <~~ Byte[0x80002ed5]
       0     2662        M                                           #; (lsu) a0  <-- 101
       0     2663        M 0x80000c8c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2664        M 0x80000c90 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2665        M 0x80000c94 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2666        M 0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     2667        M 0x80000c9c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2676        M 0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2677        M 0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
       0     2699        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2700        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2701        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2702        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2711        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     2712        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     2713        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     2714        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     2725        M                                           #; (lsu) a4  <-- 0
       0     2726        M 0x80001810 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2727        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 1 ~~> Word[0x8000325c]
       0     2728        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 0, (wrb) a4  <-- 0x8000325c
       0     2729        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000325c, 101 ~~> Byte[0x800032a4]
       0     2735        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     2751        M                                           #; (lsu) a4  <-- 1
       0     2752        M 0x80001824 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2753        M 0x80001828 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2754        M 0x8000182c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2755        M 0x80001830 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2756        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2757        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     2778        M 0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
       0     2792        M 0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002ed5, (wrb) s0  <-- 0x80002ed6
       0     2793        M 0x80000cac addi    s10, s10, 1            #; s10 = 0x80002ed7, (wrb) s10 <-- 0x80002ed8
       0     2795        M 0x80000cb0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2796        M 0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002ed6, a0  <~~ Byte[0x80002ed6]
       0     2807        M                                           #; (lsu) a0  <-- 114
       0     2808        M 0x80000cb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c90
       0     2809        M 0x80000c90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2810        M 0x80000c94 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2811        M 0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     2812        M 0x80000c9c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2813        M 0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2814        M 0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
       0     2817        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2818        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2819        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2820        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2821        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     2822        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     2823        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2824        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     2825        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     2836        M                                           #; (lsu) a4  <-- 1
       0     2837        M 0x80001810 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2838        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 2 ~~> Word[0x8000325c]
       0     2839        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 1, (wrb) a4  <-- 0x8000325d
       0     2840        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000325d, 114 ~~> Byte[0x800032a5]
       0     2841        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     2862        M                                           #; (lsu) a4  <-- 2
       0     2863        M 0x80001824 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2864        M 0x80001828 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2865        M 0x8000182c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2866        M 0x80001830 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2867        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2868        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     2871        M 0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
       0     2876        M 0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002ed6, (wrb) s0  <-- 0x80002ed7
       0     2877        M 0x80000cac addi    s10, s10, 1            #; s10 = 0x80002ed8, (wrb) s10 <-- 0x80002ed9
       0     2879        M 0x80000cb0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2880        M 0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002ed7, a0  <~~ Byte[0x80002ed7]
       0     2891        M                                           #; (lsu) a0  <-- 114
       0     2892        M 0x80000cb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c90
       0     2893        M 0x80000c90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2894        M 0x80000c94 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2895        M 0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     2896        M 0x80000c9c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2897        M 0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2898        M 0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
       0     2901        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2902        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2903        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2904        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2905        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     2906        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     2907        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2908        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     2909        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     2920        M                                           #; (lsu) a4  <-- 2
       0     2921        M 0x80001810 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2922        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 3 ~~> Word[0x8000325c]
       0     2923        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 2, (wrb) a4  <-- 0x8000325e
       0     2924        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000325e, 114 ~~> Byte[0x800032a6]
       0     2925        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     2946        M                                           #; (lsu) a4  <-- 3
       0     2947        M 0x80001824 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2948        M 0x80001828 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2949        M 0x8000182c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2950        M 0x80001830 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2951        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2952        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     2955        M 0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
       0     2960        M 0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002ed7, (wrb) s0  <-- 0x80002ed8
       0     2961        M 0x80000cac addi    s10, s10, 1            #; s10 = 0x80002ed9, (wrb) s10 <-- 0x80002eda
       0     2963        M 0x80000cb0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2964        M 0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002ed8, a0  <~~ Byte[0x80002ed8]
       0     2975        M                                           #; (lsu) a0  <-- 111
       0     2976        M 0x80000cb8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000c90
       0     2977        M 0x80000c90 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2978        M 0x80000c94 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2979        M 0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     2980        M 0x80000c9c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2981        M 0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2982        M 0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
       0     2985        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2986        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2987        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2988        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2989        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     2990        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     2991        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2992        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     2993        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     3004        M                                           #; (lsu) a4  <-- 3
       0     3005        M 0x80001810 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3006        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 4 ~~> Word[0x8000325c]
       0     3007        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 3, (wrb) a4  <-- 0x8000325f
       0     3008        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000325f, 111 ~~> Byte[0x800032a7]
       0     3009        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     3030        M                                           #; (lsu) a4  <-- 4
       0     3031        M 0x80001824 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3032        M 0x80001828 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3033        M 0x8000182c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3034        M 0x80001830 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3035        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3036        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     3039        M 0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
       0     3044        M 0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002ed8, (wrb) s0  <-- 0x80002ed9
       0     3045        M 0x80000cac addi    s10, s10, 1            #; s10 = 0x80002eda, (wrb) s10 <-- 0x80002edb
       0     3047        M 0x80000cb0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3048        M 0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002ed9, a0  <~~ Byte[0x80002ed9]
       0     3059        M                                           #; (lsu) a0  <-- 114
       0     3060        M 0x80000cb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c90
       0     3061        M 0x80000c90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3062        M 0x80000c94 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3063        M 0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     3064        M 0x80000c9c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3065        M 0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3066        M 0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
       0     3069        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3070        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3071        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3072        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3073        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     3074        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     3075        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3076        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     3077        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     3088        M                                           #; (lsu) a4  <-- 4
       0     3089        M 0x80001810 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3090        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 5 ~~> Word[0x8000325c]
       0     3091        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 4, (wrb) a4  <-- 0x80003260
       0     3092        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003260, 114 ~~> Byte[0x800032a8]
       0     3093        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     3114        M                                           #; (lsu) a4  <-- 5
       0     3115        M 0x80001824 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3116        M 0x80001828 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3117        M 0x8000182c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3118        M 0x80001830 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3119        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3120        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     3123        M 0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
       0     3128        M 0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002ed9, (wrb) s0  <-- 0x80002eda
       0     3129        M 0x80000cac addi    s10, s10, 1            #; s10 = 0x80002edb, (wrb) s10 <-- 0x80002edc
       0     3131        M 0x80000cb0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3132        M 0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002eda, a0  <~~ Byte[0x80002eda]
       0     3143        M                                           #; (lsu) a0  <-- 32
       0     3144        M 0x80000cb8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c90
       0     3145        M 0x80000c90 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3146        M 0x80000c94 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3147        M 0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     3148        M 0x80000c9c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3149        M 0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3150        M 0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
       0     3153        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3154        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3155        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3156        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3157        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     3158        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     3159        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3160        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     3161        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     3172        M                                           #; (lsu) a4  <-- 5
       0     3173        M 0x80001810 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3174        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 6 ~~> Word[0x8000325c]
       0     3175        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 5, (wrb) a4  <-- 0x80003261
       0     3176        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003261, 32 ~~> Byte[0x800032a9]
       0     3177        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     3198        M                                           #; (lsu) a4  <-- 6
       0     3199        M 0x80001824 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3200        M 0x80001828 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3201        M 0x8000182c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3202        M 0x80001830 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3203        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3204        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     3207        M 0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
       0     3212        M 0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002eda, (wrb) s0  <-- 0x80002edb
       0     3213        M 0x80000cac addi    s10, s10, 1            #; s10 = 0x80002edc, (wrb) s10 <-- 0x80002edd
       0     3215        M 0x80000cb0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3216        M 0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002edb, a0  <~~ Byte[0x80002edb]
       0     3227        M                                           #; (lsu) a0  <-- 61
       0     3228        M 0x80000cb8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000c90
       0     3229        M 0x80000c90 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3230        M 0x80000c94 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3231        M 0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     3232        M 0x80000c9c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3233        M 0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3234        M 0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
       0     3237        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3238        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3239        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3240        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3241        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     3242        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     3243        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3244        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     3245        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     3256        M                                           #; (lsu) a4  <-- 6
       0     3257        M 0x80001810 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3258        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 7 ~~> Word[0x8000325c]
       0     3259        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 6, (wrb) a4  <-- 0x80003262
       0     3260        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003262, 61 ~~> Byte[0x800032aa]
       0     3261        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     3282        M                                           #; (lsu) a4  <-- 7
       0     3283        M 0x80001824 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3284        M 0x80001828 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3285        M 0x8000182c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3286        M 0x80001830 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3287        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3288        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     3291        M 0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
       0     3296        M 0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002edb, (wrb) s0  <-- 0x80002edc
       0     3297        M 0x80000cac addi    s10, s10, 1            #; s10 = 0x80002edd, (wrb) s10 <-- 0x80002ede
       0     3299        M 0x80000cb0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3300        M 0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002edc, a0  <~~ Byte[0x80002edc]
       0     3311        M                                           #; (lsu) a0  <-- 32
       0     3312        M 0x80000cb8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c90
       0     3313        M 0x80000c90 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3314        M 0x80000c94 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3315        M 0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     3316        M 0x80000c9c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3317        M 0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3318        M 0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
       0     3321        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3322        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3323        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3324        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3325        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     3326        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     3327        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3328        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     3329        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     3340        M                                           #; (lsu) a4  <-- 7
       0     3341        M 0x80001810 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3342        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 8 ~~> Word[0x8000325c]
       0     3343        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 7, (wrb) a4  <-- 0x80003263
       0     3344        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003263, 32 ~~> Byte[0x800032ab]
       0     3345        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     3366        M                                           #; (lsu) a4  <-- 8
       0     3367        M 0x80001824 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3368        M 0x80001828 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3369        M 0x8000182c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3370        M 0x80001830 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3371        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3372        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     3375        M 0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
       0     3380        M 0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002edc, (wrb) s0  <-- 0x80002edd
       0     3381        M 0x80000cac addi    s10, s10, 1            #; s10 = 0x80002ede, (wrb) s10 <-- 0x80002edf
       0     3383        M 0x80000cb0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3384        M 0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002edd, a0  <~~ Byte[0x80002edd]
       0     3395        M                                           #; (lsu) a0  <-- 37
       0     3396        M 0x80000cb8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000c90
       0     3397        M 0x80000c90 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000cc0
       0     3409        M 0x80000cc0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3410        M 0x80000cc4 j       pc + 0x10              #; goto 0x80000cd4
       0     3421        M 0x80000cd4 lbu     a0, -1(s10)            #; s10 = 0x80002edf, a0  <~~ Byte[0x80002ede]
       0     3432        M                                           #; (lsu) a0  <-- 102
       0     3433        M 0x80000cd8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3434        M 0x80000cdc bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000d14
       0     3446        M 0x80000d14 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3447        M 0x80000d18 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3448        M 0x80000d1c addi    a1, s10, -1            #; s10 = 0x80002edf, (wrb) a1  <-- 0x80002ede
       0     3458        M 0x80000d20 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3459        M 0x80000d24 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000da0
       0     3481        M 0x80000da0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3482        M 0x80000da4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000df4
       0     3504        M 0x80000df4 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3505        M 0x80000df8 mv      s10, a1                #; a1  = 0x80002ede, (wrb) s10 <-- 0x80002ede
       0     3506        M 0x80000dfc beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3527        M 0x80000e00 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3528        M 0x80000e04 j       pc + 0xc               #; goto 0x80000e10
       0     3539        M 0x80000e10 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3540        M 0x80000e14 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3541        M 0x80000e18 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3542        M 0x80000e1c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3551        M 0x80000e20 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3552        M 0x80000e24 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e88
       0     3574        M 0x80000e88 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3575        M 0x80000e8c li      a2, 83                 #; (wrb) a2  <-- 83
       0     3586        M 0x80000e90 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3587        M 0x80000e94 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3588        M 0x80000e98 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002e98
       0     3589        M 0x80000e9c addi    a2, a2, 188            #; a2  = 0x80002e98, (wrb) a2  <-- 0x80002f54
       0     3598        M 0x80000ea0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002f54, (wrb) a1  <-- 0x80003058
       0     3599        M 0x80000ea4 lw      a2, 0(a1)              #; a1  = 0x80003058, a2  <~~ Word[0x80003058]
       0     3600        M 0x80000ea8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3601        M 0x80000eac li      s8, 16                 #; (wrb) s8  <-- 16
       0     3610        M                                           #; (lsu) a2  <-- 0x80000ee0
       0     3611        M 0x80000eb0 jr      a2                     #; a2  = 0x80000ee0, goto 0x80000ee0
       0     3633        M 0x80000ee0 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3634        M 0x80000ee4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000eec
       0     3635        M 0x80000eec addi    a0, s3, 7              #; s3  = 0x0011feb4, (wrb) a0  <-- 0x0011febb
       0     3645        M 0x80000ef0 andi    a0, a0, -8             #; a0  = 0x0011febb, (wrb) a0  <-- 0x0011feb8
       0     3647        M 0x80000ef8 addi    s3, a0, 8              #; a0  = 0x0011feb8, (wrb) s3  <-- 0x0011fec0
       0     3648        M 0x80000efc mv      a0, s2                 #; s2  = 0x800017f0, (wrb) a0  <-- 0x800017f0
                         M 0x80000ef4 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011feb8]
       0     3649        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3657        M 0x80000f00 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     3658        M 0x80000f04 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3659        M 0x80000f08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3660        M 0x80000f0c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3669        M 0x80000f10 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3670        M 0x80000f14 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3671        M 0x80000f18 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001f18
       0     3672        M 0x80000f1c jalr    ra, ra, -1656          #; ra  = 0x80001f18, (wrb) ra  <-- 0x80000f20, goto 0x800018a0
       0     3683        M 0x800018a0 addi    sp, sp, -112           #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fdc0
       0     3684        M 0x800018a4 sw      ra, 108(sp)            #; sp  = 0x0011fdc0, 0x80000f20 ~~> Word[0x0011fe2c]
       0     3685        M 0x800018a8 sw      s0, 104(sp)            #; sp  = 0x0011fdc0, 0 ~~> Word[0x0011fe28]
       0     3686        M 0x800018ac sw      s1, 100(sp)            #; sp  = 0x0011fdc0, 8 ~~> Word[0x0011fe24]
       0     3695        M 0x800018b0 sw      s2, 96(sp)             #; sp  = 0x0011fdc0, 0x800017f0 ~~> Word[0x0011fe20]
       0     3696        M 0x800018b4 sw      s3, 92(sp)             #; sp  = 0x0011fdc0, 0x0011fec0 ~~> Word[0x0011fe1c]
       0     3697        M 0x800018b8 sw      s4, 88(sp)             #; sp  = 0x0011fdc0, 0x0011fea7 ~~> Word[0x0011fe18]
       0     3698        M 0x800018bc sw      s5, 84(sp)             #; sp  = 0x0011fdc0, -1 ~~> Word[0x0011fe14]
       0     3707        M 0x800018c0 sw      s6, 80(sp)             #; sp  = 0x0011fdc0, 0 ~~> Word[0x0011fe10]
       0     3708        M 0x800018c4 sw      s7, 76(sp)             #; sp  = 0x0011fdc0, 0 ~~> Word[0x0011fe0c]
       0     3709        M 0x800018c8 sw      s8, 72(sp)             #; sp  = 0x0011fdc0, 16 ~~> Word[0x0011fe08]
       0     3710        M 0x800018cc sw      s9, 68(sp)             #; sp  = 0x0011fdc0, 8 ~~> Word[0x0011fe04]
       0     3719        M 0x800018d0 sw      s10, 64(sp)            #; sp  = 0x0011fdc0, 0x80002ede ~~> Word[0x0011fe00]
       0     3722        M 0x800018d4 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fdf8]
       0     3723        M 0x800018d8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fdf0]
       0     3724        M 0x800018dc fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fde8]
       0     3731        M 0x800018e0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800038e0
       0     3732        M 0x800018e4 addi    s1, s1, -1840          #; s1  = 0x800038e0, (wrb) s1  <-- 0x800031b0
       0     3735        M 0x800018e8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800031b0]
       0     3743        M 0x800018f0 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3744        M 0x800018f4 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3745        M 0x800018f8 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800018ec fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3746        M 0x800018fc mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3755        M 0x80001900 mv      s6, a1                 #; a1  = 0x0011fea7, (wrb) s6  <-- 0x0011fea7
       0     3756        M 0x80001904 mv      s7, a0                 #; a0  = 0x800017f0, (wrb) s7  <-- 0x800017f0
       0     3757        M 0x80001908 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800019f8
       0     3779        M 0x800019fc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029fc
       0     3780        M 0x800019f8 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3781        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3790        M 0x80001a00 addi    a0, a0, 1980           #; a0  = 0x800029fc, (wrb) a0  <-- 0x800031b8
       0     3793        M 0x80001a04 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031b8]
       0     3802        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3803        M 0x80001a08 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3805        M                                           #; (acc) t3  <-- 0x00051e63
       0     3806        M 0x80001a0c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001a28
       0     3818        M 0x80001a28 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a28
       0     3819        M 0x80001a2c addi    a0, a0, 1944           #; a0  = 0x80002a28, (wrb) a0  <-- 0x800031c0
       0     3831        M 0x80001a34 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a34
       0     3832        M 0x80001a38 addi    a0, a0, 1940           #; a0  = 0x80002a34, (wrb) a0  <-- 0x800031c8
                         M 0x80001a30 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031c0]
       0     3835        M 0x80001a3c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800031c8]
       0     3841        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3843        M 0x80001a40 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3844        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3845        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x80001a44 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3847        M                                           #; (acc) a0  <-- 0x00b57533
       0     3848        M 0x80001a48 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3849        M 0x80001a4c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001b48
       0     3865        M 0x80001b48 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3866        M 0x80001b4c li      s8, 6                  #; (wrb) s8  <-- 6
       0     3877        M 0x80001b50 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001b58
       0     3878        M 0x80001b58 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3881        M 0x80001b5c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3882        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3889        M 0x80001b60 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001b98
       0     3912        M 0x80001b98 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3913        M 0x80001b9c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3924        M 0x80001ba0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002ba0
       0     3925        M 0x80001ba4 addi    a1, a1, 1288           #; a1  = 0x80002ba0, (wrb) a1  <-- 0x800030a8
       0     3926        M 0x80001ba8 add     a0, a0, a1             #; a0  = 48, a1  = 0x800030a8, (wrb) a0  <-- 0x800030d8
       0     3929        M 0x80001bac fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800030d8]
       0     3937        M 0x80001bb0 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3938        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3941        M 0x80001bb4 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3942        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3943        M 0x80001bb8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3946        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3947        M 0x80001bbc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3948        M 0x80001bc0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bc0
       0     3949        M 0x80001bc4 addi    a0, a0, 1552           #; a0  = 0x80002bc0, (wrb) a0  <-- 0x800031d0
       0     3950        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3952        M 0x80001bc8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031d0]
       0     3953        M 0x80001bcc fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3961        M 0x80001bd0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     3962        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3963        M 0x80001bd4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3966        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3967        M 0x80001bd8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3970        M 0x80001bdc bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001bfc
       0     3984        M 0x80001bfc flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3995        M 0x80001c00 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001c14
       0     4008        M 0x80001c18 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001c14 fcvt.d.w fs1, zero             #; ac1  = 0
       0     4009        M 0x80001c1c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     4019        M 0x80001c20 addi    a1, sp, 8              #; sp  = 0x0011fdc0, (wrb) a1  <-- 0x0011fdc8
       0     4020        M 0x80001c24 add     t1, a1, s0             #; a1  = 0x0011fdc8, s0  = 0, (wrb) t1  <-- 0x0011fdc8
       0     4021        M 0x80001c28 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4022        M 0x80001c2c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4031        M 0x80001c30 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4032        M 0x80001c34 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4033        M 0x80001c38 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4034        M 0x80001c3c li      a7, 9                  #; (wrb) a7  <-- 9
       0     4043        M 0x80001c40 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4044        M 0x80001c44 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     4045        M 0x80001c48 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     4048        M                                           #; (acc) a0  <-- 0x00355513
       0     4049        M 0x80001c4c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     4055        M 0x80001c50 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4058        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4059        M 0x80001c54 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     4060        M 0x80001c58 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4061        M 0x80001c5c add     a5, t1, a2             #; t1  = 0x0011fdc8, a2  = 0, (wrb) a5  <-- 0x0011fdc8
       0     4067        M 0x80001c60 sb      a3, 0(a5)              #; a5  = 0x0011fdc8, 48 ~~> Byte[0x0011fdc8]
       0     4068        M 0x80001c64 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4069        M 0x80001c68 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     4070        M 0x80001c6c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     4082        M 0x80001c70 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     4083        M 0x80001c74 li      a3, 30                 #; (wrb) a3  <-- 30
       0     4084        M 0x80001c78 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     4085        M 0x80001c7c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     4094        M 0x80001c80 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     4095        M 0x80001c84 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4096        M 0x80001c88 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4097        M 0x80001c8c addi    a0, sp, 8              #; sp  = 0x0011fdc0, (wrb) a0  <-- 0x0011fdc8
       0     4106        M 0x80001c90 add     a0, a0, s0             #; a0  = 0x0011fdc8, s0  = 0, (wrb) a0  <-- 0x0011fdc8
       0     4107        M 0x80001c94 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4108        M 0x80001c98 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4109        M 0x80001c9c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4118        M 0x80001ca0 li      a1, 31                 #; (wrb) a1  <-- 31
       0     4119        M 0x80001ca4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4120        M 0x80001ca8 add     a0, a0, a2             #; a0  = 0x0011fdc8, a2  = 1, (wrb) a0  <-- 0x0011fdc9
       0     4121        M 0x80001cac mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4130        M 0x80001cb0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001cb8
       0     4131        M 0x80001cb8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4132        M 0x80001cbc li      a1, 48                 #; (wrb) a1  <-- 48
       0     4142        M 0x80001cc0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000cc0
       0     4143        M 0x80001cc4 jalr    ra, ra, -1896          #; ra  = 0x80000cc0, (wrb) ra  <-- 0x80001cc8, goto 0x80000558
       0     4165        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4166        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fdc9, (wrb) a4  <-- 0x0011fdc9
       0     4177        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4200        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4212        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4213        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4214        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4215        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4235        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fdc9, 48 ~~> Byte[0x0011fdcd]
       0     4236        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fdc9, 48 ~~> Byte[0x0011fdcc]
       0     4247        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fdc9, 48 ~~> Byte[0x0011fdcb]
       0     4248        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fdc9, 48 ~~> Byte[0x0011fdca]
       0     4249        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fdc9, 48 ~~> Byte[0x0011fdc9]
       0     4250        M 0x800005ec ret                            #; ra  = 0x80001cc8, goto 0x80001cc8
       0     4261        M 0x80001cc8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4262        M 0x80001ccc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4264        M 0x80001cd0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4265        M 0x80001cd4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4266        M 0x80001cd8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4267        M 0x80001cdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4276        M 0x80001ce0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4277        M 0x80001ce4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ccc
       0     4278        M 0x80001ccc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4279        M 0x80001cd0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4280        M 0x80001cd4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4281        M 0x80001cd8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4282        M 0x80001cdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4283        M 0x80001ce0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4284        M 0x80001ce4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ccc
       0     4285        M 0x80001ccc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4286        M 0x80001cd0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4287        M 0x80001cd4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4288        M 0x80001cd8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4289        M 0x80001cdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4290        M 0x80001ce0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4291        M 0x80001ce4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ccc
       0     4292        M 0x80001ccc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4293        M 0x80001cd0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4294        M 0x80001cd4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4295        M 0x80001cd8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4296        M 0x80001cdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4297        M 0x80001ce0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4298        M 0x80001ce4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ccc
       0     4299        M 0x80001ccc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4300        M 0x80001cd0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4301        M 0x80001cd4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4302        M 0x80001cd8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4303        M 0x80001cdc and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4304        M 0x80001ce0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4305        M 0x80001ce4 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4306        M 0x80001ce8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4307        M 0x80001cec j       pc + 0x28              #; goto 0x80001d14
       0     4318        M 0x80001d14 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4319        M 0x80001d18 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4320        M 0x80001d1c addi    a1, sp, 8              #; sp  = 0x0011fdc0, (wrb) a1  <-- 0x0011fdc8
       0     4330        M 0x80001d20 add     a0, a1, a0             #; a1  = 0x0011fdc8, a0  = 6, (wrb) a0  <-- 0x0011fdce
       0     4331        M 0x80001d24 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4332        M 0x80001d28 sb      a1, 0(a0)              #; a0  = 0x0011fdce, 46 ~~> Byte[0x0011fdce]
       0     4333        M 0x80001d2c j       pc + 0x8               #; goto 0x80001d34
       0     4342        M 0x80001d34 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4343        M 0x80001d38 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4344        M 0x80001d3c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4354        M 0x80001d40 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4356        M 0x80001d48 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001d44 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4357        M 0x80001d4c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4366        M 0x80001d50 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4367        M 0x80001d54 addi    a3, sp, 8              #; sp  = 0x0011fdc0, (wrb) a3  <-- 0x0011fdc8
       0     4368        M 0x80001d58 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4369        M 0x80001d5c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4378        M 0x80001d60 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4381        M                                           #; (acc) a5  <-- 0x01f55793
       0     4382        M 0x80001d64 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4383        M 0x80001d68 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4384        M 0x80001d6c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4390        M 0x80001d70 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4393        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4394        M 0x80001d74 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4395        M 0x80001d78 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4396        M 0x80001d7c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4402        M 0x80001d80 add     s0, a3, s0             #; a3  = 0x0011fdc8, s0  = 7, (wrb) s0  <-- 0x0011fdcf
       0     4403        M 0x80001d84 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4404        M 0x80001d88 sb      a5, 0(s0)              #; s0  = 0x0011fdcf, 48 ~~> Byte[0x0011fdcf]
       0     4405        M 0x80001d8c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4414        M 0x80001d90 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4415        M 0x80001d94 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4416        M 0x80001d98 j       pc + 0x8               #; goto 0x80001da0
       0     4428        M 0x80001da0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4429        M 0x80001da4 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4430        M 0x80001da8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001e14
       0     4451        M 0x80001e14 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4452        M 0x80001e18 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4453        M 0x80001e1c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001e34
       0     4474        M 0x80001e34 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4475        M 0x80001e38 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4476        M 0x80001e3c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4486        M 0x80001e40 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001e6c
       0     4509        M 0x80001e6c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4521        M 0x80001e70 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4522        M 0x80001e74 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4523        M 0x80001e78 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4524        M 0x80001e7c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4533        M 0x80001e80 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4534        M 0x80001e84 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001eb0
       0     4556        M 0x80001eb0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4557        M 0x80001eb4 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4558        M 0x80001eb8 addi    s9, sp, 7              #; sp  = 0x0011fdc0, (wrb) s9  <-- 0x0011fdc7
       0     4559        M 0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 8, (wrb) a0  <-- 0x0011fdcf
       0     4568        M 0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdcf, a0  <~~ Byte[0x0011fdcf]
       0     4569        M 0x80001ec4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4570        M 0x80001ec8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4571        M 0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     4572        M                                           #; (lsu) a0  <-- 48
       0     4580        M 0x80001ed0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4581        M 0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4582        M 0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
       0     4594        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4595        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4596        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4597        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4598        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     4599        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     4600        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4601        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     4602        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4613        M                                           #; (lsu) a4  <-- 8
       0     4614        M 0x80001810 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4615        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 9 ~~> Word[0x8000325c]
       0     4616        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 8, (wrb) a4  <-- 0x80003264
       0     4617        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003264, 48 ~~> Byte[0x800032ac]
       0     4618        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4639        M                                           #; (lsu) a4  <-- 9
       0     4640        M 0x80001824 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4641        M 0x80001828 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4642        M 0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4643        M 0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4644        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4645        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     4648        M 0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
       0     4653        M 0x80001edc mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4656        M 0x80001ee0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4657        M 0x80001ee4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001ebc
       0     4659        M 0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 7, (wrb) a0  <-- 0x0011fdce
       0     4662        M 0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdce, a0  <~~ Byte[0x0011fdce]
       0     4663        M 0x80001ec4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4664        M 0x80001ec8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4665        M 0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     4666        M 0x80001ed0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4667        M 0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4668        M 0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
       0     4669        M                                           #; (lsu) a0  <-- 46
       0     4671        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4672        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4673        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4674        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4675        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     4676        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     4677        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4678        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     4679        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4690        M                                           #; (lsu) a4  <-- 9
       0     4691        M 0x80001810 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4692        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 10 ~~> Word[0x8000325c]
       0     4693        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 9, (wrb) a4  <-- 0x80003265
       0     4694        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003265, 46 ~~> Byte[0x800032ad]
       0     4695        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4716        M                                           #; (lsu) a4  <-- 10
       0     4717        M 0x80001824 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4718        M 0x80001828 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4719        M 0x8000182c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4720        M 0x80001830 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4721        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4722        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     4725        M 0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
       0     4730        M 0x80001edc mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4733        M 0x80001ee0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4734        M 0x80001ee4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001ebc
       0     4736        M 0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 6, (wrb) a0  <-- 0x0011fdcd
       0     4739        M 0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdcd, a0  <~~ Byte[0x0011fdcd]
       0     4740        M 0x80001ec4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4741        M 0x80001ec8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4742        M 0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     4743        M 0x80001ed0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4744        M 0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4745        M 0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
       0     4746        M                                           #; (lsu) a0  <-- 48
       0     4748        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4749        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4750        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4751        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4752        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     4753        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     4754        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4755        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     4756        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4767        M                                           #; (lsu) a4  <-- 10
       0     4768        M 0x80001810 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4769        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 11 ~~> Word[0x8000325c]
       0     4770        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 10, (wrb) a4  <-- 0x80003266
       0     4771        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003266, 48 ~~> Byte[0x800032ae]
       0     4772        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4793        M                                           #; (lsu) a4  <-- 11
       0     4794        M 0x80001824 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4795        M 0x80001828 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4796        M 0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4797        M 0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4798        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4799        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     4802        M 0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
       0     4807        M 0x80001edc mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4810        M 0x80001ee0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4811        M 0x80001ee4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001ebc
       0     4813        M 0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 5, (wrb) a0  <-- 0x0011fdcc
       0     4816        M 0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdcc, a0  <~~ Byte[0x0011fdcc]
       0     4817        M 0x80001ec4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4818        M 0x80001ec8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4819        M 0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     4820        M 0x80001ed0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4821        M 0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4822        M 0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
       0     4823        M                                           #; (lsu) a0  <-- 48
       0     4825        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4826        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4827        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4828        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4829        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     4830        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     4831        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4832        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     4833        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4844        M                                           #; (lsu) a4  <-- 11
       0     4845        M 0x80001810 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4846        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 12 ~~> Word[0x8000325c]
       0     4847        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 11, (wrb) a4  <-- 0x80003267
       0     4848        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003267, 48 ~~> Byte[0x800032af]
       0     4849        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4870        M                                           #; (lsu) a4  <-- 12
       0     4871        M 0x80001824 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4872        M 0x80001828 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4873        M 0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4874        M 0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4875        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4876        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     4879        M 0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
       0     4884        M 0x80001edc mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4887        M 0x80001ee0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4888        M 0x80001ee4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001ebc
       0     4890        M 0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 4, (wrb) a0  <-- 0x0011fdcb
       0     4893        M 0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdcb, a0  <~~ Byte[0x0011fdcb]
       0     4894        M 0x80001ec4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4895        M 0x80001ec8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4896        M 0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     4897        M 0x80001ed0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4898        M 0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4899        M 0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
       0     4900        M                                           #; (lsu) a0  <-- 48
       0     4902        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4903        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4904        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4905        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4906        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     4907        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     4908        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4909        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     4910        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4921        M                                           #; (lsu) a4  <-- 12
       0     4922        M 0x80001810 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4923        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 13 ~~> Word[0x8000325c]
       0     4924        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 12, (wrb) a4  <-- 0x80003268
       0     4925        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003268, 48 ~~> Byte[0x800032b0]
       0     4926        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4947        M                                           #; (lsu) a4  <-- 13
       0     4948        M 0x80001824 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4949        M 0x80001828 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4950        M 0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4951        M 0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4952        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4953        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     4956        M 0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
       0     4961        M 0x80001edc mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4964        M 0x80001ee0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4965        M 0x80001ee4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001ebc
       0     4967        M 0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 3, (wrb) a0  <-- 0x0011fdca
       0     4970        M 0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdca, a0  <~~ Byte[0x0011fdca]
       0     4971        M 0x80001ec4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4972        M 0x80001ec8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4973        M 0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     4974        M 0x80001ed0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4975        M 0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4976        M 0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
       0     4977        M                                           #; (lsu) a0  <-- 48
       0     4979        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4980        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4981        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4982        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4983        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     4984        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     4985        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4986        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     4987        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     4998        M                                           #; (lsu) a4  <-- 13
       0     4999        M 0x80001810 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5000        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 14 ~~> Word[0x8000325c]
       0     5001        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 13, (wrb) a4  <-- 0x80003269
       0     5002        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003269, 48 ~~> Byte[0x800032b1]
       0     5003        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     5024        M                                           #; (lsu) a4  <-- 14
       0     5025        M 0x80001824 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5026        M 0x80001828 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5027        M 0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5028        M 0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5029        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5030        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     5033        M 0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
       0     5038        M 0x80001edc mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5041        M 0x80001ee0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5042        M 0x80001ee4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001ebc
       0     5044        M 0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 2, (wrb) a0  <-- 0x0011fdc9
       0     5047        M 0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdc9, a0  <~~ Byte[0x0011fdc9]
       0     5048        M 0x80001ec4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5049        M 0x80001ec8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5050        M 0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     5051        M 0x80001ed0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5052        M 0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5053        M 0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
       0     5054        M                                           #; (lsu) a0  <-- 48
       0     5056        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5057        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5058        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5059        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5060        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     5061        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     5062        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5063        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     5064        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     5075        M                                           #; (lsu) a4  <-- 14
       0     5076        M 0x80001810 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5077        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 15 ~~> Word[0x8000325c]
       0     5078        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 14, (wrb) a4  <-- 0x8000326a
       0     5079        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000326a, 48 ~~> Byte[0x800032b2]
       0     5080        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     5101        M                                           #; (lsu) a4  <-- 15
       0     5102        M 0x80001824 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5103        M 0x80001828 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5104        M 0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5105        M 0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5106        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5107        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     5110        M 0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
       0     5115        M 0x80001edc mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5118        M 0x80001ee0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5119        M 0x80001ee4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001ebc
       0     5121        M 0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 1, (wrb) a0  <-- 0x0011fdc8
       0     5124        M 0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdc8, a0  <~~ Byte[0x0011fdc8]
       0     5125        M 0x80001ec4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5126        M 0x80001ec8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5127        M 0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     5128        M 0x80001ed0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5129        M 0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5130        M 0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
       0     5131        M                                           #; (lsu) a0  <-- 48
       0     5133        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5134        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5135        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5136        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5137        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     5138        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     5139        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5140        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     5141        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     5152        M                                           #; (lsu) a4  <-- 15
       0     5153        M 0x80001810 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5154        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 16 ~~> Word[0x8000325c]
       0     5155        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 15, (wrb) a4  <-- 0x8000326b
       0     5156        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000326b, 48 ~~> Byte[0x800032b3]
       0     5157        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     5178        M                                           #; (lsu) a4  <-- 16
       0     5179        M 0x80001824 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5180        M 0x80001828 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5181        M 0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5182        M 0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5183        M 0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5184        M 0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
       0     5187        M 0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
       0     5192        M 0x80001edc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5195        M 0x80001ee0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5196        M 0x80001ee4 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5197        M 0x80001ee8 j       pc + 0x8               #; goto 0x80001ef0
       0     5209        M 0x80001ef0 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5210        M 0x80001ef4 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5211        M 0x80001ef8 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5212        M 0x80001efc xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5221        M 0x80001f00 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5222        M 0x80001f04 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001f34
       0     5244        M 0x80001f34 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5245        M 0x80001f38 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5248        M 0x80001f3c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fde8]
       0     5249        M                                           #; (f:lsu) fs2  <-- 0.0
       0     5258        M 0x80001f48 lw      s10, 64(sp)            #; sp  = 0x0011fdc0, s10 <~~ Word[0x0011fe00]
                         M 0x80001f40 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fdf0]
       0     5259        M 0x80001f44 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fdf8], (f:lsu) fs1  <-- 0.0
       0     5260        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5262        M                                           #; (lsu) s10 <-- 0x80002ede
       0     5263        M 0x80001f4c lw      s9, 68(sp)             #; sp  = 0x0011fdc0, s9  <~~ Word[0x0011fe04]
       0     5266        M                                           #; (lsu) s9  <-- 8
       0     5268        M 0x80001f50 lw      s8, 72(sp)             #; sp  = 0x0011fdc0, s8  <~~ Word[0x0011fe08]
       0     5271        M                                           #; (lsu) s8  <-- 16
       0     5272        M 0x80001f54 lw      s7, 76(sp)             #; sp  = 0x0011fdc0, s7  <~~ Word[0x0011fe0c]
       0     5275        M                                           #; (lsu) s7  <-- 0
       0     5276        M 0x80001f58 lw      s6, 80(sp)             #; sp  = 0x0011fdc0, s6  <~~ Word[0x0011fe10]
       0     5279        M                                           #; (lsu) s6  <-- 0
       0     5280        M 0x80001f5c lw      s5, 84(sp)             #; sp  = 0x0011fdc0, s5  <~~ Word[0x0011fe14]
       0     5283        M                                           #; (lsu) s5  <-- -1
       0     5284        M 0x80001f60 lw      s4, 88(sp)             #; sp  = 0x0011fdc0, s4  <~~ Word[0x0011fe18]
       0     5287        M                                           #; (lsu) s4  <-- 0x0011fea7
       0     5288        M 0x80001f64 lw      s3, 92(sp)             #; sp  = 0x0011fdc0, s3  <~~ Word[0x0011fe1c]
       0     5291        M                                           #; (lsu) s3  <-- 0x0011fec0
       0     5292        M 0x80001f68 lw      s2, 96(sp)             #; sp  = 0x0011fdc0, s2  <~~ Word[0x0011fe20]
       0     5295        M                                           #; (lsu) s2  <-- 0x800017f0
       0     5296        M 0x80001f6c lw      s1, 100(sp)            #; sp  = 0x0011fdc0, s1  <~~ Word[0x0011fe24]
       0     5299        M                                           #; (lsu) s1  <-- 8
       0     5300        M 0x80001f70 lw      s0, 104(sp)            #; sp  = 0x0011fdc0, s0  <~~ Word[0x0011fe28]
       0     5303        M                                           #; (lsu) s0  <-- 0
       0     5304        M 0x80001f74 lw      ra, 108(sp)            #; sp  = 0x0011fdc0, ra  <~~ Word[0x0011fe2c]
       0     5305        M 0x80001f78 addi    sp, sp, 112            #; sp  = 0x0011fdc0, (wrb) sp  <-- 0x0011fe30
       0     5307        M                                           #; (lsu) ra  <-- 0x80000f20
       0     5308        M 0x80001f7c ret                            #; ra  = 0x80000f20, goto 0x80000f20
       0     5311        M 0x80000f20 j       pc + 0x7c0             #; goto 0x800016e0
       0     5323        M 0x800016e0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5324        M 0x800016e4 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5325        M 0x800016e8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5326        M 0x800016ec addi    s0, s10, 1             #; s10 = 0x80002ede, (wrb) s0  <-- 0x80002edf
       0     5335        M 0x800016f0 j       pc - 0xa74             #; goto 0x80000c7c
       0     5338        M 0x80000c7c addi    s10, s0, 2             #; s0  = 0x80002edf, (wrb) s10 <-- 0x80002ee1
       0     5341        M 0x80000c80 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5342        M 0x80000c84 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5343        M 0x80000c88 lbu     a0, 0(s0)              #; s0  = 0x80002edf, a0  <~~ Byte[0x80002edf]
       0     5354        M                                           #; (lsu) a0  <-- 10
       0     5355        M 0x80000c8c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5356        M 0x80000c90 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5357        M 0x80000c94 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5358        M 0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     5359        M 0x80000c9c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5360        M 0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5361        M 0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
       0     5365        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5366        M 0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5367        M 0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5368        M 0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5369        M 0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
       0     5370        M 0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
       0     5371        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5372        M 0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
       0     5373        M 0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     5384        M                                           #; (lsu) a4  <-- 16
       0     5385        M 0x80001810 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5386        M 0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 17 ~~> Word[0x8000325c]
       0     5387        M 0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 16, (wrb) a4  <-- 0x8000326c
       0     5388        M 0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000326c, 10 ~~> Byte[0x800032b4]
       0     5389        M 0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
       0     5410        M                                           #; (lsu) a4  <-- 17
       0     5411        M 0x80001824 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5412        M 0x80001828 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5413        M 0x8000182c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5414        M 0x80001830 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5415        M 0x80001834 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5416        M 0x80001838 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5417        M 0x8000183c add     a0, a3, a2             #; a3  = 0x8000325c, a2  = 0, (wrb) a0  <-- 0x8000325c
       0     5418        M 0x80001840 addi    a2, a0, 72             #; a0  = 0x8000325c, (wrb) a2  <-- 0x800032a4
       0     5419        M 0x80001844 sw      zero, 12(a0)           #; a0  = 0x8000325c, 0 ~~> Word[0x80003268]
       0     5420        M 0x80001848 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5421        M 0x8000184c sw      a3, 8(a0)              #; a0  = 0x8000325c, 64 ~~> Word[0x80003264]
       0     5430        M 0x80001850 sw      zero, 20(a0)           #; a0  = 0x8000325c, 0 ~~> Word[0x80003270]
       0     5431        M 0x80001854 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5432        M 0x80001858 sw      a3, 16(a0)             #; a0  = 0x8000325c, 1 ~~> Word[0x8000326c]
       0     5433        M 0x8000185c sw      zero, 28(a0)           #; a0  = 0x8000325c, 0 ~~> Word[0x80003278]
       0     5442        M 0x80001860 sw      a2, 24(a0)             #; a0  = 0x8000325c, 0x800032a4 ~~> Word[0x80003274]
       0     5445        M 0x80001864 lw      a2, 0(a1)              #; a1  = 0x8000325c, a2  <~~ Word[0x8000325c]
       0     5446        M 0x80001868 addi    a3, a0, 8              #; a0  = 0x8000325c, (wrb) a3  <-- 0x80003264
       0     5447        M 0x8000186c sw      zero, 36(a0)           #; a0  = 0x8000325c, 0 ~~> Word[0x80003280]
       0     5467        M                                           #; (lsu) a2  <-- 17
       0     5468        M 0x80001870 sw      a2, 32(a0)             #; a0  = 0x8000325c, 17 ~~> Word[0x8000327c]
       0     5469        M 0x80001874 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003874
       0     5470        M 0x80001878 addi    a0, a0, -1908          #; a0  = 0x80003874, (wrb) a0  <-- 0x80003100
       0     5471        M 0x8000187c sw      a3, 0(a0)              #; a0  = 0x80003100, 0x80003264 ~~> Word[0x80003100]
       0     5472        M 0x80001880 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003880
       0     5473        M 0x80001884 addi    a0, a0, -1856          #; a0  = 0x80003880, (wrb) a0  <-- 0x80003140
       0     5474        M 0x80001888 lw      a2, 0(a0)              #; a0  = 0x80003140, a2  <~~ Word[0x80003140]
       0     5497        M                                           #; (lsu) a2  <-- 0
       0     5498        M 0x8000188c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001888
       0     5499        M 0x80001888 lw      a2, 0(a0)              #; a0  = 0x80003140, a2  <~~ Word[0x80003140]
       0     5510        M                                           #; (lsu) a2  <-- 1
       0     5511        M 0x8000188c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5514        M 0x80001890 sw      zero, 0(a0)            #; a0  = 0x80003140, 0 ~~> Word[0x80003140]
       0     5515        M 0x80001894 sw      zero, 0(a1)            #; a1  = 0x8000325c, 0 ~~> Word[0x8000325c]
       0     5516        M 0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
       0     5519        M 0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002edf, (wrb) s0  <-- 0x80002ee0
       0     5520        M 0x80000cac addi    s10, s10, 1            #; s10 = 0x80002ee1, (wrb) s10 <-- 0x80002ee2
       0     5522        M 0x80000cb0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5523        M 0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002ee0, a0  <~~ Byte[0x80002ee0]
       0     5537        M                                           #; (lsu) a0  <-- 0
       0     5538        M 0x80000cb8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5539        M 0x80000cbc j       pc + 0xad8             #; goto 0x80001794
       0     5551        M 0x80001794 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5552        M 0x80001798 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800017a0
       0     5563        M 0x800017a0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5564        M 0x800017a4 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
       0     5565        M 0x800017a8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5566        M 0x800017ac jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x800017b0, goto 0x800017f0
       0     5577        M 0x800017f0 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001898
       0     5582        M 0x80001898 ret                            #; ra  = 0x800017b0, goto 0x800017b0
       0     5583        M 0x800017b0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5584        M 0x800017b4 lw      s11, 60(sp)            #; sp  = 0x0011fe30, s11 <~~ Word[0x0011fe6c]
       0     5587        M                                           #; (lsu) s11 <-- 0
       0     5588        M 0x800017b8 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     5591        M                                           #; (lsu) s10 <-- 0
       0     5592        M 0x800017bc lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5595        M                                           #; (lsu) s9  <-- 0
       0     5597        M 0x800017c0 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5600        M                                           #; (lsu) s8  <-- 0
       0     5601        M 0x800017c4 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5604        M                                           #; (lsu) s7  <-- 0
       0     5605        M 0x800017c8 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5608        M                                           #; (lsu) s6  <-- 0
       0     5609        M 0x800017cc lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5612        M                                           #; (lsu) s5  <-- 0
       0     5613        M 0x800017d0 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5616        M                                           #; (lsu) s4  <-- 0
       0     5617        M 0x800017d4 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5620        M                                           #; (lsu) s3  <-- 0
       0     5621        M 0x800017d8 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5624        M                                           #; (lsu) s2  <-- 8
       0     5625        M 0x800017dc lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5628        M                                           #; (lsu) s1  <-- 9
       0     5629        M 0x800017e0 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5632        M                                           #; (lsu) s0  <-- 0x00100000
       0     5633        M 0x800017e4 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5634        M 0x800017e8 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5636        M                                           #; (lsu) ra  <-- 0x80000bec
       0     5637        M 0x800017ec ret                            #; ra  = 0x80000bec, goto 0x80000bec
       0     5640        M 0x80000bec lw      ra, 12(sp)             #; sp  = 0x0011fea0, ra  <~~ Word[0x0011feac]
       0     5643        M 0x80000bf0 addi    sp, sp, 48             #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fed0
       0     5644        M                                           #; (lsu) ra  <-- 0x80000b44
       0     5645        M 0x80000bf4 ret                            #; ra  = 0x80000b44, goto 0x80000b44
       0     5657        M 0x80000b44 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b44
       0     5658        M 0x80000b48 addi    a0, a0, 1636           #; a0  = 0x80002b44, (wrb) a0  <-- 0x800031a8
       0     5661        M 0x80000b4c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800031a8]
       0     5670        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     5671        M 0x80000b50 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     5673        M                                           #; (acc) s9  <-- 0x03013c87
                         M 0x80000b54 fld     fs11, 32(sp)           #; fs11 <~~ Doub[0x0011fef0]
       0     5674        M 0x80000b58 fld     fs10, 40(sp)           #; fs10 <~~ Doub[0x0011fef8], (f:lsu) fs11 <-- 0.0
       0     5675        M 0x80000b5c fld     fs9, 48(sp)            #; fs9  <~~ Doub[0x0011ff00], (f:lsu) fs10 <-- 0.0
       0     5676        M 0x80000b60 fld     fs8, 56(sp)            #; fs8  <~~ Doub[0x0011ff08], (f:lsu) fs9  <-- 0.0
       0     5677        M 0x80000b64 fld     fs7, 64(sp)            #; fs7  <~~ Doub[0x0011ff10], (f:lsu) fs8  <-- 0.0
       0     5678        M 0x80000b68 fld     fs6, 72(sp)            #; fs6  <~~ Doub[0x0011ff18], (f:lsu) fs7  <-- 0.0
       0     5679        M 0x80000b6c fld     fs5, 80(sp)            #; fs5  <~~ Doub[0x0011ff20], (f:lsu) fs6  <-- 0.0
       0     5680        M                                           #; (f:lsu) fs5  <-- 0.0
       0     5688        M 0x80000b70 fld     fs4, 88(sp)            #; fs4  <~~ Doub[0x0011ff28]
       0     5689        M 0x80000b74 fld     fs3, 96(sp)            #; fs3  <~~ Doub[0x0011ff30], (f:lsu) fs4  <-- 0.0
       0     5690        M 0x80000b78 fld     fs2, 104(sp)           #; fs2  <~~ Doub[0x0011ff38], (f:lsu) fs3  <-- 0.0
       0     5691        M 0x80000b84 lw      s2, 128(sp)            #; sp  = 0x0011fed0, s2  <~~ Word[0x0011ff50]
                         M 0x80000b7c fld     fs1, 112(sp)           #; fs1  <~~ Doub[0x0011ff40], (f:lsu) fs2  <-- 0.0
       0     5692        M 0x80000b80 fld     fs0, 120(sp)           #; fs0  <~~ Doub[0x0011ff48], (f:lsu) fs1  <-- 0.0
       0     5693        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5695        M                                           #; (lsu) s2  <-- 0
       0     5696        M 0x80000b88 lw      s1, 132(sp)            #; sp  = 0x0011fed0, s1  <~~ Word[0x0011ff54]
       0     5699        M                                           #; (lsu) s1  <-- 0
       0     5700        M 0x80000b8c lw      s0, 136(sp)            #; sp  = 0x0011fed0, s0  <~~ Word[0x0011ff58]
       0     5703        M                                           #; (lsu) s0  <-- 0
       0     5704        M 0x80000b90 lw      ra, 140(sp)            #; sp  = 0x0011fed0, ra  <~~ Word[0x0011ff5c]
       0     5705        M 0x80000b94 addi    sp, sp, 144            #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011ff60
       0     5707        M                                           #; (lsu) ra  <-- 0x80002c50
       0     5708        M 0x80000b98 ret                            #; ra  = 0x80002c50, goto 0x80002c50
       0     5724        M 0x80002c50 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5725        M 0x80002c54 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c54
       0     5726        M 0x80002c58 jalr    ra, ra, 524            #; ra  = 0x80002c54, (wrb) ra  <-- 0x80002c5c, goto 0x80002e60
       0     5747        M 0x80002e60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5748        M 0x80002e64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c5c ~~> Word[0x0011ff5c]
       0     5749        M 0x80002e68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e68
       0     5750        M 0x80002e6c jalr    ra, ra, -1264          #; ra  = 0x80002e68, (wrb) ra  <-- 0x80002e70, goto 0x80002978
       0     5761        M 0x80002978 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5762        M 0x8000297c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5764        M 0x80002980 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5767        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5768        M 0x80002984 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5771        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5772        M 0x80002988 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5773        M 0x8000298c ret                            #; ra  = 0x80002e70, goto 0x80002e70
       0     5775        M                                           #; (lsu) a0  <-- 0x00120190
       0     5776        M 0x80002e70 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5786        M                                           #; (lsu) a0  <-- 0
       0     5787        M 0x80002e74 mv      zero, a0               #; a0  = 0
       0     5788        M 0x80002e78 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5789        M 0x80002e7c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5791        M                                           #; (lsu) ra  <-- 0x80002c5c
       0     5792        M 0x80002e80 ret                            #; ra  = 0x80002c5c, goto 0x80002c5c
       0     5806        M 0x80002c5c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5810        M 0x80002c60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c60
       0     5811        M 0x80002c64 jalr    ra, ra, 556            #; ra  = 0x80002c60, (wrb) ra  <-- 0x80002c68, goto 0x80002e8c
       0     5812        M 0x80002e8c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5813        M 0x80002e90 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5814        M 0x80002e94 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002c68 ~~> Word[0x0011ff5c]
       0     5815        M 0x80002e98 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e98
       0     5816        M 0x80002e9c jalr    ra, ra, -1344          #; ra  = 0x80002e98, (wrb) ra  <-- 0x80002ea0, goto 0x80002958
       0     5827        M 0x80002958 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5828        M 0x8000295c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5831        M 0x80002960 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5834        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5835        M 0x80002964 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5838        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5839        M 0x80002968 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5840        M 0x8000296c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5842        M                                           #; (lsu) a0  <-- 0
       0     5843        M 0x80002970 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5844        M 0x80002974 ret                            #; ra  = 0x80002ea0, goto 0x80002ea0
       0     5845        M 0x80002ea0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5848        M                                           #; (lsu) t0  <-- 0
       0     5849        M 0x80002ea4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5850        M 0x80002ea8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5851        M 0x80002eac bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5852        M                                           #; (lsu) ra  <-- 0x80002c68
       0     5856        M 0x80002eb0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5857        M 0x80002eb4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5858        M 0x80002eb8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002eb8
       0     5859        M 0x80002ebc addi    t1, t1, 584            #; t1  = 0x80002eb8, (wrb) t1  <-- 0x80003100
       0     5867        M 0x80002ec0 sw      t0, 0(t1)              #; t1  = 0x80003100, 1 ~~> Word[0x80003100]
       0     5868        M 0x80002ec4 ret                            #; ra  = 0x80002c68, goto 0x80002c68
       0     5881        M 0x80002c68 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5881):
snitch_loads                                   138
snitch_stores                                  145
fpss_stores                                     61
fpss_loads                                      78
snitch_avg_load_latency                    11.7754
snitch_occupancy                            0.2380
snitch_fseq_rel_offloads                    0.1414
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.4235
fpss_avg_load_latency                       2.7436
fpss_occupancy                              0.0392
fpss_fpu_occupancy                          0.0145
fpss_fpu_rel_occupancy                      0.3696
cycles                                        5870
total_ipc                                   0.2772
