       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80003850
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80003850, (wrb) ra  <-- 4120, goto 0x80003850
       0      269        M 0x80003850 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80004850
       0      270        M 0x80003854 addi    gp, gp, -264           #; gp  = 0x80004850, (wrb) gp  <-- 0x80004748
       0      271        M 0x80003858 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003858
       0      272        M 0x8000385c jalr    ra, ra, 964            #; ra  = 0x80003858, (wrb) ra  <-- 0x80003860, goto 0x80003c1c
       0      292        M 0x80003c1c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80003c20 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80003c24 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80003c28 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80003c2c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80003c30 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80003c34 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80003c38 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80003c3c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80003c40 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80003c44 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80003c48 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80003c4c ret                            #; ra  = 0x80003860, goto 0x80003860
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80003860 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80003864 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80003868 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003868
       0      508        M 0x8000386c jalr    ra, ra, 1036           #; ra  = 0x80003868, (wrb) ra  <-- 0x80003870, goto 0x80003c74
       0      523        M 0x80003c74 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80003c78 ret                            #; ra  = 0x80003870, goto 0x80003870
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80003870 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80003874 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80003878 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000387c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80003880 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80003884 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003884
       0      551        M 0x80003888 addi    t0, t0, 1932           #; t0  = 0x80003884, (wrb) t0  <-- 0x80004010
       0      552        M 0x8000388c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000388c
       0      562        M 0x80003890 addi    t1, t1, 1928           #; t1  = 0x8000388c, (wrb) t1  <-- 0x80004014
       0      563        M 0x80003894 bge     t0, t1, pc + 16        #; t0  = 0x80004010, t1  = 0x80004014, not taken
       0      564        M 0x80003898 sw      zero, 0(t0)            #; t0  = 0x80004010, 0 ~~> Word[0x80004010]
       0      565        M 0x8000389c addi    t0, t0, 4              #; t0  = 0x80004010, (wrb) t0  <-- 0x80004014
       0      573        M 0x800038a0 blt     t0, t1, pc - 8         #; t0  = 0x80004014, t1  = 0x80004014, not taken
       0      574        M 0x800038a4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800038a8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800038ac beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x800038b0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x800038b4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x800038b8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x800038bc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800038c0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800038c4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800038c8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800038cc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800038d0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800038d4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800038d8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800038dc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800038e0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800038e4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800038e8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800038ec fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800038f0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800038f4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800038f8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800038fc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80003900 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80003904 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80003908 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000390c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80003910 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80003914 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80003918 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000391c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80003920 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80003924 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80003928 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000392c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80003930 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80003934 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80003938 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003938
       0      684        M 0x8000393c lw      t0, 900(t0)            #; t0  = 0x80003938, t0  <~~ Word[0x80003cbc]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80003940 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80003944 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80003948 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003948
       0      708        M 0x8000394c lw      t2, 880(t2)            #; t2  = 0x80003948, t2  <~~ Word[0x80003cb8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80003950 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80003954 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80003958 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000395c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80003960 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80003964 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80003968 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000396c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80003970 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003970
       0      762        M 0x80003974 addi    t0, t0, 1496           #; t0  = 0x80003970, (wrb) t0  <-- 0x80003f48
       0      763        M 0x80003978 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003978
       0      764        M 0x8000397c addi    t1, t1, 1488           #; t1  = 0x80003978, (wrb) t1  <-- 0x80003f48
       0      775        M 0x80003980 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003980
       0      776        M 0x80003984 addi    t2, t2, 1480           #; t2  = 0x80003980, (wrb) t2  <-- 0x80003f48
       0      777        M 0x80003988 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80003988
       0      778        M 0x8000398c addi    t3, t3, 1488           #; t3  = 0x80003988, (wrb) t3  <-- 0x80003f58
       0      787        M 0x80003990 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003f48, (wrb) sp  <-- 0x80123eb8
       0      788        M 0x80003994 sub     sp, sp, t1             #; sp  = 0x80123eb8, t1  = 0x80003f48, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80003998 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003f48, (wrb) sp  <-- 0x80123eb8
       0      790        M 0x8000399c sub     sp, sp, t3             #; sp  = 0x80123eb8, t3  = 0x80003f58, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x800039a0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x800039a4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x800039a8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x800039ac mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x800039b0 bge     t0, t1, pc + 24        #; t0  = 0x80003f48, t1  = 0x80003f48, taken, goto 0x800039c8
       0      823        M 0x800039c8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800039c8
       0      824        M 0x800039cc addi    t0, t0, 1408           #; t0  = 0x800039c8, (wrb) t0  <-- 0x80003f48
       0      835        M 0x800039d0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800039d0
       0      836        M 0x800039d4 addi    t1, t1, 1416           #; t1  = 0x800039d0, (wrb) t1  <-- 0x80003f58
       0      837        M 0x800039d8 bge     t0, t1, pc + 20        #; t0  = 0x80003f48, t1  = 0x80003f58, not taken
       0      838        M 0x800039dc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x800039e0 addi    t0, t0, 4              #; t0  = 0x80003f48, (wrb) t0  <-- 0x80003f4c
       0      848        M 0x800039e4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x800039e8 blt     t0, t2, pc - 12        #; t0  = 0x80003f4c, t2  = 0x80003f48, not taken
       0      850        M 0x800039ec addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x800039f0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x800039f4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x800039f8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x800039fc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80003a00 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80003a04 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003a04
       0      877        M 0x80003a08 jalr    ra, ra, -1052          #; ra  = 0x80003a04, (wrb) ra  <-- 0x80003a0c, goto 0x800035e8
       0      899        M 0x800035e8 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x800035ec sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x800035f0 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x800035f4 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x800035f8 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x800035fc lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1029        M                                           #; (lsu) a7  <-- 1
       0     1030        M 0x80003600 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1031        M 0x80003604 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1060        M 0x80003608 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1061        M 0x8000360c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1062        M 0x80003610 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1063        M 0x80003614 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1065        M                                           #; (acc) a0  <-- 0x02580533
       0     1069        M                                           #; (lsu) t0  <-- 8
       0     1070        M 0x80003618 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1071        M 0x8000361c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1074        M 0x80003620 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1075        M 0x80003624 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1076        M 0x80003628 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1079        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1080        M 0x8000362c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1087        M 0x80003630 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1088        M 0x80003634 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1109        M                                           #; (lsu) a0  <-- 0x80000000
       0     1110        M 0x80003638 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1111        M 0x8000363c sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1112        M 0x80003640 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1149        M                                           #; (lsu) a0  <-- 0
       0     1150        M 0x80003644 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1151        M 0x80003648 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1170        M 0x8000364c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1171        M 0x80003650 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x80003654 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1181        M 0x80003658 sub     a3, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a3  <-- 0x0001df30
       0     1182        M 0x8000365c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1183        M 0x80003660 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1184        M 0x80003664 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1200        M                                           #; (lsu) a0  <-- 0x00020000
       0     1201        M 0x80003668 add     t3, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) t3  <-- 0x00120000
       0     1202        M 0x8000366c addi    a1, t3, 400            #; t3  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1203        M 0x80003670 sltu    t4, t3, a0             #; t3  = 0x00120000, a0  = 0x00020000, (wrb) t4  <-- 0
       0     1204        M 0x80003674 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80003678 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1206        M 0x8000367c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1214        M 0x80003680 add     t5, t3, a1             #; t3  = 0x00120000, a1  = 0x00010000, (wrb) t5  <-- 0x00130000
       0     1215        M 0x80003684 sltu    a1, t5, t3             #; t5  = 0x00130000, t3  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80003688 sw      t5, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1217        M 0x8000368c add     a1, t4, a1             #; t4  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1228        M 0x80003690 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1229        M 0x80003694 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x80003698 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x8000369c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x800036a0 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1241        M 0x800036a4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1242        M 0x800036a8 add     a0, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1243        M 0x800036ac sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1252        M 0x800036b0 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1253        M 0x800036b4 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1255        M 0x800036b8 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x800036bc lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x800036c0 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x800036c4 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1269        M                                           #; (lsu) a0  <-- 8
       0     1270        M 0x800036c8 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1271        M 0x800036cc lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x800036d0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1278        M 0x800036d4 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1279        M 0x800036d8 li      a1, 1096               #; (wrb) a1  <-- 1096
       0     1280        M 0x800036dc mul     a0, a7, a1             #; a7  = 0, a1  = 1096
       0     1288        M 0x800036e0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800046e0
       0     1289        M 0x800036e4 addi    a1, a1, -1740          #; a1  = 0x800046e0, (wrb) a1  <-- 0x80004014
       0     1290        M 0x800036e8 add     a0, a0, a1             #; a0  = 0, a1  = 0x80004014, (wrb) a0  <-- 0x80004014
       0     1291        M 0x800036ec sw      zero, 0(a0)            #; a0  = 0x80004014, 0 ~~> Word[0x80004014]
       0     1300        M 0x800036f0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1301        M 0x800036f4 lw      t6, 48(a4)             #; a4  = 4132, t6  <~~ Word[0x00001054]
       0     1302        M 0x800036f8 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1303        M 0x800036fc addi    a4, t3, 384            #; t3  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1312        M 0x80003700 sw      a3, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1333        M 0x80003704 sw      t3, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1334        M 0x80003708 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1335        M 0x8000370c lui     a3, 0x0                #; (wrb) a3  <-- 0
       0     1342        M                                           #; (lsu) t6  <-- 0xffff0000
       0     1343        M 0x80003710 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1344        M 0x80003714 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1345        M 0x80003718 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1346        M 0x8000371c sw      t6, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1347        M 0x80003720 lw      a0, 0(a1)              #; a1  = 0x80004014, a0  <~~ Word[0x80004014]
       0     1348        M 0x80003724 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1362        M                                           #; (lsu) a0  <-- 0
       0     1363        M 0x80003728 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1364        M 0x8000372c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1365        M 0x80003730 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1366        M 0x80003734 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1367        M 0x80003738 add     a0, a3, tp             #; a3  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1368        M 0x8000373c lui     a5, 0x0                #; (wrb) a5  <-- 0
       0     1369        M 0x80003740 sw      t6, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1370        M 0x80003744 add     a0, a5, tp             #; a5  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1371        M 0x80003748 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1372        M 0x8000374c ret                            #; ra  = 0x80003a0c, goto 0x80003a0c
       0     1383        M 0x80003a0c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1386        M                                           #; (lsu) a0  <-- 0
       0     1387        M 0x80003a10 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1390        M                                           #; (lsu) a1  <-- 8
       0     1391        M 0x80003a14 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1394        M                                           #; (lsu) a2  <-- 0x00100000
       0     1395        M 0x80003a18 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1398        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1399        M 0x80003a1c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1400        M 0x80003a20 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1401        M 0x80003a24 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003a24
       0     1402        M 0x80003a28 addi    t0, t0, 60             #; t0  = 0x80003a24, (wrb) t0  <-- 0x80003a60
       0     1403        M 0x80003a2c csrw    mtvec, t0              #; t0  = 0x80003a60, (lsu) a4  <-- 4132
       0     1412        M 0x80003a30 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003a30
       0     1413        M 0x80003a34 jalr    ra, ra, 544            #; ra  = 0x80003a30, (wrb) ra  <-- 0x80003a38, goto 0x80003c50
       0     1428        M 0x80003c50 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1429        M 0x80003c54 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80003a38 ~~> Word[0x0011ff5c]
       0     1430        M 0x80003c58 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003c58
       0     1431        M 0x80003c5c jalr    ra, ra, -1256          #; ra  = 0x80003c58, (wrb) ra  <-- 0x80003c60, goto 0x80003770
       0     1450        M 0x80003770 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1451        M 0x80003774 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1452        M 0x80003778 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1455        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1456        M 0x8000377c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1460        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1462        M 0x80003780 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1463        M 0x80003784 ret                            #; ra  = 0x80003c60, goto 0x80003c60
       0     1466        M                                           #; (lsu) a0  <-- 0x00120190
       0     1467        M 0x80003c60 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1496        M                                           #; (lsu) a0  <-- 0
       0     1497        M 0x80003c64 mv      zero, a0               #; a0  = 0
       0     1498        M 0x80003c68 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1499        M 0x80003c6c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1501        M                                           #; (lsu) ra  <-- 0x80003a38
       0     1502        M 0x80003c70 ret                            #; ra  = 0x80003a38, goto 0x80003a38
       0     1506        M 0x80003a38 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x80000a38
       0     1507        M 0x80003a3c jalr    ra, ra, -1028          #; ra  = 0x80000a38, (wrb) ra  <-- 0x80003a40, goto 0x80000634
       0     1512        M 0x80000634 addi    sp, sp, -800           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fc40
       0     1513        M 0x80000638 sw      ra, 796(sp)            #; sp  = 0x0011fc40, 0x80003a40 ~~> Word[0x0011ff5c]
       0     1516        M 0x8000063c fsd     fs0, 784(sp)           #; 0.0 ~~> Doub[0x0011ff50]
       0     1517        M 0x80000640 fsd     fs1, 776(sp)           #; 0.0 ~~> Doub[0x0011ff48]
       0     1518        M 0x80000644 fsd     fs2, 768(sp)           #; 0.0 ~~> Doub[0x0011ff40]
       0     1519        M 0x80000648 fsd     fs3, 760(sp)           #; 0.0 ~~> Doub[0x0011ff38]
       0     1520        M 0x8000064c fsd     fs4, 752(sp)           #; 0.0 ~~> Doub[0x0011ff30]
       0     1530        M 0x80000650 fsd     fs5, 744(sp)           #; 0.0 ~~> Doub[0x0011ff28]
       0     1532        M 0x80000654 fsd     fs6, 736(sp)           #; 0.0 ~~> Doub[0x0011ff20]
       0     1533        M 0x80000658 fsd     fs7, 728(sp)           #; 0.0 ~~> Doub[0x0011ff18]
       0     1534        M 0x8000065c fsd     fs8, 720(sp)           #; 0.0 ~~> Doub[0x0011ff10]
       0     1542        M 0x80000660 fsd     fs9, 712(sp)           #; 0.0 ~~> Doub[0x0011ff08]
       0     1543        M 0x8000066c lui     a0, 0x0                #; (wrb) a0  <-- 0
                         M 0x80000664 fsd     fs10, 704(sp)          #; 0.0 ~~> Doub[0x0011ff00]
       0     1544        M 0x80000668 fsd     fs11, 696(sp)          #; 0.0 ~~> Doub[0x0011fef8]
       0     1552        M 0x80000670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1553        M 0x80000674 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1554        M 0x80000678 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1556        M                                           #; (lsu) a1  <-- 0
       0     1557        M 0x8000067c beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000684
       0     1564        M 0x80000684 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1565        M 0x80000688 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1566        M 0x8000068c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1569        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1578        M 0x80000690 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1581        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1582        M 0x80000694 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1586        M                                           #; (lsu) a0  <-- 0x00100000
       0     1587        M 0x80000698 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1590        M                                           #; (lsu) a1  <-- 0x00100000
       0     1591        M 0x8000069c lw      a4, 84(a2)             #; a2  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1592        M 0x800006a0 addi    a3, a0, 864            #; a0  = 0x00100000, (wrb) a3  <-- 0x00100360
       0     1594        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1595        M 0x800006a4 add     a1, a4, a1             #; a4  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1596        M 0x800006a8 bgeu    a1, a3, pc + 12        #; a1  = 0x0011df30, a3  = 0x00100360, taken, goto 0x800006b4
       0     1607        M 0x800006b4 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     1608        M 0x800006b8 srli    a4, a0, 20             #; a0  = 0x00100000, (wrb) a4  <-- 1
       0     1609        M 0x800006bc addi    a1, a0, 856            #; a0  = 0x00100000, (wrb) a1  <-- 0x00100358
       0     1620        M 0x800006c0 sw      a3, 88(a2)             #; a2  = 0x0011ff70, 0x00100360 ~~> Word[0x0011ffc8]
       0     1621        M 0x800006c4 addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
       0     1622        M 0x800006c8 snez    a4, a4                 #; a4  = 1, (wrb) a4  <-- 1
       0     1623        M 0x800006cc sltu    a1, a1, a5             #; a1  = 0x00100358, a5  = 0x00120001, (wrb) a1  <-- 1
       0     1633        M 0x800006d0 and     a1, a4, a1             #; a4  = 1, a1  = 1, (wrb) a1  <-- 1
       0     1634        M 0x800006d4 beqz    a1, pc + 1436          #; a1  = 1, not taken
       0     1635        M 0x800006d8 li      a2, 8                  #; (wrb) a2  <-- 8
       0     1636        M 0x800006dc li      a3, 107                #; (wrb) a3  <-- 107
       0     1647        M 0x800006e0 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1648        M 0x800006e4 li      a5, 192                #; (wrb) a5  <-- 192
       0     1649        M 0x800006e8 scfgw   a3, a4                 #; a3  = 107, a4  = 64
       0     1650        M 0x800006ec scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     1671        M 0x800006f0 li      a4, 32                 #; (wrb) a4  <-- 32
       0     1672        M 0x800006f4 li      a2, 1                  #; (wrb) a2  <-- 1
       0     1673        M 0x800006f8 li      a3, 109                #; (wrb) a3  <-- 109
       0     1674        M 0x800006fc scfgw   zero, a4               #; a4  = 32
       0     1683        M 0x80000700 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1685        M 0x80000704 csrrsi  a5, ssr, 1             #; 
       0     1686        M 0x8000070c addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 1
       0     1687        M                                           #; (f:fpu) ft3  <-- 1.0
       0     1696        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 2, a3  = 109, taken, goto 0x80000708
       0     1697        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1698        M 0x8000070c addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 2, (f:fpu) ft0  <-- 1.0
       0     1699        M                                           #; (f:fpu) ft3  <-- 2.0
       0     1700        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 3, a3  = 109, taken, goto 0x80000708
       0     1701        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1702        M 0x8000070c addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 3, (f:fpu) ft0  <-- 2.0
       0     1703        M                                           #; (f:fpu) ft3  <-- 3.0
       0     1704        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 4, a3  = 109, taken, goto 0x80000708
       0     1705        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1706        M 0x8000070c addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 4, (f:fpu) ft0  <-- 3.0
       0     1707        M                                           #; (f:fpu) ft3  <-- 4.0
       0     1708        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 5, a3  = 109, taken, goto 0x80000708
       0     1709        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1710        M 0x8000070c addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 5, (f:fpu) ft0  <-- 4.0
       0     1711        M                                           #; (f:fpu) ft3  <-- 5.0
       0     1712        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 6, a3  = 109, taken, goto 0x80000708
       0     1713        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1714        M 0x8000070c addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 6, (f:fpu) ft0  <-- 5.0
       0     1715        M                                           #; (f:fpu) ft3  <-- 6.0
       0     1716        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 7, a3  = 109, taken, goto 0x80000708
       0     1717        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1718        M 0x8000070c addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 7, (f:fpu) ft0  <-- 6.0
       0     1719        M                                           #; (f:fpu) ft3  <-- 7.0
       0     1720        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 8, a3  = 109, taken, goto 0x80000708
       0     1721        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1722        M 0x8000070c addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 8, (f:fpu) ft0  <-- 7.0
       0     1723        M                                           #; (f:fpu) ft3  <-- 8.0
       0     1724        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 9, a3  = 109, taken, goto 0x80000708
       0     1725        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1726        M 0x8000070c addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 9, (f:fpu) ft0  <-- 8.0
       0     1727        M                                           #; (f:fpu) ft3  <-- 9.0
       0     1728        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 10, a3  = 109, taken, goto 0x80000708
       0     1729        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     1730        M 0x8000070c addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 10, (f:fpu) ft0  <-- 9.0
       0     1731        M                                           #; (f:fpu) ft3  <-- 10.0
       0     1732        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 11, a3  = 109, taken, goto 0x80000708
       0     1733        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.0, ft3  = 10.0
       0     1734        M 0x8000070c addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 11, (f:fpu) ft0  <-- 10.0
       0     1735        M                                           #; (f:fpu) ft3  <-- 11.0
       0     1736        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 12, a3  = 109, taken, goto 0x80000708
       0     1737        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 11.0, ft3  = 11.0
       0     1738        M 0x8000070c addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 12, (f:fpu) ft0  <-- 11.0
       0     1739        M                                           #; (f:fpu) ft3  <-- 12.0
       0     1740        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 13, a3  = 109, taken, goto 0x80000708
       0     1741        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 12.0, ft3  = 12.0
       0     1742        M 0x8000070c addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 13, (f:fpu) ft0  <-- 12.0
       0     1743        M                                           #; (f:fpu) ft3  <-- 13.0
       0     1744        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 14, a3  = 109, taken, goto 0x80000708
       0     1745        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 13.0, ft3  = 13.0
       0     1746        M 0x8000070c addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 14, (f:fpu) ft0  <-- 13.0
       0     1747        M                                           #; (f:fpu) ft3  <-- 14.0
       0     1748        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 15, a3  = 109, taken, goto 0x80000708
       0     1749        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 14.0, ft3  = 14.0
       0     1750        M 0x8000070c addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 15, (f:fpu) ft0  <-- 14.0
       0     1751        M                                           #; (f:fpu) ft3  <-- 15.0
       0     1752        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 16, a3  = 109, taken, goto 0x80000708
       0     1753        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.0, ft3  = 15.0
       0     1754        M 0x8000070c addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 16, (f:fpu) ft0  <-- 15.0
       0     1755        M                                           #; (f:fpu) ft3  <-- 16.0
       0     1756        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 17, a3  = 109, taken, goto 0x80000708
       0     1757        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 16.0, ft3  = 16.0
       0     1758        M 0x8000070c addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 17, (f:fpu) ft0  <-- 16.0
       0     1759        M                                           #; (f:fpu) ft3  <-- 17.0
       0     1760        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 18, a3  = 109, taken, goto 0x80000708
       0     1761        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 17.0, ft3  = 17.0
       0     1762        M 0x8000070c addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 18, (f:fpu) ft0  <-- 17.0
       0     1763        M                                           #; (f:fpu) ft3  <-- 18.0
       0     1764        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 19, a3  = 109, taken, goto 0x80000708
       0     1765        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 18.0, ft3  = 18.0
       0     1766        M 0x8000070c addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 19, (f:fpu) ft0  <-- 18.0
       0     1767        M                                           #; (f:fpu) ft3  <-- 19.0
       0     1768        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 20, a3  = 109, taken, goto 0x80000708
       0     1769        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 19.0, ft3  = 19.0
       0     1770        M 0x8000070c addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 20, (f:fpu) ft0  <-- 19.0
       0     1771        M                                           #; (f:fpu) ft3  <-- 20.0
       0     1772        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 21, a3  = 109, taken, goto 0x80000708
       0     1773        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 20.0, ft3  = 20.0
       0     1774        M 0x8000070c addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 21, (f:fpu) ft0  <-- 20.0
       0     1775        M                                           #; (f:fpu) ft3  <-- 21.0
       0     1776        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 22, a3  = 109, taken, goto 0x80000708
       0     1777        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.0, ft3  = 21.0
       0     1778        M 0x8000070c addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 22, (f:fpu) ft0  <-- 21.0
       0     1779        M                                           #; (f:fpu) ft3  <-- 22.0
       0     1780        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 23, a3  = 109, taken, goto 0x80000708
       0     1781        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 22.0, ft3  = 22.0
       0     1782        M 0x8000070c addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 23, (f:fpu) ft0  <-- 22.0
       0     1783        M                                           #; (f:fpu) ft3  <-- 23.0
       0     1784        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 24, a3  = 109, taken, goto 0x80000708
       0     1785        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 23.0, ft3  = 23.0
       0     1786        M 0x8000070c addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 24, (f:fpu) ft0  <-- 23.0
       0     1787        M                                           #; (f:fpu) ft3  <-- 24.0
       0     1788        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 25, a3  = 109, taken, goto 0x80000708
       0     1789        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 24.0, ft3  = 24.0
       0     1790        M 0x8000070c addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 25, (f:fpu) ft0  <-- 24.0
       0     1791        M                                           #; (f:fpu) ft3  <-- 25.0
       0     1792        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 26, a3  = 109, taken, goto 0x80000708
       0     1793        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 25.0, ft3  = 25.0
       0     1794        M 0x8000070c addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 26, (f:fpu) ft0  <-- 25.0
       0     1795        M                                           #; (f:fpu) ft3  <-- 26.0
       0     1796        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 27, a3  = 109, taken, goto 0x80000708
       0     1797        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 26.0, ft3  = 26.0
       0     1798        M 0x8000070c addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 27, (f:fpu) ft0  <-- 26.0
       0     1799        M                                           #; (f:fpu) ft3  <-- 27.0
       0     1800        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 28, a3  = 109, taken, goto 0x80000708
       0     1801        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 27.0, ft3  = 27.0
       0     1802        M 0x8000070c addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 28, (f:fpu) ft0  <-- 27.0
       0     1803        M                                           #; (f:fpu) ft3  <-- 28.0
       0     1804        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 29, a3  = 109, taken, goto 0x80000708
       0     1805        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.0, ft3  = 28.0
       0     1806        M 0x8000070c addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 29, (f:fpu) ft0  <-- 28.0
       0     1807        M                                           #; (f:fpu) ft3  <-- 29.0
       0     1808        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 30, a3  = 109, taken, goto 0x80000708
       0     1809        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 29.0, ft3  = 29.0
       0     1810        M 0x8000070c addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 30, (f:fpu) ft0  <-- 29.0
       0     1811        M                                           #; (f:fpu) ft3  <-- 30.0
       0     1812        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 31, a3  = 109, taken, goto 0x80000708
       0     1813        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 30.0, ft3  = 30.0
       0     1814        M 0x8000070c addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 31, (f:fpu) ft0  <-- 30.0
       0     1815        M                                           #; (f:fpu) ft3  <-- 31.0
       0     1816        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 32, a3  = 109, taken, goto 0x80000708
       0     1817        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 31.0, ft3  = 31.0
       0     1818        M 0x8000070c addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 32, (f:fpu) ft0  <-- 31.0
       0     1819        M                                           #; (f:fpu) ft3  <-- 32.0
       0     1820        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 33, a3  = 109, taken, goto 0x80000708
       0     1821        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 32.0, ft3  = 32.0
       0     1822        M 0x8000070c addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 33, (f:fpu) ft0  <-- 32.0
       0     1823        M                                           #; (f:fpu) ft3  <-- 33.0
       0     1824        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 34, a3  = 109, taken, goto 0x80000708
       0     1825        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 33.0, ft3  = 33.0
       0     1826        M 0x8000070c addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 34, (f:fpu) ft0  <-- 33.0
       0     1827        M                                           #; (f:fpu) ft3  <-- 34.0
       0     1828        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 35, a3  = 109, taken, goto 0x80000708
       0     1829        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 34.0, ft3  = 34.0
       0     1830        M 0x8000070c addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 35, (f:fpu) ft0  <-- 34.0
       0     1831        M                                           #; (f:fpu) ft3  <-- 35.0
       0     1832        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 36, a3  = 109, taken, goto 0x80000708
       0     1833        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 35.0, ft3  = 35.0
       0     1834        M 0x8000070c addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 36, (f:fpu) ft0  <-- 35.0
       0     1835        M                                           #; (f:fpu) ft3  <-- 36.0
       0     1836        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 37, a3  = 109, taken, goto 0x80000708
       0     1837        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 36.0, ft3  = 36.0
       0     1838        M 0x8000070c addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 37, (f:fpu) ft0  <-- 36.0
       0     1839        M                                           #; (f:fpu) ft3  <-- 37.0
       0     1840        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 38, a3  = 109, taken, goto 0x80000708
       0     1841        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 37.0, ft3  = 37.0
       0     1842        M 0x8000070c addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 38, (f:fpu) ft0  <-- 37.0
       0     1843        M                                           #; (f:fpu) ft3  <-- 38.0
       0     1844        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 39, a3  = 109, taken, goto 0x80000708
       0     1845        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 38.0, ft3  = 38.0
       0     1846        M 0x8000070c addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 39, (f:fpu) ft0  <-- 38.0
       0     1847        M                                           #; (f:fpu) ft3  <-- 39.0
       0     1848        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 40, a3  = 109, taken, goto 0x80000708
       0     1849        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 39.0, ft3  = 39.0
       0     1850        M 0x8000070c addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 40, (f:fpu) ft0  <-- 39.0
       0     1851        M                                           #; (f:fpu) ft3  <-- 40.0
       0     1852        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 41, a3  = 109, taken, goto 0x80000708
       0     1853        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 40.0, ft3  = 40.0
       0     1854        M 0x8000070c addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 41, (f:fpu) ft0  <-- 40.0
       0     1855        M                                           #; (f:fpu) ft3  <-- 41.0
       0     1856        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 42, a3  = 109, taken, goto 0x80000708
       0     1857        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 41.0, ft3  = 41.0
       0     1858        M 0x8000070c addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 42, (f:fpu) ft0  <-- 41.0
       0     1859        M                                           #; (f:fpu) ft3  <-- 42.0
       0     1860        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 43, a3  = 109, taken, goto 0x80000708
       0     1861        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 42.0, ft3  = 42.0
       0     1862        M 0x8000070c addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 43, (f:fpu) ft0  <-- 42.0
       0     1863        M                                           #; (f:fpu) ft3  <-- 43.0
       0     1864        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 44, a3  = 109, taken, goto 0x80000708
       0     1865        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 43.0, ft3  = 43.0
       0     1866        M 0x8000070c addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 44, (f:fpu) ft0  <-- 43.0
       0     1867        M                                           #; (f:fpu) ft3  <-- 44.0
       0     1868        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 45, a3  = 109, taken, goto 0x80000708
       0     1869        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 44.0, ft3  = 44.0
       0     1870        M 0x8000070c addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 45, (f:fpu) ft0  <-- 44.0
       0     1871        M                                           #; (f:fpu) ft3  <-- 45.0
       0     1872        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 46, a3  = 109, taken, goto 0x80000708
       0     1873        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 45.0, ft3  = 45.0
       0     1874        M 0x8000070c addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 46, (f:fpu) ft0  <-- 45.0
       0     1875        M                                           #; (f:fpu) ft3  <-- 46.0
       0     1876        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 47, a3  = 109, taken, goto 0x80000708
       0     1877        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 46.0, ft3  = 46.0
       0     1878        M 0x8000070c addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 47, (f:fpu) ft0  <-- 46.0
       0     1879        M                                           #; (f:fpu) ft3  <-- 47.0
       0     1880        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 48, a3  = 109, taken, goto 0x80000708
       0     1881        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 47.0, ft3  = 47.0
       0     1882        M 0x8000070c addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 48, (f:fpu) ft0  <-- 47.0
       0     1883        M                                           #; (f:fpu) ft3  <-- 48.0
       0     1884        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 49, a3  = 109, taken, goto 0x80000708
       0     1885        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 48.0, ft3  = 48.0
       0     1886        M 0x8000070c addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 49, (f:fpu) ft0  <-- 48.0
       0     1887        M                                           #; (f:fpu) ft3  <-- 49.0
       0     1888        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 50, a3  = 109, taken, goto 0x80000708
       0     1889        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 49.0, ft3  = 49.0
       0     1890        M 0x8000070c addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 50, (f:fpu) ft0  <-- 49.0
       0     1891        M                                           #; (f:fpu) ft3  <-- 50.0
       0     1892        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 51, a3  = 109, taken, goto 0x80000708
       0     1893        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 50.0, ft3  = 50.0
       0     1894        M 0x8000070c addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 51, (f:fpu) ft0  <-- 50.0
       0     1895        M                                           #; (f:fpu) ft3  <-- 51.0
       0     1896        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 52, a3  = 109, taken, goto 0x80000708
       0     1897        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 51.0, ft3  = 51.0
       0     1898        M 0x8000070c addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 52, (f:fpu) ft0  <-- 51.0
       0     1899        M                                           #; (f:fpu) ft3  <-- 52.0
       0     1900        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 53, a3  = 109, taken, goto 0x80000708
       0     1901        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 52.0, ft3  = 52.0
       0     1902        M 0x8000070c addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 53, (f:fpu) ft0  <-- 52.0
       0     1903        M                                           #; (f:fpu) ft3  <-- 53.0
       0     1904        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 54, a3  = 109, taken, goto 0x80000708
       0     1905        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 53.0, ft3  = 53.0
       0     1906        M 0x8000070c addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 54, (f:fpu) ft0  <-- 53.0
       0     1907        M                                           #; (f:fpu) ft3  <-- 54.0
       0     1908        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 55, a3  = 109, taken, goto 0x80000708
       0     1909        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 54.0, ft3  = 54.0
       0     1910        M 0x8000070c addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 55, (f:fpu) ft0  <-- 54.0
       0     1911        M                                           #; (f:fpu) ft3  <-- 55.0
       0     1912        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 56, a3  = 109, taken, goto 0x80000708
       0     1913        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 55.0, ft3  = 55.0
       0     1914        M 0x8000070c addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 56, (f:fpu) ft0  <-- 55.0
       0     1915        M                                           #; (f:fpu) ft3  <-- 56.0
       0     1916        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 57, a3  = 109, taken, goto 0x80000708
       0     1917        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 56.0, ft3  = 56.0
       0     1918        M 0x8000070c addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 57, (f:fpu) ft0  <-- 56.0
       0     1919        M                                           #; (f:fpu) ft3  <-- 57.0
       0     1920        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 58, a3  = 109, taken, goto 0x80000708
       0     1921        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 57.0, ft3  = 57.0
       0     1922        M 0x8000070c addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 58, (f:fpu) ft0  <-- 57.0
       0     1923        M                                           #; (f:fpu) ft3  <-- 58.0
       0     1924        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 59, a3  = 109, taken, goto 0x80000708
       0     1925        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 58.0, ft3  = 58.0
       0     1926        M 0x8000070c addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 59, (f:fpu) ft0  <-- 58.0
       0     1927        M                                           #; (f:fpu) ft3  <-- 59.0
       0     1928        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 60, a3  = 109, taken, goto 0x80000708
       0     1929        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 59.0, ft3  = 59.0
       0     1930        M 0x8000070c addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 60, (f:fpu) ft0  <-- 59.0
       0     1931        M                                           #; (f:fpu) ft3  <-- 60.0
       0     1932        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 61, a3  = 109, taken, goto 0x80000708
       0     1933        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 60.0, ft3  = 60.0
       0     1934        M 0x8000070c addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 61, (f:fpu) ft0  <-- 60.0
       0     1935        M                                           #; (f:fpu) ft3  <-- 61.0
       0     1936        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 62, a3  = 109, taken, goto 0x80000708
       0     1937        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 61.0, ft3  = 61.0
       0     1938        M 0x8000070c addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 62, (f:fpu) ft0  <-- 61.0
       0     1939        M                                           #; (f:fpu) ft3  <-- 62.0
       0     1940        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 63, a3  = 109, taken, goto 0x80000708
       0     1941        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 62.0, ft3  = 62.0
       0     1942        M 0x8000070c addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 63, (f:fpu) ft0  <-- 62.0
       0     1943        M                                           #; (f:fpu) ft3  <-- 63.0
       0     1944        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 64, a3  = 109, taken, goto 0x80000708
       0     1945        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 63.0, ft3  = 63.0
       0     1946        M 0x8000070c addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 64, (f:fpu) ft0  <-- 63.0
       0     1947        M                                           #; (f:fpu) ft3  <-- 64.0
       0     1948        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 65, a3  = 109, taken, goto 0x80000708
       0     1949        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 64.0, ft3  = 64.0
       0     1950        M 0x8000070c addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 65, (f:fpu) ft0  <-- 64.0
       0     1951        M                                           #; (f:fpu) ft3  <-- 65.0
       0     1952        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 66, a3  = 109, taken, goto 0x80000708
       0     1953        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 65.0, ft3  = 65.0
       0     1954        M 0x8000070c addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 66, (f:fpu) ft0  <-- 65.0
       0     1955        M                                           #; (f:fpu) ft3  <-- 66.0
       0     1956        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 67, a3  = 109, taken, goto 0x80000708
       0     1957        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 66.0, ft3  = 66.0
       0     1958        M 0x8000070c addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 67, (f:fpu) ft0  <-- 66.0
       0     1959        M                                           #; (f:fpu) ft3  <-- 67.0
       0     1960        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 68, a3  = 109, taken, goto 0x80000708
       0     1961        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 67.0, ft3  = 67.0
       0     1962        M 0x8000070c addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 68, (f:fpu) ft0  <-- 67.0
       0     1963        M                                           #; (f:fpu) ft3  <-- 68.0
       0     1964        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 69, a3  = 109, taken, goto 0x80000708
       0     1965        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 68.0, ft3  = 68.0
       0     1966        M 0x8000070c addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 69, (f:fpu) ft0  <-- 68.0
       0     1967        M                                           #; (f:fpu) ft3  <-- 69.0
       0     1968        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 70, a3  = 109, taken, goto 0x80000708
       0     1969        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 69.0, ft3  = 69.0
       0     1970        M 0x8000070c addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 70, (f:fpu) ft0  <-- 69.0
       0     1971        M                                           #; (f:fpu) ft3  <-- 70.0
       0     1972        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 71, a3  = 109, taken, goto 0x80000708
       0     1973        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 70.0, ft3  = 70.0
       0     1974        M 0x8000070c addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 71, (f:fpu) ft0  <-- 70.0
       0     1975        M                                           #; (f:fpu) ft3  <-- 71.0
       0     1976        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 72, a3  = 109, taken, goto 0x80000708
       0     1977        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 71.0, ft3  = 71.0
       0     1978        M 0x8000070c addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 72, (f:fpu) ft0  <-- 71.0
       0     1979        M                                           #; (f:fpu) ft3  <-- 72.0
       0     1980        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 73, a3  = 109, taken, goto 0x80000708
       0     1981        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 72.0, ft3  = 72.0
       0     1982        M 0x8000070c addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 73, (f:fpu) ft0  <-- 72.0
       0     1983        M                                           #; (f:fpu) ft3  <-- 73.0
       0     1984        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 74, a3  = 109, taken, goto 0x80000708
       0     1985        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 73.0, ft3  = 73.0
       0     1986        M 0x8000070c addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 74, (f:fpu) ft0  <-- 73.0
       0     1987        M                                           #; (f:fpu) ft3  <-- 74.0
       0     1988        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 75, a3  = 109, taken, goto 0x80000708
       0     1989        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 74.0, ft3  = 74.0
       0     1990        M 0x8000070c addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 75, (f:fpu) ft0  <-- 74.0
       0     1991        M                                           #; (f:fpu) ft3  <-- 75.0
       0     1992        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 76, a3  = 109, taken, goto 0x80000708
       0     1993        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 75.0, ft3  = 75.0
       0     1994        M 0x8000070c addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 76, (f:fpu) ft0  <-- 75.0
       0     1995        M                                           #; (f:fpu) ft3  <-- 76.0
       0     1996        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 77, a3  = 109, taken, goto 0x80000708
       0     1997        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 76.0, ft3  = 76.0
       0     1998        M 0x8000070c addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 77, (f:fpu) ft0  <-- 76.0
       0     1999        M                                           #; (f:fpu) ft3  <-- 77.0
       0     2000        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 78, a3  = 109, taken, goto 0x80000708
       0     2001        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 77.0, ft3  = 77.0
       0     2002        M 0x8000070c addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 78, (f:fpu) ft0  <-- 77.0
       0     2003        M                                           #; (f:fpu) ft3  <-- 78.0
       0     2004        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 79, a3  = 109, taken, goto 0x80000708
       0     2005        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 78.0, ft3  = 78.0
       0     2006        M 0x8000070c addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 79, (f:fpu) ft0  <-- 78.0
       0     2007        M                                           #; (f:fpu) ft3  <-- 79.0
       0     2008        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 80, a3  = 109, taken, goto 0x80000708
       0     2009        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 79.0, ft3  = 79.0
       0     2010        M 0x8000070c addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 80, (f:fpu) ft0  <-- 79.0
       0     2011        M                                           #; (f:fpu) ft3  <-- 80.0
       0     2012        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 81, a3  = 109, taken, goto 0x80000708
       0     2013        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 80.0, ft3  = 80.0
       0     2014        M 0x8000070c addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 81, (f:fpu) ft0  <-- 80.0
       0     2015        M                                           #; (f:fpu) ft3  <-- 81.0
       0     2016        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 82, a3  = 109, taken, goto 0x80000708
       0     2017        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 81.0, ft3  = 81.0
       0     2018        M 0x8000070c addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 82, (f:fpu) ft0  <-- 81.0
       0     2019        M                                           #; (f:fpu) ft3  <-- 82.0
       0     2020        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 83, a3  = 109, taken, goto 0x80000708
       0     2021        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 82.0, ft3  = 82.0
       0     2022        M 0x8000070c addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 83, (f:fpu) ft0  <-- 82.0
       0     2023        M                                           #; (f:fpu) ft3  <-- 83.0
       0     2024        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 84, a3  = 109, taken, goto 0x80000708
       0     2025        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 83.0, ft3  = 83.0
       0     2026        M 0x8000070c addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 84, (f:fpu) ft0  <-- 83.0
       0     2027        M                                           #; (f:fpu) ft3  <-- 84.0
       0     2028        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 85, a3  = 109, taken, goto 0x80000708
       0     2029        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 84.0, ft3  = 84.0
       0     2030        M 0x8000070c addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 85, (f:fpu) ft0  <-- 84.0
       0     2031        M                                           #; (f:fpu) ft3  <-- 85.0
       0     2032        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 86, a3  = 109, taken, goto 0x80000708
       0     2033        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 85.0, ft3  = 85.0
       0     2034        M 0x8000070c addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 86, (f:fpu) ft0  <-- 85.0
       0     2035        M                                           #; (f:fpu) ft3  <-- 86.0
       0     2036        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 87, a3  = 109, taken, goto 0x80000708
       0     2037        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 86.0, ft3  = 86.0
       0     2038        M 0x8000070c addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 87, (f:fpu) ft0  <-- 86.0
       0     2039        M                                           #; (f:fpu) ft3  <-- 87.0
       0     2040        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 88, a3  = 109, taken, goto 0x80000708
       0     2041        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 87.0, ft3  = 87.0
       0     2042        M 0x8000070c addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 88, (f:fpu) ft0  <-- 87.0
       0     2043        M                                           #; (f:fpu) ft3  <-- 88.0
       0     2044        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 89, a3  = 109, taken, goto 0x80000708
       0     2045        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 88.0, ft3  = 88.0
       0     2046        M 0x8000070c addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 89, (f:fpu) ft0  <-- 88.0
       0     2047        M                                           #; (f:fpu) ft3  <-- 89.0
       0     2048        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 90, a3  = 109, taken, goto 0x80000708
       0     2049        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 89.0, ft3  = 89.0
       0     2050        M 0x8000070c addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 90, (f:fpu) ft0  <-- 89.0
       0     2051        M                                           #; (f:fpu) ft3  <-- 90.0
       0     2052        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 91, a3  = 109, taken, goto 0x80000708
       0     2053        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 90.0, ft3  = 90.0
       0     2054        M 0x8000070c addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 91, (f:fpu) ft0  <-- 90.0
       0     2055        M                                           #; (f:fpu) ft3  <-- 91.0
       0     2056        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 92, a3  = 109, taken, goto 0x80000708
       0     2057        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 91.0, ft3  = 91.0
       0     2058        M 0x8000070c addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 92, (f:fpu) ft0  <-- 91.0
       0     2059        M                                           #; (f:fpu) ft3  <-- 92.0
       0     2060        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 93, a3  = 109, taken, goto 0x80000708
       0     2061        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 92.0, ft3  = 92.0
       0     2062        M 0x8000070c addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 93, (f:fpu) ft0  <-- 92.0
       0     2063        M                                           #; (f:fpu) ft3  <-- 93.0
       0     2064        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 94, a3  = 109, taken, goto 0x80000708
       0     2065        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 93.0, ft3  = 93.0
       0     2066        M 0x8000070c addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 94, (f:fpu) ft0  <-- 93.0
       0     2067        M                                           #; (f:fpu) ft3  <-- 94.0
       0     2068        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 95, a3  = 109, taken, goto 0x80000708
       0     2069        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 94.0, ft3  = 94.0
       0     2070        M 0x8000070c addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 95, (f:fpu) ft0  <-- 94.0
       0     2071        M                                           #; (f:fpu) ft3  <-- 95.0
       0     2072        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 96, a3  = 109, taken, goto 0x80000708
       0     2073        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 95.0, ft3  = 95.0
       0     2074        M 0x8000070c addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 96, (f:fpu) ft0  <-- 95.0
       0     2075        M                                           #; (f:fpu) ft3  <-- 96.0
       0     2076        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 97, a3  = 109, taken, goto 0x80000708
       0     2077        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 96.0, ft3  = 96.0
       0     2078        M 0x8000070c addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 97, (f:fpu) ft0  <-- 96.0
       0     2079        M                                           #; (f:fpu) ft3  <-- 97.0
       0     2080        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 98, a3  = 109, taken, goto 0x80000708
       0     2081        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 97.0, ft3  = 97.0
       0     2082        M 0x8000070c addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 98, (f:fpu) ft0  <-- 97.0
       0     2083        M                                           #; (f:fpu) ft3  <-- 98.0
       0     2084        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 99, a3  = 109, taken, goto 0x80000708
       0     2085        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 98.0, ft3  = 98.0
       0     2086        M 0x8000070c addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 99, (f:fpu) ft0  <-- 98.0
       0     2087        M                                           #; (f:fpu) ft3  <-- 99.0
       0     2088        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 100, a3  = 109, taken, goto 0x80000708
       0     2089        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 99.0, ft3  = 99.0
       0     2090        M 0x8000070c addi    a2, a2, 1              #; a2  = 100, (wrb) a2  <-- 101
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 100, (f:fpu) ft0  <-- 99.0
       0     2091        M                                           #; (f:fpu) ft3  <-- 100.0
       0     2092        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 101, a3  = 109, taken, goto 0x80000708
       0     2093        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 100.0, ft3  = 100.0
       0     2094        M 0x8000070c addi    a2, a2, 1              #; a2  = 101, (wrb) a2  <-- 102
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 101, (f:fpu) ft0  <-- 100.0
       0     2095        M                                           #; (f:fpu) ft3  <-- 101.0
       0     2096        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 102, a3  = 109, taken, goto 0x80000708
       0     2097        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 101.0, ft3  = 101.0
       0     2098        M 0x8000070c addi    a2, a2, 1              #; a2  = 102, (wrb) a2  <-- 103
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 102, (f:fpu) ft0  <-- 101.0
       0     2099        M                                           #; (f:fpu) ft3  <-- 102.0
       0     2100        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 103, a3  = 109, taken, goto 0x80000708
       0     2101        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 102.0, ft3  = 102.0
       0     2102        M 0x8000070c addi    a2, a2, 1              #; a2  = 103, (wrb) a2  <-- 104
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 103, (f:fpu) ft0  <-- 102.0
       0     2103        M                                           #; (f:fpu) ft3  <-- 103.0
       0     2104        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 104, a3  = 109, taken, goto 0x80000708
       0     2105        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 103.0, ft3  = 103.0
       0     2106        M 0x8000070c addi    a2, a2, 1              #; a2  = 104, (wrb) a2  <-- 105
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 104, (f:fpu) ft0  <-- 103.0
       0     2107        M                                           #; (f:fpu) ft3  <-- 104.0
       0     2108        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 105, a3  = 109, taken, goto 0x80000708
       0     2109        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 104.0, ft3  = 104.0
       0     2110        M 0x8000070c addi    a2, a2, 1              #; a2  = 105, (wrb) a2  <-- 106
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 105, (f:fpu) ft0  <-- 104.0
       0     2111        M                                           #; (f:fpu) ft3  <-- 105.0
       0     2112        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 106, a3  = 109, taken, goto 0x80000708
       0     2113        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 105.0, ft3  = 105.0
       0     2114        M 0x8000070c addi    a2, a2, 1              #; a2  = 106, (wrb) a2  <-- 107
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 106, (f:fpu) ft0  <-- 105.0
       0     2115        M                                           #; (f:fpu) ft3  <-- 106.0
       0     2116        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 107, a3  = 109, taken, goto 0x80000708
       0     2117        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 106.0, ft3  = 106.0
       0     2118        M 0x8000070c addi    a2, a2, 1              #; a2  = 107, (wrb) a2  <-- 108
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 107, (f:fpu) ft0  <-- 106.0
       0     2119        M                                           #; (f:fpu) ft3  <-- 107.0
       0     2120        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 108, a3  = 109, taken, goto 0x80000708
       0     2121        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 107.0, ft3  = 107.0
       0     2122        M 0x8000070c addi    a2, a2, 1              #; a2  = 108, (wrb) a2  <-- 109
                         M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 108, (f:fpu) ft0  <-- 107.0
       0     2123        M                                           #; (f:fpu) ft3  <-- 108.0
       0     2124        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 109, a3  = 109, not taken
       0     2125        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 108.0, ft3  = 108.0
       0     2126        M 0x8000071c beqz    a1, pc + 1396          #; a1  = 1, not taken
                         M 0x80000718 csrrci  a2, ssr, 1             #; (f:fpu) ft0  <-- 108.0
       0     2137        M 0x80000720 li      a2, 8                  #; (wrb) a2  <-- 8
       0     2138        M 0x80000724 li      a1, 11                 #; (wrb) a1  <-- 11
       0     2139        M 0x80000728 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2140        M 0x8000072c li      a4, 192                #; (wrb) a4  <-- 192
       0     2149        M 0x80000730 li      a5, 224                #; (wrb) a5  <-- 224
       0     2150        M 0x80000734 scfgw   a1, a3                 #; a1  = 11, a3  = 64
       0     2151        M 0x80000738 scfgw   a2, a4                 #; a2  = 8, a4  = 192
       0     2152        M 0x8000073c li      a4, 96                 #; (wrb) a4  <-- 96
       0     2161        M 0x80000740 li      a3, 96                 #; (wrb) a3  <-- 96
       0     2162        M 0x80000744 scfgw   a2, a4                 #; a2  = 8, a4  = 96
       0     2163        M 0x80000748 scfgw   a2, a5                 #; a2  = 8, a5  = 224
       0     2164        M 0x8000074c li      a5, 32                 #; (wrb) a5  <-- 32
       0     2173        M 0x80000750 scfgw   zero, a5               #; a5  = 32
       0     2174        M 0x80000754 scfgwi  a0, 800                #; a0  = 0x00100000
       0     2176        M                                           #; (acc) gp  <-- 0x220001d3
                         M 0x80000758 csrrsi  a4, ssr, 1             #; 
       0     2178        M 0x8000075c fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     2179        M                                           #; (f:fpu) ft3  <-- 1.0
       0     2187        M 0x80000760 fsgnj.d ft5, ft0, ft0          #; ft0  = 2.0, ft0  = 2.0
       0     2188        M 0x80000764 fsgnj.d ft7, ft0, ft0          #; ft0  = 3.0, ft0  = 3.0, (f:fpu) ft5  <-- 2.0
       0     2189        M 0x80000768 fsgnj.d fs11, ft0, ft0         #; ft0  = 4.0, ft0  = 4.0, (f:fpu) ft7  <-- 3.0
       0     2190        M 0x8000076c fsgnj.d fa1, ft0, ft0          #; ft0  = 5.0, ft0  = 5.0, (f:fpu) fs11 <-- 4.0
       0     2191        M                                           #; (f:fpu) fa1  <-- 5.0
       0     2199        M 0x80000770 fsgnj.d fa5, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0
       0     2200        M 0x8000077c li      a4, 64                 #; (wrb) a4  <-- 64
                         M 0x80000774 fsgnj.d ft8, ft0, ft0          #; ft0  = 7.0, ft0  = 7.0, (f:fpu) fa5  <-- 6.0
       0     2201        M 0x80000778 fsgnj.d ft10, ft0, ft0         #; ft0  = 8.0, ft0  = 8.0, (f:fpu) ft8  <-- 7.0
       0     2202        M                                           #; (f:fpu) ft10 <-- 8.0
       0     2211        M 0x80000780 fadd.d  ft3, ft0, ft3          #; ft0  = 9.0, ft3  = 1.0
       0     2212        M 0x80000784 fadd.d  fs8, ft5, ft0          #; ft5  = 2.0, ft0  = 10.0
       0     2213        M 0x80000788 fadd.d  ft4, ft7, ft0          #; ft7  = 3.0, ft0  = 11.0
       0     2214        M 0x8000078c fadd.d  fa7, fa5, ft0          #; fa5  = 6.0, ft0  = 12.0, (f:fpu) ft3  <-- 10.0
       0     2215        M                                           #; (f:fpu) fs8  <-- 12.0
       0     2216        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2217        M                                           #; (f:fpu) fa7  <-- 18.0
       0     2223        M 0x80000790 fsgnj.d ft11, ft0, ft0         #; ft0  = 13.0, ft0  = 13.0
       0     2224        M 0x80000794 fsgnj.d fs0, ft0, ft0          #; ft0  = 14.0, ft0  = 14.0, (f:fpu) ft11 <-- 13.0
       0     2225        M 0x80000798 fadd.d  fa2, fs11, ft0         #; fs11 = 4.0, ft0  = 15.0, (f:fpu) fs0  <-- 14.0
       0     2226        M 0x8000079c fadd.d  ft5, fa1, ft0          #; fa1  = 5.0, ft0  = 16.0
       0     2228        M                                           #; (f:fpu) fa2  <-- 19.0
       0     2229        M                                           #; (f:fpu) ft5  <-- 21.0
       0     2235        M 0x800007a0 fadd.d  ft3, ft3, fs8          #; ft3  = 10.0, fs8  = 12.0
       0     2236        M 0x800007a4 fadd.d  ft4, ft0, ft4          #; ft0  = 17.0, ft4  = 14.0
       0     2238        M                                           #; (f:fpu) ft3  <-- 22.0
       0     2239        M                                           #; (f:fpu) ft4  <-- 31.0
       0     2240        M 0x800007a8 fadd.d  ft3, ft3, ft4          #; ft3  = 22.0, ft4  = 31.0
       0     2241        M 0x800007ac fadd.d  ft4, ft5, fa2          #; ft5  = 21.0, fa2  = 19.0
       0     2243        M                                           #; (f:fpu) ft3  <-- 53.0
       0     2244        M                                           #; (f:fpu) ft4  <-- 40.0
       0     2247        M 0x800007b0 fadd.d  ft5, fa7, ft0          #; fa7  = 18.0, ft0  = 18.0
       0     2248        M 0x800007b4 fsgnj.d fs5, ft0, ft0          #; ft0  = 19.0, ft0  = 19.0
       0     2249        M 0x800007b8 fsgnj.d fs8, ft0, ft0          #; ft0  = 20.0, ft0  = 20.0, (f:fpu) fs5  <-- 19.0
       0     2250        M 0x800007bc fsgnj.d fs10, ft0, ft0         #; ft0  = 21.0, ft0  = 21.0, (f:fpu) fs8  <-- 20.0
       0     2251        M                                           #; (f:fpu) ft5  <-- 36.0
       0     2252        M                                           #; (f:fpu) fs10 <-- 21.0
       0     2259        M 0x800007c0 fadd.d  ft4, ft5, ft4          #; ft5  = 36.0, ft4  = 40.0
       0     2260        M 0x800007c4 fadd.d  ft5, ft8, ft0          #; ft8  = 7.0, ft0  = 22.0
       0     2262        M                                           #; (f:fpu) ft4  <-- 76.0
       0     2263        M 0x800007c8 fadd.d  ft3, ft3, ft4          #; ft3  = 53.0, ft4  = 76.0, (f:fpu) ft5  <-- 29.0
       0     2264        M 0x800007cc fadd.d  ft4, ft11, ft0         #; ft11 = 13.0, ft0  = 23.0
       0     2266        M                                           #; (f:fpu) ft3  <-- 129.0
       0     2267        M                                           #; (f:fpu) ft4  <-- 36.0
       0     2271        M 0x800007d0 fadd.d  fs2, ft10, ft0         #; ft10 = 8.0, ft0  = 24.0
       0     2272        M 0x800007d4 fadd.d  fa0, fs0, ft0          #; fs0  = 14.0, ft0  = 25.0
       0     2274        M                                           #; (f:fpu) fs2  <-- 32.0
       0     2275        M 0x800007d8 fadd.d  ft5, fs2, ft5          #; fs2  = 32.0, ft5  = 29.0, (f:fpu) fa0  <-- 39.0
       0     2276        M 0x800007dc fadd.d  ft4, ft4, ft0          #; ft4  = 36.0, ft0  = 26.0
       0     2278        M                                           #; (f:fpu) ft5  <-- 61.0
       0     2279        M                                           #; (f:fpu) ft4  <-- 62.0
       0     2283        M 0x800007e0 fadd.d  ft4, ft4, ft5          #; ft4  = 62.0, ft5  = 61.0
       0     2284        M 0x800007e4 fadd.d  ft5, fs5, ft0          #; fs5  = 19.0, ft0  = 27.0
       0     2285        M 0x800007e8 fadd.d  fa0, fa0, ft0          #; fa0  = 39.0, ft0  = 28.0
       0     2286        M 0x800007ec fsgnj.d fs11, ft0, ft0         #; ft0  = 29.0, ft0  = 29.0, (f:fpu) ft4  <-- 123.0
       0     2287        M                                           #; (f:fpu) ft5  <-- 46.0
       0     2288        M                                           #; (f:fpu) fs11 <-- 29.0
       0     2289        M                                           #; (f:fpu) fa0  <-- 67.0
       0     2295        M 0x800007f0 fsgnj.d fa3, ft0, ft0          #; ft0  = 30.0, ft0  = 30.0
       0     2296        M 0x800007f4 fsgnj.d fa5, ft0, ft0          #; ft0  = 31.0, ft0  = 31.0, (f:fpu) fa3  <-- 30.0
       0     2297        M 0x800007f8 fsgnj.d ft11, ft0, ft0         #; ft0  = 32.0, ft0  = 32.0, (f:fpu) fa5  <-- 31.0
       0     2298        M 0x800007fc fadd.d  ft5, ft0, ft5          #; ft0  = 33.0, ft5  = 46.0, (f:fpu) ft11 <-- 32.0
       0     2301        M                                           #; (f:fpu) ft5  <-- 79.0
       0     2307        M 0x80000800 fadd.d  ft5, fa0, ft5          #; fa0  = 67.0, ft5  = 79.0
       0     2310        M                                           #; (f:fpu) ft5  <-- 146.0
       0     2311        M 0x80000804 fadd.d  ft4, ft5, ft4          #; ft5  = 146.0, ft4  = 123.0
       0     2312        M 0x80000808 fadd.d  ft5, fs8, ft0          #; fs8  = 20.0, ft0  = 34.0
       0     2314        M                                           #; (f:fpu) ft4  <-- 269.0
       0     2315        M 0x8000080c fadd.d  ft3, ft3, ft4          #; ft3  = 129.0, ft4  = 269.0, (f:fpu) ft5  <-- 54.0
       0     2318        M                                           #; (f:fpu) ft3  <-- 398.0
       0     2319        M 0x80000810 fadd.d  ft4, fs11, ft0         #; fs11 = 29.0, ft0  = 35.0
       0     2320        M 0x80000814 fadd.d  fa6, fs10, ft0         #; fs10 = 21.0, ft0  = 36.0
       0     2321        M 0x80000818 fadd.d  ft9, fa3, ft0          #; fa3  = 30.0, ft0  = 37.0
       0     2322        M 0x8000081c fadd.d  ft6, fa5, ft0          #; fa5  = 31.0, ft0  = 38.0, (f:fpu) ft4  <-- 64.0
       0     2323        M                                           #; (f:fpu) fa6  <-- 57.0
       0     2324        M                                           #; (f:fpu) ft9  <-- 67.0
       0     2325        M                                           #; (f:fpu) ft6  <-- 69.0
       0     2331        M 0x80000820 fadd.d  fs0, ft11, ft0         #; ft11 = 32.0, ft0  = 39.0
       0     2332        M 0x80000824 fadd.d  ft5, fa6, ft5          #; fa6  = 57.0, ft5  = 54.0
       0     2333        M 0x80000828 fadd.d  ft4, ft4, ft0          #; ft4  = 64.0, ft0  = 40.0
       0     2334        M                                           #; (f:fpu) fs0  <-- 71.0
       0     2335        M                                           #; (f:fpu) ft5  <-- 111.0
       0     2336        M                                           #; (f:fpu) ft4  <-- 104.0
       0     2337        M 0x8000082c fadd.d  ft4, ft4, ft5          #; ft4  = 104.0, ft5  = 111.0
       0     2340        M                                           #; (f:fpu) ft4  <-- 215.0
       0     2343        M 0x80000830 fadd.d  ft5, ft9, ft6          #; ft9  = 67.0, ft6  = 69.0
       0     2344        M 0x80000834 fadd.d  ft6, ft0, fs0          #; ft0  = 41.0, fs0  = 71.0
       0     2345        M 0x80000838 fsgnj.d fs1, ft0, ft0          #; ft0  = 42.0, ft0  = 42.0
       0     2346        M                                           #; (f:fpu) ft5  <-- 136.0
       0     2347        M 0x8000083c fsgnj.d fa2, ft0, ft0          #; ft0  = 43.0, ft0  = 43.0, (f:fpu) fs1  <-- 42.0
       0     2348        M                                           #; (f:fpu) ft6  <-- 112.0
       0     2349        M                                           #; (f:fpu) fa2  <-- 43.0
       0     2355        M 0x80000840 fsgnj.d fs3, ft0, ft0          #; ft0  = 44.0, ft0  = 44.0
       0     2356        M 0x80000844 fsgnj.d fa5, ft0, ft0          #; ft0  = 45.0, ft0  = 45.0, (f:fpu) fs3  <-- 44.0
       0     2357        M 0x80000848 fadd.d  ft5, ft5, ft6          #; ft5  = 136.0, ft6  = 112.0, (f:fpu) fa5  <-- 45.0
       0     2360        M                                           #; (f:fpu) ft5  <-- 248.0
       0     2361        M 0x8000084c fadd.d  ft4, ft5, ft4          #; ft5  = 248.0, ft4  = 215.0
       0     2364        M                                           #; (f:fpu) ft4  <-- 463.0
       0     2367        M 0x80000850 fadd.d  fs4, fa2, ft0          #; fa2  = 43.0, ft0  = 46.0
       0     2368        M 0x80000854 fsgnj.d fs6, ft0, ft0          #; ft0  = 47.0, ft0  = 47.0
       0     2369        M 0x80000858 fadd.d  ft6, fs1, ft0          #; fs1  = 42.0, ft0  = 48.0, (f:fpu) fs6  <-- 47.0
       0     2370        M 0x8000085c fadd.d  ft5, fs3, ft0          #; fs3  = 44.0, ft0  = 49.0, (f:fpu) fs4  <-- 89.0
       0     2372        M                                           #; (f:fpu) ft6  <-- 90.0
       0     2373        M                                           #; (f:fpu) ft5  <-- 93.0
       0     2379        M 0x80000860 fsgnj.d fs8, ft0, ft0          #; ft0  = 50.0, ft0  = 50.0
       0     2380        M 0x80000864 fsgnj.d fs10, ft0, ft0         #; ft0  = 51.0, ft0  = 51.0, (f:fpu) fs8  <-- 50.0
       0     2381        M 0x80000868 fadd.d  fa1, fa5, ft0          #; fa5  = 45.0, ft0  = 52.0, (f:fpu) fs10 <-- 51.0
       0     2382        M 0x8000086c fadd.d  ft5, ft0, ft5          #; ft0  = 53.0, ft5  = 93.0
       0     2384        M                                           #; (f:fpu) fa1  <-- 97.0
       0     2385        M                                           #; (f:fpu) ft5  <-- 146.0
       0     2391        M 0x80000870 fadd.d  ft6, ft6, fs4          #; ft6  = 90.0, fs4  = 89.0
       0     2392        M 0x80000874 fsgnj.d fs11, ft0, ft0         #; ft0  = 54.0, ft0  = 54.0
       0     2393        M                                           #; (f:fpu) fs11 <-- 54.0
       0     2394        M                                           #; (f:fpu) ft6  <-- 179.0
       0     2395        M 0x80000878 fadd.d  ft5, ft6, ft5          #; ft6  = 179.0, ft5  = 146.0
       0     2396        M 0x8000087c fadd.d  ft6, fs6, ft0          #; fs6  = 47.0, ft0  = 55.0
       0     2398        M                                           #; (f:fpu) ft5  <-- 325.0
       0     2399        M                                           #; (f:fpu) ft6  <-- 102.0
       0     2403        M 0x80000880 fadd.d  fa1, ft0, fa1          #; ft0  = 56.0, fa1  = 97.0
       0     2404        M 0x80000884 fadd.d  ft6, ft6, ft0          #; ft6  = 102.0, ft0  = 57.0
       0     2405        M 0x80000888 fadd.d  fa2, fs10, ft0         #; fs10 = 51.0, ft0  = 58.0
       0     2406        M 0x8000088c fsgnj.d fa5, ft0, ft0          #; ft0  = 59.0, ft0  = 59.0, (f:fpu) fa1  <-- 153.0
       0     2407        M                                           #; (f:fpu) ft6  <-- 159.0
       0     2408        M                                           #; (f:fpu) fa5  <-- 59.0
       0     2409        M                                           #; (f:fpu) fa2  <-- 109.0
       0     2415        M 0x80000890 fsgnj.d fs1, ft0, ft0          #; ft0  = 60.0, ft0  = 60.0
       0     2416        M 0x80000894 fsgnj.d fa7, ft0, ft0          #; ft0  = 61.0, ft0  = 61.0, (f:fpu) fs1  <-- 60.0
       0     2417        M 0x80000898 fadd.d  ft6, ft6, fa1          #; ft6  = 159.0, fa1  = 153.0, (f:fpu) fa7  <-- 61.0
       0     2420        M                                           #; (f:fpu) ft6  <-- 312.0
       0     2421        M 0x8000089c fadd.d  ft5, ft5, ft6          #; ft5  = 325.0, ft6  = 312.0
       0     2424        M                                           #; (f:fpu) ft5  <-- 637.0
       0     2427        M 0x800008a0 fadd.d  ft4, ft5, ft4          #; ft5  = 637.0, ft4  = 463.0
       0     2428        M 0x800008a4 fadd.d  ft5, fs8, ft0          #; fs8  = 50.0, ft0  = 62.0
       0     2430        M                                           #; (f:fpu) ft4  <-- 1100.0
       0     2431        M 0x800008a8 fadd.d  ft3, ft3, ft4          #; ft3  = 398.0, ft4  = 1100.0, (f:fpu) ft5  <-- 112.0
       0     2432        M 0x800008ac fadd.d  ft4, fs11, ft0         #; fs11 = 54.0, ft0  = 63.0
       0     2434        M                                           #; (f:fpu) ft3  <-- 1498.0
       0     2435        M                                           #; (f:fpu) ft4  <-- 117.0
       0     2439        M 0x800008b0 fadd.d  ft5, fa2, ft5          #; fa2  = 109.0, ft5  = 112.0
       0     2440        M 0x800008b4 fadd.d  fa5, fa5, ft0          #; fa5  = 59.0, ft0  = 64.0
       0     2441        M 0x800008b8 fadd.d  ft6, fs1, ft0          #; fs1  = 60.0, ft0  = 65.0
       0     2442        M 0x800008bc fadd.d  ft4, ft4, ft0          #; ft4  = 117.0, ft0  = 66.0, (f:fpu) ft5  <-- 221.0
       0     2443        M                                           #; (f:fpu) fa5  <-- 123.0
       0     2444        M                                           #; (f:fpu) ft6  <-- 125.0
       0     2445        M                                           #; (f:fpu) ft4  <-- 183.0
       0     2451        M 0x800008c0 fsgnj.d ft9, ft0, ft0          #; ft0  = 67.0, ft0  = 67.0
       0     2452        M 0x800008c4 fadd.d  ft4, ft4, ft5          #; ft4  = 183.0, ft5  = 221.0, (f:fpu) ft9  <-- 67.0
       0     2453        M 0x800008c8 fadd.d  ft5, fa5, ft6          #; fa5  = 123.0, ft6  = 125.0
       0     2454        M 0x800008cc fsgnj.d fa5, ft0, ft0          #; ft0  = 68.0, ft0  = 68.0
       0     2455        M                                           #; (f:fpu) fa5  <-- 68.0
       0     2456        M                                           #; (f:fpu) ft4  <-- 404.0
       0     2457        M                                           #; (f:fpu) ft5  <-- 248.0
       0     2463        M 0x800008d0 fsgnj.d ft11, ft0, ft0         #; ft0  = 69.0, ft0  = 69.0
       0     2464        M 0x800008d4 fadd.d  ft8, fa7, ft0          #; fa7  = 61.0, ft0  = 70.0, (f:fpu) ft11 <-- 69.0
       0     2467        M                                           #; (f:fpu) ft8  <-- 131.0
       0     2468        M 0x800008d8 fadd.d  ft6, ft0, ft8          #; ft0  = 71.0, ft8  = 131.0
       0     2469        M 0x800008dc fsgnj.d fa4, ft0, ft0          #; ft0  = 72.0, ft0  = 72.0
       0     2470        M                                           #; (f:fpu) fa4  <-- 72.0
       0     2471        M                                           #; (f:fpu) ft6  <-- 202.0
       0     2475        M 0x800008e0 fadd.d  ft5, ft5, ft6          #; ft5  = 248.0, ft6  = 202.0
       0     2476        M 0x800008e4 fadd.d  fs2, fa5, ft0          #; fa5  = 68.0, ft0  = 73.0
       0     2477        M 0x800008e8 fsgnj.d fs4, ft0, ft0          #; ft0  = 74.0, ft0  = 74.0
       0     2478        M 0x800008ec fadd.d  ft6, ft9, ft0          #; ft9  = 67.0, ft0  = 75.0, (f:fpu) ft5  <-- 450.0
       0     2479        M                                           #; (f:fpu) fs4  <-- 74.0
       0     2480        M                                           #; (f:fpu) fs2  <-- 141.0
       0     2481        M                                           #; (f:fpu) ft6  <-- 142.0
       0     2487        M 0x800008f0 fadd.d  ft4, ft5, ft4          #; ft5  = 450.0, ft4  = 404.0
       0     2488        M 0x800008f4 fadd.d  ft5, ft11, ft0         #; ft11 = 69.0, ft0  = 76.0
       0     2489        M 0x800008f8 fadd.d  ft6, ft6, fs2          #; ft6  = 142.0, fs2  = 141.0
       0     2490        M                                           #; (f:fpu) ft4  <-- 854.0
       0     2491        M                                           #; (f:fpu) ft5  <-- 145.0
       0     2492        M 0x800008fc fadd.d  ft5, ft0, ft5          #; ft0  = 77.0, ft5  = 145.0, (f:fpu) ft6  <-- 283.0
       0     2495        M                                           #; (f:fpu) ft5  <-- 222.0
       0     2499        M 0x80000900 fsgnj.d fs6, ft0, ft0          #; ft0  = 78.0, ft0  = 78.0
       0     2500        M 0x80000904 fsgnj.d fs8, ft0, ft0          #; ft0  = 79.0, ft0  = 79.0, (f:fpu) fs6  <-- 78.0
       0     2501        M 0x80000908 fadd.d  ft5, ft6, ft5          #; ft6  = 283.0, ft5  = 222.0, (f:fpu) fs8  <-- 79.0
       0     2502        M 0x8000090c fadd.d  fa1, fa4, ft0          #; fa4  = 72.0, ft0  = 80.0
       0     2504        M                                           #; (f:fpu) ft5  <-- 505.0
       0     2505        M                                           #; (f:fpu) fa1  <-- 152.0
       0     2511        M 0x80000910 fsgnj.d fa4, ft0, ft0          #; ft0  = 81.0, ft0  = 81.0
       0     2512        M 0x80000914 fadd.d  ft6, fs4, ft0          #; fs4  = 74.0, ft0  = 82.0, (f:fpu) fa4  <-- 81.0
       0     2513        M 0x80000918 fadd.d  fa1, ft0, fa1          #; ft0  = 83.0, fa1  = 152.0
       0     2514        M 0x8000091c fsgnj.d fs0, ft0, ft0          #; ft0  = 84.0, ft0  = 84.0
       0     2515        M                                           #; (f:fpu) fs0  <-- 84.0
       0     2516        M                                           #; (f:fpu) ft6  <-- 156.0
       0     2517        M                                           #; (f:fpu) fa1  <-- 235.0
       0     2523        M 0x80000920 fadd.d  ft6, ft6, ft0          #; ft6  = 156.0, ft0  = 85.0
       0     2524        M 0x80000924 fadd.d  fs9, fs8, ft0          #; fs8  = 79.0, ft0  = 86.0
       0     2526        M                                           #; (f:fpu) ft6  <-- 241.0
       0     2527        M 0x80000928 fadd.d  ft6, ft6, fa1          #; ft6  = 241.0, fa1  = 235.0, (f:fpu) fs9  <-- 165.0
       0     2528        M 0x8000092c fadd.d  fs10, fa4, ft0         #; fa4  = 81.0, ft0  = 87.0
       0     2530        M                                           #; (f:fpu) ft6  <-- 476.0
       0     2531        M                                           #; (f:fpu) fs10 <-- 168.0
       0     2535        M 0x80000930 fsgnj.d fa4, ft0, ft0          #; ft0  = 88.0, ft0  = 88.0
       0     2536        M 0x80000934 fsgnj.d fa7, ft0, ft0          #; ft0  = 89.0, ft0  = 89.0, (f:fpu) fa4  <-- 88.0
       0     2537        M 0x80000938 fadd.d  ft5, ft5, ft6          #; ft5  = 505.0, ft6  = 476.0, (f:fpu) fa7  <-- 89.0
       0     2540        M                                           #; (f:fpu) ft5  <-- 981.0
       0     2541        M 0x8000093c fadd.d  ft4, ft5, ft4          #; ft5  = 981.0, ft4  = 854.0
       0     2544        M                                           #; (f:fpu) ft4  <-- 1835.0
       0     2547        M 0x80000940 fadd.d  ft5, fs6, ft0          #; fs6  = 78.0, ft0  = 90.0
       0     2548        M 0x80000944 fadd.d  ft6, ft0, fs10         #; ft0  = 91.0, fs10 = 168.0
       0     2549        M 0x80000948 fadd.d  fa6, fs0, ft0          #; fs0  = 84.0, ft0  = 92.0
       0     2550        M 0x8000094c fsgnj.d ft8, ft0, ft0          #; ft0  = 93.0, ft0  = 93.0, (f:fpu) ft5  <-- 168.0
       0     2551        M                                           #; (f:fpu) ft6  <-- 259.0
       0     2552        M                                           #; (f:fpu) ft8  <-- 93.0
       0     2553        M                                           #; (f:fpu) fa6  <-- 176.0
       0     2559        M 0x80000950 fadd.d  ft5, ft5, fs9          #; ft5  = 168.0, fs9  = 165.0
       0     2562        M                                           #; (f:fpu) ft5  <-- 333.0
       0     2563        M 0x80000954 fadd.d  ft5, ft5, ft6          #; ft5  = 333.0, ft6  = 259.0
       0     2564        M 0x80000958 fadd.d  fa2, fa4, ft0          #; fa4  = 88.0, ft0  = 94.0
       0     2565        M 0x8000095c fsgnj.d fa4, ft0, ft0          #; ft0  = 95.0, ft0  = 95.0
       0     2566        M                                           #; (f:fpu) ft5  <-- 592.0
       0     2567        M                                           #; (f:fpu) fa4  <-- 95.0
       0     2568        M                                           #; (f:fpu) fa2  <-- 182.0
       0     2571        M 0x80000960 fadd.d  ft6, fa2, fa6          #; fa2  = 182.0, fa6  = 176.0
       0     2572        M 0x80000964 fadd.d  ft7, fa7, ft0          #; fa7  = 89.0, ft0  = 96.0
       0     2573        M 0x80000968 fsgnj.d fs0, ft0, ft0          #; ft0  = 97.0, ft0  = 97.0
       0     2574        M                                           #; (f:fpu) ft6  <-- 358.0
       0     2575        M                                           #; (f:fpu) fs0  <-- 97.0
       0     2576        M                                           #; (f:fpu) ft7  <-- 185.0
       0     2577        M 0x8000096c fadd.d  ft7, ft7, ft0          #; ft7  = 185.0, ft0  = 98.0
       0     2580        M                                           #; (f:fpu) ft7  <-- 283.0
       0     2583        M 0x80000970 fadd.d  ft10, fa4, ft0         #; fa4  = 95.0, ft0  = 99.0
       0     2584        M 0x80000974 fsgnj.d fa1, ft0, ft0          #; ft0  = 100.0, ft0  = 100.0
       0     2585        M 0x80000978 fsgnj.d fa2, ft0, ft0          #; ft0  = 101.0, ft0  = 101.0, (f:fpu) fa1  <-- 100.0
       0     2586        M 0x8000097c fsgnj.d fa5, ft0, ft0          #; ft0  = 102.0, ft0  = 102.0, (f:fpu) fa2  <-- 101.0
       0     2587        M                                           #; (f:fpu) ft10 <-- 194.0
       0     2588        M                                           #; (f:fpu) fa5  <-- 102.0
       0     2595        M 0x80000980 fadd.d  ft6, ft7, ft6          #; ft7  = 283.0, ft6  = 358.0
       0     2598        M                                           #; (f:fpu) ft6  <-- 641.0
       0     2599        M 0x80000984 fadd.d  ft5, ft5, ft6          #; ft5  = 592.0, ft6  = 641.0
       0     2600        M 0x80000988 fadd.d  ft6, ft8, ft0          #; ft8  = 93.0, ft0  = 103.0
       0     2602        M                                           #; (f:fpu) ft5  <-- 1233.0
       0     2603        M                                           #; (f:fpu) ft6  <-- 196.0
       0     2604        M 0x8000098c fadd.d  ft6, ft10, ft6         #; ft10 = 194.0, ft6  = 196.0
       0     2607        M 0x80000990 fadd.d  ft11, fs0, ft0         #; fs0  = 97.0, ft0  = 104.0, (f:fpu) ft6  <-- 390.0
       0     2608        M 0x80000994 fsgnj.d fs0, ft0, ft0          #; ft0  = 105.0, ft0  = 105.0
       0     2609        M 0x80000998 fsgnj.d fs1, ft0, ft0          #; ft0  = 106.0, ft0  = 106.0, (f:fpu) fs0  <-- 105.0
       0     2610        M                                           #; (f:fpu) fs1  <-- 106.0
       0     2611        M                                           #; (f:fpu) ft11 <-- 201.0
       0     2612        M 0x8000099c fadd.d  ft7, ft11, ft0         #; ft11 = 201.0, ft0  = 107.0
       0     2615        M                                           #; (f:fpu) ft7  <-- 308.0
       0     2619        M 0x800009a8 scfgw   a2, a4                 #; a2  = 8, a4  = 64
                         M 0x800009a0 fsgnj.d fa4, ft0, ft0          #; ft0  = 108.0, ft0  = 108.0
       0     2620        M 0x800009ac li      a2, -760               #; (wrb) a2  <-- -760
                         M 0x800009a4 csrrci  a5, ssr, 1             #; (f:fpu) fa4  <-- 108.0
       0     2629        M 0x800009b0 li      a4, 96                 #; (wrb) a4  <-- 96
       0     2631        M 0x800009b8 li      a5, 192                #; (wrb) a5  <-- 192
       0     2632        M 0x800009b4 fadd.d  fa1, fa1, fa2          #; fa1  = 100.0, fa2  = 101.0
       0     2634        M 0x800009bc fadd.d  ft6, ft7, ft6          #; ft7  = 308.0, ft6  = 390.0
       0     2635        M                                           #; (f:fpu) fa1  <-- 201.0
       0     2637        M                                           #; (f:fpu) ft6  <-- 698.0
       0     2642        M 0x800009c4 scfgw   a3, a5                 #; a3  = 96, a5  = 192
       0     2643        M 0x800009c8 li      a5, 224                #; (wrb) a5  <-- 224
                         M 0x800009c0 fadd.d  fa1, fa1, fa5          #; fa1  = 201.0, fa5  = 102.0
       0     2644        M 0x800009cc li      a3, 32                 #; (wrb) a3  <-- 32
       0     2646        M                                           #; (f:fpu) fa1  <-- 303.0
       0     2653        M 0x800009d0 scfgw   a1, a4                 #; a1  = 11, a4  = 96
       0     2655        M 0x800009d8 scfgw   a2, a5                 #; a2  = -760, a5  = 224
       0     2656        M 0x800009dc scfgw   zero, a3               #; a3  = 32, (acc) ra  <-- 0x00d020ab
                         M 0x800009d4 fadd.d  ft7, fs0, fs1          #; fs0  = 105.0, fs1  = 106.0
       0     2659        M                                           #; (f:fpu) ft7  <-- 211.0
       0     2665        M 0x800009e0 scfgwi  a0, 800                #; a0  = 0x00100000
       0     2667        M 0x800009e4 csrrsi  a4, ssr, 1             #; 
       0     2668        M                                           #; (acc) s4  <-- 0x22000a53
       0     2669        M 0x800009e8 fsgnj.d fs2, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     2670        M 0x800009ec fsgnj.d fs4, ft0, ft0          #; ft0  = 13.0, ft0  = 13.0, (f:fpu) fs2  <-- 1.0
       0     2671        M                                           #; (f:fpu) fs4  <-- 13.0
       0     2679        M 0x800009f0 fadd.d  ft7, fa4, ft7          #; fa4  = 108.0, ft7  = 211.0
       0     2680        M 0x800009f4 fsgnj.d fs5, ft0, ft0          #; ft0  = 25.0, ft0  = 25.0
       0     2681        M 0x800009f8 fsgnj.d fa5, ft0, ft0          #; ft0  = 37.0, ft0  = 37.0, (f:fpu) fs5  <-- 25.0
       0     2682        M 0x800009fc fsgnj.d fs1, ft0, ft0          #; ft0  = 49.0, ft0  = 49.0, (f:fpu) fa5  <-- 37.0
       0     2683        M                                           #; (f:fpu) ft7  <-- 319.0
       0     2684        M                                           #; (f:fpu) fs1  <-- 49.0
       0     2691        M 0x80000a00 fsgnj.d fs11, ft0, ft0         #; ft0  = 61.0, ft0  = 61.0
       0     2692        M 0x80000a04 fadd.d  ft7, fa1, ft7          #; fa1  = 303.0, ft7  = 319.0, (f:fpu) fs11 <-- 61.0
       0     2695        M                                           #; (f:fpu) ft7  <-- 622.0
       0     2696        M 0x80000a08 fadd.d  ft6, ft7, ft6          #; ft7  = 622.0, ft6  = 698.0
       0     2699        M                                           #; (f:fpu) ft6  <-- 1320.0
       0     2700        M 0x80000a0c fadd.d  ft5, ft5, ft6          #; ft5  = 1233.0, ft6  = 1320.0
       0     2703        M 0x80000a10 fadd.d  fs6, fs4, ft0          #; fs4  = 13.0, ft0  = 73.0, (f:fpu) ft5  <-- 2553.0
       0     2704        M 0x80000a14 fadd.d  ft4, ft5, ft4          #; ft5  = 2553.0, ft4  = 1835.0
       0     2705        M 0x80000a18 fadd.d  ft5, ft0, fs2          #; ft0  = 85.0, fs2  = 1.0
       0     2706        M 0x80000a1c fadd.d  fs9, fa5, ft0          #; fa5  = 37.0, ft0  = 97.0, (f:fpu) fs6  <-- 86.0
       0     2707        M                                           #; (f:fpu) ft4  <-- 4388.0
       0     2708        M                                           #; (f:fpu) ft5  <-- 86.0
       0     2709        M                                           #; (f:fpu) fs9  <-- 134.0
       0     2715        M 0x80000a20 fadd.d  ft6, fs1, ft0          #; fs1  = 49.0, ft0  = 2.0
       0     2716        M 0x80000a24 fadd.d  fa5, fs11, ft0         #; fs11 = 61.0, ft0  = 14.0
       0     2717        M 0x80000a28 fsgnj.d fa6, ft0, ft0          #; ft0  = 26.0, ft0  = 26.0
       0     2718        M 0x80000a2c fadd.d  ft3, ft3, ft4          #; ft3  = 1498.0, ft4  = 4388.0, (f:fpu) ft6  <-- 51.0
       0     2719        M                                           #; (f:fpu) fa6  <-- 26.0
       0     2720        M                                           #; (f:fpu) fa5  <-- 75.0
       0     2721        M                                           #; (f:fpu) ft3  <-- 5886.0
       0     2727        M 0x80000a30 fadd.d  ft4, fs5, ft0          #; fs5  = 25.0, ft0  = 38.0
       0     2728        M 0x80000a34 fadd.d  ft5, ft5, fs6          #; ft5  = 86.0, fs6  = 86.0
       0     2730        M                                           #; (f:fpu) ft4  <-- 63.0
       0     2731        M 0x80000a38 fadd.d  ft4, ft0, ft4          #; ft0  = 50.0, ft4  = 63.0, (f:fpu) ft5  <-- 172.0
       0     2734        M                                           #; (f:fpu) ft4  <-- 113.0
       0     2735        M 0x80000a3c fadd.d  ft4, ft5, ft4          #; ft5  = 172.0, ft4  = 113.0
       0     2738        M                                           #; (f:fpu) ft4  <-- 285.0
       0     2739        M 0x80000a40 fadd.d  ft5, ft6, fs9          #; ft6  = 51.0, fs9  = 134.0
       0     2740        M 0x80000a44 fadd.d  ft6, fa5, ft0          #; fa5  = 75.0, ft0  = 62.0
       0     2741        M 0x80000a48 fsgnj.d fa5, ft0, ft0          #; ft0  = 74.0, ft0  = 74.0
       0     2742        M                                           #; (f:fpu) ft5  <-- 185.0
       0     2743        M 0x80000a4c fsgnj.d ft8, ft0, ft0          #; ft0  = 86.0, ft0  = 86.0, (f:fpu) fa5  <-- 74.0
       0     2744        M                                           #; (f:fpu) ft6  <-- 137.0
       0     2745        M                                           #; (f:fpu) ft8  <-- 86.0
       0     2751        M 0x80000a50 fsgnj.d fa1, ft0, ft0          #; ft0  = 98.0, ft0  = 98.0
       0     2752        M 0x80000a54 fadd.d  ft5, ft6, ft5          #; ft6  = 137.0, ft5  = 185.0, (f:fpu) fa1  <-- 98.0
       0     2753        M 0x80000a58 fadd.d  ft6, fa6, ft0          #; fa6  = 26.0, ft0  = 3.0
       0     2755        M                                           #; (f:fpu) ft5  <-- 322.0
       0     2756        M 0x80000a5c fadd.d  ft4, ft4, ft5          #; ft4  = 285.0, ft5  = 322.0, (f:fpu) ft6  <-- 29.0
       0     2759        M                                           #; (f:fpu) ft4  <-- 607.0
       0     2763        M 0x80000a60 fadd.d  ft9, fa5, ft0          #; fa5  = 74.0, ft0  = 15.0
       0     2764        M 0x80000a64 fadd.d  ft5, ft8, ft0          #; ft8  = 86.0, ft0  = 27.0
       0     2765        M 0x80000a68 fsgnj.d ft11, ft0, ft0         #; ft0  = 39.0, ft0  = 39.0
       0     2766        M 0x80000a6c fadd.d  fa1, fa1, ft0          #; fa1  = 98.0, ft0  = 51.0, (f:fpu) ft9  <-- 89.0
       0     2767        M                                           #; (f:fpu) ft11 <-- 39.0
       0     2768        M                                           #; (f:fpu) ft5  <-- 113.0
       0     2769        M                                           #; (f:fpu) fa1  <-- 149.0
       0     2775        M 0x80000a70 fadd.d  ft5, ft5, ft0          #; ft5  = 113.0, ft0  = 63.0
       0     2776        M 0x80000a74 fadd.d  ft6, ft9, ft6          #; ft9  = 89.0, ft6  = 29.0
       0     2778        M                                           #; (f:fpu) ft5  <-- 176.0
       0     2779        M                                           #; (f:fpu) ft6  <-- 118.0
       0     2780        M 0x80000a78 fadd.d  ft5, ft5, ft6          #; ft5  = 176.0, ft6  = 118.0
       0     2781        M 0x80000a7c fadd.d  ft6, ft11, ft0         #; ft11 = 39.0, ft0  = 75.0
       0     2783        M                                           #; (f:fpu) ft5  <-- 294.0
       0     2784        M                                           #; (f:fpu) ft6  <-- 114.0
       0     2787        M 0x80000a80 fadd.d  fa1, fa1, ft0          #; fa1  = 149.0, ft0  = 87.0
       0     2788        M 0x80000a84 fadd.d  ft6, ft0, ft6          #; ft0  = 99.0, ft6  = 114.0
       0     2789        M 0x80000a88 fsgnj.d fs1, ft0, ft0          #; ft0  = 4.0, ft0  = 4.0
       0     2790        M                                           #; (f:fpu) fa1  <-- 236.0
       0     2791        M 0x80000a8c fsgnj.d fa2, ft0, ft0          #; ft0  = 16.0, ft0  = 16.0, (f:fpu) fs1  <-- 4.0
       0     2792        M                                           #; (f:fpu) ft6  <-- 213.0
       0     2793        M                                           #; (f:fpu) fa2  <-- 16.0
       0     2799        M 0x80000a90 fsgnj.d fs3, ft0, ft0          #; ft0  = 28.0, ft0  = 28.0
       0     2800        M 0x80000a94 fsgnj.d fa5, ft0, ft0          #; ft0  = 40.0, ft0  = 40.0, (f:fpu) fs3  <-- 28.0
       0     2801        M 0x80000a98 fadd.d  ft6, fa1, ft6          #; fa1  = 236.0, ft6  = 213.0, (f:fpu) fa5  <-- 40.0
       0     2804        M                                           #; (f:fpu) ft6  <-- 449.0
       0     2805        M 0x80000a9c fadd.d  ft5, ft6, ft5          #; ft6  = 449.0, ft5  = 294.0
       0     2808        M                                           #; (f:fpu) ft5  <-- 743.0
       0     2811        M 0x80000aa0 fadd.d  ft4, ft4, ft5          #; ft4  = 607.0, ft5  = 743.0
       0     2812        M 0x80000aa4 fadd.d  ft6, fs1, ft0          #; fs1  = 4.0, ft0  = 52.0
       0     2813        M 0x80000aa8 fsgnj.d fs1, ft0, ft0          #; ft0  = 64.0, ft0  = 64.0
       0     2814        M 0x80000aac fadd.d  ft5, fs3, ft0          #; fs3  = 28.0, ft0  = 76.0, (f:fpu) ft4  <-- 1350.0
       0     2815        M                                           #; (f:fpu) fs1  <-- 64.0
       0     2816        M                                           #; (f:fpu) ft6  <-- 56.0
       0     2817        M                                           #; (f:fpu) ft5  <-- 104.0
       0     2823        M 0x80000ab0 fadd.d  fs6, fa5, ft0          #; fa5  = 40.0, ft0  = 88.0
       0     2824        M 0x80000ab4 fadd.d  fs4, fa2, ft0          #; fa2  = 16.0, ft0  = 100.0
       0     2825        M 0x80000ab8 fadd.d  ft5, ft5, ft0          #; ft5  = 104.0, ft0  = 5.0
       0     2826        M 0x80000abc fsgnj.d fa4, ft0, ft0          #; ft0  = 17.0, ft0  = 17.0, (f:fpu) fs6  <-- 128.0
       0     2827        M                                           #; (f:fpu) fs4  <-- 116.0
       0     2828        M                                           #; (f:fpu) fa4  <-- 17.0
       0     2829        M                                           #; (f:fpu) ft5  <-- 109.0
       0     2835        M 0x80000ac0 fsgnj.d fs9, ft0, ft0          #; ft0  = 29.0, ft0  = 29.0
       0     2836        M 0x80000ac4 fadd.d  ft6, fs4, ft6          #; fs4  = 116.0, ft6  = 56.0, (f:fpu) fs9  <-- 29.0
       0     2839        M                                           #; (f:fpu) ft6  <-- 172.0
       0     2840        M 0x80000ac8 fadd.d  ft5, ft5, ft6          #; ft5  = 109.0, ft6  = 172.0
       0     2841        M 0x80000acc fadd.d  ft7, fs1, ft0          #; fs1  = 64.0, ft0  = 41.0
       0     2843        M                                           #; (f:fpu) ft5  <-- 281.0
       0     2844        M                                           #; (f:fpu) ft7  <-- 105.0
       0     2847        M 0x80000ad0 fsgnj.d fa3, ft0, ft0          #; ft0  = 53.0, ft0  = 53.0
       0     2848        M 0x80000ad4 fadd.d  fs8, fa4, ft0          #; fa4  = 17.0, ft0  = 65.0, (f:fpu) fa3  <-- 53.0
       0     2849        M 0x80000ad8 fadd.d  ft6, fs6, ft7          #; fs6  = 128.0, ft7  = 105.0
       0     2850        M 0x80000adc fsgnj.d fs10, ft0, ft0         #; ft0  = 77.0, ft0  = 77.0
       0     2851        M                                           #; (f:fpu) fs10 <-- 77.0
       0     2852        M                                           #; (f:fpu) fs8  <-- 82.0
       0     2853        M                                           #; (f:fpu) ft6  <-- 233.0
       0     2859        M 0x80000ae0 fadd.d  ft7, ft0, fs8          #; ft0  = 89.0, fs8  = 82.0
       0     2862        M                                           #; (f:fpu) ft7  <-- 171.0
       0     2863        M 0x80000ae4 fadd.d  ft6, ft6, ft7          #; ft6  = 233.0, ft7  = 171.0
       0     2864        M 0x80000ae8 fadd.d  ft7, fs9, ft0          #; fs9  = 29.0, ft0  = 101.0
       0     2865        M 0x80000aec fsgnj.d fa2, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0
       0     2866        M                                           #; (f:fpu) ft6  <-- 404.0
       0     2867        M                                           #; (f:fpu) fa2  <-- 6.0
       0     2868        M                                           #; (f:fpu) ft7  <-- 130.0
       0     2871        M 0x80000af0 fadd.d  ft5, ft6, ft5          #; ft6  = 404.0, ft5  = 281.0
       0     2872        M 0x80000af4 fadd.d  fa5, fa3, ft0          #; fa3  = 53.0, ft0  = 18.0
       0     2873        M 0x80000af8 fadd.d  ft6, fs10, ft0         #; fs10 = 77.0, ft0  = 30.0
       0     2874        M                                           #; (f:fpu) ft5  <-- 685.0
       0     2875        M                                           #; (f:fpu) fa5  <-- 71.0
       0     2876        M 0x80000afc fadd.d  ft7, ft7, fa5          #; ft7  = 130.0, fa5  = 71.0, (f:fpu) ft6  <-- 107.0
       0     2879        M                                           #; (f:fpu) ft7  <-- 201.0
       0     2883        M 0x80000b00 fsgnj.d fs11, ft0, ft0         #; ft0  = 42.0, ft0  = 42.0
       0     2884        M 0x80000b04 fadd.d  ft6, ft0, ft6          #; ft0  = 54.0, ft6  = 107.0, (f:fpu) fs11 <-- 42.0
       0     2885        M 0x80000b08 fadd.d  fa2, fa2, ft0          #; fa2  = 6.0, ft0  = 66.0
       0     2887        M                                           #; (f:fpu) ft6  <-- 161.0
       0     2888        M 0x80000b0c fadd.d  ft6, ft7, ft6          #; ft7  = 201.0, ft6  = 161.0, (f:fpu) fa2  <-- 72.0
       0     2891        M                                           #; (f:fpu) ft6  <-- 362.0
       0     2895        M 0x80000b10 fadd.d  ft7, fs11, ft0         #; fs11 = 42.0, ft0  = 78.0
       0     2896        M 0x80000b14 fadd.d  fa2, ft0, fa2          #; ft0  = 90.0, fa2  = 72.0
       0     2897        M 0x80000b18 fsgnj.d fa5, ft0, ft0          #; ft0  = 102.0, ft0  = 102.0
       0     2898        M                                           #; (f:fpu) ft7  <-- 120.0
       0     2899        M 0x80000b1c fsgnj.d fa3, ft0, ft0          #; ft0  = 7.0, ft0  = 7.0, (f:fpu) fa5  <-- 102.0
       0     2900        M                                           #; (f:fpu) fa2  <-- 162.0
       0     2901        M                                           #; (f:fpu) fa3  <-- 7.0
       0     2907        M 0x80000b20 fsgnj.d fa7, ft0, ft0          #; ft0  = 19.0, ft0  = 19.0
       0     2908        M 0x80000b24 fadd.d  ft7, ft7, ft0          #; ft7  = 120.0, ft0  = 31.0, (f:fpu) fa7  <-- 19.0
       0     2911        M                                           #; (f:fpu) ft7  <-- 151.0
       0     2912        M 0x80000b28 fadd.d  ft7, ft7, fa2          #; ft7  = 151.0, fa2  = 162.0
       0     2915        M                                           #; (f:fpu) ft7  <-- 313.0
       0     2916        M 0x80000b2c fadd.d  ft6, ft6, ft7          #; ft6  = 362.0, ft7  = 313.0
       0     2919        M 0x80000b30 fadd.d  ft8, fa3, ft0          #; fa3  = 7.0, ft0  = 43.0, (f:fpu) ft6  <-- 675.0
       0     2920        M 0x80000b34 fadd.d  ft5, ft6, ft5          #; ft6  = 675.0, ft5  = 685.0
       0     2921        M 0x80000b38 fadd.d  ft6, fa5, ft0          #; fa5  = 102.0, ft0  = 55.0
       0     2922        M 0x80000b3c fsgnj.d fs0, ft0, ft0          #; ft0  = 67.0, ft0  = 67.0, (f:fpu) ft8  <-- 50.0
       0     2923        M                                           #; (f:fpu) ft5  <-- 1360.0
       0     2924        M                                           #; (f:fpu) fs0  <-- 67.0
       0     2925        M                                           #; (f:fpu) ft6  <-- 157.0
       0     2931        M 0x80000b40 fsgnj.d fa4, ft0, ft0          #; ft0  = 79.0, ft0  = 79.0
       0     2932        M 0x80000b44 fadd.d  ft4, ft4, ft5          #; ft4  = 1350.0, ft5  = 1360.0, (f:fpu) fa4  <-- 79.0
       0     2933        M 0x80000b48 fadd.d  ft5, fa7, ft0          #; fa7  = 19.0, ft0  = 91.0
       0     2934        M 0x80000b4c fadd.d  ft6, ft8, ft6          #; ft8  = 50.0, ft6  = 157.0
       0     2935        M                                           #; (f:fpu) ft4  <-- 2710.0
       0     2936        M                                           #; (f:fpu) ft5  <-- 110.0
       0     2937        M                                           #; (f:fpu) ft6  <-- 207.0
       0     2943        M 0x80000b50 fadd.d  ft5, ft5, ft0          #; ft5  = 110.0, ft0  = 103.0
       0     2944        M 0x80000b54 fadd.d  ft10, fs0, ft0         #; fs0  = 67.0, ft0  = 8.0
       0     2945        M 0x80000b58 fsgnj.d fa5, ft0, ft0          #; ft0  = 20.0, ft0  = 20.0
       0     2946        M                                           #; (f:fpu) ft5  <-- 213.0
       0     2947        M 0x80000b5c fsgnj.d fs3, ft0, ft0          #; ft0  = 32.0, ft0  = 32.0, (f:fpu) fa5  <-- 20.0
       0     2948        M                                           #; (f:fpu) ft10 <-- 75.0
       0     2949        M                                           #; (f:fpu) fs3  <-- 32.0
       0     2955        M 0x80000b60 fadd.d  ft7, fa4, ft0          #; fa4  = 79.0, ft0  = 44.0
       0     2956        M 0x80000b64 fsgnj.d fa4, ft0, ft0          #; ft0  = 56.0, ft0  = 56.0
       0     2957        M 0x80000b68 fadd.d  ft5, ft5, ft6          #; ft5  = 213.0, ft6  = 207.0, (f:fpu) fa4  <-- 56.0
       0     2958        M                                           #; (f:fpu) ft7  <-- 123.0
       0     2959        M 0x80000b6c fadd.d  ft6, ft10, ft7         #; ft10 = 75.0, ft7  = 123.0
       0     2960        M                                           #; (f:fpu) ft5  <-- 420.0
       0     2962        M                                           #; (f:fpu) ft6  <-- 198.0
       0     2967        M 0x80000b70 fadd.d  fs2, fa5, ft0          #; fa5  = 20.0, ft0  = 68.0
       0     2968        M 0x80000b74 fsgnj.d fs4, ft0, ft0          #; ft0  = 80.0, ft0  = 80.0
       0     2969        M                                           #; (f:fpu) fs4  <-- 80.0
       0     2970        M                                           #; (f:fpu) fs2  <-- 88.0
       0     2971        M 0x80000b78 fadd.d  ft7, ft0, fs2          #; ft0  = 92.0, fs2  = 88.0
       0     2974        M                                           #; (f:fpu) ft7  <-- 180.0
       0     2975        M 0x80000b7c fadd.d  ft6, ft6, ft7          #; ft6  = 198.0, ft7  = 180.0
       0     2978        M                                           #; (f:fpu) ft6  <-- 378.0
       0     2979        M 0x80000b80 fadd.d  ft7, fs3, ft0          #; fs3  = 32.0, ft0  = 104.0
       0     2980        M 0x80000b84 fadd.d  ft5, ft6, ft5          #; ft6  = 378.0, ft5  = 420.0
       0     2981        M 0x80000b88 fadd.d  fs0, fa4, ft0          #; fa4  = 56.0, ft0  = 9.0
       0     2982        M 0x80000b8c fsgnj.d fa2, ft0, ft0          #; ft0  = 21.0, ft0  = 21.0, (f:fpu) ft7  <-- 136.0
       0     2983        M                                           #; (f:fpu) ft5  <-- 798.0
       0     2984        M                                           #; (f:fpu) fa2  <-- 21.0
       0     2985        M                                           #; (f:fpu) fs0  <-- 65.0
       0     2991        M 0x80000b90 fadd.d  ft6, fs4, ft0          #; fs4  = 80.0, ft0  = 33.0
       0     2992        M 0x80000b94 fadd.d  ft7, ft7, fs0          #; ft7  = 136.0, fs0  = 65.0
       0     2993        M 0x80000b98 fsgnj.d fs5, ft0, ft0          #; ft0  = 45.0, ft0  = 45.0
       0     2994        M                                           #; (f:fpu) ft6  <-- 113.0
       0     2995        M 0x80000b9c fadd.d  ft6, ft0, ft6          #; ft0  = 57.0, ft6  = 113.0, (f:fpu) fs5  <-- 45.0
       0     2996        M                                           #; (f:fpu) ft7  <-- 201.0
       0     2998        M                                           #; (f:fpu) ft6  <-- 170.0
       0     3003        M 0x80000ba0 fadd.d  fa2, fa2, ft0          #; fa2  = 21.0, ft0  = 69.0
       0     3004        M 0x80000ba4 fsgnj.d fs6, ft0, ft0          #; ft0  = 81.0, ft0  = 81.0
       0     3005        M 0x80000ba8 fadd.d  ft6, ft7, ft6          #; ft7  = 201.0, ft6  = 170.0, (f:fpu) fs6  <-- 81.0
       0     3006        M 0x80000bac fadd.d  ft7, fs5, ft0          #; fs5  = 45.0, ft0  = 93.0, (f:fpu) fa2  <-- 90.0
       0     3008        M                                           #; (f:fpu) ft6  <-- 371.0
       0     3009        M                                           #; (f:fpu) ft7  <-- 138.0
       0     3015        M 0x80000bb0 fadd.d  fa2, ft0, fa2          #; ft0  = 105.0, fa2  = 90.0
       0     3016        M 0x80000bb4 fsgnj.d fs0, ft0, ft0          #; ft0  = 10.0, ft0  = 10.0
       0     3017        M 0x80000bb8 fsgnj.d fa4, ft0, ft0          #; ft0  = 22.0, ft0  = 22.0, (f:fpu) fs0  <-- 10.0
       0     3018        M 0x80000bbc fadd.d  ft7, ft7, ft0          #; ft7  = 138.0, ft0  = 34.0, (f:fpu) fa4  <-- 22.0
       0     3019        M                                           #; (f:fpu) fa2  <-- 195.0
       0     3021        M                                           #; (f:fpu) ft7  <-- 172.0
       0     3027        M 0x80000bc0 fadd.d  fs8, fs0, ft0          #; fs0  = 10.0, ft0  = 46.0
       0     3028        M 0x80000bc4 fsgnj.d fs1, ft0, ft0          #; ft0  = 58.0, ft0  = 58.0
       0     3029        M 0x80000bc8 fadd.d  ft7, ft7, fa2          #; ft7  = 172.0, fa2  = 195.0, (f:fpu) fs1  <-- 58.0
       0     3030        M                                           #; (f:fpu) fs8  <-- 56.0
       0     3032        M                                           #; (f:fpu) ft7  <-- 367.0
       0     3033        M 0x80000bcc fadd.d  ft6, ft6, ft7          #; ft6  = 371.0, ft7  = 367.0
       0     3036        M                                           #; (f:fpu) ft6  <-- 738.0
       0     3039        M 0x80000bd0 fadd.d  ft5, ft6, ft5          #; ft6  = 738.0, ft5  = 798.0
       0     3040        M 0x80000bd4 fadd.d  ft6, fs6, ft0          #; fs6  = 81.0, ft0  = 70.0
       0     3041        M 0x80000bd8 fadd.d  fs9, fa4, ft0          #; fa4  = 22.0, ft0  = 82.0
       0     3042        M 0x80000bdc fsgnj.d fa3, ft0, ft0          #; ft0  = 94.0, ft0  = 94.0, (f:fpu) ft5  <-- 1536.0
       0     3043        M                                           #; (f:fpu) ft6  <-- 151.0
       0     3044        M                                           #; (f:fpu) fa3  <-- 94.0
       0     3045        M                                           #; (f:fpu) fs9  <-- 104.0
       0     3051        M 0x80000be0 fadd.d  ft6, ft6, fs8          #; ft6  = 151.0, fs8  = 56.0
       0     3052        M 0x80000be4 fadd.d  ft7, ft0, fs9          #; ft0  = 106.0, fs9  = 104.0
       0     3053        M 0x80000be8 fsgnj.d fs0, ft0, ft0          #; ft0  = 11.0, ft0  = 11.0
       0     3054        M                                           #; (f:fpu) ft6  <-- 207.0
       0     3055        M                                           #; (f:fpu) fs0  <-- 11.0
       0     3056        M                                           #; (f:fpu) ft7  <-- 210.0
       0     3057        M 0x80000bec fadd.d  ft6, ft6, ft7          #; ft6  = 207.0, ft7  = 210.0
       0     3060        M                                           #; (f:fpu) ft6  <-- 417.0
       0     3063        M 0x80000bf0 fadd.d  fs10, fs1, ft0         #; fs1  = 58.0, ft0  = 23.0
       0     3064        M 0x80000bf4 fadd.d  fa3, fa3, ft0          #; fa3  = 94.0, ft0  = 35.0
       0     3065        M 0x80000bf8 fsgnj.d fs11, ft0, ft0         #; ft0  = 47.0, ft0  = 47.0
       0     3066        M                                           #; (f:fpu) fs10 <-- 81.0
       0     3067        M                                           #; (f:fpu) fs11 <-- 47.0
       0     3068        M                                           #; (f:fpu) fa3  <-- 129.0
       0     3069        M 0x80000bfc fadd.d  ft7, fa3, fs10         #; fa3  = 129.0, fs10 = 81.0
       0     3072        M                                           #; (f:fpu) ft7  <-- 210.0
       0     3075        M 0x80000c00 fadd.d  fa0, fs0, ft0          #; fs0  = 11.0, ft0  = 59.0
       0     3078        M                                           #; (f:fpu) fa0  <-- 70.0
       0     3079        M 0x80000c04 fadd.d  fa0, fa0, ft0          #; fa0  = 70.0, ft0  = 71.0
       0     3082        M                                           #; (f:fpu) fa0  <-- 141.0
       0     3083        M 0x80000c08 fadd.d  ft7, fa0, ft7          #; fa0  = 141.0, ft7  = 210.0
       0     3084        M 0x80000c0c fsgnj.d fa1, ft0, ft0          #; ft0  = 83.0, ft0  = 83.0
       0     3085        M                                           #; (f:fpu) fa1  <-- 83.0
       0     3086        M                                           #; (f:fpu) ft7  <-- 351.0
       0     3087        M 0x80000c10 fsgnj.d fs1, ft0, ft0          #; ft0  = 95.0, ft0  = 95.0
       0     3088        M 0x80000c14 fadd.d  ft6, ft6, ft7          #; ft6  = 417.0, ft7  = 351.0, (f:fpu) fs1  <-- 95.0
       0     3089        M 0x80000c18 fadd.d  fs1, fs1, ft0          #; fs1  = 95.0, ft0  = 107.0
       0     3090        M 0x80000c1c fadd.d  ft7, fs11, ft0         #; fs11 = 47.0, ft0  = 12.0
       0     3091        M                                           #; (f:fpu) ft6  <-- 768.0
       0     3092        M                                           #; (f:fpu) fs1  <-- 202.0
       0     3093        M                                           #; (f:fpu) ft7  <-- 59.0
       0     3099        M 0x80000c20 fadd.d  fs0, fa1, ft0          #; fa1  = 83.0, ft0  = 24.0
       0     3100        M 0x80000c24 fsgnj.d fa2, ft0, ft0          #; ft0  = 36.0, ft0  = 36.0
       0     3101        M 0x80000c28 fsgnj.d fa4, ft0, ft0          #; ft0  = 48.0, ft0  = 48.0, (f:fpu) fa2  <-- 36.0
       0     3102        M                                           #; (f:fpu) fa4  <-- 48.0
       0     3103        M                                           #; (f:fpu) fs0  <-- 107.0
       0     3104        M 0x80000c2c fadd.d  ft7, fs0, ft7          #; fs0  = 107.0, ft7  = 59.0
       0     3107        M                                           #; (f:fpu) ft7  <-- 166.0
       0     3111        M 0x80000c30 fsgnj.d fs0, ft0, ft0          #; ft0  = 60.0, ft0  = 60.0
       0     3112        M 0x80000c34 fadd.d  fa0, fs1, ft0          #; fs1  = 202.0, ft0  = 72.0, (f:fpu) fs0  <-- 60.0
       0     3113        M 0x80000c38 fsgnj.d fs1, ft0, ft0          #; ft0  = 84.0, ft0  = 84.0
       0     3114        M 0x80000c3c fsgnj.d fa5, ft0, ft0          #; ft0  = 96.0, ft0  = 96.0, (f:fpu) fs1  <-- 84.0
       0     3115        M                                           #; (f:fpu) fa5  <-- 96.0
       0     3116        M                                           #; (f:fpu) fa0  <-- 274.0
       0     3123        M 0x80000c40 fadd.d  fa2, fa2, ft0          #; fa2  = 36.0, ft0  = 108.0
       0     3124        M 0x80000c44 csrrci  a5, ssr, 1             #; 
       0     3126        M 0x80000c48 fadd.d  ft7, fa0, ft7          #; fa0  = 274.0, ft7  = 166.0, (f:fpu) fa2  <-- 144.0
       0     3127        M 0x80000c4c fadd.d  fa2, fa2, fa4          #; fa2  = 144.0, fa4  = 48.0
       0     3129        M                                           #; (f:fpu) ft7  <-- 440.0
       0     3130        M                                           #; (f:fpu) fa2  <-- 192.0
       0     3135        M 0x80000c50 fadd.d  fa0, fs0, fs1          #; fs0  = 60.0, fs1  = 84.0
       0     3138        M                                           #; (f:fpu) fa0  <-- 144.0
       0     3139        M 0x80000c54 fadd.d  fa0, fa5, fa0          #; fa5  = 96.0, fa0  = 144.0
       0     3142        M                                           #; (f:fpu) fa0  <-- 240.0
       0     3143        M 0x80000c58 fadd.d  fa0, fa2, fa0          #; fa2  = 192.0, fa0  = 240.0
       0     3146        M                                           #; (f:fpu) fa0  <-- 432.0
       0     3147        M 0x80000c5c fadd.d  ft7, fa0, ft7          #; fa0  = 432.0, ft7  = 440.0
       0     3148        M 0x80000c6c j       pc + 0x690             #; goto 0x800012fc
       0     3150        M                                           #; (f:fpu) ft7  <-- 872.0
       0     3151        M 0x80000c60 fadd.d  ft6, ft6, ft7          #; ft6  = 768.0, ft7  = 872.0
       0     3154        M                                           #; (f:fpu) ft6  <-- 1640.0
       0     3155        M 0x80000c64 fadd.d  ft5, ft6, ft5          #; ft6  = 1640.0, ft5  = 1536.0
       0     3157        M 0x800012fc lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     3158        M                                           #; (f:fpu) ft5  <-- 3176.0
       0     3159        M 0x80000c68 fadd.d  ft4, ft4, ft5          #; ft4  = 2710.0, ft5  = 3176.0
       0     3162        M                                           #; (f:fpu) ft4  <-- 5886.0
       0     3169        M 0x80001300 srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
       0     3170        M 0x80001304 addi    a1, a0, 856            #; a0  = 0x00100000, (wrb) a1  <-- 0x00100358
       0     3171        M 0x80001308 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     3172        M 0x8000130c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     3181        M 0x80001310 sltu    a1, a1, a3             #; a1  = 0x00100358, a3  = 0x00120001, (wrb) a1  <-- 1
       0     3182        M 0x80001314 and     a1, a2, a1             #; a2  = 1, a1  = 1, (wrb) a1  <-- 1
       0     3183        M 0x80001318 beqz    a1, pc + 692           #; a1  = 1, not taken
       0     3184        M 0x8000131c li      a1, 8                  #; (wrb) a1  <-- 8
       0     3193        M 0x80001320 li      a2, 11                 #; (wrb) a2  <-- 11
       0     3194        M 0x80001324 li      a3, 64                 #; (wrb) a3  <-- 64
       0     3195        M 0x80001328 li      a4, 192                #; (wrb) a4  <-- 192
       0     3196        M 0x8000132c addi    a0, a0, 768            #; a0  = 0x00100000, (wrb) a0  <-- 0x00100300
       0     3205        M 0x80001330 li      a5, 224                #; (wrb) a5  <-- 224
       0     3206        M 0x80001334 scfgw   a2, a3                 #; a2  = 11, a3  = 64
       0     3207        M 0x80001338 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     3208        M 0x8000133c li      a4, 96                 #; (wrb) a4  <-- 96
       0     3217        M 0x80001340 li      a2, -184               #; (wrb) a2  <-- -184
       0     3218        M 0x80001344 scfgw   a1, a4                 #; a1  = 8, a4  = 96
       0     3219        M 0x80001348 li      a4, 32                 #; (wrb) a4  <-- 32
       0     3220        M 0x8000134c scfgw   a2, a5                 #; a2  = -184, a5  = 224
       0     3229        M 0x80001350 scfgw   zero, a4               #; a4  = 32
       0     3230        M 0x80001354 scfgwi  a0, 800                #; a0  = 0x00100300
       0     3232        M                                           #; (acc) t0  <-- 0x220002d3
                         M 0x80001358 csrrsi  a0, ssr, 1             #; 
       0     3234        M 0x8000135c fsgnj.d ft5, ft0, ft0          #; ft0  = 97.0, ft0  = 97.0
       0     3235        M                                           #; (f:fpu) ft5  <-- 97.0
       0     3243        M 0x80001360 fsgnj.d ft7, ft0, ft0          #; ft0  = 98.0, ft0  = 98.0
       0     3244        M 0x80001364 fsgnj.d fa1, ft0, ft0          #; ft0  = 99.0, ft0  = 99.0, (f:fpu) ft7  <-- 98.0
       0     3245        M 0x80001368 fadd.d  ft5, ft0, ft5          #; ft0  = 100.0, ft5  = 97.0, (f:fpu) fa1  <-- 99.0
       0     3246        M 0x8000136c fadd.d  fa4, ft7, ft0          #; ft7  = 98.0, ft0  = 101.0
       0     3248        M                                           #; (f:fpu) ft5  <-- 197.0
       0     3249        M                                           #; (f:fpu) fa4  <-- 199.0
       0     3255        M 0x80001370 fadd.d  ft6, fa1, ft0          #; fa1  = 99.0, ft0  = 102.0
       0     3256        M 0x80001374 fadd.d  ft5, ft5, fa4          #; ft5  = 197.0, fa4  = 199.0
       0     3257        M 0x80001378 fsgnj.d fa4, ft0, ft0          #; ft0  = 103.0, ft0  = 103.0
       0     3258        M                                           #; (f:fpu) ft6  <-- 201.0
       0     3259        M 0x8000137c fsgnj.d fa3, ft0, ft0          #; ft0  = 104.0, ft0  = 104.0, (f:fpu) fa4  <-- 103.0
       0     3260        M                                           #; (f:fpu) ft5  <-- 396.0
       0     3261        M                                           #; (f:fpu) fa3  <-- 104.0
       0     3267        M 0x80001380 fsgnj.d fa5, ft0, ft0          #; ft0  = 105.0, ft0  = 105.0
       0     3268        M 0x80001384 fsgnj.d ft10, ft0, ft0         #; ft0  = 106.0, ft0  = 106.0, (f:fpu) fa5  <-- 105.0
       0     3269        M 0x80001388 fadd.d  ft6, ft0, ft6          #; ft0  = 107.0, ft6  = 201.0, (f:fpu) ft10 <-- 106.0
       0     3272        M                                           #; (f:fpu) ft6  <-- 308.0
       0     3273        M 0x8000138c fadd.d  ft5, ft5, ft6          #; ft5  = 396.0, ft6  = 308.0
       0     3276        M                                           #; (f:fpu) ft5  <-- 704.0
       0     3279        M 0x80001390 fadd.d  ft7, fa3, ft0          #; fa3  = 104.0, ft0  = 108.0
       0     3280        M 0x80001394 fadd.d  fa7, fa4, ft0          #; fa4  = 103.0, ft0  = 85.0
       0     3281        M 0x80001398 fadd.d  ft9, fa5, ft0          #; fa5  = 105.0, ft0  = 86.0
       0     3282        M 0x8000139c fsgnj.d fa4, ft0, ft0          #; ft0  = 87.0, ft0  = 87.0, (f:fpu) ft7  <-- 212.0
       0     3283        M                                           #; (f:fpu) fa7  <-- 188.0
       0     3284        M                                           #; (f:fpu) fa4  <-- 87.0
       0     3285        M                                           #; (f:fpu) ft9  <-- 191.0
       0     3291        M 0x800013a0 fsgnj.d ft11, ft0, ft0         #; ft0  = 88.0, ft0  = 88.0
       0     3292        M 0x800013a4 fadd.d  ft6, ft7, fa7          #; ft7  = 212.0, fa7  = 188.0, (f:fpu) ft11 <-- 88.0
       0     3293        M 0x800013a8 fadd.d  ft7, ft9, ft0          #; ft9  = 191.0, ft0  = 89.0
       0     3295        M                                           #; (f:fpu) ft6  <-- 400.0
       0     3296        M                                           #; (f:fpu) ft7  <-- 280.0
       0     3297        M 0x800013ac fadd.d  ft6, ft7, ft6          #; ft7  = 280.0, ft6  = 400.0
       0     3300        M                                           #; (f:fpu) ft6  <-- 680.0
       0     3303        M 0x800013b0 fadd.d  ft5, ft5, ft6          #; ft5  = 704.0, ft6  = 680.0
       0     3304        M 0x800013b4 fadd.d  fs0, fa4, ft0          #; fa4  = 87.0, ft0  = 90.0
       0     3305        M 0x800013b8 fadd.d  ft7, ft10, ft0         #; ft10 = 106.0, ft0  = 91.0
       0     3306        M 0x800013bc fsgnj.d fa2, ft0, ft0          #; ft0  = 92.0, ft0  = 92.0, (f:fpu) ft5  <-- 1384.0
       0     3307        M                                           #; (f:fpu) fs0  <-- 177.0
       0     3308        M                                           #; (f:fpu) fa2  <-- 92.0
       0     3309        M                                           #; (f:fpu) ft7  <-- 197.0
       0     3315        M 0x800013c0 fadd.d  ft6, ft11, ft0         #; ft11 = 88.0, ft0  = 93.0
       0     3316        M 0x800013c4 fadd.d  ft7, fs0, ft7          #; fs0  = 177.0, ft7  = 197.0
       0     3317        M 0x800013c8 fsgnj.d fs2, ft0, ft0          #; ft0  = 94.0, ft0  = 94.0
       0     3318        M                                           #; (f:fpu) ft6  <-- 181.0
       0     3319        M 0x800013cc fadd.d  ft6, ft6, ft0          #; ft6  = 181.0, ft0  = 95.0, (f:fpu) fs2  <-- 94.0
       0     3320        M                                           #; (f:fpu) ft7  <-- 374.0
       0     3322        M                                           #; (f:fpu) ft6  <-- 276.0
       0     3327        M 0x800013d0 fsgnj.d fs3, ft0, ft0          #; ft0  = 96.0, ft0  = 96.0
       0     3328        M 0x800013d4 fadd.d  fa2, fa2, ft0          #; fa2  = 92.0, ft0  = 73.0, (f:fpu) fs3  <-- 96.0
       0     3329        M 0x800013d8 fadd.d  ft6, ft6, ft7          #; ft6  = 276.0, ft7  = 374.0
       0     3330        M 0x800013dc fadd.d  ft7, fs2, ft0          #; fs2  = 94.0, ft0  = 74.0
       0     3331        M                                           #; (f:fpu) fa2  <-- 165.0
       0     3332        M                                           #; (f:fpu) ft6  <-- 650.0
       0     3333        M                                           #; (f:fpu) ft7  <-- 168.0
       0     3339        M 0x800013e0 fsgnj.d fs1, ft0, ft0          #; ft0  = 75.0, ft0  = 75.0
       0     3340        M 0x800013e4 fsgnj.d fs4, ft0, ft0          #; ft0  = 76.0, ft0  = 76.0, (f:fpu) fs1  <-- 75.0
       0     3341        M 0x800013e8 fadd.d  fa2, fa2, ft0          #; fa2  = 165.0, ft0  = 77.0, (f:fpu) fs4  <-- 76.0
       0     3342        M 0x800013ec fadd.d  ft7, ft0, ft7          #; ft0  = 78.0, ft7  = 168.0
       0     3344        M                                           #; (f:fpu) fa2  <-- 242.0
       0     3345        M                                           #; (f:fpu) ft7  <-- 246.0
       0     3351        M 0x800013f0 fadd.d  ft7, fa2, ft7          #; fa2  = 242.0, ft7  = 246.0
       0     3352        M 0x800013f4 fadd.d  fa4, fs1, ft0          #; fs1  = 75.0, ft0  = 79.0
       0     3354        M                                           #; (f:fpu) ft7  <-- 488.0
       0     3355        M 0x800013f8 fadd.d  ft6, ft7, ft6          #; ft7  = 488.0, ft6  = 650.0, (f:fpu) fa4  <-- 154.0
       0     3356        M 0x800013fc fadd.d  ft7, fs3, ft0          #; fs3  = 96.0, ft0  = 80.0
       0     3358        M                                           #; (f:fpu) ft6  <-- 1138.0
       0     3359        M                                           #; (f:fpu) ft7  <-- 176.0
       0     3363        M 0x80001400 fsgnj.d fs0, ft0, ft0          #; ft0  = 81.0, ft0  = 81.0
       0     3364        M 0x80001404 fadd.d  ft5, ft5, ft6          #; ft5  = 1384.0, ft6  = 1138.0, (f:fpu) fs0  <-- 81.0
       0     3365        M 0x80001408 fadd.d  ft6, fs4, ft0          #; fs4  = 76.0, ft0  = 82.0
       0     3366        M 0x8000140c fadd.d  ft7, fa4, ft7          #; fa4  = 154.0, ft7  = 176.0
       0     3367        M                                           #; (f:fpu) ft5  <-- 2522.0
       0     3368        M                                           #; (f:fpu) ft6  <-- 158.0
       0     3369        M                                           #; (f:fpu) ft7  <-- 330.0
       0     3375        M 0x80001410 fsgnj.d fa4, ft0, ft0          #; ft0  = 83.0, ft0  = 83.0
       0     3376        M 0x80001414 fadd.d  ft6, ft6, ft0          #; ft6  = 158.0, ft0  = 84.0, (f:fpu) fa4  <-- 83.0
       0     3377        M 0x80001418 fsgnj.d fa5, ft0, ft0          #; ft0  = 61.0, ft0  = 61.0
       0     3378        M                                           #; (f:fpu) fa5  <-- 61.0
       0     3379        M                                           #; (f:fpu) ft6  <-- 242.0
       0     3380        M 0x8000141c fadd.d  ft6, ft6, ft7          #; ft6  = 242.0, ft7  = 330.0
       0     3383        M                                           #; (f:fpu) ft6  <-- 572.0
       0     3387        M 0x80001420 fadd.d  fs5, fs0, ft0          #; fs0  = 81.0, ft0  = 62.0
       0     3388        M 0x80001424 fadd.d  fa0, fa4, ft0          #; fa4  = 83.0, ft0  = 63.0
       0     3390        M                                           #; (f:fpu) fs5  <-- 143.0
       0     3391        M                                           #; (f:fpu) fa0  <-- 146.0
       0     3392        M 0x80001428 fadd.d  ft7, fs5, fa0          #; fs5  = 143.0, fa0  = 146.0
       0     3393        M 0x8000142c fadd.d  fa4, fa5, ft0          #; fa5  = 61.0, ft0  = 64.0
       0     3395        M                                           #; (f:fpu) ft7  <-- 289.0
       0     3396        M                                           #; (f:fpu) fa4  <-- 125.0
       0     3399        M 0x80001430 fsgnj.d fa5, ft0, ft0          #; ft0  = 65.0, ft0  = 65.0
       0     3400        M 0x80001434 fadd.d  fa0, ft0, fa4          #; ft0  = 66.0, fa4  = 125.0, (f:fpu) fa5  <-- 65.0
       0     3401        M 0x80001438 fsgnj.d fs1, ft0, ft0          #; ft0  = 67.0, ft0  = 67.0
       0     3402        M 0x8000143c fsgnj.d fs6, ft0, ft0          #; ft0  = 68.0, ft0  = 68.0, (f:fpu) fs1  <-- 67.0
       0     3403        M                                           #; (f:fpu) fs6  <-- 68.0
       0     3404        M                                           #; (f:fpu) fa0  <-- 191.0
       0     3411        M 0x80001440 fadd.d  ft7, ft7, fa0          #; ft7  = 289.0, fa0  = 191.0
       0     3414        M                                           #; (f:fpu) ft7  <-- 480.0
       0     3415        M 0x80001444 fadd.d  ft6, ft7, ft6          #; ft7  = 480.0, ft6  = 572.0
       0     3416        M 0x80001448 fadd.d  fa0, fa5, ft0          #; fa5  = 65.0, ft0  = 69.0
       0     3417        M 0x8000144c fadd.d  fa5, fs1, ft0          #; fs1  = 67.0, ft0  = 70.0
       0     3418        M                                           #; (f:fpu) ft6  <-- 1052.0
       0     3419        M                                           #; (f:fpu) fa0  <-- 134.0
       0     3420        M                                           #; (f:fpu) fa5  <-- 137.0
       0     3423        M 0x80001450 fsgnj.d fa3, ft0, ft0          #; ft0  = 71.0, ft0  = 71.0
       0     3424        M 0x80001454 fadd.d  fa0, fa0, fa5          #; fa0  = 134.0, fa5  = 137.0, (f:fpu) fa3  <-- 71.0
       0     3425        M 0x80001458 fadd.d  ft7, fs6, ft0          #; fs6  = 68.0, ft0  = 72.0
       0     3427        M                                           #; (f:fpu) fa0  <-- 271.0
       0     3428        M                                           #; (f:fpu) ft7  <-- 140.0
       0     3429        M 0x8000145c fadd.d  ft7, ft0, ft7          #; ft0  = 49.0, ft7  = 140.0
       0     3432        M                                           #; (f:fpu) ft7  <-- 189.0
       0     3435        M 0x80001460 fadd.d  fa3, fa3, ft0          #; fa3  = 71.0, ft0  = 50.0
       0     3436        M 0x80001464 fadd.d  ft7, fa0, ft7          #; fa0  = 271.0, ft7  = 189.0
       0     3437        M 0x80001468 fsgnj.d fa0, ft0, ft0          #; ft0  = 51.0, ft0  = 51.0
       0     3438        M                                           #; (f:fpu) fa3  <-- 121.0
       0     3439        M 0x8000146c fadd.d  fa3, ft0, fa3          #; ft0  = 52.0, fa3  = 121.0, (f:fpu) fa0  <-- 51.0
       0     3440        M                                           #; (f:fpu) ft7  <-- 460.0
       0     3442        M                                           #; (f:fpu) fa3  <-- 173.0
       0     3447        M 0x80001470 fsgnj.d fs7, ft0, ft0          #; ft0  = 53.0, ft0  = 53.0
       0     3448        M 0x80001474 fadd.d  fa0, fa0, ft0          #; fa0  = 51.0, ft0  = 54.0, (f:fpu) fs7  <-- 53.0
       0     3451        M                                           #; (f:fpu) fa0  <-- 105.0
       0     3452        M 0x80001478 fadd.d  fa0, fa0, ft0          #; fa0  = 105.0, ft0  = 55.0
       0     3453        M 0x8000147c fsgnj.d fs1, ft0, ft0          #; ft0  = 56.0, ft0  = 56.0
       0     3454        M                                           #; (f:fpu) fs1  <-- 56.0
       0     3455        M                                           #; (f:fpu) fa0  <-- 160.0
       0     3459        M 0x80001480 fadd.d  fa0, fa0, fa3          #; fa0  = 160.0, fa3  = 173.0
       0     3460        M 0x80001484 fsgnj.d fs8, ft0, ft0          #; ft0  = 57.0, ft0  = 57.0
       0     3461        M                                           #; (f:fpu) fs8  <-- 57.0
       0     3462        M                                           #; (f:fpu) fa0  <-- 333.0
       0     3463        M 0x80001488 fadd.d  ft7, ft7, fa0          #; ft7  = 460.0, fa0  = 333.0
       0     3466        M                                           #; (f:fpu) ft7  <-- 793.0
       0     3467        M 0x8000148c fadd.d  ft6, ft7, ft6          #; ft7  = 793.0, ft6  = 1052.0
       0     3470        M                                           #; (f:fpu) ft6  <-- 1845.0
       0     3471        M 0x80001490 fadd.d  ft7, fs7, ft0          #; fs7  = 53.0, ft0  = 58.0
       0     3472        M 0x80001494 fsgnj.d fs0, ft0, ft0          #; ft0  = 59.0, ft0  = 59.0
       0     3473        M 0x80001498 fadd.d  ft5, ft5, ft6          #; ft5  = 2522.0, ft6  = 1845.0, (f:fpu) fs0  <-- 59.0
       0     3474        M 0x8000149c fadd.d  fa4, fs1, ft0          #; fs1  = 56.0, ft0  = 60.0, (f:fpu) ft7  <-- 111.0
       0     3476        M                                           #; (f:fpu) ft5  <-- 4367.0
       0     3477        M                                           #; (f:fpu) fa4  <-- 116.0
       0     3483        M 0x800014a0 fadd.d  ft6, fs8, ft0          #; fs8  = 57.0, ft0  = 37.0
       0     3484        M 0x800014a4 fadd.d  ft7, fa4, ft7          #; fa4  = 116.0, ft7  = 111.0
       0     3485        M 0x800014a8 fsgnj.d fa4, ft0, ft0          #; ft0  = 38.0, ft0  = 38.0
       0     3486        M                                           #; (f:fpu) ft6  <-- 94.0
       0     3487        M 0x800014ac fadd.d  ft6, ft6, ft0          #; ft6  = 94.0, ft0  = 39.0, (f:fpu) fa4  <-- 38.0
       0     3488        M                                           #; (f:fpu) ft7  <-- 227.0
       0     3490        M                                           #; (f:fpu) ft6  <-- 133.0
       0     3495        M 0x800014b0 fsgnj.d fa5, ft0, ft0          #; ft0  = 40.0, ft0  = 40.0
       0     3496        M 0x800014b4 fadd.d  ft6, ft6, ft7          #; ft6  = 133.0, ft7  = 227.0, (f:fpu) fa5  <-- 40.0
       0     3497        M 0x800014b8 fadd.d  fs9, fs0, ft0          #; fs0  = 59.0, ft0  = 41.0
       0     3498        M 0x800014bc fadd.d  fa0, fa4, ft0          #; fa4  = 38.0, ft0  = 42.0
       0     3499        M                                           #; (f:fpu) ft6  <-- 360.0
       0     3500        M                                           #; (f:fpu) fs9  <-- 100.0
       0     3501        M                                           #; (f:fpu) fa0  <-- 80.0
       0     3507        M 0x800014c0 fadd.d  ft7, fs9, fa0          #; fs9  = 100.0, fa0  = 80.0
       0     3508        M 0x800014c4 fadd.d  fa4, fa5, ft0          #; fa5  = 40.0, ft0  = 43.0
       0     3509        M 0x800014c8 fsgnj.d fa5, ft0, ft0          #; ft0  = 44.0, ft0  = 44.0
       0     3510        M                                           #; (f:fpu) ft7  <-- 180.0
       0     3511        M                                           #; (f:fpu) fa5  <-- 44.0
       0     3512        M                                           #; (f:fpu) fa4  <-- 83.0
       0     3513        M 0x800014cc fadd.d  fa0, ft0, fa4          #; ft0  = 45.0, fa4  = 83.0
       0     3516        M                                           #; (f:fpu) fa0  <-- 128.0
       0     3519        M 0x800014d0 fsgnj.d fs1, ft0, ft0          #; ft0  = 46.0, ft0  = 46.0
       0     3520        M 0x800014d4 fsgnj.d fs10, ft0, ft0         #; ft0  = 47.0, ft0  = 47.0, (f:fpu) fs1  <-- 46.0
       0     3521        M 0x800014d8 fadd.d  ft7, ft7, fa0          #; ft7  = 180.0, fa0  = 128.0, (f:fpu) fs10 <-- 47.0
       0     3524        M                                           #; (f:fpu) ft7  <-- 308.0
       0     3525        M 0x800014dc fadd.d  ft6, ft7, ft6          #; ft7  = 308.0, ft6  = 360.0
       0     3528        M                                           #; (f:fpu) ft6  <-- 668.0
       0     3531        M 0x800014e0 fadd.d  fa0, fa5, ft0          #; fa5  = 44.0, ft0  = 48.0
       0     3532        M 0x800014e4 fadd.d  fa5, fs1, ft0          #; fs1  = 46.0, ft0  = 25.0
       0     3533        M 0x800014e8 fsgnj.d fa3, ft0, ft0          #; ft0  = 26.0, ft0  = 26.0
       0     3534        M                                           #; (f:fpu) fa0  <-- 92.0
       0     3535        M                                           #; (f:fpu) fa3  <-- 26.0
       0     3536        M                                           #; (f:fpu) fa5  <-- 71.0
       0     3537        M 0x800014ec fadd.d  fa0, fa0, fa5          #; fa0  = 92.0, fa5  = 71.0
       0     3540        M                                           #; (f:fpu) fa0  <-- 163.0
       0     3543        M 0x800014f0 fadd.d  ft7, fs10, ft0         #; fs10 = 47.0, ft0  = 27.0
       0     3546        M                                           #; (f:fpu) ft7  <-- 74.0
       0     3547        M 0x800014f4 fadd.d  ft7, ft0, ft7          #; ft0  = 28.0, ft7  = 74.0
       0     3548        M 0x800014f8 fadd.d  fa3, fa3, ft0          #; fa3  = 26.0, ft0  = 29.0
       0     3550        M                                           #; (f:fpu) ft7  <-- 102.0
       0     3551        M 0x800014fc fadd.d  ft7, fa0, ft7          #; fa0  = 163.0, ft7  = 102.0, (f:fpu) fa3  <-- 55.0
       0     3554        M                                           #; (f:fpu) ft7  <-- 265.0
       0     3555        M 0x80001500 fsgnj.d fa0, ft0, ft0          #; ft0  = 30.0, ft0  = 30.0
       0     3556        M 0x80001504 fadd.d  fa3, ft0, fa3          #; ft0  = 31.0, fa3  = 55.0, (f:fpu) fa0  <-- 30.0
       0     3557        M 0x80001508 fsgnj.d fs11, ft0, ft0         #; ft0  = 32.0, ft0  = 32.0
       0     3558        M 0x8000150c fadd.d  fa0, fa0, ft0          #; fa0  = 30.0, ft0  = 33.0, (f:fpu) fs11 <-- 32.0
       0     3559        M                                           #; (f:fpu) fa3  <-- 86.0
       0     3561        M                                           #; (f:fpu) fa0  <-- 63.0
       0     3567        M 0x80001510 fadd.d  fa0, fa0, ft0          #; fa0  = 63.0, ft0  = 34.0
       0     3570        M                                           #; (f:fpu) fa0  <-- 97.0
       0     3571        M 0x80001514 fadd.d  fa0, fa0, fa3          #; fa0  = 97.0, fa3  = 86.0
       0     3574        M                                           #; (f:fpu) fa0  <-- 183.0
       0     3575        M 0x80001518 fadd.d  ft7, ft7, fa0          #; ft7  = 265.0, fa0  = 183.0
       0     3576        M 0x8000151c fsgnj.d fa1, ft0, ft0          #; ft0  = 35.0, ft0  = 35.0
       0     3577        M                                           #; (f:fpu) fa1  <-- 35.0
       0     3578        M                                           #; (f:fpu) ft7  <-- 448.0
       0     3579        M 0x80001520 fsgnj.d fs0, ft0, ft0          #; ft0  = 36.0, ft0  = 36.0
       0     3580        M 0x80001524 fadd.d  ft6, ft7, ft6          #; ft7  = 448.0, ft6  = 668.0, (f:fpu) fs0  <-- 36.0
       0     3581        M 0x80001528 fadd.d  fa5, fa1, ft0          #; fa1  = 35.0, ft0  = 13.0
       0     3582        M 0x8000152c fadd.d  ft7, fs11, ft0         #; fs11 = 32.0, ft0  = 14.0
       0     3583        M                                           #; (f:fpu) ft6  <-- 1116.0
       0     3584        M                                           #; (f:fpu) fa5  <-- 48.0
       0     3585        M                                           #; (f:fpu) ft7  <-- 46.0
       0     3591        M 0x80001530 fadd.d  fa0, fs0, ft0          #; fs0  = 36.0, ft0  = 15.0
       0     3592        M 0x80001534 fsgnj.d fs0, ft0, ft0          #; ft0  = 16.0, ft0  = 16.0
       0     3593        M 0x80001538 fsgnj.d fa4, ft0, ft0          #; ft0  = 17.0, ft0  = 17.0, (f:fpu) fs0  <-- 16.0
       0     3594        M 0x8000153c fadd.d  ft7, ft7, fa5          #; ft7  = 46.0, fa5  = 48.0, (f:fpu) fa4  <-- 17.0
       0     3595        M                                           #; (f:fpu) fa0  <-- 51.0
       0     3597        M                                           #; (f:fpu) ft7  <-- 94.0
       0     3603        M 0x80001540 fadd.d  fa0, ft0, fa0          #; ft0  = 18.0, fa0  = 51.0
       0     3604        M 0x80001544 fsgnj.d fa1, ft0, ft0          #; ft0  = 19.0, ft0  = 19.0
       0     3605        M                                           #; (f:fpu) fa1  <-- 19.0
       0     3606        M                                           #; (f:fpu) fa0  <-- 69.0
       0     3607        M 0x80001548 fadd.d  ft7, ft7, fa0          #; ft7  = 94.0, fa0  = 69.0
       0     3608        M 0x8000154c fadd.d  fa0, fs0, ft0          #; fs0  = 16.0, ft0  = 20.0
       0     3610        M                                           #; (f:fpu) ft7  <-- 163.0
       0     3611        M                                           #; (f:fpu) fa0  <-- 36.0
       0     3615        M 0x80001550 fadd.d  fa4, fa4, ft0          #; fa4  = 17.0, ft0  = 21.0
       0     3618        M                                           #; (f:fpu) fa4  <-- 38.0
       0     3619        M 0x80001554 fadd.d  fa0, fa4, fa0          #; fa4  = 38.0, fa0  = 36.0
       0     3620        M 0x80001558 fadd.d  fa1, fa1, ft0          #; fa1  = 19.0, ft0  = 22.0
       0     3622        M                                           #; (f:fpu) fa0  <-- 74.0
       0     3623        M                                           #; (f:fpu) fa1  <-- 41.0
       0     3624        M 0x8000155c fadd.d  fa1, fa1, ft0          #; fa1  = 41.0, ft0  = 23.0
       0     3627        M                                           #; (f:fpu) fa1  <-- 64.0
       0     3628        M 0x80001560 fadd.d  fa0, fa1, fa0          #; fa1  = 64.0, fa0  = 74.0
       0     3631        M                                           #; (f:fpu) fa0  <-- 138.0
       0     3632        M 0x80001564 fadd.d  ft7, ft7, fa0          #; ft7  = 163.0, fa0  = 138.0
       0     3633        M 0x80001568 fsgnj.d fa0, ft0, ft0          #; ft0  = 24.0, ft0  = 24.0
       0     3634        M 0x8000156c fsgnj.d fa2, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0, (f:fpu) fa0  <-- 24.0
       0     3635        M                                           #; (f:fpu) fa2  <-- 1.0
       0     3636        M                                           #; (f:fpu) ft7  <-- 301.0
       0     3639        M 0x80001570 fsgnj.d fs0, ft0, ft0          #; ft0  = 2.0, ft0  = 2.0
       0     3640        M                                           #; (f:fpu) fs0  <-- 2.0
       0     3641        M 0x80001574 fadd.d  fs0, fs0, ft0          #; fs0  = 2.0, ft0  = 3.0
       0     3642        M 0x80001578 fadd.d  fa0, fa0, ft0          #; fa0  = 24.0, ft0  = 4.0
       0     3643        M 0x8000157c fadd.d  fa3, fa2, ft0          #; fa2  = 1.0, ft0  = 5.0
       0     3644        M                                           #; (f:fpu) fs0  <-- 5.0
       0     3645        M                                           #; (f:fpu) fa0  <-- 28.0
       0     3646        M                                           #; (f:fpu) fa3  <-- 6.0
       0     3651        M 0x80001580 fadd.d  fa0, fa3, fa0          #; fa3  = 6.0, fa0  = 28.0
       0     3652        M 0x80001584 fsgnj.d fa3, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0
       0     3653        M 0x80001588 fsgnj.d fa4, ft0, ft0          #; ft0  = 7.0, ft0  = 7.0, (f:fpu) fa3  <-- 6.0
       0     3654        M 0x8000158c fsgnj.d fa5, ft0, ft0          #; ft0  = 8.0, ft0  = 8.0, (f:fpu) fa4  <-- 7.0
       0     3655        M                                           #; (f:fpu) fa0  <-- 34.0
       0     3656        M                                           #; (f:fpu) fa5  <-- 8.0
       0     3663        M 0x80001590 fadd.d  fa1, fs0, ft0          #; fs0  = 5.0, ft0  = 9.0
       0     3664        M 0x80001594 fsgnj.d fs0, ft0, ft0          #; ft0  = 10.0, ft0  = 10.0
       0     3665        M 0x80001598 fsgnj.d fs1, ft0, ft0          #; ft0  = 11.0, ft0  = 11.0, (f:fpu) fs0  <-- 10.0
       0     3666        M 0x8000159c fsgnj.d fa6, ft0, ft0          #; ft0  = 12.0, ft0  = 12.0, (f:fpu) fs1  <-- 11.0
       0     3667        M                                           #; (f:fpu) fa1  <-- 14.0
       0     3668        M                                           #; (f:fpu) fa6  <-- 12.0
       0     3674        M 0x800015a0 csrrci  a5, ssr, 1             #; 
       0     3676        M 0x800015a4 fadd.d  fa3, fa3, fa4          #; fa3  = 6.0, fa4  = 7.0
       0     3677        M 0x800015a8 fadd.d  fa0, fa1, fa0          #; fa1  = 14.0, fa0  = 34.0
       0     3679        M                                           #; (f:fpu) fa3  <-- 13.0
       0     3680        M 0x800015ac fadd.d  fa3, fa3, fa5          #; fa3  = 13.0, fa5  = 8.0, (f:fpu) fa0  <-- 48.0
       0     3683        M                                           #; (f:fpu) fa3  <-- 21.0
       0     3687        M 0x800015b0 fadd.d  fa1, fs0, fs1          #; fs0  = 10.0, fs1  = 11.0
       0     3690        M                                           #; (f:fpu) fa1  <-- 21.0
       0     3691        M 0x800015b4 fadd.d  fa1, fa6, fa1          #; fa6  = 12.0, fa1  = 21.0
       0     3694        M                                           #; (f:fpu) fa1  <-- 33.0
       0     3695        M 0x800015b8 fadd.d  fa1, fa3, fa1          #; fa3  = 21.0, fa1  = 33.0
       0     3698        M                                           #; (f:fpu) fa1  <-- 54.0
       0     3699        M 0x800015c8 j       pc + 0x35c             #; goto 0x80001924
                         M 0x800015bc fadd.d  fa0, fa1, fa0          #; fa1  = 54.0, fa0  = 48.0
       0     3702        M                                           #; (f:fpu) fa0  <-- 102.0
       0     3703        M 0x800015c0 fadd.d  ft7, ft7, fa0          #; ft7  = 301.0, fa0  = 102.0
       0     3706        M                                           #; (f:fpu) ft7  <-- 403.0
       0     3707        M 0x800015c4 fadd.d  ft6, ft7, ft6          #; ft7  = 403.0, ft6  = 1116.0
       0     3710        M 0x80001928 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003928
                         M                                           #; (f:fpu) ft6  <-- 1519.0
       0     3711        M 0x8000192c addi    a0, a0, 1584           #; a0  = 0x80003928, (wrb) a0  <-- 0x80003f58
                         M 0x80001924 fadd.d  ft5, ft5, ft6          #; ft5  = 4367.0, ft6  = 1519.0
       0     3714        M                                           #; (f:fpu) ft5  <-- 5886.0
       0     3723        M 0x80001938 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003938
                         M 0x80001930 fadd.d  ft4, ft4, ft5          #; ft4  = 5886.0, ft5  = 5886.0
       0     3724        M 0x8000193c addi    a0, a0, 909            #; a0  = 0x80003938, (wrb) a0  <-- 0x80003cc5
                         M 0x80001934 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x80003f58]
       0     3726        M                                           #; (f:fpu) ft4  <-- 11772.0
       0     3733        M                                           #; (f:lsu) ft6  <-- -2.0
       0     3735        M 0x80001940 fmadd.d ft3, ft3, ft6, ft4     #; ft3  = 5886.0, ft6  = -2.0, ft4  = 11772.0
       0     3736        M 0x8000194c lw      a2, 688(sp)            #; sp  = 0x0011fc40, a2  <~~ Word[0x0011fef0]
       0     3738        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3739        M                                           #; (lsu) a2  <-- 0
                         M 0x80001944 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     3740        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3741        M 0x80001948 fsd     fs0, 688(sp)           #; 0.0 ~~> Doub[0x0011fef0]
       0     3745        M 0x80001950 lw      a3, 692(sp)            #; sp  = 0x0011fc40, a3  <~~ Word[0x0011fef4]
       0     3746        M 0x80001954 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80001954
       0     3747        M 0x80001958 jalr    ra, ra, 84             #; ra  = 0x80001954, (wrb) ra  <-- 0x8000195c, goto 0x800019a8
       0     3748        M                                           #; (lsu) a3  <-- 0
       0     3768        M 0x800019a8 addi    sp, sp, -48            #; sp  = 0x0011fc40, (wrb) sp  <-- 0x0011fc10
       0     3769        M 0x800019ac sw      ra, 12(sp)             #; sp  = 0x0011fc10, 0x8000195c ~~> Word[0x0011fc1c]
       0     3771        M 0x800019b0 mv      t0, a0                 #; a0  = 0x80003cc5, (wrb) t0  <-- 0x80003cc5
       0     3772        M 0x800019b4 sw      a5, 36(sp)             #; sp  = 0x0011fc10, 224 ~~> Word[0x0011fc34]
       0     3773        M 0x800019b8 sw      a4, 32(sp)             #; sp  = 0x0011fc10, 32 ~~> Word[0x0011fc30]
       0     3774        M 0x800019bc sw      a3, 28(sp)             #; sp  = 0x0011fc10, 0 ~~> Word[0x0011fc2c]
       0     3783        M 0x800019c0 sw      a2, 24(sp)             #; sp  = 0x0011fc10, 0 ~~> Word[0x0011fc28]
       0     3784        M 0x800019c4 sw      a1, 20(sp)             #; sp  = 0x0011fc10, 8 ~~> Word[0x0011fc24]
       0     3785        M 0x800019c8 addi    a5, sp, 20             #; sp  = 0x0011fc10, (wrb) a5  <-- 0x0011fc24
       0     3786        M 0x800019cc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029cc
       0     3795        M 0x800019d0 addi    a0, a0, -980           #; a0  = 0x800029cc, (wrb) a0  <-- 0x800025f8
       0     3796        M 0x800019d4 addi    a1, sp, 7              #; sp  = 0x0011fc10, (wrb) a1  <-- 0x0011fc17
       0     3797        M 0x800019d8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     3798        M 0x800019dc addi    a4, sp, 20             #; sp  = 0x0011fc10, (wrb) a4  <-- 0x0011fc24
       0     3807        M 0x800019e0 sw      a7, 44(sp)             #; sp  = 0x0011fc10, 0 ~~> Word[0x0011fc3c]
       0     3808        M 0x800019e4 sw      a6, 40(sp)             #; sp  = 0x0011fc10, 1 ~~> Word[0x0011fc38]
       0     3809        M 0x800019e8 mv      a3, t0                 #; t0  = 0x80003cc5, (wrb) a3  <-- 0x80003cc5
       0     3810        M 0x800019ec sw      a5, 8(sp)              #; sp  = 0x0011fc10, 0x0011fc24 ~~> Word[0x0011fc18]
       0     3819        M 0x800019f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800019f0
       0     3820        M 0x800019f4 jalr    ra, ra, 20             #; ra  = 0x800019f0, (wrb) ra  <-- 0x800019f8, goto 0x80001a04
       0     3831        M 0x80001a04 addi    sp, sp, -112           #; sp  = 0x0011fc10, (wrb) sp  <-- 0x0011fba0
       0     3832        M 0x80001a08 sw      ra, 108(sp)            #; sp  = 0x0011fba0, 0x800019f8 ~~> Word[0x0011fc0c]
       0     3833        M 0x80001a0c sw      s0, 104(sp)            #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fc08]
       0     3843        M 0x80001a10 sw      s1, 100(sp)            #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fc04]
       0     3844        M 0x80001a14 sw      s2, 96(sp)             #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fc00]
       0     3845        M 0x80001a18 sw      s3, 92(sp)             #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fbfc]
       0     3846        M 0x80001a1c sw      s4, 88(sp)             #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fbf8]
       0     3855        M 0x80001a20 sw      s5, 84(sp)             #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fbf4]
       0     3856        M 0x80001a24 sw      s6, 80(sp)             #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fbf0]
       0     3857        M 0x80001a28 sw      s7, 76(sp)             #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fbec]
       0     3858        M 0x80001a2c sw      s8, 72(sp)             #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fbe8]
       0     3867        M 0x80001a30 sw      s9, 68(sp)             #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fbe4]
       0     3868        M 0x80001a34 sw      s10, 64(sp)            #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fbe0]
       0     3869        M 0x80001a38 sw      s11, 60(sp)            #; sp  = 0x0011fba0, 0 ~~> Word[0x0011fbdc]
       0     3870        M 0x80001a3c mv      s3, a4                 #; a4  = 0x0011fc24, (wrb) s3  <-- 0x0011fc24
       0     3879        M 0x80001a40 mv      s0, a3                 #; a3  = 0x80003cc5, (wrb) s0  <-- 0x80003cc5
       0     3880        M 0x80001a44 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     3881        M 0x80001a48 mv      s4, a1                 #; a1  = 0x0011fc17, (wrb) s4  <-- 0x0011fc17
       0     3882        M 0x80001a4c beqz    a1, pc + 12            #; a1  = 0x0011fc17, not taken
       0     3891        M 0x80001a50 mv      s2, a0                 #; a0  = 0x800025f8, (wrb) s2  <-- 0x800025f8
       0     3892        M 0x80001a54 j       pc + 0xc               #; goto 0x80001a60
       0     3903        M 0x80001a60 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     3904        M 0x80001a64 lui     a5, 0x10               #; (wrb) a5  <-- 0x00010000
       0     3905        M 0x80001a68 li      s8, 0                  #; (wrb) s8  <-- 0
       0     3906        M 0x80001a6c li      s6, 37                 #; (wrb) s6  <-- 37
       0     3915        M 0x80001a70 li      s11, 16                #; (wrb) s11 <-- 16
       0     3916        M 0x80001a74 li      s7, 46                 #; (wrb) s7  <-- 46
       0     3917        M 0x80001a78 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     3918        M 0x80001a7c sw      a0, 24(sp)             #; sp  = 0x0011fba0, 2048 ~~> Word[0x0011fbb8]
       0     3927        M 0x80001a80 addi    a0, a5, -1             #; a5  = 0x00010000, (wrb) a0  <-- 65535
       0     3928        M 0x80001a84 sw      a0, 16(sp)             #; sp  = 0x0011fba0, 65535 ~~> Word[0x0011fbb0]
       0     3929        M 0x80001a88 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     3930        M 0x80001a8c addi    s10, s0, 2             #; s0  = 0x80003cc5, (wrb) s10 <-- 0x80003cc7
       0     3939        M 0x80001a90 li      s8, 10                 #; (wrb) s8  <-- 10
       0     3940        M 0x80001a94 lbu     a0, 0(s0)              #; s0  = 0x80003cc5, a0  <~~ Byte[0x80003cc5]
       0     3951        M                                           #; (lsu) a0  <-- 101
       0     3952        M 0x80001a98 beqz    a0, pc + 2820          #; a0  = 101, not taken
       0     3953        M 0x80001a9c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3954        M 0x80001aa0 mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     3955        M 0x80001aa4 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3956        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3957        M 0x80001aac addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3966        M 0x80001ab0 jalr    s2                     #; s2  = 0x800025f8, (wrb) ra  <-- 0x80001ab4, goto 0x800025f8
       0     3989        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     3990        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4001        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4002        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     4003        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     4004        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4013        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     4014        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4025        M                                           #; (lsu) a4  <-- 0
       0     4026        M 0x80002618 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     4027        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 0, (wrb) a4  <-- 0x80004014
       0     4028        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 1 ~~> Word[0x80004014]
       0     4029        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004014, 101 ~~> Byte[0x8000405c]
       0     4030        M 0x80002628 addi    a5, a0, -10            #; a0  = 101, (wrb) a5  <-- 91
       0     4031        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4040        M 0x80002630 snez    a0, a5                 #; a5  = 91, (wrb) a0  <-- 1
       0     4051        M                                           #; (lsu) a4  <-- 1
       0     4052        M 0x80002634 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     4053        M 0x80002638 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     4054        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4055        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     4078        M 0x800026a0 ret                            #; ra  = 0x80001ab4, goto 0x80001ab4
       0     4092        M 0x80001ab4 addi    s0, s0, 1              #; s0  = 0x80003cc5, (wrb) s0  <-- 0x80003cc6
       0     4093        M 0x80001ab8 addi    s10, s10, 1            #; s10 = 0x80003cc7, (wrb) s10 <-- 0x80003cc8
       0     4094        M 0x80001abc mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     4095        M 0x80001ac0 lbu     a0, 0(s0)              #; s0  = 0x80003cc6, a0  <~~ Byte[0x80003cc6]
       0     4106        M                                           #; (lsu) a0  <-- 114
       0     4107        M 0x80001ac4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80001a9c
       0     4108        M 0x80001a9c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4111        M 0x80001aa0 mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     4112        M 0x80001aa4 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     4113        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4114        M 0x80001aac addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     4115        M 0x80001ab0 jalr    s2                     #; s2  = 0x800025f8, (wrb) ra  <-- 0x80001ab4, goto 0x800025f8
       0     4118        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4119        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4121        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4122        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     4123        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     4124        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4127        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4128        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     4129        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4140        M                                           #; (lsu) a4  <-- 1
       0     4141        M 0x80002618 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     4142        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 1, (wrb) a4  <-- 0x80004015
       0     4143        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 2 ~~> Word[0x80004014]
       0     4144        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004015, 114 ~~> Byte[0x8000405d]
       0     4145        M 0x80002628 addi    a5, a0, -10            #; a0  = 114, (wrb) a5  <-- 104
       0     4146        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4147        M 0x80002630 snez    a0, a5                 #; a5  = 104, (wrb) a0  <-- 1
       0     4166        M                                           #; (lsu) a4  <-- 2
       0     4167        M 0x80002634 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     4168        M 0x80002638 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     4169        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4170        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     4175        M 0x800026a0 ret                            #; ra  = 0x80001ab4, goto 0x80001ab4
       0     4180        M 0x80001ab4 addi    s0, s0, 1              #; s0  = 0x80003cc6, (wrb) s0  <-- 0x80003cc7
       0     4181        M 0x80001ab8 addi    s10, s10, 1            #; s10 = 0x80003cc8, (wrb) s10 <-- 0x80003cc9
       0     4182        M 0x80001abc mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     4183        M 0x80001ac0 lbu     a0, 0(s0)              #; s0  = 0x80003cc7, a0  <~~ Byte[0x80003cc7]
       0     4194        M                                           #; (lsu) a0  <-- 114
       0     4195        M 0x80001ac4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80001a9c
       0     4196        M 0x80001a9c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4199        M 0x80001aa0 mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     4200        M 0x80001aa4 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     4201        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4202        M 0x80001aac addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     4203        M 0x80001ab0 jalr    s2                     #; s2  = 0x800025f8, (wrb) ra  <-- 0x80001ab4, goto 0x800025f8
       0     4206        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4207        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4209        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4210        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     4211        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     4212        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4215        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4216        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     4217        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4228        M                                           #; (lsu) a4  <-- 2
       0     4229        M 0x80002618 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     4230        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 2, (wrb) a4  <-- 0x80004016
       0     4231        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 3 ~~> Word[0x80004014]
       0     4232        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004016, 114 ~~> Byte[0x8000405e]
       0     4233        M 0x80002628 addi    a5, a0, -10            #; a0  = 114, (wrb) a5  <-- 104
       0     4234        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4235        M 0x80002630 snez    a0, a5                 #; a5  = 104, (wrb) a0  <-- 1
       0     4254        M                                           #; (lsu) a4  <-- 3
       0     4255        M 0x80002634 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     4256        M 0x80002638 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     4257        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4258        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     4263        M 0x800026a0 ret                            #; ra  = 0x80001ab4, goto 0x80001ab4
       0     4268        M 0x80001ab4 addi    s0, s0, 1              #; s0  = 0x80003cc7, (wrb) s0  <-- 0x80003cc8
       0     4269        M 0x80001ab8 addi    s10, s10, 1            #; s10 = 0x80003cc9, (wrb) s10 <-- 0x80003cca
       0     4270        M 0x80001abc mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     4271        M 0x80001ac0 lbu     a0, 0(s0)              #; s0  = 0x80003cc8, a0  <~~ Byte[0x80003cc8]
       0     4282        M                                           #; (lsu) a0  <-- 111
       0     4283        M 0x80001ac4 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80001a9c
       0     4284        M 0x80001a9c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     4287        M 0x80001aa0 mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     4288        M 0x80001aa4 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     4289        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4290        M 0x80001aac addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     4291        M 0x80001ab0 jalr    s2                     #; s2  = 0x800025f8, (wrb) ra  <-- 0x80001ab4, goto 0x800025f8
       0     4294        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     4295        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4297        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4298        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     4299        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     4300        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4303        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4304        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     4305        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4316        M                                           #; (lsu) a4  <-- 3
       0     4317        M 0x80002618 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     4318        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 3, (wrb) a4  <-- 0x80004017
       0     4319        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 4 ~~> Word[0x80004014]
       0     4320        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004017, 111 ~~> Byte[0x8000405f]
       0     4321        M 0x80002628 addi    a5, a0, -10            #; a0  = 111, (wrb) a5  <-- 101
       0     4322        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4323        M 0x80002630 snez    a0, a5                 #; a5  = 101, (wrb) a0  <-- 1
       0     4342        M                                           #; (lsu) a4  <-- 4
       0     4343        M 0x80002634 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     4344        M 0x80002638 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     4345        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4346        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     4351        M 0x800026a0 ret                            #; ra  = 0x80001ab4, goto 0x80001ab4
       0     4356        M 0x80001ab4 addi    s0, s0, 1              #; s0  = 0x80003cc8, (wrb) s0  <-- 0x80003cc9
       0     4357        M 0x80001ab8 addi    s10, s10, 1            #; s10 = 0x80003cca, (wrb) s10 <-- 0x80003ccb
       0     4358        M 0x80001abc mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     4359        M 0x80001ac0 lbu     a0, 0(s0)              #; s0  = 0x80003cc9, a0  <~~ Byte[0x80003cc9]
       0     4370        M                                           #; (lsu) a0  <-- 114
       0     4371        M 0x80001ac4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80001a9c
       0     4372        M 0x80001a9c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4375        M 0x80001aa0 mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     4376        M 0x80001aa4 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     4377        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4378        M 0x80001aac addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     4379        M 0x80001ab0 jalr    s2                     #; s2  = 0x800025f8, (wrb) ra  <-- 0x80001ab4, goto 0x800025f8
       0     4382        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4383        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4385        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4386        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     4387        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     4388        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4391        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4392        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     4393        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4404        M                                           #; (lsu) a4  <-- 4
       0     4405        M 0x80002618 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     4406        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 4, (wrb) a4  <-- 0x80004018
       0     4407        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 5 ~~> Word[0x80004014]
       0     4408        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004018, 114 ~~> Byte[0x80004060]
       0     4409        M 0x80002628 addi    a5, a0, -10            #; a0  = 114, (wrb) a5  <-- 104
       0     4410        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4411        M 0x80002630 snez    a0, a5                 #; a5  = 104, (wrb) a0  <-- 1
       0     4430        M                                           #; (lsu) a4  <-- 5
       0     4431        M 0x80002634 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     4432        M 0x80002638 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     4433        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4434        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     4439        M 0x800026a0 ret                            #; ra  = 0x80001ab4, goto 0x80001ab4
       0     4444        M 0x80001ab4 addi    s0, s0, 1              #; s0  = 0x80003cc9, (wrb) s0  <-- 0x80003cca
       0     4445        M 0x80001ab8 addi    s10, s10, 1            #; s10 = 0x80003ccb, (wrb) s10 <-- 0x80003ccc
       0     4446        M 0x80001abc mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     4447        M 0x80001ac0 lbu     a0, 0(s0)              #; s0  = 0x80003cca, a0  <~~ Byte[0x80003cca]
       0     4458        M                                           #; (lsu) a0  <-- 32
       0     4459        M 0x80001ac4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80001a9c
       0     4460        M 0x80001a9c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4463        M 0x80001aa0 mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     4464        M 0x80001aa4 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     4465        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4466        M 0x80001aac addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     4467        M 0x80001ab0 jalr    s2                     #; s2  = 0x800025f8, (wrb) ra  <-- 0x80001ab4, goto 0x800025f8
       0     4470        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4471        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4473        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4474        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     4475        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     4476        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4479        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4480        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     4481        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4492        M                                           #; (lsu) a4  <-- 5
       0     4493        M 0x80002618 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     4494        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 5, (wrb) a4  <-- 0x80004019
       0     4495        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 6 ~~> Word[0x80004014]
       0     4496        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004019, 32 ~~> Byte[0x80004061]
       0     4497        M 0x80002628 addi    a5, a0, -10            #; a0  = 32, (wrb) a5  <-- 22
       0     4498        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4499        M 0x80002630 snez    a0, a5                 #; a5  = 22, (wrb) a0  <-- 1
       0     4518        M                                           #; (lsu) a4  <-- 6
       0     4519        M 0x80002634 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     4520        M 0x80002638 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     4521        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4522        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     4527        M 0x800026a0 ret                            #; ra  = 0x80001ab4, goto 0x80001ab4
       0     4532        M 0x80001ab4 addi    s0, s0, 1              #; s0  = 0x80003cca, (wrb) s0  <-- 0x80003ccb
       0     4533        M 0x80001ab8 addi    s10, s10, 1            #; s10 = 0x80003ccc, (wrb) s10 <-- 0x80003ccd
       0     4534        M 0x80001abc mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     4535        M 0x80001ac0 lbu     a0, 0(s0)              #; s0  = 0x80003ccb, a0  <~~ Byte[0x80003ccb]
       0     4546        M                                           #; (lsu) a0  <-- 61
       0     4547        M 0x80001ac4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80001a9c
       0     4548        M 0x80001a9c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     4551        M 0x80001aa0 mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     4552        M 0x80001aa4 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     4553        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4554        M 0x80001aac addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     4555        M 0x80001ab0 jalr    s2                     #; s2  = 0x800025f8, (wrb) ra  <-- 0x80001ab4, goto 0x800025f8
       0     4558        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     4559        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4561        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4562        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     4563        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     4564        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4567        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4568        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     4569        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4580        M                                           #; (lsu) a4  <-- 6
       0     4581        M 0x80002618 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     4582        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 6, (wrb) a4  <-- 0x8000401a
       0     4583        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 7 ~~> Word[0x80004014]
       0     4584        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x8000401a, 61 ~~> Byte[0x80004062]
       0     4585        M 0x80002628 addi    a5, a0, -10            #; a0  = 61, (wrb) a5  <-- 51
       0     4586        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4587        M 0x80002630 snez    a0, a5                 #; a5  = 51, (wrb) a0  <-- 1
       0     4606        M                                           #; (lsu) a4  <-- 7
       0     4607        M 0x80002634 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     4608        M 0x80002638 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     4609        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4610        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     4615        M 0x800026a0 ret                            #; ra  = 0x80001ab4, goto 0x80001ab4
       0     4620        M 0x80001ab4 addi    s0, s0, 1              #; s0  = 0x80003ccb, (wrb) s0  <-- 0x80003ccc
       0     4621        M 0x80001ab8 addi    s10, s10, 1            #; s10 = 0x80003ccd, (wrb) s10 <-- 0x80003cce
       0     4622        M 0x80001abc mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     4623        M 0x80001ac0 lbu     a0, 0(s0)              #; s0  = 0x80003ccc, a0  <~~ Byte[0x80003ccc]
       0     4634        M                                           #; (lsu) a0  <-- 32
       0     4635        M 0x80001ac4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80001a9c
       0     4636        M 0x80001a9c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4639        M 0x80001aa0 mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     4640        M 0x80001aa4 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     4641        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4642        M 0x80001aac addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     4643        M 0x80001ab0 jalr    s2                     #; s2  = 0x800025f8, (wrb) ra  <-- 0x80001ab4, goto 0x800025f8
       0     4646        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4647        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4649        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4650        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     4651        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     4652        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4655        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4656        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     4657        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4668        M                                           #; (lsu) a4  <-- 7
       0     4669        M 0x80002618 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     4670        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 7, (wrb) a4  <-- 0x8000401b
       0     4671        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 8 ~~> Word[0x80004014]
       0     4672        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x8000401b, 32 ~~> Byte[0x80004063]
       0     4673        M 0x80002628 addi    a5, a0, -10            #; a0  = 32, (wrb) a5  <-- 22
       0     4674        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     4675        M 0x80002630 snez    a0, a5                 #; a5  = 22, (wrb) a0  <-- 1
       0     4694        M                                           #; (lsu) a4  <-- 8
       0     4695        M 0x80002634 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     4696        M 0x80002638 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     4697        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4698        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     4703        M 0x800026a0 ret                            #; ra  = 0x80001ab4, goto 0x80001ab4
       0     4708        M 0x80001ab4 addi    s0, s0, 1              #; s0  = 0x80003ccc, (wrb) s0  <-- 0x80003ccd
       0     4709        M 0x80001ab8 addi    s10, s10, 1            #; s10 = 0x80003cce, (wrb) s10 <-- 0x80003ccf
       0     4710        M 0x80001abc mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     4711        M 0x80001ac0 lbu     a0, 0(s0)              #; s0  = 0x80003ccd, a0  <~~ Byte[0x80003ccd]
       0     4722        M                                           #; (lsu) a0  <-- 37
       0     4723        M 0x80001ac4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80001a9c
       0     4724        M 0x80001a9c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80001acc
       0     4725        M 0x80001acc li      s0, 0                  #; (wrb) s0  <-- 0
       0     4738        M 0x80001ad0 j       pc + 0x10              #; goto 0x80001ae0
       0     4750        M 0x80001ae0 lbu     a0, -1(s10)            #; s10 = 0x80003ccf, a0  <~~ Byte[0x80003cce]
       0     4761        M                                           #; (lsu) a0  <-- 102
       0     4762        M 0x80001ae4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     4763        M 0x80001ae8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80001b20
       0     4775        M 0x80001b20 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     4776        M 0x80001b24 li      a3, 9                  #; (wrb) a3  <-- 9
       0     4777        M 0x80001b28 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     4778        M 0x80001b2c addi    a1, s10, -1            #; s10 = 0x80003ccf, (wrb) a1  <-- 0x80003cce
       0     4787        M 0x80001b30 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80001bac
       0     4810        M 0x80001bac li      a2, 42                 #; (wrb) a2  <-- 42
       0     4822        M 0x80001bb0 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80001c00
       0     4845        M 0x80001c00 li      s6, 0                  #; (wrb) s6  <-- 0
       0     4846        M 0x80001c04 mv      s10, a1                #; a1  = 0x80003cce, (wrb) s10 <-- 0x80003cce
       0     4847        M 0x80001c08 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     4848        M 0x80001c0c li      s7, 0                  #; (wrb) s7  <-- 0
       0     4868        M 0x80001c10 j       pc + 0xc               #; goto 0x80001c1c
       0     4869        M 0x80001c1c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     4881        M 0x80001c20 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     4882        M 0x80001c24 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     4883        M 0x80001c28 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     4884        M 0x80001c2c li      a2, 9                  #; (wrb) a2  <-- 9
       0     4893        M 0x80001c30 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80001c94
       0     4916        M 0x80001c94 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     4917        M 0x80001c98 li      a2, 83                 #; (wrb) a2  <-- 83
       0     4918        M 0x80001c9c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     4928        M 0x80001ca0 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     4929        M 0x80001ca4 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80003ca4
       0     4930        M 0x80001ca8 addi    a2, a2, 160            #; a2  = 0x80003ca4, (wrb) a2  <-- 0x80003d44
       0     4931        M 0x80001cac li      s8, 16                 #; (wrb) s8  <-- 16
       0     4940        M 0x80001cb0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003d44, (wrb) a1  <-- 0x80003e48
       0     4941        M 0x80001cb4 lw      a2, 0(a1)              #; a1  = 0x80003e48, a2  <~~ Word[0x80003e48]
       0     4942        M 0x80001cb8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4952        M                                           #; (lsu) a2  <-- 0x80001cec
       0     4953        M 0x80001cbc jr      a2                     #; a2  = 0x80001cec, goto 0x80001cec
       0     4965        M 0x80001cec li      a1, 70                 #; (wrb) a1  <-- 70
       0     4977        M 0x80001cf0 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80001cf8
       0     4978        M 0x80001cf8 addi    a0, s3, 7              #; s3  = 0x0011fc24, (wrb) a0  <-- 0x0011fc2b
       0     4979        M 0x80001cfc mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     4989        M 0x80001d00 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4990        M 0x80001d04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4991        M 0x80001d08 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     4992        M 0x80001d0c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     5001        M 0x80001d10 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     5002        M 0x80001d14 andi    a0, a0, -8             #; a0  = 0x0011fc2b, (wrb) a0  <-- 0x0011fc28
       0     5004        M 0x80001d1c addi    s3, a0, 8              #; a0  = 0x0011fc28, (wrb) s3  <-- 0x0011fc30
       0     5005        M 0x80001d18 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fc28]
       0     5006        M                                           #; (f:lsu) fa0  <-- 0.0
       0     5013        M 0x80001d20 mv      a0, s2                 #; s2  = 0x800025f8, (wrb) a0  <-- 0x800025f8
       0     5014        M 0x80001d24 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002d24
       0     5015        M 0x80001d28 jalr    ra, ra, -1660          #; ra  = 0x80002d24, (wrb) ra  <-- 0x80001d2c, goto 0x800026a8
       0     5027        M 0x800026a8 addi    sp, sp, -112           #; sp  = 0x0011fba0, (wrb) sp  <-- 0x0011fb30
       0     5028        M 0x800026ac sw      ra, 108(sp)            #; sp  = 0x0011fb30, 0x80001d2c ~~> Word[0x0011fb9c]
       0     5030        M 0x800026b0 sw      s0, 104(sp)            #; sp  = 0x0011fb30, 0 ~~> Word[0x0011fb98]
       0     5031        M 0x800026b4 sw      s1, 100(sp)            #; sp  = 0x0011fb30, 8 ~~> Word[0x0011fb94]
       0     5032        M 0x800026b8 sw      s2, 96(sp)             #; sp  = 0x0011fb30, 0x800025f8 ~~> Word[0x0011fb90]
       0     5033        M 0x800026bc sw      s3, 92(sp)             #; sp  = 0x0011fb30, 0x0011fc30 ~~> Word[0x0011fb8c]
       0     5042        M 0x800026c0 sw      s4, 88(sp)             #; sp  = 0x0011fb30, 0x0011fc17 ~~> Word[0x0011fb88]
       0     5043        M 0x800026c4 sw      s5, 84(sp)             #; sp  = 0x0011fb30, -1 ~~> Word[0x0011fb84]
       0     5044        M 0x800026c8 sw      s6, 80(sp)             #; sp  = 0x0011fb30, 0 ~~> Word[0x0011fb80]
       0     5045        M 0x800026cc sw      s7, 76(sp)             #; sp  = 0x0011fb30, 0 ~~> Word[0x0011fb7c]
       0     5054        M 0x800026d0 sw      s8, 72(sp)             #; sp  = 0x0011fb30, 16 ~~> Word[0x0011fb78]
       0     5055        M 0x800026d4 sw      s9, 68(sp)             #; sp  = 0x0011fb30, 8 ~~> Word[0x0011fb74]
       0     5056        M 0x800026d8 sw      s10, 64(sp)            #; sp  = 0x0011fb30, 0x80003cce ~~> Word[0x0011fb70]
       0     5059        M 0x800026dc fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fb68]
       0     5068        M 0x800026e8 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800046e8
                         M 0x800026e0 fsd     fs1, 48(sp)            #; 11.0 ~~> Doub[0x0011fb60]
       0     5069        M 0x800026ec addi    s1, s1, -1920          #; s1  = 0x800046e8, (wrb) s1  <-- 0x80003f68
                         M 0x800026e4 fsd     fs2, 40(sp)            #; 94.0 ~~> Doub[0x0011fb58]
       0     5078        M 0x800026f0 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     5079        M 0x800026f4 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     5080        M 0x800026f8 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     5081        M 0x800026fc mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     5090        M 0x80002700 mv      s6, a1                 #; a1  = 0x0011fc17, (wrb) s6  <-- 0x0011fc17
       0     5091        M 0x80002704 mv      s7, a0                 #; a0  = 0x800025f8, (wrb) s7  <-- 0x800025f8
       0     5094        M 0x80002708 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003f68]
       0     5103        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5104        M 0x8000270c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     5106        M                                           #; (acc) a6  <-- 0x0e049863
       0     5107        M 0x80002710 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80002800
       0     5125        M 0x80002800 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003800
       0     5126        M 0x80002804 addi    a0, a0, 1904           #; a0  = 0x80003800, (wrb) a0  <-- 0x80003f70
       0     5129        M 0x80002808 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     5130        M 0x8000280c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003f70], (f:fpu) fs0  <-- 0.0
       0     5139        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5140        M 0x80002810 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5142        M                                           #; (acc) t3  <-- 0x00051e63
       0     5143        M 0x80002814 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80002830
       0     5160        M 0x80002830 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003830
       0     5161        M 0x80002834 addi    a0, a0, 1864           #; a0  = 0x80003830, (wrb) a0  <-- 0x80003f78
       0     5162        M 0x80002838 auipc   a3, 0x1                #; (wrb) a3  <-- 0x80003838
       0     5163        M 0x8000283c addi    a3, a3, 1864           #; a3  = 0x80003838, (wrb) a3  <-- 0x80003f80
       0     5174        M 0x80002840 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003f78]
       0     5175        M 0x80002844 fld     ft1, 0(a3)             #; ft1  <~~ Doub[0x80003f80]
       0     5183        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     5184        M 0x80002848 fle.d   a5, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000, (f:lsu) ft1  <-- -1000000000.0000000
       0     5185        M 0x8000284c fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     5186        M                                           #; (acc) a0  <-- 0x00b7f533
       0     5187        M                                           #; (acc) a0  <-- 0x00b7f533
       0     5188        M 0x80002850 and     a0, a5, a1             #; a5  = 1, a1  = 1, (wrb) a0  <-- 1
       0     5189        M 0x80002854 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80002950
       0     5207        M 0x80002950 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     5208        M 0x80002954 li      s8, 6                  #; (wrb) s8  <-- 6
       0     5209        M 0x80002958 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80002960
       0     5219        M 0x80002960 li      a0, 10                 #; (wrb) a0  <-- 10
       0     5221        M 0x80002968 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800029a0
       0     5222        M 0x80002964 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     5223        M                                           #; (f:fpu) fs2  <-- 0.0
       0     5242        M 0x800029a0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     5243        M 0x800029a4 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     5244        M 0x800029a8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800039a8
       0     5245        M 0x800029ac addi    a1, a1, 1264           #; a1  = 0x800039a8, (wrb) a1  <-- 0x80003e98
       0     5255        M 0x800029b4 auipc   a5, 0x1                #; (wrb) a5  <-- 0x800039b4
                         M 0x800029b0 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     5256        M 0x800029b8 addi    a5, a5, 1492           #; a5  = 0x800039b4, (wrb) a5  <-- 0x80003f88
       0     5257        M 0x800029bc add     a0, a0, a1             #; a0  = 48, a1  = 0x80003e98, (wrb) a0  <-- 0x80003ec8
       0     5267        M 0x800029c0 fcvt.d.w ft0, s1               #; ac1  = 0
       0     5268        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5269        M 0x800029c4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003ec8]
       0     5270        M 0x800029c8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     5273        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5278        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     5279        M 0x800029cc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     5280        M 0x800029d0 fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x80003f88]
       0     5282        M                                           #; (f:fpu) ft2  <-- 0.0
       0     5283        M 0x800029d4 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     5285        M                                           #; (acc) gp  <-- 0xd21501d3
       0     5287        M 0x800029d8 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     5288        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5289        M 0x800029dc fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0, (f:lsu) ft0  <-- 0.5
       0     5292        M                                           #; (f:fpu) ft2  <-- 0.0
       0     5293        M 0x800029e0 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5296        M 0x800029e4 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80002a04
       0     5314        M 0x80002a04 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5316        M                                           #; (acc) s4  <-- 0x00059a63
       0     5317        M 0x80002a08 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80002a1c
       0     5326        M 0x80002a1c fcvt.d.w fs1, zero             #; ac1  = 0
       0     5327        M                                           #; (f:fpu) fs1  <-- 0.0
       0     5337        M 0x80002a20 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     5338        M 0x80002a24 addi    a1, sp, 8              #; sp  = 0x0011fb30, (wrb) a1  <-- 0x0011fb38
       0     5339        M 0x80002a28 li      t0, 32                 #; (wrb) t0  <-- 32
       0     5340        M 0x80002a2c lui     a5, 0xccccd            #; (wrb) a5  <-- 0xccccd000
       0     5349        M 0x80002a30 li      a2, 0                  #; (wrb) a2  <-- 0
       0     5350        M 0x80002a34 li      a6, 10                 #; (wrb) a6  <-- 10
       0     5351        M 0x80002a38 li      a7, 9                  #; (wrb) a7  <-- 9
       0     5352        M 0x80002a3c add     t1, a1, s0             #; a1  = 0x0011fb38, s0  = 0, (wrb) t1  <-- 0x0011fb38
       0     5361        M 0x80002a40 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     5362        M 0x80002a44 addi    t2, a5, -819           #; a5  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     5363        M 0x80002a48 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     5364        M 0x80002a4c mulhu   a5, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     5373        M 0x80002a50 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     5374        M 0x80002a54 srli    a0, a5, 3              #; a5  = 0, (wrb) a0  <-- 0
       0     5375        M 0x80002a58 add     a5, t1, a2             #; t1  = 0x0011fb38, a2  = 0, (wrb) a5  <-- 0x0011fb38
       0     5376        M 0x80002a5c addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     5385        M 0x80002a60 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     5388        M                                           #; (acc) a3  <-- 0x40d586b3
       0     5389        M 0x80002a64 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     5390        M 0x80002a68 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     5391        M 0x80002a6c sb      a3, 0(a5)              #; a5  = 0x0011fb38, 48 ~~> Byte[0x0011fb38]
       0     5397        M 0x80002a70 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     5398        M 0x80002a74 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     5399        M 0x80002a78 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     5400        M 0x80002a7c li      a3, 30                 #; (wrb) a3  <-- 30
       0     5410        M 0x80002a80 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     5411        M 0x80002a84 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     5412        M 0x80002a88 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     5413        M 0x80002a8c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     5422        M 0x80002a90 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     5423        M 0x80002a94 addi    a0, sp, 8              #; sp  = 0x0011fb30, (wrb) a0  <-- 0x0011fb38
       0     5424        M 0x80002a98 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     5425        M 0x80002a9c li      a5, 31                 #; (wrb) a5  <-- 31
       0     5434        M 0x80002aa0 add     a0, a0, s0             #; a0  = 0x0011fb38, s0  = 0, (wrb) a0  <-- 0x0011fb38
       0     5435        M 0x80002aa4 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     5436        M 0x80002aa8 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     5437        M 0x80002aac sub     a3, a5, s0             #; a5  = 31, s0  = 1, (wrb) a3  <-- 30
       0     5446        M 0x80002ab0 add     a0, a0, a2             #; a0  = 0x0011fb38, a2  = 1, (wrb) a0  <-- 0x0011fb39
       0     5447        M 0x80002ab4 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     5448        M 0x80002ab8 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80002ac0
       0     5458        M 0x80002ac0 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     5459        M 0x80002ac4 li      a1, 48                 #; (wrb) a1  <-- 48
       0     5460        M 0x80002ac8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000ac8
       0     5461        M 0x80002acc jalr    ra, ra, -1392          #; ra  = 0x80000ac8, (wrb) ra  <-- 0x80002ad0, goto 0x80000558
       0     5481        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     5482        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fb39, (wrb) a4  <-- 0x0011fb39
       0     5493        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     5516        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     5528        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     5529        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     5530        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     5531        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     5551        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fb39, 48 ~~> Byte[0x0011fb3d]
       0     5552        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fb39, 48 ~~> Byte[0x0011fb3c]
       0     5563        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fb39, 48 ~~> Byte[0x0011fb3b]
       0     5564        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fb39, 48 ~~> Byte[0x0011fb3a]
       0     5565        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fb39, 48 ~~> Byte[0x0011fb39]
       0     5566        M 0x800005ec ret                            #; ra  = 0x80002ad0, goto 0x80002ad0
       0     5577        M 0x80002ad0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5578        M 0x80002ad4 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     5579        M 0x80002ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     5580        M 0x80002adc addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5589        M 0x80002ae0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     5590        M 0x80002ae4 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     5591        M 0x80002ae8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5592        M 0x80002aec bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80002ad4
       0     5593        M 0x80002ad4 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     5594        M 0x80002ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     5595        M 0x80002adc addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     5596        M 0x80002ae0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     5597        M 0x80002ae4 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     5598        M 0x80002ae8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5599        M 0x80002aec bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80002ad4
       0     5600        M 0x80002ad4 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     5601        M 0x80002ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     5602        M 0x80002adc addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     5603        M 0x80002ae0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     5604        M 0x80002ae4 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     5605        M 0x80002ae8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5606        M 0x80002aec bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80002ad4
       0     5607        M 0x80002ad4 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     5608        M 0x80002ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     5609        M 0x80002adc addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     5610        M 0x80002ae0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     5611        M 0x80002ae4 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     5612        M 0x80002ae8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5613        M 0x80002aec bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80002ad4
       0     5614        M 0x80002ad4 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     5615        M 0x80002ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     5616        M 0x80002adc addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     5617        M 0x80002ae0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     5618        M 0x80002ae4 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     5619        M 0x80002ae8 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     5620        M 0x80002aec bnez    a2, pc - 24            #; a2  = 0, not taken
       0     5632        M 0x80002af0 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     5633        M 0x80002af4 j       pc + 0x28              #; goto 0x80002b1c
       0     5644        M 0x80002b1c beqz    a1, pc + 28            #; a1  = 1, not taken
       0     5656        M 0x80002b20 addi    a1, sp, 8              #; sp  = 0x0011fb30, (wrb) a1  <-- 0x0011fb38
       0     5657        M 0x80002b24 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     5658        M 0x80002b28 li      a5, 46                 #; (wrb) a5  <-- 46
       0     5659        M 0x80002b2c add     a4, a1, a0             #; a1  = 0x0011fb38, a0  = 6, (wrb) a4  <-- 0x0011fb3e
       0     5668        M 0x80002b30 sb      a5, 0(a4)              #; a4  = 0x0011fb3e, 46 ~~> Byte[0x0011fb3e]
       0     5669        M 0x80002b34 j       pc + 0x8               #; goto 0x80002b3c
       0     5670        M 0x80002b3c li      a0, 32                 #; (wrb) a0  <-- 32
       0     5682        M 0x80002b40 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     5683        M 0x80002b44 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     5684        M 0x80002b48 li      t0, 32                 #; (wrb) t0  <-- 32
       0     5685        M 0x80002b4c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     5695        M 0x80002b54 li      a6, 10                 #; (wrb) a6  <-- 10
                         M 0x80002b50 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     5696        M 0x80002b58 addi    a3, sp, 8              #; sp  = 0x0011fb30, (wrb) a3  <-- 0x0011fb38
       0     5697        M 0x80002b5c li      a4, 18                 #; (wrb) a4  <-- 18
       0     5706        M 0x80002b60 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     5707        M 0x80002b64 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     5708        M 0x80002b68 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     5709        M 0x80002b6c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     5718        M 0x80002b70 add     s0, a3, s0             #; a3  = 0x0011fb38, s0  = 7, (wrb) s0  <-- 0x0011fb3f
       0     5719        M 0x80002b74 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     5720        M 0x80002b78 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     5721        M 0x80002b7c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     5730        M 0x80002b80 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     5731        M 0x80002b84 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     5734        M                                           #; (acc) a5  <-- 0x40f487b3
       0     5735        M 0x80002b88 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     5736        M 0x80002b8c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     5742        M 0x80002b90 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     5743        M 0x80002b94 sb      a5, 0(s0)              #; s0  = 0x0011fb3f, 48 ~~> Byte[0x0011fb3f]
       0     5744        M 0x80002b98 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     5745        M 0x80002b9c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     5757        M 0x80002ba0 j       pc + 0x8               #; goto 0x80002ba8
       0     5758        M 0x80002ba8 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     5759        M 0x80002bac li      a0, 1                  #; (wrb) a0  <-- 1
       0     5770        M 0x80002bb0 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002c1c
       0     5793        M 0x80002c1c li      a0, 31                 #; (wrb) a0  <-- 31
       0     5805        M 0x80002c20 bltu    a0, s8, pc + 68        #; a0  = 31, s8  = 8, not taken
       0     5806        M 0x80002c24 beqz    s9, pc + 16            #; s9  = 0, taken, goto 0x80002c34
       0     5817        M 0x80002c34 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     5818        M 0x80002c38 bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5819        M 0x80002c3c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     5829        M 0x80002c40 beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x80002c64
       0     5852        M 0x80002c64 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     5853        M 0x80002c68 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     5854        M 0x80002c6c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     5864        M 0x80002c70 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     5865        M 0x80002c74 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     5866        M 0x80002c78 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     5867        M 0x80002c7c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002ca8
       0     5887        M 0x80002ca8 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     5888        M 0x80002cac beqz    s8, pc + 56            #; s8  = 8, not taken
       0     5899        M 0x80002cb0 addi    s9, sp, 7              #; sp  = 0x0011fb30, (wrb) s9  <-- 0x0011fb37
       0     5900        M 0x80002cb4 add     a0, s9, s8             #; s9  = 0x0011fb37, s8  = 8, (wrb) a0  <-- 0x0011fb3f
       0     5901        M 0x80002cb8 mv      a1, s6                 #; s6  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     5902        M 0x80002cbc mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     5911        M 0x80002cc0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5912        M 0x80002cc4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     5913        M 0x80002cc8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     5914        M 0x80002ccc lbu     a0, 0(a0)              #; a0  = 0x0011fb3f, a0  <~~ Byte[0x0011fb3f]
       0     5917        M                                           #; (lsu) a0  <-- 48
       0     5923        M 0x80002cd0 jalr    s7                     #; s7  = 0x800025f8, (wrb) ra  <-- 0x80002cd4, goto 0x800025f8
       0     5926        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5927        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5929        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5930        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     5931        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     5932        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5935        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5936        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     5937        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     5948        M                                           #; (lsu) a4  <-- 8
       0     5949        M 0x80002618 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5950        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 8, (wrb) a4  <-- 0x8000401c
       0     5951        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 9 ~~> Word[0x80004014]
       0     5952        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x8000401c, 48 ~~> Byte[0x80004064]
       0     5953        M 0x80002628 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     5954        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     5955        M 0x80002630 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     5974        M                                           #; (lsu) a4  <-- 9
       0     5975        M 0x80002634 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     5976        M 0x80002638 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     5977        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5978        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     5983        M 0x800026a0 ret                            #; ra  = 0x80002cd4, goto 0x80002cd4
       0     5988        M 0x80002cd4 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     5989        M 0x80002cd8 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     5990        M 0x80002cdc bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80002cb4
       0     5991        M 0x80002cb4 add     a0, s9, s8             #; s9  = 0x0011fb37, s8  = 7, (wrb) a0  <-- 0x0011fb3e
       0     5992        M 0x80002cb8 mv      a1, s6                 #; s6  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     5993        M 0x80002cbc mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     5994        M 0x80002cc0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5995        M 0x80002cc4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     5996        M 0x80002cc8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     5997        M 0x80002ccc lbu     a0, 0(a0)              #; a0  = 0x0011fb3e, a0  <~~ Byte[0x0011fb3e]
       0     5998        M 0x80002cd0 jalr    s7                     #; s7  = 0x800025f8, (wrb) ra  <-- 0x80002cd4, goto 0x800025f8
       0     6000        M                                           #; (lsu) a0  <-- 46
       0     6001        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     6002        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6004        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6005        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     6006        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     6007        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6010        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6011        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     6012        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6023        M                                           #; (lsu) a4  <-- 9
       0     6024        M 0x80002618 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     6025        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 9, (wrb) a4  <-- 0x8000401d
       0     6026        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 10 ~~> Word[0x80004014]
       0     6027        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x8000401d, 46 ~~> Byte[0x80004065]
       0     6028        M 0x80002628 addi    a5, a0, -10            #; a0  = 46, (wrb) a5  <-- 36
       0     6029        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6030        M 0x80002630 snez    a0, a5                 #; a5  = 36, (wrb) a0  <-- 1
       0     6049        M                                           #; (lsu) a4  <-- 10
       0     6050        M 0x80002634 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     6051        M 0x80002638 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     6052        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6053        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     6058        M 0x800026a0 ret                            #; ra  = 0x80002cd4, goto 0x80002cd4
       0     6063        M 0x80002cd4 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     6064        M 0x80002cd8 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     6065        M 0x80002cdc bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80002cb4
       0     6066        M 0x80002cb4 add     a0, s9, s8             #; s9  = 0x0011fb37, s8  = 6, (wrb) a0  <-- 0x0011fb3d
       0     6067        M 0x80002cb8 mv      a1, s6                 #; s6  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     6068        M 0x80002cbc mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     6069        M 0x80002cc0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6070        M 0x80002cc4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     6071        M 0x80002cc8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     6072        M 0x80002ccc lbu     a0, 0(a0)              #; a0  = 0x0011fb3d, a0  <~~ Byte[0x0011fb3d]
       0     6073        M 0x80002cd0 jalr    s7                     #; s7  = 0x800025f8, (wrb) ra  <-- 0x80002cd4, goto 0x800025f8
       0     6075        M                                           #; (lsu) a0  <-- 48
       0     6076        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6077        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6079        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6080        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     6081        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     6082        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6085        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6086        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     6087        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6098        M                                           #; (lsu) a4  <-- 10
       0     6099        M 0x80002618 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     6100        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 10, (wrb) a4  <-- 0x8000401e
       0     6101        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 11 ~~> Word[0x80004014]
       0     6102        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x8000401e, 48 ~~> Byte[0x80004066]
       0     6103        M 0x80002628 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     6104        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6105        M 0x80002630 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     6124        M                                           #; (lsu) a4  <-- 11
       0     6125        M 0x80002634 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     6126        M 0x80002638 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     6127        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6128        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     6133        M 0x800026a0 ret                            #; ra  = 0x80002cd4, goto 0x80002cd4
       0     6138        M 0x80002cd4 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     6139        M 0x80002cd8 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     6140        M 0x80002cdc bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80002cb4
       0     6141        M 0x80002cb4 add     a0, s9, s8             #; s9  = 0x0011fb37, s8  = 5, (wrb) a0  <-- 0x0011fb3c
       0     6142        M 0x80002cb8 mv      a1, s6                 #; s6  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     6143        M 0x80002cbc mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     6144        M 0x80002cc0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6145        M 0x80002cc4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     6146        M 0x80002cc8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     6147        M 0x80002ccc lbu     a0, 0(a0)              #; a0  = 0x0011fb3c, a0  <~~ Byte[0x0011fb3c]
       0     6148        M 0x80002cd0 jalr    s7                     #; s7  = 0x800025f8, (wrb) ra  <-- 0x80002cd4, goto 0x800025f8
       0     6150        M                                           #; (lsu) a0  <-- 48
       0     6151        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6152        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6154        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6155        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     6156        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     6157        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6160        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6161        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     6162        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6173        M                                           #; (lsu) a4  <-- 11
       0     6174        M 0x80002618 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     6175        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 11, (wrb) a4  <-- 0x8000401f
       0     6176        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 12 ~~> Word[0x80004014]
       0     6177        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x8000401f, 48 ~~> Byte[0x80004067]
       0     6178        M 0x80002628 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     6179        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6180        M 0x80002630 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     6199        M                                           #; (lsu) a4  <-- 12
       0     6200        M 0x80002634 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     6201        M 0x80002638 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     6202        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6203        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     6208        M 0x800026a0 ret                            #; ra  = 0x80002cd4, goto 0x80002cd4
       0     6213        M 0x80002cd4 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     6214        M 0x80002cd8 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     6215        M 0x80002cdc bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80002cb4
       0     6216        M 0x80002cb4 add     a0, s9, s8             #; s9  = 0x0011fb37, s8  = 4, (wrb) a0  <-- 0x0011fb3b
       0     6217        M 0x80002cb8 mv      a1, s6                 #; s6  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     6218        M 0x80002cbc mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     6219        M 0x80002cc0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6220        M 0x80002cc4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     6221        M 0x80002cc8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     6222        M 0x80002ccc lbu     a0, 0(a0)              #; a0  = 0x0011fb3b, a0  <~~ Byte[0x0011fb3b]
       0     6223        M 0x80002cd0 jalr    s7                     #; s7  = 0x800025f8, (wrb) ra  <-- 0x80002cd4, goto 0x800025f8
       0     6225        M                                           #; (lsu) a0  <-- 48
       0     6226        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6227        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6229        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6230        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     6231        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     6232        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6235        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6236        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     6237        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6248        M                                           #; (lsu) a4  <-- 12
       0     6249        M 0x80002618 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     6250        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 12, (wrb) a4  <-- 0x80004020
       0     6251        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 13 ~~> Word[0x80004014]
       0     6252        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004020, 48 ~~> Byte[0x80004068]
       0     6253        M 0x80002628 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     6254        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6255        M 0x80002630 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     6274        M                                           #; (lsu) a4  <-- 13
       0     6275        M 0x80002634 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     6276        M 0x80002638 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     6277        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6278        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     6283        M 0x800026a0 ret                            #; ra  = 0x80002cd4, goto 0x80002cd4
       0     6288        M 0x80002cd4 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     6289        M 0x80002cd8 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     6290        M 0x80002cdc bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80002cb4
       0     6291        M 0x80002cb4 add     a0, s9, s8             #; s9  = 0x0011fb37, s8  = 3, (wrb) a0  <-- 0x0011fb3a
       0     6292        M 0x80002cb8 mv      a1, s6                 #; s6  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     6293        M 0x80002cbc mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     6294        M 0x80002cc0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6295        M 0x80002cc4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     6296        M 0x80002cc8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     6297        M 0x80002ccc lbu     a0, 0(a0)              #; a0  = 0x0011fb3a, a0  <~~ Byte[0x0011fb3a]
       0     6298        M 0x80002cd0 jalr    s7                     #; s7  = 0x800025f8, (wrb) ra  <-- 0x80002cd4, goto 0x800025f8
       0     6300        M                                           #; (lsu) a0  <-- 48
       0     6301        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6302        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6304        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6305        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     6306        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     6307        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6310        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6311        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     6312        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6323        M                                           #; (lsu) a4  <-- 13
       0     6324        M 0x80002618 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     6325        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 13, (wrb) a4  <-- 0x80004021
       0     6326        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 14 ~~> Word[0x80004014]
       0     6327        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004021, 48 ~~> Byte[0x80004069]
       0     6328        M 0x80002628 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     6329        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6330        M 0x80002630 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     6349        M                                           #; (lsu) a4  <-- 14
       0     6350        M 0x80002634 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     6351        M 0x80002638 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     6352        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6353        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     6358        M 0x800026a0 ret                            #; ra  = 0x80002cd4, goto 0x80002cd4
       0     6363        M 0x80002cd4 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     6364        M 0x80002cd8 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     6365        M 0x80002cdc bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80002cb4
       0     6366        M 0x80002cb4 add     a0, s9, s8             #; s9  = 0x0011fb37, s8  = 2, (wrb) a0  <-- 0x0011fb39
       0     6367        M 0x80002cb8 mv      a1, s6                 #; s6  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     6368        M 0x80002cbc mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     6369        M 0x80002cc0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6370        M 0x80002cc4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     6371        M 0x80002cc8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     6372        M 0x80002ccc lbu     a0, 0(a0)              #; a0  = 0x0011fb39, a0  <~~ Byte[0x0011fb39]
       0     6373        M 0x80002cd0 jalr    s7                     #; s7  = 0x800025f8, (wrb) ra  <-- 0x80002cd4, goto 0x800025f8
       0     6375        M                                           #; (lsu) a0  <-- 48
       0     6376        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6377        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6379        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6380        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     6381        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     6382        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6385        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6386        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     6387        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6398        M                                           #; (lsu) a4  <-- 14
       0     6399        M 0x80002618 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     6400        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 14, (wrb) a4  <-- 0x80004022
       0     6401        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 15 ~~> Word[0x80004014]
       0     6402        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004022, 48 ~~> Byte[0x8000406a]
       0     6403        M 0x80002628 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     6404        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6405        M 0x80002630 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     6424        M                                           #; (lsu) a4  <-- 15
       0     6425        M 0x80002634 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     6426        M 0x80002638 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     6427        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6428        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     6433        M 0x800026a0 ret                            #; ra  = 0x80002cd4, goto 0x80002cd4
       0     6438        M 0x80002cd4 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     6439        M 0x80002cd8 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     6440        M 0x80002cdc bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80002cb4
       0     6441        M 0x80002cb4 add     a0, s9, s8             #; s9  = 0x0011fb37, s8  = 1, (wrb) a0  <-- 0x0011fb38
       0     6442        M 0x80002cb8 mv      a1, s6                 #; s6  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     6443        M 0x80002cbc mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     6444        M 0x80002cc0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6445        M 0x80002cc4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     6446        M 0x80002cc8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     6447        M 0x80002ccc lbu     a0, 0(a0)              #; a0  = 0x0011fb38, a0  <~~ Byte[0x0011fb38]
       0     6448        M 0x80002cd0 jalr    s7                     #; s7  = 0x800025f8, (wrb) ra  <-- 0x80002cd4, goto 0x800025f8
       0     6450        M                                           #; (lsu) a0  <-- 48
       0     6451        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6452        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6454        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6455        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     6456        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     6457        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6460        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6461        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     6462        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6473        M                                           #; (lsu) a4  <-- 15
       0     6474        M 0x80002618 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     6475        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 15, (wrb) a4  <-- 0x80004023
       0     6476        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 16 ~~> Word[0x80004014]
       0     6477        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004023, 48 ~~> Byte[0x8000406b]
       0     6478        M 0x80002628 addi    a5, a0, -10            #; a0  = 48, (wrb) a5  <-- 38
       0     6479        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6480        M 0x80002630 snez    a0, a5                 #; a5  = 38, (wrb) a0  <-- 1
       0     6499        M                                           #; (lsu) a4  <-- 16
       0     6500        M 0x80002634 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     6501        M 0x80002638 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     6502        M 0x8000263c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6503        M 0x80002640 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800026a0
       0     6508        M 0x800026a0 ret                            #; ra  = 0x80002cd4, goto 0x80002cd4
       0     6513        M 0x80002cd4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     6514        M 0x80002cd8 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     6515        M 0x80002cdc bnez    s10, pc - 40           #; s10 = 0, not taken
       0     6527        M 0x80002ce0 j       pc + 0x8               #; goto 0x80002ce8
       0     6528        M 0x80002ce8 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     6529        M 0x80002cec xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     6540        M 0x80002cf0 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     6541        M 0x80002cf4 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6542        M 0x80002cf8 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     6543        M 0x80002cfc bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002d2c
       0     6563        M 0x80002d2c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     6575        M 0x80002d30 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     6578        M 0x80002d34 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fb58]
       0     6579        M 0x80002d38 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fb60], (f:lsu) fs2  <-- 94.0
       0     6580        M 0x80002d3c fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fb68], (f:lsu) fs1  <-- 11.0
       0     6581        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6587        M 0x80002d40 lw      s10, 64(sp)            #; sp  = 0x0011fb30, s10 <~~ Word[0x0011fb70]
       0     6590        M                                           #; (lsu) s10 <-- 0x80003cce
       0     6591        M 0x80002d44 lw      s9, 68(sp)             #; sp  = 0x0011fb30, s9  <~~ Word[0x0011fb74]
       0     6594        M                                           #; (lsu) s9  <-- 8
       0     6595        M 0x80002d48 lw      s8, 72(sp)             #; sp  = 0x0011fb30, s8  <~~ Word[0x0011fb78]
       0     6598        M                                           #; (lsu) s8  <-- 16
       0     6599        M 0x80002d4c lw      s7, 76(sp)             #; sp  = 0x0011fb30, s7  <~~ Word[0x0011fb7c]
       0     6602        M                                           #; (lsu) s7  <-- 0
       0     6603        M 0x80002d50 lw      s6, 80(sp)             #; sp  = 0x0011fb30, s6  <~~ Word[0x0011fb80]
       0     6606        M                                           #; (lsu) s6  <-- 0
       0     6607        M 0x80002d54 lw      s5, 84(sp)             #; sp  = 0x0011fb30, s5  <~~ Word[0x0011fb84]
       0     6610        M                                           #; (lsu) s5  <-- -1
       0     6611        M 0x80002d58 lw      s4, 88(sp)             #; sp  = 0x0011fb30, s4  <~~ Word[0x0011fb88]
       0     6614        M                                           #; (lsu) s4  <-- 0x0011fc17
       0     6615        M 0x80002d5c lw      s3, 92(sp)             #; sp  = 0x0011fb30, s3  <~~ Word[0x0011fb8c]
       0     6618        M                                           #; (lsu) s3  <-- 0x0011fc30
       0     6619        M 0x80002d60 lw      s2, 96(sp)             #; sp  = 0x0011fb30, s2  <~~ Word[0x0011fb90]
       0     6622        M                                           #; (lsu) s2  <-- 0x800025f8
       0     6623        M 0x80002d64 lw      s1, 100(sp)            #; sp  = 0x0011fb30, s1  <~~ Word[0x0011fb94]
       0     6626        M                                           #; (lsu) s1  <-- 8
       0     6627        M 0x80002d68 lw      s0, 104(sp)            #; sp  = 0x0011fb30, s0  <~~ Word[0x0011fb98]
       0     6630        M                                           #; (lsu) s0  <-- 0
       0     6631        M 0x80002d6c lw      ra, 108(sp)            #; sp  = 0x0011fb30, ra  <~~ Word[0x0011fb9c]
       0     6632        M 0x80002d70 addi    sp, sp, 112            #; sp  = 0x0011fb30, (wrb) sp  <-- 0x0011fba0
       0     6634        M                                           #; (lsu) ra  <-- 0x80001d2c
       0     6635        M 0x80002d74 ret                            #; ra  = 0x80001d2c, goto 0x80001d2c
       0     6647        M 0x80001d2c j       pc + 0x7bc             #; goto 0x800024e8
       0     6650        M 0x800024e8 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     6651        M 0x800024ec li      s6, 37                 #; (wrb) s6  <-- 37
       0     6662        M 0x800024f0 li      s7, 46                 #; (wrb) s7  <-- 46
       0     6663        M 0x800024f4 addi    s0, s10, 1             #; s10 = 0x80003cce, (wrb) s0  <-- 0x80003ccf
       0     6664        M 0x800024f8 j       pc - 0xa70             #; goto 0x80001a88
       0     6674        M 0x80001a88 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     6675        M 0x80001a8c addi    s10, s0, 2             #; s0  = 0x80003ccf, (wrb) s10 <-- 0x80003cd1
       0     6686        M 0x80001a90 li      s8, 10                 #; (wrb) s8  <-- 10
       0     6687        M 0x80001a94 lbu     a0, 0(s0)              #; s0  = 0x80003ccf, a0  <~~ Byte[0x80003ccf]
       0     6698        M                                           #; (lsu) a0  <-- 10
       0     6699        M 0x80001a98 beqz    a0, pc + 2820          #; a0  = 10, not taken
       0     6700        M 0x80001a9c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     6701        M 0x80001aa0 mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     6702        M 0x80001aa4 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     6703        M 0x80001aa8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6704        M 0x80001aac addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     6713        M 0x80001ab0 jalr    s2                     #; s2  = 0x800025f8, (wrb) ra  <-- 0x80001ab4, goto 0x800025f8
       0     6727        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     6728        M 0x800025fc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6730        M 0x80002600 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6731        M 0x80002604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004604
       0     6732        M 0x80002608 addi    a3, a3, -1520          #; a3  = 0x80004604, (wrb) a3  <-- 0x80004014
       0     6733        M 0x8000260c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6736        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6737        M 0x80002610 add     a1, a2, a3             #; a2  = 0, a3  = 0x80004014, (wrb) a1  <-- 0x80004014
       0     6738        M 0x80002614 lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6749        M                                           #; (lsu) a4  <-- 16
       0     6750        M 0x80002618 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     6751        M 0x8000261c add     a4, a1, a4             #; a1  = 0x80004014, a4  = 16, (wrb) a4  <-- 0x80004024
       0     6752        M 0x80002620 sw      a5, 0(a1)              #; a1  = 0x80004014, 17 ~~> Word[0x80004014]
       0     6753        M 0x80002624 sb      a0, 72(a4)             #; a4  = 0x80004024, 10 ~~> Byte[0x8000406c]
       0     6754        M 0x80002628 addi    a5, a0, -10            #; a0  = 10, (wrb) a5  <-- 0
       0     6755        M 0x8000262c lw      a4, 0(a1)              #; a1  = 0x80004014, a4  <~~ Word[0x80004014]
       0     6756        M 0x80002630 snez    a0, a5                 #; a5  = 0, (wrb) a0  <-- 0
       0     6775        M                                           #; (lsu) a4  <-- 17
       0     6776        M 0x80002634 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     6777        M 0x80002638 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     6778        M 0x8000263c and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     6779        M 0x80002640 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     6780        M 0x80002644 add     a0, a3, a2             #; a3  = 0x80004014, a2  = 0, (wrb) a0  <-- 0x80004014
       0     6781        M 0x80002648 li      a4, 64                 #; (wrb) a4  <-- 64
       0     6782        M 0x8000264c li      a5, 1                  #; (wrb) a5  <-- 1
       0     6783        M 0x80002650 addi    a2, a0, 72             #; a0  = 0x80004014, (wrb) a2  <-- 0x8000405c
       0     6784        M 0x80002654 sw      zero, 12(a0)           #; a0  = 0x80004014, 0 ~~> Word[0x80004020]
       0     6785        M 0x80002658 sw      a4, 8(a0)              #; a0  = 0x80004014, 64 ~~> Word[0x8000401c]
       0     6786        M 0x8000265c sw      zero, 20(a0)           #; a0  = 0x80004014, 0 ~~> Word[0x80004028]
       0     6795        M 0x80002660 sw      a5, 16(a0)             #; a0  = 0x80004014, 1 ~~> Word[0x80004024]
       0     6797        M 0x80002664 sw      zero, 28(a0)           #; a0  = 0x80004014, 0 ~~> Word[0x80004030]
       0     6798        M 0x80002668 addi    a4, a0, 8              #; a0  = 0x80004014, (wrb) a4  <-- 0x8000401c
       0     6799        M 0x8000266c auipc   a5, 0x2                #; (wrb) a5  <-- 0x8000466c
       0     6807        M 0x80002670 addi    a5, a5, -1900          #; a5  = 0x8000466c, (wrb) a5  <-- 0x80003f00
       0     6808        M 0x80002674 sw      a2, 24(a0)             #; a0  = 0x80004014, 0x8000405c ~~> Word[0x8000402c]
       0     6809        M 0x80002678 lw      a2, 0(a1)              #; a1  = 0x80004014, a2  <~~ Word[0x80004014]
       0     6811        M 0x8000267c sw      zero, 36(a0)           #; a0  = 0x80004014, 0 ~~> Word[0x80004038]
       0     6831        M                                           #; (lsu) a2  <-- 17
       0     6832        M 0x80002680 sw      a2, 32(a0)             #; a0  = 0x80004014, 17 ~~> Word[0x80004034]
       0     6833        M 0x80002684 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80004684
       0     6834        M 0x80002688 addi    a0, a0, -1860          #; a0  = 0x80004684, (wrb) a0  <-- 0x80003f40
       0     6835        M 0x8000268c sw      a4, 0(a5)              #; a5  = 0x80003f00, 0x8000401c ~~> Word[0x80003f00]
       0     6836        M 0x80002690 lw      a2, 0(a0)              #; a0  = 0x80003f40, a2  <~~ Word[0x80003f40]
       0     6861        M                                           #; (lsu) a2  <-- 0
       0     6862        M 0x80002694 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002690
       0     6863        M 0x80002690 lw      a2, 0(a0)              #; a0  = 0x80003f40, a2  <~~ Word[0x80003f40]
       0     6874        M                                           #; (lsu) a2  <-- 0
       0     6875        M 0x80002694 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002690
       0     6876        M 0x80002690 lw      a2, 0(a0)              #; a0  = 0x80003f40, a2  <~~ Word[0x80003f40]
       0     6887        M                                           #; (lsu) a2  <-- 0
       0     6888        M 0x80002694 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002690
       0     6889        M 0x80002690 lw      a2, 0(a0)              #; a0  = 0x80003f40, a2  <~~ Word[0x80003f40]
       0     6900        M                                           #; (lsu) a2  <-- 0
       0     6901        M 0x80002694 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002690
       0     6902        M 0x80002690 lw      a2, 0(a0)              #; a0  = 0x80003f40, a2  <~~ Word[0x80003f40]
       0     6913        M                                           #; (lsu) a2  <-- 1
       0     6914        M 0x80002694 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6915        M 0x80002698 sw      zero, 0(a0)            #; a0  = 0x80003f40, 0 ~~> Word[0x80003f40]
       0     6916        M 0x8000269c sw      zero, 0(a1)            #; a1  = 0x80004014, 0 ~~> Word[0x80004014]
       0     6918        M 0x800026a0 ret                            #; ra  = 0x80001ab4, goto 0x80001ab4
       0     6923        M 0x80001ab4 addi    s0, s0, 1              #; s0  = 0x80003ccf, (wrb) s0  <-- 0x80003cd0
       0     6924        M 0x80001ab8 addi    s10, s10, 1            #; s10 = 0x80003cd1, (wrb) s10 <-- 0x80003cd2
       0     6925        M 0x80001abc mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6926        M 0x80001ac0 lbu     a0, 0(s0)              #; s0  = 0x80003cd0, a0  <~~ Byte[0x80003cd0]
       0     6938        M                                           #; (lsu) a0  <-- 0
       0     6939        M 0x80001ac4 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6940        M 0x80001ac8 j       pc + 0xad4             #; goto 0x8000259c
       0     6952        M 0x8000259c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6964        M 0x800025a0 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800025a8
       0     6965        M 0x800025a8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6966        M 0x800025ac mv      a1, s4                 #; s4  = 0x0011fc17, (wrb) a1  <-- 0x0011fc17
       0     6976        M 0x800025b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6977        M 0x800025b4 jalr    s2                     #; s2  = 0x800025f8, (wrb) ra  <-- 0x800025b8, goto 0x800025f8
       0     6990        M 0x800025f8 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800026a0
       0     6995        M 0x800026a0 ret                            #; ra  = 0x800025b8, goto 0x800025b8
       0     6996        M 0x800025b8 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     6997        M 0x800025bc lw      s11, 60(sp)            #; sp  = 0x0011fba0, s11 <~~ Word[0x0011fbdc]
       0     7000        M                                           #; (lsu) s11 <-- 0
       0     7001        M 0x800025c0 lw      s10, 64(sp)            #; sp  = 0x0011fba0, s10 <~~ Word[0x0011fbe0]
       0     7004        M                                           #; (lsu) s10 <-- 0
       0     7005        M 0x800025c4 lw      s9, 68(sp)             #; sp  = 0x0011fba0, s9  <~~ Word[0x0011fbe4]
       0     7008        M                                           #; (lsu) s9  <-- 0
       0     7009        M 0x800025c8 lw      s8, 72(sp)             #; sp  = 0x0011fba0, s8  <~~ Word[0x0011fbe8]
       0     7012        M                                           #; (lsu) s8  <-- 0
       0     7013        M 0x800025cc lw      s7, 76(sp)             #; sp  = 0x0011fba0, s7  <~~ Word[0x0011fbec]
       0     7016        M                                           #; (lsu) s7  <-- 0
       0     7017        M 0x800025d0 lw      s6, 80(sp)             #; sp  = 0x0011fba0, s6  <~~ Word[0x0011fbf0]
       0     7020        M                                           #; (lsu) s6  <-- 0
       0     7021        M 0x800025d4 lw      s5, 84(sp)             #; sp  = 0x0011fba0, s5  <~~ Word[0x0011fbf4]
       0     7024        M                                           #; (lsu) s5  <-- 0
       0     7025        M 0x800025d8 lw      s4, 88(sp)             #; sp  = 0x0011fba0, s4  <~~ Word[0x0011fbf8]
       0     7028        M                                           #; (lsu) s4  <-- 0
       0     7029        M 0x800025dc lw      s3, 92(sp)             #; sp  = 0x0011fba0, s3  <~~ Word[0x0011fbfc]
       0     7032        M                                           #; (lsu) s3  <-- 0
       0     7033        M 0x800025e0 lw      s2, 96(sp)             #; sp  = 0x0011fba0, s2  <~~ Word[0x0011fc00]
       0     7036        M                                           #; (lsu) s2  <-- 0
       0     7037        M 0x800025e4 lw      s1, 100(sp)            #; sp  = 0x0011fba0, s1  <~~ Word[0x0011fc04]
       0     7040        M                                           #; (lsu) s1  <-- 0
       0     7041        M 0x800025e8 lw      s0, 104(sp)            #; sp  = 0x0011fba0, s0  <~~ Word[0x0011fc08]
       0     7044        M                                           #; (lsu) s0  <-- 0
       0     7045        M 0x800025ec lw      ra, 108(sp)            #; sp  = 0x0011fba0, ra  <~~ Word[0x0011fc0c]
       0     7046        M 0x800025f0 addi    sp, sp, 112            #; sp  = 0x0011fba0, (wrb) sp  <-- 0x0011fc10
       0     7048        M                                           #; (lsu) ra  <-- 0x800019f8
       0     7049        M 0x800025f4 ret                            #; ra  = 0x800019f8, goto 0x800019f8
       0     7061        M 0x800019f8 lw      ra, 12(sp)             #; sp  = 0x0011fc10, ra  <~~ Word[0x0011fc1c]
       0     7062        M 0x800019fc addi    sp, sp, 48             #; sp  = 0x0011fc10, (wrb) sp  <-- 0x0011fc40
       0     7064        M                                           #; (lsu) ra  <-- 0x8000195c
       0     7073        M 0x80001a00 ret                            #; ra  = 0x8000195c, goto 0x8000195c
       0     7096        M 0x8000195c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000395c
       0     7108        M 0x80001960 addi    a0, a0, 1540           #; a0  = 0x8000395c, (wrb) a0  <-- 0x80003f60
       0     7111        M 0x80001964 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003f60]
       0     7120        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     7121        M 0x80001968 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     7123        M                                           #; (acc) s9  <-- 0x2c813c87
                         M 0x8000196c fld     fs11, 696(sp)          #; fs11 <~~ Doub[0x0011fef8]
       0     7124        M 0x80001970 fld     fs10, 704(sp)          #; fs10 <~~ Doub[0x0011ff00], (f:lsu) fs11 <-- 0.0
       0     7125        M 0x80001974 fld     fs9, 712(sp)           #; fs9  <~~ Doub[0x0011ff08], (f:lsu) fs10 <-- 0.0
       0     7126        M 0x80001978 fld     fs8, 720(sp)           #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
       0     7127        M 0x8000197c fld     fs7, 728(sp)           #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
       0     7128        M                                           #; (f:lsu) fs7  <-- 0.0
       0     7134        M 0x80001980 fld     fs6, 736(sp)           #; fs6  <~~ Doub[0x0011ff20]
       0     7135        M 0x80001984 fld     fs5, 744(sp)           #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
       0     7136        M 0x80001988 fld     fs4, 752(sp)           #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
       0     7137        M 0x8000198c fld     fs3, 760(sp)           #; fs3  <~~ Doub[0x0011ff38], (f:lsu) fs4  <-- 0.0
       0     7138        M 0x80001990 fld     fs2, 768(sp)           #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
       0     7139        M 0x8000199c lw      ra, 796(sp)            #; sp  = 0x0011fc40, ra  <~~ Word[0x0011ff5c]
                         M 0x80001994 fld     fs1, 776(sp)           #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
       0     7140        M 0x800019a0 addi    sp, sp, 800            #; sp  = 0x0011fc40, (wrb) sp  <-- 0x0011ff60
                         M 0x80001998 fld     fs0, 784(sp)           #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
       0     7141        M                                           #; (f:lsu) fs0  <-- 0.0
       0     7143        M                                           #; (lsu) ra  <-- 0x80003a40
       0     7144        M 0x800019a4 ret                            #; ra  = 0x80003a40, goto 0x80003a40
       0     7163        M 0x80003a40 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     7164        M 0x80003a44 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003a44
       0     7165        M 0x80003a48 jalr    ra, ra, 524            #; ra  = 0x80003a44, (wrb) ra  <-- 0x80003a4c, goto 0x80003c50
       0     7186        M 0x80003c50 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     7187        M 0x80003c54 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80003a4c ~~> Word[0x0011ff5c]
       0     7188        M 0x80003c58 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003c58
       0     7189        M 0x80003c5c jalr    ra, ra, -1256          #; ra  = 0x80003c58, (wrb) ra  <-- 0x80003c60, goto 0x80003770
       0     7209        M 0x80003770 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7210        M 0x80003774 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7211        M 0x80003778 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7214        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7215        M 0x8000377c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7218        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7221        M 0x80003780 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     7222        M 0x80003784 ret                            #; ra  = 0x80003c60, goto 0x80003c60
       0     7224        M                                           #; (lsu) a0  <-- 0x00120190
       0     7225        M 0x80003c60 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     7235        M                                           #; (lsu) a0  <-- 0
       0     7236        M 0x80003c64 mv      zero, a0               #; a0  = 0
       0     7237        M 0x80003c68 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     7238        M 0x80003c6c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     7240        M                                           #; (lsu) ra  <-- 0x80003a4c
       0     7241        M 0x80003c70 ret                            #; ra  = 0x80003a4c, goto 0x80003a4c
       0     7244        M 0x80003a4c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     7248        M 0x80003a50 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003a50
       0     7249        M 0x80003a54 jalr    ra, ra, 556            #; ra  = 0x80003a50, (wrb) ra  <-- 0x80003a58, goto 0x80003c7c
       0     7250        M 0x80003c7c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     7251        M 0x80003c80 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     7252        M 0x80003c84 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80003a58 ~~> Word[0x0011ff5c]
       0     7253        M 0x80003c88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003c88
       0     7254        M 0x80003c8c jalr    ra, ra, -1336          #; ra  = 0x80003c88, (wrb) ra  <-- 0x80003c90, goto 0x80003750
       0     7267        M 0x80003750 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7268        M 0x80003754 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7269        M 0x80003758 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7270        M 0x8000375c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7273        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7279        M 0x80003760 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7282        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7283        M 0x80003764 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     7286        M                                           #; (lsu) a0  <-- 0
       0     7287        M 0x80003768 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     7288        M 0x8000376c ret                            #; ra  = 0x80003c90, goto 0x80003c90
       0     7289        M 0x80003c90 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     7292        M                                           #; (lsu) t0  <-- 0
       0     7293        M 0x80003c94 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     7294        M 0x80003c98 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     7295        M 0x80003c9c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     7296        M                                           #; (lsu) ra  <-- 0x80003a58
       0     7301        M 0x80003ca0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     7302        M 0x80003ca4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     7303        M 0x80003ca8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003ca8
       0     7304        M 0x80003cac addi    t1, t1, 600            #; t1  = 0x80003ca8, (wrb) t1  <-- 0x80003f00
       0     7312        M 0x80003cb0 sw      t0, 0(t1)              #; t1  = 0x80003f00, 1 ~~> Word[0x80003f00]
       0     7313        M 0x80003cb4 ret                            #; ra  = 0x80003a58, goto 0x80003a58
       0     7314        M 0x80003a58 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 7314):
snitch_loads                                   138
snitch_stores                                  142
fpss_stores                                     16
fpss_loads                                      24
snitch_avg_load_latency                       11.5
snitch_occupancy                            0.2044
snitch_fseq_rel_offloads                    0.3434
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.9973
fpss_avg_load_latency                       3.6667
fpss_occupancy                              0.1069
fpss_fpu_occupancy                          0.1004
fpss_fpu_rel_occupancy                      0.9385
cycles                                        7303
total_ipc                                   0.3114
