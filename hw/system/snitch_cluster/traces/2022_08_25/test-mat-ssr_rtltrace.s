       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80003050
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80003050, (wrb) ra  <-- 4120, goto 0x80003050
       0      269        M 0x80003050 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80004050
       0      270        M 0x80003054 addi    gp, gp, -264           #; gp  = 0x80004050, (wrb) gp  <-- 0x80003f48
       0      271        M 0x80003058 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003058
       0      272        M 0x8000305c jalr    ra, ra, 964            #; ra  = 0x80003058, (wrb) ra  <-- 0x80003060, goto 0x8000341c
       0      292        M 0x8000341c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80003420 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80003424 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80003428 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x8000342c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80003430 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80003434 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80003438 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x8000343c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80003440 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80003444 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80003448 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x8000344c ret                            #; ra  = 0x80003060, goto 0x80003060
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80003060 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80003064 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80003068 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003068
       0      508        M 0x8000306c jalr    ra, ra, 1036           #; ra  = 0x80003068, (wrb) ra  <-- 0x80003070, goto 0x80003474
       0      523        M 0x80003474 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80003478 ret                            #; ra  = 0x80003070, goto 0x80003070
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80003070 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80003074 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80003078 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000307c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80003080 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80003084 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80004084
       0      551        M 0x80003088 addi    t0, t0, -2004          #; t0  = 0x80004084, (wrb) t0  <-- 0x800038b0
       0      552        M 0x8000308c auipc   t1, 0x1                #; (wrb) t1  <-- 0x8000408c
       0      562        M 0x80003090 addi    t1, t1, -2008          #; t1  = 0x8000408c, (wrb) t1  <-- 0x800038b4
       0      563        M 0x80003094 bge     t0, t1, pc + 16        #; t0  = 0x800038b0, t1  = 0x800038b4, not taken
       0      564        M 0x80003098 sw      zero, 0(t0)            #; t0  = 0x800038b0, 0 ~~> Word[0x800038b0]
       0      565        M 0x8000309c addi    t0, t0, 4              #; t0  = 0x800038b0, (wrb) t0  <-- 0x800038b4
       0      573        M 0x800030a0 blt     t0, t1, pc - 8         #; t0  = 0x800038b4, t1  = 0x800038b4, not taken
       0      574        M 0x800030a4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800030a8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800030ac beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x800030b0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x800030b4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x800030b8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x800030bc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800030c0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800030c4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800030c8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800030cc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800030d0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800030d4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800030d8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800030dc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800030e0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800030e4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800030e8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800030ec fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800030f0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800030f4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800030f8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800030fc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80003100 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80003104 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80003108 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000310c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80003110 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80003114 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80003118 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000311c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80003120 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80003124 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80003128 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000312c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80003130 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80003134 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80003138 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003138
       0      684        M 0x8000313c lw      t0, 900(t0)            #; t0  = 0x80003138, t0  <~~ Word[0x800034bc]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80003140 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80003144 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80003148 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003148
       0      708        M 0x8000314c lw      t2, 880(t2)            #; t2  = 0x80003148, t2  <~~ Word[0x800034b8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80003150 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80003154 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80003158 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000315c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80003160 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80003164 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80003168 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000316c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80003170 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003170
       0      762        M 0x80003174 addi    t0, t0, 1496           #; t0  = 0x80003170, (wrb) t0  <-- 0x80003748
       0      763        M 0x80003178 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003178
       0      764        M 0x8000317c addi    t1, t1, 1488           #; t1  = 0x80003178, (wrb) t1  <-- 0x80003748
       0      775        M 0x80003180 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003180
       0      776        M 0x80003184 addi    t2, t2, 1480           #; t2  = 0x80003180, (wrb) t2  <-- 0x80003748
       0      777        M 0x80003188 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80003188
       0      778        M 0x8000318c addi    t3, t3, 1488           #; t3  = 0x80003188, (wrb) t3  <-- 0x80003758
       0      787        M 0x80003190 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003748, (wrb) sp  <-- 0x801236b8
       0      788        M 0x80003194 sub     sp, sp, t1             #; sp  = 0x801236b8, t1  = 0x80003748, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80003198 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003748, (wrb) sp  <-- 0x801236b8
       0      790        M 0x8000319c sub     sp, sp, t3             #; sp  = 0x801236b8, t3  = 0x80003758, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x800031a0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x800031a4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x800031a8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x800031ac mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x800031b0 bge     t0, t1, pc + 24        #; t0  = 0x80003748, t1  = 0x80003748, taken, goto 0x800031c8
       0      823        M 0x800031c8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800031c8
       0      824        M 0x800031cc addi    t0, t0, 1408           #; t0  = 0x800031c8, (wrb) t0  <-- 0x80003748
       0      835        M 0x800031d0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800031d0
       0      836        M 0x800031d4 addi    t1, t1, 1416           #; t1  = 0x800031d0, (wrb) t1  <-- 0x80003758
       0      837        M 0x800031d8 bge     t0, t1, pc + 20        #; t0  = 0x80003748, t1  = 0x80003758, not taken
       0      838        M 0x800031dc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x800031e0 addi    t0, t0, 4              #; t0  = 0x80003748, (wrb) t0  <-- 0x8000374c
       0      848        M 0x800031e4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x800031e8 blt     t0, t2, pc - 12        #; t0  = 0x8000374c, t2  = 0x80003748, not taken
       0      850        M 0x800031ec addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x800031f0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x800031f4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x800031f8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x800031fc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80003200 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80003204 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003204
       0      877        M 0x80003208 jalr    ra, ra, -1812          #; ra  = 0x80003204, (wrb) ra  <-- 0x8000320c, goto 0x80002af0
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
       0     1401        M 0x80002c54 ret                            #; ra  = 0x8000320c, goto 0x8000320c
       0     1415        M 0x8000320c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80003210 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80003214 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80003218 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x8000321c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80003220 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80003224 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003224
       0     1434        M 0x80003228 addi    t0, t0, 60             #; t0  = 0x80003224, (wrb) t0  <-- 0x80003260
       0     1435        M 0x8000322c csrw    mtvec, t0              #; t0  = 0x80003260, (lsu) a4  <-- 4132
       0     1443        M 0x80003230 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003230
       0     1444        M 0x80003234 jalr    ra, ra, 544            #; ra  = 0x80003230, (wrb) ra  <-- 0x80003238, goto 0x80003450
       0     1460        M 0x80003450 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80003454 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80003238 ~~> Word[0x0011ff5c]
       0     1462        M 0x80003458 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003458
       0     1463        M 0x8000345c jalr    ra, ra, -2016          #; ra  = 0x80003458, (wrb) ra  <-- 0x80003460, goto 0x80002c78
       0     1481        M 0x80002c78 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x80002c7c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x80002c80 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x80002c84 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x80002c88 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x80002c8c ret                            #; ra  = 0x80003460, goto 0x80003460
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80003460 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80003464 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80003468 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x8000346c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x80003238
       0     1541        M 0x80003470 ret                            #; ra  = 0x80003238, goto 0x80003238
       0     1545        M 0x80003238 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x80000238
       0     1546        M 0x8000323c jalr    ra, ra, 1020           #; ra  = 0x80000238, (wrb) ra  <-- 0x80003240, goto 0x80000634
       0     1551        M 0x80000634 addi    sp, sp, -48            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff30
       0     1552        M 0x80000638 sw      ra, 44(sp)             #; sp  = 0x0011ff30, 0x80003240 ~~> Word[0x0011ff5c]
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
       0     2937        M 0x80002d70 sw      s4, 8(sp)              #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff18]
       0     2938        M 0x80002d74 mv      s2, a3                 #; a3  = 5, (wrb) s2  <-- 5
       0     2939        M 0x80002d78 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     2940        M 0x80002d7c slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     2949        M 0x80002d80 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     2950        M 0x80002d84 bnez    a3, pc + 684           #; a3  = 0, not taken
       0     2951        M 0x80002d88 mv      s3, a0                 #; a0  = 0x00100240, (wrb) s3  <-- 0x00100240
       0     2952        M 0x80002d8c addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
       0     2961        M 0x80002d90 slli    s1, a6, 3              #; a6  = 6, (wrb) s1  <-- 48
       0     2962        M 0x80002d94 add     a3, s1, a0             #; s1  = 48, a0  = 0x00100240, (wrb) a3  <-- 0x00100270
       0     2963        M 0x80002d98 addi    t4, s2, -1             #; s2  = 5, (wrb) t4  <-- 4
       0     2964        M 0x80002d9c slli    s0, a5, 3              #; a5  = 7, (wrb) s0  <-- 56
       0     2973        M 0x80002da0 mul     a0, s0, t4             #; s0  = 56, t4  = 4
       0     2976        M                                           #; (acc) a3  <-- 0x00a686b3
       0     2977        M 0x80002da4 add     a3, a3, a0             #; a3  = 0x00100270, a0  = 224, (wrb) a3  <-- 0x00100350
       0     2978        M 0x80002da8 bge     zero, a4, pc + 388     #; a4  = 6, not taken
       0     2979        M 0x80002dac addi    t2, a4, -1             #; a4  = 6, (wrb) t2  <-- 5
       0     2985        M 0x80002db0 slli    t1, t2, 3              #; t2  = 5, (wrb) t1  <-- 40
       0     2986        M 0x80002db4 add     a7, t1, a1             #; t1  = 40, a1  = 0x00100000, (wrb) a7  <-- 0x00100028
       0     2987        M 0x80002db8 slli    t3, a4, 3              #; a4  = 6, (wrb) t3  <-- 48
       0     2988        M 0x80002dbc mul     a0, t3, t4             #; t3  = 48, t4  = 4
       0     2997        M 0x80002dc0 add     t6, a7, a0             #; a7  = 0x00100028, a0  = 192, (wrb) t6  <-- 0x001000e8
       0     2998        M 0x80002dc4 mul     t0, s0, t2             #; s0  = 56, t2  = 5
       0     3001        M                                           #; (acc) a7  <-- 0x005488b3
       0     3002        M 0x80002dc8 add     a7, s1, t0             #; s1  = 48, t0  = 280, (wrb) a7  <-- 328
       0     3003        M 0x80002dcc add     t5, a7, a2             #; a7  = 328, a2  = 0x001000f0, (wrb) t5  <-- 0x00100238
       0     3009        M 0x80002dd0 sltu    s1, a3, a1             #; a3  = 0x00100350, a1  = 0x00100000, (wrb) s1  <-- 0
       0     3010        M 0x80002dd4 sltu    a0, t6, s3             #; t6  = 0x001000e8, s3  = 0x00100240, (wrb) a0  <-- 1
       0     3011        M 0x80002dd8 or      s4, a0, s1             #; a0  = 1, s1  = 0, (wrb) s4  <-- 1
       0     3012        M 0x80002ddc sltu    s1, a3, a2             #; a3  = 0x00100350, a2  = 0x001000f0, (wrb) s1  <-- 0
       0     3021        M 0x80002de0 sltu    a0, t5, s3             #; t5  = 0x00100238, s3  = 0x00100240, (wrb) a0  <-- 1
       0     3022        M 0x80002de4 or      a0, s1, a0             #; s1  = 0, a0  = 1, (wrb) a0  <-- 1
       0     3023        M 0x80002de8 and     s4, s4, a0             #; s4  = 1, a0  = 1, (wrb) s4  <-- 1
       0     3024        M 0x80002dec srli    s1, s3, 20             #; s3  = 0x00100240, (wrb) s1  <-- 1
       0     3033        M 0x80002df0 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
       0     3034        M 0x80002df4 lui     a0, 0x120              #; (wrb) a0  <-- 0x00120000
       0     3035        M 0x80002df8 addi    a0, a0, 1              #; a0  = 0x00120000, (wrb) a0  <-- 0x00120001
       0     3036        M 0x80002dfc sltu    a3, a3, a0             #; a3  = 0x00100350, a0  = 0x00120001, (wrb) a3  <-- 1
       0     3045        M 0x80002e00 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     3046        M 0x80002e04 and     s4, a3, s4             #; a3  = 1, s4  = 1, (wrb) s4  <-- 1
       0     3047        M 0x80002e08 srli    s1, a1, 20             #; a1  = 0x00100000, (wrb) s1  <-- 1
       0     3048        M 0x80002e0c snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
       0     3057        M 0x80002e10 sltu    a3, t6, a0             #; t6  = 0x001000e8, a0  = 0x00120001, (wrb) a3  <-- 1
       0     3058        M 0x80002e14 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
       0     3059        M 0x80002e18 and     a3, a3, s4             #; a3  = 1, s4  = 1, (wrb) a3  <-- 1
       0     3060        M 0x80002e1c srli    s1, a2, 20             #; a2  = 0x001000f0, (wrb) s1  <-- 1
       0     3069        M 0x80002e20 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
       0     3070        M 0x80002e24 sltu    a0, t5, a0             #; t5  = 0x00100238, a0  = 0x00120001, (wrb) a0  <-- 1
       0     3071        M 0x80002e28 and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     3072        M 0x80002e2c and     a0, a0, a3             #; a0  = 1, a3  = 1, (wrb) a0  <-- 1
       0     3081        M 0x80002e30 beqz    a0, pc + 408           #; a0  = 1, not taken
       0     3082        M 0x80002e34 li      a3, 0                  #; (wrb) a3  <-- 0
       0     3083        M 0x80002e38 li      t3, 8                  #; (wrb) t3  <-- 8
       0     3084        M 0x80002e3c li      s1, 64                 #; (wrb) s1  <-- 64
       0     3093        M 0x80002e40 scfgw   a6, s1                 #; a6  = 6, s1  = 64
       0     3094        M 0x80002e44 li      s1, 192                #; (wrb) s1  <-- 192
       0     3095        M 0x80002e48 scfgw   t3, s1                 #; t3  = 8, s1  = 192
       0     3096        M 0x80002e4c li      s1, 96                 #; (wrb) s1  <-- 96
       0     3105        M 0x80002e50 scfgw   t4, s1                 #; t4  = 4, s1  = 96
       0     3106        M 0x80002e54 li      s1, 224                #; (wrb) s1  <-- 224
       0     3107        M 0x80002e58 scfgw   t3, s1                 #; t3  = 8, s1  = 224
       0     3108        M 0x80002e5c li      s1, 32                 #; (wrb) s1  <-- 32
       0     3117        M 0x80002e60 scfgw   zero, s1               #; s1  = 32
       0     3118        M 0x80002e64 scfgwi  s3, 928                #; s3  = 0x00100240
       0     3119        M 0x80002e68 li      s1, 1                  #; (wrb) s1  <-- 1
       0     3120        M 0x80002e6c addi    a0, s1, 64             #; s1  = 1, (wrb) a0  <-- 65
       0     3129        M 0x80002e70 scfgw   t2, a0                 #; t2  = 5, a0  = 65
       0     3130        M 0x80002e74 addi    a0, s1, 192            #; s1  = 1, (wrb) a0  <-- 193
       0     3131        M 0x80002e78 scfgw   t3, a0                 #; t3  = 8, a0  = 193
       0     3132        M 0x80002e7c sub     t1, zero, t1           #; t1  = 40, (wrb) t1  <-- -40
       0     3141        M 0x80002e80 addi    a0, s1, 96             #; s1  = 1, (wrb) a0  <-- 97
       0     3142        M 0x80002e84 scfgw   a6, a0                 #; a6  = 6, a0  = 97
       0     3143        M 0x80002e88 addi    a0, s1, 224            #; s1  = 1, (wrb) a0  <-- 225
       0     3144        M 0x80002e8c scfgw   t1, a0                 #; t1  = -40, a0  = 225
       0     3153        M 0x80002e90 addi    a0, s1, 128            #; s1  = 1, (wrb) a0  <-- 129
       0     3154        M 0x80002e94 addi    t1, s1, 256            #; s1  = 1, (wrb) t1  <-- 257
       0     3155        M 0x80002e98 scfgw   t4, a0                 #; t4  = 4, a0  = 129
       0     3156        M 0x80002e9c scfgw   t3, t1                 #; t3  = 8, t1  = 257
       0     3165        M 0x80002ea0 addi    a0, s1, 32             #; s1  = 1, (wrb) a0  <-- 33
       0     3166        M 0x80002ea4 scfgw   zero, a0               #; a0  = 33
       0     3167        M 0x80002ea8 scfgwi  a1, 833                #; a1  = 0x00100000
       0     3168        M 0x80002eac li      a0, 2                  #; (wrb) a0  <-- 2
       0     3177        M 0x80002eb0 addi    a1, a0, 64             #; a0  = 2, (wrb) a1  <-- 66
       0     3178        M 0x80002eb4 addi    s1, a0, 192            #; a0  = 2, (wrb) s1  <-- 194
       0     3179        M 0x80002eb8 scfgw   t2, a1                 #; t2  = 5, a1  = 66
       0     3180        M 0x80002ebc scfgw   s0, s1                 #; s0  = 56, s1  = 194
       0     3189        M 0x80002ec0 sub     a1, t3, t0             #; t3  = 8, t0  = 280, (wrb) a1  <-- -272
       0     3190        M 0x80002ec4 addi    s1, a0, 96             #; a0  = 2, (wrb) s1  <-- 98
       0     3191        M 0x80002ec8 addi    s0, a0, 224            #; a0  = 2, (wrb) s0  <-- 226
       0     3192        M 0x80002ecc scfgw   a6, s1                 #; a6  = 6, s1  = 98
       0     3201        M 0x80002ed0 scfgw   a1, s0                 #; a1  = -272, s0  = 226
       0     3202        M 0x80002ed4 sub     a1, zero, a7           #; a7  = 328, (wrb) a1  <-- -328
       0     3203        M 0x80002ed8 addi    s1, a0, 128            #; a0  = 2, (wrb) s1  <-- 130
       0     3204        M 0x80002edc addi    s0, a0, 256            #; a0  = 2, (wrb) s0  <-- 258
       0     3213        M 0x80002ee0 scfgw   t4, s1                 #; t4  = 4, s1  = 130
       0     3214        M 0x80002ee4 scfgw   a1, s0                 #; a1  = -328, s0  = 258
       0     3215        M 0x80002ee8 addi    a0, a0, 32             #; a0  = 2, (wrb) a0  <-- 34
       0     3216        M 0x80002eec scfgw   zero, a0               #; a0  = 34, (acc) ra  <-- 0x00a020ab
       0     3225        M 0x80002ef0 scfgwi  a2, 834                #; a2  = 0x001000f0
       0     3227        M 0x80002ef4 csrrsi  a0, ssr, 1             #; 
       0     3228        M 0x80002efc li      a0, 0                  #; (wrb) a0  <-- 0
                         M 0x80002ef8 fcvt.d.w ft3, zero             #; ac1  = 0
       0     3229        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3237        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3239        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3240        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3241        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3242        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 0.0
       0     3245        M                                           #; (f:fpu) ft4  <-- 9.865881
       0     3249        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
       0     3250        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3252        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
       0     3253        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 9.865881
       0     3255        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3256        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 167.7199770
       0     3257        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 167.7199770
       0     3258        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3259        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3260        M                                           #; (f:fpu) ft4  <-- 611.6846220
       0     3261        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 611.6846220
       0     3262        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3264        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3265        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 15.705, ft4  = 690.6116700
       0     3266        M 0x80002f18 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3267        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 1, a5  = 7, taken, goto 0x80002f00
       0     3268        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 1134.5763150
       0     3269        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 18.846, ft4  = 1134.5763150
       0     3270        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3272        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 2081.7008910
       0     3273        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 2081.7008910, ft4  = 2081.7008910
       0     3274        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2081.7008910
       0     3275        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3276        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 3.141, ft4  = 0.0
       0     3278        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3279        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 19.7317620
       0     3280        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 6.282, ft4  = 19.7317620
       0     3281        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3282        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3283        M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     3284        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 9.423, ft4  = 197.3176200
       0     3285        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3287        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 670.8799080
       0     3288        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 12.564, ft4  = 670.8799080
       0     3289        M 0x80002f18 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3290        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 2, a5  = 7, taken, goto 0x80002f00
       0     3291        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3292        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 15.705, ft4  = 789.2704800
       0     3293        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3295        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 1282.5645300
       0     3296        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 18.846, ft4  = 1282.5645300
       0     3298        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
       0     3299        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 2288.8843920
       0     3300        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 2288.8843920, ft4  = 2288.8843920
       0     3301        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
                         M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2288.8843920
       0     3302        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3303        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 3.141, ft4  = 0.0
       0     3304        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3305        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3306        M                                           #; (f:fpu) ft4  <-- 29.5976430
       0     3307        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 6.282, ft4  = 29.5976430
       0     3308        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3310        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 226.9152630
       0     3311        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 9.423, ft4  = 226.9152630
       0     3312        M 0x80002f18 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3313        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 3, a5  = 7, taken, goto 0x80002f00
       0     3314        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 730.0751940
       0     3315        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 12.564, ft4  = 730.0751940
       0     3316        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3318        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 887.9292900
       0     3319        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 15.705, ft4  = 887.9292900
       0     3321        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
       0     3322        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3323        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 18.846, ft4  = 1430.5527450
       0     3324        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3325        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3326        M                                           #; (f:fpu) ft4  <-- 2496.0678930
       0     3327        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 2496.0678930, ft4  = 2496.0678930
       0     3328        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2496.0678930
       0     3329        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3330        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 3.141, ft4  = 0.0
       0     3331        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3333        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 39.4635240
       0     3334        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 6.282, ft4  = 39.4635240
       0     3335        M 0x80002f18 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     3336        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 4, a5  = 7, taken, goto 0x80002f00
       0     3337        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     3338        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 9.423, ft4  = 256.5129060
       0     3339        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3341        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 789.2704800
       0     3342        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 12.564, ft4  = 789.2704800
       0     3344        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
       0     3345        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 986.5881000
       0     3346        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 15.705, ft4  = 986.5881000
       0     3347        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3348        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3349        M                                           #; (f:fpu) ft4  <-- 1578.5409600
       0     3350        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 18.846, ft4  = 1578.5409600
       0     3351        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3353        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     3354        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 2703.2513940, ft4  = 2703.2513940
       0     3355        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2703.2513940
       0     3356        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3357        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 3.141, ft4  = 0.0
       0     3358        M 0x80002f18 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     3359        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 5, a5  = 7, taken, goto 0x80002f00
       0     3360        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     3361        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 6.282, ft4  = 49.3294050
       0     3362        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3364        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 286.1105490
       0     3365        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 9.423, ft4  = 286.1105490
       0     3367        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
       0     3368        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3369        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 12.564, ft4  = 848.4657660
       0     3370        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3371        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3372        M                                           #; (f:fpu) ft4  <-- 1085.2469100
       0     3373        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 15.705, ft4  = 1085.2469100
       0     3374        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3376        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 1726.5291750
       0     3377        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 18.846, ft4  = 1726.5291750
       0     3379        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     3380        M                                           #; (f:fpu) ft4  <-- 2910.4348950
       0     3381        M 0x80002f18 addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 2910.4348950, ft4  = 2910.4348950
       0     3382        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 6, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2910.4348950
       0     3383        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3384        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 3.141, ft4  = 0.0
       0     3385        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3387        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 59.1952860
       0     3388        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 6.282, ft4  = 59.1952860
       0     3390        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
       0     3391        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 315.7081920
       0     3392        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 9.423, ft4  = 315.7081920
       0     3393        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3394        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3395        M                                           #; (f:fpu) ft4  <-- 907.6610520
       0     3396        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 12.564, ft4  = 907.6610520
       0     3397        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3399        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 1183.9057200
       0     3400        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 15.705, ft4  = 1183.9057200
       0     3402        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     3403        M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     3404        M 0x80002f18 addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 18.846, ft4  = 1874.5173900
       0     3405        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 7, a5  = 7, not taken
       0     3407        M                                           #; (f:fpu) ft4  <-- 1933.7126760
       0     3408        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 1933.7126760, ft4  = 1933.7126760
       0     3409        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1933.7126760
       0     3410        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3411        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 3.141, ft4  = 0.0
       0     3414        M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3415        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 6.282, ft4  = 69.0611670
       0     3417        M 0x80002f20 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
       0     3418        M 0x80002f24 bne     a3, s2, pc - 40        #; a3  = 1, s2  = 5, taken, goto 0x80002efc
                         M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     3419        M 0x80002efc li      a0, 0                  #; (wrb) a0  <-- 0
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 9.423, ft4  = 345.3058350
       0     3420        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3422        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     3423        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 12.564, ft4  = 374.9034780
       0     3424        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
       0     3425        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3426        M                                           #; (f:fpu) ft4  <-- 690.6116700
       0     3427        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 15.705, ft4  = 690.6116700
       0     3428        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3430        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 1430.5527450
       0     3431        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 18.846, ft4  = 1430.5527450
       0     3433        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3434        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 1548.9433170
       0     3435        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 1548.9433170, ft4  = 1548.9433170
       0     3436        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1548.9433170
       0     3437        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3438        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 21.9870000, ft4  = 0.0
       0     3439        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     3441        M 0x80002f18 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 69.0611670
       0     3442        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 1, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 25.128, ft4  = 69.0611670
       0     3443        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3445        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 700.4775510
       0     3446        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 28.269, ft4  = 700.4775510
       0     3447        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
       0     3448        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3449        M                                           #; (f:fpu) ft4  <-- 2032.3714860
       0     3450        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 31.41, ft4  = 2032.3714860
       0     3451        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3453        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 2229.6891060
       0     3454        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 34.551, ft4  = 2229.6891060
       0     3456        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3457        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     3458        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 37.692, ft4  = 3206.4113250
       0     3459        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
       0     3460        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3461        M                                           #; (f:fpu) ft4  <-- 5100.6604770
       0     3462        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 5100.6604770, ft4  = 5100.6604770
       0     3463        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5100.6604770
       0     3464        M 0x80002f18 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3465        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 2, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 21.9870000, ft4  = 0.0
       0     3466        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3468        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 138.1223340
       0     3469        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 25.128, ft4  = 138.1223340
       0     3470        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
       0     3471        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3472        M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     3473        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 28.269, ft4  = 848.4657660
       0     3474        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3476        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 2269.1526300
       0     3477        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 31.41, ft4  = 2269.1526300
       0     3479        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3480        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 2565.1290600
       0     3481        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 34.551, ft4  = 2565.1290600
       0     3482        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
       0     3483        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3484        M                                           #; (f:fpu) ft4  <-- 3650.3759700
       0     3485        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 37.692, ft4  = 3650.3759700
       0     3487        M 0x80002f18 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3488        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 3, a5  = 7, taken, goto 0x80002f00
                         M                                           #; (f:fpu) ft4  <-- 5663.0156940
       0     3489        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 5663.0156940, ft4  = 5663.0156940
       0     3490        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5663.0156940
       0     3491        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3492        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 21.9870000, ft4  = 0.0
       0     3493        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
       0     3494        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3495        M                                           #; (f:fpu) ft4  <-- 207.1835010
       0     3496        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 25.128, ft4  = 207.1835010
       0     3497        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3499        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 996.4539810
       0     3500        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 28.269, ft4  = 996.4539810
       0     3502        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3503        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 2505.9337740
       0     3504        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 31.41, ft4  = 2505.9337740
       0     3505        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
       0     3506        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3507        M                                           #; (f:fpu) ft4  <-- 2900.5690140
       0     3508        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 34.551, ft4  = 2900.5690140
       0     3510        M 0x80002f18 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     3511        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 4, a5  = 7, taken, goto 0x80002f00
                         M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     3512        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 37.692, ft4  = 4094.3406150
       0     3514        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3515        M                                           #; (f:fpu) ft4  <-- 6225.3709110
       0     3516        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 6225.3709110, ft4  = 6225.3709110
       0     3517        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6225.3709110
       0     3518        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3519        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 21.9870000, ft4  = 0.0
       0     3520        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3522        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 276.2446680
       0     3523        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 25.128, ft4  = 276.2446680
       0     3525        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3526        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 1144.4421960
       0     3527        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 28.269, ft4  = 1144.4421960
       0     3528        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
       0     3529        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3530        M                                           #; (f:fpu) ft4  <-- 2742.7149180
       0     3531        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 31.41, ft4  = 2742.7149180
       0     3533        M 0x80002f18 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     3534        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 5, a5  = 7, taken, goto 0x80002f00
                         M                                           #; (f:fpu) ft4  <-- 3236.0089680
       0     3535        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 34.551, ft4  = 3236.0089680
       0     3537        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3538        M                                           #; (f:fpu) ft4  <-- 4538.3052600
       0     3539        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 37.692, ft4  = 4538.3052600
       0     3540        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3542        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 6787.7261280
       0     3543        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 6787.7261280, ft4  = 6787.7261280
       0     3544        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6787.7261280
       0     3545        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3546        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 21.9870000, ft4  = 0.0
       0     3548        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3549        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     3550        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 25.128, ft4  = 345.3058350
       0     3551        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
       0     3552        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3553        M                                           #; (f:fpu) ft4  <-- 1292.4304110
       0     3554        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 28.269, ft4  = 1292.4304110
       0     3556        M 0x80002f18 addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
       0     3557        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 6, a5  = 7, taken, goto 0x80002f00
                         M                                           #; (f:fpu) ft4  <-- 2979.4960620
       0     3558        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 31.41, ft4  = 2979.4960620
       0     3560        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3561        M                                           #; (f:fpu) ft4  <-- 3571.4489220
       0     3562        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 34.551, ft4  = 3571.4489220
       0     3563        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3565        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 4982.2699050
       0     3566        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 37.692, ft4  = 4982.2699050
       0     3568        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3569        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 7350.0813450
       0     3570        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 7350.0813450, ft4  = 7350.0813450
       0     3571        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
                         M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7350.0813450
       0     3572        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3573        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 21.9870000, ft4  = 0.0
       0     3574        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
       0     3575        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3576        M                                           #; (f:fpu) ft4  <-- 414.3670020
       0     3577        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 25.128, ft4  = 414.3670020
       0     3579        M 0x80002f18 addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
       0     3580        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 7, a5  = 7, not taken
                         M                                           #; (f:fpu) ft4  <-- 1440.4186260
       0     3581        M 0x80002f20 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 28.269, ft4  = 1440.4186260
       0     3582        M 0x80002f24 bne     a3, s2, pc - 40        #; a3  = 2, s2  = 5, taken, goto 0x80002efc
       0     3583        M 0x80002efc li      a0, 0                  #; (wrb) a0  <-- 0
       0     3584        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 3216.2772060
       0     3585        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 31.41, ft4  = 3216.2772060
       0     3586        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3588        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 3906.8888760
       0     3589        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 34.551, ft4  = 3906.8888760
       0     3591        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
       0     3592        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 5426.2345500
       0     3593        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 37.692, ft4  = 5426.2345500
       0     3594        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3595        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3596        M                                           #; (f:fpu) ft4  <-- 5544.6251220
       0     3597        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 5544.6251220, ft4  = 5544.6251220
       0     3598        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5544.6251220
       0     3599        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3600        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 21.9870000, ft4  = 0.0
       0     3601        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3603        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 483.4281690
       0     3604        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 25.128, ft4  = 483.4281690
       0     3605        M 0x80002f18 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3606        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 1, a5  = 7, taken, goto 0x80002f00
       0     3607        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 1588.4068410
       0     3608        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 28.269, ft4  = 1588.4068410
       0     3609        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3611        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 1677.1997700
       0     3612        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 31.41, ft4  = 1677.1997700
       0     3614        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
       0     3615        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 2466.4702500
       0     3616        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 34.551, ft4  = 2466.4702500
       0     3617        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3618        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3619        M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     3620        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 37.692, ft4  = 4094.3406150
       0     3621        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3623        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 4331.1217590
       0     3624        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 4331.1217590, ft4  = 4331.1217590
       0     3625        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4331.1217590
       0     3626        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3627        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 40.833, ft4  = 0.0
       0     3628        M 0x80002f18 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3629        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 2, a5  = 7, taken, goto 0x80002f00
       0     3630        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 128.2564530
       0     3631        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 43.9740000, ft4  = 128.2564530
       0     3632        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3634        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 1233.2351250
       0     3635        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 47.115, ft4  = 1233.2351250
       0     3637        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
       0     3638        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 3453.0583500
       0     3639        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 50.256, ft4  = 3453.0583500
       0     3640        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3641        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3642        M                                           #; (f:fpu) ft4  <-- 3768.7665420
       0     3643        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 53.397, ft4  = 3768.7665420
       0     3644        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3646        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 5278.2463350
       0     3647        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 56.538, ft4  = 5278.2463350
       0     3649        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     3650        M                                           #; (f:fpu) ft4  <-- 8119.6200630
       0     3651        M 0x80002f18 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 8119.6200630, ft4  = 8119.6200630
       0     3652        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 3, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 8119.6200630
       0     3653        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3654        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 40.833, ft4  = 0.0
       0     3655        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     3657        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 256.5129060
       0     3658        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 43.9740000, ft4  = 256.5129060
       0     3660        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
       0     3661        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 1499.6139120
       0     3662        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 47.115, ft4  = 1499.6139120
       0     3663        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3664        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     3665        M                                           #; (f:fpu) ft4  <-- 3867.4253520
       0     3666        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 50.256, ft4  = 3867.4253520
       0     3667        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3669        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 4340.9876400
       0     3670        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 53.397, ft4  = 4340.9876400
       0     3672        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     3673        M                                           #; (f:fpu) ft4  <-- 6018.1874100
       0     3674        M 0x80002f18 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 56.538, ft4  = 6018.1874100
       0     3675        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 4, a5  = 7, taken, goto 0x80002f00
       0     3676        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3677        M                                           #; (f:fpu) ft4  <-- 9037.1469960
       0     3678        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 9037.1469960, ft4  = 9037.1469960
       0     3679        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9037.1469960
       0     3680        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3681        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 40.833, ft4  = 0.0
       0     3682        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3684        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 384.7693590
       0     3685        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 43.9740000, ft4  = 384.7693590
       0     3687        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3688        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 1765.9926990
       0     3689        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 47.115, ft4  = 1765.9926990
       0     3690        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3691        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3692        M                                           #; (f:fpu) ft4  <-- 4281.7923540
       0     3693        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 50.256, ft4  = 4281.7923540
       0     3694        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3696        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 4913.2087380
       0     3697        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 53.397, ft4  = 4913.2087380
       0     3700        M 0x80002f18 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 6758.1284850
       0     3701        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 5, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 56.538, ft4  = 6758.1284850
       0     3702        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3704        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 9954.6739290
       0     3705        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 9954.6739290, ft4  = 9954.6739290
       0     3706        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9954.6739290
       0     3707        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3708        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 40.833, ft4  = 0.0
       0     3709        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3711        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 513.0258120
       0     3712        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 43.9740000, ft4  = 513.0258120
       0     3714        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3715        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2032.3714860
       0     3716        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 47.115, ft4  = 2032.3714860
       0     3717        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3718        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3719        M                                           #; (f:fpu) ft4  <-- 4696.1593560
       0     3720        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 50.256, ft4  = 4696.1593560
       0     3721        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3723        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 5485.4298360
       0     3724        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 53.397, ft4  = 5485.4298360
       0     3727        M 0x80002f18 addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 7498.0695600
       0     3728        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 6, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 56.538, ft4  = 7498.0695600
       0     3729        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3731        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 10872.2008620
       0     3732        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 10872.2008620, ft4  = 10872.2008620
       0     3733        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 10872.2008620
       0     3734        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3735        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 40.833, ft4  = 0.0
       0     3736        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3738        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 641.2822650
       0     3739        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 43.9740000, ft4  = 641.2822650
       0     3741        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3742        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2298.7502730
       0     3743        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 47.115, ft4  = 2298.7502730
       0     3744        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3745        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3746        M                                           #; (f:fpu) ft4  <-- 5110.5263580
       0     3747        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 50.256, ft4  = 5110.5263580
       0     3748        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3750        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 6057.6509340
       0     3751        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 53.397, ft4  = 6057.6509340
       0     3754        M 0x80002f18 addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 8238.0106350
       0     3755        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 7, a5  = 7, not taken
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 56.538, ft4  = 8238.0106350
       0     3756        M 0x80002f20 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
       0     3757        M 0x80002f24 bne     a3, s2, pc - 40        #; a3  = 3, s2  = 5, taken, goto 0x80002efc
       0     3758        M 0x80002efc li      a0, 0                  #; (wrb) a0  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 11789.7277950
       0     3759        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 11789.7277950, ft4  = 11789.7277950
       0     3760        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 11789.7277950
       0     3761        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3762        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 40.833, ft4  = 0.0
       0     3763        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
       0     3764        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3765        M                                           #; (f:fpu) ft4  <-- 769.5387180
       0     3766        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 43.9740000, ft4  = 769.5387180
       0     3767        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3769        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 2565.1290600
       0     3770        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 47.115, ft4  = 2565.1290600
       0     3772        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3773        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 5524.8933600
       0     3774        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 50.256, ft4  = 5524.8933600
       0     3775        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
       0     3776        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3777        M                                           #; (f:fpu) ft4  <-- 6629.8720320
       0     3778        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 53.397, ft4  = 6629.8720320
       0     3781        M 0x80002f18 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 8977.9517100
       0     3782        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 1, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 56.538, ft4  = 8977.9517100
       0     3783        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3785        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 9155.5375680
       0     3786        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 9155.5375680, ft4  = 9155.5375680
       0     3787        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9155.5375680
       0     3788        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3789        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 40.833, ft4  = 0.0
       0     3790        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3792        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 897.7951710
       0     3793        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 43.9740000, ft4  = 897.7951710
       0     3795        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3796        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2831.5078470
       0     3797        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 47.115, ft4  = 2831.5078470
       0     3798        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3799        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3800        M                                           #; (f:fpu) ft4  <-- 2979.4960620
       0     3801        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 50.256, ft4  = 2979.4960620
       0     3802        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3804        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     3805        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 53.397, ft4  = 4242.3288300
       0     3808        M 0x80002f18 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 6758.1284850
       0     3809        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 2, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 56.538, ft4  = 6758.1284850
       0     3810        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3812        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 7113.3002010
       0     3813        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 7113.3002010, ft4  = 7113.3002010
       0     3814        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7113.3002010
       0     3815        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3816        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 59.679, ft4  = 0.0
       0     3817        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3819        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 187.4517390
       0     3820        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 62.82, ft4  = 187.4517390
       0     3822        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3823        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 1765.9926990
       0     3824        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 3.141, ft4  = 1765.9926990
       0     3825        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3826        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3827        M                                           #; (f:fpu) ft4  <-- 1913.9809140
       0     3828        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 6.282, ft4  = 1913.9809140
       0     3829        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3831        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 1953.4444380
       0     3832        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 9.423, ft4  = 1953.4444380
       0     3835        M 0x80002f18 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 2219.8232250
       0     3836        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 3, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 12.564, ft4  = 2219.8232250
       0     3837        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3839        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 2851.2396090
       0     3840        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 2851.2396090, ft4  = 2851.2396090
       0     3841        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2851.2396090
       0     3842        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3843        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 59.679, ft4  = 0.0
       0     3844        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3846        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 374.9034780
       0     3847        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 62.82, ft4  = 374.9034780
       0     3849        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3850        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2150.7620580
       0     3851        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 3.141, ft4  = 2150.7620580
       0     3852        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3853        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3854        M                                           #; (f:fpu) ft4  <-- 2308.6161540
       0     3855        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 6.282, ft4  = 2308.6161540
       0     3856        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3858        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2367.8114400
       0     3859        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 9.423, ft4  = 2367.8114400
       0     3862        M 0x80002f18 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 2663.7878700
       0     3863        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 4, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 12.564, ft4  = 2663.7878700
       0     3864        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3866        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3334.6677780
       0     3867        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 3334.6677780, ft4  = 3334.6677780
       0     3868        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3334.6677780
       0     3869        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3870        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 59.679, ft4  = 0.0
       0     3871        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3873        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 562.3552170
       0     3874        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 62.82, ft4  = 562.3552170
       0     3876        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3877        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2535.5314170
       0     3878        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 3.141, ft4  = 2535.5314170
       0     3879        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3880        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3881        M                                           #; (f:fpu) ft4  <-- 2703.2513940
       0     3882        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 6.282, ft4  = 2703.2513940
       0     3883        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3885        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2782.1784420
       0     3886        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 9.423, ft4  = 2782.1784420
       0     3889        M 0x80002f18 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3107.7525150
       0     3890        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 5, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 12.564, ft4  = 3107.7525150
       0     3891        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3893        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3818.0959470
       0     3894        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 3818.0959470, ft4  = 3818.0959470
       0     3895        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3818.0959470
       0     3896        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3897        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 59.679, ft4  = 0.0
       0     3898        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3900        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 749.8069560
       0     3901        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 62.82, ft4  = 749.8069560
       0     3903        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3904        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 2920.3007760
       0     3905        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 3.141, ft4  = 2920.3007760
       0     3906        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3907        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3908        M                                           #; (f:fpu) ft4  <-- 3097.8866340
       0     3909        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 6.282, ft4  = 3097.8866340
       0     3910        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3912        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 3196.5454440
       0     3913        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 9.423, ft4  = 3196.5454440
       0     3916        M 0x80002f18 addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 3551.7171600
       0     3917        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 6, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 12.564, ft4  = 3551.7171600
       0     3918        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3920        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4301.5241160
       0     3921        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 4301.5241160, ft4  = 4301.5241160
       0     3922        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4301.5241160
       0     3923        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3924        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 59.679, ft4  = 0.0
       0     3925        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3927        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 937.2586950
       0     3928        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 62.82, ft4  = 937.2586950
       0     3930        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3931        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 3305.0701350
       0     3932        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 3.141, ft4  = 3305.0701350
       0     3933        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3934        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3935        M                                           #; (f:fpu) ft4  <-- 3492.5218740
       0     3936        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 6.282, ft4  = 3492.5218740
       0     3937        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3939        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 3610.9124460
       0     3940        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 9.423, ft4  = 3610.9124460
       0     3943        M 0x80002f18 addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 3995.6818050
       0     3944        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 7, a5  = 7, not taken
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 12.564, ft4  = 3995.6818050
       0     3945        M 0x80002f20 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
       0     3946        M 0x80002f24 bne     a3, s2, pc - 40        #; a3  = 4, s2  = 5, taken, goto 0x80002efc
       0     3947        M 0x80002efc li      a0, 0                  #; (wrb) a0  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 4784.9522850
       0     3948        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 4784.9522850, ft4  = 4784.9522850
       0     3949        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4784.9522850
       0     3950        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     3951        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 59.679, ft4  = 0.0
       0     3952        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
       0     3953        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3954        M                                           #; (f:fpu) ft4  <-- 1124.7104340
       0     3955        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 62.82, ft4  = 1124.7104340
       0     3956        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     3958        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 3689.8394940
       0     3959        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 3.141, ft4  = 3689.8394940
       0     3961        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3962        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 3887.1571140
       0     3963        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 6.282, ft4  = 3887.1571140
       0     3964        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
       0     3965        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3966        M                                           #; (f:fpu) ft4  <-- 4025.2794480
       0     3967        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 9.423, ft4  = 4025.2794480
       0     3970        M 0x80002f18 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 4439.6464500
       0     3971        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 1, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 12.564, ft4  = 4439.6464500
       0     3972        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     3974        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4479.1099740
       0     3975        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 4479.1099740, ft4  = 4479.1099740
       0     3976        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4479.1099740
       0     3977        M                                           #; (f:fpu) ft4  <-- 0.0
       0     3978        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 59.679, ft4  = 0.0
       0     3979        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     3981        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 1312.1621730
       0     3982        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 62.82, ft4  = 1312.1621730
       0     3984        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     3985        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 4074.6088530
       0     3986        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 4074.6088530
       0     3987        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     3988        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     3989        M                                           #; (f:fpu) ft4  <-- 4084.4747340
       0     3990        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 4084.4747340
       0     3991        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     3993        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     3994        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 4242.3288300
       0     3997        M 0x80002f18 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 4686.2934750
       0     3998        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 2, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 4686.2934750
       0     3999        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     4001        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4765.2205230
       0     4002        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 4765.2205230, ft4  = 4765.2205230
       0     4003        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4765.2205230
       0     4004        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4005        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 15.705, ft4  = 0.0
       0     4006        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     4008        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 49.3294050
       0     4009        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 18.846, ft4  = 49.3294050
       0     4011        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     4012        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 522.8916930
       0     4013        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 21.9870000, ft4  = 522.8916930
       0     4014        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     4015        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     4016        M                                           #; (f:fpu) ft4  <-- 1558.8091980
       0     4017        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 25.128, ft4  = 1558.8091980
       0     4018        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     4020        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 1716.6632940
       0     4021        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 28.269, ft4  = 1716.6632940
       0     4024        M 0x80002f18 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                         M                                           #; (f:fpu) ft4  <-- 2515.7996550
       0     4025        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 3, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 31.41, ft4  = 2515.7996550
       0     4026        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     4028        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4094.3406150
       0     4029        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 4094.3406150, ft4  = 4094.3406150
       0     4030        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4094.3406150
       0     4031        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4032        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 15.705, ft4  = 0.0
       0     4033        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     4035        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 98.65881
       0     4036        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 18.846, ft4  = 98.65881
       0     4038        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     4039        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 631.4163840
       0     4040        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 21.9870000, ft4  = 631.4163840
       0     4041        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     4042        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     4043        M                                           #; (f:fpu) ft4  <-- 1736.3950560
       0     4044        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 25.128, ft4  = 1736.3950560
       0     4045        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     4047        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 1973.1762000
       0     4048        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 28.269, ft4  = 1973.1762000
       0     4051        M 0x80002f18 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) ft4  <-- 2861.1054900
       0     4052        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 4, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 31.41, ft4  = 2861.1054900
       0     4053        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     4055        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4538.3052600
       0     4056        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 4538.3052600, ft4  = 4538.3052600
       0     4057        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4538.3052600
       0     4058        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4059        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 15.705, ft4  = 0.0
       0     4060        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     4062        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 147.9882150
       0     4063        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 18.846, ft4  = 147.9882150
       0     4065        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     4066        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 739.9410750
       0     4067        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 21.9870000, ft4  = 739.9410750
       0     4068        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     4069        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     4070        M                                           #; (f:fpu) ft4  <-- 1913.9809140
       0     4071        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 25.128, ft4  = 1913.9809140
       0     4072        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     4074        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2229.6891060
       0     4075        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 28.269, ft4  = 2229.6891060
       0     4078        M 0x80002f18 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     4079        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 5, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 31.41, ft4  = 3206.4113250
       0     4080        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     4082        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 4982.2699050
       0     4083        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 4982.2699050, ft4  = 4982.2699050
       0     4084        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4982.2699050
       0     4085        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4086        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 15.705, ft4  = 0.0
       0     4087        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     4089        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 197.3176200
       0     4090        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 18.846, ft4  = 197.3176200
       0     4092        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     4093        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 848.4657660
       0     4094        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 21.9870000, ft4  = 848.4657660
       0     4095        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     4096        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     4097        M                                           #; (f:fpu) ft4  <-- 2091.5667720
       0     4098        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 25.128, ft4  = 2091.5667720
       0     4099        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     4101        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2486.2020120
       0     4102        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 28.269, ft4  = 2486.2020120
       0     4105        M 0x80002f18 addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) ft4  <-- 3551.7171600
       0     4106        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 6, a5  = 7, taken, goto 0x80002f00
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 31.41, ft4  = 3551.7171600
       0     4107        M 0x80002f00 mv      a1, a4                 #; a4  = 6, (wrb) a1  <-- 6
       0     4109        M 0x80002f08 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft4  <-- 5426.2345500
       0     4110        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 5426.2345500, ft4  = 5426.2345500
       0     4111        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5426.2345500
       0     4112        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4113        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 15.705, ft4  = 0.0
       0     4114        M 0x80002f08 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     4116        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80002f08
                         M                                           #; (f:fpu) ft4  <-- 246.6470250
       0     4117        M 0x80002f08 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 18.846, ft4  = 246.6470250
       0     4119        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80002f08
       0     4120        M 0x80002f08 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft4  <-- 956.9904570
       0     4121        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 21.9870000, ft4  = 956.9904570
       0     4122        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80002f08
       0     4123        M 0x80002f08 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     4124        M                                           #; (f:fpu) ft4  <-- 2269.1526300
       0     4125        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80002f08
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 25.128, ft4  = 2269.1526300
       0     4126        M 0x80002f08 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     4128        M 0x80002f10 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 2742.7149180
       0     4129        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 28.269, ft4  = 2742.7149180
       0     4132        M 0x80002f18 addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
                         M                                           #; (f:fpu) ft4  <-- 3897.0229950
       0     4133        M 0x80002f1c bne     a0, a5, pc - 28        #; a0  = 7, a5  = 7, not taken
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 31.41, ft4  = 3897.0229950
       0     4134        M 0x80002f20 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
       0     4135        M 0x80002f24 bne     a3, s2, pc - 40        #; a3  = 5, s2  = 5, not taken
       0     4136        M 0x80002f28 j       pc + 0x74              #; goto 0x80002f9c
                         M                                           #; (f:fpu) ft4  <-- 5870.1991950
       0     4137        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 5870.1991950, ft4  = 5870.1991950
       0     4138        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5870.1991950
       0     4139        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4140        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 15.705, ft4  = 0.0
       0     4143        M                                           #; (f:fpu) ft4  <-- 295.9764300
       0     4144        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 18.846, ft4  = 295.9764300
       0     4147        M                                           #; (f:fpu) ft4  <-- 1065.5151480
       0     4148        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 21.9870000, ft4  = 1065.5151480
       0     4151        M                                           #; (f:fpu) ft4  <-- 2446.7384880
       0     4152        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 25.128, ft4  = 2446.7384880
       0     4155        M                                           #; (f:fpu) ft4  <-- 2999.2278240
       0     4156        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 28.269, ft4  = 2999.2278240
       0     4159        M                                           #; (f:fpu) ft4  <-- 4242.3288300
       0     4160        M 0x80002fa0 j       pc + 0x90              #; goto 0x80003030
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 31.41, ft4  = 4242.3288300
       0     4163        M                                           #; (f:fpu) ft4  <-- 4340.9876400
       0     4164        M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 4340.9876400, ft4  = 4340.9876400
       0     4165        M 0x80002f04 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4340.9876400
       0     4166        M                                           #; (f:fpu) ft4  <-- 0.0
       0     4167        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 15.705, ft4  = 0.0
       0     4170        M                                           #; (f:fpu) ft4  <-- 345.3058350
       0     4171        M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 18.846, ft4  = 345.3058350
       0     4172        M 0x80003030 lw      s4, 8(sp)              #; sp  = 0x0011ff10, s4  <~~ Word[0x0011ff18]
       0     4174        M                                           #; (f:fpu) ft4  <-- 1174.0398390
       0     4175        M                                           #; (lsu) s4  <-- 0
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 21.9870000, ft4  = 1174.0398390
       0     4176        M 0x80003034 lw      s3, 12(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff1c]
       0     4178        M                                           #; (f:fpu) ft4  <-- 1243.1010060
       0     4179        M                                           #; (lsu) s3  <-- 6
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 25.128, ft4  = 1243.1010060
       0     4180        M 0x80003038 lw      s2, 16(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff20]
       0     4182        M                                           #; (f:fpu) ft4  <-- 1874.5173900
       0     4183        M                                           #; (lsu) s2  <-- 0x00100000
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 28.269, ft4  = 1874.5173900
       0     4184        M 0x8000303c lw      s1, 20(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff24]
       0     4186        M                                           #; (f:fpu) ft4  <-- 3206.4113250
       0     4187        M                                           #; (lsu) s1  <-- 0
                         M 0x80002f0c fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 31.41, ft4  = 3206.4113250
       0     4188        M 0x80003040 lw      s0, 24(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff28]
       0     4190        M                                           #; (f:fpu) ft4  <-- 3403.7289450
       0     4191        M                                           #; (lsu) s0  <-- 0x00100240
                         M 0x80002f14 fsgnj.d ft0, ft4, ft4          #; ft4  = 3403.7289450, ft4  = 3403.7289450
       0     4192        M 0x80003044 lw      ra, 28(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff2c]
                         M 0x80002f9c csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 3403.7289450
       0     4193        M 0x80003048 addi    sp, sp, 32             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff30
       0     4195        M                                           #; (lsu) ra  <-- 0x800009f8
       0     4196        M 0x8000304c ret                            #; ra  = 0x800009f8, goto 0x800009f8
       0     4199        M 0x800009f8 li      a3, 5                  #; (wrb) a3  <-- 5
       0     4200        M 0x800009fc li      a4, 6                  #; (wrb) a4  <-- 6
       0     4202        M 0x80000a00 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     4203        M 0x80000a04 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     4204        M 0x80000a08 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
       0     4205        M 0x80000a0c li      a5, 0                  #; (wrb) a5  <-- 0
       0     4214        M 0x80000a10 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002a10
       0     4215        M 0x80000a14 jalr    ra, ra, 840            #; ra  = 0x80002a10, (wrb) ra  <-- 0x80000a18, goto 0x80002d58
       0     4228        M 0x80002d58 addi    sp, sp, -32            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff10
       0     4229        M 0x80002d5c sw      ra, 28(sp)             #; sp  = 0x0011ff10, 0x80000a18 ~~> Word[0x0011ff2c]
       0     4231        M 0x80002d60 sw      s0, 24(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff28]
       0     4232        M 0x80002d64 sw      s1, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     4233        M 0x80002d68 sw      s2, 16(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff20]
       0     4234        M 0x80002d6c sw      s3, 12(sp)             #; sp  = 0x0011ff10, 6 ~~> Word[0x0011ff1c]
       0     4235        M 0x80002d70 sw      s4, 8(sp)              #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff18]
       0     4236        M 0x80002d74 mv      s2, a3                 #; a3  = 5, (wrb) s2  <-- 5
       0     4237        M 0x80002d78 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     4238        M 0x80002d7c slti    s1, a5, 1              #; a5  = 0, (wrb) s1  <-- 1
       0     4239        M 0x80002d80 or      a3, a3, s1             #; a3  = 0, s1  = 1, (wrb) a3  <-- 1
       0     4240        M 0x80002d84 bnez    a3, pc + 684           #; a3  = 1, taken, goto 0x80003030
       0     4244        M 0x80003030 lw      s4, 8(sp)              #; sp  = 0x0011ff10, s4  <~~ Word[0x0011ff18]
       0     4247        M                                           #; (lsu) s4  <-- 0
       0     4248        M 0x80003034 lw      s3, 12(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff1c]
       0     4251        M                                           #; (lsu) s3  <-- 6
       0     4252        M 0x80003038 lw      s2, 16(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff20]
       0     4255        M                                           #; (lsu) s2  <-- 0x00100000
       0     4256        M 0x8000303c lw      s1, 20(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff24]
       0     4259        M                                           #; (lsu) s1  <-- 0
       0     4260        M 0x80003040 lw      s0, 24(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff28]
       0     4263        M                                           #; (lsu) s0  <-- 0x00100240
       0     4264        M 0x80003044 lw      ra, 28(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff2c]
       0     4265        M 0x80003048 addi    sp, sp, 32             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff30
       0     4267        M                                           #; (lsu) ra  <-- 0x80000a18
       0     4268        M 0x8000304c ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     4271        M 0x80000a18 addi    a0, s0, 272            #; s0  = 0x00100240, (wrb) a0  <-- 0x00100350
       0     4272        M 0x80000a1c srli    a1, s0, 20             #; s0  = 0x00100240, (wrb) a1  <-- 1
       0     4274        M 0x80000a20 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     4275        M 0x80000a24 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     4276        M 0x80000a28 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     4277        M 0x80000a2c sltu    a0, a0, a2             #; a0  = 0x00100350, a2  = 0x00120001, (wrb) a0  <-- 1
       0     4286        M 0x80000a30 and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4287        M 0x80000a34 beqz    a0, pc + 432           #; a0  = 1, not taken
       0     4288        M 0x80000a38 li      s4, 8                  #; (wrb) s4  <-- 8
       0     4289        M 0x80000a3c li      a0, 64                 #; (wrb) a0  <-- 64
       0     4298        M 0x80000a40 li      a1, 192                #; (wrb) a1  <-- 192
       0     4299        M 0x80000a44 scfgw   s3, a0                 #; s3  = 6, a0  = 64
       0     4300        M 0x80000a48 scfgw   s4, a1                 #; s4  = 8, a1  = 192
       0     4301        M 0x80000a4c li      s5, 4                  #; (wrb) s5  <-- 4
       0     4310        M 0x80000a50 li      a0, 96                 #; (wrb) a0  <-- 96
       0     4311        M 0x80000a54 li      a1, 224                #; (wrb) a1  <-- 224
       0     4312        M 0x80000a58 scfgw   s5, a0                 #; s5  = 4, a0  = 96
       0     4313        M 0x80000a5c scfgw   s4, a1                 #; s4  = 8, a1  = 224
       0     4322        M 0x80000a60 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4323        M 0x80000a64 scfgw   zero, a0               #; a0  = 32
       0     4324        M 0x80000a68 scfgwi  s0, 800                #; s0  = 0x00100240
       0     4326        M 0x80000a6c csrrsi  a0, ssr, 1             #; 
       0     4336        M 0x80000a70 fsgnj.d ft3, ft0, ft0          #; ft0  = 2081.7008910, ft0  = 2081.7008910
       0     4337        M                                           #; (f:fpu) ft3  <-- 2081.7008910
       0     4338        M 0x80000a74 fadd.d  ft3, ft0, ft3          #; ft0  = 2288.8843920, ft3  = 2081.7008910
       0     4341        M                                           #; (f:fpu) ft3  <-- 4370.5852830
       0     4342        M 0x80000a78 fadd.d  ft3, ft0, ft3          #; ft0  = 2496.0678930, ft3  = 4370.5852830
       0     4345        M                                           #; (f:fpu) ft3  <-- 6866.6531760
       0     4346        M 0x80000a7c fadd.d  ft3, ft0, ft3          #; ft0  = 2703.2513940, ft3  = 6866.6531760
       0     4349        M                                           #; (f:fpu) ft3  <-- 9569.9045700
       0     4350        M 0x80000a80 fadd.d  ft3, ft0, ft3          #; ft0  = 2910.4348950, ft3  = 9569.9045700
       0     4353        M                                           #; (f:fpu) ft3  <-- 12480.3394650
       0     4354        M 0x80000a84 fadd.d  ft3, ft0, ft3          #; ft0  = 1933.7126760, ft3  = 12480.3394650
       0     4357        M                                           #; (f:fpu) ft3  <-- 14414.0521410
       0     4358        M 0x80000a88 fadd.d  ft3, ft0, ft3          #; ft0  = 1548.9433170, ft3  = 14414.0521410
       0     4361        M                                           #; (f:fpu) ft3  <-- 15962.9954580
       0     4362        M 0x80000a8c fadd.d  ft3, ft0, ft3          #; ft0  = 5100.6604770, ft3  = 15962.9954580
       0     4365        M                                           #; (f:fpu) ft3  <-- 21063.6559350
       0     4366        M 0x80000a90 fadd.d  ft3, ft0, ft3          #; ft0  = 5663.0156940, ft3  = 21063.6559350
       0     4369        M                                           #; (f:fpu) ft3  <-- 26726.6716290
       0     4370        M 0x80000a94 fadd.d  ft3, ft0, ft3          #; ft0  = 6225.3709110, ft3  = 26726.6716290
       0     4373        M                                           #; (f:fpu) ft3  <-- 32952.0425400
       0     4374        M 0x80000a98 fadd.d  ft3, ft0, ft3          #; ft0  = 6787.7261280, ft3  = 32952.0425400
       0     4377        M                                           #; (f:fpu) ft3  <-- 39739.7686680
       0     4378        M 0x80000a9c fadd.d  ft3, ft0, ft3          #; ft0  = 7350.0813450, ft3  = 39739.7686680
       0     4381        M                                           #; (f:fpu) ft3  <-- 47089.8500130
       0     4382        M 0x80000aa0 fadd.d  ft3, ft0, ft3          #; ft0  = 5544.6251220, ft3  = 47089.8500130
       0     4385        M                                           #; (f:fpu) ft3  <-- 52634.4751350
       0     4386        M 0x80000aa4 fadd.d  ft3, ft0, ft3          #; ft0  = 4331.1217590, ft3  = 52634.4751350
       0     4389        M                                           #; (f:fpu) ft3  <-- 56965.5968940
       0     4390        M 0x80000aa8 fadd.d  ft3, ft0, ft3          #; ft0  = 8119.6200630, ft3  = 56965.5968940
       0     4393        M                                           #; (f:fpu) ft3  <-- 65085.2169570
       0     4394        M 0x80000aac fadd.d  ft3, ft0, ft3          #; ft0  = 9037.1469960, ft3  = 65085.2169570
       0     4397        M                                           #; (f:fpu) ft3  <-- 74122.3639530
       0     4398        M 0x80000ab0 fadd.d  ft3, ft0, ft3          #; ft0  = 9954.6739290, ft3  = 74122.3639530
       0     4401        M                                           #; (f:fpu) ft3  <-- 84077.0378820
       0     4402        M 0x80000ab4 fadd.d  ft3, ft0, ft3          #; ft0  = 10872.2008620, ft3  = 84077.0378820
       0     4405        M                                           #; (f:fpu) ft3  <-- 94949.2387440
       0     4406        M 0x80000ab8 fadd.d  ft3, ft0, ft3          #; ft0  = 11789.7277950, ft3  = 94949.2387440
       0     4409        M                                           #; (f:fpu) ft3  <-- 106738.9665390
       0     4410        M 0x80000abc fadd.d  ft3, ft0, ft3          #; ft0  = 9155.5375680, ft3  = 106738.9665390
       0     4413        M                                           #; (f:fpu) ft3  <-- 115894.5041070
       0     4414        M 0x80000ac0 fadd.d  ft3, ft0, ft3          #; ft0  = 7113.3002010, ft3  = 115894.5041070
       0     4417        M                                           #; (f:fpu) ft3  <-- 123007.8043080
       0     4418        M 0x80000ac4 fadd.d  ft3, ft0, ft3          #; ft0  = 2851.2396090, ft3  = 123007.8043080
       0     4421        M                                           #; (f:fpu) ft3  <-- 125859.0439170
       0     4422        M 0x80000ac8 fadd.d  ft3, ft0, ft3          #; ft0  = 3334.6677780, ft3  = 125859.0439170
       0     4425        M                                           #; (f:fpu) ft3  <-- 129193.7116950
       0     4426        M 0x80000acc fadd.d  ft3, ft0, ft3          #; ft0  = 3818.0959470, ft3  = 129193.7116950
       0     4429        M                                           #; (f:fpu) ft3  <-- 133011.8076420
       0     4430        M 0x80000ad0 fadd.d  ft3, ft0, ft3          #; ft0  = 4301.5241160, ft3  = 133011.8076420
       0     4433        M                                           #; (f:fpu) ft3  <-- 137313.3317580
       0     4434        M 0x80000ad4 fadd.d  ft3, ft0, ft3          #; ft0  = 4784.9522850, ft3  = 137313.3317580
       0     4437        M                                           #; (f:fpu) ft3  <-- 142098.2840430
       0     4438        M 0x80000ad8 fadd.d  ft3, ft0, ft3          #; ft0  = 4479.1099740, ft3  = 142098.2840430
       0     4441        M                                           #; (f:fpu) ft3  <-- 146577.3940170
       0     4442        M 0x80000b00 li      a3, 5                  #; (wrb) a3  <-- 5
                         M 0x80000adc fadd.d  ft3, ft0, ft3          #; ft0  = 4765.2205230, ft3  = 146577.3940170
       0     4443        M 0x80000b04 li      a5, 7                  #; (wrb) a5  <-- 7
       0     4444        M 0x80000b08 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
       0     4445        M 0x80000b0c mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
                         M                                           #; (f:fpu) ft3  <-- 151342.6145400
       0     4446        M 0x80000ae0 fadd.d  ft3, ft0, ft3          #; ft0  = 4094.3406150, ft3  = 151342.6145400
       0     4449        M                                           #; (f:fpu) ft3  <-- 155436.9551550
       0     4450        M 0x80000ae4 fadd.d  ft3, ft0, ft3          #; ft0  = 4538.3052600, ft3  = 155436.9551550
       0     4453        M                                           #; (f:fpu) ft3  <-- 159975.2604150
       0     4454        M 0x80000b10 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
                         M 0x80000ae8 fadd.d  ft3, ft0, ft3          #; ft0  = 4982.2699050, ft3  = 159975.2604150
       0     4455        M 0x80000b14 li      a4, 0                  #; (wrb) a4  <-- 0
       0     4456        M 0x80000b18 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002b18
       0     4457        M 0x80000b1c jalr    ra, ra, 576            #; ra  = 0x80002b18, (wrb) ra  <-- 0x80000b20, goto 0x80002d58
                         M                                           #; (f:fpu) ft3  <-- 164957.5303200
       0     4458        M 0x80000aec fadd.d  ft3, ft0, ft3          #; ft0  = 5426.2345500, ft3  = 164957.5303200
       0     4461        M                                           #; (f:fpu) ft3  <-- 170383.7648700
       0     4462        M 0x80000af0 fadd.d  ft3, ft0, ft3          #; ft0  = 5870.1991950, ft3  = 170383.7648700
       0     4465        M                                           #; (f:fpu) ft3  <-- 176253.9640650
       0     4466        M 0x80000af4 fadd.d  ft3, ft0, ft3          #; ft0  = 4340.9876400, ft3  = 176253.9640650
       0     4468        M 0x80002d58 addi    sp, sp, -32            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff10
       0     4469        M 0x80002d5c sw      ra, 28(sp)             #; sp  = 0x0011ff10, 0x80000b20 ~~> Word[0x0011ff2c]
                         M                                           #; (f:fpu) ft3  <-- 180594.9517050
       0     4470        M 0x80000af8 fadd.d  fs0, ft0, ft3          #; ft0  = 3403.7289450, ft3  = 180594.9517050
       0     4471        M 0x80002d60 sw      s0, 24(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff28]
                         M 0x80000afc csrrci  a0, ssr, 1             #; 
       0     4472        M 0x80002d64 sw      s1, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     4473        M 0x80002d68 sw      s2, 16(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff20]
                         M                                           #; (f:fpu) fs0  <-- 183998.6806500
       0     4474        M 0x80002d6c sw      s3, 12(sp)             #; sp  = 0x0011ff10, 6 ~~> Word[0x0011ff1c]
       0     4475        M 0x80002d70 sw      s4, 8(sp)              #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff18]
       0     4476        M 0x80002d74 mv      s2, a3                 #; a3  = 5, (wrb) s2  <-- 5
       0     4477        M 0x80002d78 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
       0     4478        M 0x80002d7c slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
       0     4479        M 0x80002d80 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
       0     4480        M 0x80002d84 bnez    a3, pc + 684           #; a3  = 0, not taken
       0     4481        M 0x80002d88 mv      s3, a0                 #; a0  = 0x00100240, (wrb) s3  <-- 0x00100240
       0     4482        M 0x80002d8c addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
       0     4483        M 0x80002d90 slli    s1, a6, 3              #; a6  = 6, (wrb) s1  <-- 48
       0     4484        M 0x80002d94 add     a3, s1, a0             #; s1  = 48, a0  = 0x00100240, (wrb) a3  <-- 0x00100270
       0     4485        M 0x80002d98 addi    t4, s2, -1             #; s2  = 5, (wrb) t4  <-- 4
       0     4486        M 0x80002d9c slli    s0, a5, 3              #; a5  = 7, (wrb) s0  <-- 56
       0     4487        M 0x80002da0 mul     a0, s0, t4             #; s0  = 56, t4  = 4
       0     4490        M                                           #; (acc) a3  <-- 0x00a686b3
       0     4491        M 0x80002da4 add     a3, a3, a0             #; a3  = 0x00100270, a0  = 224, (wrb) a3  <-- 0x00100350
       0     4492        M 0x80002da8 bge     zero, a4, pc + 388     #; a4  = 0, taken, goto 0x80002f2c
       0     4495        M 0x80002f2c srli    a0, s3, 20             #; s3  = 0x00100240, (wrb) a0  <-- 1
       0     4507        M 0x80002f30 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
       0     4508        M 0x80002f34 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     4509        M 0x80002f38 addi    a1, a1, 1              #; a1  = 0x00120000, (wrb) a1  <-- 0x00120001
       0     4510        M 0x80002f3c sltu    a1, a3, a1             #; a3  = 0x00100350, a1  = 0x00120001, (wrb) a1  <-- 1
       0     4519        M 0x80002f40 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4520        M 0x80002f44 beqz    a0, pc + 96            #; a0  = 1, not taken
       0     4521        M 0x80002f48 li      a1, 0                  #; (wrb) a1  <-- 0
       0     4522        M 0x80002f4c li      a0, 8                  #; (wrb) a0  <-- 8
       0     4531        M 0x80002f50 li      a2, 64                 #; (wrb) a2  <-- 64
       0     4532        M 0x80002f54 scfgw   a6, a2                 #; a6  = 6, a2  = 64
       0     4533        M 0x80002f58 li      a2, 192                #; (wrb) a2  <-- 192
       0     4534        M 0x80002f5c scfgw   a0, a2                 #; a0  = 8, a2  = 192
       0     4543        M 0x80002f60 li      a2, 96                 #; (wrb) a2  <-- 96
       0     4544        M 0x80002f64 li      a3, 224                #; (wrb) a3  <-- 224
       0     4545        M 0x80002f68 scfgw   t4, a2                 #; t4  = 4, a2  = 96
       0     4546        M 0x80002f6c scfgw   a0, a3                 #; a0  = 8, a3  = 224
       0     4555        M 0x80002f70 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4556        M 0x80002f74 scfgw   zero, a0               #; a0  = 32
       0     4557        M 0x80002f78 scfgwi  s3, 928                #; s3  = 0x00100240
       0     4559        M 0x80002f7c csrrsi  a0, ssr, 1             #; 
       0     4568        M 0x80002f84 mv      a0, a5                 #; a5  = 7, (wrb) a0  <-- 7
                         M 0x80002f80 fcvt.d.w ft3, zero             #; ac1  = 0
       0     4569        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4570        M 0x80002f8c addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     4571        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4572        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4573        M 0x80002f8c addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     4574        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4575        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4576        M 0x80002f8c addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     4577        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4578        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4579        M 0x80002f8c addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     4580        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4581        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4582        M 0x80002f8c addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     4583        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4584        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4585        M 0x80002f8c addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     4586        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4587        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4588        M 0x80002f8c addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     4589        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 0, not taken
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4590        M 0x80002f94 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4591        M 0x80002f98 bne     a1, s2, pc - 20        #; a1  = 1, s2  = 5, taken, goto 0x80002f84
       0     4592        M 0x80002f84 mv      a0, a5                 #; a5  = 7, (wrb) a0  <-- 7
       0     4594        M 0x80002f8c addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     4595        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4596        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4597        M 0x80002f8c addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     4598        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4599        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4600        M 0x80002f8c addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     4601        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4602        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4603        M 0x80002f8c addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     4604        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4605        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4606        M 0x80002f8c addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     4607        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4608        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4609        M 0x80002f8c addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     4610        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4611        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4612        M 0x80002f8c addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     4613        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 0, not taken
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4614        M 0x80002f94 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4615        M 0x80002f98 bne     a1, s2, pc - 20        #; a1  = 2, s2  = 5, taken, goto 0x80002f84
       0     4616        M 0x80002f84 mv      a0, a5                 #; a5  = 7, (wrb) a0  <-- 7
       0     4618        M 0x80002f8c addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     4619        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4620        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4621        M 0x80002f8c addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     4622        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4623        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4624        M 0x80002f8c addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     4625        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4626        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4627        M 0x80002f8c addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     4628        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4629        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4630        M 0x80002f8c addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     4631        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4632        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4633        M 0x80002f8c addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     4634        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4635        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4636        M 0x80002f8c addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     4637        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 0, not taken
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4638        M 0x80002f94 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4639        M 0x80002f98 bne     a1, s2, pc - 20        #; a1  = 3, s2  = 5, taken, goto 0x80002f84
       0     4640        M 0x80002f84 mv      a0, a5                 #; a5  = 7, (wrb) a0  <-- 7
       0     4642        M 0x80002f8c addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     4643        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4644        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4645        M 0x80002f8c addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     4646        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4647        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4648        M 0x80002f8c addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     4649        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4650        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4651        M 0x80002f8c addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     4652        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4653        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4654        M 0x80002f8c addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     4655        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4656        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4657        M 0x80002f8c addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     4658        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4659        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4660        M 0x80002f8c addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     4661        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 0, not taken
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4662        M 0x80002f94 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4663        M 0x80002f98 bne     a1, s2, pc - 20        #; a1  = 4, s2  = 5, taken, goto 0x80002f84
       0     4664        M 0x80002f84 mv      a0, a5                 #; a5  = 7, (wrb) a0  <-- 7
       0     4666        M 0x80002f8c addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     4667        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4668        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4669        M 0x80002f8c addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     4670        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4671        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4672        M 0x80002f8c addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     4673        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4674        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4675        M 0x80002f8c addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
       0     4676        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4677        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4678        M 0x80002f8c addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     4679        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4680        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4681        M 0x80002f8c addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     4682        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80002f88
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4683        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4684        M 0x80002f8c addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     4685        M 0x80002f90 bnez    a0, pc - 8             #; a0  = 0, not taken
                         M 0x80002f88 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4686        M 0x80002f94 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4687        M 0x80002f98 bne     a1, s2, pc - 20        #; a1  = 5, s2  = 5, not taken
       0     4689        M 0x80002f9c csrrci  a0, ssr, 1             #; 
       0     4691        M 0x80002fa0 j       pc + 0x90              #; goto 0x80003030
       0     4694        M 0x80003030 lw      s4, 8(sp)              #; sp  = 0x0011ff10, s4  <~~ Word[0x0011ff18]
       0     4697        M                                           #; (lsu) s4  <-- 8
       0     4698        M 0x80003034 lw      s3, 12(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff1c]
       0     4701        M                                           #; (lsu) s3  <-- 6
       0     4702        M 0x80003038 lw      s2, 16(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff20]
       0     4705        M                                           #; (lsu) s2  <-- 0x00100000
       0     4706        M 0x8000303c lw      s1, 20(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff24]
       0     4709        M                                           #; (lsu) s1  <-- 0
       0     4710        M 0x80003040 lw      s0, 24(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff28]
       0     4713        M                                           #; (lsu) s0  <-- 0x00100240
       0     4714        M 0x80003044 lw      ra, 28(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff2c]
       0     4715        M 0x80003048 addi    sp, sp, 32             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff30
       0     4717        M                                           #; (lsu) ra  <-- 0x80000b20
       0     4718        M 0x8000304c ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     4721        M 0x80000b20 li      a0, 64                 #; (wrb) a0  <-- 64
       0     4722        M 0x80000b24 li      a1, 192                #; (wrb) a1  <-- 192
       0     4723        M 0x80000b28 scfgw   s3, a0                 #; s3  = 6, a0  = 64
       0     4724        M 0x80000b2c scfgw   s4, a1                 #; s4  = 8, a1  = 192
       0     4733        M 0x80000b30 li      a0, 96                 #; (wrb) a0  <-- 96
       0     4734        M 0x80000b34 li      a1, 224                #; (wrb) a1  <-- 224
       0     4735        M 0x80000b38 scfgw   s5, a0                 #; s5  = 4, a0  = 96
       0     4736        M 0x80000b3c scfgw   s4, a1                 #; s4  = 8, a1  = 224
       0     4745        M 0x80000b40 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4746        M 0x80000b44 scfgw   zero, a0               #; a0  = 32
       0     4747        M 0x80000b48 scfgwi  s0, 800                #; s0  = 0x00100240
       0     4749        M 0x80000b4c csrrsi  a0, ssr, 1             #; 
       0     4759        M 0x80000b50 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     4760        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4761        M 0x80000b54 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4764        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4765        M 0x80000b58 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4768        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4769        M 0x80000b5c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4772        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4773        M 0x80000b60 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4776        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4777        M 0x80000b64 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4780        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4781        M 0x80000b68 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4784        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4785        M 0x80000b6c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4788        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4789        M 0x80000b70 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4792        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4793        M 0x80000b74 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4796        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4797        M 0x80000b78 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4800        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4801        M 0x80000b7c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4804        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4805        M 0x80000b80 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4808        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4809        M 0x80000b84 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4812        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4813        M 0x80000b88 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4816        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4817        M 0x80000b8c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4820        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4821        M 0x80000b90 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4824        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4825        M 0x80000b94 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4828        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4829        M 0x80000b98 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4832        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4833        M 0x80000b9c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4836        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4837        M 0x80000ba0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4840        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4841        M 0x80000ba4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4844        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4845        M 0x80000ba8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4848        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4849        M 0x80000bac fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4852        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4853        M 0x80000bb0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4856        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4857        M 0x80000bb4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4860        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4861        M 0x80000bb8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4864        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4865        M 0x80000be0 j       pc + 0x24c             #; goto 0x80000e2c
                         M 0x80000bbc fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4868        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4869        M 0x80000bc0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4872        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4873        M 0x80000bc4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4876        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4877        M 0x80000e2c auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003e2c
                         M 0x80000bc8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4880        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4881        M 0x80000bcc fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4884        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4885        M 0x80000bd0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4888        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4889        M 0x80000e30 addi    a0, a0, -1588          #; a0  = 0x80003e2c, (wrb) a0  <-- 0x800037f8
                         M 0x80000bd4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4892        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4893        M 0x80000bd8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     4894        M 0x80000bdc csrrci  a0, ssr, 1             #; 
       0     4896        M 0x80000e34 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800037f8], (f:fpu) ft3  <-- 0.0
       0     4903        M 0x80000e48 lw      a2, 0(sp)              #; sp  = 0x0011ff30, a2  <~~ Word[0x0011ff30]
       0     4905        M                                           #; (f:lsu) ft4  <-- -183998.6806500
       0     4906        M 0x80000e38 fadd.d  ft4, fs0, ft4          #; fs0  = 183998.6806500, ft4  = -183998.6806500
       0     4907        M                                           #; (lsu) a2  <-- 0
       0     4908        M 0x80000e4c lw      a3, 4(sp)              #; sp  = 0x0011ff30, a3  <~~ Word[0x0011ff34]
       0     4909        M                                           #; (f:fpu) ft4  <-- -0.0000000
       0     4910        M 0x80000e3c fadd.d  ft3, ft4, ft3          #; ft4  = -0.0000000, ft3  = 0.0
       0     4911        M                                           #; (lsu) a3  <-- 0
       0     4913        M 0x80000e50 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002e50
                         M                                           #; (f:fpu) ft3  <-- -0.0000000
       0     4914        M 0x80000e54 addi    a0, a0, 1653           #; a0  = 0x80002e50, (wrb) a0  <-- 0x800034c5
                         M 0x80000e40 fsgnjx.d fs0, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000
       0     4915        M 0x80000e58 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000e58
                         M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     4916        M 0x80000e5c jalr    ra, ra, 68             #; ra  = 0x80000e58, (wrb) ra  <-- 0x80000e60, goto 0x80000e9c
                         M 0x80000e44 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff30]
       0     4936        M 0x80000e9c addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
       0     4939        M 0x80000ea0 sw      ra, 12(sp)             #; sp  = 0x0011ff00, 0x80000e60 ~~> Word[0x0011ff0c]
       0     4940        M 0x80000ea4 mv      t0, a0                 #; a0  = 0x800034c5, (wrb) t0  <-- 0x800034c5
       0     4941        M 0x80000ea8 sw      a7, 44(sp)             #; sp  = 0x0011ff00, 328 ~~> Word[0x0011ff2c]
       0     4942        M 0x80000eac sw      a6, 40(sp)             #; sp  = 0x0011ff00, 6 ~~> Word[0x0011ff28]
       0     4951        M 0x80000eb0 sw      a5, 36(sp)             #; sp  = 0x0011ff00, 7 ~~> Word[0x0011ff24]
       0     4952        M 0x80000eb4 sw      a4, 32(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff20]
       0     4953        M 0x80000eb8 sw      a3, 28(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff1c]
       0     4954        M 0x80000ebc sw      a2, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
       0     4963        M 0x80000ec0 sw      a1, 20(sp)             #; sp  = 0x0011ff00, 224 ~~> Word[0x0011ff14]
       0     4964        M 0x80000ec4 addi    a0, sp, 20             #; sp  = 0x0011ff00, (wrb) a0  <-- 0x0011ff14
       0     4965        M 0x80000ec8 sw      a0, 8(sp)              #; sp  = 0x0011ff00, 0x0011ff14 ~~> Word[0x0011ff08]
       0     4966        M 0x80000ecc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ecc
       0     4975        M 0x80000ed0 addi    a0, a0, -988           #; a0  = 0x80001ecc, (wrb) a0  <-- 0x80001af0
       0     4976        M 0x80000ed4 addi    a1, sp, 7              #; sp  = 0x0011ff00, (wrb) a1  <-- 0x0011ff07
       0     4977        M 0x80000ed8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     4978        M 0x80000edc addi    a4, sp, 20             #; sp  = 0x0011ff00, (wrb) a4  <-- 0x0011ff14
       0     4987        M 0x80000ee0 mv      a3, t0                 #; t0  = 0x800034c5, (wrb) a3  <-- 0x800034c5
       0     4988        M 0x80000ee4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000ee4
       0     4989        M 0x80000ee8 jalr    ra, ra, 20             #; ra  = 0x80000ee4, (wrb) ra  <-- 0x80000eec, goto 0x80000ef8
       0     4999        M 0x80000ef8 addi    sp, sp, -112           #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fe90
       0     5000        M 0x80000efc sw      ra, 108(sp)            #; sp  = 0x0011fe90, 0x80000eec ~~> Word[0x0011fefc]
       0     5011        M 0x80000f00 sw      s0, 104(sp)            #; sp  = 0x0011fe90, 0x00100240 ~~> Word[0x0011fef8]
       0     5012        M 0x80000f04 sw      s1, 100(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef4]
       0     5013        M 0x80000f08 sw      s2, 96(sp)             #; sp  = 0x0011fe90, 0x00100000 ~~> Word[0x0011fef0]
       0     5014        M 0x80000f0c sw      s3, 92(sp)             #; sp  = 0x0011fe90, 6 ~~> Word[0x0011feec]
       0     5023        M 0x80000f10 sw      s4, 88(sp)             #; sp  = 0x0011fe90, 8 ~~> Word[0x0011fee8]
       0     5024        M 0x80000f14 sw      s5, 84(sp)             #; sp  = 0x0011fe90, 4 ~~> Word[0x0011fee4]
       0     5025        M 0x80000f18 sw      s6, 80(sp)             #; sp  = 0x0011fe90, 0x001000f0 ~~> Word[0x0011fee0]
       0     5026        M 0x80000f1c sw      s7, 76(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fedc]
       0     5035        M 0x80000f20 sw      s8, 72(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed8]
       0     5036        M 0x80000f24 sw      s9, 68(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed4]
       0     5037        M 0x80000f28 sw      s10, 64(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed0]
       0     5038        M 0x80000f2c sw      s11, 60(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fecc]
       0     5047        M 0x80000f30 mv      s3, a4                 #; a4  = 0x0011ff14, (wrb) s3  <-- 0x0011ff14
       0     5048        M 0x80000f34 mv      s0, a3                 #; a3  = 0x800034c5, (wrb) s0  <-- 0x800034c5
       0     5049        M 0x80000f38 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5050        M 0x80000f3c mv      s4, a1                 #; a1  = 0x0011ff07, (wrb) s4  <-- 0x0011ff07
       0     5059        M 0x80000f40 beqz    a1, pc + 12            #; a1  = 0x0011ff07, not taken
       0     5060        M 0x80000f44 mv      s2, a0                 #; a0  = 0x80001af0, (wrb) s2  <-- 0x80001af0
       0     5061        M 0x80000f48 j       pc + 0xc               #; goto 0x80000f54
       0     5071        M 0x80000f54 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5072        M 0x80000f58 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5073        M 0x80000f5c li      s11, 16                #; (wrb) s11 <-- 16
       0     5083        M 0x80000f60 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5084        M 0x80000f64 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5085        M 0x80000f68 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5086        M 0x80000f6c sw      a0, 24(sp)             #; sp  = 0x0011fe90, 2048 ~~> Word[0x0011fea8]
       0     5095        M 0x80000f70 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5096        M 0x80000f74 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5097        M 0x80000f78 sw      a0, 16(sp)             #; sp  = 0x0011fe90, 65535 ~~> Word[0x0011fea0]
       0     5098        M 0x80000f7c addi    s10, s0, 2             #; s0  = 0x800034c5, (wrb) s10 <-- 0x800034c7
       0     5107        M 0x80000f80 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5108        M 0x80000f84 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5109        M 0x80000f88 lbu     a0, 0(s0)              #; s0  = 0x800034c5, a0  <~~ Byte[0x800034c5]
       0     5120        M                                           #; (lsu) a0  <-- 101
       0     5121        M 0x80000f8c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     5122        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     5123        M 0x80000f94 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5124        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5125        M 0x80000f9c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5134        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5135        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     5157        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     5158        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5159        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5160        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5169        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     5170        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     5171        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     5172        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5183        M                                           #; (lsu) a4  <-- 0
       0     5184        M 0x80001b10 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5185        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 1 ~~> Word[0x800038b4]
       0     5186        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 0, (wrb) a4  <-- 0x800038b4
       0     5187        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b4, 101 ~~> Byte[0x800038fc]
       0     5193        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5209        M                                           #; (lsu) a4  <-- 1
       0     5210        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5211        M 0x80001b28 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5212        M 0x80001b2c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     5213        M 0x80001b30 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     5214        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5215        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     5236        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     5250        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034c5, (wrb) s0  <-- 0x800034c6
       0     5251        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034c7, (wrb) s10 <-- 0x800034c8
       0     5253        M 0x80000fb0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5254        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034c6, a0  <~~ Byte[0x800034c6]
       0     5265        M                                           #; (lsu) a0  <-- 114
       0     5266        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f90
       0     5267        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5268        M 0x80000f94 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5269        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5270        M 0x80000f9c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5271        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5272        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     5275        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5276        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5277        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5278        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5279        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     5280        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     5281        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5282        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     5283        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5294        M                                           #; (lsu) a4  <-- 1
       0     5295        M 0x80001b10 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5296        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 2 ~~> Word[0x800038b4]
       0     5297        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 1, (wrb) a4  <-- 0x800038b5
       0     5298        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b5, 114 ~~> Byte[0x800038fd]
       0     5299        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5320        M                                           #; (lsu) a4  <-- 2
       0     5321        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     5322        M 0x80001b28 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     5323        M 0x80001b2c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5324        M 0x80001b30 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5325        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5326        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     5329        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     5334        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034c6, (wrb) s0  <-- 0x800034c7
       0     5335        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034c8, (wrb) s10 <-- 0x800034c9
       0     5337        M 0x80000fb0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5338        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034c7, a0  <~~ Byte[0x800034c7]
       0     5349        M                                           #; (lsu) a0  <-- 114
       0     5350        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f90
       0     5351        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5352        M 0x80000f94 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5353        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5354        M 0x80000f9c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5355        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5356        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     5359        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5360        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5361        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5362        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5363        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     5364        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     5365        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5366        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     5367        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5378        M                                           #; (lsu) a4  <-- 2
       0     5379        M 0x80001b10 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     5380        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 3 ~~> Word[0x800038b4]
       0     5381        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 2, (wrb) a4  <-- 0x800038b6
       0     5382        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b6, 114 ~~> Byte[0x800038fe]
       0     5383        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5404        M                                           #; (lsu) a4  <-- 3
       0     5405        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     5406        M 0x80001b28 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     5407        M 0x80001b2c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5408        M 0x80001b30 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5409        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5410        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     5413        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     5418        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034c7, (wrb) s0  <-- 0x800034c8
       0     5419        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034c9, (wrb) s10 <-- 0x800034ca
       0     5421        M 0x80000fb0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     5422        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034c8, a0  <~~ Byte[0x800034c8]
       0     5433        M                                           #; (lsu) a0  <-- 111
       0     5434        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000f90
       0     5435        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     5436        M 0x80000f94 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     5437        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5438        M 0x80000f9c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     5439        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5440        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     5443        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     5444        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5445        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5446        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5447        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     5448        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     5449        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5450        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     5451        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5462        M                                           #; (lsu) a4  <-- 3
       0     5463        M 0x80001b10 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     5464        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 4 ~~> Word[0x800038b4]
       0     5465        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 3, (wrb) a4  <-- 0x800038b7
       0     5466        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b7, 111 ~~> Byte[0x800038ff]
       0     5467        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5488        M                                           #; (lsu) a4  <-- 4
       0     5489        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     5490        M 0x80001b28 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     5491        M 0x80001b2c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     5492        M 0x80001b30 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     5493        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5494        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     5497        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     5502        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034c8, (wrb) s0  <-- 0x800034c9
       0     5503        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034ca, (wrb) s10 <-- 0x800034cb
       0     5505        M 0x80000fb0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     5506        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034c9, a0  <~~ Byte[0x800034c9]
       0     5517        M                                           #; (lsu) a0  <-- 114
       0     5518        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f90
       0     5519        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5520        M 0x80000f94 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     5521        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5522        M 0x80000f9c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     5523        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5524        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     5527        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5528        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5529        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5530        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5531        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     5532        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     5533        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5534        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     5535        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5546        M                                           #; (lsu) a4  <-- 4
       0     5547        M 0x80001b10 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     5548        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 5 ~~> Word[0x800038b4]
       0     5549        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 4, (wrb) a4  <-- 0x800038b8
       0     5550        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b8, 114 ~~> Byte[0x80003900]
       0     5551        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5572        M                                           #; (lsu) a4  <-- 5
       0     5573        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     5574        M 0x80001b28 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     5575        M 0x80001b2c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5576        M 0x80001b30 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5577        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5578        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     5581        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     5586        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034c9, (wrb) s0  <-- 0x800034ca
       0     5587        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034cb, (wrb) s10 <-- 0x800034cc
       0     5589        M 0x80000fb0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     5590        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034ca, a0  <~~ Byte[0x800034ca]
       0     5601        M                                           #; (lsu) a0  <-- 32
       0     5602        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000f90
       0     5603        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     5604        M 0x80000f94 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     5605        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5606        M 0x80000f9c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     5607        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5608        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     5611        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     5612        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5613        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5614        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5615        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     5616        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     5617        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5618        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     5619        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5630        M                                           #; (lsu) a4  <-- 5
       0     5631        M 0x80001b10 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     5632        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 6 ~~> Word[0x800038b4]
       0     5633        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 5, (wrb) a4  <-- 0x800038b9
       0     5634        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038b9, 32 ~~> Byte[0x80003901]
       0     5635        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5656        M                                           #; (lsu) a4  <-- 6
       0     5657        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     5658        M 0x80001b28 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     5659        M 0x80001b2c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     5660        M 0x80001b30 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     5661        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5662        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     5665        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     5670        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034ca, (wrb) s0  <-- 0x800034cb
       0     5671        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034cc, (wrb) s10 <-- 0x800034cd
       0     5673        M 0x80000fb0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     5674        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034cb, a0  <~~ Byte[0x800034cb]
       0     5685        M                                           #; (lsu) a0  <-- 61
       0     5686        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000f90
       0     5687        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     5688        M 0x80000f94 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     5689        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5690        M 0x80000f9c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     5691        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5692        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     5695        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     5696        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5697        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5698        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5699        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     5700        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     5701        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5702        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     5703        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5714        M                                           #; (lsu) a4  <-- 6
       0     5715        M 0x80001b10 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     5716        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 7 ~~> Word[0x800038b4]
       0     5717        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 6, (wrb) a4  <-- 0x800038ba
       0     5718        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038ba, 61 ~~> Byte[0x80003902]
       0     5719        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5740        M                                           #; (lsu) a4  <-- 7
       0     5741        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     5742        M 0x80001b28 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     5743        M 0x80001b2c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     5744        M 0x80001b30 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     5745        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5746        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     5749        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     5754        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034cb, (wrb) s0  <-- 0x800034cc
       0     5755        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034cd, (wrb) s10 <-- 0x800034ce
       0     5757        M 0x80000fb0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     5758        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034cc, a0  <~~ Byte[0x800034cc]
       0     5769        M                                           #; (lsu) a0  <-- 32
       0     5770        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000f90
       0     5771        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     5772        M 0x80000f94 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     5773        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5774        M 0x80000f9c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     5775        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5776        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     5779        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     5780        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5781        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5782        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5783        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     5784        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     5785        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5786        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     5787        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5798        M                                           #; (lsu) a4  <-- 7
       0     5799        M 0x80001b10 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     5800        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 8 ~~> Word[0x800038b4]
       0     5801        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 7, (wrb) a4  <-- 0x800038bb
       0     5802        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038bb, 32 ~~> Byte[0x80003903]
       0     5803        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     5824        M                                           #; (lsu) a4  <-- 8
       0     5825        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     5826        M 0x80001b28 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     5827        M 0x80001b2c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     5828        M 0x80001b30 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     5829        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5830        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     5833        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     5838        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034cc, (wrb) s0  <-- 0x800034cd
       0     5839        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034ce, (wrb) s10 <-- 0x800034cf
       0     5841        M 0x80000fb0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     5842        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034cd, a0  <~~ Byte[0x800034cd]
       0     5853        M                                           #; (lsu) a0  <-- 37
       0     5854        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000f90
       0     5855        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000fc0
       0     5867        M 0x80000fc0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     5868        M 0x80000fc4 j       pc + 0x10              #; goto 0x80000fd4
       0     5879        M 0x80000fd4 lbu     a0, -1(s10)            #; s10 = 0x800034cf, a0  <~~ Byte[0x800034ce]
       0     5890        M                                           #; (lsu) a0  <-- 102
       0     5891        M 0x80000fd8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     5892        M 0x80000fdc bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80001014
       0     5904        M 0x80001014 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     5905        M 0x80001018 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     5906        M 0x8000101c addi    a1, s10, -1            #; s10 = 0x800034cf, (wrb) a1  <-- 0x800034ce
       0     5916        M 0x80001020 li      a3, 9                  #; (wrb) a3  <-- 9
       0     5917        M 0x80001024 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800010a0
       0     5939        M 0x800010a0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     5940        M 0x800010a4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x800010f4
       0     5962        M 0x800010f4 li      s6, 0                  #; (wrb) s6  <-- 0
       0     5963        M 0x800010f8 mv      s10, a1                #; a1  = 0x800034ce, (wrb) s10 <-- 0x800034ce
       0     5964        M 0x800010fc beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     5985        M 0x80001100 li      s7, 0                  #; (wrb) s7  <-- 0
       0     5986        M 0x80001104 j       pc + 0xc               #; goto 0x80001110
       0     5997        M 0x80001110 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     5998        M 0x80001114 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     5999        M 0x80001118 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     6000        M 0x8000111c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     6009        M 0x80001120 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6010        M 0x80001124 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80001188
       0     6032        M 0x80001188 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     6033        M 0x8000118c li      a2, 83                 #; (wrb) a2  <-- 83
       0     6044        M 0x80001190 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     6045        M 0x80001194 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     6046        M 0x80001198 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80003198
       0     6047        M 0x8000119c addi    a2, a2, 940            #; a2  = 0x80003198, (wrb) a2  <-- 0x80003544
       0     6056        M 0x800011a0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003544, (wrb) a1  <-- 0x80003648
       0     6057        M 0x800011a4 lw      a2, 0(a1)              #; a1  = 0x80003648, a2  <~~ Word[0x80003648]
       0     6058        M 0x800011a8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     6059        M 0x800011ac li      s8, 16                 #; (wrb) s8  <-- 16
       0     6068        M                                           #; (lsu) a2  <-- 0x800011e0
       0     6069        M 0x800011b0 jr      a2                     #; a2  = 0x800011e0, goto 0x800011e0
       0     6091        M 0x800011e0 li      a1, 70                 #; (wrb) a1  <-- 70
       0     6092        M 0x800011e4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800011ec
       0     6093        M 0x800011ec addi    a0, s3, 7              #; s3  = 0x0011ff14, (wrb) a0  <-- 0x0011ff1b
       0     6103        M 0x800011f0 andi    a0, a0, -8             #; a0  = 0x0011ff1b, (wrb) a0  <-- 0x0011ff18
       0     6105        M 0x800011f8 addi    s3, a0, 8              #; a0  = 0x0011ff18, (wrb) s3  <-- 0x0011ff20
       0     6106        M 0x800011fc mv      a0, s2                 #; s2  = 0x80001af0, (wrb) a0  <-- 0x80001af0
                         M 0x800011f4 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff18]
       0     6107        M                                           #; (f:lsu) fa0  <-- 0.0
       0     6115        M 0x80001200 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6116        M 0x80001204 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6117        M 0x80001208 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6118        M 0x8000120c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     6127        M 0x80001210 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     6128        M 0x80001214 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     6129        M 0x80001218 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002218
       0     6130        M 0x8000121c jalr    ra, ra, -1656          #; ra  = 0x80002218, (wrb) ra  <-- 0x80001220, goto 0x80001ba0
       0     6141        M 0x80001ba0 addi    sp, sp, -112           #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe20
       0     6142        M 0x80001ba4 sw      ra, 108(sp)            #; sp  = 0x0011fe20, 0x80001220 ~~> Word[0x0011fe8c]
       0     6143        M 0x80001ba8 sw      s0, 104(sp)            #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe88]
       0     6144        M 0x80001bac sw      s1, 100(sp)            #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe84]
       0     6153        M 0x80001bb0 sw      s2, 96(sp)             #; sp  = 0x0011fe20, 0x80001af0 ~~> Word[0x0011fe80]
       0     6154        M 0x80001bb4 sw      s3, 92(sp)             #; sp  = 0x0011fe20, 0x0011ff20 ~~> Word[0x0011fe7c]
       0     6155        M 0x80001bb8 sw      s4, 88(sp)             #; sp  = 0x0011fe20, 0x0011ff07 ~~> Word[0x0011fe78]
       0     6156        M 0x80001bbc sw      s5, 84(sp)             #; sp  = 0x0011fe20, -1 ~~> Word[0x0011fe74]
       0     6165        M 0x80001bc0 sw      s6, 80(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe70]
       0     6166        M 0x80001bc4 sw      s7, 76(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe6c]
       0     6167        M 0x80001bc8 sw      s8, 72(sp)             #; sp  = 0x0011fe20, 16 ~~> Word[0x0011fe68]
       0     6168        M 0x80001bcc sw      s9, 68(sp)             #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe64]
       0     6177        M 0x80001bd0 sw      s10, 64(sp)            #; sp  = 0x0011fe20, 0x800034ce ~~> Word[0x0011fe60]
       0     6180        M 0x80001bd4 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe58]
       0     6181        M 0x80001bd8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe50]
       0     6182        M 0x80001bdc fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe48]
       0     6189        M 0x80001be0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003be0
       0     6190        M 0x80001be4 addi    s1, s1, -984           #; s1  = 0x80003be0, (wrb) s1  <-- 0x80003808
       0     6193        M 0x80001be8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003808]
       0     6201        M 0x80001bf0 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     6202        M 0x80001bf4 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6203        M 0x80001bf8 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001bec fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     6204        M 0x80001bfc mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     6213        M 0x80001c00 mv      s6, a1                 #; a1  = 0x0011ff07, (wrb) s6  <-- 0x0011ff07
       0     6214        M 0x80001c04 mv      s7, a0                 #; a0  = 0x80001af0, (wrb) s7  <-- 0x80001af0
       0     6215        M 0x80001c08 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001cf8
       0     6237        M 0x80001cfc auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003cfc
       0     6238        M 0x80001cf8 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     6239        M                                           #; (f:fpu) fs0  <-- 0.0
       0     6248        M 0x80001d00 addi    a0, a0, -1260          #; a0  = 0x80003cfc, (wrb) a0  <-- 0x80003810
       0     6251        M 0x80001d04 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003810]
       0     6260        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6261        M 0x80001d08 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6263        M                                           #; (acc) t3  <-- 0x00051e63
       0     6264        M 0x80001d0c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001d28
       0     6276        M 0x80001d28 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d28
       0     6277        M 0x80001d2c addi    a0, a0, -1296          #; a0  = 0x80003d28, (wrb) a0  <-- 0x80003818
       0     6289        M 0x80001d34 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d34
       0     6290        M 0x80001d38 addi    a0, a0, -1300          #; a0  = 0x80003d34, (wrb) a0  <-- 0x80003820
                         M 0x80001d30 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003818]
       0     6293        M 0x80001d3c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003820]
       0     6299        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     6301        M 0x80001d40 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     6302        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     6303        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x80001d44 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     6305        M                                           #; (acc) a0  <-- 0x00b57533
       0     6306        M 0x80001d48 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     6307        M 0x80001d4c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001e48
       0     6323        M 0x80001e48 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     6324        M 0x80001e4c li      s8, 6                  #; (wrb) s8  <-- 6
       0     6335        M 0x80001e50 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001e58
       0     6336        M 0x80001e58 li      a0, 10                 #; (wrb) a0  <-- 10
       0     6339        M 0x80001e5c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     6340        M                                           #; (f:fpu) fs2  <-- 0.0
       0     6347        M 0x80001e60 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001e98
       0     6370        M 0x80001e98 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6371        M 0x80001e9c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     6382        M 0x80001ea0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002ea0
       0     6383        M 0x80001ea4 addi    a1, a1, 2040           #; a1  = 0x80002ea0, (wrb) a1  <-- 0x80003698
       0     6384        M 0x80001ea8 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003698, (wrb) a0  <-- 0x800036c8
       0     6387        M 0x80001eac fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800036c8]
       0     6395        M 0x80001eb0 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     6396        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     6399        M 0x80001eb4 fcvt.d.w ft0, s1               #; ac1  = 0
       0     6400        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6401        M 0x80001eb8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     6404        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6405        M 0x80001ebc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     6406        M 0x80001ec0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003ec0
       0     6407        M 0x80001ec4 addi    a0, a0, -1688          #; a0  = 0x80003ec0, (wrb) a0  <-- 0x80003828
       0     6408        M                                           #; (f:fpu) ft2  <-- 0.0
       0     6410        M 0x80001ec8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003828]
       0     6411        M 0x80001ecc fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     6419        M 0x80001ed0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     6420        M                                           #; (f:fpu) ft3  <-- 0.0
       0     6421        M 0x80001ed4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     6424        M                                           #; (f:fpu) ft2  <-- 0.0
       0     6425        M 0x80001ed8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6428        M 0x80001edc bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001efc
       0     6442        M 0x80001efc flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6453        M 0x80001f00 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001f14
       0     6466        M 0x80001f18 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001f14 fcvt.d.w fs1, zero             #; ac1  = 0
       0     6467        M 0x80001f1c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     6477        M 0x80001f20 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     6478        M 0x80001f24 add     t1, a1, s0             #; a1  = 0x0011fe28, s0  = 0, (wrb) t1  <-- 0x0011fe28
       0     6479        M 0x80001f28 li      t0, 32                 #; (wrb) t0  <-- 32
       0     6480        M 0x80001f2c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     6489        M 0x80001f30 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     6490        M 0x80001f34 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     6491        M 0x80001f38 li      a6, 10                 #; (wrb) a6  <-- 10
       0     6492        M 0x80001f3c li      a7, 9                  #; (wrb) a7  <-- 9
       0     6501        M 0x80001f40 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     6502        M 0x80001f44 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     6503        M 0x80001f48 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     6506        M                                           #; (acc) a0  <-- 0x00355513
       0     6507        M 0x80001f4c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     6513        M 0x80001f50 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     6516        M                                           #; (acc) a3  <-- 0x40d586b3
       0     6517        M 0x80001f54 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     6518        M 0x80001f58 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     6519        M 0x80001f5c add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 0, (wrb) a5  <-- 0x0011fe28
       0     6525        M 0x80001f60 sb      a3, 0(a5)              #; a5  = 0x0011fe28, 48 ~~> Byte[0x0011fe28]
       0     6526        M 0x80001f64 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     6527        M 0x80001f68 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     6528        M 0x80001f6c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     6540        M 0x80001f70 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     6541        M 0x80001f74 li      a3, 30                 #; (wrb) a3  <-- 30
       0     6542        M 0x80001f78 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     6543        M 0x80001f7c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     6552        M 0x80001f80 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     6553        M 0x80001f84 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     6554        M 0x80001f88 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     6555        M 0x80001f8c addi    a0, sp, 8              #; sp  = 0x0011fe20, (wrb) a0  <-- 0x0011fe28
       0     6564        M 0x80001f90 add     a0, a0, s0             #; a0  = 0x0011fe28, s0  = 0, (wrb) a0  <-- 0x0011fe28
       0     6565        M 0x80001f94 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     6566        M 0x80001f98 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     6567        M 0x80001f9c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     6576        M 0x80001fa0 li      a1, 31                 #; (wrb) a1  <-- 31
       0     6577        M 0x80001fa4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     6578        M 0x80001fa8 add     a0, a0, a2             #; a0  = 0x0011fe28, a2  = 1, (wrb) a0  <-- 0x0011fe29
       0     6579        M 0x80001fac mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     6588        M 0x80001fb0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001fb8
       0     6589        M 0x80001fb8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     6590        M 0x80001fbc li      a1, 48                 #; (wrb) a1  <-- 48
       0     6600        M 0x80001fc0 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7fffffc0
       0     6601        M 0x80001fc4 jalr    ra, ra, 1432           #; ra  = 0x7fffffc0, (wrb) ra  <-- 0x80001fc8, goto 0x80000558
       0     6623        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     6624        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe29, (wrb) a4  <-- 0x0011fe29
       0     6635        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     6658        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     6670        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     6671        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     6672        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     6673        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     6693        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2d]
       0     6694        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2c]
       0     6705        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2b]
       0     6706        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2a]
       0     6707        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe29]
       0     6708        M 0x800005ec ret                            #; ra  = 0x80001fc8, goto 0x80001fc8
       0     6719        M 0x80001fc8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6720        M 0x80001fcc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     6722        M 0x80001fd0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     6723        M 0x80001fd4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     6724        M 0x80001fd8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     6725        M 0x80001fdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6734        M 0x80001fe0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6735        M 0x80001fe4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fcc
       0     6736        M 0x80001fcc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     6737        M 0x80001fd0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     6738        M 0x80001fd4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     6739        M 0x80001fd8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     6740        M 0x80001fdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6741        M 0x80001fe0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     6742        M 0x80001fe4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fcc
       0     6743        M 0x80001fcc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     6744        M 0x80001fd0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     6745        M 0x80001fd4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     6746        M 0x80001fd8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     6747        M 0x80001fdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6748        M 0x80001fe0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     6749        M 0x80001fe4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fcc
       0     6750        M 0x80001fcc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     6751        M 0x80001fd0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     6752        M 0x80001fd4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     6753        M 0x80001fd8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     6754        M 0x80001fdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6755        M 0x80001fe0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     6756        M 0x80001fe4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fcc
       0     6757        M 0x80001fcc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     6758        M 0x80001fd0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     6759        M 0x80001fd4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     6760        M 0x80001fd8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     6761        M 0x80001fdc and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     6762        M 0x80001fe0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     6763        M 0x80001fe4 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     6764        M 0x80001fe8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     6765        M 0x80001fec j       pc + 0x28              #; goto 0x80002014
       0     6776        M 0x80002014 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     6777        M 0x80002018 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     6778        M 0x8000201c addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     6788        M 0x80002020 add     a0, a1, a0             #; a1  = 0x0011fe28, a0  = 6, (wrb) a0  <-- 0x0011fe2e
       0     6789        M 0x80002024 li      a1, 46                 #; (wrb) a1  <-- 46
       0     6790        M 0x80002028 sb      a1, 0(a0)              #; a0  = 0x0011fe2e, 46 ~~> Byte[0x0011fe2e]
       0     6791        M 0x8000202c j       pc + 0x8               #; goto 0x80002034
       0     6800        M 0x80002034 li      a0, 32                 #; (wrb) a0  <-- 32
       0     6801        M 0x80002038 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     6802        M 0x8000203c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     6812        M 0x80002040 li      t0, 32                 #; (wrb) t0  <-- 32
       0     6814        M 0x80002048 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80002044 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     6815        M 0x8000204c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     6824        M 0x80002050 li      a6, 10                 #; (wrb) a6  <-- 10
       0     6825        M 0x80002054 addi    a3, sp, 8              #; sp  = 0x0011fe20, (wrb) a3  <-- 0x0011fe28
       0     6826        M 0x80002058 li      a4, 18                 #; (wrb) a4  <-- 18
       0     6827        M 0x8000205c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     6836        M 0x80002060 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     6839        M                                           #; (acc) a5  <-- 0x01f55793
       0     6840        M 0x80002064 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     6841        M 0x80002068 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     6842        M 0x8000206c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     6848        M 0x80002070 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     6851        M                                           #; (acc) a5  <-- 0x40f487b3
       0     6852        M 0x80002074 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     6853        M 0x80002078 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     6854        M 0x8000207c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     6860        M 0x80002080 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 7, (wrb) s0  <-- 0x0011fe2f
       0     6861        M 0x80002084 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     6862        M 0x80002088 sb      a5, 0(s0)              #; s0  = 0x0011fe2f, 48 ~~> Byte[0x0011fe2f]
       0     6863        M 0x8000208c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     6872        M 0x80002090 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     6873        M 0x80002094 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     6874        M 0x80002098 j       pc + 0x8               #; goto 0x800020a0
       0     6886        M 0x800020a0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     6887        M 0x800020a4 li      a0, 1                  #; (wrb) a0  <-- 1
       0     6888        M 0x800020a8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002114
       0     6909        M 0x80002114 li      a0, 31                 #; (wrb) a0  <-- 31
       0     6910        M 0x80002118 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     6911        M 0x8000211c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002134
       0     6932        M 0x80002134 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     6933        M 0x80002138 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     6934        M 0x8000213c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     6944        M 0x80002140 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x8000216c
       0     6967        M 0x8000216c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     6979        M 0x80002170 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     6980        M 0x80002174 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     6981        M 0x80002178 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     6982        M 0x8000217c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     6991        M 0x80002180 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     6992        M 0x80002184 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800021b0
       0     7014        M 0x800021b0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     7015        M 0x800021b4 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     7016        M 0x800021b8 addi    s9, sp, 7              #; sp  = 0x0011fe20, (wrb) s9  <-- 0x0011fe27
       0     7017        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 8, (wrb) a0  <-- 0x0011fe2f
       0     7026        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2f, a0  <~~ Byte[0x0011fe2f]
       0     7027        M 0x800021c4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     7028        M 0x800021c8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     7029        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7030        M                                           #; (lsu) a0  <-- 48
       0     7038        M 0x800021d0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     7039        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7040        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     7052        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7053        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7054        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7055        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7056        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7057        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7058        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7059        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7060        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7071        M                                           #; (lsu) a4  <-- 8
       0     7072        M 0x80001b10 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     7073        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 9 ~~> Word[0x800038b4]
       0     7074        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 8, (wrb) a4  <-- 0x800038bc
       0     7075        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038bc, 48 ~~> Byte[0x80003904]
       0     7076        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7097        M                                           #; (lsu) a4  <-- 9
       0     7098        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     7099        M 0x80001b28 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     7100        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7101        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7102        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7103        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     7106        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     7111        M 0x800021dc mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     7114        M 0x800021e0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     7115        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800021bc
       0     7117        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 7, (wrb) a0  <-- 0x0011fe2e
       0     7120        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2e, a0  <~~ Byte[0x0011fe2e]
       0     7121        M 0x800021c4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     7122        M 0x800021c8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7123        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7124        M 0x800021d0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7125        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7126        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     7127        M                                           #; (lsu) a0  <-- 46
       0     7129        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     7130        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7131        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7132        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7133        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7134        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7135        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7136        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7137        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7148        M                                           #; (lsu) a4  <-- 9
       0     7149        M 0x80001b10 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7150        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 10 ~~> Word[0x800038b4]
       0     7151        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 9, (wrb) a4  <-- 0x800038bd
       0     7152        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038bd, 46 ~~> Byte[0x80003905]
       0     7153        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7174        M                                           #; (lsu) a4  <-- 10
       0     7175        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7176        M 0x80001b28 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7177        M 0x80001b2c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     7178        M 0x80001b30 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     7179        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7180        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     7183        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     7188        M 0x800021dc mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7191        M 0x800021e0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     7192        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800021bc
       0     7194        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 6, (wrb) a0  <-- 0x0011fe2d
       0     7197        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2d, a0  <~~ Byte[0x0011fe2d]
       0     7198        M 0x800021c4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     7199        M 0x800021c8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7200        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7201        M 0x800021d0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7202        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7203        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     7204        M                                           #; (lsu) a0  <-- 48
       0     7206        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7207        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7208        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7209        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7210        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7211        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7212        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7213        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7214        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7225        M                                           #; (lsu) a4  <-- 10
       0     7226        M 0x80001b10 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7227        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 11 ~~> Word[0x800038b4]
       0     7228        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 10, (wrb) a4  <-- 0x800038be
       0     7229        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038be, 48 ~~> Byte[0x80003906]
       0     7230        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7251        M                                           #; (lsu) a4  <-- 11
       0     7252        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7253        M 0x80001b28 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7254        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7255        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7256        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7257        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     7260        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     7265        M 0x800021dc mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7268        M 0x800021e0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     7269        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800021bc
       0     7271        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 5, (wrb) a0  <-- 0x0011fe2c
       0     7274        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2c, a0  <~~ Byte[0x0011fe2c]
       0     7275        M 0x800021c4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     7276        M 0x800021c8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7277        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7278        M 0x800021d0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7279        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7280        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     7281        M                                           #; (lsu) a0  <-- 48
       0     7283        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7284        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7285        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7286        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7287        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7288        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7289        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7290        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7291        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7302        M                                           #; (lsu) a4  <-- 11
       0     7303        M 0x80001b10 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7304        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 12 ~~> Word[0x800038b4]
       0     7305        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 11, (wrb) a4  <-- 0x800038bf
       0     7306        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038bf, 48 ~~> Byte[0x80003907]
       0     7307        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7328        M                                           #; (lsu) a4  <-- 12
       0     7329        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7330        M 0x80001b28 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7331        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7332        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7333        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7334        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     7337        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     7342        M 0x800021dc mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7345        M 0x800021e0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     7346        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800021bc
       0     7348        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 4, (wrb) a0  <-- 0x0011fe2b
       0     7351        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2b, a0  <~~ Byte[0x0011fe2b]
       0     7352        M 0x800021c4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     7353        M 0x800021c8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     7354        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7355        M 0x800021d0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     7356        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7357        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     7358        M                                           #; (lsu) a0  <-- 48
       0     7360        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7361        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7362        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7363        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7364        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7365        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7366        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7367        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7368        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7379        M                                           #; (lsu) a4  <-- 12
       0     7380        M 0x80001b10 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7381        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 13 ~~> Word[0x800038b4]
       0     7382        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 12, (wrb) a4  <-- 0x800038c0
       0     7383        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038c0, 48 ~~> Byte[0x80003908]
       0     7384        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7405        M                                           #; (lsu) a4  <-- 13
       0     7406        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     7407        M 0x80001b28 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     7408        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7409        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7410        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7411        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     7414        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     7419        M 0x800021dc mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     7422        M 0x800021e0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     7423        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800021bc
       0     7425        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 3, (wrb) a0  <-- 0x0011fe2a
       0     7428        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2a, a0  <~~ Byte[0x0011fe2a]
       0     7429        M 0x800021c4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     7430        M 0x800021c8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     7431        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7432        M 0x800021d0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     7433        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7434        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     7435        M                                           #; (lsu) a0  <-- 48
       0     7437        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7438        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7439        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7440        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7441        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7442        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7443        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7444        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7445        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7456        M                                           #; (lsu) a4  <-- 13
       0     7457        M 0x80001b10 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     7458        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 14 ~~> Word[0x800038b4]
       0     7459        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 13, (wrb) a4  <-- 0x800038c1
       0     7460        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038c1, 48 ~~> Byte[0x80003909]
       0     7461        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7482        M                                           #; (lsu) a4  <-- 14
       0     7483        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     7484        M 0x80001b28 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     7485        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7486        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7487        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7488        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     7491        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     7496        M 0x800021dc mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     7499        M 0x800021e0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     7500        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800021bc
       0     7502        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 2, (wrb) a0  <-- 0x0011fe29
       0     7505        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe29, a0  <~~ Byte[0x0011fe29]
       0     7506        M 0x800021c4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     7507        M 0x800021c8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     7508        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7509        M 0x800021d0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     7510        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7511        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     7512        M                                           #; (lsu) a0  <-- 48
       0     7514        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7515        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7516        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7517        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7518        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7519        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7520        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7521        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7522        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7533        M                                           #; (lsu) a4  <-- 14
       0     7534        M 0x80001b10 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     7535        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 15 ~~> Word[0x800038b4]
       0     7536        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 14, (wrb) a4  <-- 0x800038c2
       0     7537        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038c2, 48 ~~> Byte[0x8000390a]
       0     7538        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7559        M                                           #; (lsu) a4  <-- 15
       0     7560        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     7561        M 0x80001b28 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     7562        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7563        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7564        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7565        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     7568        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     7573        M 0x800021dc mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     7576        M 0x800021e0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     7577        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800021bc
       0     7579        M 0x800021bc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 1, (wrb) a0  <-- 0x0011fe28
       0     7582        M 0x800021c0 lbu     a0, 0(a0)              #; a0  = 0x0011fe28, a0  <~~ Byte[0x0011fe28]
       0     7583        M 0x800021c4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     7584        M 0x800021c8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     7585        M 0x800021cc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7586        M 0x800021d0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     7587        M 0x800021d4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7588        M 0x800021d8 jalr    s7                     #; s7  = 0x80001af0, (wrb) ra  <-- 0x800021dc, goto 0x80001af0
       0     7589        M                                           #; (lsu) a0  <-- 48
       0     7591        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7592        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7593        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7594        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7595        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7596        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7597        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7598        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7599        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7610        M                                           #; (lsu) a4  <-- 15
       0     7611        M 0x80001b10 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     7612        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 16 ~~> Word[0x800038b4]
       0     7613        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 15, (wrb) a4  <-- 0x800038c3
       0     7614        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038c3, 48 ~~> Byte[0x8000390b]
       0     7615        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7636        M                                           #; (lsu) a4  <-- 16
       0     7637        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     7638        M 0x80001b28 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     7639        M 0x80001b2c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7640        M 0x80001b30 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7641        M 0x80001b34 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7642        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b98
       0     7645        M 0x80001b98 ret                            #; ra  = 0x800021dc, goto 0x800021dc
       0     7650        M 0x800021dc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7653        M 0x800021e0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     7654        M 0x800021e4 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     7655        M 0x800021e8 j       pc + 0x8               #; goto 0x800021f0
       0     7667        M 0x800021f0 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     7668        M 0x800021f4 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     7669        M 0x800021f8 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7670        M 0x800021fc xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7679        M 0x80002200 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7680        M 0x80002204 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002234
       0     7702        M 0x80002234 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7703        M 0x80002238 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     7706        M 0x8000223c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe48]
       0     7707        M                                           #; (f:lsu) fs2  <-- 0.0
       0     7716        M 0x80002248 lw      s10, 64(sp)            #; sp  = 0x0011fe20, s10 <~~ Word[0x0011fe60]
                         M 0x80002240 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe50]
       0     7717        M 0x80002244 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe58], (f:lsu) fs1  <-- 0.0
       0     7718        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     7720        M                                           #; (lsu) s10 <-- 0x800034ce
       0     7721        M 0x8000224c lw      s9, 68(sp)             #; sp  = 0x0011fe20, s9  <~~ Word[0x0011fe64]
       0     7724        M                                           #; (lsu) s9  <-- 8
       0     7726        M 0x80002250 lw      s8, 72(sp)             #; sp  = 0x0011fe20, s8  <~~ Word[0x0011fe68]
       0     7729        M                                           #; (lsu) s8  <-- 16
       0     7730        M 0x80002254 lw      s7, 76(sp)             #; sp  = 0x0011fe20, s7  <~~ Word[0x0011fe6c]
       0     7733        M                                           #; (lsu) s7  <-- 0
       0     7734        M 0x80002258 lw      s6, 80(sp)             #; sp  = 0x0011fe20, s6  <~~ Word[0x0011fe70]
       0     7737        M                                           #; (lsu) s6  <-- 0
       0     7738        M 0x8000225c lw      s5, 84(sp)             #; sp  = 0x0011fe20, s5  <~~ Word[0x0011fe74]
       0     7741        M                                           #; (lsu) s5  <-- -1
       0     7742        M 0x80002260 lw      s4, 88(sp)             #; sp  = 0x0011fe20, s4  <~~ Word[0x0011fe78]
       0     7745        M                                           #; (lsu) s4  <-- 0x0011ff07
       0     7746        M 0x80002264 lw      s3, 92(sp)             #; sp  = 0x0011fe20, s3  <~~ Word[0x0011fe7c]
       0     7749        M                                           #; (lsu) s3  <-- 0x0011ff20
       0     7750        M 0x80002268 lw      s2, 96(sp)             #; sp  = 0x0011fe20, s2  <~~ Word[0x0011fe80]
       0     7753        M                                           #; (lsu) s2  <-- 0x80001af0
       0     7754        M 0x8000226c lw      s1, 100(sp)            #; sp  = 0x0011fe20, s1  <~~ Word[0x0011fe84]
       0     7757        M                                           #; (lsu) s1  <-- 8
       0     7758        M 0x80002270 lw      s0, 104(sp)            #; sp  = 0x0011fe20, s0  <~~ Word[0x0011fe88]
       0     7761        M                                           #; (lsu) s0  <-- 0
       0     7762        M 0x80002274 lw      ra, 108(sp)            #; sp  = 0x0011fe20, ra  <~~ Word[0x0011fe8c]
       0     7763        M 0x80002278 addi    sp, sp, 112            #; sp  = 0x0011fe20, (wrb) sp  <-- 0x0011fe90
       0     7765        M                                           #; (lsu) ra  <-- 0x80001220
       0     7766        M 0x8000227c ret                            #; ra  = 0x80001220, goto 0x80001220
       0     7769        M 0x80001220 j       pc + 0x7c0             #; goto 0x800019e0
       0     7781        M 0x800019e0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     7782        M 0x800019e4 li      s6, 37                 #; (wrb) s6  <-- 37
       0     7783        M 0x800019e8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     7784        M 0x800019ec addi    s0, s10, 1             #; s10 = 0x800034ce, (wrb) s0  <-- 0x800034cf
       0     7793        M 0x800019f0 j       pc - 0xa74             #; goto 0x80000f7c
       0     7796        M 0x80000f7c addi    s10, s0, 2             #; s0  = 0x800034cf, (wrb) s10 <-- 0x800034d1
       0     7799        M 0x80000f80 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     7800        M 0x80000f84 li      s8, 10                 #; (wrb) s8  <-- 10
       0     7801        M 0x80000f88 lbu     a0, 0(s0)              #; s0  = 0x800034cf, a0  <~~ Byte[0x800034cf]
       0     7812        M                                           #; (lsu) a0  <-- 10
       0     7813        M 0x80000f8c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7814        M 0x80000f90 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7815        M 0x80000f94 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     7816        M 0x80000f98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     7817        M 0x80000f9c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     7818        M 0x80000fa0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7819        M 0x80000fa4 jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80000fa8, goto 0x80001af0
       0     7823        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7824        M 0x80001af4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7825        M 0x80001af8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7826        M 0x80001afc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7827        M 0x80001b00 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b00
       0     7828        M 0x80001b04 addi    a3, a3, -588           #; a3  = 0x80003b00, (wrb) a3  <-- 0x800038b4
       0     7829        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7830        M 0x80001b08 add     a1, a2, a3             #; a2  = 0, a3  = 0x800038b4, (wrb) a1  <-- 0x800038b4
       0     7831        M 0x80001b0c lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7842        M                                           #; (lsu) a4  <-- 16
       0     7843        M 0x80001b10 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     7844        M 0x80001b14 sw      a5, 0(a1)              #; a1  = 0x800038b4, 17 ~~> Word[0x800038b4]
       0     7845        M 0x80001b18 add     a4, a1, a4             #; a1  = 0x800038b4, a4  = 16, (wrb) a4  <-- 0x800038c4
       0     7846        M 0x80001b1c sb      a0, 72(a4)             #; a4  = 0x800038c4, 10 ~~> Byte[0x8000390c]
       0     7847        M 0x80001b20 lw      a4, 0(a1)              #; a1  = 0x800038b4, a4  <~~ Word[0x800038b4]
       0     7868        M                                           #; (lsu) a4  <-- 17
       0     7869        M 0x80001b24 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     7870        M 0x80001b28 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     7871        M 0x80001b2c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     7872        M 0x80001b30 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7873        M 0x80001b34 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     7874        M 0x80001b38 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     7875        M 0x80001b3c add     a0, a3, a2             #; a3  = 0x800038b4, a2  = 0, (wrb) a0  <-- 0x800038b4
       0     7876        M 0x80001b40 addi    a2, a0, 72             #; a0  = 0x800038b4, (wrb) a2  <-- 0x800038fc
       0     7877        M 0x80001b44 sw      zero, 12(a0)           #; a0  = 0x800038b4, 0 ~~> Word[0x800038c0]
       0     7878        M 0x80001b48 li      a3, 64                 #; (wrb) a3  <-- 64
       0     7879        M 0x80001b4c sw      a3, 8(a0)              #; a0  = 0x800038b4, 64 ~~> Word[0x800038bc]
       0     7888        M 0x80001b50 sw      zero, 20(a0)           #; a0  = 0x800038b4, 0 ~~> Word[0x800038c8]
       0     7889        M 0x80001b54 li      a3, 1                  #; (wrb) a3  <-- 1
       0     7890        M 0x80001b58 sw      a3, 16(a0)             #; a0  = 0x800038b4, 1 ~~> Word[0x800038c4]
       0     7891        M 0x80001b5c sw      zero, 28(a0)           #; a0  = 0x800038b4, 0 ~~> Word[0x800038d0]
       0     7900        M 0x80001b60 sw      a2, 24(a0)             #; a0  = 0x800038b4, 0x800038fc ~~> Word[0x800038cc]
       0     7903        M 0x80001b64 lw      a2, 0(a1)              #; a1  = 0x800038b4, a2  <~~ Word[0x800038b4]
       0     7904        M 0x80001b68 addi    a3, a0, 8              #; a0  = 0x800038b4, (wrb) a3  <-- 0x800038bc
       0     7905        M 0x80001b6c sw      zero, 36(a0)           #; a0  = 0x800038b4, 0 ~~> Word[0x800038d8]
       0     7925        M                                           #; (lsu) a2  <-- 17
       0     7926        M 0x80001b70 sw      a2, 32(a0)             #; a0  = 0x800038b4, 17 ~~> Word[0x800038d4]
       0     7927        M 0x80001b74 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003b74
       0     7928        M 0x80001b78 addi    a0, a0, -1140          #; a0  = 0x80003b74, (wrb) a0  <-- 0x80003700
       0     7929        M 0x80001b7c sw      a3, 0(a0)              #; a0  = 0x80003700, 0x800038bc ~~> Word[0x80003700]
       0     7930        M 0x80001b80 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003b80
       0     7931        M 0x80001b84 addi    a0, a0, -1088          #; a0  = 0x80003b80, (wrb) a0  <-- 0x80003740
       0     7932        M 0x80001b88 lw      a2, 0(a0)              #; a0  = 0x80003740, a2  <~~ Word[0x80003740]
       0     7955        M                                           #; (lsu) a2  <-- 0
       0     7956        M 0x80001b8c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b88
       0     7957        M 0x80001b88 lw      a2, 0(a0)              #; a0  = 0x80003740, a2  <~~ Word[0x80003740]
       0     7968        M                                           #; (lsu) a2  <-- 0
       0     7969        M 0x80001b8c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b88
       0     7970        M 0x80001b88 lw      a2, 0(a0)              #; a0  = 0x80003740, a2  <~~ Word[0x80003740]
       0     7981        M                                           #; (lsu) a2  <-- 0
       0     7982        M 0x80001b8c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b88
       0     7983        M 0x80001b88 lw      a2, 0(a0)              #; a0  = 0x80003740, a2  <~~ Word[0x80003740]
       0     7994        M                                           #; (lsu) a2  <-- 0
       0     7995        M 0x80001b8c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b88
       0     7996        M 0x80001b88 lw      a2, 0(a0)              #; a0  = 0x80003740, a2  <~~ Word[0x80003740]
       0     8007        M                                           #; (lsu) a2  <-- 1
       0     8008        M 0x80001b8c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     8011        M 0x80001b90 sw      zero, 0(a0)            #; a0  = 0x80003740, 0 ~~> Word[0x80003740]
       0     8012        M 0x80001b94 sw      zero, 0(a1)            #; a1  = 0x800038b4, 0 ~~> Word[0x800038b4]
       0     8013        M 0x80001b98 ret                            #; ra  = 0x80000fa8, goto 0x80000fa8
       0     8016        M 0x80000fa8 addi    s0, s0, 1              #; s0  = 0x800034cf, (wrb) s0  <-- 0x800034d0
       0     8017        M 0x80000fac addi    s10, s10, 1            #; s10 = 0x800034d1, (wrb) s10 <-- 0x800034d2
       0     8019        M 0x80000fb0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     8020        M 0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x800034d0, a0  <~~ Byte[0x800034d0]
       0     8034        M                                           #; (lsu) a0  <-- 0
       0     8035        M 0x80000fb8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     8036        M 0x80000fbc j       pc + 0xad8             #; goto 0x80001a94
       0     8048        M 0x80001a94 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     8049        M 0x80001a98 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001aa0
       0     8060        M 0x80001aa0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     8061        M 0x80001aa4 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     8062        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8063        M 0x80001aac jalr    s2                     #; s2  = 0x80001af0, (wrb) ra  <-- 0x80001ab0, goto 0x80001af0
       0     8074        M 0x80001af0 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001b98
       0     8079        M 0x80001b98 ret                            #; ra  = 0x80001ab0, goto 0x80001ab0
       0     8080        M 0x80001ab0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     8081        M 0x80001ab4 lw      s11, 60(sp)            #; sp  = 0x0011fe90, s11 <~~ Word[0x0011fecc]
       0     8084        M                                           #; (lsu) s11 <-- 0
       0     8085        M 0x80001ab8 lw      s10, 64(sp)            #; sp  = 0x0011fe90, s10 <~~ Word[0x0011fed0]
       0     8088        M                                           #; (lsu) s10 <-- 0
       0     8089        M 0x80001abc lw      s9, 68(sp)             #; sp  = 0x0011fe90, s9  <~~ Word[0x0011fed4]
       0     8092        M                                           #; (lsu) s9  <-- 0
       0     8094        M 0x80001ac0 lw      s8, 72(sp)             #; sp  = 0x0011fe90, s8  <~~ Word[0x0011fed8]
       0     8097        M                                           #; (lsu) s8  <-- 0
       0     8098        M 0x80001ac4 lw      s7, 76(sp)             #; sp  = 0x0011fe90, s7  <~~ Word[0x0011fedc]
       0     8101        M                                           #; (lsu) s7  <-- 0
       0     8102        M 0x80001ac8 lw      s6, 80(sp)             #; sp  = 0x0011fe90, s6  <~~ Word[0x0011fee0]
       0     8105        M                                           #; (lsu) s6  <-- 0x001000f0
       0     8106        M 0x80001acc lw      s5, 84(sp)             #; sp  = 0x0011fe90, s5  <~~ Word[0x0011fee4]
       0     8109        M                                           #; (lsu) s5  <-- 4
       0     8110        M 0x80001ad0 lw      s4, 88(sp)             #; sp  = 0x0011fe90, s4  <~~ Word[0x0011fee8]
       0     8113        M                                           #; (lsu) s4  <-- 8
       0     8114        M 0x80001ad4 lw      s3, 92(sp)             #; sp  = 0x0011fe90, s3  <~~ Word[0x0011feec]
       0     8117        M                                           #; (lsu) s3  <-- 6
       0     8118        M 0x80001ad8 lw      s2, 96(sp)             #; sp  = 0x0011fe90, s2  <~~ Word[0x0011fef0]
       0     8121        M                                           #; (lsu) s2  <-- 0x00100000
       0     8122        M 0x80001adc lw      s1, 100(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011fef4]
       0     8125        M                                           #; (lsu) s1  <-- 0
       0     8126        M 0x80001ae0 lw      s0, 104(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011fef8]
       0     8129        M                                           #; (lsu) s0  <-- 0x00100240
       0     8130        M 0x80001ae4 lw      ra, 108(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011fefc]
       0     8131        M 0x80001ae8 addi    sp, sp, 112            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff00
       0     8133        M                                           #; (lsu) ra  <-- 0x80000eec
       0     8134        M 0x80001aec ret                            #; ra  = 0x80000eec, goto 0x80000eec
       0     8137        M 0x80000eec lw      ra, 12(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff0c]
       0     8140        M 0x80000ef0 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
       0     8141        M                                           #; (lsu) ra  <-- 0x80000e60
       0     8142        M 0x80000ef4 ret                            #; ra  = 0x80000e60, goto 0x80000e60
       0     8145        M 0x80000e60 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003e60
       0     8146        M 0x80000e64 addi    a0, a0, -1632          #; a0  = 0x80003e60, (wrb) a0  <-- 0x80003800
       0     8149        M 0x80000e68 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003800]
       0     8158        M 0x80000e74 lw      s6, 16(sp)             #; sp  = 0x0011ff30, s6  <~~ Word[0x0011ff40]
                         M                                           #; (f:lsu) ft3  <-- 0.0001
       0     8159        M 0x80000e6c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
       0     8161        M                                           #; (lsu) s6  <-- 0
                         M 0x80000e70 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff38]
       0     8162        M 0x80000e78 lw      s5, 20(sp)             #; sp  = 0x0011ff30, s5  <~~ Word[0x0011ff44], (acc) s5  <-- 0x01412a83
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0     8165        M                                           #; (lsu) s5  <-- 0
       0     8166        M 0x80000e7c lw      s4, 24(sp)             #; sp  = 0x0011ff30, s4  <~~ Word[0x0011ff48]
       0     8169        M                                           #; (lsu) s4  <-- 0
       0     8170        M 0x80000e80 lw      s3, 28(sp)             #; sp  = 0x0011ff30, s3  <~~ Word[0x0011ff4c]
       0     8173        M                                           #; (lsu) s3  <-- 0
       0     8174        M 0x80000e84 lw      s2, 32(sp)             #; sp  = 0x0011ff30, s2  <~~ Word[0x0011ff50]
       0     8177        M                                           #; (lsu) s2  <-- 0
       0     8178        M 0x80000e88 lw      s1, 36(sp)             #; sp  = 0x0011ff30, s1  <~~ Word[0x0011ff54]
       0     8181        M                                           #; (lsu) s1  <-- 0
       0     8182        M 0x80000e8c lw      s0, 40(sp)             #; sp  = 0x0011ff30, s0  <~~ Word[0x0011ff58]
       0     8185        M                                           #; (lsu) s0  <-- 0
       0     8186        M 0x80000e90 lw      ra, 44(sp)             #; sp  = 0x0011ff30, ra  <~~ Word[0x0011ff5c]
       0     8187        M 0x80000e94 addi    sp, sp, 48             #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff60
       0     8189        M                                           #; (lsu) ra  <-- 0x80003240
       0     8190        M 0x80000e98 ret                            #; ra  = 0x80003240, goto 0x80003240
       0     8206        M 0x80003240 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     8207        M 0x80003244 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003244
       0     8208        M 0x80003248 jalr    ra, ra, 524            #; ra  = 0x80003244, (wrb) ra  <-- 0x8000324c, goto 0x80003450
       0     8211        M 0x80003450 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     8212        M 0x80003454 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000324c ~~> Word[0x0011ff5c]
       0     8213        M 0x80003458 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003458
       0     8214        M 0x8000345c jalr    ra, ra, -2016          #; ra  = 0x80003458, (wrb) ra  <-- 0x80003460, goto 0x80002c78
       0     8217        M 0x80002c78 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     8218        M 0x80002c7c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     8220        M 0x80002c80 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     8223        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8224        M 0x80002c84 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     8227        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8228        M 0x80002c88 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     8229        M 0x80002c8c ret                            #; ra  = 0x80003460, goto 0x80003460
       0     8231        M                                           #; (lsu) a0  <-- 0x00120190
       0     8232        M 0x80003460 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     8242        M                                           #; (lsu) a0  <-- 0
       0     8243        M 0x80003464 mv      zero, a0               #; a0  = 0
       0     8244        M 0x80003468 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     8245        M 0x8000346c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     8247        M                                           #; (lsu) ra  <-- 0x8000324c
       0     8248        M 0x80003470 ret                            #; ra  = 0x8000324c, goto 0x8000324c
       0     8251        M 0x8000324c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     8255        M 0x80003250 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003250
       0     8256        M 0x80003254 jalr    ra, ra, 556            #; ra  = 0x80003250, (wrb) ra  <-- 0x80003258, goto 0x8000347c
       0     8257        M 0x8000347c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     8258        M 0x80003480 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     8259        M 0x80003484 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80003258 ~~> Word[0x0011ff5c]
       0     8260        M 0x80003488 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80002488
       0     8261        M 0x8000348c jalr    ra, ra, 2000           #; ra  = 0x80002488, (wrb) ra  <-- 0x80003490, goto 0x80002c58
       0     8274        M 0x80002c58 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     8275        M 0x80002c5c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     8278        M 0x80002c60 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     8281        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8282        M 0x80002c64 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     8285        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     8286        M 0x80002c68 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     8287        M 0x80002c6c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8289        M                                           #; (lsu) a0  <-- 0
       0     8290        M 0x80002c70 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     8291        M 0x80002c74 ret                            #; ra  = 0x80003490, goto 0x80003490
       0     8292        M 0x80003490 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     8295        M                                           #; (lsu) t0  <-- 0
       0     8296        M 0x80003494 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     8297        M 0x80003498 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     8298        M 0x8000349c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     8299        M                                           #; (lsu) ra  <-- 0x80003258
       0     8303        M 0x800034a0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     8304        M 0x800034a4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     8305        M 0x800034a8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800034a8
       0     8306        M 0x800034ac addi    t1, t1, 600            #; t1  = 0x800034a8, (wrb) t1  <-- 0x80003700
       0     8314        M 0x800034b0 sw      t0, 0(t1)              #; t1  = 0x80003700, 1 ~~> Word[0x80003700]
       0     8315        M 0x800034b4 ret                            #; ra  = 0x80003258, goto 0x80003258
       0     8330        M 0x80003258 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 8330):
snitch_loads                                   163
snitch_stores                                  169
fpss_stores                                      5
fpss_loads                                      34
snitch_avg_load_latency                    10.5706
snitch_occupancy                            0.3023
snitch_fseq_rel_offloads                    0.2046
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.0738
fpss_avg_load_latency                       7.8235
fpss_occupancy                              0.0778
fpss_fpu_occupancy                          0.0716
fpss_fpu_rel_occupancy                      0.9212
cycles                                        8319
total_ipc                                   0.3801
