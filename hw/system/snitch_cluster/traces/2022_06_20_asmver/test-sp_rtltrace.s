       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002a70
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002a70, (wrb) ra  <-- 4120, goto 0x80002a70
       0      269        M 0x80002a70 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003a70
       0      270        M 0x80002a74 addi    gp, gp, -232           #; gp  = 0x80003a70, (wrb) gp  <-- 0x80003988
       0      271        M 0x80002a78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a78
       0      272        M 0x80002a7c jalr    ra, ra, 964            #; ra  = 0x80002a78, (wrb) ra  <-- 0x80002a80, goto 0x80002e3c
       0      292        M 0x80002e3c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002e40 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002e44 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002e48 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002e4c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002e50 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002e54 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002e58 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002e5c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002e60 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002e64 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002e68 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002e6c ret                            #; ra  = 0x80002a80, goto 0x80002a80
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002a80 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002a84 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002a88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a88
       0      508        M 0x80002a8c jalr    ra, ra, 1036           #; ra  = 0x80002a88, (wrb) ra  <-- 0x80002a90, goto 0x80002e94
       0      523        M 0x80002e94 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002e98 ret                            #; ra  = 0x80002a90, goto 0x80002a90
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002a90 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002a94 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002a98 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x80002a9c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002aa0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002aa4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002aa4
       0      551        M 0x80002aa8 addi    t0, t0, 2044           #; t0  = 0x80002aa4, (wrb) t0  <-- 0x800032a0
       0      552        M 0x80002aac auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002aac
       0      562        M 0x80002ab0 addi    t1, t1, 2040           #; t1  = 0x80002aac, (wrb) t1  <-- 0x800032a4
       0      563        M 0x80002ab4 bge     t0, t1, pc + 16        #; t0  = 0x800032a0, t1  = 0x800032a4, not taken
       0      564        M 0x80002ab8 sw      zero, 0(t0)            #; t0  = 0x800032a0, 0 ~~> Word[0x800032a0]
       0      565        M 0x80002abc addi    t0, t0, 4              #; t0  = 0x800032a0, (wrb) t0  <-- 0x800032a4
       0      573        M 0x80002ac0 blt     t0, t1, pc - 8         #; t0  = 0x800032a4, t1  = 0x800032a4, not taken
       0      574        M 0x80002ac4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002ac8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x80002acc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002ad0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002ad4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002ad8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x80002adc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002ae0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002ae4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002ae8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x80002aec fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002af0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002af4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002af8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002afc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002b00 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002b04 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002b08 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002b0c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002b10 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002b14 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002b18 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002b1c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002b20 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002b24 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002b28 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002b2c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002b30 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002b34 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002b38 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002b3c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002b40 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002b44 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002b48 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002b4c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002b50 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002b54 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002b58 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b58
       0      684        M 0x80002b5c lw      t0, 900(t0)            #; t0  = 0x80002b58, t0  <~~ Word[0x80002edc]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002b60 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002b64 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002b68 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b68
       0      708        M 0x80002b6c lw      t2, 880(t2)            #; t2  = 0x80002b68, t2  <~~ Word[0x80002ed8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002b70 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002b74 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002b78 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002b7c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002b80 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002b84 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002b88 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002b8c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002b90 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b90
       0      762        M 0x80002b94 addi    t0, t0, 1528           #; t0  = 0x80002b90, (wrb) t0  <-- 0x80003188
       0      763        M 0x80002b98 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b98
       0      764        M 0x80002b9c addi    t1, t1, 1520           #; t1  = 0x80002b98, (wrb) t1  <-- 0x80003188
       0      775        M 0x80002ba0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ba0
       0      776        M 0x80002ba4 addi    t2, t2, 1512           #; t2  = 0x80002ba0, (wrb) t2  <-- 0x80003188
       0      777        M 0x80002ba8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002ba8
       0      778        M 0x80002bac addi    t3, t3, 1520           #; t3  = 0x80002ba8, (wrb) t3  <-- 0x80003198
       0      787        M 0x80002bb0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003188, (wrb) sp  <-- 0x801230f8
       0      788        M 0x80002bb4 sub     sp, sp, t1             #; sp  = 0x801230f8, t1  = 0x80003188, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002bb8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003188, (wrb) sp  <-- 0x801230f8
       0      790        M 0x80002bbc sub     sp, sp, t3             #; sp  = 0x801230f8, t3  = 0x80003198, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002bc0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002bc4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002bc8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002bcc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002bd0 bge     t0, t1, pc + 24        #; t0  = 0x80003188, t1  = 0x80003188, taken, goto 0x80002be8
       0      823        M 0x80002be8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002be8
       0      824        M 0x80002bec addi    t0, t0, 1440           #; t0  = 0x80002be8, (wrb) t0  <-- 0x80003188
       0      835        M 0x80002bf0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002bf0
       0      836        M 0x80002bf4 addi    t1, t1, 1448           #; t1  = 0x80002bf0, (wrb) t1  <-- 0x80003198
       0      837        M 0x80002bf8 bge     t0, t1, pc + 20        #; t0  = 0x80003188, t1  = 0x80003198, not taken
       0      838        M 0x80002bfc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002c00 addi    t0, t0, 4              #; t0  = 0x80003188, (wrb) t0  <-- 0x8000318c
       0      848        M 0x80002c04 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002c08 blt     t0, t2, pc - 12        #; t0  = 0x8000318c, t2  = 0x80003188, not taken
       0      850        M 0x80002c0c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002c10 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002c14 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002c18 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002c1c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002c20 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002c24 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c24
       0      877        M 0x80002c28 jalr    ra, ra, -1060          #; ra  = 0x80002c24, (wrb) ra  <-- 0x80002c2c, goto 0x80002800
       0      898        M 0x80002800 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002804 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002808 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x8000280c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002810 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002814 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002818 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x8000281c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002820 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002824 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002828 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x8000282c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002830 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002834 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002838 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x8000283c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002840 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002844 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002848 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x8000284c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002850 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002854 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002858 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x8000285c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002860 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002864 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002868 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x8000286c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002870 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002874 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002878 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x8000287c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002880 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002884 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002888 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x8000288c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x80002890 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x80002894 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x80002898 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x8000289c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x800028a0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x800028a4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x800028a8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800028ac sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x800028b0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x800028b4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x800028b8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x800028bc sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x800028c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x800028c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x800028c8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x800028cc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x800028d0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x800028d4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x800028d8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x800028dc remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x800028e0 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x800028e4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x800028e8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x800028ec li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x800028f0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x800028f4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800038f4
       0     1281        M 0x800028f8 addi    a1, a1, -1616          #; a1  = 0x800038f4, (wrb) a1  <-- 0x800032a4
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x800028fc add     a0, a0, a1             #; a0  = 0, a1  = 0x800032a4, (wrb) a0  <-- 0x800032a4
       0     1291        M 0x80002900 sw      zero, 0(a0)            #; a0  = 0x800032a4, 0 ~~> Word[0x800032a4]
       0     1292        M 0x80002904 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80002908 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x8000290c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002910 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002914 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002918 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000291c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002920 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002924 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002928 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000292c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80002930 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80002934 lw      a0, 0(a1)              #; a1  = 0x800032a4, a0  <~~ Word[0x800032a4]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80002938 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x8000293c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x80002940 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x80002944 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x80002948 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x8000294c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x80002950 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x80002954 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x80002958 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x8000295c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x80002960 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x80002964 ret                            #; ra  = 0x80002c2c, goto 0x80002c2c
       0     1415        M 0x80002c2c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002c30 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002c34 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002c38 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002c3c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002c40 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002c44 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002c44
       0     1434        M 0x80002c48 addi    t0, t0, 60             #; t0  = 0x80002c44, (wrb) t0  <-- 0x80002c80
       0     1435        M 0x80002c4c csrw    mtvec, t0              #; t0  = 0x80002c80, (lsu) a4  <-- 4132
       0     1443        M 0x80002c50 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c50
       0     1444        M 0x80002c54 jalr    ra, ra, 544            #; ra  = 0x80002c50, (wrb) ra  <-- 0x80002c58, goto 0x80002e70
       0     1460        M 0x80002e70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80002e74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c58 ~~> Word[0x0011ff5c]
       0     1462        M 0x80002e78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e78
       0     1463        M 0x80002e7c jalr    ra, ra, -1264          #; ra  = 0x80002e78, (wrb) ra  <-- 0x80002e80, goto 0x80002988
       0     1481        M 0x80002988 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x8000298c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x80002990 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x80002994 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x80002998 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x8000299c ret                            #; ra  = 0x80002e80, goto 0x80002e80
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80002e80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80002e84 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80002e88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x80002e8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x80002c58
       0     1541        M 0x80002e90 ret                            #; ra  = 0x80002c58, goto 0x80002c58
       0     1545        M 0x80002c58 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000c58
       0     1546        M 0x80002c5c jalr    ra, ra, -1572          #; ra  = 0x80000c58, (wrb) ra  <-- 0x80002c60, goto 0x80000634
       0     1551        M 0x80000634 addi    sp, sp, -48            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff30
       0     1552        M 0x80000638 sw      ra, 44(sp)             #; sp  = 0x0011ff30, 0x80002c60 ~~> Word[0x0011ff5c]
       0     1555        M 0x8000063c fsd     fs0, 32(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1556        M 0x80000648 lui     a0, 0x0                #; (wrb) a0  <-- 0
                         M 0x80000640 fsd     fs1, 24(sp)            #; 0.0 ~~> Doub[0x0011ff48]
       0     1557        M 0x8000064c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000644 fsd     fs2, 16(sp)            #; 0.0 ~~> Doub[0x0011ff40]
       0     1567        M 0x80000650 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1568        M 0x80000654 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1570        M                                           #; (lsu) a1  <-- 0
       0     1571        M 0x80000658 bnez    a1, pc + 1340          #; a1  = 0, not taken
       0     1572        M 0x8000065c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1579        M 0x80000660 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1580        M 0x80000664 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1583        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1584        M 0x80000668 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1587        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1588        M 0x8000066c lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1591        M                                           #; (lsu) a0  <-- 0x00100000
       0     1595        M 0x80000670 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1598        M                                           #; (lsu) a1  <-- 0x00100000
       0     1599        M 0x80000674 lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1600        M 0x80000678 addi    a4, a0, 80             #; a0  = 0x00100000, (wrb) a4  <-- 0x00100050
       0     1602        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1603        M 0x8000067c add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1608        M 0x80000680 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100050, taken, goto 0x80000698
       0     1633        M 0x80000698 mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     1634        M 0x8000069c sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1645        M 0x800006a0 addi    a5, a0, 160            #; a0  = 0x00100000, (wrb) a5  <-- 0x001000a0
       0     1646        M 0x800006a4 mv      a0, a4                 #; a4  = 0x00100050, (wrb) a0  <-- 0x00100050
       0     1647        M 0x800006a8 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x001000a0, taken, goto 0x80000690
       0     1648        M 0x80000690 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1649        M 0x80000694 j       pc + 0x1c              #; goto 0x800006b0
       0     1660        M 0x800006b0 srli    a2, a1, 20             #; a1  = 0x00100000, (wrb) a2  <-- 1
       0     1661        M 0x800006b4 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1662        M 0x800006b8 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1663        M 0x800006bc addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     1672        M 0x800006c0 sltu    a3, a1, a3             #; a1  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     1673        M 0x800006c4 and     a6, a2, a3             #; a2  = 1, a3  = 1, (wrb) a6  <-- 1
       0     1674        M 0x800006c8 beqz    a6, pc + 212           #; a6  = 1, not taken
       0     1675        M 0x800006cc li      a2, 8                  #; (wrb) a2  <-- 8
       0     1684        M 0x800006d0 li      a3, 9                  #; (wrb) a3  <-- 9
       0     1685        M 0x800006d4 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1686        M 0x800006d8 li      a5, 192                #; (wrb) a5  <-- 192
       0     1687        M 0x800006dc scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     1696        M 0x800006e0 scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     1697        M 0x800006e4 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1698        M 0x800006e8 scfgw   zero, a2               #; a2  = 32
       0     1699        M 0x800006ec auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036ec
       0     1708        M 0x800006f0 addi    a2, a2, -1364          #; a2  = 0x800036ec, (wrb) a2  <-- 0x80003198
       0     1710        M 0x800006f8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036f8
       0     1711        M 0x800006fc addi    a2, a2, -1368          #; a2  = 0x800036f8, (wrb) a2  <-- 0x800031a0
                         M 0x800006f4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003198]
       0     1720        M                                           #; (f:lsu) ft3  <-- 3.141
       0     1721        M 0x80000704 scfgwi  a1, 896                #; a1  = 0x00100000
       0     1722        M 0x80000700 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031a0]
       0     1723        M 0x80000708 csrsi   ssr, 1                 #; 
       0     1725        M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
       0     1726        M                                           #; (f:fpu) ft0  <-- 3.141
       0     1731        M                                           #; (f:lsu) ft4  <-- 6.282
       0     1733        M 0x80000714 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003714
       0     1734        M 0x80000718 addi    a2, a2, -1388          #; a2  = 0x80003714, (wrb) a2  <-- 0x800031a8
                         M 0x80000710 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     1735        M                                           #; (f:fpu) ft0  <-- 6.282
       0     1737        M 0x8000071c fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800031a8]
       0     1744        M 0x80000720 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003720
       0     1745        M 0x80000724 addi    a2, a2, -1392          #; a2  = 0x80003720, (wrb) a2  <-- 0x800031b0
       0     1746        M                                           #; (f:lsu) ft3  <-- 9.423
       0     1747        M 0x8000072c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000372c
       0     1748        M 0x80000728 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031b0]
       0     1756        M 0x80000730 addi    a2, a2, -1396          #; a2  = 0x8000372c, (wrb) a2  <-- 0x800031b8
       0     1757        M                                           #; (f:lsu) ft4  <-- 12.564
       0     1758        M 0x80000738 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003738
       0     1759        M 0x8000073c addi    a2, a2, -1400          #; a2  = 0x80003738, (wrb) a2  <-- 0x800031c0
                         M 0x80000734 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800031b8]
       0     1768        M                                           #; (f:lsu) ft5  <-- 15.705
       0     1770        M 0x80000740 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800031c0]
       0     1771        M 0x80000744 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423
       0     1772        M 0x80000748 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1773        M 0x8000074c fsgnj.d ft0, ft5, ft5          #; ft5  = 15.705, ft5  = 15.705, (f:fpu) ft0  <-- 12.564
       0     1774        M                                           #; (f:fpu) ft0  <-- 15.705
       0     1779        M                                           #; (f:lsu) ft6  <-- 18.846
       0     1781        M 0x80000754 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003754
       0     1782        M 0x80000758 addi    a2, a2, -1420          #; a2  = 0x80003754, (wrb) a2  <-- 0x800031c8
                         M 0x80000750 fsgnj.d ft0, ft6, ft6          #; ft6  = 18.846, ft6  = 18.846
       0     1783        M                                           #; (f:fpu) ft0  <-- 18.846
       0     1785        M 0x8000075c fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800031c8]
       0     1792        M 0x80000760 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003760
       0     1793        M 0x80000764 addi    a2, a2, -1424          #; a2  = 0x80003760, (wrb) a2  <-- 0x800031d0
       0     1794        M                                           #; (f:lsu) ft3  <-- 21.9870000
       0     1795        M 0x8000076c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000376c
       0     1796        M 0x80000768 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031d0]
       0     1804        M 0x80000770 addi    a2, a2, -1428          #; a2  = 0x8000376c, (wrb) a2  <-- 0x800031d8
       0     1805        M                                           #; (f:lsu) ft4  <-- 25.128
       0     1806        M 0x80000778 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003778
       0     1807        M 0x8000077c addi    a2, a2, -1432          #; a2  = 0x80003778, (wrb) a2  <-- 0x800031e0
                         M 0x80000774 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800031d8]
       0     1816        M                                           #; (f:lsu) ft5  <-- 28.269
       0     1818        M 0x80000780 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800031e0]
       0     1819        M 0x80000784 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000
       0     1820        M 0x80000788 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     1821        M 0x8000078c fsgnj.d ft0, ft5, ft5          #; ft5  = 28.269, ft5  = 28.269, (f:fpu) ft0  <-- 25.128
       0     1822        M                                           #; (f:fpu) ft0  <-- 28.269
       0     1827        M                                           #; (f:lsu) ft6  <-- 31.41
       0     1830        M 0x80000798 j       pc + 0xcc              #; goto 0x80000864
                         M 0x80000790 fsgnj.d ft0, ft6, ft6          #; ft6  = 31.41, ft6  = 31.41
       0     1831        M 0x80000794 csrci   ssr, 1                 #; (f:fpu) ft0  <-- 31.41
       0     1840        M 0x80000864 srli    a2, a0, 20             #; a0  = 0x00100050, (wrb) a2  <-- 1
       0     1841        M 0x80000868 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1842        M 0x8000086c lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1852        M 0x80000870 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     1853        M 0x80000874 sltu    a3, a0, a3             #; a0  = 0x00100050, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     1854        M 0x80000878 and     a5, a2, a3             #; a2  = 1, a3  = 1, (wrb) a5  <-- 1
       0     1855        M 0x8000087c beqz    a5, pc + 408           #; a5  = 1, not taken
       0     1864        M 0x80000880 li      a7, 8                  #; (wrb) a7  <-- 8
       0     1865        M 0x80000884 li      a4, 9                  #; (wrb) a4  <-- 9
       0     1866        M 0x80000888 li      a2, 64                 #; (wrb) a2  <-- 64
       0     1867        M 0x8000088c li      a3, 192                #; (wrb) a3  <-- 192
       0     1876        M 0x80000890 scfgw   a4, a2                 #; a4  = 9, a2  = 64
       0     1877        M 0x80000894 scfgw   a7, a3                 #; a7  = 8, a3  = 192
       0     1878        M 0x80000898 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1879        M 0x8000089c scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
       0     1888        M 0x800008a0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038a0
       0     1889        M 0x800008a4 addi    a2, a2, -1800          #; a2  = 0x800038a0, (wrb) a2  <-- 0x80003198
       0     1891        M 0x800008ac auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038ac
       0     1892        M 0x800008a8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003198]
       0     1900        M 0x800008b0 addi    a2, a2, -1804          #; a2  = 0x800038ac, (wrb) a2  <-- 0x800031a0
       0     1901        M                                           #; (f:lsu) ft3  <-- 3.141
       0     1902        M 0x800008b8 scfgwi  a0, 896                #; a0  = 0x00100050
       0     1903        M 0x800008b4 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031a0]
       0     1904        M 0x800008bc csrsi   ssr, 1                 #; 
       0     1912        M                                           #; (f:lsu) ft4  <-- 6.282
       0     1914        M 0x800008c8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038c8
                         M 0x800008c0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
       0     1915        M 0x800008cc addi    a2, a2, -1824          #; a2  = 0x800038c8, (wrb) a2  <-- 0x800031a8
                         M 0x800008c4 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
       0     1916        M                                           #; (f:fpu) ft0  <-- 6.282
       0     1925        M 0x800008d4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038d4
       0     1926        M 0x800008d8 addi    a2, a2, -1828          #; a2  = 0x800038d4, (wrb) a2  <-- 0x800031b0
                         M 0x800008d0 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800031a8]
       0     1929        M 0x800008dc fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031b0]
       0     1935        M                                           #; (f:lsu) ft3  <-- 9.423
       0     1936        M 0x800008e0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038e0
       0     1937        M 0x800008e4 addi    a2, a2, -1832          #; a2  = 0x800038e0, (wrb) a2  <-- 0x800031b8
       0     1938        M                                           #; (f:lsu) ft4  <-- 12.564
       0     1939        M 0x800008ec auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038ec
       0     1940        M 0x800008e8 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800031b8]
       0     1948        M 0x800008f0 addi    a2, a2, -1836          #; a2  = 0x800038ec, (wrb) a2  <-- 0x800031c0
       0     1949        M                                           #; (f:lsu) ft5  <-- 15.705
       0     1951        M 0x800008f4 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800031c0]
       0     1952        M 0x800008f8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423
       0     1953        M 0x800008fc fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1954        M                                           #; (f:fpu) ft0  <-- 12.564
       0     1960        M                                           #; (f:lsu) ft6  <-- 18.846
       0     1962        M 0x80000908 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003908
                         M 0x80000900 fsgnj.d ft0, ft5, ft5          #; ft5  = 15.705, ft5  = 15.705
       0     1963        M 0x8000090c addi    a2, a2, -1856          #; a2  = 0x80003908, (wrb) a2  <-- 0x800031c8
                         M 0x80000904 fsgnj.d ft0, ft6, ft6          #; ft6  = 18.846, ft6  = 18.846, (f:fpu) ft0  <-- 15.705
       0     1964        M                                           #; (f:fpu) ft0  <-- 18.846
       0     1973        M 0x80000914 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003914
       0     1974        M 0x80000918 addi    a2, a2, -1860          #; a2  = 0x80003914, (wrb) a2  <-- 0x800031d0
                         M 0x80000910 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800031c8]
       0     1977        M 0x8000091c fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031d0]
       0     1983        M                                           #; (f:lsu) ft3  <-- 21.9870000
       0     1984        M 0x80000920 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003920
       0     1985        M 0x80000924 addi    a2, a2, -1864          #; a2  = 0x80003920, (wrb) a2  <-- 0x800031d8
       0     1986        M                                           #; (f:lsu) ft4  <-- 25.128
       0     1987        M 0x8000092c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000392c
       0     1988        M 0x80000928 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800031d8]
       0     1996        M 0x80000930 addi    a2, a2, -1868          #; a2  = 0x8000392c, (wrb) a2  <-- 0x800031e0
       0     1997        M                                           #; (f:lsu) ft5  <-- 28.269
       0     1999        M 0x80000934 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800031e0]
       0     2000        M 0x80000938 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000
       0     2001        M 0x8000093c fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     2002        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2008        M                                           #; (f:lsu) ft6  <-- 31.41
       0     2010        M 0x80000940 fsgnj.d ft0, ft5, ft5          #; ft5  = 28.269, ft5  = 28.269
       0     2011        M 0x8000094c and     a2, a6, a5             #; a6  = 1, a5  = 1, (wrb) a2  <-- 1
                         M 0x80000944 fsgnj.d ft0, ft6, ft6          #; ft6  = 31.41, ft6  = 31.41, (f:fpu) ft0  <-- 28.269
       0     2012        M 0x80000948 csrci   ssr, 1                 #; (f:fpu) ft0  <-- 31.41
       0     2020        M 0x80000950 beqz    a2, pc + 396           #; a2  = 1, not taken
       0     2021        M 0x80000954 li      a2, 64                 #; (wrb) a2  <-- 64
       0     2022        M 0x80000958 li      a3, 192                #; (wrb) a3  <-- 192
       0     2023        M 0x8000095c scfgw   a4, a2                 #; a4  = 9, a2  = 64
       0     2032        M 0x80000960 scfgw   a7, a3                 #; a7  = 8, a3  = 192
       0     2033        M 0x80000964 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2034        M 0x80000968 scfgw   zero, a2               #; a2  = 32
       0     2035        M 0x8000096c scfgwi  a1, 768                #; a1  = 0x00100000
       0     2044        M 0x80000970 li      a1, 1                  #; (wrb) a1  <-- 1
       0     2045        M 0x80000974 addi    a2, a1, 64             #; a1  = 1, (wrb) a2  <-- 65
       0     2046        M 0x80000978 addi    a3, a1, 192            #; a1  = 1, (wrb) a3  <-- 193
       0     2047        M 0x8000097c scfgw   a4, a2                 #; a4  = 9, a2  = 65
       0     2056        M 0x80000980 scfgw   a7, a3                 #; a7  = 8, a3  = 193
       0     2057        M 0x80000984 addi    a1, a1, 32             #; a1  = 1, (wrb) a1  <-- 33
       0     2058        M 0x80000988 scfgw   zero, a1               #; a1  = 33
       0     2059        M 0x8000098c scfgwi  a0, 769                #; a0  = 0x00100050
       0     2069        M 0x80000990 csrsi   ssr, 1                 #; 
       0     2071        M 0x80000994 fsgnj.d ft3, ft0, ft0          #; ft0  = 3.141, ft0  = 3.141
       0     2072        M 0x80000998 fsgnj.d ft4, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft3  <-- 3.141
       0     2073        M 0x8000099c fsgnj.d ft5, ft0, ft0          #; ft0  = 6.282, ft0  = 6.282, (f:fpu) ft4  <-- 3.141
       0     2074        M                                           #; (f:fpu) ft5  <-- 6.282
       0     2082        M 0x800009a0 fsgnj.d ft6, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
       0     2083        M 0x800009a4 fsgnj.d ft7, ft0, ft0          #; ft0  = 9.423, ft0  = 9.423, (f:fpu) ft6  <-- 6.282
       0     2084        M 0x800009a8 fsgnj.d fa0, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423, (f:fpu) ft7  <-- 9.423
       0     2085        M 0x800009ac fsgnj.d fa1, ft0, ft0          #; ft0  = 12.564, ft0  = 12.564, (f:fpu) fa0  <-- 9.423
       0     2086        M                                           #; (f:fpu) fa1  <-- 12.564
       0     2094        M 0x800009b0 fsgnj.d fa2, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
       0     2095        M 0x800009b4 fsgnj.d fa3, ft0, ft0          #; ft0  = 15.705, ft0  = 15.705, (f:fpu) fa2  <-- 12.564
       0     2096        M 0x800009b8 fsgnj.d fa4, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) fa3  <-- 15.705
       0     2097        M 0x800009bc fsgnj.d fa5, ft0, ft0          #; ft0  = 18.846, ft0  = 18.846, (f:fpu) fa4  <-- 15.705
       0     2098        M                                           #; (f:fpu) fa5  <-- 18.846
       0     2106        M 0x800009c0 fsgnj.d fa6, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
       0     2107        M 0x800009c4 fsgnj.d fa7, ft0, ft0          #; ft0  = 21.9870000, ft0  = 21.9870000, (f:fpu) fa6  <-- 18.846
       0     2108        M 0x800009c8 fsgnj.d ft8, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) fa7  <-- 21.9870000
       0     2109        M 0x800009cc fsgnj.d ft9, ft0, ft0          #; ft0  = 25.128, ft0  = 25.128, (f:fpu) ft8  <-- 21.9870000
       0     2110        M                                           #; (f:fpu) ft9  <-- 25.128
       0     2118        M 0x800009d0 fsgnj.d ft10, ft1, ft1         #; ft1  = 25.128, ft1  = 25.128
       0     2119        M 0x800009d4 fsgnj.d ft11, ft0, ft0         #; ft0  = 28.269, ft0  = 28.269, (f:fpu) ft10 <-- 25.128
       0     2120        M 0x800009d8 fsgnj.d fs0, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269, (f:fpu) ft11 <-- 28.269
       0     2121        M 0x800009dc fsgnj.d fs1, ft0, ft0          #; ft0  = 31.41, ft0  = 31.41, (f:fpu) fs0  <-- 28.269
       0     2122        M                                           #; (f:fpu) fs1  <-- 31.41
       0     2130        M 0x800009e0 fsgnj.d fs2, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
       0     2131        M 0x800009e4 csrci   ssr, 1                 #; (f:fpu) fs2  <-- 31.41
       0     2133        M 0x800009e8 fmul.d  ft0, ft4, ft3          #; ft4  = 3.141, ft3  = 3.141
       0     2136        M                                           #; (f:fpu) ft0  <-- 9.865881
       0     2137        M 0x800009ec fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 6.282, ft5  = 6.282, ft0  = 9.865881
       0     2140        M                                           #; (f:fpu) ft0  <-- 49.3294050
       0     2142        M 0x800009f0 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 9.423, ft7  = 9.423, ft0  = 49.3294050
       0     2145        M                                           #; (f:fpu) ft0  <-- 138.1223340
       0     2146        M 0x800009f4 fmadd.d ft0, fa2, fa1, ft0     #; fa2  = 12.564, fa1  = 12.564, ft0  = 138.1223340
       0     2149        M                                           #; (f:fpu) ft0  <-- 295.9764300
       0     2150        M 0x800009f8 fmadd.d ft0, fa4, fa3, ft0     #; fa4  = 15.705, fa3  = 15.705, ft0  = 295.9764300
       0     2153        M                                           #; (f:fpu) ft0  <-- 542.6234550
       0     2154        M 0x800009fc fmadd.d ft0, fa6, fa5, ft0     #; fa6  = 18.846, fa5  = 18.846, ft0  = 542.6234550
       0     2157        M                                           #; (f:fpu) ft0  <-- 897.7951710
       0     2158        M 0x80000a00 fmadd.d ft0, ft8, fa7, ft0     #; ft8  = 21.9870000, fa7  = 21.9870000, ft0  = 897.7951710
       0     2161        M                                           #; (f:fpu) ft0  <-- 1381.2233400
       0     2162        M 0x80000a04 fmadd.d ft0, ft10, ft9, ft0    #; ft10 = 25.128, ft9  = 25.128, ft0  = 1381.2233400
       0     2164        M 0x80000a10 j       pc + 0x144             #; goto 0x80000b54
       0     2165        M                                           #; (f:fpu) ft0  <-- 2012.6397240
       0     2166        M 0x80000a08 fmadd.d ft0, fs0, ft11, ft0    #; fs0  = 28.269, ft11 = 28.269, ft0  = 2012.6397240
       0     2169        M                                           #; (f:fpu) ft0  <-- 2811.7760850
       0     2170        M 0x80000a0c fmadd.d ft0, fs2, fs1, ft0     #; fs2  = 31.41, fs1  = 31.41, ft0  = 2811.7760850
       0     2173        M                                           #; (f:fpu) ft0  <-- 3798.3641850
       0     2176        M 0x80000b54 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b54
       0     2177        M 0x80000b58 addi    a0, a0, 1684           #; a0  = 0x80002b54, (wrb) a0  <-- 0x800031e8
       0     2180        M 0x80000b5c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800031e8]
       0     2189        M                                           #; (f:lsu) ft1  <-- -3798.3641850
       0     2190        M 0x80000b60 fadd.d  ft0, ft0, ft1          #; ft0  = 3798.3641850, ft1  = -3798.3641850
       0     2191        M 0x80000b6c lw      a2, 8(sp)              #; sp  = 0x0011ff30, a2  <~~ Word[0x0011ff38]
       0     2193        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2194        M                                           #; (lsu) a2  <-- 0
                         M 0x80000b64 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     2195        M                                           #; (f:fpu) fs0  <-- 0.0
       0     2196        M 0x80000b68 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff38]
       0     2200        M 0x80000b70 lw      a3, 12(sp)             #; sp  = 0x0011ff30, a3  <~~ Word[0x0011ff3c]
       0     2201        M 0x80000b74 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b74
       0     2202        M 0x80000b78 addi    a0, a0, 881            #; a0  = 0x80002b74, (wrb) a0  <-- 0x80002ee5
       0     2203        M 0x80000b7c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b7c
       0     2204        M                                           #; (lsu) a3  <-- 0
       0     2212        M 0x80000b80 jalr    ra, ra, 48             #; ra  = 0x80000b7c, (wrb) ra  <-- 0x80000b84, goto 0x80000bac
       0     2217        M 0x80000bac addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
       0     2220        M 0x80000bb0 sw      ra, 12(sp)             #; sp  = 0x0011ff00, 0x80000b84 ~~> Word[0x0011ff0c]
       0     2221        M 0x80000bb4 mv      t0, a0                 #; a0  = 0x80002ee5, (wrb) t0  <-- 0x80002ee5
       0     2222        M 0x80000bb8 sw      a7, 44(sp)             #; sp  = 0x0011ff00, 8 ~~> Word[0x0011ff2c]
       0     2223        M 0x80000bbc sw      a6, 40(sp)             #; sp  = 0x0011ff00, 1 ~~> Word[0x0011ff28]
       0     2232        M 0x80000bc0 sw      a5, 36(sp)             #; sp  = 0x0011ff00, 1 ~~> Word[0x0011ff24]
       0     2233        M 0x80000bc4 sw      a4, 32(sp)             #; sp  = 0x0011ff00, 9 ~~> Word[0x0011ff20]
       0     2234        M 0x80000bc8 sw      a3, 28(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff1c]
       0     2235        M 0x80000bcc sw      a2, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
       0     2244        M 0x80000bd0 sw      a1, 20(sp)             #; sp  = 0x0011ff00, 33 ~~> Word[0x0011ff14]
       0     2245        M 0x80000bd4 addi    a0, sp, 20             #; sp  = 0x0011ff00, (wrb) a0  <-- 0x0011ff14
       0     2246        M 0x80000bd8 sw      a0, 8(sp)              #; sp  = 0x0011ff00, 0x0011ff14 ~~> Word[0x0011ff08]
       0     2247        M 0x80000bdc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001bdc
       0     2256        M 0x80000be0 addi    a0, a0, -988           #; a0  = 0x80001bdc, (wrb) a0  <-- 0x80001800
       0     2257        M 0x80000be4 addi    a1, sp, 7              #; sp  = 0x0011ff00, (wrb) a1  <-- 0x0011ff07
       0     2258        M 0x80000be8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2259        M 0x80000bec addi    a4, sp, 20             #; sp  = 0x0011ff00, (wrb) a4  <-- 0x0011ff14
       0     2268        M 0x80000bf0 mv      a3, t0                 #; t0  = 0x80002ee5, (wrb) a3  <-- 0x80002ee5
       0     2269        M 0x80000bf4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000bf4
       0     2270        M 0x80000bf8 jalr    ra, ra, 20             #; ra  = 0x80000bf4, (wrb) ra  <-- 0x80000bfc, goto 0x80000c08
       0     2280        M 0x80000c08 addi    sp, sp, -112           #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fe90
       0     2281        M 0x80000c0c sw      ra, 108(sp)            #; sp  = 0x0011fe90, 0x80000bfc ~~> Word[0x0011fefc]
       0     2292        M 0x80000c10 sw      s0, 104(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef8]
       0     2293        M 0x80000c14 sw      s1, 100(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef4]
       0     2294        M 0x80000c18 sw      s2, 96(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef0]
       0     2295        M 0x80000c1c sw      s3, 92(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011feec]
       0     2304        M 0x80000c20 sw      s4, 88(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee8]
       0     2305        M 0x80000c24 sw      s5, 84(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee4]
       0     2306        M 0x80000c28 sw      s6, 80(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee0]
       0     2307        M 0x80000c2c sw      s7, 76(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fedc]
       0     2316        M 0x80000c30 sw      s8, 72(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed8]
       0     2317        M 0x80000c34 sw      s9, 68(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed4]
       0     2318        M 0x80000c38 sw      s10, 64(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed0]
       0     2319        M 0x80000c3c sw      s11, 60(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fecc]
       0     2328        M 0x80000c40 mv      s3, a4                 #; a4  = 0x0011ff14, (wrb) s3  <-- 0x0011ff14
       0     2329        M 0x80000c44 mv      s0, a3                 #; a3  = 0x80002ee5, (wrb) s0  <-- 0x80002ee5
       0     2330        M 0x80000c48 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2331        M 0x80000c4c mv      s4, a1                 #; a1  = 0x0011ff07, (wrb) s4  <-- 0x0011ff07
       0     2340        M 0x80000c50 beqz    a1, pc + 12            #; a1  = 0x0011ff07, not taken
       0     2341        M 0x80000c54 mv      s2, a0                 #; a0  = 0x80001800, (wrb) s2  <-- 0x80001800
       0     2342        M 0x80000c58 j       pc + 0xc               #; goto 0x80000c64
       0     2352        M 0x80000c64 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2353        M 0x80000c68 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2354        M 0x80000c6c li      s11, 16                #; (wrb) s11 <-- 16
       0     2364        M 0x80000c70 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2365        M 0x80000c74 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2366        M 0x80000c78 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2367        M 0x80000c7c sw      a0, 24(sp)             #; sp  = 0x0011fe90, 2048 ~~> Word[0x0011fea8]
       0     2376        M 0x80000c80 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2377        M 0x80000c84 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2378        M 0x80000c88 sw      a0, 16(sp)             #; sp  = 0x0011fe90, 65535 ~~> Word[0x0011fea0]
       0     2379        M 0x80000c8c addi    s10, s0, 2             #; s0  = 0x80002ee5, (wrb) s10 <-- 0x80002ee7
       0     2388        M 0x80000c90 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2389        M 0x80000c94 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2390        M 0x80000c98 lbu     a0, 0(s0)              #; s0  = 0x80002ee5, a0  <~~ Byte[0x80002ee5]
       0     2401        M                                           #; (lsu) a0  <-- 101
       0     2402        M 0x80000c9c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2403        M 0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2404        M 0x80000ca4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2405        M 0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2406        M 0x80000cac mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2415        M 0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2416        M 0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
       0     2438        M 0x80001800 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2439        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2440        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2441        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2450        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     2451        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     2452        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     2453        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2464        M                                           #; (lsu) a4  <-- 0
       0     2465        M 0x80001820 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2466        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 1 ~~> Word[0x800032a4]
       0     2467        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 0, (wrb) a4  <-- 0x800032a4
       0     2468        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a4, 101 ~~> Byte[0x800032ec]
       0     2474        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2490        M                                           #; (lsu) a4  <-- 1
       0     2491        M 0x80001834 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2492        M 0x80001838 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2493        M 0x8000183c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2494        M 0x80001840 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2495        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2496        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     2517        M 0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     2531        M 0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee5, (wrb) s0  <-- 0x80002ee6
       0     2532        M 0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ee7, (wrb) s10 <-- 0x80002ee8
       0     2534        M 0x80000cc0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2535        M 0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee6, a0  <~~ Byte[0x80002ee6]
       0     2546        M                                           #; (lsu) a0  <-- 114
       0     2547        M 0x80000cc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ca0
       0     2548        M 0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2549        M 0x80000ca4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2550        M 0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2551        M 0x80000cac mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2552        M 0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2553        M 0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
       0     2556        M 0x80001800 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2557        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2558        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2559        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2560        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     2561        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     2562        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2563        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     2564        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2575        M                                           #; (lsu) a4  <-- 1
       0     2576        M 0x80001820 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2577        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 2 ~~> Word[0x800032a4]
       0     2578        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 1, (wrb) a4  <-- 0x800032a5
       0     2579        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a5, 114 ~~> Byte[0x800032ed]
       0     2580        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2601        M                                           #; (lsu) a4  <-- 2
       0     2602        M 0x80001834 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2603        M 0x80001838 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2604        M 0x8000183c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2605        M 0x80001840 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2606        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2607        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     2610        M 0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     2615        M 0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee6, (wrb) s0  <-- 0x80002ee7
       0     2616        M 0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ee8, (wrb) s10 <-- 0x80002ee9
       0     2618        M 0x80000cc0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2619        M 0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee7, a0  <~~ Byte[0x80002ee7]
       0     2630        M                                           #; (lsu) a0  <-- 114
       0     2631        M 0x80000cc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ca0
       0     2632        M 0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2633        M 0x80000ca4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2634        M 0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2635        M 0x80000cac mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2636        M 0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2637        M 0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
       0     2640        M 0x80001800 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2641        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2642        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2643        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2644        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     2645        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     2646        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2647        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     2648        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2659        M                                           #; (lsu) a4  <-- 2
       0     2660        M 0x80001820 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2661        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 3 ~~> Word[0x800032a4]
       0     2662        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 2, (wrb) a4  <-- 0x800032a6
       0     2663        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a6, 114 ~~> Byte[0x800032ee]
       0     2664        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2685        M                                           #; (lsu) a4  <-- 3
       0     2686        M 0x80001834 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2687        M 0x80001838 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2688        M 0x8000183c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2689        M 0x80001840 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2690        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2691        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     2694        M 0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     2699        M 0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee7, (wrb) s0  <-- 0x80002ee8
       0     2700        M 0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ee9, (wrb) s10 <-- 0x80002eea
       0     2702        M 0x80000cc0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2703        M 0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee8, a0  <~~ Byte[0x80002ee8]
       0     2714        M                                           #; (lsu) a0  <-- 111
       0     2715        M 0x80000cc8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000ca0
       0     2716        M 0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2717        M 0x80000ca4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2718        M 0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2719        M 0x80000cac mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2720        M 0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2721        M 0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
       0     2724        M 0x80001800 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2725        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2726        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2727        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2728        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     2729        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     2730        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2731        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     2732        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2743        M                                           #; (lsu) a4  <-- 3
       0     2744        M 0x80001820 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2745        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 4 ~~> Word[0x800032a4]
       0     2746        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 3, (wrb) a4  <-- 0x800032a7
       0     2747        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a7, 111 ~~> Byte[0x800032ef]
       0     2748        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2769        M                                           #; (lsu) a4  <-- 4
       0     2770        M 0x80001834 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2771        M 0x80001838 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2772        M 0x8000183c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2773        M 0x80001840 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2774        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2775        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     2778        M 0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     2783        M 0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee8, (wrb) s0  <-- 0x80002ee9
       0     2784        M 0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eea, (wrb) s10 <-- 0x80002eeb
       0     2786        M 0x80000cc0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2787        M 0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee9, a0  <~~ Byte[0x80002ee9]
       0     2798        M                                           #; (lsu) a0  <-- 114
       0     2799        M 0x80000cc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ca0
       0     2800        M 0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2801        M 0x80000ca4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2802        M 0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2803        M 0x80000cac mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2804        M 0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2805        M 0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
       0     2808        M 0x80001800 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2809        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2810        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2811        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2812        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     2813        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     2814        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2815        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     2816        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2827        M                                           #; (lsu) a4  <-- 4
       0     2828        M 0x80001820 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2829        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 5 ~~> Word[0x800032a4]
       0     2830        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 4, (wrb) a4  <-- 0x800032a8
       0     2831        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a8, 114 ~~> Byte[0x800032f0]
       0     2832        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2853        M                                           #; (lsu) a4  <-- 5
       0     2854        M 0x80001834 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2855        M 0x80001838 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2856        M 0x8000183c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2857        M 0x80001840 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2858        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2859        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     2862        M 0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     2867        M 0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee9, (wrb) s0  <-- 0x80002eea
       0     2868        M 0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eeb, (wrb) s10 <-- 0x80002eec
       0     2870        M 0x80000cc0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2871        M 0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eea, a0  <~~ Byte[0x80002eea]
       0     2882        M                                           #; (lsu) a0  <-- 32
       0     2883        M 0x80000cc8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ca0
       0     2884        M 0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2885        M 0x80000ca4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2886        M 0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2887        M 0x80000cac mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2888        M 0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2889        M 0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
       0     2892        M 0x80001800 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2893        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2894        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2895        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2896        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     2897        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     2898        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2899        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     2900        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2911        M                                           #; (lsu) a4  <-- 5
       0     2912        M 0x80001820 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2913        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 6 ~~> Word[0x800032a4]
       0     2914        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 5, (wrb) a4  <-- 0x800032a9
       0     2915        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a9, 32 ~~> Byte[0x800032f1]
       0     2916        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2937        M                                           #; (lsu) a4  <-- 6
       0     2938        M 0x80001834 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2939        M 0x80001838 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2940        M 0x8000183c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2941        M 0x80001840 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2942        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2943        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     2946        M 0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     2951        M 0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eea, (wrb) s0  <-- 0x80002eeb
       0     2952        M 0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eec, (wrb) s10 <-- 0x80002eed
       0     2954        M 0x80000cc0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2955        M 0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eeb, a0  <~~ Byte[0x80002eeb]
       0     2966        M                                           #; (lsu) a0  <-- 61
       0     2967        M 0x80000cc8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000ca0
       0     2968        M 0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2969        M 0x80000ca4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2970        M 0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     2971        M 0x80000cac mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2972        M 0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2973        M 0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
       0     2976        M 0x80001800 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2977        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2978        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2979        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2980        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     2981        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     2982        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2983        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     2984        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     2995        M                                           #; (lsu) a4  <-- 6
       0     2996        M 0x80001820 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2997        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 7 ~~> Word[0x800032a4]
       0     2998        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 6, (wrb) a4  <-- 0x800032aa
       0     2999        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032aa, 61 ~~> Byte[0x800032f2]
       0     3000        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     3021        M                                           #; (lsu) a4  <-- 7
       0     3022        M 0x80001834 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3023        M 0x80001838 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3024        M 0x8000183c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3025        M 0x80001840 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3026        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3027        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     3030        M 0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     3035        M 0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eeb, (wrb) s0  <-- 0x80002eec
       0     3036        M 0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eed, (wrb) s10 <-- 0x80002eee
       0     3038        M 0x80000cc0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3039        M 0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eec, a0  <~~ Byte[0x80002eec]
       0     3050        M                                           #; (lsu) a0  <-- 32
       0     3051        M 0x80000cc8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ca0
       0     3052        M 0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3053        M 0x80000ca4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3054        M 0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3055        M 0x80000cac mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3056        M 0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3057        M 0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
       0     3060        M 0x80001800 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3061        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3062        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3063        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3064        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     3065        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     3066        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3067        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     3068        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     3079        M                                           #; (lsu) a4  <-- 7
       0     3080        M 0x80001820 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3081        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 8 ~~> Word[0x800032a4]
       0     3082        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 7, (wrb) a4  <-- 0x800032ab
       0     3083        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032ab, 32 ~~> Byte[0x800032f3]
       0     3084        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     3105        M                                           #; (lsu) a4  <-- 8
       0     3106        M 0x80001834 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3107        M 0x80001838 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3108        M 0x8000183c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3109        M 0x80001840 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3110        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3111        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     3114        M 0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     3119        M 0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eec, (wrb) s0  <-- 0x80002eed
       0     3120        M 0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eee, (wrb) s10 <-- 0x80002eef
       0     3122        M 0x80000cc0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3123        M 0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eed, a0  <~~ Byte[0x80002eed]
       0     3134        M                                           #; (lsu) a0  <-- 37
       0     3135        M 0x80000cc8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000ca0
       0     3136        M 0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000cd0
       0     3148        M 0x80000cd0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3149        M 0x80000cd4 j       pc + 0x10              #; goto 0x80000ce4
       0     3160        M 0x80000ce4 lbu     a0, -1(s10)            #; s10 = 0x80002eef, a0  <~~ Byte[0x80002eee]
       0     3171        M                                           #; (lsu) a0  <-- 102
       0     3172        M 0x80000ce8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3173        M 0x80000cec bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000d24
       0     3185        M 0x80000d24 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3186        M 0x80000d28 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3187        M 0x80000d2c addi    a1, s10, -1            #; s10 = 0x80002eef, (wrb) a1  <-- 0x80002eee
       0     3197        M 0x80000d30 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3198        M 0x80000d34 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000db0
       0     3220        M 0x80000db0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3221        M 0x80000db4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000e04
       0     3243        M 0x80000e04 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3244        M 0x80000e08 mv      s10, a1                #; a1  = 0x80002eee, (wrb) s10 <-- 0x80002eee
       0     3245        M 0x80000e0c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3266        M 0x80000e10 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3267        M 0x80000e14 j       pc + 0xc               #; goto 0x80000e20
       0     3278        M 0x80000e20 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3279        M 0x80000e24 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3280        M 0x80000e28 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3281        M 0x80000e2c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3290        M 0x80000e30 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3291        M 0x80000e34 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e98
       0     3313        M 0x80000e98 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3314        M 0x80000e9c li      a2, 83                 #; (wrb) a2  <-- 83
       0     3325        M 0x80000ea0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3326        M 0x80000ea4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3327        M 0x80000ea8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002ea8
       0     3328        M 0x80000eac addi    a2, a2, 188            #; a2  = 0x80002ea8, (wrb) a2  <-- 0x80002f64
       0     3337        M 0x80000eb0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002f64, (wrb) a1  <-- 0x80003068
       0     3338        M 0x80000eb4 lw      a2, 0(a1)              #; a1  = 0x80003068, a2  <~~ Word[0x80003068]
       0     3339        M 0x80000eb8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3340        M 0x80000ebc li      s8, 16                 #; (wrb) s8  <-- 16
       0     3349        M                                           #; (lsu) a2  <-- 0x80000ef0
       0     3350        M 0x80000ec0 jr      a2                     #; a2  = 0x80000ef0, goto 0x80000ef0
       0     3372        M 0x80000ef0 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3373        M 0x80000ef4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000efc
       0     3374        M 0x80000efc addi    a0, s3, 7              #; s3  = 0x0011ff14, (wrb) a0  <-- 0x0011ff1b
       0     3384        M 0x80000f00 andi    a0, a0, -8             #; a0  = 0x0011ff1b, (wrb) a0  <-- 0x0011ff18
       0     3386        M 0x80000f08 addi    s3, a0, 8              #; a0  = 0x0011ff18, (wrb) s3  <-- 0x0011ff20
       0     3387        M 0x80000f0c mv      a0, s2                 #; s2  = 0x80001800, (wrb) a0  <-- 0x80001800
                         M 0x80000f04 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff18]
       0     3388        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3396        M 0x80000f10 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3397        M 0x80000f14 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3398        M 0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3399        M 0x80000f1c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3408        M 0x80000f20 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3409        M 0x80000f24 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3410        M 0x80000f28 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001f28
       0     3411        M 0x80000f2c jalr    ra, ra, -1656          #; ra  = 0x80001f28, (wrb) ra  <-- 0x80000f30, goto 0x800018b0
       0     3422        M 0x800018b0 addi    sp, sp, -112           #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe20
       0     3423        M 0x800018b4 sw      ra, 108(sp)            #; sp  = 0x0011fe20, 0x80000f30 ~~> Word[0x0011fe8c]
       0     3424        M 0x800018b8 sw      s0, 104(sp)            #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe88]
       0     3425        M 0x800018bc sw      s1, 100(sp)            #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe84]
       0     3434        M 0x800018c0 sw      s2, 96(sp)             #; sp  = 0x0011fe20, 0x80001800 ~~> Word[0x0011fe80]
       0     3435        M 0x800018c4 sw      s3, 92(sp)             #; sp  = 0x0011fe20, 0x0011ff20 ~~> Word[0x0011fe7c]
       0     3436        M 0x800018c8 sw      s4, 88(sp)             #; sp  = 0x0011fe20, 0x0011ff07 ~~> Word[0x0011fe78]
       0     3437        M 0x800018cc sw      s5, 84(sp)             #; sp  = 0x0011fe20, -1 ~~> Word[0x0011fe74]
       0     3446        M 0x800018d0 sw      s6, 80(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe70]
       0     3447        M 0x800018d4 sw      s7, 76(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe6c]
       0     3448        M 0x800018d8 sw      s8, 72(sp)             #; sp  = 0x0011fe20, 16 ~~> Word[0x0011fe68]
       0     3449        M 0x800018dc sw      s9, 68(sp)             #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe64]
       0     3458        M 0x800018e0 sw      s10, 64(sp)            #; sp  = 0x0011fe20, 0x80002eee ~~> Word[0x0011fe60]
       0     3461        M 0x800018e4 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3462        M 0x800018e8 fsd     fs1, 48(sp)            #; 31.41 ~~> Doub[0x0011fe50]
       0     3463        M 0x800018ec fsd     fs2, 40(sp)            #; 31.41 ~~> Doub[0x0011fe48]
       0     3470        M 0x800018f0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800038f0
       0     3471        M 0x800018f4 addi    s1, s1, -1784          #; s1  = 0x800038f0, (wrb) s1  <-- 0x800031f8
       0     3474        M 0x800018f8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800031f8]
       0     3482        M 0x80001900 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3483        M 0x80001904 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3484        M 0x80001908 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800018fc fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3485        M 0x8000190c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3494        M 0x80001910 mv      s6, a1                 #; a1  = 0x0011ff07, (wrb) s6  <-- 0x0011ff07
       0     3495        M 0x80001914 mv      s7, a0                 #; a0  = 0x80001800, (wrb) s7  <-- 0x80001800
       0     3496        M 0x80001918 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001a08
       0     3518        M 0x80001a0c auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a0c
       0     3519        M 0x80001a08 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3520        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3529        M 0x80001a10 addi    a0, a0, 2036           #; a0  = 0x80002a0c, (wrb) a0  <-- 0x80003200
       0     3532        M 0x80001a14 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003200]
       0     3541        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3542        M 0x80001a18 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3544        M                                           #; (acc) t3  <-- 0x00051e63
       0     3545        M 0x80001a1c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001a38
       0     3557        M 0x80001a38 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a38
       0     3558        M 0x80001a3c addi    a0, a0, 2000           #; a0  = 0x80002a38, (wrb) a0  <-- 0x80003208
       0     3570        M 0x80001a44 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a44
       0     3571        M 0x80001a48 addi    a0, a0, 1996           #; a0  = 0x80002a44, (wrb) a0  <-- 0x80003210
                         M 0x80001a40 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003208]
       0     3574        M 0x80001a4c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003210]
       0     3580        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3582        M 0x80001a50 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3583        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3584        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x80001a54 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3586        M                                           #; (acc) a0  <-- 0x00b57533
       0     3587        M 0x80001a58 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3588        M 0x80001a5c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001b58
       0     3604        M 0x80001b58 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3605        M 0x80001b5c li      s8, 6                  #; (wrb) s8  <-- 6
       0     3616        M 0x80001b60 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001b68
       0     3617        M 0x80001b68 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3620        M 0x80001b6c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3621        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3628        M 0x80001b70 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001ba8
       0     3651        M 0x80001ba8 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3652        M 0x80001bac slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3663        M 0x80001bb0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002bb0
       0     3664        M 0x80001bb4 addi    a1, a1, 1288           #; a1  = 0x80002bb0, (wrb) a1  <-- 0x800030b8
       0     3665        M 0x80001bb8 add     a0, a0, a1             #; a0  = 48, a1  = 0x800030b8, (wrb) a0  <-- 0x800030e8
       0     3668        M 0x80001bbc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800030e8]
       0     3676        M 0x80001bc0 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3677        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3680        M 0x80001bc4 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3681        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3682        M 0x80001bc8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3685        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3686        M 0x80001bcc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3687        M 0x80001bd0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bd0
       0     3688        M 0x80001bd4 addi    a0, a0, 1608           #; a0  = 0x80002bd0, (wrb) a0  <-- 0x80003218
       0     3689        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3691        M 0x80001bd8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003218]
       0     3692        M 0x80001bdc fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3700        M 0x80001be0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     3701        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3702        M 0x80001be4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3705        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3706        M 0x80001be8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3709        M 0x80001bec bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001c0c
       0     3723        M 0x80001c0c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3734        M 0x80001c10 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001c24
       0     3747        M 0x80001c28 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001c24 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3748        M 0x80001c2c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     3758        M 0x80001c30 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     3759        M 0x80001c34 add     t1, a1, s0             #; a1  = 0x0011fe28, s0  = 0, (wrb) t1  <-- 0x0011fe28
       0     3760        M 0x80001c38 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3761        M 0x80001c3c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3770        M 0x80001c40 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3771        M 0x80001c44 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3772        M 0x80001c48 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3773        M 0x80001c4c li      a7, 9                  #; (wrb) a7  <-- 9
       0     3782        M 0x80001c50 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3783        M 0x80001c54 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3784        M 0x80001c58 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3787        M                                           #; (acc) a0  <-- 0x00355513
       0     3788        M 0x80001c5c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3794        M 0x80001c60 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3797        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3798        M 0x80001c64 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3799        M 0x80001c68 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3800        M 0x80001c6c add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 0, (wrb) a5  <-- 0x0011fe28
       0     3806        M 0x80001c70 sb      a3, 0(a5)              #; a5  = 0x0011fe28, 48 ~~> Byte[0x0011fe28]
       0     3807        M 0x80001c74 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3808        M 0x80001c78 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3809        M 0x80001c7c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3821        M 0x80001c80 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3822        M 0x80001c84 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3823        M 0x80001c88 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3824        M 0x80001c8c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3833        M 0x80001c90 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3834        M 0x80001c94 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3835        M 0x80001c98 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3836        M 0x80001c9c addi    a0, sp, 8              #; sp  = 0x0011fe20, (wrb) a0  <-- 0x0011fe28
       0     3845        M 0x80001ca0 add     a0, a0, s0             #; a0  = 0x0011fe28, s0  = 0, (wrb) a0  <-- 0x0011fe28
       0     3846        M 0x80001ca4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3847        M 0x80001ca8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3848        M 0x80001cac add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3857        M 0x80001cb0 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3858        M 0x80001cb4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3859        M 0x80001cb8 add     a0, a0, a2             #; a0  = 0x0011fe28, a2  = 1, (wrb) a0  <-- 0x0011fe29
       0     3860        M 0x80001cbc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3869        M 0x80001cc0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001cc8
       0     3870        M 0x80001cc8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3871        M 0x80001ccc li      a1, 48                 #; (wrb) a1  <-- 48
       0     3881        M 0x80001cd0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000cd0
       0     3882        M 0x80001cd4 jalr    ra, ra, -1912          #; ra  = 0x80000cd0, (wrb) ra  <-- 0x80001cd8, goto 0x80000558
       0     3904        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3905        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe29, (wrb) a4  <-- 0x0011fe29
       0     3916        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3939        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3951        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3952        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     3953        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     3954        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     3974        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2d]
       0     3975        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2c]
       0     3986        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2b]
       0     3987        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2a]
       0     3988        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe29]
       0     3989        M 0x800005ec ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
       0     4000        M 0x80001cd8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4001        M 0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4003        M 0x80001ce0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4004        M 0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4005        M 0x80001ce8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4006        M 0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4015        M 0x80001cf0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4016        M 0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
       0     4017        M 0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4018        M 0x80001ce0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4019        M 0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4020        M 0x80001ce8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4021        M 0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4022        M 0x80001cf0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4023        M 0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
       0     4024        M 0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4025        M 0x80001ce0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4026        M 0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4027        M 0x80001ce8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4028        M 0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4029        M 0x80001cf0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4030        M 0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
       0     4031        M 0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4032        M 0x80001ce0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4033        M 0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4034        M 0x80001ce8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4035        M 0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4036        M 0x80001cf0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4037        M 0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
       0     4038        M 0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4039        M 0x80001ce0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4040        M 0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4041        M 0x80001ce8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4042        M 0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4043        M 0x80001cf0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4044        M 0x80001cf4 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4045        M 0x80001cf8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4046        M 0x80001cfc j       pc + 0x28              #; goto 0x80001d24
       0     4057        M 0x80001d24 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4058        M 0x80001d28 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4059        M 0x80001d2c addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     4069        M 0x80001d30 add     a0, a1, a0             #; a1  = 0x0011fe28, a0  = 6, (wrb) a0  <-- 0x0011fe2e
       0     4070        M 0x80001d34 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4071        M 0x80001d38 sb      a1, 0(a0)              #; a0  = 0x0011fe2e, 46 ~~> Byte[0x0011fe2e]
       0     4072        M 0x80001d3c j       pc + 0x8               #; goto 0x80001d44
       0     4081        M 0x80001d44 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4082        M 0x80001d48 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4083        M 0x80001d4c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4093        M 0x80001d50 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4095        M 0x80001d58 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001d54 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4096        M 0x80001d5c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4105        M 0x80001d60 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4106        M 0x80001d64 addi    a3, sp, 8              #; sp  = 0x0011fe20, (wrb) a3  <-- 0x0011fe28
       0     4107        M 0x80001d68 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4108        M 0x80001d6c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4117        M 0x80001d70 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4120        M                                           #; (acc) a5  <-- 0x01f55793
       0     4121        M 0x80001d74 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4122        M 0x80001d78 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4123        M 0x80001d7c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4129        M 0x80001d80 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4132        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4133        M 0x80001d84 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4134        M 0x80001d88 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4135        M 0x80001d8c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4141        M 0x80001d90 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 7, (wrb) s0  <-- 0x0011fe2f
       0     4142        M 0x80001d94 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4143        M 0x80001d98 sb      a5, 0(s0)              #; s0  = 0x0011fe2f, 48 ~~> Byte[0x0011fe2f]
       0     4144        M 0x80001d9c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4153        M 0x80001da0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4154        M 0x80001da4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4155        M 0x80001da8 j       pc + 0x8               #; goto 0x80001db0
       0     4167        M 0x80001db0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4168        M 0x80001db4 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4169        M 0x80001db8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001e24
       0     4190        M 0x80001e24 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4191        M 0x80001e28 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4192        M 0x80001e2c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001e44
       0     4213        M 0x80001e44 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4214        M 0x80001e48 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4215        M 0x80001e4c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4225        M 0x80001e50 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001e7c
       0     4248        M 0x80001e7c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4260        M 0x80001e80 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4261        M 0x80001e84 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4262        M 0x80001e88 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4263        M 0x80001e8c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4272        M 0x80001e90 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4273        M 0x80001e94 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001ec0
       0     4295        M 0x80001ec0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4296        M 0x80001ec4 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4297        M 0x80001ec8 addi    s9, sp, 7              #; sp  = 0x0011fe20, (wrb) s9  <-- 0x0011fe27
       0     4298        M 0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 8, (wrb) a0  <-- 0x0011fe2f
       0     4307        M 0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2f, a0  <~~ Byte[0x0011fe2f]
       0     4308        M 0x80001ed4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4309        M 0x80001ed8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4310        M 0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4311        M                                           #; (lsu) a0  <-- 48
       0     4319        M 0x80001ee0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4320        M 0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4321        M 0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
       0     4333        M 0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4334        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4335        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4336        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4337        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     4338        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     4339        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4340        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     4341        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4352        M                                           #; (lsu) a4  <-- 8
       0     4353        M 0x80001820 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4354        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 9 ~~> Word[0x800032a4]
       0     4355        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 8, (wrb) a4  <-- 0x800032ac
       0     4356        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032ac, 48 ~~> Byte[0x800032f4]
       0     4357        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4378        M                                           #; (lsu) a4  <-- 9
       0     4379        M 0x80001834 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4380        M 0x80001838 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4381        M 0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4382        M 0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4383        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4384        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     4387        M 0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
       0     4392        M 0x80001eec mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4395        M 0x80001ef0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4396        M 0x80001ef4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001ecc
       0     4398        M 0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 7, (wrb) a0  <-- 0x0011fe2e
       0     4401        M 0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2e, a0  <~~ Byte[0x0011fe2e]
       0     4402        M 0x80001ed4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4403        M 0x80001ed8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4404        M 0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4405        M 0x80001ee0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4406        M 0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4407        M 0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
       0     4408        M                                           #; (lsu) a0  <-- 46
       0     4410        M 0x80001800 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4411        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4412        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4413        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4414        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     4415        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     4416        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4417        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     4418        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4429        M                                           #; (lsu) a4  <-- 9
       0     4430        M 0x80001820 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4431        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 10 ~~> Word[0x800032a4]
       0     4432        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 9, (wrb) a4  <-- 0x800032ad
       0     4433        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032ad, 46 ~~> Byte[0x800032f5]
       0     4434        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4455        M                                           #; (lsu) a4  <-- 10
       0     4456        M 0x80001834 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4457        M 0x80001838 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4458        M 0x8000183c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4459        M 0x80001840 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4460        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4461        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     4464        M 0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
       0     4469        M 0x80001eec mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4472        M 0x80001ef0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4473        M 0x80001ef4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001ecc
       0     4475        M 0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 6, (wrb) a0  <-- 0x0011fe2d
       0     4478        M 0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2d, a0  <~~ Byte[0x0011fe2d]
       0     4479        M 0x80001ed4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4480        M 0x80001ed8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4481        M 0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4482        M 0x80001ee0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4483        M 0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4484        M 0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
       0     4485        M                                           #; (lsu) a0  <-- 48
       0     4487        M 0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4488        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4489        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4490        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4491        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     4492        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     4493        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4494        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     4495        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4506        M                                           #; (lsu) a4  <-- 10
       0     4507        M 0x80001820 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4508        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 11 ~~> Word[0x800032a4]
       0     4509        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 10, (wrb) a4  <-- 0x800032ae
       0     4510        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032ae, 48 ~~> Byte[0x800032f6]
       0     4511        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4532        M                                           #; (lsu) a4  <-- 11
       0     4533        M 0x80001834 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4534        M 0x80001838 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4535        M 0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4536        M 0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4537        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4538        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     4541        M 0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
       0     4546        M 0x80001eec mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4549        M 0x80001ef0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4550        M 0x80001ef4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001ecc
       0     4552        M 0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 5, (wrb) a0  <-- 0x0011fe2c
       0     4555        M 0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2c, a0  <~~ Byte[0x0011fe2c]
       0     4556        M 0x80001ed4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4557        M 0x80001ed8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4558        M 0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4559        M 0x80001ee0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4560        M 0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4561        M 0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
       0     4562        M                                           #; (lsu) a0  <-- 48
       0     4564        M 0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4565        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4566        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4567        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4568        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     4569        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     4570        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4571        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     4572        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4583        M                                           #; (lsu) a4  <-- 11
       0     4584        M 0x80001820 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4585        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 12 ~~> Word[0x800032a4]
       0     4586        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 11, (wrb) a4  <-- 0x800032af
       0     4587        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032af, 48 ~~> Byte[0x800032f7]
       0     4588        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4609        M                                           #; (lsu) a4  <-- 12
       0     4610        M 0x80001834 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4611        M 0x80001838 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4612        M 0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4613        M 0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4614        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4615        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     4618        M 0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
       0     4623        M 0x80001eec mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4626        M 0x80001ef0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4627        M 0x80001ef4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001ecc
       0     4629        M 0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 4, (wrb) a0  <-- 0x0011fe2b
       0     4632        M 0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2b, a0  <~~ Byte[0x0011fe2b]
       0     4633        M 0x80001ed4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4634        M 0x80001ed8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4635        M 0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4636        M 0x80001ee0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4637        M 0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4638        M 0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
       0     4639        M                                           #; (lsu) a0  <-- 48
       0     4641        M 0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4642        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4643        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4644        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4645        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     4646        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     4647        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4648        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     4649        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4660        M                                           #; (lsu) a4  <-- 12
       0     4661        M 0x80001820 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4662        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 13 ~~> Word[0x800032a4]
       0     4663        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 12, (wrb) a4  <-- 0x800032b0
       0     4664        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032b0, 48 ~~> Byte[0x800032f8]
       0     4665        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4686        M                                           #; (lsu) a4  <-- 13
       0     4687        M 0x80001834 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4688        M 0x80001838 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4689        M 0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4690        M 0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4691        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4692        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     4695        M 0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
       0     4700        M 0x80001eec mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4703        M 0x80001ef0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4704        M 0x80001ef4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001ecc
       0     4706        M 0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 3, (wrb) a0  <-- 0x0011fe2a
       0     4709        M 0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2a, a0  <~~ Byte[0x0011fe2a]
       0     4710        M 0x80001ed4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4711        M 0x80001ed8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4712        M 0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4713        M 0x80001ee0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4714        M 0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4715        M 0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
       0     4716        M                                           #; (lsu) a0  <-- 48
       0     4718        M 0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4719        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4720        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4721        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4722        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     4723        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     4724        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4725        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     4726        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4737        M                                           #; (lsu) a4  <-- 13
       0     4738        M 0x80001820 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4739        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 14 ~~> Word[0x800032a4]
       0     4740        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 13, (wrb) a4  <-- 0x800032b1
       0     4741        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032b1, 48 ~~> Byte[0x800032f9]
       0     4742        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4763        M                                           #; (lsu) a4  <-- 14
       0     4764        M 0x80001834 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4765        M 0x80001838 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4766        M 0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4767        M 0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4768        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4769        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     4772        M 0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
       0     4777        M 0x80001eec mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4780        M 0x80001ef0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4781        M 0x80001ef4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001ecc
       0     4783        M 0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 2, (wrb) a0  <-- 0x0011fe29
       0     4786        M 0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe29, a0  <~~ Byte[0x0011fe29]
       0     4787        M 0x80001ed4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4788        M 0x80001ed8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4789        M 0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4790        M 0x80001ee0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4791        M 0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4792        M 0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
       0     4793        M                                           #; (lsu) a0  <-- 48
       0     4795        M 0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4796        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4797        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4798        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4799        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     4800        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     4801        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4802        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     4803        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4814        M                                           #; (lsu) a4  <-- 14
       0     4815        M 0x80001820 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4816        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 15 ~~> Word[0x800032a4]
       0     4817        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 14, (wrb) a4  <-- 0x800032b2
       0     4818        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032b2, 48 ~~> Byte[0x800032fa]
       0     4819        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4840        M                                           #; (lsu) a4  <-- 15
       0     4841        M 0x80001834 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4842        M 0x80001838 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4843        M 0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4844        M 0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4845        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4846        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     4849        M 0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
       0     4854        M 0x80001eec mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4857        M 0x80001ef0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4858        M 0x80001ef4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001ecc
       0     4860        M 0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 1, (wrb) a0  <-- 0x0011fe28
       0     4863        M 0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe28, a0  <~~ Byte[0x0011fe28]
       0     4864        M 0x80001ed4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4865        M 0x80001ed8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4866        M 0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4867        M 0x80001ee0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4868        M 0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4869        M 0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
       0     4870        M                                           #; (lsu) a0  <-- 48
       0     4872        M 0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4873        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4874        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4875        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4876        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     4877        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     4878        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4879        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     4880        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4891        M                                           #; (lsu) a4  <-- 15
       0     4892        M 0x80001820 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4893        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 16 ~~> Word[0x800032a4]
       0     4894        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 15, (wrb) a4  <-- 0x800032b3
       0     4895        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032b3, 48 ~~> Byte[0x800032fb]
       0     4896        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     4917        M                                           #; (lsu) a4  <-- 16
       0     4918        M 0x80001834 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4919        M 0x80001838 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4920        M 0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4921        M 0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4922        M 0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4923        M 0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
       0     4926        M 0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
       0     4931        M 0x80001eec mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4934        M 0x80001ef0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4935        M 0x80001ef4 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4936        M 0x80001ef8 j       pc + 0x8               #; goto 0x80001f00
       0     4948        M 0x80001f00 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4949        M 0x80001f04 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4950        M 0x80001f08 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4951        M 0x80001f0c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4960        M 0x80001f10 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4961        M 0x80001f14 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001f44
       0     4983        M 0x80001f44 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4984        M 0x80001f48 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     4987        M 0x80001f4c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe48]
       0     4988        M                                           #; (f:lsu) fs2  <-- 31.41
       0     4997        M 0x80001f58 lw      s10, 64(sp)            #; sp  = 0x0011fe20, s10 <~~ Word[0x0011fe60]
                         M 0x80001f50 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe50]
       0     4998        M 0x80001f54 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe58], (f:lsu) fs1  <-- 31.41
       0     4999        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5001        M                                           #; (lsu) s10 <-- 0x80002eee
       0     5002        M 0x80001f5c lw      s9, 68(sp)             #; sp  = 0x0011fe20, s9  <~~ Word[0x0011fe64]
       0     5005        M                                           #; (lsu) s9  <-- 8
       0     5007        M 0x80001f60 lw      s8, 72(sp)             #; sp  = 0x0011fe20, s8  <~~ Word[0x0011fe68]
       0     5010        M                                           #; (lsu) s8  <-- 16
       0     5011        M 0x80001f64 lw      s7, 76(sp)             #; sp  = 0x0011fe20, s7  <~~ Word[0x0011fe6c]
       0     5014        M                                           #; (lsu) s7  <-- 0
       0     5015        M 0x80001f68 lw      s6, 80(sp)             #; sp  = 0x0011fe20, s6  <~~ Word[0x0011fe70]
       0     5018        M                                           #; (lsu) s6  <-- 0
       0     5019        M 0x80001f6c lw      s5, 84(sp)             #; sp  = 0x0011fe20, s5  <~~ Word[0x0011fe74]
       0     5022        M                                           #; (lsu) s5  <-- -1
       0     5023        M 0x80001f70 lw      s4, 88(sp)             #; sp  = 0x0011fe20, s4  <~~ Word[0x0011fe78]
       0     5026        M                                           #; (lsu) s4  <-- 0x0011ff07
       0     5027        M 0x80001f74 lw      s3, 92(sp)             #; sp  = 0x0011fe20, s3  <~~ Word[0x0011fe7c]
       0     5030        M                                           #; (lsu) s3  <-- 0x0011ff20
       0     5031        M 0x80001f78 lw      s2, 96(sp)             #; sp  = 0x0011fe20, s2  <~~ Word[0x0011fe80]
       0     5034        M                                           #; (lsu) s2  <-- 0x80001800
       0     5035        M 0x80001f7c lw      s1, 100(sp)            #; sp  = 0x0011fe20, s1  <~~ Word[0x0011fe84]
       0     5038        M                                           #; (lsu) s1  <-- 8
       0     5039        M 0x80001f80 lw      s0, 104(sp)            #; sp  = 0x0011fe20, s0  <~~ Word[0x0011fe88]
       0     5042        M                                           #; (lsu) s0  <-- 0
       0     5043        M 0x80001f84 lw      ra, 108(sp)            #; sp  = 0x0011fe20, ra  <~~ Word[0x0011fe8c]
       0     5044        M 0x80001f88 addi    sp, sp, 112            #; sp  = 0x0011fe20, (wrb) sp  <-- 0x0011fe90
       0     5046        M                                           #; (lsu) ra  <-- 0x80000f30
       0     5047        M 0x80001f8c ret                            #; ra  = 0x80000f30, goto 0x80000f30
       0     5050        M 0x80000f30 j       pc + 0x7c0             #; goto 0x800016f0
       0     5062        M 0x800016f0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5063        M 0x800016f4 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5064        M 0x800016f8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5065        M 0x800016fc addi    s0, s10, 1             #; s10 = 0x80002eee, (wrb) s0  <-- 0x80002eef
       0     5074        M 0x80001700 j       pc - 0xa74             #; goto 0x80000c8c
       0     5077        M 0x80000c8c addi    s10, s0, 2             #; s0  = 0x80002eef, (wrb) s10 <-- 0x80002ef1
       0     5080        M 0x80000c90 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5081        M 0x80000c94 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5082        M 0x80000c98 lbu     a0, 0(s0)              #; s0  = 0x80002eef, a0  <~~ Byte[0x80002eef]
       0     5093        M                                           #; (lsu) a0  <-- 10
       0     5094        M 0x80000c9c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5095        M 0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5096        M 0x80000ca4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5097        M 0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5098        M 0x80000cac mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5099        M 0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5100        M 0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
       0     5104        M 0x80001800 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5105        M 0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5106        M 0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5107        M 0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5108        M 0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
       0     5109        M 0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
       0     5110        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5111        M 0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
       0     5112        M 0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     5123        M                                           #; (lsu) a4  <-- 16
       0     5124        M 0x80001820 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5125        M 0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 17 ~~> Word[0x800032a4]
       0     5126        M 0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 16, (wrb) a4  <-- 0x800032b4
       0     5127        M 0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032b4, 10 ~~> Byte[0x800032fc]
       0     5128        M 0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
       0     5149        M                                           #; (lsu) a4  <-- 17
       0     5150        M 0x80001834 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5151        M 0x80001838 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5152        M 0x8000183c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5153        M 0x80001840 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5154        M 0x80001844 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5155        M 0x80001848 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5156        M 0x8000184c add     a0, a3, a2             #; a3  = 0x800032a4, a2  = 0, (wrb) a0  <-- 0x800032a4
       0     5157        M 0x80001850 addi    a2, a0, 72             #; a0  = 0x800032a4, (wrb) a2  <-- 0x800032ec
       0     5158        M 0x80001854 sw      zero, 12(a0)           #; a0  = 0x800032a4, 0 ~~> Word[0x800032b0]
       0     5159        M 0x80001858 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5160        M 0x8000185c sw      a3, 8(a0)              #; a0  = 0x800032a4, 64 ~~> Word[0x800032ac]
       0     5169        M 0x80001860 sw      zero, 20(a0)           #; a0  = 0x800032a4, 0 ~~> Word[0x800032b8]
       0     5170        M 0x80001864 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5171        M 0x80001868 sw      a3, 16(a0)             #; a0  = 0x800032a4, 1 ~~> Word[0x800032b4]
       0     5172        M 0x8000186c sw      zero, 28(a0)           #; a0  = 0x800032a4, 0 ~~> Word[0x800032c0]
       0     5181        M 0x80001870 sw      a2, 24(a0)             #; a0  = 0x800032a4, 0x800032ec ~~> Word[0x800032bc]
       0     5184        M 0x80001874 lw      a2, 0(a1)              #; a1  = 0x800032a4, a2  <~~ Word[0x800032a4]
       0     5185        M 0x80001878 addi    a3, a0, 8              #; a0  = 0x800032a4, (wrb) a3  <-- 0x800032ac
       0     5186        M 0x8000187c sw      zero, 36(a0)           #; a0  = 0x800032a4, 0 ~~> Word[0x800032c8]
       0     5206        M                                           #; (lsu) a2  <-- 17
       0     5207        M 0x80001880 sw      a2, 32(a0)             #; a0  = 0x800032a4, 17 ~~> Word[0x800032c4]
       0     5208        M 0x80001884 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003884
       0     5209        M 0x80001888 addi    a0, a0, -1860          #; a0  = 0x80003884, (wrb) a0  <-- 0x80003140
       0     5210        M 0x8000188c sw      a3, 0(a0)              #; a0  = 0x80003140, 0x800032ac ~~> Word[0x80003140]
       0     5211        M 0x80001890 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003890
       0     5212        M 0x80001894 addi    a0, a0, -1808          #; a0  = 0x80003890, (wrb) a0  <-- 0x80003180
       0     5213        M 0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
       0     5236        M                                           #; (lsu) a2  <-- 0
       0     5237        M 0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
       0     5238        M 0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
       0     5249        M                                           #; (lsu) a2  <-- 0
       0     5250        M 0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
       0     5251        M 0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
       0     5262        M                                           #; (lsu) a2  <-- 0
       0     5263        M 0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
       0     5264        M 0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
       0     5275        M                                           #; (lsu) a2  <-- 0
       0     5276        M 0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
       0     5277        M 0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
       0     5288        M                                           #; (lsu) a2  <-- 0
       0     5289        M 0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
       0     5290        M 0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
       0     5301        M                                           #; (lsu) a2  <-- 0
       0     5302        M 0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
       0     5303        M 0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
       0     5314        M                                           #; (lsu) a2  <-- 1
       0     5315        M 0x8000189c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5318        M 0x800018a0 sw      zero, 0(a0)            #; a0  = 0x80003180, 0 ~~> Word[0x80003180]
       0     5319        M 0x800018a4 sw      zero, 0(a1)            #; a1  = 0x800032a4, 0 ~~> Word[0x800032a4]
       0     5320        M 0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
       0     5323        M 0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eef, (wrb) s0  <-- 0x80002ef0
       0     5324        M 0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ef1, (wrb) s10 <-- 0x80002ef2
       0     5326        M 0x80000cc0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5327        M 0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ef0, a0  <~~ Byte[0x80002ef0]
       0     5341        M                                           #; (lsu) a0  <-- 0
       0     5342        M 0x80000cc8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5343        M 0x80000ccc j       pc + 0xad8             #; goto 0x800017a4
       0     5355        M 0x800017a4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5356        M 0x800017a8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800017b0
       0     5367        M 0x800017b0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5368        M 0x800017b4 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5369        M 0x800017b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5370        M 0x800017bc jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x800017c0, goto 0x80001800
       0     5381        M 0x80001800 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800018a8
       0     5386        M 0x800018a8 ret                            #; ra  = 0x800017c0, goto 0x800017c0
       0     5387        M 0x800017c0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5388        M 0x800017c4 lw      s11, 60(sp)            #; sp  = 0x0011fe90, s11 <~~ Word[0x0011fecc]
       0     5391        M                                           #; (lsu) s11 <-- 0
       0     5392        M 0x800017c8 lw      s10, 64(sp)            #; sp  = 0x0011fe90, s10 <~~ Word[0x0011fed0]
       0     5395        M                                           #; (lsu) s10 <-- 0
       0     5396        M 0x800017cc lw      s9, 68(sp)             #; sp  = 0x0011fe90, s9  <~~ Word[0x0011fed4]
       0     5399        M                                           #; (lsu) s9  <-- 0
       0     5401        M 0x800017d0 lw      s8, 72(sp)             #; sp  = 0x0011fe90, s8  <~~ Word[0x0011fed8]
       0     5404        M                                           #; (lsu) s8  <-- 0
       0     5405        M 0x800017d4 lw      s7, 76(sp)             #; sp  = 0x0011fe90, s7  <~~ Word[0x0011fedc]
       0     5408        M                                           #; (lsu) s7  <-- 0
       0     5409        M 0x800017d8 lw      s6, 80(sp)             #; sp  = 0x0011fe90, s6  <~~ Word[0x0011fee0]
       0     5412        M                                           #; (lsu) s6  <-- 0
       0     5413        M 0x800017dc lw      s5, 84(sp)             #; sp  = 0x0011fe90, s5  <~~ Word[0x0011fee4]
       0     5416        M                                           #; (lsu) s5  <-- 0
       0     5417        M 0x800017e0 lw      s4, 88(sp)             #; sp  = 0x0011fe90, s4  <~~ Word[0x0011fee8]
       0     5420        M                                           #; (lsu) s4  <-- 0
       0     5421        M 0x800017e4 lw      s3, 92(sp)             #; sp  = 0x0011fe90, s3  <~~ Word[0x0011feec]
       0     5424        M                                           #; (lsu) s3  <-- 0
       0     5425        M 0x800017e8 lw      s2, 96(sp)             #; sp  = 0x0011fe90, s2  <~~ Word[0x0011fef0]
       0     5428        M                                           #; (lsu) s2  <-- 0
       0     5429        M 0x800017ec lw      s1, 100(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011fef4]
       0     5432        M                                           #; (lsu) s1  <-- 0
       0     5433        M 0x800017f0 lw      s0, 104(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011fef8]
       0     5436        M                                           #; (lsu) s0  <-- 0
       0     5437        M 0x800017f4 lw      ra, 108(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011fefc]
       0     5438        M 0x800017f8 addi    sp, sp, 112            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff00
       0     5440        M                                           #; (lsu) ra  <-- 0x80000bfc
       0     5441        M 0x800017fc ret                            #; ra  = 0x80000bfc, goto 0x80000bfc
       0     5444        M 0x80000bfc lw      ra, 12(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff0c]
       0     5447        M 0x80000c00 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
       0     5448        M                                           #; (lsu) ra  <-- 0x80000b84
       0     5449        M 0x80000c04 ret                            #; ra  = 0x80000b84, goto 0x80000b84
       0     5452        M 0x80000b84 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b84
       0     5453        M 0x80000b88 addi    a0, a0, 1644           #; a0  = 0x80002b84, (wrb) a0  <-- 0x800031f0
       0     5456        M 0x80000b8c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031f0]
       0     5465        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5466        M 0x80000b90 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
       0     5468        M                                           #; (acc) s0  <-- 0x02013407
                         M 0x80000b94 fld     fs2, 16(sp)            #; fs2  <~~ Doub[0x0011ff40]
       0     5469        M 0x80000ba0 lw      ra, 44(sp)             #; sp  = 0x0011ff30, ra  <~~ Word[0x0011ff5c]
                         M 0x80000b98 fld     fs1, 24(sp)            #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
       0     5470        M 0x80000ba4 addi    sp, sp, 48             #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff60
                         M 0x80000b9c fld     fs0, 32(sp)            #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
       0     5471        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5473        M                                           #; (lsu) ra  <-- 0x80002c60
       0     5474        M 0x80000ba8 ret                            #; ra  = 0x80002c60, goto 0x80002c60
       0     5492        M 0x80002c60 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5493        M 0x80002c64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c64
       0     5494        M 0x80002c68 jalr    ra, ra, 524            #; ra  = 0x80002c64, (wrb) ra  <-- 0x80002c6c, goto 0x80002e70
       0     5506        M 0x80002e70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5507        M 0x80002e74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c6c ~~> Word[0x0011ff5c]
       0     5508        M 0x80002e78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e78
       0     5509        M 0x80002e7c jalr    ra, ra, -1264          #; ra  = 0x80002e78, (wrb) ra  <-- 0x80002e80, goto 0x80002988
       0     5512        M 0x80002988 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5513        M 0x8000298c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5515        M 0x80002990 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5518        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5519        M 0x80002994 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5522        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5523        M 0x80002998 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5524        M 0x8000299c ret                            #; ra  = 0x80002e80, goto 0x80002e80
       0     5526        M                                           #; (lsu) a0  <-- 0x00120190
       0     5527        M 0x80002e80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5537        M                                           #; (lsu) a0  <-- 0
       0     5538        M 0x80002e84 mv      zero, a0               #; a0  = 0
       0     5539        M 0x80002e88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5540        M 0x80002e8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5542        M                                           #; (lsu) ra  <-- 0x80002c6c
       0     5543        M 0x80002e90 ret                            #; ra  = 0x80002c6c, goto 0x80002c6c
       0     5557        M 0x80002c6c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5561        M 0x80002c70 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c70
       0     5562        M 0x80002c74 jalr    ra, ra, 556            #; ra  = 0x80002c70, (wrb) ra  <-- 0x80002c78, goto 0x80002e9c
       0     5563        M 0x80002e9c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5564        M 0x80002ea0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5565        M 0x80002ea4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002c78 ~~> Word[0x0011ff5c]
       0     5566        M 0x80002ea8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ea8
       0     5567        M 0x80002eac jalr    ra, ra, -1344          #; ra  = 0x80002ea8, (wrb) ra  <-- 0x80002eb0, goto 0x80002968
       0     5578        M 0x80002968 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5579        M 0x8000296c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5582        M 0x80002970 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5585        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5586        M 0x80002974 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5589        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5590        M 0x80002978 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5591        M 0x8000297c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5593        M                                           #; (lsu) a0  <-- 0
       0     5594        M 0x80002980 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5595        M 0x80002984 ret                            #; ra  = 0x80002eb0, goto 0x80002eb0
       0     5596        M 0x80002eb0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5599        M                                           #; (lsu) t0  <-- 0
       0     5600        M 0x80002eb4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5601        M 0x80002eb8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5602        M 0x80002ebc bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5603        M                                           #; (lsu) ra  <-- 0x80002c78
       0     5607        M 0x80002ec0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5608        M 0x80002ec4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5609        M 0x80002ec8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002ec8
       0     5610        M 0x80002ecc addi    t1, t1, 632            #; t1  = 0x80002ec8, (wrb) t1  <-- 0x80003140
       0     5618        M 0x80002ed0 sw      t0, 0(t1)              #; t1  = 0x80003140, 1 ~~> Word[0x80003140]
       0     5619        M 0x80002ed4 ret                            #; ra  = 0x80002c78, goto 0x80002c78
       0     5633        M 0x80002c78 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5633):
snitch_loads                                   140
snitch_stores                                  143
fpss_stores                                      7
fpss_loads                                      35
snitch_avg_load_latency                    11.9357
snitch_occupancy                            0.2325
snitch_fseq_rel_offloads                    0.1030
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.1765
fpss_avg_load_latency                          7.4
fpss_occupancy                              0.0267
fpss_fpu_occupancy                          0.0181
fpss_fpu_rel_occupancy                        0.68
cycles                                        5622
total_ipc                                   0.2592
