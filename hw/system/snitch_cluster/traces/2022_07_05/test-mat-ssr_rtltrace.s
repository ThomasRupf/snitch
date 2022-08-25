       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80003060
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80003060, (wrb) ra  <-- 4120, goto 0x80003060
       0      269        M 0x80003060 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80004060
       0      270        M 0x80003064 addi    gp, gp, -280           #; gp  = 0x80004060, (wrb) gp  <-- 0x80003f48
       0      271        M 0x80003068 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003068
       0      272        M 0x8000306c jalr    ra, ra, 964            #; ra  = 0x80003068, (wrb) ra  <-- 0x80003070, goto 0x8000342c
       0      292        M 0x8000342c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80003430 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80003434 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80003438 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x8000343c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80003440 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80003444 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80003448 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x8000344c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80003450 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80003454 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80003458 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x8000345c ret                            #; ra  = 0x80003070, goto 0x80003070
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80003070 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80003074 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80003078 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003078
       0      508        M 0x8000307c jalr    ra, ra, 1036           #; ra  = 0x80003078, (wrb) ra  <-- 0x80003080, goto 0x80003484
       0      523        M 0x80003484 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80003488 ret                            #; ra  = 0x80003080, goto 0x80003080
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80003080 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80003084 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80003088 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000308c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80003090 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80003094 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80004094
       0      551        M 0x80003098 addi    t0, t0, -2020          #; t0  = 0x80004094, (wrb) t0  <-- 0x800038b0
       0      552        M 0x8000309c auipc   t1, 0x1                #; (wrb) t1  <-- 0x8000409c
       0      562        M 0x800030a0 addi    t1, t1, -2024          #; t1  = 0x8000409c, (wrb) t1  <-- 0x800038b4
       0      563        M 0x800030a4 bge     t0, t1, pc + 16        #; t0  = 0x800038b0, t1  = 0x800038b4, not taken
       0      564        M 0x800030a8 sw      zero, 0(t0)            #; t0  = 0x800038b0, 0 ~~> Word[0x800038b0]
       0      565        M 0x800030ac addi    t0, t0, 4              #; t0  = 0x800038b0, (wrb) t0  <-- 0x800038b4
       0      573        M 0x800030b0 blt     t0, t1, pc - 8         #; t0  = 0x800038b4, t1  = 0x800038b4, not taken
       0      574        M 0x800030b4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800030b8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800030bc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x800030c0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x800030c4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x800030c8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x800030cc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800030d0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800030d4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800030d8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800030dc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800030e0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800030e4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800030e8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800030ec fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800030f0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800030f4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800030f8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800030fc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80003100 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80003104 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80003108 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000310c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80003110 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80003114 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80003118 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000311c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80003120 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80003124 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80003128 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000312c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80003130 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80003134 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80003138 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000313c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80003140 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80003144 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80003148 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003148
       0      684        M 0x8000314c lw      t0, 900(t0)            #; t0  = 0x80003148, t0  <~~ Word[0x800034cc]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80003150 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80003154 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80003158 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003158
       0      708        M 0x8000315c lw      t2, 880(t2)            #; t2  = 0x80003158, t2  <~~ Word[0x800034c8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80003160 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80003164 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80003168 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000316c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80003170 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80003174 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80003178 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000317c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80003180 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003180
       0      762        M 0x80003184 addi    t0, t0, 1480           #; t0  = 0x80003180, (wrb) t0  <-- 0x80003748
       0      763        M 0x80003188 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003188
       0      764        M 0x8000318c addi    t1, t1, 1472           #; t1  = 0x80003188, (wrb) t1  <-- 0x80003748
       0      775        M 0x80003190 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003190
       0      776        M 0x80003194 addi    t2, t2, 1464           #; t2  = 0x80003190, (wrb) t2  <-- 0x80003748
       0      777        M 0x80003198 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80003198
       0      778        M 0x8000319c addi    t3, t3, 1472           #; t3  = 0x80003198, (wrb) t3  <-- 0x80003758
       0      787        M 0x800031a0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003748, (wrb) sp  <-- 0x801236b8
       0      788        M 0x800031a4 sub     sp, sp, t1             #; sp  = 0x801236b8, t1  = 0x80003748, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x800031a8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003748, (wrb) sp  <-- 0x801236b8
       0      790        M 0x800031ac sub     sp, sp, t3             #; sp  = 0x801236b8, t3  = 0x80003758, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x800031b0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x800031b4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x800031b8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x800031bc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x800031c0 bge     t0, t1, pc + 24        #; t0  = 0x80003748, t1  = 0x80003748, taken, goto 0x800031d8
       0      823        M 0x800031d8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800031d8
       0      824        M 0x800031dc addi    t0, t0, 1392           #; t0  = 0x800031d8, (wrb) t0  <-- 0x80003748
       0      835        M 0x800031e0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800031e0
       0      836        M 0x800031e4 addi    t1, t1, 1400           #; t1  = 0x800031e0, (wrb) t1  <-- 0x80003758
       0      837        M 0x800031e8 bge     t0, t1, pc + 20        #; t0  = 0x80003748, t1  = 0x80003758, not taken
       0      838        M 0x800031ec sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x800031f0 addi    t0, t0, 4              #; t0  = 0x80003748, (wrb) t0  <-- 0x8000374c
       0      848        M 0x800031f4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x800031f8 blt     t0, t2, pc - 12        #; t0  = 0x8000374c, t2  = 0x80003748, not taken
       0      850        M 0x800031fc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80003200 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80003204 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80003208 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000320c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80003210 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80003214 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003214
       0      877        M 0x80003218 jalr    ra, ra, -1828          #; ra  = 0x80003214, (wrb) ra  <-- 0x8000321c, goto 0x80002af0
       0      898        M 0x80002af0 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002af4 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002af8 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x80002afc sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002b00 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002b04 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002b08 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x80002b0c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002b10 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002b14 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002b18 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x80002b1c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002b20 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002b24 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002b28 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x80002b2c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002b30 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002b34 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002b38 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002b3c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002b40 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002b44 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002b48 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002b4c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002b50 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002b54 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002b58 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002b5c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002b60 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002b64 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002b68 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002b6c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002b70 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002b74 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002b78 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002b7c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x80002b80 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x80002b84 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x80002b88 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002b8c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x80002b90 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x80002b94 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x80002b98 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002b9c sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80002ba0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x80002ba4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x80002ba8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x80002bac sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x80002bb0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x80002bb4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x80002bb8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002bbc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x80002bc0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x80002bc4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x80002bc8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x80002bcc remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x80002bd0 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x80002bd4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x80002bd8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x80002bdc li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80002be0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x80002be4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003be4
       0     1281        M 0x80002be8 addi    a1, a1, -816           #; a1  = 0x80003be4, (wrb) a1  <-- 0x800038b4
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x80002bec add     a0, a0, a1             #; a0  = 0, a1  = 0x800038b4, (wrb) a0  <-- 0x800038b4
       0     1291        M 0x80002bf0 sw      zero, 0(a0)            #; a0  = 0x800038b4, 0 ~~> Word[0x800038b4]
       0     1292        M 0x80002bf4 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80002bf8 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x80002bfc sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002c00 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002c04 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002c08 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x80002c0c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002c10 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002c14 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002c18 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x80002c1c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80002c20 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80002c24 lw      a0, 0(a1)              #; a1  = 0x800038b4, a0  <~~ Word[0x800038b4]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80002c28 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x80002c2c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x80002c30 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x80002c34 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x80002c38 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x80002c3c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x80002c40 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x80002c44 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x80002c48 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x80002c4c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x80002c50 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x80002c54 ret                            #; ra  = 0x8000321c, goto 0x8000321c
       0     1415        M 0x8000321c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80003220 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80003224 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80003228 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x8000322c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80003230 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80003234 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003234
       0     1434        M 0x80003238 addi    t0, t0, 60             #; t0  = 0x80003234, (wrb) t0  <-- 0x80003270
       0     1435        M 0x8000323c csrw    mtvec, t0              #; t0  = 0x80003270, (lsu) a4  <-- 4132
       0     1443        M 0x80003240 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003240
       0     1444        M 0x80003244 jalr    ra, ra, 544            #; ra  = 0x80003240, (wrb) ra  <-- 0x80003248, goto 0x80003460
       0     1460        M 0x80003460 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80003464 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80003248 ~~> Word[0x0011ff5c]
       0     1462        M 0x80003468 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003468
       0     1463        M 0x8000346c jalr    ra, ra, -2032          #; ra  = 0x80003468, (wrb) ra  <-- 0x80003470, goto 0x80002c78
       0     1481        M 0x80002c78 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x80002c7c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x80002c80 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x80002c84 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x80002c88 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x80002c8c ret                            #; ra  = 0x80003470, goto 0x80003470
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80003470 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80003474 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80003478 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x8000347c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x80003248
       0     1541        M 0x80003480 ret                            #; ra  = 0x80003248, goto 0x80003248
       0     1545        M 0x80003248 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x80000248
       0     1546        M 0x8000324c jalr    ra, ra, 1004           #; ra  = 0x80000248, (wrb) ra  <-- 0x80003250, goto 0x80000634
       0     1551        M 0x80000634 addi    sp, sp, -48            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff30
       0     1552        M 0x80000638 sw      ra, 44(sp)             #; sp  = 0x0011ff30, 0x80003250 ~~> Word[0x0011ff5c]
       0     1553        M 0x8000063c sw      s0, 40(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff58]
       0     1554        M 0x80000640 sw      s1, 36(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff54]
       0     1555        M 0x80000644 sw      s2, 32(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff50]
       0     1556        M 0x80000648 sw      s3, 28(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff4c]
       0     1557        M 0x8000064c sw      s4, 24(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff48]
       0     1567        M 0x80000650 sw      s5, 20(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff44]
       0     1568        M 0x80000654 sw      s6, 16(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff40]
       0     1570        M 0x8000065c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1571        M 0x80000658 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff38]
       0     1579        M 0x80000660 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1580        M 0x80000664 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1581        M 0x80000668 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1583        M                                           #; (lsu) a1  <-- 0
       0     1584        M 0x8000066c bnez    a1, pc + 2052          #; a1  = 0, not taken
       0     1591        M 0x80000670 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1592        M 0x80000674 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1593        M 0x80000678 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1596        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1597        M 0x8000067c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1600        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1604        M 0x80000680 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1607        M                                           #; (lsu) s0  <-- 0x00100000
       0     1608        M 0x80000684 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1611        M                                           #; (lsu) a1  <-- 0x00100000
       0     1612        M 0x80000688 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1613        M 0x8000068c addi    a2, s0, 240            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000f0
       0     1615        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1619        M 0x80000690 add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1620        M 0x80000694 bgeu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x001000f0, taken, goto 0x800006c0
       0     1646        M 0x800006c0 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1647        M 0x800006c4 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1648        M 0x800006c8 mv      s0, a2                 #; a2  = 0x001000f0, (wrb) s0  <-- 0x001000f0
       0     1649        M 0x800006cc addi    a2, s0, 336            #; s0  = 0x001000f0, (wrb) a2  <-- 0x00100240
       0     1673        M 0x800006d0 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x00100240, taken, goto 0x800006a4
       0     1674        M 0x800006a4 mv      s6, s0                 #; s0  = 0x001000f0, (wrb) s6  <-- 0x001000f0
       0     1675        M 0x800006a8 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100240 ~~> Word[0x0011ffc8]
       0     1676        M 0x800006ac mv      s0, a2                 #; a2  = 0x00100240, (wrb) s0  <-- 0x00100240
       0     1686        M 0x800006b0 addi    a2, s0, 280            #; s0  = 0x00100240, (wrb) a2  <-- 0x00100358
       0     1687        M 0x800006b4 bltu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x00100358, not taken
       0     1688        M 0x800006b8 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100358 ~~> Word[0x0011ffc8]
       0     1689        M 0x800006bc j       pc + 0x28              #; goto 0x800006e4
       0     1698        M 0x800006e4 addi    a0, s2, 232            #; s2  = 0x00100000, (wrb) a0  <-- 0x001000e8
       0     1699        M 0x800006e8 srli    a1, s2, 20             #; s2  = 0x00100000, (wrb) a1  <-- 1
       0     1700        M 0x800006ec snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1710        M 0x800006f0 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1711        M 0x800006f4 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     1712        M 0x800006f8 sltu    a0, a0, a2             #; a0  = 0x001000e8, a2  = 0x00120001, (wrb) a0  <-- 1
       0     1713        M 0x800006fc and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     1722        M 0x80000700 auipc   a6, 0x3                #; (wrb) a6  <-- 0x80003700
       0     1723        M 0x80000704 addi    a6, a6, 88             #; a6  = 0x80003700, (wrb) a6  <-- 0x80003758
       0     1724        M 0x80000708 beqz    a0, pc + 404           #; a0  = 1, not taken
       0     1725        M 0x8000070c li      a0, 8                  #; (wrb) a0  <-- 8
       0     1734        M 0x80000710 li      a1, 29                 #; (wrb) a1  <-- 29
       0     1735        M 0x80000714 li      a2, 64                 #; (wrb) a2  <-- 64
       0     1736        M 0x80000718 li      a3, 192                #; (wrb) a3  <-- 192
       0     1737        M 0x8000071c scfgw   a1, a2                 #; a1  = 29, a2  = 64
       0     1746        M 0x80000720 scfgw   a0, a3                 #; a0  = 8, a3  = 192
       0     1747        M 0x80000724 li      a0, 32                 #; (wrb) a0  <-- 32
       0     1748        M 0x80000728 scfgw   zero, a0               #; a0  = 32
       0     1749        M 0x8000072c scfgwi  s2, 896                #; s2  = 0x00100000
       0     1759        M 0x80000730 csrrsi  a0, ssr, 1             #; 
       0     1760        M 0x80000738 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003738
       0     1761        M 0x8000073c addi    a0, a0, 40             #; a0  = 0x80003738, (wrb) a0  <-- 0x80003760
                         M 0x80000734 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x80003758]
       0     1770        M                                           #; (f:lsu) ft3  <-- 3.141
       0     1771        M 0x80000744 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003744
       0     1772        M 0x80000748 addi    a0, a0, 36             #; a0  = 0x80003744, (wrb) a0  <-- 0x80003768
                         M 0x80000740 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003760]
       0     1775        M 0x8000074c fld     ft5, 0(a0)             #; ft5  <~~ Doub[0x80003768]
       0     1781        M                                           #; (f:lsu) ft4  <-- 6.282
       0     1782        M 0x80000750 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003750
       0     1783        M 0x80000754 addi    a0, a0, 32             #; a0  = 0x80003750, (wrb) a0  <-- 0x80003770
       0     1784        M                                           #; (f:lsu) ft5  <-- 9.423
       0     1786        M 0x80000758 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x80003770]
       0     1787        M 0x8000075c fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
       0     1788        M                                           #; (f:fpu) ft0  <-- 3.141
       0     1795        M                                           #; (f:lsu) ft6  <-- 12.564
       0     1796        M 0x80000760 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     1797        M 0x8000076c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000376c
                         M 0x80000764 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.423, ft5  = 9.423, (f:fpu) ft0  <-- 6.282
       0     1798        M 0x80000768 fsgnj.d ft0, ft6, ft6          #; ft6  = 12.564, ft6  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1799        M                                           #; (f:fpu) ft0  <-- 12.564
       0     1806        M 0x80000770 addi    a0, a0, 12             #; a0  = 0x8000376c, (wrb) a0  <-- 0x80003778
       0     1808        M 0x80000778 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003778
       0     1809        M 0x8000077c addi    a0, a0, 8              #; a0  = 0x80003778, (wrb) a0  <-- 0x80003780
                         M 0x80000774 fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x80003778]
       0     1818        M                                           #; (f:lsu) ft7  <-- 15.705
       0     1819        M 0x80000784 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003784
       0     1820        M 0x80000788 addi    a0, a0, 4              #; a0  = 0x80003784, (wrb) a0  <-- 0x80003788
                         M 0x80000780 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x80003780]
       0     1823        M 0x8000078c fld     fa1, 0(a0)             #; fa1  <~~ Doub[0x80003788]
       0     1829        M                                           #; (f:lsu) fa0  <-- 18.846
       0     1830        M 0x80000790 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003790
       0     1831        M 0x80000794 mv      a0, a0                 #; a0  = 0x80003790, (wrb) a0  <-- 0x80003790
       0     1832        M                                           #; (f:lsu) fa1  <-- 21.9870000
       0     1834        M 0x80000798 fld     fa2, 0(a0)             #; fa2  <~~ Doub[0x80003790]
       0     1835        M 0x8000079c fsgnj.d ft0, ft7, ft7          #; ft7  = 15.705, ft7  = 15.705
       0     1836        M                                           #; (f:fpu) ft0  <-- 15.705
       0     1843        M                                           #; (f:lsu) fa2  <-- 25.128
       0     1844        M 0x800007a0 fsgnj.d ft0, fa0, fa0          #; fa0  = 18.846, fa0  = 18.846
       0     1845        M 0x800007ac auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037ac
                         M 0x800007a4 fsgnj.d ft0, fa1, fa1          #; fa1  = 21.9870000, fa1  = 21.9870000, (f:fpu) ft0  <-- 18.846
       0     1846        M 0x800007a8 fsgnj.d ft0, fa2, fa2          #; fa2  = 25.128, fa2  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     1847        M                                           #; (f:fpu) ft0  <-- 25.128
       0     1854        M 0x800007b0 addi    a0, a0, -20            #; a0  = 0x800037ac, (wrb) a0  <-- 0x80003798
       0     1856        M 0x800007b8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037b8
       0     1857        M 0x800007bc addi    a0, a0, -24            #; a0  = 0x800037b8, (wrb) a0  <-- 0x800037a0
                         M 0x800007b4 fld     fa3, 0(a0)             #; fa3  <~~ Doub[0x80003798]
       0     1866        M                                           #; (f:lsu) fa3  <-- 28.269
       0     1867        M 0x800007c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037c4
       0     1868        M 0x800007c8 addi    a0, a0, -28            #; a0  = 0x800037c4, (wrb) a0  <-- 0x800037a8
                         M 0x800007c0 fld     fa4, 0(a0)             #; fa4  <~~ Doub[0x800037a0]
       0     1871        M 0x800007cc fld     fa5, 0(a0)             #; fa5  <~~ Doub[0x800037a8]
       0     1877        M                                           #; (f:lsu) fa4  <-- 31.41
       0     1878        M 0x800007d0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037d0
       0     1879        M 0x800007d4 addi    a0, a0, -32            #; a0  = 0x800037d0, (wrb) a0  <-- 0x800037b0
       0     1880        M                                           #; (f:lsu) fa5  <-- 34.551
       0     1882        M 0x800007d8 fld     fa6, 0(a0)             #; fa6  <~~ Doub[0x800037b0]
       0     1883        M 0x800007dc fsgnj.d ft0, fa3, fa3          #; fa3  = 28.269, fa3  = 28.269
       0     1884        M                                           #; (f:fpu) ft0  <-- 28.269
       0     1891        M                                           #; (f:lsu) fa6  <-- 37.692
       0     1892        M 0x800007e0 fsgnj.d ft0, fa4, fa4          #; fa4  = 31.41, fa4  = 31.41
       0     1893        M 0x800007ec auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037ec
                         M 0x800007e4 fsgnj.d ft0, fa5, fa5          #; fa5  = 34.551, fa5  = 34.551, (f:fpu) ft0  <-- 31.41
       0     1894        M 0x800007e8 fsgnj.d ft0, fa6, fa6          #; fa6  = 37.692, fa6  = 37.692, (f:fpu) ft0  <-- 34.551
       0     1895        M                                           #; (f:fpu) ft0  <-- 37.692
       0     1902        M 0x800007f0 addi    a0, a0, -52            #; a0  = 0x800037ec, (wrb) a0  <-- 0x800037b8
       0     1904        M 0x800007f8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037f8
       0     1905        M 0x800007fc addi    a0, a0, -56            #; a0  = 0x800037f8, (wrb) a0  <-- 0x800037c0
                         M 0x800007f4 fld     fa5, 0(a0)             #; fa5  <~~ Doub[0x800037b8]
       0     1914        M                                           #; (f:lsu) fa5  <-- 40.833
       0     1915        M 0x80000804 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003804
       0     1916        M 0x80000808 addi    a0, a0, -60            #; a0  = 0x80003804, (wrb) a0  <-- 0x800037c8
                         M 0x80000800 fld     fa6, 0(a0)             #; fa6  <~~ Doub[0x800037c0]
       0     1919        M 0x8000080c fld     fa7, 0(a0)             #; fa7  <~~ Doub[0x800037c8]
       0     1925        M                                           #; (f:lsu) fa6  <-- 43.9740000
       0     1926        M 0x80000810 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003810
       0     1927        M 0x80000814 addi    a0, a0, -64            #; a0  = 0x80003810, (wrb) a0  <-- 0x800037d0
       0     1928        M                                           #; (f:lsu) fa7  <-- 47.115
       0     1930        M 0x80000818 fld     ft8, 0(a0)             #; ft8  <~~ Doub[0x800037d0]
       0     1931        M 0x8000081c fsgnj.d ft0, fa5, fa5          #; fa5  = 40.833, fa5  = 40.833
       0     1932        M                                           #; (f:fpu) ft0  <-- 40.833
       0     1939        M                                           #; (f:lsu) ft8  <-- 50.256
       0     1940        M 0x80000820 fsgnj.d ft0, fa6, fa6          #; fa6  = 43.9740000, fa6  = 43.9740000
       0     1941        M 0x8000082c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000382c
                         M 0x80000824 fsgnj.d ft0, fa7, fa7          #; fa7  = 47.115, fa7  = 47.115, (f:fpu) ft0  <-- 43.9740000
       0     1942        M 0x80000828 fsgnj.d ft0, ft8, ft8          #; ft8  = 50.256, ft8  = 50.256, (f:fpu) ft0  <-- 47.115
       0     1943        M                                           #; (f:fpu) ft0  <-- 50.256
       0     1950        M 0x80000830 addi    a0, a0, -84            #; a0  = 0x8000382c, (wrb) a0  <-- 0x800037d8
       0     1952        M 0x80000838 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003838
       0     1953        M 0x8000083c addi    a0, a0, -88            #; a0  = 0x80003838, (wrb) a0  <-- 0x800037e0
                         M 0x80000834 fld     fa5, 0(a0)             #; fa5  <~~ Doub[0x800037d8]
       0     1962        M                                           #; (f:lsu) fa5  <-- 53.397
       0     1963        M 0x80000844 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003844
       0     1964        M 0x80000848 addi    a0, a0, -92            #; a0  = 0x80003844, (wrb) a0  <-- 0x800037e8
                         M 0x80000840 fld     fa6, 0(a0)             #; fa6  <~~ Doub[0x800037e0]
       0     1967        M 0x8000084c fld     fa7, 0(a0)             #; fa7  <~~ Doub[0x800037e8]
       0     1973        M                                           #; (f:lsu) fa6  <-- 56.538
       0     1974        M 0x80000850 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003850
       0     1975        M 0x80000854 addi    a0, a0, -96            #; a0  = 0x80003850, (wrb) a0  <-- 0x800037f0
       0     1976        M                                           #; (f:lsu) fa7  <-- 59.679
       0     1978        M 0x80000858 fld     ft8, 0(a0)             #; ft8  <~~ Doub[0x800037f0]
       0     1979        M 0x8000085c fsgnj.d ft0, fa5, fa5          #; fa5  = 53.397, fa5  = 53.397
       0     1980        M                                           #; (f:fpu) ft0  <-- 53.397
       0     1987        M                                           #; (f:lsu) ft8  <-- 62.82
       0     1988        M 0x80000860 fsgnj.d ft0, fa6, fa6          #; fa6  = 56.538, fa6  = 56.538
       0     1989        M 0x80000864 fsgnj.d ft0, fa7, fa7          #; fa7  = 59.679, fa7  = 59.679, (f:fpu) ft0  <-- 56.538
       0     1990        M 0x80000868 fsgnj.d ft0, ft8, ft8          #; ft8  = 62.82, ft8  = 62.82, (f:fpu) ft0  <-- 59.679
       0     1991        M 0x8000086c fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141, (f:fpu) ft0  <-- 62.82
       0     1992        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2000        M 0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2001        M 0x80000874 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.423, ft5  = 9.423, (f:fpu) ft0  <-- 6.282
       0     2002        M 0x80000878 fsgnj.d ft0, ft6, ft6          #; ft6  = 12.564, ft6  = 12.564, (f:fpu) ft0  <-- 9.423
       0     2003        M 0x8000087c fsgnj.d ft0, ft7, ft7          #; ft7  = 15.705, ft7  = 15.705, (f:fpu) ft0  <-- 12.564
       0     2004        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2012        M 0x80000880 fsgnj.d ft0, fa0, fa0          #; fa0  = 18.846, fa0  = 18.846
       0     2013        M 0x80000884 fsgnj.d ft0, fa1, fa1          #; fa1  = 21.9870000, fa1  = 21.9870000, (f:fpu) ft0  <-- 18.846
       0     2014        M 0x80000888 fsgnj.d ft0, fa2, fa2          #; fa2  = 25.128, fa2  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     2015        M 0x8000088c fsgnj.d ft0, fa3, fa3          #; fa3  = 28.269, fa3  = 28.269, (f:fpu) ft0  <-- 25.128
       0     2016        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2024        M 0x80000898 j       pc + 0x54              #; goto 0x800008ec
                         M 0x80000890 fsgnj.d ft0, fa4, fa4          #; fa4  = 31.41, fa4  = 31.41
       0     2025        M 0x80000894 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 31.41
       0     2034        M 0x800008ec addi    a0, s6, 328            #; s6  = 0x001000f0, (wrb) a0  <-- 0x00100238
       0     2046        M 0x800008f0 srli    a1, s6, 20             #; s6  = 0x001000f0, (wrb) a1  <-- 1
       0     2047        M 0x800008f4 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     2048        M 0x800008f8 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     2049        M 0x800008fc addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     2058        M 0x80000900 sltu    a0, a0, a2             #; a0  = 0x00100238, a2  = 0x00120001, (wrb) a0  <-- 1
       0     2059        M 0x80000904 and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     2060        M 0x80000908 beqz    a0, pc + 124           #; a0  = 1, not taken
       0     2061        M 0x8000090c li      a1, 0                  #; (wrb) a1  <-- 0
       0     2070        M 0x80000910 li      a0, 8                  #; (wrb) a0  <-- 8
       0     2071        M 0x80000914 li      a2, 41                 #; (wrb) a2  <-- 41
       0     2072        M 0x80000918 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2073        M 0x8000091c scfgw   a2, a3                 #; a2  = 41, a3  = 64
       0     2082        M 0x80000920 li      a2, 192                #; (wrb) a2  <-- 192
       0     2083        M 0x80000924 scfgw   a0, a2                 #; a0  = 8, a2  = 192
       0     2084        M 0x80000928 li      a0, 32                 #; (wrb) a0  <-- 32
       0     2085        M 0x8000092c scfgw   zero, a0               #; a0  = 32
       0     2094        M 0x80000930 scfgwi  s6, 896                #; s6  = 0x001000f0
       0     2096        M 0x80000938 li      a2, 42                 #; (wrb) a2  <-- 42
                         M 0x80000934 csrrsi  a0, ssr, 1             #; 
       0     2097        M 0x8000093c li      a3, 1                  #; (wrb) a3  <-- 1
       0     2107        M 0x80000944 lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
       0     2108        M 0x80000948 addi    a0, a0, -819           #; a0  = 0xccccd000, (wrb) a0  <-- 0xcccccccd
                         M 0x80000940 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x80003758]
       0     2109        M 0x8000094c li      a4, 20                 #; (wrb) a4  <-- 20
       0     2117        M                                           #; (f:lsu) ft3  <-- 3.141
       0     2118        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 0, a0  = 0xcccccccd
       0     2121        M                                           #; (acc) a5  <-- 0x0047d793
       0     2122        M 0x80000954 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     2123        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2126        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2127        M 0x8000095c sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
       0     2131        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2132        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2133        M 0x8000096c addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2136        M                                           #; (f:fpu) ft4  <-- 3.141
       0     2137        M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2138        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2142        M 0x80000970 addi    a2, a2, -1             #; a2  = 42, (wrb) a2  <-- 41
       0     2143        M 0x80000974 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
       0     2144        M 0x80000978 bnez    a2, pc - 40            #; a2  = 41, taken, goto 0x80000950
       0     2145        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 1, a0  = 0xcccccccd
       0     2148        M                                           #; (acc) a5  <-- 0x0047d793
       0     2149        M 0x80000954 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
       0     2150        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2153        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2154        M 0x8000095c sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
       0     2156        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2157        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2158        M 0x8000096c addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2159        M 0x80000970 addi    a2, a2, -1             #; a2  = 41, (wrb) a2  <-- 40
       0     2160        M 0x80000974 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
       0     2161        M 0x80000978 bnez    a2, pc - 40            #; a2  = 40, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2162        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 2, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2163        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2165        M                                           #; (acc) a5  <-- 0x0047d793
       0     2166        M 0x80000954 srli    a5, a5, 4              #; a5  = 1, (wrb) a5  <-- 0
       0     2167        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2170        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2171        M 0x8000095c sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
       0     2173        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2174        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2175        M 0x8000096c addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2176        M 0x80000970 addi    a2, a2, -1             #; a2  = 40, (wrb) a2  <-- 39
       0     2177        M 0x80000974 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
       0     2178        M 0x80000978 bnez    a2, pc - 40            #; a2  = 39, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2179        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 3, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2180        M                                           #; (f:fpu) ft0  <-- 9.423
       0     2182        M                                           #; (acc) a5  <-- 0x0047d793
       0     2183        M 0x80000954 srli    a5, a5, 4              #; a5  = 2, (wrb) a5  <-- 0
       0     2184        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2187        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2188        M 0x8000095c sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
       0     2190        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2191        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2192        M 0x8000096c addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2193        M 0x80000970 addi    a2, a2, -1             #; a2  = 39, (wrb) a2  <-- 38
       0     2194        M 0x80000974 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
       0     2195        M 0x80000978 bnez    a2, pc - 40            #; a2  = 38, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2196        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 4, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2197        M                                           #; (f:fpu) ft0  <-- 12.564
       0     2199        M                                           #; (acc) a5  <-- 0x0047d793
       0     2200        M 0x80000954 srli    a5, a5, 4              #; a5  = 3, (wrb) a5  <-- 0
       0     2201        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2204        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2205        M 0x8000095c sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
       0     2207        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2208        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2209        M 0x8000096c addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2210        M 0x80000970 addi    a2, a2, -1             #; a2  = 38, (wrb) a2  <-- 37
       0     2211        M 0x80000974 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
       0     2212        M 0x80000978 bnez    a2, pc - 40            #; a2  = 37, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2213        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 5, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2214        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2216        M                                           #; (acc) a5  <-- 0x0047d793
       0     2217        M 0x80000954 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
       0     2218        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2221        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2222        M 0x8000095c sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
       0     2224        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2225        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2226        M 0x8000096c addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2227        M 0x80000970 addi    a2, a2, -1             #; a2  = 37, (wrb) a2  <-- 36
       0     2228        M 0x80000974 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
       0     2229        M 0x80000978 bnez    a2, pc - 40            #; a2  = 36, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2230        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 6, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2231        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2233        M                                           #; (acc) a5  <-- 0x0047d793
       0     2234        M 0x80000954 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
       0     2235        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2238        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2239        M 0x8000095c sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
       0     2241        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2242        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2243        M 0x8000096c addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2244        M 0x80000970 addi    a2, a2, -1             #; a2  = 36, (wrb) a2  <-- 35
       0     2245        M 0x80000974 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
       0     2246        M 0x80000978 bnez    a2, pc - 40            #; a2  = 35, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2247        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 7, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2248        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2250        M                                           #; (acc) a5  <-- 0x0047d793
       0     2251        M 0x80000954 srli    a5, a5, 4              #; a5  = 5, (wrb) a5  <-- 0
       0     2252        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2255        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2256        M 0x8000095c sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
       0     2258        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2259        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2260        M 0x8000096c addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2261        M 0x80000970 addi    a2, a2, -1             #; a2  = 35, (wrb) a2  <-- 34
       0     2262        M 0x80000974 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
       0     2263        M 0x80000978 bnez    a2, pc - 40            #; a2  = 34, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2264        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 8, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2265        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2267        M                                           #; (acc) a5  <-- 0x0047d793
       0     2268        M 0x80000954 srli    a5, a5, 4              #; a5  = 6, (wrb) a5  <-- 0
       0     2269        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2272        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2273        M 0x8000095c sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
       0     2275        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2276        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2277        M 0x8000096c addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2278        M 0x80000970 addi    a2, a2, -1             #; a2  = 34, (wrb) a2  <-- 33
       0     2279        M 0x80000974 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
       0     2280        M 0x80000978 bnez    a2, pc - 40            #; a2  = 33, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2281        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 9, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2282        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2284        M                                           #; (acc) a5  <-- 0x0047d793
       0     2285        M 0x80000954 srli    a5, a5, 4              #; a5  = 7, (wrb) a5  <-- 0
       0     2286        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2289        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2290        M 0x8000095c sub     a5, a3, a5             #; a3  = 10, a5  = 0, (wrb) a5  <-- 10
       0     2292        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2293        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2294        M 0x8000096c addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2295        M 0x80000970 addi    a2, a2, -1             #; a2  = 33, (wrb) a2  <-- 32
       0     2296        M 0x80000974 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
       0     2297        M 0x80000978 bnez    a2, pc - 40            #; a2  = 32, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2298        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 10, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2299        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2301        M                                           #; (acc) a5  <-- 0x0047d793
       0     2302        M 0x80000954 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
       0     2303        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2306        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2307        M 0x8000095c sub     a5, a3, a5             #; a3  = 11, a5  = 0, (wrb) a5  <-- 11
       0     2309        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2310        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2311        M 0x8000096c addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2312        M 0x80000970 addi    a2, a2, -1             #; a2  = 32, (wrb) a2  <-- 31
       0     2313        M 0x80000974 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
       0     2314        M 0x80000978 bnez    a2, pc - 40            #; a2  = 31, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2315        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 11, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2316        M                                           #; (f:fpu) ft0  <-- 34.551
       0     2318        M                                           #; (acc) a5  <-- 0x0047d793
       0     2319        M 0x80000954 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
       0     2320        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2323        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2324        M 0x8000095c sub     a5, a3, a5             #; a3  = 12, a5  = 0, (wrb) a5  <-- 12
       0     2326        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2327        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2328        M 0x8000096c addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2329        M 0x80000970 addi    a2, a2, -1             #; a2  = 31, (wrb) a2  <-- 30
       0     2330        M 0x80000974 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
       0     2331        M 0x80000978 bnez    a2, pc - 40            #; a2  = 30, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2332        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 12, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2333        M                                           #; (f:fpu) ft0  <-- 37.692
       0     2335        M                                           #; (acc) a5  <-- 0x0047d793
       0     2336        M 0x80000954 srli    a5, a5, 4              #; a5  = 9, (wrb) a5  <-- 0
       0     2337        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2340        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2341        M 0x8000095c sub     a5, a3, a5             #; a3  = 13, a5  = 0, (wrb) a5  <-- 13
       0     2343        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2344        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2345        M 0x8000096c addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2346        M 0x80000970 addi    a2, a2, -1             #; a2  = 30, (wrb) a2  <-- 29
       0     2347        M 0x80000974 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
       0     2348        M 0x80000978 bnez    a2, pc - 40            #; a2  = 29, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2349        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 13, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2350        M                                           #; (f:fpu) ft0  <-- 40.833
       0     2352        M                                           #; (acc) a5  <-- 0x0047d793
       0     2353        M 0x80000954 srli    a5, a5, 4              #; a5  = 10, (wrb) a5  <-- 0
       0     2354        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2357        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2358        M 0x8000095c sub     a5, a3, a5             #; a3  = 14, a5  = 0, (wrb) a5  <-- 14
       0     2360        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     2361        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2362        M 0x8000096c addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2363        M 0x80000970 addi    a2, a2, -1             #; a2  = 29, (wrb) a2  <-- 28
       0     2364        M 0x80000974 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
       0     2365        M 0x80000978 bnez    a2, pc - 40            #; a2  = 28, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2366        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 14, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2367        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2369        M                                           #; (acc) a5  <-- 0x0047d793
       0     2370        M 0x80000954 srli    a5, a5, 4              #; a5  = 11, (wrb) a5  <-- 0
       0     2371        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2374        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2375        M 0x8000095c sub     a5, a3, a5             #; a3  = 15, a5  = 0, (wrb) a5  <-- 15
       0     2377        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     2378        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2379        M 0x8000096c addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2380        M 0x80000970 addi    a2, a2, -1             #; a2  = 28, (wrb) a2  <-- 27
       0     2381        M 0x80000974 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
       0     2382        M 0x80000978 bnez    a2, pc - 40            #; a2  = 27, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2383        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 15, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     2384        M                                           #; (f:fpu) ft0  <-- 47.115
       0     2386        M                                           #; (acc) a5  <-- 0x0047d793
       0     2387        M 0x80000954 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
       0     2388        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2391        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2392        M 0x8000095c sub     a5, a3, a5             #; a3  = 16, a5  = 0, (wrb) a5  <-- 16
       0     2394        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     2395        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2396        M 0x8000096c addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     2397        M 0x80000970 addi    a2, a2, -1             #; a2  = 27, (wrb) a2  <-- 26
       0     2398        M 0x80000974 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
       0     2399        M 0x80000978 bnez    a2, pc - 40            #; a2  = 26, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     2400        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 16, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     2401        M                                           #; (f:fpu) ft0  <-- 50.256
       0     2403        M                                           #; (acc) a5  <-- 0x0047d793
       0     2404        M 0x80000954 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
       0     2405        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2408        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2409        M 0x8000095c sub     a5, a3, a5             #; a3  = 17, a5  = 0, (wrb) a5  <-- 17
       0     2411        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     2412        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2413        M 0x8000096c addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     2414        M 0x80000970 addi    a2, a2, -1             #; a2  = 26, (wrb) a2  <-- 25
       0     2415        M 0x80000974 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
       0     2416        M 0x80000978 bnez    a2, pc - 40            #; a2  = 25, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     2417        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 17, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     2418        M                                           #; (f:fpu) ft0  <-- 53.397
       0     2420        M                                           #; (acc) a5  <-- 0x0047d793
       0     2421        M 0x80000954 srli    a5, a5, 4              #; a5  = 13, (wrb) a5  <-- 0
       0     2422        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2425        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2426        M 0x8000095c sub     a5, a3, a5             #; a3  = 18, a5  = 0, (wrb) a5  <-- 18
       0     2428        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     2429        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2430        M 0x8000096c addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     2431        M 0x80000970 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
       0     2432        M 0x80000974 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
       0     2433        M 0x80000978 bnez    a2, pc - 40            #; a2  = 24, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     2434        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 18, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     2435        M                                           #; (f:fpu) ft0  <-- 56.538
       0     2437        M                                           #; (acc) a5  <-- 0x0047d793
       0     2438        M 0x80000954 srli    a5, a5, 4              #; a5  = 14, (wrb) a5  <-- 0
       0     2439        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2442        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2443        M 0x8000095c sub     a5, a3, a5             #; a3  = 19, a5  = 0, (wrb) a5  <-- 19
       0     2445        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     2446        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2447        M 0x8000096c addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     2448        M 0x80000970 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
       0     2449        M 0x80000974 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
       0     2450        M 0x80000978 bnez    a2, pc - 40            #; a2  = 23, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     2451        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 19, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     2452        M                                           #; (f:fpu) ft0  <-- 59.679
       0     2454        M                                           #; (acc) a5  <-- 0x0047d793
       0     2455        M 0x80000954 srli    a5, a5, 4              #; a5  = 15, (wrb) a5  <-- 0
       0     2456        M 0x80000958 mul     a5, a5, a4             #; a5  = 0, a4  = 20
       0     2459        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2460        M 0x8000095c sub     a5, a3, a5             #; a3  = 20, a5  = 0, (wrb) a5  <-- 20
       0     2462        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     2463        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2464        M 0x8000096c addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     2465        M 0x80000970 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
       0     2466        M 0x80000974 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
       0     2467        M 0x80000978 bnez    a2, pc - 40            #; a2  = 22, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     2468        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 20, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     2469        M                                           #; (f:fpu) ft0  <-- 62.82
       0     2471        M                                           #; (acc) a5  <-- 0x0047d793
       0     2472        M 0x80000954 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
       0     2473        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2476        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2477        M 0x8000095c sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
       0     2479        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2480        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2481        M 0x8000096c addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2482        M 0x80000970 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
       0     2483        M 0x80000974 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
       0     2484        M 0x80000978 bnez    a2, pc - 40            #; a2  = 21, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2485        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 21, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2486        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2488        M                                           #; (acc) a5  <-- 0x0047d793
       0     2489        M 0x80000954 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
       0     2490        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2493        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2494        M 0x8000095c sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
       0     2496        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2497        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2498        M 0x8000096c addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2499        M 0x80000970 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
       0     2500        M 0x80000974 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
       0     2501        M 0x80000978 bnez    a2, pc - 40            #; a2  = 20, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2502        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 22, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2503        M                                           #; (f:fpu) ft0  <-- 6.282
       0     2505        M                                           #; (acc) a5  <-- 0x0047d793
       0     2506        M 0x80000954 srli    a5, a5, 4              #; a5  = 17, (wrb) a5  <-- 1
       0     2507        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2510        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2511        M 0x8000095c sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
       0     2513        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 3
       0     2514        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2515        M 0x8000096c addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
       0     2516        M 0x80000970 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
       0     2517        M 0x80000974 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
       0     2518        M 0x80000978 bnez    a2, pc - 40            #; a2  = 19, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 9.423
       0     2519        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 23, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
       0     2520        M                                           #; (f:fpu) ft0  <-- 9.423
       0     2522        M                                           #; (acc) a5  <-- 0x0047d793
       0     2523        M 0x80000954 srli    a5, a5, 4              #; a5  = 18, (wrb) a5  <-- 1
       0     2524        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2527        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2528        M 0x8000095c sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
       0     2530        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 4
       0     2531        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2532        M 0x8000096c addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
       0     2533        M 0x80000970 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
       0     2534        M 0x80000974 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
       0     2535        M 0x80000978 bnez    a2, pc - 40            #; a2  = 18, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 12.564
       0     2536        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 24, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
       0     2537        M                                           #; (f:fpu) ft0  <-- 12.564
       0     2539        M                                           #; (acc) a5  <-- 0x0047d793
       0     2540        M 0x80000954 srli    a5, a5, 4              #; a5  = 19, (wrb) a5  <-- 1
       0     2541        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2544        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2545        M 0x8000095c sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
       0     2547        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 5
       0     2548        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2549        M 0x8000096c addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
       0     2550        M 0x80000970 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
       0     2551        M 0x80000974 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
       0     2552        M 0x80000978 bnez    a2, pc - 40            #; a2  = 17, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 15.705
       0     2553        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 25, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
       0     2554        M                                           #; (f:fpu) ft0  <-- 15.705
       0     2556        M                                           #; (acc) a5  <-- 0x0047d793
       0     2557        M 0x80000954 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
       0     2558        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2561        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2562        M 0x8000095c sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
       0     2564        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 6
       0     2565        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2566        M 0x8000096c addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
       0     2567        M 0x80000970 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
       0     2568        M 0x80000974 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
       0     2569        M 0x80000978 bnez    a2, pc - 40            #; a2  = 16, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 18.846
       0     2570        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 26, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
       0     2571        M                                           #; (f:fpu) ft0  <-- 18.846
       0     2573        M                                           #; (acc) a5  <-- 0x0047d793
       0     2574        M 0x80000954 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
       0     2575        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2578        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2579        M 0x8000095c sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
       0     2581        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 7
       0     2582        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2583        M 0x8000096c addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
       0     2584        M 0x80000970 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
       0     2585        M 0x80000974 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
       0     2586        M 0x80000978 bnez    a2, pc - 40            #; a2  = 15, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 21.9870000
       0     2587        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 27, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
       0     2588        M                                           #; (f:fpu) ft0  <-- 21.9870000
       0     2590        M                                           #; (acc) a5  <-- 0x0047d793
       0     2591        M 0x80000954 srli    a5, a5, 4              #; a5  = 21, (wrb) a5  <-- 1
       0     2592        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2595        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2596        M 0x8000095c sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
       0     2598        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 8
       0     2599        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2600        M 0x8000096c addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
       0     2601        M 0x80000970 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
       0     2602        M 0x80000974 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
       0     2603        M 0x80000978 bnez    a2, pc - 40            #; a2  = 14, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 25.128
       0     2604        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 28, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
       0     2605        M                                           #; (f:fpu) ft0  <-- 25.128
       0     2607        M                                           #; (acc) a5  <-- 0x0047d793
       0     2608        M 0x80000954 srli    a5, a5, 4              #; a5  = 22, (wrb) a5  <-- 1
       0     2609        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2612        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2613        M 0x8000095c sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
       0     2615        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 9
       0     2616        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2617        M 0x8000096c addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
       0     2618        M 0x80000970 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
       0     2619        M 0x80000974 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
       0     2620        M 0x80000978 bnez    a2, pc - 40            #; a2  = 13, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 28.269
       0     2621        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 29, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
       0     2622        M                                           #; (f:fpu) ft0  <-- 28.269
       0     2624        M                                           #; (acc) a5  <-- 0x0047d793
       0     2625        M 0x80000954 srli    a5, a5, 4              #; a5  = 23, (wrb) a5  <-- 1
       0     2626        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2629        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2630        M 0x8000095c sub     a5, a3, a5             #; a3  = 30, a5  = 20, (wrb) a5  <-- 10
       0     2632        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 10
       0     2633        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2634        M 0x8000096c addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
       0     2635        M 0x80000970 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
       0     2636        M 0x80000974 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
       0     2637        M 0x80000978 bnez    a2, pc - 40            #; a2  = 12, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 31.41
       0     2638        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 30, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
       0     2639        M                                           #; (f:fpu) ft0  <-- 31.41
       0     2641        M                                           #; (acc) a5  <-- 0x0047d793
       0     2642        M 0x80000954 srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
       0     2643        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2646        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2647        M 0x8000095c sub     a5, a3, a5             #; a3  = 31, a5  = 20, (wrb) a5  <-- 11
       0     2649        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 11
       0     2650        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2651        M 0x8000096c addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
       0     2652        M 0x80000970 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
       0     2653        M 0x80000974 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
       0     2654        M 0x80000978 bnez    a2, pc - 40            #; a2  = 11, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 34.551
       0     2655        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 31, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
       0     2656        M                                           #; (f:fpu) ft0  <-- 34.551
       0     2658        M                                           #; (acc) a5  <-- 0x0047d793
       0     2659        M 0x80000954 srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
       0     2660        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2663        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2664        M 0x8000095c sub     a5, a3, a5             #; a3  = 32, a5  = 20, (wrb) a5  <-- 12
       0     2666        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 12
       0     2667        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2668        M 0x8000096c addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
       0     2669        M 0x80000970 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
       0     2670        M 0x80000974 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
       0     2671        M 0x80000978 bnez    a2, pc - 40            #; a2  = 10, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 37.692
       0     2672        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 32, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
       0     2673        M                                           #; (f:fpu) ft0  <-- 37.692
       0     2675        M                                           #; (acc) a5  <-- 0x0047d793
       0     2676        M 0x80000954 srli    a5, a5, 4              #; a5  = 25, (wrb) a5  <-- 1
       0     2677        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2680        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2681        M 0x8000095c sub     a5, a3, a5             #; a3  = 33, a5  = 20, (wrb) a5  <-- 13
       0     2683        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 13
       0     2684        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2685        M 0x8000096c addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
       0     2686        M 0x80000970 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
       0     2687        M 0x80000974 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
       0     2688        M 0x80000978 bnez    a2, pc - 40            #; a2  = 9, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 40.833
       0     2689        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 33, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
       0     2690        M                                           #; (f:fpu) ft0  <-- 40.833
       0     2692        M                                           #; (acc) a5  <-- 0x0047d793
       0     2693        M 0x80000954 srli    a5, a5, 4              #; a5  = 26, (wrb) a5  <-- 1
       0     2694        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2697        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2698        M 0x8000095c sub     a5, a3, a5             #; a3  = 34, a5  = 20, (wrb) a5  <-- 14
       0     2700        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 14
       0     2701        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2702        M 0x8000096c addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
       0     2703        M 0x80000970 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
       0     2704        M 0x80000974 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
       0     2705        M 0x80000978 bnez    a2, pc - 40            #; a2  = 8, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 43.9740000
       0     2706        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 34, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
       0     2707        M                                           #; (f:fpu) ft0  <-- 43.9740000
       0     2709        M                                           #; (acc) a5  <-- 0x0047d793
       0     2710        M 0x80000954 srli    a5, a5, 4              #; a5  = 27, (wrb) a5  <-- 1
       0     2711        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2714        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2715        M 0x8000095c sub     a5, a3, a5             #; a3  = 35, a5  = 20, (wrb) a5  <-- 15
       0     2717        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 15
       0     2718        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2719        M 0x8000096c addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
       0     2720        M 0x80000970 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
       0     2721        M 0x80000974 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
       0     2722        M 0x80000978 bnez    a2, pc - 40            #; a2  = 7, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 47.115
       0     2723        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 35, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
       0     2724        M                                           #; (f:fpu) ft0  <-- 47.115
       0     2726        M                                           #; (acc) a5  <-- 0x0047d793
       0     2727        M 0x80000954 srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
       0     2728        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2731        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2732        M 0x8000095c sub     a5, a3, a5             #; a3  = 36, a5  = 20, (wrb) a5  <-- 16
       0     2734        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 16
       0     2735        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2736        M 0x8000096c addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
       0     2737        M 0x80000970 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
       0     2738        M 0x80000974 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
       0     2739        M 0x80000978 bnez    a2, pc - 40            #; a2  = 6, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 50.256
       0     2740        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 36, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
       0     2741        M                                           #; (f:fpu) ft0  <-- 50.256
       0     2743        M                                           #; (acc) a5  <-- 0x0047d793
       0     2744        M 0x80000954 srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
       0     2745        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2748        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2749        M 0x8000095c sub     a5, a3, a5             #; a3  = 37, a5  = 20, (wrb) a5  <-- 17
       0     2751        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 17
       0     2752        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2753        M 0x8000096c addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
       0     2754        M 0x80000970 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     2755        M 0x80000974 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
       0     2756        M 0x80000978 bnez    a2, pc - 40            #; a2  = 5, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 53.397
       0     2757        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 37, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
       0     2758        M                                           #; (f:fpu) ft0  <-- 53.397
       0     2760        M                                           #; (acc) a5  <-- 0x0047d793
       0     2761        M 0x80000954 srli    a5, a5, 4              #; a5  = 29, (wrb) a5  <-- 1
       0     2762        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2765        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2766        M 0x8000095c sub     a5, a3, a5             #; a3  = 38, a5  = 20, (wrb) a5  <-- 18
       0     2768        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 18
       0     2769        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2770        M 0x8000096c addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
       0     2771        M 0x80000970 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     2772        M 0x80000974 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
       0     2773        M 0x80000978 bnez    a2, pc - 40            #; a2  = 4, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 56.538
       0     2774        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 38, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
       0     2775        M                                           #; (f:fpu) ft0  <-- 56.538
       0     2777        M                                           #; (acc) a5  <-- 0x0047d793
       0     2778        M 0x80000954 srli    a5, a5, 4              #; a5  = 30, (wrb) a5  <-- 1
       0     2779        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2782        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2783        M 0x8000095c sub     a5, a3, a5             #; a3  = 39, a5  = 20, (wrb) a5  <-- 19
       0     2785        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 19
       0     2786        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2787        M 0x8000096c addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
       0     2788        M 0x80000970 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     2789        M 0x80000974 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
       0     2790        M 0x80000978 bnez    a2, pc - 40            #; a2  = 3, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 59.679
       0     2791        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 39, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
       0     2792        M                                           #; (f:fpu) ft0  <-- 59.679
       0     2794        M                                           #; (acc) a5  <-- 0x0047d793
       0     2795        M 0x80000954 srli    a5, a5, 4              #; a5  = 31, (wrb) a5  <-- 1
       0     2796        M 0x80000958 mul     a5, a5, a4             #; a5  = 1, a4  = 20
       0     2799        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2800        M 0x8000095c sub     a5, a3, a5             #; a3  = 40, a5  = 20, (wrb) a5  <-- 20
       0     2802        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 20
       0     2803        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2804        M 0x8000096c addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
       0     2805        M 0x80000970 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     2806        M 0x80000974 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
       0     2807        M 0x80000978 bnez    a2, pc - 40            #; a2  = 2, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 62.82
       0     2808        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 40, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
       0     2809        M                                           #; (f:fpu) ft0  <-- 62.82
       0     2811        M                                           #; (acc) a5  <-- 0x0047d793
       0     2812        M 0x80000954 srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
       0     2813        M 0x80000958 mul     a5, a5, a4             #; a5  = 2, a4  = 20
       0     2816        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2817        M 0x8000095c sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
       0     2819        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 1
       0     2820        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2821        M 0x8000096c addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
       0     2822        M 0x80000970 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     2823        M 0x80000974 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
       0     2824        M 0x80000978 bnez    a2, pc - 40            #; a2  = 1, taken, goto 0x80000950
                         M                                           #; (f:fpu) ft4  <-- 3.141
       0     2825        M 0x80000950 mulhu   a5, a1, a0             #; a1  = 41, a0  = 0xcccccccd
                         M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
       0     2826        M                                           #; (f:fpu) ft0  <-- 3.141
       0     2828        M                                           #; (acc) a5  <-- 0x0047d793
       0     2829        M 0x80000954 srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
       0     2830        M 0x80000958 mul     a5, a5, a4             #; a5  = 2, a4  = 20
       0     2833        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2834        M 0x8000095c sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
       0     2836        M 0x80000960 fcvt.d.wu ft4, a5              #; ac1  = 2
       0     2837        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2838        M 0x8000096c addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
                         M 0x80000964 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
       0     2839        M 0x80000970 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     2840        M 0x80000974 addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
       0     2841        M 0x80000978 bnez    a2, pc - 40            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 6.282
       0     2842        M 0x80000968 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     2843        M 0x8000097c csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 6.282
       0     2854        M 0x80000980 j       pc + 0x54              #; goto 0x800009d4
       0     2866        M 0x800009d4 li      a3, 5                  #; (wrb) a3  <-- 5
       0     2867        M 0x800009d8 li      a4, 6                  #; (wrb) a4  <-- 6
       0     2868        M 0x800009dc li      a5, 7                  #; (wrb) a5  <-- 7
       0     2878        M 0x800009e0 li      s3, 6                  #; (wrb) s3  <-- 6
       0     2879        M 0x800009e4 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     2880        M 0x800009e8 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     2881        M 0x800009ec mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     2890        M 0x800009f0 auipc   ra, 0x2                #; (wrb) ra  <-- 0x800029f0
       0     2891        M 0x800009f4 jalr    ra, ra, 872            #; ra  = 0x800029f0, (wrb) ra  <-- 0x800009f8, goto 0x80002d58
       0     2913        M 0x80002d58 addi    sp, sp, -32            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff10
       0     2914        M 0x80002d5c sw      ra, 28(sp)             #; sp  = 0x0011ff10, 0x800009f8 ~~> Word[0x0011ff2c]
       0     2925        M 0x80002d60 sw      s0, 24(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff28]
       0     2926        M 0x80002d64 sw      s1, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     2927        M 0x80002d68 sw      s2, 16(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff20]
       0     2928        M 0x80002d6c sw      s3, 12(sp)             #; sp  = 0x0011ff10, 6 ~~> Word[0x0011ff1c]
       0     2937        M 0x80002d70 mv      s2, a3                 #; a3  = 5, (wrb) s2  <-- 5
       0     2938        M 0x80002d74 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     2939        M 0x80002d78 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     2940        M 0x80002d7c or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     2949        M 0x80002d80 bnez    a3, pc + 708           #; a3  = 0, not taken
       0     2950        M 0x80002d84 mv      s3, a0                 #; a0  = 0x00100240, (wrb) s3  <-- 0x00100240
       0     2951        M 0x80002d88 bge     zero, a4, pc + 412     #; a4  = 6, not taken
       0     2952        M 0x80002d8c addi    a6, s2, -1             #; s2  = 5, (wrb) a6  <-- 4
       0     2961        M 0x80002d90 mul     a0, a6, a5             #; a6  = 4, a5  = 7
       0     2964        M                                           #; (acc) a0  <-- 0x00451513
       0     2965        M 0x80002d94 slli    a0, a0, 4              #; a0  = 28, (wrb) a0  <-- 448
       0     2966        M 0x80002d98 add     a0, a0, s3             #; a0  = 448, s3  = 0x00100240, (wrb) a0  <-- 0x00100400
       0     2967        M 0x80002d9c mul     s1, a4, a6             #; a4  = 6, a6  = 4
       0     2973        M 0x80002da0 li      s0, 24                 #; (wrb) s0  <-- 24
       0     2974        M 0x80002da4 mul     s1, s1, s0             #; s1  = 24, s0  = 24
       0     2977        M                                           #; (acc) s1  <-- 0x00b484b3
       0     2978        M 0x80002da8 add     s1, s1, a1             #; s1  = 576, a1  = 0x00100000, (wrb) s1  <-- 0x00100240
       0     2979        M 0x80002dac sltu    s0, a0, a1             #; a0  = 0x00100400, a1  = 0x00100000, (wrb) s0  <-- 0
       0     2985        M 0x80002db0 sltu    a3, s1, s3             #; s1  = 0x00100240, s3  = 0x00100240, (wrb) a3  <-- 0
       0     2986        M 0x80002db4 or      a7, s0, a3             #; s0  = 0, a3  = 0, (wrb) a7  <-- 0
       0     2987        M 0x80002db8 sltu    s0, a0, a2             #; a0  = 0x00100400, a2  = 0x001000f0, (wrb) s0  <-- 0
       0     2988        M 0x80002dbc sltu    a3, a2, s3             #; a2  = 0x001000f0, s3  = 0x00100240, (wrb) a3  <-- 1
       0     2997        M 0x80002dc0 or      a3, a3, s0             #; a3  = 1, s0  = 0, (wrb) a3  <-- 1
       0     2998        M 0x80002dc4 and     a7, a7, a3             #; a7  = 0, a3  = 1, (wrb) a7  <-- 0
       0     2999        M 0x80002dc8 srli    s0, s3, 20             #; s3  = 0x00100240, (wrb) s0  <-- 1
       0     3000        M 0x80002dcc snez    s0, s0                 #; s0  = 1, (wrb) s0  <-- 1
       0     3009        M 0x80002dd0 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     3010        M 0x80002dd4 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     3011        M 0x80002dd8 sltu    a0, a0, a3             #; a0  = 0x00100400, a3  = 0x00120001, (wrb) a0  <-- 1
       0     3012        M 0x80002ddc and     a0, s0, a0             #; s0  = 1, a0  = 1, (wrb) a0  <-- 1
       0     3021        M 0x80002de0 and     a0, a0, a7             #; a0  = 1, a7  = 0, (wrb) a0  <-- 0
       0     3022        M 0x80002de4 srli    s0, a1, 20             #; a1  = 0x00100000, (wrb) s0  <-- 1
       0     3023        M 0x80002de8 snez    s0, s0                 #; s0  = 1, (wrb) s0  <-- 1
       0     3024        M 0x80002dec sltu    s1, s1, a3             #; s1  = 0x00100240, a3  = 0x00120001, (wrb) s1  <-- 1
       0     3033        M 0x80002df0 and     s1, s0, s1             #; s0  = 1, s1  = 1, (wrb) s1  <-- 1
       0     3034        M 0x80002df4 and     a0, s1, a0             #; s1  = 1, a0  = 0, (wrb) a0  <-- 0
       0     3035        M 0x80002df8 srli    s1, a2, 20             #; a2  = 0x001000f0, (wrb) s1  <-- 1
       0     3036        M 0x80002dfc snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
       0     3045        M 0x80002e00 sltu    a3, a2, a3             #; a2  = 0x001000f0, a3  = 0x00120001, (wrb) a3  <-- 1
       0     3046        M 0x80002e04 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     3047        M 0x80002e08 and     a3, a3, a0             #; a3  = 1, a0  = 0, (wrb) a3  <-- 0
       0     3048        M 0x80002e0c slli    a0, a5, 3              #; a5  = 7, (wrb) a0  <-- 56
       0     3057        M 0x80002e10 beqz    a3, pc + 416           #; a3  = 0, taken, goto 0x80002fb0
       0     3080        M 0x80002fb0 li      a7, 0                  #; (wrb) a7  <-- 0
       0     3081        M 0x80002fb4 slli    a6, a4, 3              #; a4  = 6, (wrb) a6  <-- 48
       0     3083        M 0x80002fbc li      t2, 0                  #; (wrb) t2  <-- 0
                         M 0x80002fb8 fcvt.d.w ft3, zero             #; ac1  = 0
       0     3084        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3092        M 0x80002fc0 mul     t0, a7, a5             #; a7  = 0, a5  = 7
       0     3093        M 0x80002fc4 mv      t1, a2                 #; a2  = 0x001000f0, (wrb) t1  <-- 0x001000f0
       0     3094        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100000, (wrb) a3  <-- 0x00100000
       0     3095        M 0x80002fcc mv      s1, t1                 #; t1  = 0x001000f0, (wrb) s1  <-- 0x001000f0
       0     3104        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3107        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3108        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100000], (f:fpu) ft4  <-- 0.0
       0     3109        M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001000f0], (f:lsu) ft5  <-- 3.141
       0     3110        M                                           #; (f:lsu) ft6  <-- 3.141
       0     3117        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
       0     3118        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001000f0, a0  = 56, (wrb) s1  <-- 0x00100128
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 3.141, ft4  = 0.0
       0     3119        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
       0     3121        M                                           #; (f:fpu) ft4  <-- 9.865881
       0     3128        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3131        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100008]
       0     3132        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100128], (f:lsu) ft5  <-- 6.282
       0     3133        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100128, a0  = 56, (wrb) s1  <-- 0x00100160
                         M                                           #; (f:lsu) ft6  <-- 25.128
       0     3134        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 6.282, ft4  = 9.865881
       0     3135        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3137        M                                           #; (f:fpu) ft4  <-- 167.7199770
       0     3138        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100010]
       0     3139        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100160], (f:lsu) ft5  <-- 9.423
       0     3140        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100160, a0  = 56, (wrb) s1  <-- 0x00100198
                         M                                           #; (f:lsu) ft6  <-- 47.115
       0     3141        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 9.423, ft4  = 167.7199770
       0     3142        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3144        M                                           #; (f:fpu) ft4  <-- 611.6846220
       0     3145        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100018]
       0     3146        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100198], (f:lsu) ft5  <-- 12.564
       0     3147        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100198, a0  = 56, (wrb) s1  <-- 0x001001d0
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     3148        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 12.564, ft4  = 611.6846220
       0     3149        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3151        M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3152        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100020]
       0     3153        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft5  <-- 15.705
       0     3154        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001d0, a0  = 56, (wrb) s1  <-- 0x00100208
                         M                                           #; (f:lsu) ft6  <-- 28.269
       0     3155        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 15.705, ft4  = 690.6116700
       0     3156        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3158        M                                           #; (f:fpu) ft4  <-- 1134.5763150
       0     3159        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100028]
       0     3160        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100208], (f:lsu) ft5  <-- 18.846
       0     3161        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100208, a0  = 56, (wrb) s1  <-- 0x00100240
                         M                                           #; (f:lsu) ft6  <-- 50.256
       0     3162        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 18.846, ft4  = 1134.5763150
       0     3163        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3164        M 0x80002ff4 add     a3, t2, t0             #; t2  = 0, t0  = 0, (wrb) a3  <-- 0
       0     3165        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 0, (wrb) a3  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 2081.7008910
       0     3166        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 0, (wrb) a3  <-- 0x00100240
       0     3177        M 0x80003004 addi    t2, t2, 1              #; t2  = 0, (wrb) t2  <-- 1
       0     3178        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x001000f0, (wrb) t1  <-- 0x001000f8
                         M 0x80003000 fsd     ft4, 0(a3)             #; 2081.7008910 ~~> Doub[0x00100240]
       0     3179        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 1, a5  = 7, taken, goto 0x80002fc8
       0     3180        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100000, (wrb) a3  <-- 0x00100000
       0     3181        M 0x80002fcc mv      s1, t1                 #; t1  = 0x001000f8, (wrb) s1  <-- 0x001000f8
       0     3182        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3185        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3186        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100000], (f:fpu) ft4  <-- 0.0
       0     3187        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001000f8], (f:lsu) ft5  <-- 3.141
       0     3188        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001000f8, a0  = 56, (wrb) s1  <-- 0x00100130
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     3189        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 3.141, ft4  = 0.0
       0     3190        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3192        M                                           #; (f:fpu) ft4  <-- 19.7317620
       0     3193        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100008]
       0     3194        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100130], (f:lsu) ft5  <-- 6.282
       0     3195        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100130, a0  = 56, (wrb) s1  <-- 0x00100168
                         M                                           #; (f:lsu) ft6  <-- 28.269
       0     3196        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 6.282, ft4  = 19.7317620
       0     3197        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3199        M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     3200        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100010]
       0     3201        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100168], (f:lsu) ft5  <-- 9.423
       0     3202        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100168, a0  = 56, (wrb) s1  <-- 0x001001a0
                         M                                           #; (f:lsu) ft6  <-- 50.256
       0     3203        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 9.423, ft4  = 197.3176200
       0     3204        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3206        M                                           #; (f:fpu) ft4  <-- 670.8799080
       0     3207        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100018]
       0     3208        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001a0], (f:lsu) ft5  <-- 12.564
       0     3209        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001a0, a0  = 56, (wrb) s1  <-- 0x001001d8
                         M                                           #; (f:lsu) ft6  <-- 9.423
       0     3210        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 12.564, ft4  = 670.8799080
       0     3211        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3213        M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3214        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100020]
       0     3215        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft5  <-- 15.705
       0     3216        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001d8, a0  = 56, (wrb) s1  <-- 0x00100210
                         M                                           #; (f:lsu) ft6  <-- 31.41
       0     3217        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 15.705, ft4  = 789.2704800
       0     3218        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3220        M                                           #; (f:fpu) ft4  <-- 1282.5645300
       0     3221        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100028]
       0     3222        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100210], (f:lsu) ft5  <-- 18.846
       0     3223        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100210, a0  = 56, (wrb) s1  <-- 0x00100248
                         M                                           #; (f:lsu) ft6  <-- 53.397
       0     3224        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 18.846, ft4  = 1282.5645300
       0     3225        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3226        M 0x80002ff4 add     a3, t2, t0             #; t2  = 1, t0  = 0, (wrb) a3  <-- 1
       0     3227        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 1, (wrb) a3  <-- 8
                         M                                           #; (f:fpu) ft4  <-- 2288.8843920
       0     3228        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 8, (wrb) a3  <-- 0x00100248
       0     3230        M 0x80003004 addi    t2, t2, 1              #; t2  = 1, (wrb) t2  <-- 2
       0     3231        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x001000f8, (wrb) t1  <-- 0x00100100
                         M 0x80003000 fsd     ft4, 0(a3)             #; 2288.8843920 ~~> Doub[0x00100248]
       0     3232        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 2, a5  = 7, taken, goto 0x80002fc8
       0     3233        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100000, (wrb) a3  <-- 0x00100000
       0     3234        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100100, (wrb) s1  <-- 0x00100100
       0     3235        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3238        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3239        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100000], (f:fpu) ft4  <-- 0.0
       0     3240        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100100], (f:lsu) ft5  <-- 3.141
       0     3241        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100100, a0  = 56, (wrb) s1  <-- 0x00100138
                         M                                           #; (f:lsu) ft6  <-- 9.423
       0     3242        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 3.141, ft4  = 0.0
       0     3243        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3245        M                                           #; (f:fpu) ft4  <-- 29.5976430
       0     3246        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100008]
       0     3247        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100138], (f:lsu) ft5  <-- 6.282
       0     3248        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100138, a0  = 56, (wrb) s1  <-- 0x00100170
                         M                                           #; (f:lsu) ft6  <-- 31.41
       0     3249        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 6.282, ft4  = 29.5976430
       0     3250        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3252        M                                           #; (f:fpu) ft4  <-- 226.9152630
       0     3253        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100010]
       0     3254        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100170], (f:lsu) ft5  <-- 9.423
       0     3255        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100170, a0  = 56, (wrb) s1  <-- 0x001001a8
                         M                                           #; (f:lsu) ft6  <-- 53.397
       0     3256        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 9.423, ft4  = 226.9152630
       0     3257        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3259        M                                           #; (f:fpu) ft4  <-- 730.0751940
       0     3260        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100018]
       0     3261        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001a8], (f:lsu) ft5  <-- 12.564
       0     3262        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001a8, a0  = 56, (wrb) s1  <-- 0x001001e0
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     3263        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 12.564, ft4  = 730.0751940
       0     3264        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3266        M                                           #; (f:fpu) ft4  <-- 887.9292900
       0     3267        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100020]
       0     3268        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft5  <-- 15.705
       0     3269        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001e0, a0  = 56, (wrb) s1  <-- 0x00100218
                         M                                           #; (f:lsu) ft6  <-- 34.551
       0     3270        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 15.705, ft4  = 887.9292900
       0     3271        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3273        M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3274        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100028]
       0     3275        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100218], (f:lsu) ft5  <-- 18.846
       0     3276        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100218, a0  = 56, (wrb) s1  <-- 0x00100250
                         M                                           #; (f:lsu) ft6  <-- 56.538
       0     3277        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 18.846, ft4  = 1430.5527450
       0     3278        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3279        M 0x80002ff4 add     a3, t2, t0             #; t2  = 2, t0  = 0, (wrb) a3  <-- 2
       0     3280        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 2, (wrb) a3  <-- 16
                         M                                           #; (f:fpu) ft4  <-- 2496.0678930
       0     3281        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 16, (wrb) a3  <-- 0x00100250
       0     3283        M 0x80003004 addi    t2, t2, 1              #; t2  = 2, (wrb) t2  <-- 3
       0     3284        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100100, (wrb) t1  <-- 0x00100108
                         M 0x80003000 fsd     ft4, 0(a3)             #; 2496.0678930 ~~> Doub[0x00100250]
       0     3285        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 3, a5  = 7, taken, goto 0x80002fc8
       0     3286        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100000, (wrb) a3  <-- 0x00100000
       0     3287        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100108, (wrb) s1  <-- 0x00100108
       0     3288        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3291        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3292        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100000], (f:fpu) ft4  <-- 0.0
       0     3293        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100108], (f:lsu) ft5  <-- 3.141
       0     3294        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100108, a0  = 56, (wrb) s1  <-- 0x00100140
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     3295        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 3.141, ft4  = 0.0
       0     3296        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3298        M                                           #; (f:fpu) ft4  <-- 39.4635240
       0     3299        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100008]
       0     3300        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100140], (f:lsu) ft5  <-- 6.282
       0     3301        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100140, a0  = 56, (wrb) s1  <-- 0x00100178
                         M                                           #; (f:lsu) ft6  <-- 34.551
       0     3302        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 6.282, ft4  = 39.4635240
       0     3303        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3305        M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     3306        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100010]
       0     3307        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100178], (f:lsu) ft5  <-- 9.423
       0     3308        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100178, a0  = 56, (wrb) s1  <-- 0x001001b0
                         M                                           #; (f:lsu) ft6  <-- 56.538
       0     3309        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 9.423, ft4  = 256.5129060
       0     3310        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3312        M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3313        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100018]
       0     3314        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001b0], (f:lsu) ft5  <-- 12.564
       0     3315        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001b0, a0  = 56, (wrb) s1  <-- 0x001001e8
                         M                                           #; (f:lsu) ft6  <-- 15.705
       0     3316        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 12.564, ft4  = 789.2704800
       0     3317        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3319        M                                           #; (f:fpu) ft4  <-- 986.5881000
       0     3320        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100020]
       0     3321        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft5  <-- 15.705
       0     3322        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001e8, a0  = 56, (wrb) s1  <-- 0x00100220
                         M                                           #; (f:lsu) ft6  <-- 37.692
       0     3323        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 15.705, ft4  = 986.5881000
       0     3324        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3326        M                                           #; (f:fpu) ft4  <-- 1578.5409600
       0     3327        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100028]
       0     3328        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100220], (f:lsu) ft5  <-- 18.846
       0     3329        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100220, a0  = 56, (wrb) s1  <-- 0x00100258
                         M                                           #; (f:lsu) ft6  <-- 59.679
       0     3330        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 18.846, ft4  = 1578.5409600
       0     3331        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3332        M 0x80002ff4 add     a3, t2, t0             #; t2  = 3, t0  = 0, (wrb) a3  <-- 3
       0     3333        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 3, (wrb) a3  <-- 24
                         M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     3334        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 24, (wrb) a3  <-- 0x00100258
       0     3336        M 0x80003004 addi    t2, t2, 1              #; t2  = 3, (wrb) t2  <-- 4
       0     3337        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100108, (wrb) t1  <-- 0x00100110
                         M 0x80003000 fsd     ft4, 0(a3)             #; 2703.2513940 ~~> Doub[0x00100258]
       0     3338        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 4, a5  = 7, taken, goto 0x80002fc8
       0     3339        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100000, (wrb) a3  <-- 0x00100000
       0     3340        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100110, (wrb) s1  <-- 0x00100110
       0     3341        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3344        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3345        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100000], (f:fpu) ft4  <-- 0.0
       0     3346        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100110], (f:lsu) ft5  <-- 3.141
       0     3347        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100110, a0  = 56, (wrb) s1  <-- 0x00100148
                         M                                           #; (f:lsu) ft6  <-- 15.705
       0     3348        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 3.141, ft4  = 0.0
       0     3349        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3351        M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     3352        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100008]
       0     3353        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100148], (f:lsu) ft5  <-- 6.282
       0     3354        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100148, a0  = 56, (wrb) s1  <-- 0x00100180
                         M                                           #; (f:lsu) ft6  <-- 37.692
       0     3355        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 6.282, ft4  = 49.3294050
       0     3356        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3358        M                                           #; (f:fpu) ft4  <-- 286.1105490
       0     3359        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100010]
       0     3360        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100180], (f:lsu) ft5  <-- 9.423
       0     3361        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100180, a0  = 56, (wrb) s1  <-- 0x001001b8
                         M                                           #; (f:lsu) ft6  <-- 59.679
       0     3362        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 9.423, ft4  = 286.1105490
       0     3363        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3365        M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3366        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100018]
       0     3367        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001b8], (f:lsu) ft5  <-- 12.564
       0     3368        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001b8, a0  = 56, (wrb) s1  <-- 0x001001f0
                         M                                           #; (f:lsu) ft6  <-- 18.846
       0     3369        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 12.564, ft4  = 848.4657660
       0     3370        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3372        M                                           #; (f:fpu) ft4  <-- 1085.2469100
       0     3373        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100020]
       0     3374        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft5  <-- 15.705
       0     3375        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001f0, a0  = 56, (wrb) s1  <-- 0x00100228
                         M                                           #; (f:lsu) ft6  <-- 40.833
       0     3376        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 15.705, ft4  = 1085.2469100
       0     3377        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3379        M                                           #; (f:fpu) ft4  <-- 1726.5291750
       0     3380        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100028]
       0     3381        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100228], (f:lsu) ft5  <-- 18.846
       0     3382        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100228, a0  = 56, (wrb) s1  <-- 0x00100260
                         M                                           #; (f:lsu) ft6  <-- 62.82
       0     3383        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 18.846, ft4  = 1726.5291750
       0     3384        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3385        M 0x80002ff4 add     a3, t2, t0             #; t2  = 4, t0  = 0, (wrb) a3  <-- 4
       0     3386        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 4, (wrb) a3  <-- 32
                         M                                           #; (f:fpu) ft4  <-- 2910.4348950
       0     3387        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 32, (wrb) a3  <-- 0x00100260
       0     3389        M 0x80003004 addi    t2, t2, 1              #; t2  = 4, (wrb) t2  <-- 5
       0     3390        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100110, (wrb) t1  <-- 0x00100118
                         M 0x80003000 fsd     ft4, 0(a3)             #; 2910.4348950 ~~> Doub[0x00100260]
       0     3391        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 5, a5  = 7, taken, goto 0x80002fc8
       0     3392        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100000, (wrb) a3  <-- 0x00100000
       0     3393        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100118, (wrb) s1  <-- 0x00100118
       0     3394        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3397        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3398        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100000], (f:fpu) ft4  <-- 0.0
       0     3399        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100118], (f:lsu) ft5  <-- 3.141
       0     3400        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100118, a0  = 56, (wrb) s1  <-- 0x00100150
                         M                                           #; (f:lsu) ft6  <-- 18.846
       0     3401        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 3.141, ft4  = 0.0
       0     3402        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3404        M                                           #; (f:fpu) ft4  <-- 59.1952860
       0     3405        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100008]
       0     3406        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100150], (f:lsu) ft5  <-- 6.282
       0     3407        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100150, a0  = 56, (wrb) s1  <-- 0x00100188
                         M                                           #; (f:lsu) ft6  <-- 40.833
       0     3408        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 6.282, ft4  = 59.1952860
       0     3409        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3411        M                                           #; (f:fpu) ft4  <-- 315.7081920
       0     3412        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100010]
       0     3413        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100188], (f:lsu) ft5  <-- 9.423
       0     3414        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100188, a0  = 56, (wrb) s1  <-- 0x001001c0
                         M                                           #; (f:lsu) ft6  <-- 62.82
       0     3415        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 9.423, ft4  = 315.7081920
       0     3416        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3418        M                                           #; (f:fpu) ft4  <-- 907.6610520
       0     3419        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100018]
       0     3420        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001c0], (f:lsu) ft5  <-- 12.564
       0     3421        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001c0, a0  = 56, (wrb) s1  <-- 0x001001f8
                         M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     3422        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 12.564, ft4  = 907.6610520
       0     3423        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3425        M                                           #; (f:fpu) ft4  <-- 1183.9057200
       0     3426        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100020]
       0     3427        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft5  <-- 15.705
       0     3428        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001f8, a0  = 56, (wrb) s1  <-- 0x00100230
                         M                                           #; (f:lsu) ft6  <-- 43.9740000
       0     3429        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 15.705, ft4  = 1183.9057200
       0     3430        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3432        M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     3433        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100028]
       0     3434        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100230], (f:lsu) ft5  <-- 18.846
       0     3435        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100230, a0  = 56, (wrb) s1  <-- 0x00100268
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     3436        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 18.846, ft4  = 1874.5173900
       0     3437        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3438        M 0x80002ff4 add     a3, t2, t0             #; t2  = 5, t0  = 0, (wrb) a3  <-- 5
       0     3439        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 5, (wrb) a3  <-- 40
                         M                                           #; (f:fpu) ft4  <-- 1933.7126760
       0     3440        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 40, (wrb) a3  <-- 0x00100268
       0     3442        M 0x80003004 addi    t2, t2, 1              #; t2  = 5, (wrb) t2  <-- 6
       0     3443        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100118, (wrb) t1  <-- 0x00100120
                         M 0x80003000 fsd     ft4, 0(a3)             #; 1933.7126760 ~~> Doub[0x00100268]
       0     3444        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 6, a5  = 7, taken, goto 0x80002fc8
       0     3445        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100000, (wrb) a3  <-- 0x00100000
       0     3446        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100120, (wrb) s1  <-- 0x00100120
       0     3447        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3450        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3451        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100000], (f:fpu) ft4  <-- 0.0
       0     3452        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100120], (f:lsu) ft5  <-- 3.141
       0     3453        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100120, a0  = 56, (wrb) s1  <-- 0x00100158
                         M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     3454        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 3.141, ft4  = 0.0
       0     3455        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3457        M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3458        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100008]
       0     3459        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100158], (f:lsu) ft5  <-- 6.282
       0     3460        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100158, a0  = 56, (wrb) s1  <-- 0x00100190
                         M                                           #; (f:lsu) ft6  <-- 43.9740000
       0     3461        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 6.282, ft4  = 69.0611670
       0     3462        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3464        M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     3465        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100010]
       0     3466        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100190], (f:lsu) ft5  <-- 9.423
       0     3467        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100190, a0  = 56, (wrb) s1  <-- 0x001001c8
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     3468        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 9.423, ft4  = 345.3058350
       0     3469        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3471        M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     3472        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100018]
       0     3473        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001c8], (f:lsu) ft5  <-- 12.564
       0     3474        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001c8, a0  = 56, (wrb) s1  <-- 0x00100200
                         M                                           #; (f:lsu) ft6  <-- 25.128
       0     3475        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 12.564, ft4  = 374.9034780
       0     3476        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3478        M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3479        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100020]
       0     3480        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100200], (f:lsu) ft5  <-- 15.705
       0     3481        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100200, a0  = 56, (wrb) s1  <-- 0x00100238
                         M                                           #; (f:lsu) ft6  <-- 47.115
       0     3482        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 15.705, ft4  = 690.6116700
       0     3483        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3485        M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3486        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100028]
       0     3487        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100238], (f:lsu) ft5  <-- 18.846
       0     3488        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100238, a0  = 56, (wrb) s1  <-- 0x00100270
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     3489        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 18.846, ft4  = 1430.5527450
       0     3490        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3491        M 0x80002ff4 add     a3, t2, t0             #; t2  = 6, t0  = 0, (wrb) a3  <-- 6
       0     3492        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 6, (wrb) a3  <-- 48
                         M                                           #; (f:fpu) ft4  <-- 1548.9433170
       0     3493        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 48, (wrb) a3  <-- 0x00100270
       0     3495        M 0x80003004 addi    t2, t2, 1              #; t2  = 6, (wrb) t2  <-- 7
       0     3496        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100120, (wrb) t1  <-- 0x00100128
                         M 0x80003000 fsd     ft4, 0(a3)             #; 1548.9433170 ~~> Doub[0x00100270]
       0     3497        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 7, a5  = 7, not taken
       0     3509        M 0x80003010 addi    a7, a7, 1              #; a7  = 0, (wrb) a7  <-- 1
       0     3510        M 0x80003014 add     a1, a1, a6             #; a1  = 0x00100000, a6  = 48, (wrb) a1  <-- 0x00100030
       0     3511        M 0x80003018 bne     a7, s2, pc - 92        #; a7  = 1, s2  = 5, taken, goto 0x80002fbc
       0     3512        M 0x80002fbc li      t2, 0                  #; (wrb) t2  <-- 0
       0     3513        M 0x80002fc0 mul     t0, a7, a5             #; a7  = 1, a5  = 7
       0     3514        M 0x80002fc4 mv      t1, a2                 #; a2  = 0x001000f0, (wrb) t1  <-- 0x001000f0
       0     3515        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100030, (wrb) a3  <-- 0x00100030
       0     3516        M 0x80002fcc mv      s1, t1                 #; t1  = 0x001000f0, (wrb) s1  <-- 0x001000f0
       0     3517        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3518        M                                           #; (acc) tp  <-- 0x22318253
       0     3520        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3521        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 0.0
       0     3522        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001000f0], (f:lsu) ft5  <-- 21.9870000
       0     3523        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001000f0, a0  = 56, (wrb) s1  <-- 0x00100128
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     3524        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 21.9870000, ft4  = 0.0
       0     3525        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3527        M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3528        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100038]
       0     3529        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100128], (f:lsu) ft5  <-- 25.128
       0     3530        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100128, a0  = 56, (wrb) s1  <-- 0x00100160
                         M                                           #; (f:lsu) ft6  <-- 25.128
       0     3531        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 25.128, ft4  = 69.0611670
       0     3532        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3534        M                                           #; (f:fpu) ft4  <-- 700.4775510
       0     3535        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100040]
       0     3536        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100160], (f:lsu) ft5  <-- 28.269
       0     3537        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100160, a0  = 56, (wrb) s1  <-- 0x00100198
                         M                                           #; (f:lsu) ft6  <-- 47.115
       0     3538        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 28.269, ft4  = 700.4775510
       0     3539        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3541        M                                           #; (f:fpu) ft4  <-- 2032.3714860
       0     3542        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100048]
       0     3543        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100198], (f:lsu) ft5  <-- 31.41
       0     3544        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100198, a0  = 56, (wrb) s1  <-- 0x001001d0
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     3545        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 31.41, ft4  = 2032.3714860
       0     3546        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3548        M                                           #; (f:fpu) ft4  <-- 2229.6891060
       0     3549        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100050]
       0     3550        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft5  <-- 34.551
       0     3551        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001d0, a0  = 56, (wrb) s1  <-- 0x00100208
                         M                                           #; (f:lsu) ft6  <-- 28.269
       0     3552        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 34.551, ft4  = 2229.6891060
       0     3553        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3555        M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     3556        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100058]
       0     3557        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100208], (f:lsu) ft5  <-- 37.692
       0     3558        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100208, a0  = 56, (wrb) s1  <-- 0x00100240
                         M                                           #; (f:lsu) ft6  <-- 50.256
       0     3559        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 37.692, ft4  = 3206.4113250
       0     3560        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3561        M 0x80002ff4 add     a3, t2, t0             #; t2  = 0, t0  = 7, (wrb) a3  <-- 7
       0     3562        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 7, (wrb) a3  <-- 56
                         M                                           #; (f:fpu) ft4  <-- 5100.6604770
       0     3563        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 56, (wrb) a3  <-- 0x00100278
       0     3565        M 0x80003004 addi    t2, t2, 1              #; t2  = 0, (wrb) t2  <-- 1
       0     3566        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x001000f0, (wrb) t1  <-- 0x001000f8
                         M 0x80003000 fsd     ft4, 0(a3)             #; 5100.6604770 ~~> Doub[0x00100278]
       0     3567        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 1, a5  = 7, taken, goto 0x80002fc8
       0     3568        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100030, (wrb) a3  <-- 0x00100030
       0     3569        M 0x80002fcc mv      s1, t1                 #; t1  = 0x001000f8, (wrb) s1  <-- 0x001000f8
       0     3570        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3573        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3574        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 0.0
       0     3575        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001000f8], (f:lsu) ft5  <-- 21.9870000
       0     3576        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001000f8, a0  = 56, (wrb) s1  <-- 0x00100130
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     3577        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 21.9870000, ft4  = 0.0
       0     3578        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3580        M                                           #; (f:fpu) ft4  <-- 138.1223340
       0     3581        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100038]
       0     3582        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100130], (f:lsu) ft5  <-- 25.128
       0     3583        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100130, a0  = 56, (wrb) s1  <-- 0x00100168
                         M                                           #; (f:lsu) ft6  <-- 28.269
       0     3584        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 25.128, ft4  = 138.1223340
       0     3585        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3587        M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3588        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100040]
       0     3589        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100168], (f:lsu) ft5  <-- 28.269
       0     3590        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100168, a0  = 56, (wrb) s1  <-- 0x001001a0
                         M                                           #; (f:lsu) ft6  <-- 50.256
       0     3591        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 28.269, ft4  = 848.4657660
       0     3592        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3594        M                                           #; (f:fpu) ft4  <-- 2269.1526300
       0     3595        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100048]
       0     3596        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001a0], (f:lsu) ft5  <-- 31.41
       0     3597        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001a0, a0  = 56, (wrb) s1  <-- 0x001001d8
                         M                                           #; (f:lsu) ft6  <-- 9.423
       0     3598        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 31.41, ft4  = 2269.1526300
       0     3599        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3601        M                                           #; (f:fpu) ft4  <-- 2565.1290600
       0     3602        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100050]
       0     3603        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft5  <-- 34.551
       0     3604        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001d8, a0  = 56, (wrb) s1  <-- 0x00100210
                         M                                           #; (f:lsu) ft6  <-- 31.41
       0     3605        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 34.551, ft4  = 2565.1290600
       0     3606        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3608        M                                           #; (f:fpu) ft4  <-- 3650.3759700
       0     3609        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100058]
       0     3610        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100210], (f:lsu) ft5  <-- 37.692
       0     3611        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100210, a0  = 56, (wrb) s1  <-- 0x00100248
                         M                                           #; (f:lsu) ft6  <-- 53.397
       0     3612        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 37.692, ft4  = 3650.3759700
       0     3613        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3614        M 0x80002ff4 add     a3, t2, t0             #; t2  = 1, t0  = 7, (wrb) a3  <-- 8
       0     3615        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 8, (wrb) a3  <-- 64
                         M                                           #; (f:fpu) ft4  <-- 5663.0156940
       0     3616        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 64, (wrb) a3  <-- 0x00100280
       0     3618        M 0x80003004 addi    t2, t2, 1              #; t2  = 1, (wrb) t2  <-- 2
       0     3619        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x001000f8, (wrb) t1  <-- 0x00100100
                         M 0x80003000 fsd     ft4, 0(a3)             #; 5663.0156940 ~~> Doub[0x00100280]
       0     3620        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 2, a5  = 7, taken, goto 0x80002fc8
       0     3621        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100030, (wrb) a3  <-- 0x00100030
       0     3622        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100100, (wrb) s1  <-- 0x00100100
       0     3623        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3626        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3627        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 0.0
       0     3628        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100100], (f:lsu) ft5  <-- 21.9870000
       0     3629        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100100, a0  = 56, (wrb) s1  <-- 0x00100138
                         M                                           #; (f:lsu) ft6  <-- 9.423
       0     3630        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 21.9870000, ft4  = 0.0
       0     3631        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3633        M                                           #; (f:fpu) ft4  <-- 207.1835010
       0     3634        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100038]
       0     3635        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100138], (f:lsu) ft5  <-- 25.128
       0     3636        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100138, a0  = 56, (wrb) s1  <-- 0x00100170
                         M                                           #; (f:lsu) ft6  <-- 31.41
       0     3637        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 25.128, ft4  = 207.1835010
       0     3638        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3640        M                                           #; (f:fpu) ft4  <-- 996.4539810
       0     3641        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100040]
       0     3642        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100170], (f:lsu) ft5  <-- 28.269
       0     3643        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100170, a0  = 56, (wrb) s1  <-- 0x001001a8
                         M                                           #; (f:lsu) ft6  <-- 53.397
       0     3644        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 28.269, ft4  = 996.4539810
       0     3645        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3647        M                                           #; (f:fpu) ft4  <-- 2505.9337740
       0     3648        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100048]
       0     3649        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001a8], (f:lsu) ft5  <-- 31.41
       0     3650        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001a8, a0  = 56, (wrb) s1  <-- 0x001001e0
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     3651        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 31.41, ft4  = 2505.9337740
       0     3652        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3654        M                                           #; (f:fpu) ft4  <-- 2900.5690140
       0     3655        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100050]
       0     3656        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft5  <-- 34.551
       0     3657        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001e0, a0  = 56, (wrb) s1  <-- 0x00100218
                         M                                           #; (f:lsu) ft6  <-- 34.551
       0     3658        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 34.551, ft4  = 2900.5690140
       0     3659        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3661        M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     3662        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100058]
       0     3663        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100218], (f:lsu) ft5  <-- 37.692
       0     3664        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100218, a0  = 56, (wrb) s1  <-- 0x00100250
                         M                                           #; (f:lsu) ft6  <-- 56.538
       0     3665        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 37.692, ft4  = 4094.3406150
       0     3666        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3667        M 0x80002ff4 add     a3, t2, t0             #; t2  = 2, t0  = 7, (wrb) a3  <-- 9
       0     3668        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 9, (wrb) a3  <-- 72
                         M                                           #; (f:fpu) ft4  <-- 6225.3709110
       0     3669        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 72, (wrb) a3  <-- 0x00100288
       0     3671        M 0x80003004 addi    t2, t2, 1              #; t2  = 2, (wrb) t2  <-- 3
       0     3672        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100100, (wrb) t1  <-- 0x00100108
                         M 0x80003000 fsd     ft4, 0(a3)             #; 6225.3709110 ~~> Doub[0x00100288]
       0     3673        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 3, a5  = 7, taken, goto 0x80002fc8
       0     3674        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100030, (wrb) a3  <-- 0x00100030
       0     3675        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100108, (wrb) s1  <-- 0x00100108
       0     3676        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3679        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3680        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 0.0
       0     3681        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100108], (f:lsu) ft5  <-- 21.9870000
       0     3682        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100108, a0  = 56, (wrb) s1  <-- 0x00100140
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     3683        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 21.9870000, ft4  = 0.0
       0     3684        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3686        M                                           #; (f:fpu) ft4  <-- 276.2446680
       0     3687        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100038]
       0     3688        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100140], (f:lsu) ft5  <-- 25.128
       0     3689        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100140, a0  = 56, (wrb) s1  <-- 0x00100178
                         M                                           #; (f:lsu) ft6  <-- 34.551
       0     3690        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 25.128, ft4  = 276.2446680
       0     3691        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3693        M                                           #; (f:fpu) ft4  <-- 1144.4421960
       0     3694        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100040]
       0     3695        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100178], (f:lsu) ft5  <-- 28.269
       0     3696        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100178, a0  = 56, (wrb) s1  <-- 0x001001b0
                         M                                           #; (f:lsu) ft6  <-- 56.538
       0     3697        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 28.269, ft4  = 1144.4421960
       0     3698        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3700        M                                           #; (f:fpu) ft4  <-- 2742.7149180
       0     3701        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100048]
       0     3702        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001b0], (f:lsu) ft5  <-- 31.41
       0     3703        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001b0, a0  = 56, (wrb) s1  <-- 0x001001e8
                         M                                           #; (f:lsu) ft6  <-- 15.705
       0     3704        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 31.41, ft4  = 2742.7149180
       0     3705        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3707        M                                           #; (f:fpu) ft4  <-- 3236.0089680
       0     3708        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100050]
       0     3709        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft5  <-- 34.551
       0     3710        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001e8, a0  = 56, (wrb) s1  <-- 0x00100220
                         M                                           #; (f:lsu) ft6  <-- 37.692
       0     3711        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 34.551, ft4  = 3236.0089680
       0     3712        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3714        M                                           #; (f:fpu) ft4  <-- 4538.3052600
       0     3715        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100058]
       0     3716        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100220], (f:lsu) ft5  <-- 37.692
       0     3717        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100220, a0  = 56, (wrb) s1  <-- 0x00100258
                         M                                           #; (f:lsu) ft6  <-- 59.679
       0     3718        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 37.692, ft4  = 4538.3052600
       0     3719        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3720        M 0x80002ff4 add     a3, t2, t0             #; t2  = 3, t0  = 7, (wrb) a3  <-- 10
       0     3721        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 10, (wrb) a3  <-- 80
                         M                                           #; (f:fpu) ft4  <-- 6787.7261280
       0     3722        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 80, (wrb) a3  <-- 0x00100290
       0     3724        M 0x80003004 addi    t2, t2, 1              #; t2  = 3, (wrb) t2  <-- 4
       0     3725        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100108, (wrb) t1  <-- 0x00100110
                         M 0x80003000 fsd     ft4, 0(a3)             #; 6787.7261280 ~~> Doub[0x00100290]
       0     3726        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 4, a5  = 7, taken, goto 0x80002fc8
       0     3727        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100030, (wrb) a3  <-- 0x00100030
       0     3728        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100110, (wrb) s1  <-- 0x00100110
       0     3729        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3732        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3733        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 0.0
       0     3734        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100110], (f:lsu) ft5  <-- 21.9870000
       0     3735        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100110, a0  = 56, (wrb) s1  <-- 0x00100148
                         M                                           #; (f:lsu) ft6  <-- 15.705
       0     3736        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 21.9870000, ft4  = 0.0
       0     3737        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3739        M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     3740        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100038]
       0     3741        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100148], (f:lsu) ft5  <-- 25.128
       0     3742        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100148, a0  = 56, (wrb) s1  <-- 0x00100180
                         M                                           #; (f:lsu) ft6  <-- 37.692
       0     3743        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 25.128, ft4  = 345.3058350
       0     3744        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3746        M                                           #; (f:fpu) ft4  <-- 1292.4304110
       0     3747        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100040]
       0     3748        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100180], (f:lsu) ft5  <-- 28.269
       0     3749        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100180, a0  = 56, (wrb) s1  <-- 0x001001b8
                         M                                           #; (f:lsu) ft6  <-- 59.679
       0     3750        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 28.269, ft4  = 1292.4304110
       0     3751        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3753        M                                           #; (f:fpu) ft4  <-- 2979.4960620
       0     3754        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100048]
       0     3755        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001b8], (f:lsu) ft5  <-- 31.41
       0     3756        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001b8, a0  = 56, (wrb) s1  <-- 0x001001f0
                         M                                           #; (f:lsu) ft6  <-- 18.846
       0     3757        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 31.41, ft4  = 2979.4960620
       0     3758        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3760        M                                           #; (f:fpu) ft4  <-- 3571.4489220
       0     3761        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100050]
       0     3762        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft5  <-- 34.551
       0     3763        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001f0, a0  = 56, (wrb) s1  <-- 0x00100228
                         M                                           #; (f:lsu) ft6  <-- 40.833
       0     3764        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 34.551, ft4  = 3571.4489220
       0     3765        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3767        M                                           #; (f:fpu) ft4  <-- 4982.2699050
       0     3768        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100058]
       0     3769        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100228], (f:lsu) ft5  <-- 37.692
       0     3770        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100228, a0  = 56, (wrb) s1  <-- 0x00100260
                         M                                           #; (f:lsu) ft6  <-- 62.82
       0     3771        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 37.692, ft4  = 4982.2699050
       0     3772        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3773        M 0x80002ff4 add     a3, t2, t0             #; t2  = 4, t0  = 7, (wrb) a3  <-- 11
       0     3774        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 11, (wrb) a3  <-- 88
                         M                                           #; (f:fpu) ft4  <-- 7350.0813450
       0     3775        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 88, (wrb) a3  <-- 0x00100298
       0     3777        M 0x80003004 addi    t2, t2, 1              #; t2  = 4, (wrb) t2  <-- 5
       0     3778        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100110, (wrb) t1  <-- 0x00100118
                         M 0x80003000 fsd     ft4, 0(a3)             #; 7350.0813450 ~~> Doub[0x00100298]
       0     3779        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 5, a5  = 7, taken, goto 0x80002fc8
       0     3780        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100030, (wrb) a3  <-- 0x00100030
       0     3781        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100118, (wrb) s1  <-- 0x00100118
       0     3782        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3785        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3786        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 0.0
       0     3787        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100118], (f:lsu) ft5  <-- 21.9870000
       0     3788        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100118, a0  = 56, (wrb) s1  <-- 0x00100150
                         M                                           #; (f:lsu) ft6  <-- 18.846
       0     3789        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 21.9870000, ft4  = 0.0
       0     3790        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3792        M                                           #; (f:fpu) ft4  <-- 414.3670020
       0     3793        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100038]
       0     3794        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100150], (f:lsu) ft5  <-- 25.128
       0     3795        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100150, a0  = 56, (wrb) s1  <-- 0x00100188
                         M                                           #; (f:lsu) ft6  <-- 40.833
       0     3796        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 25.128, ft4  = 414.3670020
       0     3797        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3799        M                                           #; (f:fpu) ft4  <-- 1440.4186260
       0     3800        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100040]
       0     3801        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100188], (f:lsu) ft5  <-- 28.269
       0     3802        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100188, a0  = 56, (wrb) s1  <-- 0x001001c0
                         M                                           #; (f:lsu) ft6  <-- 62.82
       0     3803        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 28.269, ft4  = 1440.4186260
       0     3804        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3806        M                                           #; (f:fpu) ft4  <-- 3216.2772060
       0     3807        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100048]
       0     3808        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001c0], (f:lsu) ft5  <-- 31.41
       0     3809        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001c0, a0  = 56, (wrb) s1  <-- 0x001001f8
                         M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     3810        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 31.41, ft4  = 3216.2772060
       0     3811        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3813        M                                           #; (f:fpu) ft4  <-- 3906.8888760
       0     3814        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100050]
       0     3815        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft5  <-- 34.551
       0     3816        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001f8, a0  = 56, (wrb) s1  <-- 0x00100230
                         M                                           #; (f:lsu) ft6  <-- 43.9740000
       0     3817        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 34.551, ft4  = 3906.8888760
       0     3818        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3820        M                                           #; (f:fpu) ft4  <-- 5426.2345500
       0     3821        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100058]
       0     3822        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100230], (f:lsu) ft5  <-- 37.692
       0     3823        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100230, a0  = 56, (wrb) s1  <-- 0x00100268
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     3824        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 37.692, ft4  = 5426.2345500
       0     3825        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3826        M 0x80002ff4 add     a3, t2, t0             #; t2  = 5, t0  = 7, (wrb) a3  <-- 12
       0     3827        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 12, (wrb) a3  <-- 96
                         M                                           #; (f:fpu) ft4  <-- 5544.6251220
       0     3828        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 96, (wrb) a3  <-- 0x001002a0
       0     3830        M 0x80003004 addi    t2, t2, 1              #; t2  = 5, (wrb) t2  <-- 6
       0     3831        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100118, (wrb) t1  <-- 0x00100120
                         M 0x80003000 fsd     ft4, 0(a3)             #; 5544.6251220 ~~> Doub[0x001002a0]
       0     3832        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 6, a5  = 7, taken, goto 0x80002fc8
       0     3833        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100030, (wrb) a3  <-- 0x00100030
       0     3834        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100120, (wrb) s1  <-- 0x00100120
       0     3835        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3838        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3839        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 0.0
       0     3840        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100120], (f:lsu) ft5  <-- 21.9870000
       0     3841        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100120, a0  = 56, (wrb) s1  <-- 0x00100158
                         M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     3842        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 21.9870000, ft4  = 0.0
       0     3843        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3845        M                                           #; (f:fpu) ft4  <-- 483.4281690
       0     3846        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100038]
       0     3847        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100158], (f:lsu) ft5  <-- 25.128
       0     3848        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100158, a0  = 56, (wrb) s1  <-- 0x00100190
                         M                                           #; (f:lsu) ft6  <-- 43.9740000
       0     3849        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 25.128, ft4  = 483.4281690
       0     3850        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3852        M                                           #; (f:fpu) ft4  <-- 1588.4068410
       0     3853        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100040]
       0     3854        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100190], (f:lsu) ft5  <-- 28.269
       0     3855        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100190, a0  = 56, (wrb) s1  <-- 0x001001c8
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     3856        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 28.269, ft4  = 1588.4068410
       0     3857        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3859        M                                           #; (f:fpu) ft4  <-- 1677.1997700
       0     3860        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100048]
       0     3861        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001c8], (f:lsu) ft5  <-- 31.41
       0     3862        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001c8, a0  = 56, (wrb) s1  <-- 0x00100200
                         M                                           #; (f:lsu) ft6  <-- 25.128
       0     3863        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 31.41, ft4  = 1677.1997700
       0     3864        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3866        M                                           #; (f:fpu) ft4  <-- 2466.4702500
       0     3867        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100050]
       0     3868        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100200], (f:lsu) ft5  <-- 34.551
       0     3869        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100200, a0  = 56, (wrb) s1  <-- 0x00100238
                         M                                           #; (f:lsu) ft6  <-- 47.115
       0     3870        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 34.551, ft4  = 2466.4702500
       0     3871        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3873        M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     3874        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100058]
       0     3875        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100238], (f:lsu) ft5  <-- 37.692
       0     3876        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100238, a0  = 56, (wrb) s1  <-- 0x00100270
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     3877        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 37.692, ft4  = 4094.3406150
       0     3878        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3879        M 0x80002ff4 add     a3, t2, t0             #; t2  = 6, t0  = 7, (wrb) a3  <-- 13
       0     3880        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 13, (wrb) a3  <-- 104
                         M                                           #; (f:fpu) ft4  <-- 4331.1217590
       0     3881        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 104, (wrb) a3  <-- 0x001002a8
       0     3883        M 0x80003004 addi    t2, t2, 1              #; t2  = 6, (wrb) t2  <-- 7
       0     3884        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100120, (wrb) t1  <-- 0x00100128
                         M 0x80003000 fsd     ft4, 0(a3)             #; 4331.1217590 ~~> Doub[0x001002a8]
       0     3885        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 7, a5  = 7, not taken
       0     3886        M 0x80003010 addi    a7, a7, 1              #; a7  = 1, (wrb) a7  <-- 2
       0     3887        M 0x80003014 add     a1, a1, a6             #; a1  = 0x00100030, a6  = 48, (wrb) a1  <-- 0x00100060
       0     3888        M 0x80003018 bne     a7, s2, pc - 92        #; a7  = 2, s2  = 5, taken, goto 0x80002fbc
       0     3889        M 0x80002fbc li      t2, 0                  #; (wrb) t2  <-- 0
       0     3890        M 0x80002fc0 mul     t0, a7, a5             #; a7  = 2, a5  = 7
       0     3891        M 0x80002fc4 mv      t1, a2                 #; a2  = 0x001000f0, (wrb) t1  <-- 0x001000f0
       0     3892        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100060, (wrb) a3  <-- 0x00100060
       0     3893        M 0x80002fcc mv      s1, t1                 #; t1  = 0x001000f0, (wrb) s1  <-- 0x001000f0
       0     3894        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3895        M                                           #; (acc) tp  <-- 0x22318253
       0     3897        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3898        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100060], (f:fpu) ft4  <-- 0.0
       0     3899        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001000f0], (f:lsu) ft5  <-- 40.833
       0     3900        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001000f0, a0  = 56, (wrb) s1  <-- 0x00100128
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     3901        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 40.833, ft4  = 0.0
       0     3902        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3904        M                                           #; (f:fpu) ft4  <-- 128.2564530
       0     3905        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100068]
       0     3906        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100128], (f:lsu) ft5  <-- 43.9740000
       0     3907        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100128, a0  = 56, (wrb) s1  <-- 0x00100160
                         M                                           #; (f:lsu) ft6  <-- 25.128
       0     3908        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 43.9740000, ft4  = 128.2564530
       0     3909        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3911        M                                           #; (f:fpu) ft4  <-- 1233.2351250
       0     3912        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100070]
       0     3913        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100160], (f:lsu) ft5  <-- 47.115
       0     3914        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100160, a0  = 56, (wrb) s1  <-- 0x00100198
                         M                                           #; (f:lsu) ft6  <-- 47.115
       0     3915        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 47.115, ft4  = 1233.2351250
       0     3916        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3918        M                                           #; (f:fpu) ft4  <-- 3453.0583500
       0     3919        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100078]
       0     3920        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100198], (f:lsu) ft5  <-- 50.256
       0     3921        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100198, a0  = 56, (wrb) s1  <-- 0x001001d0
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     3922        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 50.256, ft4  = 3453.0583500
       0     3923        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3925        M                                           #; (f:fpu) ft4  <-- 3768.7665420
       0     3926        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100080]
       0     3927        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft5  <-- 53.397
       0     3928        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001d0, a0  = 56, (wrb) s1  <-- 0x00100208
                         M                                           #; (f:lsu) ft6  <-- 28.269
       0     3929        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 53.397, ft4  = 3768.7665420
       0     3930        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3932        M                                           #; (f:fpu) ft4  <-- 5278.2463350
       0     3933        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100088]
       0     3934        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100208], (f:lsu) ft5  <-- 56.538
       0     3935        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100208, a0  = 56, (wrb) s1  <-- 0x00100240
                         M                                           #; (f:lsu) ft6  <-- 50.256
       0     3936        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 56.538, ft4  = 5278.2463350
       0     3937        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3938        M 0x80002ff4 add     a3, t2, t0             #; t2  = 0, t0  = 14, (wrb) a3  <-- 14
       0     3939        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 14, (wrb) a3  <-- 112
                         M                                           #; (f:fpu) ft4  <-- 8119.6200630
       0     3940        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 112, (wrb) a3  <-- 0x001002b0
       0     3942        M 0x80003004 addi    t2, t2, 1              #; t2  = 0, (wrb) t2  <-- 1
       0     3943        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x001000f0, (wrb) t1  <-- 0x001000f8
                         M 0x80003000 fsd     ft4, 0(a3)             #; 8119.6200630 ~~> Doub[0x001002b0]
       0     3944        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 1, a5  = 7, taken, goto 0x80002fc8
       0     3945        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100060, (wrb) a3  <-- 0x00100060
       0     3946        M 0x80002fcc mv      s1, t1                 #; t1  = 0x001000f8, (wrb) s1  <-- 0x001000f8
       0     3947        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     3950        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3951        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100060], (f:fpu) ft4  <-- 0.0
       0     3952        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001000f8], (f:lsu) ft5  <-- 40.833
       0     3953        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001000f8, a0  = 56, (wrb) s1  <-- 0x00100130
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     3954        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 40.833, ft4  = 0.0
       0     3955        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     3957        M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     3958        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100068]
       0     3959        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100130], (f:lsu) ft5  <-- 43.9740000
       0     3960        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100130, a0  = 56, (wrb) s1  <-- 0x00100168
                         M                                           #; (f:lsu) ft6  <-- 28.269
       0     3961        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 43.9740000, ft4  = 256.5129060
       0     3962        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     3964        M                                           #; (f:fpu) ft4  <-- 1499.6139120
       0     3965        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100070]
       0     3966        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100168], (f:lsu) ft5  <-- 47.115
       0     3967        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100168, a0  = 56, (wrb) s1  <-- 0x001001a0
                         M                                           #; (f:lsu) ft6  <-- 50.256
       0     3968        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 47.115, ft4  = 1499.6139120
       0     3969        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     3971        M                                           #; (f:fpu) ft4  <-- 3867.4253520
       0     3972        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100078]
       0     3973        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001a0], (f:lsu) ft5  <-- 50.256
       0     3974        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001a0, a0  = 56, (wrb) s1  <-- 0x001001d8
                         M                                           #; (f:lsu) ft6  <-- 9.423
       0     3975        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 50.256, ft4  = 3867.4253520
       0     3976        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     3978        M                                           #; (f:fpu) ft4  <-- 4340.9876400
       0     3979        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100080]
       0     3980        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft5  <-- 53.397
       0     3981        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001d8, a0  = 56, (wrb) s1  <-- 0x00100210
                         M                                           #; (f:lsu) ft6  <-- 31.41
       0     3982        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 53.397, ft4  = 4340.9876400
       0     3983        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     3985        M                                           #; (f:fpu) ft4  <-- 6018.1874100
       0     3986        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100088]
       0     3987        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100210], (f:lsu) ft5  <-- 56.538
       0     3988        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100210, a0  = 56, (wrb) s1  <-- 0x00100248
                         M                                           #; (f:lsu) ft6  <-- 53.397
       0     3989        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 56.538, ft4  = 6018.1874100
       0     3990        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     3991        M 0x80002ff4 add     a3, t2, t0             #; t2  = 1, t0  = 14, (wrb) a3  <-- 15
       0     3992        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 15, (wrb) a3  <-- 120
                         M                                           #; (f:fpu) ft4  <-- 9037.1469960
       0     3993        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 120, (wrb) a3  <-- 0x001002b8
       0     3995        M 0x80003004 addi    t2, t2, 1              #; t2  = 1, (wrb) t2  <-- 2
       0     3996        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x001000f8, (wrb) t1  <-- 0x00100100
                         M 0x80003000 fsd     ft4, 0(a3)             #; 9037.1469960 ~~> Doub[0x001002b8]
       0     3997        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 2, a5  = 7, taken, goto 0x80002fc8
       0     3998        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100060, (wrb) a3  <-- 0x00100060
       0     3999        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100100, (wrb) s1  <-- 0x00100100
       0     4000        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4003        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4004        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100060], (f:fpu) ft4  <-- 0.0
       0     4005        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100100], (f:lsu) ft5  <-- 40.833
       0     4006        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100100, a0  = 56, (wrb) s1  <-- 0x00100138
                         M                                           #; (f:lsu) ft6  <-- 9.423
       0     4007        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 40.833, ft4  = 0.0
       0     4008        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4010        M                                           #; (f:fpu) ft4  <-- 384.7693590
       0     4011        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100068]
       0     4012        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100138], (f:lsu) ft5  <-- 43.9740000
       0     4013        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100138, a0  = 56, (wrb) s1  <-- 0x00100170
                         M                                           #; (f:lsu) ft6  <-- 31.41
       0     4014        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 43.9740000, ft4  = 384.7693590
       0     4015        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4017        M                                           #; (f:fpu) ft4  <-- 1765.9926990
       0     4018        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100070]
       0     4019        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100170], (f:lsu) ft5  <-- 47.115
       0     4020        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100170, a0  = 56, (wrb) s1  <-- 0x001001a8
                         M                                           #; (f:lsu) ft6  <-- 53.397
       0     4021        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 47.115, ft4  = 1765.9926990
       0     4022        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4024        M                                           #; (f:fpu) ft4  <-- 4281.7923540
       0     4025        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100078]
       0     4026        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001a8], (f:lsu) ft5  <-- 50.256
       0     4027        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001a8, a0  = 56, (wrb) s1  <-- 0x001001e0
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     4028        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 50.256, ft4  = 4281.7923540
       0     4029        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4031        M                                           #; (f:fpu) ft4  <-- 4913.2087380
       0     4032        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100080]
       0     4033        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft5  <-- 53.397
       0     4034        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001e0, a0  = 56, (wrb) s1  <-- 0x00100218
                         M                                           #; (f:lsu) ft6  <-- 34.551
       0     4035        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 53.397, ft4  = 4913.2087380
       0     4036        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4038        M                                           #; (f:fpu) ft4  <-- 6758.1284850
       0     4039        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100088]
       0     4040        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100218], (f:lsu) ft5  <-- 56.538
       0     4041        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100218, a0  = 56, (wrb) s1  <-- 0x00100250
                         M                                           #; (f:lsu) ft6  <-- 56.538
       0     4042        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 56.538, ft4  = 6758.1284850
       0     4043        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4044        M 0x80002ff4 add     a3, t2, t0             #; t2  = 2, t0  = 14, (wrb) a3  <-- 16
       0     4045        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 16, (wrb) a3  <-- 128
                         M                                           #; (f:fpu) ft4  <-- 9954.6739290
       0     4046        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 128, (wrb) a3  <-- 0x001002c0
       0     4048        M 0x80003004 addi    t2, t2, 1              #; t2  = 2, (wrb) t2  <-- 3
       0     4049        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100100, (wrb) t1  <-- 0x00100108
                         M 0x80003000 fsd     ft4, 0(a3)             #; 9954.6739290 ~~> Doub[0x001002c0]
       0     4050        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 3, a5  = 7, taken, goto 0x80002fc8
       0     4051        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100060, (wrb) a3  <-- 0x00100060
       0     4052        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100108, (wrb) s1  <-- 0x00100108
       0     4053        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4056        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4057        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100060], (f:fpu) ft4  <-- 0.0
       0     4058        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100108], (f:lsu) ft5  <-- 40.833
       0     4059        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100108, a0  = 56, (wrb) s1  <-- 0x00100140
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     4060        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 40.833, ft4  = 0.0
       0     4061        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4063        M                                           #; (f:fpu) ft4  <-- 513.0258120
       0     4064        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100068]
       0     4065        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100140], (f:lsu) ft5  <-- 43.9740000
       0     4066        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100140, a0  = 56, (wrb) s1  <-- 0x00100178
                         M                                           #; (f:lsu) ft6  <-- 34.551
       0     4067        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 43.9740000, ft4  = 513.0258120
       0     4068        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4070        M                                           #; (f:fpu) ft4  <-- 2032.3714860
       0     4071        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100070]
       0     4072        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100178], (f:lsu) ft5  <-- 47.115
       0     4073        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100178, a0  = 56, (wrb) s1  <-- 0x001001b0
                         M                                           #; (f:lsu) ft6  <-- 56.538
       0     4074        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 47.115, ft4  = 2032.3714860
       0     4075        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4077        M                                           #; (f:fpu) ft4  <-- 4696.1593560
       0     4078        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100078]
       0     4079        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001b0], (f:lsu) ft5  <-- 50.256
       0     4080        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001b0, a0  = 56, (wrb) s1  <-- 0x001001e8
                         M                                           #; (f:lsu) ft6  <-- 15.705
       0     4081        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 50.256, ft4  = 4696.1593560
       0     4082        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4084        M                                           #; (f:fpu) ft4  <-- 5485.4298360
       0     4085        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100080]
       0     4086        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft5  <-- 53.397
       0     4087        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001e8, a0  = 56, (wrb) s1  <-- 0x00100220
                         M                                           #; (f:lsu) ft6  <-- 37.692
       0     4088        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 53.397, ft4  = 5485.4298360
       0     4089        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4091        M                                           #; (f:fpu) ft4  <-- 7498.0695600
       0     4092        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100088]
       0     4093        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100220], (f:lsu) ft5  <-- 56.538
       0     4094        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100220, a0  = 56, (wrb) s1  <-- 0x00100258
                         M                                           #; (f:lsu) ft6  <-- 59.679
       0     4095        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 56.538, ft4  = 7498.0695600
       0     4096        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4097        M 0x80002ff4 add     a3, t2, t0             #; t2  = 3, t0  = 14, (wrb) a3  <-- 17
       0     4098        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 17, (wrb) a3  <-- 136
                         M                                           #; (f:fpu) ft4  <-- 10872.2008620
       0     4099        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 136, (wrb) a3  <-- 0x001002c8
       0     4101        M 0x80003004 addi    t2, t2, 1              #; t2  = 3, (wrb) t2  <-- 4
       0     4102        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100108, (wrb) t1  <-- 0x00100110
                         M 0x80003000 fsd     ft4, 0(a3)             #; 10872.2008620 ~~> Doub[0x001002c8]
       0     4103        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 4, a5  = 7, taken, goto 0x80002fc8
       0     4104        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100060, (wrb) a3  <-- 0x00100060
       0     4105        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100110, (wrb) s1  <-- 0x00100110
       0     4106        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4109        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4110        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100060], (f:fpu) ft4  <-- 0.0
       0     4111        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100110], (f:lsu) ft5  <-- 40.833
       0     4112        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100110, a0  = 56, (wrb) s1  <-- 0x00100148
                         M                                           #; (f:lsu) ft6  <-- 15.705
       0     4113        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 40.833, ft4  = 0.0
       0     4114        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4116        M                                           #; (f:fpu) ft4  <-- 641.2822650
       0     4117        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100068]
       0     4118        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100148], (f:lsu) ft5  <-- 43.9740000
       0     4119        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100148, a0  = 56, (wrb) s1  <-- 0x00100180
                         M                                           #; (f:lsu) ft6  <-- 37.692
       0     4120        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 43.9740000, ft4  = 641.2822650
       0     4121        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4123        M                                           #; (f:fpu) ft4  <-- 2298.7502730
       0     4124        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100070]
       0     4125        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100180], (f:lsu) ft5  <-- 47.115
       0     4126        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100180, a0  = 56, (wrb) s1  <-- 0x001001b8
                         M                                           #; (f:lsu) ft6  <-- 59.679
       0     4127        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 47.115, ft4  = 2298.7502730
       0     4128        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4130        M                                           #; (f:fpu) ft4  <-- 5110.5263580
       0     4131        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100078]
       0     4132        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001b8], (f:lsu) ft5  <-- 50.256
       0     4133        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001b8, a0  = 56, (wrb) s1  <-- 0x001001f0
                         M                                           #; (f:lsu) ft6  <-- 18.846
       0     4134        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 50.256, ft4  = 5110.5263580
       0     4135        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4137        M                                           #; (f:fpu) ft4  <-- 6057.6509340
       0     4138        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100080]
       0     4139        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft5  <-- 53.397
       0     4140        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001f0, a0  = 56, (wrb) s1  <-- 0x00100228
                         M                                           #; (f:lsu) ft6  <-- 40.833
       0     4141        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 53.397, ft4  = 6057.6509340
       0     4142        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4144        M                                           #; (f:fpu) ft4  <-- 8238.0106350
       0     4145        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100088]
       0     4146        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100228], (f:lsu) ft5  <-- 56.538
       0     4147        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100228, a0  = 56, (wrb) s1  <-- 0x00100260
                         M                                           #; (f:lsu) ft6  <-- 62.82
       0     4148        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 56.538, ft4  = 8238.0106350
       0     4149        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4150        M 0x80002ff4 add     a3, t2, t0             #; t2  = 4, t0  = 14, (wrb) a3  <-- 18
       0     4151        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 18, (wrb) a3  <-- 144
                         M                                           #; (f:fpu) ft4  <-- 11789.7277950
       0     4152        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 144, (wrb) a3  <-- 0x001002d0
       0     4154        M 0x80003004 addi    t2, t2, 1              #; t2  = 4, (wrb) t2  <-- 5
       0     4155        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100110, (wrb) t1  <-- 0x00100118
                         M 0x80003000 fsd     ft4, 0(a3)             #; 11789.7277950 ~~> Doub[0x001002d0]
       0     4156        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 5, a5  = 7, taken, goto 0x80002fc8
       0     4157        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100060, (wrb) a3  <-- 0x00100060
       0     4158        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100118, (wrb) s1  <-- 0x00100118
       0     4159        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4162        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4163        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100060], (f:fpu) ft4  <-- 0.0
       0     4164        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100118], (f:lsu) ft5  <-- 40.833
       0     4165        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100118, a0  = 56, (wrb) s1  <-- 0x00100150
                         M                                           #; (f:lsu) ft6  <-- 18.846
       0     4166        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 40.833, ft4  = 0.0
       0     4167        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4169        M                                           #; (f:fpu) ft4  <-- 769.5387180
       0     4170        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100068]
       0     4171        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100150], (f:lsu) ft5  <-- 43.9740000
       0     4172        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100150, a0  = 56, (wrb) s1  <-- 0x00100188
                         M                                           #; (f:lsu) ft6  <-- 40.833
       0     4173        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 43.9740000, ft4  = 769.5387180
       0     4174        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4176        M                                           #; (f:fpu) ft4  <-- 2565.1290600
       0     4177        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100070]
       0     4178        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100188], (f:lsu) ft5  <-- 47.115
       0     4179        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100188, a0  = 56, (wrb) s1  <-- 0x001001c0
                         M                                           #; (f:lsu) ft6  <-- 62.82
       0     4180        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 47.115, ft4  = 2565.1290600
       0     4181        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4183        M                                           #; (f:fpu) ft4  <-- 5524.8933600
       0     4184        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100078]
       0     4185        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001c0], (f:lsu) ft5  <-- 50.256
       0     4186        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001c0, a0  = 56, (wrb) s1  <-- 0x001001f8
                         M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     4187        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 50.256, ft4  = 5524.8933600
       0     4188        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4190        M                                           #; (f:fpu) ft4  <-- 6629.8720320
       0     4191        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100080]
       0     4192        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft5  <-- 53.397
       0     4193        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001f8, a0  = 56, (wrb) s1  <-- 0x00100230
                         M                                           #; (f:lsu) ft6  <-- 43.9740000
       0     4194        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 53.397, ft4  = 6629.8720320
       0     4195        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4197        M                                           #; (f:fpu) ft4  <-- 8977.9517100
       0     4198        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100088]
       0     4199        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100230], (f:lsu) ft5  <-- 56.538
       0     4200        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100230, a0  = 56, (wrb) s1  <-- 0x00100268
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     4201        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 56.538, ft4  = 8977.9517100
       0     4202        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4203        M 0x80002ff4 add     a3, t2, t0             #; t2  = 5, t0  = 14, (wrb) a3  <-- 19
       0     4204        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 19, (wrb) a3  <-- 152
                         M                                           #; (f:fpu) ft4  <-- 9155.5375680
       0     4205        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 152, (wrb) a3  <-- 0x001002d8
       0     4207        M 0x80003004 addi    t2, t2, 1              #; t2  = 5, (wrb) t2  <-- 6
       0     4208        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100118, (wrb) t1  <-- 0x00100120
                         M 0x80003000 fsd     ft4, 0(a3)             #; 9155.5375680 ~~> Doub[0x001002d8]
       0     4209        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 6, a5  = 7, taken, goto 0x80002fc8
       0     4210        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100060, (wrb) a3  <-- 0x00100060
       0     4211        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100120, (wrb) s1  <-- 0x00100120
       0     4212        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4215        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4216        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100060], (f:fpu) ft4  <-- 0.0
       0     4217        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100120], (f:lsu) ft5  <-- 40.833
       0     4218        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100120, a0  = 56, (wrb) s1  <-- 0x00100158
                         M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     4219        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 40.833, ft4  = 0.0
       0     4220        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4222        M                                           #; (f:fpu) ft4  <-- 897.7951710
       0     4223        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100068]
       0     4224        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100158], (f:lsu) ft5  <-- 43.9740000
       0     4225        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100158, a0  = 56, (wrb) s1  <-- 0x00100190
                         M                                           #; (f:lsu) ft6  <-- 43.9740000
       0     4226        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 43.9740000, ft4  = 897.7951710
       0     4227        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4229        M                                           #; (f:fpu) ft4  <-- 2831.5078470
       0     4230        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100070]
       0     4231        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100190], (f:lsu) ft5  <-- 47.115
       0     4232        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100190, a0  = 56, (wrb) s1  <-- 0x001001c8
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     4233        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 47.115, ft4  = 2831.5078470
       0     4234        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4236        M                                           #; (f:fpu) ft4  <-- 2979.4960620
       0     4237        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100078]
       0     4238        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001c8], (f:lsu) ft5  <-- 50.256
       0     4239        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001c8, a0  = 56, (wrb) s1  <-- 0x00100200
                         M                                           #; (f:lsu) ft6  <-- 25.128
       0     4240        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 50.256, ft4  = 2979.4960620
       0     4241        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4243        M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4244        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100080]
       0     4245        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100200], (f:lsu) ft5  <-- 53.397
       0     4246        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100200, a0  = 56, (wrb) s1  <-- 0x00100238
                         M                                           #; (f:lsu) ft6  <-- 47.115
       0     4247        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 53.397, ft4  = 4242.3288300
       0     4248        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4250        M                                           #; (f:fpu) ft4  <-- 6758.1284850
       0     4251        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100088]
       0     4252        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100238], (f:lsu) ft5  <-- 56.538
       0     4253        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100238, a0  = 56, (wrb) s1  <-- 0x00100270
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     4254        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 56.538, ft4  = 6758.1284850
       0     4255        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4256        M 0x80002ff4 add     a3, t2, t0             #; t2  = 6, t0  = 14, (wrb) a3  <-- 20
       0     4257        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 20, (wrb) a3  <-- 160
                         M                                           #; (f:fpu) ft4  <-- 7113.3002010
       0     4258        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 160, (wrb) a3  <-- 0x001002e0
       0     4260        M 0x80003004 addi    t2, t2, 1              #; t2  = 6, (wrb) t2  <-- 7
       0     4261        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100120, (wrb) t1  <-- 0x00100128
                         M 0x80003000 fsd     ft4, 0(a3)             #; 7113.3002010 ~~> Doub[0x001002e0]
       0     4262        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 7, a5  = 7, not taken
       0     4263        M 0x80003010 addi    a7, a7, 1              #; a7  = 2, (wrb) a7  <-- 3
       0     4264        M 0x80003014 add     a1, a1, a6             #; a1  = 0x00100060, a6  = 48, (wrb) a1  <-- 0x00100090
       0     4265        M 0x80003018 bne     a7, s2, pc - 92        #; a7  = 3, s2  = 5, taken, goto 0x80002fbc
       0     4266        M 0x80002fbc li      t2, 0                  #; (wrb) t2  <-- 0
       0     4267        M 0x80002fc0 mul     t0, a7, a5             #; a7  = 3, a5  = 7
       0     4268        M 0x80002fc4 mv      t1, a2                 #; a2  = 0x001000f0, (wrb) t1  <-- 0x001000f0
       0     4269        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100090, (wrb) a3  <-- 0x00100090
       0     4270        M 0x80002fcc mv      s1, t1                 #; t1  = 0x001000f0, (wrb) s1  <-- 0x001000f0
       0     4271        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4272        M                                           #; (acc) tp  <-- 0x22318253
       0     4274        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4275        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100090], (f:fpu) ft4  <-- 0.0
       0     4276        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001000f0], (f:lsu) ft5  <-- 59.679
       0     4277        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001000f0, a0  = 56, (wrb) s1  <-- 0x00100128
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     4278        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 59.679, ft4  = 0.0
       0     4279        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4281        M                                           #; (f:fpu) ft4  <-- 187.4517390
       0     4282        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100098]
       0     4283        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100128], (f:lsu) ft5  <-- 62.82
       0     4284        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100128, a0  = 56, (wrb) s1  <-- 0x00100160
                         M                                           #; (f:lsu) ft6  <-- 25.128
       0     4285        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 62.82, ft4  = 187.4517390
       0     4286        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4288        M                                           #; (f:fpu) ft4  <-- 1765.9926990
       0     4289        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a0]
       0     4290        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100160], (f:lsu) ft5  <-- 3.141
       0     4291        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100160, a0  = 56, (wrb) s1  <-- 0x00100198
                         M                                           #; (f:lsu) ft6  <-- 47.115
       0     4292        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 3.141, ft4  = 1765.9926990
       0     4293        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4295        M                                           #; (f:fpu) ft4  <-- 1913.9809140
       0     4296        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a8]
       0     4297        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100198], (f:lsu) ft5  <-- 6.282
       0     4298        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100198, a0  = 56, (wrb) s1  <-- 0x001001d0
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     4299        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 6.282, ft4  = 1913.9809140
       0     4300        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4302        M                                           #; (f:fpu) ft4  <-- 1953.4444380
       0     4303        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b0]
       0     4304        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft5  <-- 9.423
       0     4305        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001d0, a0  = 56, (wrb) s1  <-- 0x00100208
                         M                                           #; (f:lsu) ft6  <-- 28.269
       0     4306        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 9.423, ft4  = 1953.4444380
       0     4307        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4309        M                                           #; (f:fpu) ft4  <-- 2219.8232250
       0     4310        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b8]
       0     4311        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100208], (f:lsu) ft5  <-- 12.564
       0     4312        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100208, a0  = 56, (wrb) s1  <-- 0x00100240
                         M                                           #; (f:lsu) ft6  <-- 50.256
       0     4313        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 12.564, ft4  = 2219.8232250
       0     4314        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4315        M 0x80002ff4 add     a3, t2, t0             #; t2  = 0, t0  = 21, (wrb) a3  <-- 21
       0     4316        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 21, (wrb) a3  <-- 168
                         M                                           #; (f:fpu) ft4  <-- 2851.2396090
       0     4317        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 168, (wrb) a3  <-- 0x001002e8
       0     4319        M 0x80003004 addi    t2, t2, 1              #; t2  = 0, (wrb) t2  <-- 1
       0     4320        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x001000f0, (wrb) t1  <-- 0x001000f8
                         M 0x80003000 fsd     ft4, 0(a3)             #; 2851.2396090 ~~> Doub[0x001002e8]
       0     4321        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 1, a5  = 7, taken, goto 0x80002fc8
       0     4322        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100090, (wrb) a3  <-- 0x00100090
       0     4323        M 0x80002fcc mv      s1, t1                 #; t1  = 0x001000f8, (wrb) s1  <-- 0x001000f8
       0     4324        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4327        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4328        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100090], (f:fpu) ft4  <-- 0.0
       0     4329        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001000f8], (f:lsu) ft5  <-- 59.679
       0     4330        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001000f8, a0  = 56, (wrb) s1  <-- 0x00100130
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     4331        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 59.679, ft4  = 0.0
       0     4332        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4334        M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     4335        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100098]
       0     4336        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100130], (f:lsu) ft5  <-- 62.82
       0     4337        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100130, a0  = 56, (wrb) s1  <-- 0x00100168
                         M                                           #; (f:lsu) ft6  <-- 28.269
       0     4338        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 62.82, ft4  = 374.9034780
       0     4339        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4341        M                                           #; (f:fpu) ft4  <-- 2150.7620580
       0     4342        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a0]
       0     4343        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100168], (f:lsu) ft5  <-- 3.141
       0     4344        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100168, a0  = 56, (wrb) s1  <-- 0x001001a0
                         M                                           #; (f:lsu) ft6  <-- 50.256
       0     4345        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 3.141, ft4  = 2150.7620580
       0     4346        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4348        M                                           #; (f:fpu) ft4  <-- 2308.6161540
       0     4349        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a8]
       0     4350        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001a0], (f:lsu) ft5  <-- 6.282
       0     4351        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001a0, a0  = 56, (wrb) s1  <-- 0x001001d8
                         M                                           #; (f:lsu) ft6  <-- 9.423
       0     4352        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 6.282, ft4  = 2308.6161540
       0     4353        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4355        M                                           #; (f:fpu) ft4  <-- 2367.8114400
       0     4356        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b0]
       0     4357        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft5  <-- 9.423
       0     4358        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001d8, a0  = 56, (wrb) s1  <-- 0x00100210
                         M                                           #; (f:lsu) ft6  <-- 31.41
       0     4359        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 9.423, ft4  = 2367.8114400
       0     4360        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4362        M                                           #; (f:fpu) ft4  <-- 2663.7878700
       0     4363        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b8]
       0     4364        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100210], (f:lsu) ft5  <-- 12.564
       0     4365        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100210, a0  = 56, (wrb) s1  <-- 0x00100248
                         M                                           #; (f:lsu) ft6  <-- 53.397
       0     4366        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 12.564, ft4  = 2663.7878700
       0     4367        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4368        M 0x80002ff4 add     a3, t2, t0             #; t2  = 1, t0  = 21, (wrb) a3  <-- 22
       0     4369        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 22, (wrb) a3  <-- 176
                         M                                           #; (f:fpu) ft4  <-- 3334.6677780
       0     4370        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 176, (wrb) a3  <-- 0x001002f0
       0     4372        M 0x80003004 addi    t2, t2, 1              #; t2  = 1, (wrb) t2  <-- 2
       0     4373        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x001000f8, (wrb) t1  <-- 0x00100100
                         M 0x80003000 fsd     ft4, 0(a3)             #; 3334.6677780 ~~> Doub[0x001002f0]
       0     4374        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 2, a5  = 7, taken, goto 0x80002fc8
       0     4375        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100090, (wrb) a3  <-- 0x00100090
       0     4376        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100100, (wrb) s1  <-- 0x00100100
       0     4377        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4380        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4381        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100090], (f:fpu) ft4  <-- 0.0
       0     4382        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100100], (f:lsu) ft5  <-- 59.679
       0     4383        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100100, a0  = 56, (wrb) s1  <-- 0x00100138
                         M                                           #; (f:lsu) ft6  <-- 9.423
       0     4384        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 59.679, ft4  = 0.0
       0     4385        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4387        M                                           #; (f:fpu) ft4  <-- 562.3552170
       0     4388        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100098]
       0     4389        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100138], (f:lsu) ft5  <-- 62.82
       0     4390        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100138, a0  = 56, (wrb) s1  <-- 0x00100170
                         M                                           #; (f:lsu) ft6  <-- 31.41
       0     4391        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 62.82, ft4  = 562.3552170
       0     4392        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4394        M                                           #; (f:fpu) ft4  <-- 2535.5314170
       0     4395        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a0]
       0     4396        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100170], (f:lsu) ft5  <-- 3.141
       0     4397        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100170, a0  = 56, (wrb) s1  <-- 0x001001a8
                         M                                           #; (f:lsu) ft6  <-- 53.397
       0     4398        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 3.141, ft4  = 2535.5314170
       0     4399        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4401        M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     4402        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a8]
       0     4403        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001a8], (f:lsu) ft5  <-- 6.282
       0     4404        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001a8, a0  = 56, (wrb) s1  <-- 0x001001e0
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     4405        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 6.282, ft4  = 2703.2513940
       0     4406        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4408        M                                           #; (f:fpu) ft4  <-- 2782.1784420
       0     4409        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b0]
       0     4410        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft5  <-- 9.423
       0     4411        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001e0, a0  = 56, (wrb) s1  <-- 0x00100218
                         M                                           #; (f:lsu) ft6  <-- 34.551
       0     4412        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 9.423, ft4  = 2782.1784420
       0     4413        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4415        M                                           #; (f:fpu) ft4  <-- 3107.7525150
       0     4416        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b8]
       0     4417        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100218], (f:lsu) ft5  <-- 12.564
       0     4418        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100218, a0  = 56, (wrb) s1  <-- 0x00100250
                         M                                           #; (f:lsu) ft6  <-- 56.538
       0     4419        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 12.564, ft4  = 3107.7525150
       0     4420        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4421        M 0x80002ff4 add     a3, t2, t0             #; t2  = 2, t0  = 21, (wrb) a3  <-- 23
       0     4422        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 23, (wrb) a3  <-- 184
                         M                                           #; (f:fpu) ft4  <-- 3818.0959470
       0     4423        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 184, (wrb) a3  <-- 0x001002f8
       0     4425        M 0x80003004 addi    t2, t2, 1              #; t2  = 2, (wrb) t2  <-- 3
       0     4426        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100100, (wrb) t1  <-- 0x00100108
                         M 0x80003000 fsd     ft4, 0(a3)             #; 3818.0959470 ~~> Doub[0x001002f8]
       0     4427        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 3, a5  = 7, taken, goto 0x80002fc8
       0     4428        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100090, (wrb) a3  <-- 0x00100090
       0     4429        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100108, (wrb) s1  <-- 0x00100108
       0     4430        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4433        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4434        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100090], (f:fpu) ft4  <-- 0.0
       0     4435        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100108], (f:lsu) ft5  <-- 59.679
       0     4436        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100108, a0  = 56, (wrb) s1  <-- 0x00100140
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     4437        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 59.679, ft4  = 0.0
       0     4438        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4440        M                                           #; (f:fpu) ft4  <-- 749.8069560
       0     4441        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100098]
       0     4442        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100140], (f:lsu) ft5  <-- 62.82
       0     4443        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100140, a0  = 56, (wrb) s1  <-- 0x00100178
                         M                                           #; (f:lsu) ft6  <-- 34.551
       0     4444        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 62.82, ft4  = 749.8069560
       0     4445        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4447        M                                           #; (f:fpu) ft4  <-- 2920.3007760
       0     4448        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a0]
       0     4449        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100178], (f:lsu) ft5  <-- 3.141
       0     4450        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100178, a0  = 56, (wrb) s1  <-- 0x001001b0
                         M                                           #; (f:lsu) ft6  <-- 56.538
       0     4451        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 3.141, ft4  = 2920.3007760
       0     4452        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4454        M                                           #; (f:fpu) ft4  <-- 3097.8866340
       0     4455        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a8]
       0     4456        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001b0], (f:lsu) ft5  <-- 6.282
       0     4457        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001b0, a0  = 56, (wrb) s1  <-- 0x001001e8
                         M                                           #; (f:lsu) ft6  <-- 15.705
       0     4458        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 6.282, ft4  = 3097.8866340
       0     4459        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4461        M                                           #; (f:fpu) ft4  <-- 3196.5454440
       0     4462        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b0]
       0     4463        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft5  <-- 9.423
       0     4464        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001e8, a0  = 56, (wrb) s1  <-- 0x00100220
                         M                                           #; (f:lsu) ft6  <-- 37.692
       0     4465        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 9.423, ft4  = 3196.5454440
       0     4466        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4468        M                                           #; (f:fpu) ft4  <-- 3551.7171600
       0     4469        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b8]
       0     4470        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100220], (f:lsu) ft5  <-- 12.564
       0     4471        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100220, a0  = 56, (wrb) s1  <-- 0x00100258
                         M                                           #; (f:lsu) ft6  <-- 59.679
       0     4472        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 12.564, ft4  = 3551.7171600
       0     4473        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4474        M 0x80002ff4 add     a3, t2, t0             #; t2  = 3, t0  = 21, (wrb) a3  <-- 24
       0     4475        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 24, (wrb) a3  <-- 192
                         M                                           #; (f:fpu) ft4  <-- 4301.5241160
       0     4476        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 192, (wrb) a3  <-- 0x00100300
       0     4478        M 0x80003004 addi    t2, t2, 1              #; t2  = 3, (wrb) t2  <-- 4
       0     4479        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100108, (wrb) t1  <-- 0x00100110
                         M 0x80003000 fsd     ft4, 0(a3)             #; 4301.5241160 ~~> Doub[0x00100300]
       0     4480        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 4, a5  = 7, taken, goto 0x80002fc8
       0     4481        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100090, (wrb) a3  <-- 0x00100090
       0     4482        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100110, (wrb) s1  <-- 0x00100110
       0     4483        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4486        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4487        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100090], (f:fpu) ft4  <-- 0.0
       0     4488        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100110], (f:lsu) ft5  <-- 59.679
       0     4489        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100110, a0  = 56, (wrb) s1  <-- 0x00100148
                         M                                           #; (f:lsu) ft6  <-- 15.705
       0     4490        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 59.679, ft4  = 0.0
       0     4491        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4493        M                                           #; (f:fpu) ft4  <-- 937.2586950
       0     4494        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100098]
       0     4495        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100148], (f:lsu) ft5  <-- 62.82
       0     4496        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100148, a0  = 56, (wrb) s1  <-- 0x00100180
                         M                                           #; (f:lsu) ft6  <-- 37.692
       0     4497        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 62.82, ft4  = 937.2586950
       0     4498        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4500        M                                           #; (f:fpu) ft4  <-- 3305.0701350
       0     4501        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a0]
       0     4502        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100180], (f:lsu) ft5  <-- 3.141
       0     4503        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100180, a0  = 56, (wrb) s1  <-- 0x001001b8
                         M                                           #; (f:lsu) ft6  <-- 59.679
       0     4504        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 3.141, ft4  = 3305.0701350
       0     4505        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4507        M                                           #; (f:fpu) ft4  <-- 3492.5218740
       0     4508        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a8]
       0     4509        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001b8], (f:lsu) ft5  <-- 6.282
       0     4510        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001b8, a0  = 56, (wrb) s1  <-- 0x001001f0
                         M                                           #; (f:lsu) ft6  <-- 18.846
       0     4511        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 6.282, ft4  = 3492.5218740
       0     4512        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4514        M                                           #; (f:fpu) ft4  <-- 3610.9124460
       0     4515        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b0]
       0     4516        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft5  <-- 9.423
       0     4517        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001f0, a0  = 56, (wrb) s1  <-- 0x00100228
                         M                                           #; (f:lsu) ft6  <-- 40.833
       0     4518        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 9.423, ft4  = 3610.9124460
       0     4519        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4521        M                                           #; (f:fpu) ft4  <-- 3995.6818050
       0     4522        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b8]
       0     4523        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100228], (f:lsu) ft5  <-- 12.564
       0     4524        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100228, a0  = 56, (wrb) s1  <-- 0x00100260
                         M                                           #; (f:lsu) ft6  <-- 62.82
       0     4525        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 12.564, ft4  = 3995.6818050
       0     4526        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4527        M 0x80002ff4 add     a3, t2, t0             #; t2  = 4, t0  = 21, (wrb) a3  <-- 25
       0     4528        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 25, (wrb) a3  <-- 200
                         M                                           #; (f:fpu) ft4  <-- 4784.9522850
       0     4529        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 200, (wrb) a3  <-- 0x00100308
       0     4531        M 0x80003004 addi    t2, t2, 1              #; t2  = 4, (wrb) t2  <-- 5
       0     4532        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100110, (wrb) t1  <-- 0x00100118
                         M 0x80003000 fsd     ft4, 0(a3)             #; 4784.9522850 ~~> Doub[0x00100308]
       0     4533        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 5, a5  = 7, taken, goto 0x80002fc8
       0     4534        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100090, (wrb) a3  <-- 0x00100090
       0     4535        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100118, (wrb) s1  <-- 0x00100118
       0     4536        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4539        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4540        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100090], (f:fpu) ft4  <-- 0.0
       0     4541        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100118], (f:lsu) ft5  <-- 59.679
       0     4542        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100118, a0  = 56, (wrb) s1  <-- 0x00100150
                         M                                           #; (f:lsu) ft6  <-- 18.846
       0     4543        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 59.679, ft4  = 0.0
       0     4544        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4546        M                                           #; (f:fpu) ft4  <-- 1124.7104340
       0     4547        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100098]
       0     4548        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100150], (f:lsu) ft5  <-- 62.82
       0     4549        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100150, a0  = 56, (wrb) s1  <-- 0x00100188
                         M                                           #; (f:lsu) ft6  <-- 40.833
       0     4550        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 62.82, ft4  = 1124.7104340
       0     4551        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4553        M                                           #; (f:fpu) ft4  <-- 3689.8394940
       0     4554        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a0]
       0     4555        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100188], (f:lsu) ft5  <-- 3.141
       0     4556        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100188, a0  = 56, (wrb) s1  <-- 0x001001c0
                         M                                           #; (f:lsu) ft6  <-- 62.82
       0     4557        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 3.141, ft4  = 3689.8394940
       0     4558        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4560        M                                           #; (f:fpu) ft4  <-- 3887.1571140
       0     4561        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a8]
       0     4562        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001c0], (f:lsu) ft5  <-- 6.282
       0     4563        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001c0, a0  = 56, (wrb) s1  <-- 0x001001f8
                         M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     4564        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 6.282, ft4  = 3887.1571140
       0     4565        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4567        M                                           #; (f:fpu) ft4  <-- 4025.2794480
       0     4568        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b0]
       0     4569        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft5  <-- 9.423
       0     4570        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001f8, a0  = 56, (wrb) s1  <-- 0x00100230
                         M                                           #; (f:lsu) ft6  <-- 43.9740000
       0     4571        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 9.423, ft4  = 4025.2794480
       0     4572        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4574        M                                           #; (f:fpu) ft4  <-- 4439.6464500
       0     4575        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b8]
       0     4576        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100230], (f:lsu) ft5  <-- 12.564
       0     4577        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100230, a0  = 56, (wrb) s1  <-- 0x00100268
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     4578        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 12.564, ft4  = 4439.6464500
       0     4579        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4580        M 0x80002ff4 add     a3, t2, t0             #; t2  = 5, t0  = 21, (wrb) a3  <-- 26
       0     4581        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 26, (wrb) a3  <-- 208
                         M                                           #; (f:fpu) ft4  <-- 4479.1099740
       0     4582        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 208, (wrb) a3  <-- 0x00100310
       0     4584        M 0x80003004 addi    t2, t2, 1              #; t2  = 5, (wrb) t2  <-- 6
       0     4585        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100118, (wrb) t1  <-- 0x00100120
                         M 0x80003000 fsd     ft4, 0(a3)             #; 4479.1099740 ~~> Doub[0x00100310]
       0     4586        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 6, a5  = 7, taken, goto 0x80002fc8
       0     4587        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x00100090, (wrb) a3  <-- 0x00100090
       0     4588        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100120, (wrb) s1  <-- 0x00100120
       0     4589        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4592        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4593        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100090], (f:fpu) ft4  <-- 0.0
       0     4594        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100120], (f:lsu) ft5  <-- 59.679
       0     4595        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100120, a0  = 56, (wrb) s1  <-- 0x00100158
                         M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     4596        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 59.679, ft4  = 0.0
       0     4597        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4599        M                                           #; (f:fpu) ft4  <-- 1312.1621730
       0     4600        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x00100098]
       0     4601        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100158], (f:lsu) ft5  <-- 62.82
       0     4602        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100158, a0  = 56, (wrb) s1  <-- 0x00100190
                         M                                           #; (f:lsu) ft6  <-- 43.9740000
       0     4603        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 62.82, ft4  = 1312.1621730
       0     4604        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4606        M                                           #; (f:fpu) ft4  <-- 4074.6088530
       0     4607        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a0]
       0     4608        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100190], (f:lsu) ft5  <-- 3.141
       0     4609        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100190, a0  = 56, (wrb) s1  <-- 0x001001c8
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     4610        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 3.141, ft4  = 4074.6088530
       0     4611        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4613        M                                           #; (f:fpu) ft4  <-- 4084.4747340
       0     4614        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000a8]
       0     4615        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001c8], (f:lsu) ft5  <-- 6.282
       0     4616        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001c8, a0  = 56, (wrb) s1  <-- 0x00100200
                         M                                           #; (f:lsu) ft6  <-- 25.128
       0     4617        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 6.282, ft4  = 4084.4747340
       0     4618        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4620        M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4621        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b0]
       0     4622        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100200], (f:lsu) ft5  <-- 9.423
       0     4623        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100200, a0  = 56, (wrb) s1  <-- 0x00100238
                         M                                           #; (f:lsu) ft6  <-- 47.115
       0     4624        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 9.423, ft4  = 4242.3288300
       0     4625        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4627        M                                           #; (f:fpu) ft4  <-- 4686.2934750
       0     4628        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000b8]
       0     4629        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100238], (f:lsu) ft5  <-- 12.564
       0     4630        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100238, a0  = 56, (wrb) s1  <-- 0x00100270
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     4631        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 12.564, ft4  = 4686.2934750
       0     4632        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4633        M 0x80002ff4 add     a3, t2, t0             #; t2  = 6, t0  = 21, (wrb) a3  <-- 27
       0     4634        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 27, (wrb) a3  <-- 216
                         M                                           #; (f:fpu) ft4  <-- 4765.2205230
       0     4635        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 216, (wrb) a3  <-- 0x00100318
       0     4637        M 0x80003004 addi    t2, t2, 1              #; t2  = 6, (wrb) t2  <-- 7
       0     4638        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100120, (wrb) t1  <-- 0x00100128
                         M 0x80003000 fsd     ft4, 0(a3)             #; 4765.2205230 ~~> Doub[0x00100318]
       0     4639        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 7, a5  = 7, not taken
       0     4640        M 0x80003010 addi    a7, a7, 1              #; a7  = 3, (wrb) a7  <-- 4
       0     4641        M 0x80003014 add     a1, a1, a6             #; a1  = 0x00100090, a6  = 48, (wrb) a1  <-- 0x001000c0
       0     4642        M 0x80003018 bne     a7, s2, pc - 92        #; a7  = 4, s2  = 5, taken, goto 0x80002fbc
       0     4643        M 0x80002fbc li      t2, 0                  #; (wrb) t2  <-- 0
       0     4644        M 0x80002fc0 mul     t0, a7, a5             #; a7  = 4, a5  = 7
       0     4645        M 0x80002fc4 mv      t1, a2                 #; a2  = 0x001000f0, (wrb) t1  <-- 0x001000f0
       0     4646        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x001000c0, (wrb) a3  <-- 0x001000c0
       0     4647        M 0x80002fcc mv      s1, t1                 #; t1  = 0x001000f0, (wrb) s1  <-- 0x001000f0
       0     4648        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4649        M                                           #; (acc) tp  <-- 0x22318253
       0     4651        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4652        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c0], (f:fpu) ft4  <-- 0.0
       0     4653        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001000f0], (f:lsu) ft5  <-- 15.705
       0     4654        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001000f0, a0  = 56, (wrb) s1  <-- 0x00100128
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     4655        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 15.705, ft4  = 0.0
       0     4656        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4658        M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     4659        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c8]
       0     4660        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100128], (f:lsu) ft5  <-- 18.846
       0     4661        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100128, a0  = 56, (wrb) s1  <-- 0x00100160
                         M                                           #; (f:lsu) ft6  <-- 25.128
       0     4662        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c8, (wrb) a3  <-- 0x001000d0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 18.846, ft4  = 49.3294050
       0     4663        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4665        M                                           #; (f:fpu) ft4  <-- 522.8916930
       0     4666        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d0]
       0     4667        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100160], (f:lsu) ft5  <-- 21.9870000
       0     4668        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100160, a0  = 56, (wrb) s1  <-- 0x00100198
                         M                                           #; (f:lsu) ft6  <-- 47.115
       0     4669        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d0, (wrb) a3  <-- 0x001000d8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 21.9870000, ft4  = 522.8916930
       0     4670        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4672        M                                           #; (f:fpu) ft4  <-- 1558.8091980
       0     4673        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d8]
       0     4674        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100198], (f:lsu) ft5  <-- 25.128
       0     4675        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100198, a0  = 56, (wrb) s1  <-- 0x001001d0
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     4676        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d8, (wrb) a3  <-- 0x001000e0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 25.128, ft4  = 1558.8091980
       0     4677        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4679        M                                           #; (f:fpu) ft4  <-- 1716.6632940
       0     4680        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e0]
       0     4681        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft5  <-- 28.269
       0     4682        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001d0, a0  = 56, (wrb) s1  <-- 0x00100208
                         M                                           #; (f:lsu) ft6  <-- 28.269
       0     4683        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e0, (wrb) a3  <-- 0x001000e8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 28.269, ft4  = 1716.6632940
       0     4684        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4686        M                                           #; (f:fpu) ft4  <-- 2515.7996550
       0     4687        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e8]
       0     4688        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100208], (f:lsu) ft5  <-- 31.41
       0     4689        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100208, a0  = 56, (wrb) s1  <-- 0x00100240
                         M                                           #; (f:lsu) ft6  <-- 50.256
       0     4690        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e8, (wrb) a3  <-- 0x001000f0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 31.41, ft4  = 2515.7996550
       0     4691        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4692        M 0x80002ff4 add     a3, t2, t0             #; t2  = 0, t0  = 28, (wrb) a3  <-- 28
       0     4693        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 28, (wrb) a3  <-- 224
                         M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     4694        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 224, (wrb) a3  <-- 0x00100320
       0     4696        M 0x80003004 addi    t2, t2, 1              #; t2  = 0, (wrb) t2  <-- 1
       0     4697        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x001000f0, (wrb) t1  <-- 0x001000f8
                         M 0x80003000 fsd     ft4, 0(a3)             #; 4094.3406150 ~~> Doub[0x00100320]
       0     4698        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 1, a5  = 7, taken, goto 0x80002fc8
       0     4699        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x001000c0, (wrb) a3  <-- 0x001000c0
       0     4700        M 0x80002fcc mv      s1, t1                 #; t1  = 0x001000f8, (wrb) s1  <-- 0x001000f8
       0     4701        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4704        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4705        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c0], (f:fpu) ft4  <-- 0.0
       0     4706        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001000f8], (f:lsu) ft5  <-- 15.705
       0     4707        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001000f8, a0  = 56, (wrb) s1  <-- 0x00100130
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     4708        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 15.705, ft4  = 0.0
       0     4709        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4711        M                                           #; (f:fpu) ft4  <-- 98.65881
       0     4712        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c8]
       0     4713        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100130], (f:lsu) ft5  <-- 18.846
       0     4714        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100130, a0  = 56, (wrb) s1  <-- 0x00100168
                         M                                           #; (f:lsu) ft6  <-- 28.269
       0     4715        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c8, (wrb) a3  <-- 0x001000d0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 18.846, ft4  = 98.65881
       0     4716        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4718        M                                           #; (f:fpu) ft4  <-- 631.4163840
       0     4719        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d0]
       0     4720        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100168], (f:lsu) ft5  <-- 21.9870000
       0     4721        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100168, a0  = 56, (wrb) s1  <-- 0x001001a0
                         M                                           #; (f:lsu) ft6  <-- 50.256
       0     4722        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d0, (wrb) a3  <-- 0x001000d8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 21.9870000, ft4  = 631.4163840
       0     4723        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4725        M                                           #; (f:fpu) ft4  <-- 1736.3950560
       0     4726        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d8]
       0     4727        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001a0], (f:lsu) ft5  <-- 25.128
       0     4728        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001a0, a0  = 56, (wrb) s1  <-- 0x001001d8
                         M                                           #; (f:lsu) ft6  <-- 9.423
       0     4729        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d8, (wrb) a3  <-- 0x001000e0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 25.128, ft4  = 1736.3950560
       0     4730        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4732        M                                           #; (f:fpu) ft4  <-- 1973.1762000
       0     4733        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e0]
       0     4734        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft5  <-- 28.269
       0     4735        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001d8, a0  = 56, (wrb) s1  <-- 0x00100210
                         M                                           #; (f:lsu) ft6  <-- 31.41
       0     4736        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e0, (wrb) a3  <-- 0x001000e8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 28.269, ft4  = 1973.1762000
       0     4737        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4739        M                                           #; (f:fpu) ft4  <-- 2861.1054900
       0     4740        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e8]
       0     4741        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100210], (f:lsu) ft5  <-- 31.41
       0     4742        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100210, a0  = 56, (wrb) s1  <-- 0x00100248
                         M                                           #; (f:lsu) ft6  <-- 53.397
       0     4743        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e8, (wrb) a3  <-- 0x001000f0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 31.41, ft4  = 2861.1054900
       0     4744        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4745        M 0x80002ff4 add     a3, t2, t0             #; t2  = 1, t0  = 28, (wrb) a3  <-- 29
       0     4746        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 29, (wrb) a3  <-- 232
                         M                                           #; (f:fpu) ft4  <-- 4538.3052600
       0     4747        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 232, (wrb) a3  <-- 0x00100328
       0     4749        M 0x80003004 addi    t2, t2, 1              #; t2  = 1, (wrb) t2  <-- 2
       0     4750        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x001000f8, (wrb) t1  <-- 0x00100100
                         M 0x80003000 fsd     ft4, 0(a3)             #; 4538.3052600 ~~> Doub[0x00100328]
       0     4751        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 2, a5  = 7, taken, goto 0x80002fc8
       0     4752        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x001000c0, (wrb) a3  <-- 0x001000c0
       0     4753        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100100, (wrb) s1  <-- 0x00100100
       0     4754        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4757        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4758        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c0], (f:fpu) ft4  <-- 0.0
       0     4759        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100100], (f:lsu) ft5  <-- 15.705
       0     4760        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100100, a0  = 56, (wrb) s1  <-- 0x00100138
                         M                                           #; (f:lsu) ft6  <-- 9.423
       0     4761        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 15.705, ft4  = 0.0
       0     4762        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4764        M                                           #; (f:fpu) ft4  <-- 147.9882150
       0     4765        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c8]
       0     4766        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100138], (f:lsu) ft5  <-- 18.846
       0     4767        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100138, a0  = 56, (wrb) s1  <-- 0x00100170
                         M                                           #; (f:lsu) ft6  <-- 31.41
       0     4768        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c8, (wrb) a3  <-- 0x001000d0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 18.846, ft4  = 147.9882150
       0     4769        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4771        M                                           #; (f:fpu) ft4  <-- 739.9410750
       0     4772        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d0]
       0     4773        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100170], (f:lsu) ft5  <-- 21.9870000
       0     4774        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100170, a0  = 56, (wrb) s1  <-- 0x001001a8
                         M                                           #; (f:lsu) ft6  <-- 53.397
       0     4775        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d0, (wrb) a3  <-- 0x001000d8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 21.9870000, ft4  = 739.9410750
       0     4776        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4778        M                                           #; (f:fpu) ft4  <-- 1913.9809140
       0     4779        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d8]
       0     4780        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001a8], (f:lsu) ft5  <-- 25.128
       0     4781        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001a8, a0  = 56, (wrb) s1  <-- 0x001001e0
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     4782        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d8, (wrb) a3  <-- 0x001000e0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 25.128, ft4  = 1913.9809140
       0     4783        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4785        M                                           #; (f:fpu) ft4  <-- 2229.6891060
       0     4786        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e0]
       0     4787        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft5  <-- 28.269
       0     4788        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001e0, a0  = 56, (wrb) s1  <-- 0x00100218
                         M                                           #; (f:lsu) ft6  <-- 34.551
       0     4789        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e0, (wrb) a3  <-- 0x001000e8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 28.269, ft4  = 2229.6891060
       0     4790        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4792        M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     4793        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e8]
       0     4794        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100218], (f:lsu) ft5  <-- 31.41
       0     4795        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100218, a0  = 56, (wrb) s1  <-- 0x00100250
                         M                                           #; (f:lsu) ft6  <-- 56.538
       0     4796        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e8, (wrb) a3  <-- 0x001000f0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 31.41, ft4  = 3206.4113250
       0     4797        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4798        M 0x80002ff4 add     a3, t2, t0             #; t2  = 2, t0  = 28, (wrb) a3  <-- 30
       0     4799        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 30, (wrb) a3  <-- 240
                         M                                           #; (f:fpu) ft4  <-- 4982.2699050
       0     4800        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 240, (wrb) a3  <-- 0x00100330
       0     4802        M 0x80003004 addi    t2, t2, 1              #; t2  = 2, (wrb) t2  <-- 3
       0     4803        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100100, (wrb) t1  <-- 0x00100108
                         M 0x80003000 fsd     ft4, 0(a3)             #; 4982.2699050 ~~> Doub[0x00100330]
       0     4804        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 3, a5  = 7, taken, goto 0x80002fc8
       0     4805        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x001000c0, (wrb) a3  <-- 0x001000c0
       0     4806        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100108, (wrb) s1  <-- 0x00100108
       0     4807        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4810        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4811        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c0], (f:fpu) ft4  <-- 0.0
       0     4812        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100108], (f:lsu) ft5  <-- 15.705
       0     4813        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100108, a0  = 56, (wrb) s1  <-- 0x00100140
                         M                                           #; (f:lsu) ft6  <-- 12.564
       0     4814        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 15.705, ft4  = 0.0
       0     4815        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4817        M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     4818        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c8]
       0     4819        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100140], (f:lsu) ft5  <-- 18.846
       0     4820        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100140, a0  = 56, (wrb) s1  <-- 0x00100178
                         M                                           #; (f:lsu) ft6  <-- 34.551
       0     4821        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c8, (wrb) a3  <-- 0x001000d0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 18.846, ft4  = 197.3176200
       0     4822        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4824        M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     4825        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d0]
       0     4826        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100178], (f:lsu) ft5  <-- 21.9870000
       0     4827        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100178, a0  = 56, (wrb) s1  <-- 0x001001b0
                         M                                           #; (f:lsu) ft6  <-- 56.538
       0     4828        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d0, (wrb) a3  <-- 0x001000d8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 21.9870000, ft4  = 848.4657660
       0     4829        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4831        M                                           #; (f:fpu) ft4  <-- 2091.5667720
       0     4832        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d8]
       0     4833        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001b0], (f:lsu) ft5  <-- 25.128
       0     4834        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001b0, a0  = 56, (wrb) s1  <-- 0x001001e8
                         M                                           #; (f:lsu) ft6  <-- 15.705
       0     4835        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d8, (wrb) a3  <-- 0x001000e0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 25.128, ft4  = 2091.5667720
       0     4836        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4838        M                                           #; (f:fpu) ft4  <-- 2486.2020120
       0     4839        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e0]
       0     4840        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft5  <-- 28.269
       0     4841        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001e8, a0  = 56, (wrb) s1  <-- 0x00100220
                         M                                           #; (f:lsu) ft6  <-- 37.692
       0     4842        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e0, (wrb) a3  <-- 0x001000e8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 28.269, ft4  = 2486.2020120
       0     4843        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4845        M                                           #; (f:fpu) ft4  <-- 3551.7171600
       0     4846        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e8]
       0     4847        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100220], (f:lsu) ft5  <-- 31.41
       0     4848        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100220, a0  = 56, (wrb) s1  <-- 0x00100258
                         M                                           #; (f:lsu) ft6  <-- 59.679
       0     4849        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e8, (wrb) a3  <-- 0x001000f0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 31.41, ft4  = 3551.7171600
       0     4850        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4851        M 0x80002ff4 add     a3, t2, t0             #; t2  = 3, t0  = 28, (wrb) a3  <-- 31
       0     4852        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 31, (wrb) a3  <-- 248
                         M                                           #; (f:fpu) ft4  <-- 5426.2345500
       0     4853        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 248, (wrb) a3  <-- 0x00100338
       0     4855        M 0x80003004 addi    t2, t2, 1              #; t2  = 3, (wrb) t2  <-- 4
       0     4856        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100108, (wrb) t1  <-- 0x00100110
                         M 0x80003000 fsd     ft4, 0(a3)             #; 5426.2345500 ~~> Doub[0x00100338]
       0     4857        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 4, a5  = 7, taken, goto 0x80002fc8
       0     4858        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x001000c0, (wrb) a3  <-- 0x001000c0
       0     4859        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100110, (wrb) s1  <-- 0x00100110
       0     4860        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4863        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4864        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c0], (f:fpu) ft4  <-- 0.0
       0     4865        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100110], (f:lsu) ft5  <-- 15.705
       0     4866        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100110, a0  = 56, (wrb) s1  <-- 0x00100148
                         M                                           #; (f:lsu) ft6  <-- 15.705
       0     4867        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 15.705, ft4  = 0.0
       0     4868        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4870        M                                           #; (f:fpu) ft4  <-- 246.6470250
       0     4871        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c8]
       0     4872        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100148], (f:lsu) ft5  <-- 18.846
       0     4873        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100148, a0  = 56, (wrb) s1  <-- 0x00100180
                         M                                           #; (f:lsu) ft6  <-- 37.692
       0     4874        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c8, (wrb) a3  <-- 0x001000d0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 18.846, ft4  = 246.6470250
       0     4875        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4877        M                                           #; (f:fpu) ft4  <-- 956.9904570
       0     4878        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d0]
       0     4879        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100180], (f:lsu) ft5  <-- 21.9870000
       0     4880        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100180, a0  = 56, (wrb) s1  <-- 0x001001b8
                         M                                           #; (f:lsu) ft6  <-- 59.679
       0     4881        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d0, (wrb) a3  <-- 0x001000d8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 21.9870000, ft4  = 956.9904570
       0     4882        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4884        M                                           #; (f:fpu) ft4  <-- 2269.1526300
       0     4885        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d8]
       0     4886        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001b8], (f:lsu) ft5  <-- 25.128
       0     4887        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001b8, a0  = 56, (wrb) s1  <-- 0x001001f0
                         M                                           #; (f:lsu) ft6  <-- 18.846
       0     4888        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d8, (wrb) a3  <-- 0x001000e0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 25.128, ft4  = 2269.1526300
       0     4889        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4891        M                                           #; (f:fpu) ft4  <-- 2742.7149180
       0     4892        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e0]
       0     4893        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft5  <-- 28.269
       0     4894        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001f0, a0  = 56, (wrb) s1  <-- 0x00100228
                         M                                           #; (f:lsu) ft6  <-- 40.833
       0     4895        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e0, (wrb) a3  <-- 0x001000e8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 28.269, ft4  = 2742.7149180
       0     4896        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4898        M                                           #; (f:fpu) ft4  <-- 3897.0229950
       0     4899        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e8]
       0     4900        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100228], (f:lsu) ft5  <-- 31.41
       0     4901        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100228, a0  = 56, (wrb) s1  <-- 0x00100260
                         M                                           #; (f:lsu) ft6  <-- 62.82
       0     4902        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e8, (wrb) a3  <-- 0x001000f0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 31.41, ft4  = 3897.0229950
       0     4903        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4904        M 0x80002ff4 add     a3, t2, t0             #; t2  = 4, t0  = 28, (wrb) a3  <-- 32
       0     4905        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 32, (wrb) a3  <-- 256
                         M                                           #; (f:fpu) ft4  <-- 5870.1991950
       0     4906        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 256, (wrb) a3  <-- 0x00100340
       0     4908        M 0x80003004 addi    t2, t2, 1              #; t2  = 4, (wrb) t2  <-- 5
       0     4909        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100110, (wrb) t1  <-- 0x00100118
                         M 0x80003000 fsd     ft4, 0(a3)             #; 5870.1991950 ~~> Doub[0x00100340]
       0     4910        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 5, a5  = 7, taken, goto 0x80002fc8
       0     4911        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x001000c0, (wrb) a3  <-- 0x001000c0
       0     4912        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100118, (wrb) s1  <-- 0x00100118
       0     4913        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4916        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4917        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c0], (f:fpu) ft4  <-- 0.0
       0     4918        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100118], (f:lsu) ft5  <-- 15.705
       0     4919        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100118, a0  = 56, (wrb) s1  <-- 0x00100150
                         M                                           #; (f:lsu) ft6  <-- 18.846
       0     4920        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 15.705, ft4  = 0.0
       0     4921        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4923        M                                           #; (f:fpu) ft4  <-- 295.9764300
       0     4924        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c8]
       0     4925        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100150], (f:lsu) ft5  <-- 18.846
       0     4926        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100150, a0  = 56, (wrb) s1  <-- 0x00100188
                         M                                           #; (f:lsu) ft6  <-- 40.833
       0     4927        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c8, (wrb) a3  <-- 0x001000d0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 18.846, ft4  = 295.9764300
       0     4928        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4930        M                                           #; (f:fpu) ft4  <-- 1065.5151480
       0     4931        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d0]
       0     4932        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100188], (f:lsu) ft5  <-- 21.9870000
       0     4933        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100188, a0  = 56, (wrb) s1  <-- 0x001001c0
                         M                                           #; (f:lsu) ft6  <-- 62.82
       0     4934        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d0, (wrb) a3  <-- 0x001000d8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 21.9870000, ft4  = 1065.5151480
       0     4935        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4937        M                                           #; (f:fpu) ft4  <-- 2446.7384880
       0     4938        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d8]
       0     4939        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001c0], (f:lsu) ft5  <-- 25.128
       0     4940        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001c0, a0  = 56, (wrb) s1  <-- 0x001001f8
                         M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     4941        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d8, (wrb) a3  <-- 0x001000e0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 25.128, ft4  = 2446.7384880
       0     4942        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4944        M                                           #; (f:fpu) ft4  <-- 2999.2278240
       0     4945        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e0]
       0     4946        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft5  <-- 28.269
       0     4947        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001f8, a0  = 56, (wrb) s1  <-- 0x00100230
                         M                                           #; (f:lsu) ft6  <-- 43.9740000
       0     4948        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e0, (wrb) a3  <-- 0x001000e8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 28.269, ft4  = 2999.2278240
       0     4949        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     4951        M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4952        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e8]
       0     4953        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100230], (f:lsu) ft5  <-- 31.41
       0     4954        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100230, a0  = 56, (wrb) s1  <-- 0x00100268
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     4955        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e8, (wrb) a3  <-- 0x001000f0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 31.41, ft4  = 4242.3288300
       0     4956        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     4957        M 0x80002ff4 add     a3, t2, t0             #; t2  = 5, t0  = 28, (wrb) a3  <-- 33
       0     4958        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 33, (wrb) a3  <-- 264
                         M                                           #; (f:fpu) ft4  <-- 4340.9876400
       0     4959        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 264, (wrb) a3  <-- 0x00100348
       0     4961        M 0x80003004 addi    t2, t2, 1              #; t2  = 5, (wrb) t2  <-- 6
       0     4962        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100118, (wrb) t1  <-- 0x00100120
                         M 0x80003000 fsd     ft4, 0(a3)             #; 4340.9876400 ~~> Doub[0x00100348]
       0     4963        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 6, a5  = 7, taken, goto 0x80002fc8
       0     4964        M 0x80002fc8 mv      a3, a1                 #; a1  = 0x001000c0, (wrb) a3  <-- 0x001000c0
       0     4965        M 0x80002fcc mv      s1, t1                 #; t1  = 0x00100120, (wrb) s1  <-- 0x00100120
       0     4966        M 0x80002fd0 mv      s0, a4                 #; a4  = 6, (wrb) s0  <-- 6
       0     4969        M 0x80002fd4 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4970        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c0], (f:fpu) ft4  <-- 0.0
       0     4971        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 6, (wrb) s0  <-- 5
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100120], (f:lsu) ft5  <-- 15.705
       0     4972        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100120, a0  = 56, (wrb) s1  <-- 0x00100158
                         M                                           #; (f:lsu) ft6  <-- 21.9870000
       0     4973        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 15.705, ft4  = 0.0
       0     4974        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 5, taken, goto 0x80002fd8
       0     4976        M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     4977        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000c8]
       0     4978        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 5, (wrb) s0  <-- 4
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100158], (f:lsu) ft5  <-- 18.846
       0     4979        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100158, a0  = 56, (wrb) s1  <-- 0x00100190
                         M                                           #; (f:lsu) ft6  <-- 43.9740000
       0     4980        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000c8, (wrb) a3  <-- 0x001000d0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 18.846, ft4  = 345.3058350
       0     4981        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 4, taken, goto 0x80002fd8
       0     4983        M                                           #; (f:fpu) ft4  <-- 1174.0398390
       0     4984        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d0]
       0     4985        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 4, (wrb) s0  <-- 3
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100190], (f:lsu) ft5  <-- 21.9870000
       0     4986        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100190, a0  = 56, (wrb) s1  <-- 0x001001c8
                         M                                           #; (f:lsu) ft6  <-- 3.141
       0     4987        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d0, (wrb) a3  <-- 0x001000d8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 21.9870000, ft4  = 1174.0398390
       0     4988        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 3, taken, goto 0x80002fd8
       0     4990        M                                           #; (f:fpu) ft4  <-- 1243.1010060
       0     4991        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000d8]
       0     4992        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 3, (wrb) s0  <-- 2
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x001001c8], (f:lsu) ft5  <-- 25.128
       0     4993        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x001001c8, a0  = 56, (wrb) s1  <-- 0x00100200
                         M                                           #; (f:lsu) ft6  <-- 25.128
       0     4994        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000d8, (wrb) a3  <-- 0x001000e0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 25.128, ft4  = 1243.1010060
       0     4995        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 2, taken, goto 0x80002fd8
       0     4997        M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     4998        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e0]
       0     4999        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 2, (wrb) s0  <-- 1
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100200], (f:lsu) ft5  <-- 28.269
       0     5000        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100200, a0  = 56, (wrb) s1  <-- 0x00100238
                         M                                           #; (f:lsu) ft6  <-- 47.115
       0     5001        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e0, (wrb) a3  <-- 0x001000e8
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 28.269, ft4  = 1874.5173900
       0     5002        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 1, taken, goto 0x80002fd8
       0     5004        M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     5005        M 0x80002fd8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x001000e8]
       0     5006        M 0x80002fe4 addi    s0, s0, -1             #; s0  = 1, (wrb) s0  <-- 0
                         M 0x80002fdc fld     ft6, 0(s1)             #; ft6  <~~ Doub[0x00100238], (f:lsu) ft5  <-- 31.41
       0     5007        M 0x80002fe8 add     s1, s1, a0             #; s1  = 0x00100238, a0  = 56, (wrb) s1  <-- 0x00100270
                         M                                           #; (f:lsu) ft6  <-- 6.282
       0     5008        M 0x80002fec addi    a3, a3, 8              #; a3  = 0x001000e8, (wrb) a3  <-- 0x001000f0
                         M 0x80002fe0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 31.41, ft4  = 3206.4113250
       0     5009        M 0x80002ff0 bnez    s0, pc - 24            #; s0  = 0, not taken
       0     5010        M 0x80002ff4 add     a3, t2, t0             #; t2  = 6, t0  = 28, (wrb) a3  <-- 34
       0     5011        M 0x80002ff8 slli    a3, a3, 3              #; a3  = 34, (wrb) a3  <-- 272
                         M                                           #; (f:fpu) ft4  <-- 3403.7289450
       0     5012        M 0x80002ffc add     a3, s3, a3             #; s3  = 0x00100240, a3  = 272, (wrb) a3  <-- 0x00100350
       0     5014        M 0x80003004 addi    t2, t2, 1              #; t2  = 6, (wrb) t2  <-- 7
       0     5015        M 0x80003008 addi    t1, t1, 8              #; t1  = 0x00100120, (wrb) t1  <-- 0x00100128
                         M 0x80003000 fsd     ft4, 0(a3)             #; 3403.7289450 ~~> Doub[0x00100350]
       0     5016        M 0x8000300c bne     t2, a5, pc - 68        #; t2  = 7, a5  = 7, not taken
       0     5017        M 0x80003010 addi    a7, a7, 1              #; a7  = 4, (wrb) a7  <-- 5
       0     5018        M 0x80003014 add     a1, a1, a6             #; a1  = 0x001000c0, a6  = 48, (wrb) a1  <-- 0x001000f0
       0     5019        M 0x80003018 bne     a7, s2, pc - 92        #; a7  = 5, s2  = 5, not taken
       0     5020        M 0x8000301c j       pc + 0x28              #; goto 0x80003044
       0     5032        M 0x80003044 lw      s3, 12(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff1c]
       0     5035        M                                           #; (lsu) s3  <-- 6
       0     5036        M 0x80003048 lw      s2, 16(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff20]
       0     5039        M                                           #; (lsu) s2  <-- 0x00100000
       0     5040        M 0x8000304c lw      s1, 20(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff24]
       0     5043        M                                           #; (lsu) s1  <-- 0
       0     5044        M 0x80003050 lw      s0, 24(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff28]
       0     5047        M                                           #; (lsu) s0  <-- 0x00100240
       0     5048        M 0x80003054 lw      ra, 28(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff2c]
       0     5049        M 0x80003058 addi    sp, sp, 32             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff30
       0     5051        M                                           #; (lsu) ra  <-- 0x800009f8
       0     5052        M 0x8000305c ret                            #; ra  = 0x800009f8, goto 0x800009f8
       0     5055        M 0x800009f8 li      a3, 5                  #; (wrb) a3  <-- 5
       0     5056        M 0x800009fc li      a4, 6                  #; (wrb) a4  <-- 6
       0     5058        M 0x80000a00 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     5059        M 0x80000a04 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     5060        M 0x80000a08 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     5061        M 0x80000a0c li      a5, 0                  #; (wrb) a5  <-- 0
       0     5070        M 0x80000a10 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002a10
       0     5071        M 0x80000a14 jalr    ra, ra, 840            #; ra  = 0x80002a10, (wrb) ra  <-- 0x80000a18, goto 0x80002d58
       0     5084        M 0x80002d58 addi    sp, sp, -32            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff10
       0     5085        M 0x80002d5c sw      ra, 28(sp)             #; sp  = 0x0011ff10, 0x80000a18 ~~> Word[0x0011ff2c]
       0     5087        M 0x80002d60 sw      s0, 24(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff28]
       0     5088        M 0x80002d64 sw      s1, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     5089        M 0x80002d68 sw      s2, 16(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff20]
       0     5090        M 0x80002d6c sw      s3, 12(sp)             #; sp  = 0x0011ff10, 6 ~~> Word[0x0011ff1c]
       0     5091        M 0x80002d70 mv      s2, a3                 #; a3  = 5, (wrb) s2  <-- 5
       0     5092        M 0x80002d74 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     5093        M 0x80002d78 slti    s1, a5, 1              #; a5  = 0, (wrb) s1  <-- 1
       0     5094        M 0x80002d7c or      a3, a3, s1             #; a3  = 0, s1  = 1, (wrb) a3  <-- 1
       0     5095        M 0x80002d80 bnez    a3, pc + 708           #; a3  = 1, taken, goto 0x80003044
       0     5100        M 0x80003044 lw      s3, 12(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff1c]
       0     5103        M                                           #; (lsu) s3  <-- 6
       0     5104        M 0x80003048 lw      s2, 16(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff20]
       0     5107        M                                           #; (lsu) s2  <-- 0x00100000
       0     5108        M 0x8000304c lw      s1, 20(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff24]
       0     5111        M                                           #; (lsu) s1  <-- 0
       0     5112        M 0x80003050 lw      s0, 24(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff28]
       0     5115        M                                           #; (lsu) s0  <-- 0x00100240
       0     5116        M 0x80003054 lw      ra, 28(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff2c]
       0     5117        M 0x80003058 addi    sp, sp, 32             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff30
       0     5119        M                                           #; (lsu) ra  <-- 0x80000a18
       0     5120        M 0x8000305c ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     5123        M 0x80000a18 addi    a0, s0, 448            #; s0  = 0x00100240, (wrb) a0  <-- 0x00100400
       0     5124        M 0x80000a1c srli    a1, s0, 20             #; s0  = 0x00100240, (wrb) a1  <-- 1
       0     5126        M 0x80000a20 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     5127        M 0x80000a24 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     5128        M 0x80000a28 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     5129        M 0x80000a2c sltu    a0, a0, a2             #; a0  = 0x00100400, a2  = 0x00120001, (wrb) a0  <-- 1
       0     5138        M 0x80000a30 and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5139        M 0x80000a34 beqz    a0, pc + 432           #; a0  = 1, not taken
       0     5140        M 0x80000a38 li      s4, 8                  #; (wrb) s4  <-- 8
       0     5141        M 0x80000a3c li      a0, 64                 #; (wrb) a0  <-- 64
       0     5150        M 0x80000a40 li      a1, 192                #; (wrb) a1  <-- 192
       0     5151        M 0x80000a44 scfgw   s3, a0                 #; s3  = 6, a0  = 64
       0     5152        M 0x80000a48 scfgw   s4, a1                 #; s4  = 8, a1  = 192
       0     5153        M 0x80000a4c li      s5, 4                  #; (wrb) s5  <-- 4
       0     5162        M 0x80000a50 li      a0, 96                 #; (wrb) a0  <-- 96
       0     5163        M 0x80000a54 li      a1, 224                #; (wrb) a1  <-- 224
       0     5164        M 0x80000a58 scfgw   s5, a0                 #; s5  = 4, a0  = 96
       0     5165        M 0x80000a5c scfgw   s4, a1                 #; s4  = 8, a1  = 224
       0     5174        M 0x80000a60 li      a0, 32                 #; (wrb) a0  <-- 32
       0     5175        M 0x80000a64 scfgw   zero, a0               #; a0  = 32
       0     5176        M 0x80000a68 scfgwi  s0, 800                #; s0  = 0x00100240
       0     5178        M 0x80000a6c csrrsi  a0, ssr, 1             #; 
       0     5188        M 0x80000a70 fsgnj.d ft3, ft0, ft0          #; ft0  = 2081.7008910, ft0  = 2081.7008910
       0     5189        M                                           #; (f:fpu) ft3  <-- 2081.7008910
       0     5190        M 0x80000a74 fadd.d  ft3, ft0, ft3          #; ft0  = 2288.8843920, ft3  = 2081.7008910
       0     5193        M                                           #; (f:fpu) ft3  <-- 4370.5852830
       0     5194        M 0x80000a78 fadd.d  ft3, ft0, ft3          #; ft0  = 2496.0678930, ft3  = 4370.5852830
       0     5197        M                                           #; (f:fpu) ft3  <-- 6866.6531760
       0     5198        M 0x80000a7c fadd.d  ft3, ft0, ft3          #; ft0  = 2703.2513940, ft3  = 6866.6531760
       0     5201        M                                           #; (f:fpu) ft3  <-- 9569.9045700
       0     5202        M 0x80000a80 fadd.d  ft3, ft0, ft3          #; ft0  = 2910.4348950, ft3  = 9569.9045700
       0     5205        M                                           #; (f:fpu) ft3  <-- 12480.3394650
       0     5206        M 0x80000a84 fadd.d  ft3, ft0, ft3          #; ft0  = 1933.7126760, ft3  = 12480.3394650
       0     5209        M                                           #; (f:fpu) ft3  <-- 14414.0521410
       0     5210        M 0x80000a88 fadd.d  ft3, ft0, ft3          #; ft0  = 1548.9433170, ft3  = 14414.0521410
       0     5213        M                                           #; (f:fpu) ft3  <-- 15962.9954580
       0     5214        M 0x80000a8c fadd.d  ft3, ft0, ft3          #; ft0  = 5100.6604770, ft3  = 15962.9954580
       0     5217        M                                           #; (f:fpu) ft3  <-- 21063.6559350
       0     5218        M 0x80000a90 fadd.d  ft3, ft0, ft3          #; ft0  = 5663.0156940, ft3  = 21063.6559350
       0     5221        M                                           #; (f:fpu) ft3  <-- 26726.6716290
       0     5222        M 0x80000a94 fadd.d  ft3, ft0, ft3          #; ft0  = 6225.3709110, ft3  = 26726.6716290
       0     5225        M                                           #; (f:fpu) ft3  <-- 32952.0425400
       0     5226        M 0x80000a98 fadd.d  ft3, ft0, ft3          #; ft0  = 6787.7261280, ft3  = 32952.0425400
       0     5229        M                                           #; (f:fpu) ft3  <-- 39739.7686680
       0     5230        M 0x80000a9c fadd.d  ft3, ft0, ft3          #; ft0  = 7350.0813450, ft3  = 39739.7686680
       0     5233        M                                           #; (f:fpu) ft3  <-- 47089.8500130
       0     5234        M 0x80000aa0 fadd.d  ft3, ft0, ft3          #; ft0  = 5544.6251220, ft3  = 47089.8500130
       0     5237        M                                           #; (f:fpu) ft3  <-- 52634.4751350
       0     5238        M 0x80000aa4 fadd.d  ft3, ft0, ft3          #; ft0  = 4331.1217590, ft3  = 52634.4751350
       0     5241        M                                           #; (f:fpu) ft3  <-- 56965.5968940
       0     5242        M 0x80000aa8 fadd.d  ft3, ft0, ft3          #; ft0  = 8119.6200630, ft3  = 56965.5968940
       0     5245        M                                           #; (f:fpu) ft3  <-- 65085.2169570
       0     5246        M 0x80000aac fadd.d  ft3, ft0, ft3          #; ft0  = 9037.1469960, ft3  = 65085.2169570
       0     5249        M                                           #; (f:fpu) ft3  <-- 74122.3639530
       0     5250        M 0x80000ab0 fadd.d  ft3, ft0, ft3          #; ft0  = 9954.6739290, ft3  = 74122.3639530
       0     5253        M                                           #; (f:fpu) ft3  <-- 84077.0378820
       0     5254        M 0x80000ab4 fadd.d  ft3, ft0, ft3          #; ft0  = 10872.2008620, ft3  = 84077.0378820
       0     5257        M                                           #; (f:fpu) ft3  <-- 94949.2387440
       0     5258        M 0x80000ab8 fadd.d  ft3, ft0, ft3          #; ft0  = 11789.7277950, ft3  = 94949.2387440
       0     5261        M                                           #; (f:fpu) ft3  <-- 106738.9665390
       0     5262        M 0x80000abc fadd.d  ft3, ft0, ft3          #; ft0  = 9155.5375680, ft3  = 106738.9665390
       0     5265        M                                           #; (f:fpu) ft3  <-- 115894.5041070
       0     5266        M 0x80000ac0 fadd.d  ft3, ft0, ft3          #; ft0  = 7113.3002010, ft3  = 115894.5041070
       0     5269        M                                           #; (f:fpu) ft3  <-- 123007.8043080
       0     5270        M 0x80000ac4 fadd.d  ft3, ft0, ft3          #; ft0  = 2851.2396090, ft3  = 123007.8043080
       0     5273        M                                           #; (f:fpu) ft3  <-- 125859.0439170
       0     5274        M 0x80000ac8 fadd.d  ft3, ft0, ft3          #; ft0  = 3334.6677780, ft3  = 125859.0439170
       0     5277        M                                           #; (f:fpu) ft3  <-- 129193.7116950
       0     5278        M 0x80000acc fadd.d  ft3, ft0, ft3          #; ft0  = 3818.0959470, ft3  = 129193.7116950
       0     5281        M                                           #; (f:fpu) ft3  <-- 133011.8076420
       0     5282        M 0x80000ad0 fadd.d  ft3, ft0, ft3          #; ft0  = 4301.5241160, ft3  = 133011.8076420
       0     5285        M                                           #; (f:fpu) ft3  <-- 137313.3317580
       0     5286        M 0x80000ad4 fadd.d  ft3, ft0, ft3          #; ft0  = 4784.9522850, ft3  = 137313.3317580
       0     5289        M                                           #; (f:fpu) ft3  <-- 142098.2840430
       0     5290        M 0x80000ad8 fadd.d  ft3, ft0, ft3          #; ft0  = 4479.1099740, ft3  = 142098.2840430
       0     5293        M                                           #; (f:fpu) ft3  <-- 146577.3940170
       0     5294        M 0x80000b00 li      a3, 5                  #; (wrb) a3  <-- 5
                         M 0x80000adc fadd.d  ft3, ft0, ft3          #; ft0  = 4765.2205230, ft3  = 146577.3940170
       0     5295        M 0x80000b04 li      a5, 7                  #; (wrb) a5  <-- 7
       0     5296        M 0x80000b08 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     5297        M 0x80000b0c mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
                         M                                           #; (f:fpu) ft3  <-- 151342.6145400
       0     5298        M 0x80000ae0 fadd.d  ft3, ft0, ft3          #; ft0  = 4094.3406150, ft3  = 151342.6145400
       0     5301        M                                           #; (f:fpu) ft3  <-- 155436.9551550
       0     5302        M 0x80000ae4 fadd.d  ft3, ft0, ft3          #; ft0  = 4538.3052600, ft3  = 155436.9551550
       0     5305        M                                           #; (f:fpu) ft3  <-- 159975.2604150
       0     5306        M 0x80000b10 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
                         M 0x80000ae8 fadd.d  ft3, ft0, ft3          #; ft0  = 4982.2699050, ft3  = 159975.2604150
       0     5307        M 0x80000b14 li      a4, 0                  #; (wrb) a4  <-- 0
       0     5308        M 0x80000b18 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002b18
       0     5309        M 0x80000b1c jalr    ra, ra, 576            #; ra  = 0x80002b18, (wrb) ra  <-- 0x80000b20, goto 0x80002d58
                         M                                           #; (f:fpu) ft3  <-- 164957.5303200
       0     5310        M 0x80000aec fadd.d  ft3, ft0, ft3          #; ft0  = 5426.2345500, ft3  = 164957.5303200
       0     5313        M                                           #; (f:fpu) ft3  <-- 170383.7648700
       0     5314        M 0x80000af0 fadd.d  ft3, ft0, ft3          #; ft0  = 5870.1991950, ft3  = 170383.7648700
       0     5317        M                                           #; (f:fpu) ft3  <-- 176253.9640650
       0     5318        M 0x80000af4 fadd.d  ft3, ft0, ft3          #; ft0  = 4340.9876400, ft3  = 176253.9640650
       0     5320        M 0x80002d58 addi    sp, sp, -32            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff10
       0     5321        M 0x80002d5c sw      ra, 28(sp)             #; sp  = 0x0011ff10, 0x80000b20 ~~> Word[0x0011ff2c]
                         M                                           #; (f:fpu) ft3  <-- 180594.9517050
       0     5322        M 0x80000af8 fadd.d  fs0, ft0, ft3          #; ft0  = 3403.7289450, ft3  = 180594.9517050
       0     5323        M 0x80002d60 sw      s0, 24(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff28]
                         M 0x80000afc csrrci  a0, ssr, 1             #; 
       0     5324        M 0x80002d64 sw      s1, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     5325        M 0x80002d68 sw      s2, 16(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff20]
                         M                                           #; (f:fpu) fs0  <-- 183998.6806500
       0     5326        M 0x80002d6c sw      s3, 12(sp)             #; sp  = 0x0011ff10, 6 ~~> Word[0x0011ff1c]
       0     5327        M 0x80002d70 mv      s2, a3                 #; a3  = 5, (wrb) s2  <-- 5
       0     5328        M 0x80002d74 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     5329        M 0x80002d78 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     5330        M 0x80002d7c or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     5331        M 0x80002d80 bnez    a3, pc + 708           #; a3  = 0, not taken
       0     5332        M 0x80002d84 mv      s3, a0                 #; a0  = 0x00100240, (wrb) s3  <-- 0x00100240
       0     5333        M 0x80002d88 bge     zero, a4, pc + 412     #; a4  = 0, taken, goto 0x80002f24
       0     5345        M 0x80002f24 addi    a0, s2, -1             #; s2  = 5, (wrb) a0  <-- 4
       0     5346        M 0x80002f28 mul     a1, a0, a5             #; a0  = 4, a5  = 7
       0     5349        M                                           #; (acc) a1  <-- 0x00459593
       0     5350        M 0x80002f2c slli    a1, a1, 4              #; a1  = 28, (wrb) a1  <-- 448
       0     5357        M 0x80002f30 add     a1, a1, s3             #; a1  = 448, s3  = 0x00100240, (wrb) a1  <-- 0x00100400
       0     5358        M 0x80002f34 srli    a2, s3, 20             #; s3  = 0x00100240, (wrb) a2  <-- 1
       0     5359        M 0x80002f38 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     5360        M 0x80002f3c lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     5369        M 0x80002f40 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     5370        M 0x80002f44 sltu    a1, a1, a3             #; a1  = 0x00100400, a3  = 0x00120001, (wrb) a1  <-- 1
       0     5371        M 0x80002f48 and     a1, a2, a1             #; a2  = 1, a1  = 1, (wrb) a1  <-- 1
       0     5372        M 0x80002f4c beqz    a1, pc + 212           #; a1  = 1, not taken
       0     5381        M 0x80002f50 li      a1, 0                  #; (wrb) a1  <-- 0
       0     5382        M 0x80002f54 addi    a2, a5, -1             #; a5  = 7, (wrb) a2  <-- 6
       0     5383        M 0x80002f58 li      a3, 8                  #; (wrb) a3  <-- 8
       0     5384        M 0x80002f5c li      a4, 64                 #; (wrb) a4  <-- 64
       0     5393        M 0x80002f60 scfgw   a2, a4                 #; a2  = 6, a4  = 64
       0     5394        M 0x80002f64 li      a2, 192                #; (wrb) a2  <-- 192
       0     5395        M 0x80002f68 scfgw   a3, a2                 #; a3  = 8, a2  = 192
       0     5396        M 0x80002f6c li      a2, 96                 #; (wrb) a2  <-- 96
       0     5405        M 0x80002f70 li      a4, 224                #; (wrb) a4  <-- 224
       0     5406        M 0x80002f74 scfgw   a0, a2                 #; a0  = 4, a2  = 96
       0     5407        M 0x80002f78 scfgw   a3, a4                 #; a3  = 8, a4  = 224
       0     5408        M 0x80002f7c li      a0, 32                 #; (wrb) a0  <-- 32
       0     5417        M 0x80002f80 scfgw   zero, a0               #; a0  = 32
       0     5418        M 0x80002f84 scfgwi  s3, 928                #; s3  = 0x00100240
       0     5420        M                                           #; (acc) gp  <-- 0xd20001d3
                         M 0x80002f88 csrrsi  a0, ssr, 1             #; 
       0     5421        M 0x80002f8c fcvt.d.w ft3, zero             #; ac1  = 0
       0     5422        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5429        M 0x80002f90 mv      a0, a5                 #; a5  = 7, (wrb) a0  <-- 7
       0     5431        M 0x80002f98 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     5432        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5433        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5434        M 0x80002f98 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     5435        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5436        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5437        M 0x80002f98 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     5438        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5439        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5440        M 0x80002f98 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     5441        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5442        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5443        M 0x80002f98 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     5444        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5445        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5446        M 0x80002f98 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     5447        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5448        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5449        M 0x80002f98 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     5450        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5451        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5462        M 0x80002fa0 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     5463        M 0x80002fa4 bne     a1, s2, pc - 20        #; a1  = 1, s2  = 5, taken, goto 0x80002f90
       0     5464        M 0x80002f90 mv      a0, a5                 #; a5  = 7, (wrb) a0  <-- 7
       0     5466        M 0x80002f98 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     5467        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5468        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5469        M 0x80002f98 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     5470        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5471        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5472        M 0x80002f98 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     5473        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5474        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5475        M 0x80002f98 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     5476        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5477        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5478        M 0x80002f98 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     5479        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5480        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5481        M 0x80002f98 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     5482        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5483        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5484        M 0x80002f98 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     5485        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5486        M 0x80002fa0 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5487        M 0x80002fa4 bne     a1, s2, pc - 20        #; a1  = 2, s2  = 5, taken, goto 0x80002f90
       0     5488        M 0x80002f90 mv      a0, a5                 #; a5  = 7, (wrb) a0  <-- 7
       0     5490        M 0x80002f98 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     5491        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5492        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5493        M 0x80002f98 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     5494        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5495        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5496        M 0x80002f98 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     5497        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5498        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5499        M 0x80002f98 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     5500        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5501        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5502        M 0x80002f98 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     5503        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5504        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5505        M 0x80002f98 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     5506        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5507        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5508        M 0x80002f98 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     5509        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5510        M 0x80002fa0 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5511        M 0x80002fa4 bne     a1, s2, pc - 20        #; a1  = 3, s2  = 5, taken, goto 0x80002f90
       0     5512        M 0x80002f90 mv      a0, a5                 #; a5  = 7, (wrb) a0  <-- 7
       0     5514        M 0x80002f98 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     5515        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5516        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5517        M 0x80002f98 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     5518        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5519        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5520        M 0x80002f98 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     5521        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5522        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5523        M 0x80002f98 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     5524        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5525        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5526        M 0x80002f98 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     5527        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5528        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5529        M 0x80002f98 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     5530        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5531        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5532        M 0x80002f98 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     5533        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5534        M 0x80002fa0 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5535        M 0x80002fa4 bne     a1, s2, pc - 20        #; a1  = 4, s2  = 5, taken, goto 0x80002f90
       0     5536        M 0x80002f90 mv      a0, a5                 #; a5  = 7, (wrb) a0  <-- 7
       0     5538        M 0x80002f98 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     5539        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5540        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5541        M 0x80002f98 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     5542        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5543        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5544        M 0x80002f98 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     5545        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5546        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5547        M 0x80002f98 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     5548        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5549        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5550        M 0x80002f98 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     5551        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5552        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5553        M 0x80002f98 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     5554        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80002f94
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5555        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5556        M 0x80002f98 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     5557        M 0x80002f9c bnez    a0, pc - 8             #; a0  = 0, not taken
                         M 0x80002f94 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     5558        M 0x80002fa0 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     5559        M 0x80002fa4 bne     a1, s2, pc - 20        #; a1  = 5, s2  = 5, not taken
       0     5561        M 0x80002fac j       pc + 0x98              #; goto 0x80003044
                         M 0x80002fa8 csrrci  a0, ssr, 1             #; 
       0     5563        M 0x80003044 lw      s3, 12(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff1c]
       0     5566        M                                           #; (lsu) s3  <-- 6
       0     5567        M 0x80003048 lw      s2, 16(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff20]
       0     5570        M                                           #; (lsu) s2  <-- 0x00100000
       0     5571        M 0x8000304c lw      s1, 20(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff24]
       0     5574        M                                           #; (lsu) s1  <-- 0
       0     5575        M 0x80003050 lw      s0, 24(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff28]
       0     5578        M                                           #; (lsu) s0  <-- 0x00100240
       0     5579        M 0x80003054 lw      ra, 28(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff2c]
       0     5580        M 0x80003058 addi    sp, sp, 32             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff30
       0     5582        M                                           #; (lsu) ra  <-- 0x80000b20
       0     5583        M 0x8000305c ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     5586        M 0x80000b20 li      a0, 64                 #; (wrb) a0  <-- 64
       0     5587        M 0x80000b24 li      a1, 192                #; (wrb) a1  <-- 192
       0     5588        M 0x80000b28 scfgw   s3, a0                 #; s3  = 6, a0  = 64
       0     5589        M 0x80000b2c scfgw   s4, a1                 #; s4  = 8, a1  = 192
       0     5598        M 0x80000b30 li      a0, 96                 #; (wrb) a0  <-- 96
       0     5599        M 0x80000b34 li      a1, 224                #; (wrb) a1  <-- 224
       0     5600        M 0x80000b38 scfgw   s5, a0                 #; s5  = 4, a0  = 96
       0     5601        M 0x80000b3c scfgw   s4, a1                 #; s4  = 8, a1  = 224
       0     5610        M 0x80000b40 li      a0, 32                 #; (wrb) a0  <-- 32
       0     5611        M 0x80000b44 scfgw   zero, a0               #; a0  = 32
       0     5612        M 0x80000b48 scfgwi  s0, 800                #; s0  = 0x00100240
       0     5614        M 0x80000b4c csrrsi  a0, ssr, 1             #; 
       0     5624        M 0x80000b50 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     5625        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5626        M 0x80000b54 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5629        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5630        M 0x80000b58 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5633        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5634        M 0x80000b5c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5637        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5638        M 0x80000b60 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5641        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5642        M 0x80000b64 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5645        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5646        M 0x80000b68 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5649        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5650        M 0x80000b6c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5653        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5654        M 0x80000b70 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5657        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5658        M 0x80000b74 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5661        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5662        M 0x80000b78 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5665        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5666        M 0x80000b7c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5669        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5670        M 0x80000b80 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5673        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5674        M 0x80000b84 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5677        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5678        M 0x80000b88 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5681        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5682        M 0x80000b8c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5685        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5686        M 0x80000b90 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5689        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5690        M 0x80000b94 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5693        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5694        M 0x80000b98 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5697        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5698        M 0x80000b9c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5701        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5702        M 0x80000ba0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5705        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5706        M 0x80000ba4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5709        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5710        M 0x80000ba8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5713        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5714        M 0x80000bac fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5717        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5718        M 0x80000bb0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5721        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5722        M 0x80000bb4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5725        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5726        M 0x80000bb8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5729        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5730        M 0x80000be0 j       pc + 0x24c             #; goto 0x80000e2c
                         M 0x80000bbc fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5733        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5734        M 0x80000bc0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5737        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5738        M 0x80000bc4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5741        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5742        M 0x80000e2c auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003e2c
                         M 0x80000bc8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5745        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5746        M 0x80000bcc fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5749        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5750        M 0x80000bd0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5753        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5754        M 0x80000e30 addi    a0, a0, -1588          #; a0  = 0x80003e2c, (wrb) a0  <-- 0x800037f8
                         M 0x80000bd4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5757        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5758        M 0x80000bd8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     5759        M 0x80000bdc csrrci  a0, ssr, 1             #; 
       0     5761        M 0x80000e34 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800037f8], (f:fpu) ft3  <-- 0.0
       0     5768        M 0x80000e48 lw      a2, 0(sp)              #; sp  = 0x0011ff30, a2  <~~ Word[0x0011ff30]
       0     5770        M                                           #; (f:lsu) ft4  <-- -183998.6806500
       0     5771        M 0x80000e38 fadd.d  ft4, fs0, ft4          #; fs0  = 183998.6806500, ft4  = -183998.6806500
       0     5772        M                                           #; (lsu) a2  <-- 0
       0     5773        M 0x80000e4c lw      a3, 4(sp)              #; sp  = 0x0011ff30, a3  <~~ Word[0x0011ff34]
       0     5774        M                                           #; (f:fpu) ft4  <-- -0.0000000
       0     5775        M 0x80000e3c fadd.d  ft3, ft4, ft3          #; ft4  = -0.0000000, ft3  = 0.0
       0     5776        M                                           #; (lsu) a3  <-- 0
       0     5778        M 0x80000e50 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002e50
                         M                                           #; (f:fpu) ft3  <-- -0.0000000
       0     5779        M 0x80000e54 addi    a0, a0, 1669           #; a0  = 0x80002e50, (wrb) a0  <-- 0x800034d5
                         M 0x80000e40 fsgnjx.d fs0, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000
       0     5780        M 0x80000e58 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000e58
                         M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     5781        M 0x80000e5c jalr    ra, ra, 68             #; ra  = 0x80000e58, (wrb) ra  <-- 0x80000e60, goto 0x80000e9c
                         M 0x80000e44 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff30]
       0     5792        M 0x80000e9c addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
       0     5795        M 0x80000ea0 sw      ra, 12(sp)             #; sp  = 0x0011ff00, 0x80000e60 ~~> Word[0x0011ff0c]
       0     5796        M 0x80000ea4 mv      t0, a0                 #; a0  = 0x800034d5, (wrb) t0  <-- 0x800034d5
       0     5797        M 0x80000ea8 sw      a7, 44(sp)             #; sp  = 0x0011ff00, 5 ~~> Word[0x0011ff2c]
       0     5798        M 0x80000eac sw      a6, 40(sp)             #; sp  = 0x0011ff00, 48 ~~> Word[0x0011ff28]
       0     5807        M 0x80000eb0 sw      a5, 36(sp)             #; sp  = 0x0011ff00, 7 ~~> Word[0x0011ff24]
       0     5808        M 0x80000eb4 sw      a4, 32(sp)             #; sp  = 0x0011ff00, 224 ~~> Word[0x0011ff20]
       0     5809        M 0x80000eb8 sw      a3, 28(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff1c]
       0     5810        M 0x80000ebc sw      a2, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
       0     5819        M 0x80000ec0 sw      a1, 20(sp)             #; sp  = 0x0011ff00, 224 ~~> Word[0x0011ff14]
       0     5820        M 0x80000ec4 addi    a0, sp, 20             #; sp  = 0x0011ff00, (wrb) a0  <-- 0x0011ff14
       0     5821        M 0x80000ec8 sw      a0, 8(sp)              #; sp  = 0x0011ff00, 0x0011ff14 ~~> Word[0x0011ff08]
       0     5822        M 0x80000ecc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ecc
       0     5831        M 0x80000ed0 addi    a0, a0, -988           #; a0  = 0x80001ecc, (wrb) a0  <-- 0x80001af0
       0     5832        M 0x80000ed4 addi    a1, sp, 7              #; sp  = 0x0011ff00, (wrb) a1  <-- 0x0011ff07
       0     5833        M 0x80000ed8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     5834        M 0x80000edc addi    a4, sp, 20             #; sp  = 0x0011ff00, (wrb) a4  <-- 0x0011ff14
       0     5843        M 0x80000ee0 mv      a3, t0                 #; t0  = 0x800034d5, (wrb) a3  <-- 0x800034d5
       0     5844        M 0x80000ee4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000ee4
       0     5845        M 0x80000ee8 jalr    ra, ra, 20             #; ra  = 0x80000ee4, (wrb) ra  <-- 0x80000eec, goto 0x80000ef8
       0     5855        M 0x80000ef8 addi    sp, sp, -112           #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fe90
       0     5856        M 0x80000efc sw      ra, 108(sp)            #; sp  = 0x0011fe90, 0x80000eec ~~> Word[0x0011fefc]
       0     5867        M 0x80000f00 sw      s0, 104(sp)            #; sp  = 0x0011fe90, 0x00100240 ~~> Word[0x0011fef8]
       0     5868        M 0x80000f04 sw      s1, 100(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef4]
       0     5869        M 0x80000f08 sw      s2, 96(sp)             #; sp  = 0x0011fe90, 0x00100000 ~~> Word[0x0011fef0]
       0     5870        M 0x80000f0c sw      s3, 92(sp)             #; sp  = 0x0011fe90, 6 ~~> Word[0x0011feec]
       0     5879        M 0x80000f10 sw      s4, 88(sp)             #; sp  = 0x0011fe90, 8 ~~> Word[0x0011fee8]
       0     5880        M 0x80000f14 sw      s5, 84(sp)             #; sp  = 0x0011fe90, 4 ~~> Word[0x0011fee4]
       0     5881        M 0x80000f18 sw      s6, 80(sp)             #; sp  = 0x0011fe90, 0x001000f0 ~~> Word[0x0011fee0]
       0     5882        M 0x80000f1c sw      s7, 76(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fedc]
       0     5891        M 0x80000f20 sw      s8, 72(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed8]
       0     5892        M 0x80000f24 sw      s9, 68(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed4]
       0     5893        M 0x80000f28 sw      s10, 64(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed0]
       0     5894        M 0x80000f2c sw      s11, 60(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fecc]
       0     5903        M 0x80000f30 mv      s3, a4                 #; a4  = 0x0011ff14, (wrb) s3  <-- 0x0011ff14
       0     5904        M 0x80000f34 mv      s0, a3                 #; a3  = 0x800034d5, (wrb) s0  <-- 0x800034d5
       0     5905        M 0x80000f38 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5906        M 0x80000f3c mv      s4, a1                 #; a1  = 0x0011ff07, (wrb) s4  <-- 0x0011ff07
       0     5915        M 0x80000f40 beqz    a1, pc + 12            #; a1  = 0x0011ff07, not taken
       0     5916        M 0x80000f44 mv      s2, a0                 #; a0  = 0x80001af0, (wrb) s2  <-- 0x80001af0
       0     5917        M 0x80000f48 j       pc + 0xc               #; goto 0x80000f54
       0     5927        M 0x80000f54 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5928        M 0x80000f58 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5929        M 0x80000f5c li      s11, 16                #; (wrb) s11 <-- 16
       0     5939        M 0x80000f60 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5940        M 0x80000f64 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5941        M 0x80000f68 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5942        M 0x80000f6c sw      a0, 24(sp)             #; sp  = 0x0011fe90, 2048 ~~> Word[0x0011fea8]
       0     5951        M 0x80000f70 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5952        M 0x80000f74 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5953        M 0x80000f78 sw      a0, 16(sp)             #; sp  = 0x0011fe90, 65535 ~~> Word[0x0011fea0]
       0     5954        M 0x80000f7c addi    s10, s0, 2             #; s0  = 0x800034d5, (wrb) s10 <-- 0x800034d7
       0     5963        M 0x80000f80 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5964        M 0x80000f84 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5965        M 0x80000f88 lbu     a0, 0(s0)              #; s0  = 0x800034d5, a0  <~~ Byte[0x800034d5]
       0     5976        M                                           #; (lsu) a0  <-- 101
       0     5977        M 0x80000f8c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     5978        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     5979        M 0x80000f94 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5980        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5981        M 0x80000f9c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5990        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5991        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     6013        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     6014        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6015        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6016        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6025        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     6026        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     6027        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     6028        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6039        M                                           #; (lsu) a4  <-- 0
       0     6040        M 0x80001b10 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     6041        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 1 ~~> Word[0x800038b4]
       0     6042        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 0, (wrb) a4  <-- 0x800038b4
       0     6043        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b4, 101 ~~> Byte[0x800038fc]
       0     6049        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6065        M                                           #; (lsu) a4  <-- 1
       0     6066        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     6067        M 0x80001b28 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     6068        M 0x80001b2c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     6069        M 0x80001b30 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     6070        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6071        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     6092        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     6106        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034d5, (wrb) s0  <-- 0x800034d6
       0     6107        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034d7, (wrb) s10 <-- 0x800034d8
       0     6109        M 0x80000fb0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     6110        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034d6, a0  <~~ Byte[0x800034d6]
       0     6121        M                                           #; (lsu) a0  <-- 114
       0     6122        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f90
       0     6123        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     6124        M 0x80000f94 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     6125        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6126        M 0x80000f9c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     6127        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6128        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     6131        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     6132        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6133        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6134        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6135        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     6136        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     6137        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6138        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     6139        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6150        M                                           #; (lsu) a4  <-- 1
       0     6151        M 0x80001b10 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     6152        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 2 ~~> Word[0x800038b4]
       0     6153        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 1, (wrb) a4  <-- 0x800038b5
       0     6154        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b5, 114 ~~> Byte[0x800038fd]
       0     6155        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6176        M                                           #; (lsu) a4  <-- 2
       0     6177        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     6178        M 0x80001b28 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     6179        M 0x80001b2c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     6180        M 0x80001b30 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     6181        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6182        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     6185        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     6190        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034d6, (wrb) s0  <-- 0x800034d7
       0     6191        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034d8, (wrb) s10 <-- 0x800034d9
       0     6193        M 0x80000fb0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     6194        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034d7, a0  <~~ Byte[0x800034d7]
       0     6205        M                                           #; (lsu) a0  <-- 114
       0     6206        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f90
       0     6207        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     6208        M 0x80000f94 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     6209        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6210        M 0x80000f9c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     6211        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6212        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     6215        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     6216        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6217        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6218        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6219        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     6220        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     6221        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6222        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     6223        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6234        M                                           #; (lsu) a4  <-- 2
       0     6235        M 0x80001b10 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     6236        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 3 ~~> Word[0x800038b4]
       0     6237        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 2, (wrb) a4  <-- 0x800038b6
       0     6238        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b6, 114 ~~> Byte[0x800038fe]
       0     6239        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6260        M                                           #; (lsu) a4  <-- 3
       0     6261        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     6262        M 0x80001b28 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     6263        M 0x80001b2c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     6264        M 0x80001b30 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     6265        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6266        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     6269        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     6274        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034d7, (wrb) s0  <-- 0x800034d8
       0     6275        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034d9, (wrb) s10 <-- 0x800034da
       0     6277        M 0x80000fb0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     6278        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034d8, a0  <~~ Byte[0x800034d8]
       0     6289        M                                           #; (lsu) a0  <-- 111
       0     6290        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000f90
       0     6291        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     6292        M 0x80000f94 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     6293        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6294        M 0x80000f9c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     6295        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6296        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     6299        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     6300        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6301        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6302        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6303        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     6304        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     6305        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6306        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     6307        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6318        M                                           #; (lsu) a4  <-- 3
       0     6319        M 0x80001b10 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     6320        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 4 ~~> Word[0x800038b4]
       0     6321        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 3, (wrb) a4  <-- 0x800038b7
       0     6322        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b7, 111 ~~> Byte[0x800038ff]
       0     6323        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6344        M                                           #; (lsu) a4  <-- 4
       0     6345        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     6346        M 0x80001b28 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     6347        M 0x80001b2c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     6348        M 0x80001b30 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     6349        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6350        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     6353        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     6358        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034d8, (wrb) s0  <-- 0x800034d9
       0     6359        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034da, (wrb) s10 <-- 0x800034db
       0     6361        M 0x80000fb0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     6362        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034d9, a0  <~~ Byte[0x800034d9]
       0     6373        M                                           #; (lsu) a0  <-- 114
       0     6374        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f90
       0     6375        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     6376        M 0x80000f94 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     6377        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6378        M 0x80000f9c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     6379        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6380        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     6383        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     6384        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6385        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6386        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6387        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     6388        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     6389        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6390        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     6391        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6402        M                                           #; (lsu) a4  <-- 4
       0     6403        M 0x80001b10 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     6404        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 5 ~~> Word[0x800038b4]
       0     6405        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 4, (wrb) a4  <-- 0x800038b8
       0     6406        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b8, 114 ~~> Byte[0x80003900]
       0     6407        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6428        M                                           #; (lsu) a4  <-- 5
       0     6429        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     6430        M 0x80001b28 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     6431        M 0x80001b2c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     6432        M 0x80001b30 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     6433        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6434        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     6437        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     6442        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034d9, (wrb) s0  <-- 0x800034da
       0     6443        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034db, (wrb) s10 <-- 0x800034dc
       0     6445        M 0x80000fb0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     6446        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034da, a0  <~~ Byte[0x800034da]
       0     6457        M                                           #; (lsu) a0  <-- 32
       0     6458        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000f90
       0     6459        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6460        M 0x80000f94 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     6461        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6462        M 0x80000f9c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     6463        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6464        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     6467        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6468        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6469        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6470        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6471        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     6472        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     6473        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6474        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     6475        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6486        M                                           #; (lsu) a4  <-- 5
       0     6487        M 0x80001b10 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     6488        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 6 ~~> Word[0x800038b4]
       0     6489        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 5, (wrb) a4  <-- 0x800038b9
       0     6490        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b9, 32 ~~> Byte[0x80003901]
       0     6491        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6512        M                                           #; (lsu) a4  <-- 6
       0     6513        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     6514        M 0x80001b28 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     6515        M 0x80001b2c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6516        M 0x80001b30 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6517        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6518        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     6521        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     6526        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034da, (wrb) s0  <-- 0x800034db
       0     6527        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034dc, (wrb) s10 <-- 0x800034dd
       0     6529        M 0x80000fb0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6530        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034db, a0  <~~ Byte[0x800034db]
       0     6541        M                                           #; (lsu) a0  <-- 61
       0     6542        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000f90
       0     6543        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6544        M 0x80000f94 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6545        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6546        M 0x80000f9c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6547        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6548        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     6551        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6552        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6553        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6554        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6555        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     6556        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     6557        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6558        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     6559        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6570        M                                           #; (lsu) a4  <-- 6
       0     6571        M 0x80001b10 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6572        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 7 ~~> Word[0x800038b4]
       0     6573        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 6, (wrb) a4  <-- 0x800038ba
       0     6574        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038ba, 61 ~~> Byte[0x80003902]
       0     6575        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6596        M                                           #; (lsu) a4  <-- 7
       0     6597        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6598        M 0x80001b28 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6599        M 0x80001b2c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6600        M 0x80001b30 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6601        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6602        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     6605        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     6610        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034db, (wrb) s0  <-- 0x800034dc
       0     6611        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034dd, (wrb) s10 <-- 0x800034de
       0     6613        M 0x80000fb0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6614        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034dc, a0  <~~ Byte[0x800034dc]
       0     6625        M                                           #; (lsu) a0  <-- 32
       0     6626        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000f90
       0     6627        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6628        M 0x80000f94 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6629        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6630        M 0x80000f9c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6631        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6632        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     6635        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6636        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6637        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6638        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6639        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     6640        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     6641        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6642        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     6643        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6654        M                                           #; (lsu) a4  <-- 7
       0     6655        M 0x80001b10 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6656        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 8 ~~> Word[0x800038b4]
       0     6657        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 7, (wrb) a4  <-- 0x800038bb
       0     6658        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038bb, 32 ~~> Byte[0x80003903]
       0     6659        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     6680        M                                           #; (lsu) a4  <-- 8
       0     6681        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6682        M 0x80001b28 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6683        M 0x80001b2c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6684        M 0x80001b30 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6685        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6686        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     6689        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     6694        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034dc, (wrb) s0  <-- 0x800034dd
       0     6695        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034de, (wrb) s10 <-- 0x800034df
       0     6697        M 0x80000fb0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6698        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034dd, a0  <~~ Byte[0x800034dd]
       0     6709        M                                           #; (lsu) a0  <-- 37
       0     6710        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000f90
       0     6711        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000fc0
       0     6723        M 0x80000fc0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6724        M 0x80000fc4 j       pc + 0x10              #; goto 0x80000fd4
       0     6735        M 0x80000fd4 lbu     a0, -1(s10)            #; s10 = 0x800034df, a0  <~~ Byte[0x800034de]
       0     6746        M                                           #; (lsu) a0  <-- 102
       0     6747        M 0x80000fd8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     6748        M 0x80000fdc bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80001014
       0     6760        M 0x80001014 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     6761        M 0x80001018 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     6762        M 0x8000101c addi    a1, s10, -1            #; s10 = 0x800034df, (wrb) a1  <-- 0x800034de
       0     6772        M 0x80001020 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6773        M 0x80001024 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800010a0
       0     6795        M 0x800010a0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6796        M 0x800010a4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x800010f4
       0     6818        M 0x800010f4 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6819        M 0x800010f8 mv      s10, a1                #; a1  = 0x800034de, (wrb) s10 <-- 0x800034de
       0     6820        M 0x800010fc beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     6841        M 0x80001100 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6842        M 0x80001104 j       pc + 0xc               #; goto 0x80001110
       0     6853        M 0x80001110 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     6854        M 0x80001114 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     6855        M 0x80001118 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     6856        M 0x8000111c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     6865        M 0x80001120 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6866        M 0x80001124 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80001188
       0     6888        M 0x80001188 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     6889        M 0x8000118c li      a2, 83                 #; (wrb) a2  <-- 83
       0     6900        M 0x80001190 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     6901        M 0x80001194 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     6902        M 0x80001198 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80003198
       0     6903        M 0x8000119c addi    a2, a2, 956            #; a2  = 0x80003198, (wrb) a2  <-- 0x80003554
       0     6912        M 0x800011a0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003554, (wrb) a1  <-- 0x80003658
       0     6913        M 0x800011a4 lw      a2, 0(a1)              #; a1  = 0x80003658, a2  <~~ Word[0x80003658]
       0     6914        M 0x800011a8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     6915        M 0x800011ac li      s8, 16                 #; (wrb) s8  <-- 16
       0     6924        M                                           #; (lsu) a2  <-- 0x800011e0
       0     6925        M 0x800011b0 jr      a2                     #; a2  = 0x800011e0, goto 0x800011e0
       0     6947        M 0x800011e0 li      a1, 70                 #; (wrb) a1  <-- 70
       0     6948        M 0x800011e4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800011ec
       0     6949        M 0x800011ec addi    a0, s3, 7              #; s3  = 0x0011ff14, (wrb) a0  <-- 0x0011ff1b
       0     6959        M 0x800011f0 andi    a0, a0, -8             #; a0  = 0x0011ff1b, (wrb) a0  <-- 0x0011ff18
       0     6961        M 0x800011f8 addi    s3, a0, 8              #; a0  = 0x0011ff18, (wrb) s3  <-- 0x0011ff20
       0     6962        M 0x800011fc mv      a0, s2                 #; s2  = 0x80001af0, (wrb) a0  <-- 0x80001af0
                         M 0x800011f4 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff18]
       0     6963        M                                           #; (f:lsu) fa0  <-- 0.0
       0     6971        M 0x80001200 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6972        M 0x80001204 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6973        M 0x80001208 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6974        M 0x8000120c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     6983        M 0x80001210 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     6984        M 0x80001214 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     6985        M 0x80001218 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002218
       0     6986        M 0x8000121c jalr    ra, ra, -1656          #; ra  = 0x80002218, (wrb) ra  <-- 0x80001220, goto 0x80001ba0
       0     6997        M 0x80001ba0 addi    sp, sp, -112           #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe20
       0     6998        M 0x80001ba4 sw      ra, 108(sp)            #; sp  = 0x0011fe20, 0x80001220 ~~> Word[0x0011fe8c]
       0     6999        M 0x80001ba8 sw      s0, 104(sp)            #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe88]
       0     7000        M 0x80001bac sw      s1, 100(sp)            #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe84]
       0     7009        M 0x80001bb0 sw      s2, 96(sp)             #; sp  = 0x0011fe20, 0x80001af0 ~~> Word[0x0011fe80]
       0     7010        M 0x80001bb4 sw      s3, 92(sp)             #; sp  = 0x0011fe20, 0x0011ff20 ~~> Word[0x0011fe7c]
       0     7011        M 0x80001bb8 sw      s4, 88(sp)             #; sp  = 0x0011fe20, 0x0011ff07 ~~> Word[0x0011fe78]
       0     7012        M 0x80001bbc sw      s5, 84(sp)             #; sp  = 0x0011fe20, -1 ~~> Word[0x0011fe74]
       0     7021        M 0x80001bc0 sw      s6, 80(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe70]
       0     7022        M 0x80001bc4 sw      s7, 76(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe6c]
       0     7023        M 0x80001bc8 sw      s8, 72(sp)             #; sp  = 0x0011fe20, 16 ~~> Word[0x0011fe68]
       0     7024        M 0x80001bcc sw      s9, 68(sp)             #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe64]
       0     7033        M 0x80001bd0 sw      s10, 64(sp)            #; sp  = 0x0011fe20, 0x800034de ~~> Word[0x0011fe60]
       0     7036        M 0x80001bd4 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe58]
       0     7037        M 0x80001bd8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe50]
       0     7038        M 0x80001bdc fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe48]
       0     7045        M 0x80001be0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003be0
       0     7046        M 0x80001be4 addi    s1, s1, -984           #; s1  = 0x80003be0, (wrb) s1  <-- 0x80003808
       0     7049        M 0x80001be8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003808]
       0     7057        M 0x80001bf0 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     7058        M 0x80001bf4 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     7059        M 0x80001bf8 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001bec fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     7060        M 0x80001bfc mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     7069        M 0x80001c00 mv      s6, a1                 #; a1  = 0x0011ff07, (wrb) s6  <-- 0x0011ff07
       0     7070        M 0x80001c04 mv      s7, a0                 #; a0  = 0x80001af0, (wrb) s7  <-- 0x80001af0
       0     7071        M 0x80001c08 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001cf8
       0     7093        M 0x80001cfc auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003cfc
       0     7094        M 0x80001cf8 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     7095        M                                           #; (f:fpu) fs0  <-- 0.0
       0     7104        M 0x80001d00 addi    a0, a0, -1260          #; a0  = 0x80003cfc, (wrb) a0  <-- 0x80003810
       0     7107        M 0x80001d04 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003810]
       0     7116        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     7117        M 0x80001d08 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     7119        M                                           #; (acc) t3  <-- 0x00051e63
       0     7120        M 0x80001d0c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001d28
       0     7132        M 0x80001d28 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d28
       0     7133        M 0x80001d2c addi    a0, a0, -1296          #; a0  = 0x80003d28, (wrb) a0  <-- 0x80003818
       0     7145        M 0x80001d34 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d34
       0     7146        M 0x80001d38 addi    a0, a0, -1300          #; a0  = 0x80003d34, (wrb) a0  <-- 0x80003820
                         M 0x80001d30 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003818]
       0     7149        M 0x80001d3c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003820]
       0     7155        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     7157        M 0x80001d40 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     7158        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     7159        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x80001d44 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     7161        M                                           #; (acc) a0  <-- 0x00b57533
       0     7162        M 0x80001d48 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     7163        M 0x80001d4c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001e48
       0     7179        M 0x80001e48 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     7180        M 0x80001e4c li      s8, 6                  #; (wrb) s8  <-- 6
       0     7191        M 0x80001e50 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001e58
       0     7192        M 0x80001e58 li      a0, 10                 #; (wrb) a0  <-- 10
       0     7195        M 0x80001e5c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     7196        M                                           #; (f:fpu) fs2  <-- 0.0
       0     7203        M 0x80001e60 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001e98
       0     7226        M 0x80001e98 li      s0, 0                  #; (wrb) s0  <-- 0
       0     7227        M 0x80001e9c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     7238        M 0x80001ea0 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80003ea0
       0     7239        M 0x80001ea4 addi    a1, a1, -2040          #; a1  = 0x80003ea0, (wrb) a1  <-- 0x800036a8
       0     7240        M 0x80001ea8 add     a0, a0, a1             #; a0  = 48, a1  = 0x800036a8, (wrb) a0  <-- 0x800036d8
       0     7243        M 0x80001eac fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800036d8]
       0     7251        M 0x80001eb0 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     7252        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     7255        M 0x80001eb4 fcvt.d.w ft0, s1               #; ac1  = 0
       0     7256        M                                           #; (f:fpu) ft0  <-- 0.0
       0     7257        M 0x80001eb8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     7260        M                                           #; (f:fpu) ft0  <-- 0.0
       0     7261        M 0x80001ebc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     7262        M 0x80001ec0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003ec0
       0     7263        M 0x80001ec4 addi    a0, a0, -1688          #; a0  = 0x80003ec0, (wrb) a0  <-- 0x80003828
       0     7264        M                                           #; (f:fpu) ft2  <-- 0.0
       0     7266        M 0x80001ec8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003828]
       0     7267        M 0x80001ecc fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     7275        M 0x80001ed0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     7276        M                                           #; (f:fpu) ft3  <-- 0.0
       0     7277        M 0x80001ed4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     7280        M                                           #; (f:fpu) ft2  <-- 0.0
       0     7281        M 0x80001ed8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     7284        M 0x80001edc bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001efc
       0     7298        M 0x80001efc flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     7309        M 0x80001f00 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001f14
       0     7322        M 0x80001f18 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001f14 fcvt.d.w fs1, zero             #; ac1  = 0
       0     7323        M 0x80001f1c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     7333        M 0x80001f20 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     7334        M 0x80001f24 add     t1, a1, s0             #; a1  = 0x0011fe28, s0  = 0, (wrb) t1  <-- 0x0011fe28
       0     7335        M 0x80001f28 li      t0, 32                 #; (wrb) t0  <-- 32
       0     7336        M 0x80001f2c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     7345        M 0x80001f30 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     7346        M 0x80001f34 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     7347        M 0x80001f38 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7348        M 0x80001f3c li      a7, 9                  #; (wrb) a7  <-- 9
       0     7357        M 0x80001f40 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     7358        M 0x80001f44 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     7359        M 0x80001f48 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     7362        M                                           #; (acc) a0  <-- 0x00355513
       0     7363        M 0x80001f4c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     7369        M 0x80001f50 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     7372        M                                           #; (acc) a3  <-- 0x40d586b3
       0     7373        M 0x80001f54 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     7374        M 0x80001f58 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     7375        M 0x80001f5c add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 0, (wrb) a5  <-- 0x0011fe28
       0     7381        M 0x80001f60 sb      a3, 0(a5)              #; a5  = 0x0011fe28, 48 ~~> Byte[0x0011fe28]
       0     7382        M 0x80001f64 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     7383        M 0x80001f68 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     7384        M 0x80001f6c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     7396        M 0x80001f70 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     7397        M 0x80001f74 li      a3, 30                 #; (wrb) a3  <-- 30
       0     7398        M 0x80001f78 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     7399        M 0x80001f7c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     7408        M 0x80001f80 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     7409        M 0x80001f84 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     7410        M 0x80001f88 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     7411        M 0x80001f8c addi    a0, sp, 8              #; sp  = 0x0011fe20, (wrb) a0  <-- 0x0011fe28
       0     7420        M 0x80001f90 add     a0, a0, s0             #; a0  = 0x0011fe28, s0  = 0, (wrb) a0  <-- 0x0011fe28
       0     7421        M 0x80001f94 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     7422        M 0x80001f98 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     7423        M 0x80001f9c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     7432        M 0x80001fa0 li      a1, 31                 #; (wrb) a1  <-- 31
       0     7433        M 0x80001fa4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     7434        M 0x80001fa8 add     a0, a0, a2             #; a0  = 0x0011fe28, a2  = 1, (wrb) a0  <-- 0x0011fe29
       0     7435        M 0x80001fac mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     7444        M 0x80001fb0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001fb8
       0     7445        M 0x80001fb8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     7446        M 0x80001fbc li      a1, 48                 #; (wrb) a1  <-- 48
       0     7456        M 0x80001fc0 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7fffffc0
       0     7457        M 0x80001fc4 jalr    ra, ra, 1432           #; ra  = 0x7fffffc0, (wrb) ra  <-- 0x80001fc8, goto 0x80000558
       0     7479        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     7480        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe29, (wrb) a4  <-- 0x0011fe29
       0     7491        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     7514        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     7526        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     7527        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     7528        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     7529        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     7549        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2d]
       0     7550        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2c]
       0     7561        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2b]
       0     7562        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2a]
       0     7563        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe29]
       0     7564        M 0x800005ec ret                            #; ra  = 0x80001fc8, goto 0x80001fc8
       0     7575        M 0x80001fc8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     7576        M 0x80001fcc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     7578        M 0x80001fd0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     7579        M 0x80001fd4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     7580        M 0x80001fd8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     7581        M 0x80001fdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7590        M 0x80001fe0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7591        M 0x80001fe4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fcc
       0     7592        M 0x80001fcc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     7593        M 0x80001fd0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     7594        M 0x80001fd4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     7595        M 0x80001fd8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     7596        M 0x80001fdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7597        M 0x80001fe0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     7598        M 0x80001fe4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fcc
       0     7599        M 0x80001fcc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     7600        M 0x80001fd0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     7601        M 0x80001fd4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     7602        M 0x80001fd8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     7603        M 0x80001fdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7604        M 0x80001fe0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     7605        M 0x80001fe4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fcc
       0     7606        M 0x80001fcc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     7607        M 0x80001fd0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     7608        M 0x80001fd4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     7609        M 0x80001fd8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     7610        M 0x80001fdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7611        M 0x80001fe0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     7612        M 0x80001fe4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fcc
       0     7613        M 0x80001fcc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     7614        M 0x80001fd0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     7615        M 0x80001fd4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     7616        M 0x80001fd8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     7617        M 0x80001fdc and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     7618        M 0x80001fe0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     7619        M 0x80001fe4 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     7620        M 0x80001fe8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     7621        M 0x80001fec j       pc + 0x28              #; goto 0x80002014
       0     7632        M 0x80002014 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     7633        M 0x80002018 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     7634        M 0x8000201c addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     7644        M 0x80002020 add     a0, a1, a0             #; a1  = 0x0011fe28, a0  = 6, (wrb) a0  <-- 0x0011fe2e
       0     7645        M 0x80002024 li      a1, 46                 #; (wrb) a1  <-- 46
       0     7646        M 0x80002028 sb      a1, 0(a0)              #; a0  = 0x0011fe2e, 46 ~~> Byte[0x0011fe2e]
       0     7647        M 0x8000202c j       pc + 0x8               #; goto 0x80002034
       0     7656        M 0x80002034 li      a0, 32                 #; (wrb) a0  <-- 32
       0     7657        M 0x80002038 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     7658        M 0x8000203c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     7668        M 0x80002040 li      t0, 32                 #; (wrb) t0  <-- 32
       0     7670        M 0x80002048 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80002044 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     7671        M 0x8000204c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     7680        M 0x80002050 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7681        M 0x80002054 addi    a3, sp, 8              #; sp  = 0x0011fe20, (wrb) a3  <-- 0x0011fe28
       0     7682        M 0x80002058 li      a4, 18                 #; (wrb) a4  <-- 18
       0     7683        M 0x8000205c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     7692        M 0x80002060 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     7695        M                                           #; (acc) a5  <-- 0x01f55793
       0     7696        M 0x80002064 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     7697        M 0x80002068 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     7698        M 0x8000206c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     7704        M 0x80002070 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     7707        M                                           #; (acc) a5  <-- 0x40f487b3
       0     7708        M 0x80002074 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     7709        M 0x80002078 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     7710        M 0x8000207c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     7716        M 0x80002080 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 7, (wrb) s0  <-- 0x0011fe2f
       0     7717        M 0x80002084 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     7718        M 0x80002088 sb      a5, 0(s0)              #; s0  = 0x0011fe2f, 48 ~~> Byte[0x0011fe2f]
       0     7719        M 0x8000208c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     7728        M 0x80002090 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     7729        M 0x80002094 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     7730        M 0x80002098 j       pc + 0x8               #; goto 0x800020a0
       0     7742        M 0x800020a0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     7743        M 0x800020a4 li      a0, 1                  #; (wrb) a0  <-- 1
       0     7744        M 0x800020a8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002114
       0     7765        M 0x80002114 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7766        M 0x80002118 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     7767        M 0x8000211c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002134
       0     7788        M 0x80002134 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     7789        M 0x80002138 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     7790        M 0x8000213c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     7800        M 0x80002140 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x8000216c
       0     7823        M 0x8000216c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     7835        M 0x80002170 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     7836        M 0x80002174 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7837        M 0x80002178 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7838        M 0x8000217c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     7847        M 0x80002180 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     7848        M 0x80002184 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800021b0
       0     7870        M 0x800021b0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     7871        M 0x800021b4 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     7872        M 0x800021b8 addi    s9, sp, 7              #; sp  = 0x0011fe20, (wrb) s9  <-- 0x0011fe27
       0     7873        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 8, (wrb) a0  <-- 0x0011fe2f
       0     7882        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2f, a0  <~~ Byte[0x0011fe2f]
       0     7883        M 0x800021c4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     7884        M 0x800021c8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     7885        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7886        M                                           #; (lsu) a0  <-- 48
       0     7894        M 0x800021d0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     7895        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7896        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     7908        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7909        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7910        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7911        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7912        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7913        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7914        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7915        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7916        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7927        M                                           #; (lsu) a4  <-- 8
       0     7928        M 0x80001b10 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     7929        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 9 ~~> Word[0x800038b4]
       0     7930        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 8, (wrb) a4  <-- 0x800038bc
       0     7931        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038bc, 48 ~~> Byte[0x80003904]
       0     7932        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7953        M                                           #; (lsu) a4  <-- 9
       0     7954        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     7955        M 0x80001b28 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     7956        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7957        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7958        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7959        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     7962        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     7967        M 0x800021dc mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     7970        M 0x800021e0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     7971        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800021bc
       0     7973        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 7, (wrb) a0  <-- 0x0011fe2e
       0     7976        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2e, a0  <~~ Byte[0x0011fe2e]
       0     7977        M 0x800021c4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     7978        M 0x800021c8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7979        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7980        M 0x800021d0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7981        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7982        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     7983        M                                           #; (lsu) a0  <-- 46
       0     7985        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     7986        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7987        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7988        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7989        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7990        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7991        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7992        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7993        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8004        M                                           #; (lsu) a4  <-- 9
       0     8005        M 0x80001b10 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     8006        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 10 ~~> Word[0x800038b4]
       0     8007        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 9, (wrb) a4  <-- 0x800038bd
       0     8008        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038bd, 46 ~~> Byte[0x80003905]
       0     8009        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8030        M                                           #; (lsu) a4  <-- 10
       0     8031        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     8032        M 0x80001b28 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     8033        M 0x80001b2c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     8034        M 0x80001b30 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     8035        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8036        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     8039        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     8044        M 0x800021dc mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     8047        M 0x800021e0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     8048        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800021bc
       0     8050        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 6, (wrb) a0  <-- 0x0011fe2d
       0     8053        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2d, a0  <~~ Byte[0x0011fe2d]
       0     8054        M 0x800021c4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     8055        M 0x800021c8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     8056        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     8057        M 0x800021d0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     8058        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8059        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     8060        M                                           #; (lsu) a0  <-- 48
       0     8062        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8063        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8064        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8065        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8066        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     8067        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     8068        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8069        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     8070        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8081        M                                           #; (lsu) a4  <-- 10
       0     8082        M 0x80001b10 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     8083        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 11 ~~> Word[0x800038b4]
       0     8084        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 10, (wrb) a4  <-- 0x800038be
       0     8085        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038be, 48 ~~> Byte[0x80003906]
       0     8086        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8107        M                                           #; (lsu) a4  <-- 11
       0     8108        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     8109        M 0x80001b28 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     8110        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8111        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8112        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8113        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     8116        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     8121        M 0x800021dc mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     8124        M 0x800021e0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     8125        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800021bc
       0     8127        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 5, (wrb) a0  <-- 0x0011fe2c
       0     8130        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2c, a0  <~~ Byte[0x0011fe2c]
       0     8131        M 0x800021c4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     8132        M 0x800021c8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     8133        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     8134        M 0x800021d0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     8135        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8136        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     8137        M                                           #; (lsu) a0  <-- 48
       0     8139        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8140        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8141        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8142        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8143        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     8144        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     8145        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8146        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     8147        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8158        M                                           #; (lsu) a4  <-- 11
       0     8159        M 0x80001b10 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     8160        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 12 ~~> Word[0x800038b4]
       0     8161        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 11, (wrb) a4  <-- 0x800038bf
       0     8162        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038bf, 48 ~~> Byte[0x80003907]
       0     8163        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8184        M                                           #; (lsu) a4  <-- 12
       0     8185        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     8186        M 0x80001b28 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     8187        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8188        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8189        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8190        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     8193        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     8198        M 0x800021dc mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     8201        M 0x800021e0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     8202        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800021bc
       0     8204        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 4, (wrb) a0  <-- 0x0011fe2b
       0     8207        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2b, a0  <~~ Byte[0x0011fe2b]
       0     8208        M 0x800021c4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     8209        M 0x800021c8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     8210        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     8211        M 0x800021d0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     8212        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8213        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     8214        M                                           #; (lsu) a0  <-- 48
       0     8216        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8217        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8218        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8219        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8220        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     8221        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     8222        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8223        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     8224        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8235        M                                           #; (lsu) a4  <-- 12
       0     8236        M 0x80001b10 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     8237        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 13 ~~> Word[0x800038b4]
       0     8238        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 12, (wrb) a4  <-- 0x800038c0
       0     8239        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038c0, 48 ~~> Byte[0x80003908]
       0     8240        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8261        M                                           #; (lsu) a4  <-- 13
       0     8262        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     8263        M 0x80001b28 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     8264        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8265        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8266        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8267        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     8270        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     8275        M 0x800021dc mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     8278        M 0x800021e0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     8279        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800021bc
       0     8281        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 3, (wrb) a0  <-- 0x0011fe2a
       0     8284        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2a, a0  <~~ Byte[0x0011fe2a]
       0     8285        M 0x800021c4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     8286        M 0x800021c8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     8287        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     8288        M 0x800021d0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     8289        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8290        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     8291        M                                           #; (lsu) a0  <-- 48
       0     8293        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8294        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8295        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8296        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8297        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     8298        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     8299        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8300        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     8301        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8312        M                                           #; (lsu) a4  <-- 13
       0     8313        M 0x80001b10 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     8314        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 14 ~~> Word[0x800038b4]
       0     8315        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 13, (wrb) a4  <-- 0x800038c1
       0     8316        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038c1, 48 ~~> Byte[0x80003909]
       0     8317        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8338        M                                           #; (lsu) a4  <-- 14
       0     8339        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     8340        M 0x80001b28 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     8341        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8342        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8343        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8344        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     8347        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     8352        M 0x800021dc mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     8355        M 0x800021e0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     8356        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800021bc
       0     8358        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 2, (wrb) a0  <-- 0x0011fe29
       0     8361        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe29, a0  <~~ Byte[0x0011fe29]
       0     8362        M 0x800021c4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     8363        M 0x800021c8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     8364        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     8365        M 0x800021d0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     8366        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8367        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     8368        M                                           #; (lsu) a0  <-- 48
       0     8370        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8371        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8372        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8373        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8374        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     8375        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     8376        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8377        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     8378        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8389        M                                           #; (lsu) a4  <-- 14
       0     8390        M 0x80001b10 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     8391        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 15 ~~> Word[0x800038b4]
       0     8392        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 14, (wrb) a4  <-- 0x800038c2
       0     8393        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038c2, 48 ~~> Byte[0x8000390a]
       0     8394        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8415        M                                           #; (lsu) a4  <-- 15
       0     8416        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     8417        M 0x80001b28 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     8418        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8419        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8420        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8421        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     8424        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     8429        M 0x800021dc mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     8432        M 0x800021e0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     8433        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800021bc
       0     8435        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 1, (wrb) a0  <-- 0x0011fe28
       0     8438        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe28, a0  <~~ Byte[0x0011fe28]
       0     8439        M 0x800021c4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     8440        M 0x800021c8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     8441        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     8442        M 0x800021d0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     8443        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8444        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     8445        M                                           #; (lsu) a0  <-- 48
       0     8447        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8448        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8449        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8450        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8451        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     8452        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     8453        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8454        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     8455        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8466        M                                           #; (lsu) a4  <-- 15
       0     8467        M 0x80001b10 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     8468        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 16 ~~> Word[0x800038b4]
       0     8469        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 15, (wrb) a4  <-- 0x800038c3
       0     8470        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038c3, 48 ~~> Byte[0x8000390b]
       0     8471        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8492        M                                           #; (lsu) a4  <-- 16
       0     8493        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     8494        M 0x80001b28 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     8495        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8496        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8497        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8498        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     8501        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     8506        M 0x800021dc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     8509        M 0x800021e0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     8510        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     8511        M 0x800021e8 j       pc + 0x8               #; goto 0x800021f0
       0     8523        M 0x800021f0 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     8524        M 0x800021f4 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     8525        M 0x800021f8 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     8526        M 0x800021fc xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     8535        M 0x80002200 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     8536        M 0x80002204 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002234
       0     8558        M 0x80002234 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     8559        M 0x80002238 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     8562        M 0x8000223c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe48]
       0     8563        M                                           #; (f:lsu) fs2  <-- 0.0
       0     8572        M 0x80002248 lw      s10, 64(sp)            #; sp  = 0x0011fe20, s10 <~~ Word[0x0011fe60]
                         M 0x80002240 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe50]
       0     8573        M 0x80002244 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe58], (f:lsu) fs1  <-- 0.0
       0     8574        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     8576        M                                           #; (lsu) s10 <-- 0x800034de
       0     8577        M 0x8000224c lw      s9, 68(sp)             #; sp  = 0x0011fe20, s9  <~~ Word[0x0011fe64]
       0     8580        M                                           #; (lsu) s9  <-- 8
       0     8582        M 0x80002250 lw      s8, 72(sp)             #; sp  = 0x0011fe20, s8  <~~ Word[0x0011fe68]
       0     8585        M                                           #; (lsu) s8  <-- 16
       0     8586        M 0x80002254 lw      s7, 76(sp)             #; sp  = 0x0011fe20, s7  <~~ Word[0x0011fe6c]
       0     8589        M                                           #; (lsu) s7  <-- 0
       0     8590        M 0x80002258 lw      s6, 80(sp)             #; sp  = 0x0011fe20, s6  <~~ Word[0x0011fe70]
       0     8593        M                                           #; (lsu) s6  <-- 0
       0     8594        M 0x8000225c lw      s5, 84(sp)             #; sp  = 0x0011fe20, s5  <~~ Word[0x0011fe74]
       0     8597        M                                           #; (lsu) s5  <-- -1
       0     8598        M 0x80002260 lw      s4, 88(sp)             #; sp  = 0x0011fe20, s4  <~~ Word[0x0011fe78]
       0     8601        M                                           #; (lsu) s4  <-- 0x0011ff07
       0     8602        M 0x80002264 lw      s3, 92(sp)             #; sp  = 0x0011fe20, s3  <~~ Word[0x0011fe7c]
       0     8605        M                                           #; (lsu) s3  <-- 0x0011ff20
       0     8606        M 0x80002268 lw      s2, 96(sp)             #; sp  = 0x0011fe20, s2  <~~ Word[0x0011fe80]
       0     8609        M                                           #; (lsu) s2  <-- 0x80001af0
       0     8610        M 0x8000226c lw      s1, 100(sp)            #; sp  = 0x0011fe20, s1  <~~ Word[0x0011fe84]
       0     8613        M                                           #; (lsu) s1  <-- 8
       0     8614        M 0x80002270 lw      s0, 104(sp)            #; sp  = 0x0011fe20, s0  <~~ Word[0x0011fe88]
       0     8617        M                                           #; (lsu) s0  <-- 0
       0     8618        M 0x80002274 lw      ra, 108(sp)            #; sp  = 0x0011fe20, ra  <~~ Word[0x0011fe8c]
       0     8619        M 0x80002278 addi    sp, sp, 112            #; sp  = 0x0011fe20, (wrb) sp  <-- 0x0011fe90
       0     8621        M                                           #; (lsu) ra  <-- 0x80001220
       0     8622        M 0x8000227c ret                            #; ra  = 0x80001220, goto 0x80001220
       0     8625        M 0x80001220 j       pc + 0x7c0             #; goto 0x800019e0
       0     8637        M 0x800019e0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     8638        M 0x800019e4 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8639        M 0x800019e8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     8640        M 0x800019ec addi    s0, s10, 1             #; s10 = 0x800034de, (wrb) s0  <-- 0x800034df
       0     8649        M 0x800019f0 j       pc - 0xa74             #; goto 0x80000f7c
       0     8652        M 0x80000f7c addi    s10, s0, 2             #; s0  = 0x800034df, (wrb) s10 <-- 0x800034e1
       0     8655        M 0x80000f80 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     8656        M 0x80000f84 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8657        M 0x80000f88 lbu     a0, 0(s0)              #; s0  = 0x800034df, a0  <~~ Byte[0x800034df]
       0     8668        M                                           #; (lsu) a0  <-- 10
       0     8669        M 0x80000f8c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     8670        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     8671        M 0x80000f94 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     8672        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     8673        M 0x80000f9c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     8674        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8675        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     8679        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     8680        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8681        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8682        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8683        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     8684        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     8685        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8686        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     8687        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8698        M                                           #; (lsu) a4  <-- 16
       0     8699        M 0x80001b10 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     8700        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 17 ~~> Word[0x800038b4]
       0     8701        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 16, (wrb) a4  <-- 0x800038c4
       0     8702        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038c4, 10 ~~> Byte[0x8000390c]
       0     8703        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     8724        M                                           #; (lsu) a4  <-- 17
       0     8725        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     8726        M 0x80001b28 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     8727        M 0x80001b2c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     8728        M 0x80001b30 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     8729        M 0x80001b34 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     8730        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     8731        M 0x80001b3c add     a0, a3, a2             #; a3  = 0x800038b4, a2  = 0, (wrb) a0  <-- 0x800038b4
       0     8732        M 0x80001b40 addi    a2, a0, 72             #; a0  = 0x800038b4, (wrb) a2  <-- 0x800038fc
       0     8733        M 0x80001b44 sw      zero, 12(a0)           #; a0  = 0x800038b4, 0 ~~> Word[0x800038c0]
       0     8734        M 0x80001b48 li      a3, 64                 #; (wrb) a3  <-- 64
       0     8735        M 0x80001b4c sw      a3, 8(a0)              #; a0  = 0x800038b4, 64 ~~> Word[0x800038bc]
       0     8744        M 0x80001b50 sw      zero, 20(a0)           #; a0  = 0x800038b4, 0 ~~> Word[0x800038c8]
       0     8745        M 0x80001b54 li      a3, 1                  #; (wrb) a3  <-- 1
       0     8746        M 0x80001b58 sw      a3, 16(a0)             #; a0  = 0x800038b4, 1 ~~> Word[0x800038c4]
       0     8747        M 0x80001b5c sw      zero, 28(a0)           #; a0  = 0x800038b4, 0 ~~> Word[0x800038d0]
       0     8756        M 0x80001b60 sw      a2, 24(a0)             #; a0  = 0x800038b4, 0x800038fc ~~> Word[0x800038cc]
       0     8759        M 0x80001b64 lw      a2, 0(a1)              #; a1  = 0x800038b4, a2  <~~ Word[0x800038b4]
       0     8760        M 0x80001b68 addi    a3, a0, 8              #; a0  = 0x800038b4, (wrb) a3  <-- 0x800038bc
       0     8761        M 0x80001b6c sw      zero, 36(a0)           #; a0  = 0x800038b4, 0 ~~> Word[0x800038d8]
       0     8781        M                                           #; (lsu) a2  <-- 17
       0     8782        M 0x80001b70 sw      a2, 32(a0)             #; a0  = 0x800038b4, 17 ~~> Word[0x800038d4]
       0     8783        M 0x80001b74 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003b74
       0     8784        M 0x80001b78 addi    a0, a0, -1140          #; a0  = 0x80003b74, (wrb) a0  <-- 0x80003700
       0     8785        M 0x80001b7c sw      a3, 0(a0)              #; a0  = 0x80003700, 0x800038bc ~~> Word[0x80003700]
       0     8786        M 0x80001b80 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003b80
       0     8787        M 0x80001b84 addi    a0, a0, -1088          #; a0  = 0x80003b80, (wrb) a0  <-- 0x80003740
       0     8788        M 0x80001b88 lw      a2, 0(a0)              #; a0  = 0x80003740, a2  <~~ Word[0x80003740]
       0     8811        M                                           #; (lsu) a2  <-- 1
       0     8812        M 0x80001b8c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     8815        M 0x80001b90 sw      zero, 0(a0)            #; a0  = 0x80003740, 0 ~~> Word[0x80003740]
       0     8816        M 0x80001b94 sw      zero, 0(a1)            #; a1  = 0x800038b4, 0 ~~> Word[0x800038b4]
       0     8817        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     8820        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034df, (wrb) s0  <-- 0x800034e0
       0     8821        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034e1, (wrb) s10 <-- 0x800034e2
       0     8823        M 0x80000fb0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     8824        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034e0, a0  <~~ Byte[0x800034e0]
       0     8838        M                                           #; (lsu) a0  <-- 0
       0     8839        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     8840        M 0x80000fbc j       pc + 0xad8             #; goto 0x80001a94
       0     8852        M 0x80001a94 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     8853        M 0x80001a98 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001aa0
       0     8864        M 0x80001aa0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     8865        M 0x80001aa4 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     8866        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8867        M 0x80001aac jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80001ab0, goto 0x80001af0
       0     8878        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001b98
       0     8883        M 0x80001b98 ret                            #; ra  = 0x80001ab0, goto 0x80001ab0
       0     8884        M 0x80001ab0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     8885        M 0x80001ab4 lw      s11, 60(sp)            #; sp  = 0x0011fe90, s11 <~~ Word[0x0011fecc]
       0     8888        M                                           #; (lsu) s11 <-- 0
       0     8889        M 0x80001ab8 lw      s10, 64(sp)            #; sp  = 0x0011fe90, s10 <~~ Word[0x0011fed0]
       0     8892        M                                           #; (lsu) s10 <-- 0
       0     8893        M 0x80001abc lw      s9, 68(sp)             #; sp  = 0x0011fe90, s9  <~~ Word[0x0011fed4]
       0     8896        M                                           #; (lsu) s9  <-- 0
       0     8898        M 0x80001ac0 lw      s8, 72(sp)             #; sp  = 0x0011fe90, s8  <~~ Word[0x0011fed8]
       0     8901        M                                           #; (lsu) s8  <-- 0
       0     8902        M 0x80001ac4 lw      s7, 76(sp)             #; sp  = 0x0011fe90, s7  <~~ Word[0x0011fedc]
       0     8905        M                                           #; (lsu) s7  <-- 0
       0     8906        M 0x80001ac8 lw      s6, 80(sp)             #; sp  = 0x0011fe90, s6  <~~ Word[0x0011fee0]
       0     8909        M                                           #; (lsu) s6  <-- 0x001000f0
       0     8910        M 0x80001acc lw      s5, 84(sp)             #; sp  = 0x0011fe90, s5  <~~ Word[0x0011fee4]
       0     8913        M                                           #; (lsu) s5  <-- 4
       0     8914        M 0x80001ad0 lw      s4, 88(sp)             #; sp  = 0x0011fe90, s4  <~~ Word[0x0011fee8]
       0     8917        M                                           #; (lsu) s4  <-- 8
       0     8918        M 0x80001ad4 lw      s3, 92(sp)             #; sp  = 0x0011fe90, s3  <~~ Word[0x0011feec]
       0     8921        M                                           #; (lsu) s3  <-- 6
       0     8922        M 0x80001ad8 lw      s2, 96(sp)             #; sp  = 0x0011fe90, s2  <~~ Word[0x0011fef0]
       0     8925        M                                           #; (lsu) s2  <-- 0x00100000
       0     8926        M 0x80001adc lw      s1, 100(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011fef4]
       0     8929        M                                           #; (lsu) s1  <-- 0
       0     8930        M 0x80001ae0 lw      s0, 104(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011fef8]
       0     8933        M                                           #; (lsu) s0  <-- 0x00100240
       0     8934        M 0x80001ae4 lw      ra, 108(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011fefc]
       0     8935        M 0x80001ae8 addi    sp, sp, 112            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff00
       0     8937        M                                           #; (lsu) ra  <-- 0x80000eec
       0     8938        M 0x80001aec ret                            #; ra  = 0x80000eec, goto 0x80000eec
       0     8941        M 0x80000eec lw      ra, 12(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff0c]
       0     8944        M 0x80000ef0 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
       0     8945        M                                           #; (lsu) ra  <-- 0x80000e60
       0     8946        M 0x80000ef4 ret                            #; ra  = 0x80000e60, goto 0x80000e60
       0     8958        M 0x80000e60 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003e60
       0     8959        M 0x80000e64 addi    a0, a0, -1632          #; a0  = 0x80003e60, (wrb) a0  <-- 0x80003800
       0     8962        M 0x80000e68 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003800]
       0     8963        M 0x80000e74 lw      s6, 16(sp)             #; sp  = 0x0011ff30, s6  <~~ Word[0x0011ff40]
       0     8971        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     8972        M 0x80000e6c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
       0     8973        M                                           #; (lsu) s6  <-- 0
       0     8974        M 0x80000e78 lw      s5, 20(sp)             #; sp  = 0x0011ff30, s5  <~~ Word[0x0011ff44], (acc) s5  <-- 0x01412a83
                         M 0x80000e70 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff38]
       0     8975        M                                           #; (f:lsu) fs0  <-- 0.0
       0     8977        M                                           #; (lsu) s5  <-- 0
       0     8978        M 0x80000e7c lw      s4, 24(sp)             #; sp  = 0x0011ff30, s4  <~~ Word[0x0011ff48]
       0     8981        M                                           #; (lsu) s4  <-- 0
       0     8982        M 0x80000e80 lw      s3, 28(sp)             #; sp  = 0x0011ff30, s3  <~~ Word[0x0011ff4c]
       0     8985        M                                           #; (lsu) s3  <-- 0
       0     8986        M 0x80000e84 lw      s2, 32(sp)             #; sp  = 0x0011ff30, s2  <~~ Word[0x0011ff50]
       0     8989        M                                           #; (lsu) s2  <-- 0
       0     8990        M 0x80000e88 lw      s1, 36(sp)             #; sp  = 0x0011ff30, s1  <~~ Word[0x0011ff54]
       0     8993        M                                           #; (lsu) s1  <-- 0
       0     8994        M 0x80000e8c lw      s0, 40(sp)             #; sp  = 0x0011ff30, s0  <~~ Word[0x0011ff58]
       0     8997        M                                           #; (lsu) s0  <-- 0
       0     8998        M 0x80000e90 lw      ra, 44(sp)             #; sp  = 0x0011ff30, ra  <~~ Word[0x0011ff5c]
       0     8999        M 0x80000e94 addi    sp, sp, 48             #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff60
       0     9001        M                                           #; (lsu) ra  <-- 0x80003250
       0     9002        M 0x80000e98 ret                            #; ra  = 0x80003250, goto 0x80003250
       0     9014        M 0x80003250 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     9015        M 0x80003254 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003254
       0     9016        M 0x80003258 jalr    ra, ra, 524            #; ra  = 0x80003254, (wrb) ra  <-- 0x8000325c, goto 0x80003460
       0     9019        M 0x80003460 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     9020        M 0x80003464 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000325c ~~> Word[0x0011ff5c]
       0     9021        M 0x80003468 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003468
       0     9022        M 0x8000346c jalr    ra, ra, -2032          #; ra  = 0x80003468, (wrb) ra  <-- 0x80003470, goto 0x80002c78
       0     9025        M 0x80002c78 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     9026        M 0x80002c7c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     9028        M 0x80002c80 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     9031        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     9032        M 0x80002c84 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     9035        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     9036        M 0x80002c88 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     9037        M 0x80002c8c ret                            #; ra  = 0x80003470, goto 0x80003470
       0     9039        M                                           #; (lsu) a0  <-- 0x00120190
       0     9040        M 0x80003470 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     9050        M                                           #; (lsu) a0  <-- 0
       0     9051        M 0x80003474 mv      zero, a0               #; a0  = 0
       0     9052        M 0x80003478 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     9053        M 0x8000347c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     9055        M                                           #; (lsu) ra  <-- 0x8000325c
       0     9056        M 0x80003480 ret                            #; ra  = 0x8000325c, goto 0x8000325c
       0     9059        M 0x8000325c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     9063        M 0x80003260 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003260
       0     9064        M 0x80003264 jalr    ra, ra, 556            #; ra  = 0x80003260, (wrb) ra  <-- 0x80003268, goto 0x8000348c
       0     9065        M 0x8000348c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     9066        M 0x80003490 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     9067        M 0x80003494 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80003268 ~~> Word[0x0011ff5c]
       0     9068        M 0x80003498 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80002498
       0     9069        M 0x8000349c jalr    ra, ra, 1984           #; ra  = 0x80002498, (wrb) ra  <-- 0x800034a0, goto 0x80002c58
       0     9082        M 0x80002c58 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     9083        M 0x80002c5c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     9086        M 0x80002c60 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     9089        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     9090        M 0x80002c64 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     9093        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     9094        M 0x80002c68 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     9095        M 0x80002c6c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9097        M                                           #; (lsu) a0  <-- 0
       0     9098        M 0x80002c70 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     9099        M 0x80002c74 ret                            #; ra  = 0x800034a0, goto 0x800034a0
       0     9100        M 0x800034a0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     9103        M                                           #; (lsu) t0  <-- 0
       0     9104        M 0x800034a4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     9105        M 0x800034a8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     9106        M 0x800034ac bnez    a0, pc + 24            #; a0  = 0, not taken
       0     9107        M                                           #; (lsu) ra  <-- 0x80003268
       0     9111        M 0x800034b0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     9112        M 0x800034b4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     9113        M 0x800034b8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800034b8
       0     9114        M 0x800034bc addi    t1, t1, 584            #; t1  = 0x800034b8, (wrb) t1  <-- 0x80003700
       0     9122        M 0x800034c0 sw      t0, 0(t1)              #; t1  = 0x80003700, 1 ~~> Word[0x80003700]
       0     9123        M 0x800034c4 ret                            #; ra  = 0x80003268, goto 0x80003268
       0     9138        M 0x80003268 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 9138):
snitch_loads                                   156
snitch_stores                                  166
fpss_stores                                     40
fpss_loads                                     454
snitch_avg_load_latency                      10.75
snitch_occupancy                            0.3386
snitch_fseq_rel_offloads                    0.2563
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.1408
fpss_avg_load_latency                       1.5110
fpss_occupancy                              0.1167
fpss_fpu_occupancy                          0.0615
fpss_fpu_rel_occupancy                      0.5268
cycles                                        9127
total_ipc                                   0.4552
