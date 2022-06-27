; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002780
      0x00001014 jalr    t0                     #; t0  = 0x80002780, (wrb) ra  <-- 4120, goto 0x80002780
; ?? (start.S:20)
      0x80002780 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003780
; ?? (start.S:21)
      0x80002784 addi    gp, gp, -248           #; gp  = 0x80003780, (wrb) gp  <-- 0x80003688
; ?? (start.S:28)
      0x80002788 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002788
      0x8000278c jalr    ra, ra, 964            #; ra  = 0x80002788, (wrb) ra  <-- 0x80002790, goto 0x80002b4c
; ?? (start_snitch.S:16)
      0x80002b4c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002b50 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002b54 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002b58 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002b5c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002b60 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002b64 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002b68 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002b6c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002b70 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002b74 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002b78 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002b7c ret                            #; ra  = 0x80002790, goto 0x80002790
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002790 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002794 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002798 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002798
      0x8000279c jalr    ra, ra, 1036           #; ra  = 0x80002798, (wrb) ra  <-- 0x800027a0, goto 0x80002ba4
; ?? (start_snitch.S:48)
      0x80002ba4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002ba8 ret                            #; ra  = 0x800027a0, goto 0x800027a0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x800027a0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x800027a4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x800027a8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x800027ac sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x800027b0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x800027b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027b4
      0x800027b8 addi    t0, t0, 1932           #; t0  = 0x800027b4, (wrb) t0  <-- 0x80002f40
; ?? (start.S:49)
      0x800027bc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800027bc
      0x800027c0 addi    t1, t1, 1928           #; t1  = 0x800027bc, (wrb) t1  <-- 0x80002f44
; ?? (start.S:50)
      0x800027c4 bge     t0, t1, pc + 16        #; t0  = 0x80002f40, t1  = 0x80002f44, not taken
; ?? (start.S:51)
      0x800027c8 sw      zero, 0(t0)            #; t0  = 0x80002f40, 0 ~~> Word[0x80002f40]
; ?? (start.S:52)
      0x800027cc addi    t0, t0, 4              #; t0  = 0x80002f40, (wrb) t0  <-- 0x80002f44
; ?? (start.S:53)
      0x800027d0 blt     t0, t1, pc - 8         #; t0  = 0x80002f44, t1  = 0x80002f44, not taken
; ?? (start.S:58)
      0x800027d4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x800027d8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x800027dc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x800027e0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x800027e4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x800027e8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x800027ec fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x800027f0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x800027f4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x800027f8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x800027fc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002800 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002804 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002808 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000280c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002810 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002814 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002818 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000281c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002820 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002824 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002828 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000282c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002830 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002834 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002838 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000283c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002840 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002844 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002848 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000284c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002850 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002854 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002858 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x8000285c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002860 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002864 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002868 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002868
      0x8000286c lw      t0, 900(t0)            #; t0  = 0x80002868, t0  <~~ Word[0x80002bec]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002870 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002874 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002878 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002878
      0x8000287c lw      t2, 880(t2)            #; t2  = 0x80002878, t2  <~~ Word[0x80002be8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002880 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002884 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002888 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x8000288c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002890 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002894 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002898 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x8000289c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x800028a0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028a0
      0x800028a4 addi    t0, t0, 1512           #; t0  = 0x800028a0, (wrb) t0  <-- 0x80002e88
; ?? (start.S:125)
      0x800028a8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028a8
      0x800028ac addi    t1, t1, 1504           #; t1  = 0x800028a8, (wrb) t1  <-- 0x80002e88
; ?? (start.S:126)
      0x800028b0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028b0
      0x800028b4 addi    t2, t2, 1496           #; t2  = 0x800028b0, (wrb) t2  <-- 0x80002e88
; ?? (start.S:127)
      0x800028b8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800028b8
      0x800028bc addi    t3, t3, 1504           #; t3  = 0x800028b8, (wrb) t3  <-- 0x80002e98
; ?? (start.S:128)
      0x800028c0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002e88, (wrb) sp  <-- 0x80122df8
; ?? (start.S:129)
      0x800028c4 sub     sp, sp, t1             #; sp  = 0x80122df8, t1  = 0x80002e88, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x800028c8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002e88, (wrb) sp  <-- 0x80122df8
; ?? (start.S:131)
      0x800028cc sub     sp, sp, t3             #; sp  = 0x80122df8, t3  = 0x80002e98, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x800028d0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x800028d4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x800028d8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x800028dc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x800028e0 bge     t0, t1, pc + 24        #; t0  = 0x80002e88, t1  = 0x80002e88, taken, goto 0x800028f8
; ?? (start.S:147)
      0x800028f8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028f8
      0x800028fc addi    t0, t0, 1424           #; t0  = 0x800028f8, (wrb) t0  <-- 0x80002e88
; ?? (start.S:148)
      0x80002900 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002900
      0x80002904 addi    t1, t1, 1432           #; t1  = 0x80002900, (wrb) t1  <-- 0x80002e98
; ?? (start.S:149)
      0x80002908 bge     t0, t1, pc + 20        #; t0  = 0x80002e88, t1  = 0x80002e98, not taken
; ?? (start.S:150)
      0x8000290c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002910 addi    t0, t0, 4              #; t0  = 0x80002e88, (wrb) t0  <-- 0x80002e8c
; ?? (start.S:152)
      0x80002914 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002918 blt     t0, t2, pc - 12        #; t0  = 0x80002e8c, t2  = 0x80002e88, not taken
; ?? (start.S:158)
      0x8000291c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002920 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002924 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002928 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000292c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002930 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002934 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002934
      0x80002938 jalr    ra, ra, -1056          #; ra  = 0x80002934, (wrb) ra  <-- 0x8000293c, goto 0x80002514
; _snrt_init_team (start.c:49)
      0x80002514 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002518 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x8000251c lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002520 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002524 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002528 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x8000252c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002530 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002534 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002538 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x8000253c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002540 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002544 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002548 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x8000254c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002550 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002554 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002558 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x8000255c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002560 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002564 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002568 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x8000256c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002570 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002574 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002578 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x8000257c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002580 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002584 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002588 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x8000258c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002590 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002594 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002598 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x8000259c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x800025a0 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x800025a4 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x800025a8 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x800025ac add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x800025b0 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x800025b4 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800025b8 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800025bc add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800025c0 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800025c4 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800025c8 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800025cc sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800025d0 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800025d4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800025d8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800025dc sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800025e0 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800025e4 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800025e8 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800025ec sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800025f0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800025f4 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800025f8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x800025fc sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002600 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002604 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002608 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003608
      0x8000260c addi    a1, a1, -1732          #; a1  = 0x80003608, (wrb) a1  <-- 0x80002f44
      0x80002610 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002f44, (wrb) a0  <-- 0x80002f44
      0x80002614 sw      zero, 0(a0)            #; a0  = 0x80002f44, 0 ~~> Word[0x80002f44]
; _snrt_init_team (start.c:86)
      0x80002618 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x8000261c sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002620 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002624 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002628 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x8000262c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002630 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002634 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002638 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x8000263c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002640 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002644 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002648 lw      a0, 0(a1)              #; a1  = 0x80002f44, a0  <~~ Word[0x80002f44]
                                                #; (lsu) a0  <-- 0
      0x8000264c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002650 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002654 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002658 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x8000265c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002660 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002664 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002668 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x8000266c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002674 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002678 ret                            #; ra  = 0x8000293c, goto 0x8000293c
; ?? (start.S:165)
      0x8000293c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002940 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002944 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002948 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x8000294c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002950 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002954 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002954
      0x80002958 addi    t0, t0, 60             #; t0  = 0x80002954, (wrb) t0  <-- 0x80002990
; ?? (start.S:175)
      0x8000295c csrw    mtvec, t0              #; t0  = 0x80002990, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002960 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002960
      0x80002964 jalr    ra, ra, 544            #; ra  = 0x80002960, (wrb) ra  <-- 0x80002968, goto 0x80002b80
; ?? (start_snitch.S:33)
      0x80002b80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002b84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002968 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002b88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b88
      0x80002b8c jalr    ra, ra, -1260          #; ra  = 0x80002b88, (wrb) ra  <-- 0x80002b90, goto 0x8000269c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000269c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026a4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026a8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026ac lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800026b0 ret                            #; ra  = 0x80002b90, goto 0x80002b90
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002b90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002b94 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002b98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002b9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002968
; ?? (start_snitch.S:40)
      0x80002ba0 ret                            #; ra  = 0x80002968, goto 0x80002968
; ?? (start.S:183)
      0x80002968 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000968
      0x8000296c jalr    ra, ra, -820           #; ra  = 0x80000968, (wrb) ra  <-- 0x80002970, goto 0x80000634
; main (test_access.c:11)
      0x80000634 addi    sp, sp, -16            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff50
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_access.c:12)
      0x80000638 sw      ra, 12(sp)             #; sp  = 0x0011ff50, 0x80002970 ~~> Word[0x0011ff5c]
      0x8000063c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000640 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000644 lw      a0, 4(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff64]
                                                #; (lsu) a0  <-- 0
; main (test_access.c:12)
      0x80000648 bnez    a0, pc + 616           #; a0  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_access.c:17)
      0x8000064c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000650 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000654 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000658 lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
                                                #; (lsu) a1  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_access.c:17)
      0x8000065c lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000660 addi    a2, a0, 224            #; a0  = 0x00100000, (wrb) a2  <-- 0x001000e0
; snrt_l1alloc (alloc.c:34)
;  in main (test_access.c:17)
      0x80000664 sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x001000e0 ~~> Word[0x0011ffc8]
      0x80000668 lui     a1, 0x40092            #; (wrb) a1  <-- 0x40092000
; snrt_l1alloc (alloc.c:0)
;  in main (test_access.c:17)
      0x8000066c addi    a1, a1, 196            #; a1  = 0x40092000, (wrb) a1  <-- 0x400920c4
; init_data (test_access.c:7)
;  in main (test_access.c:19)
      0x80000670 sw      a1, 4(a0)              #; a0  = 0x00100000, 0x400920c4 ~~> Word[0x00100004]
      0x80000674 lui     a1, 0x9ba5e            #; (wrb) a1  <-- 0x9ba5e000
      0x80000678 addi    a3, a1, 852            #; a1  = 0x9ba5e000, (wrb) a3  <-- 0x9ba5e354
      0x8000067c sw      a3, 0(a0)              #; a0  = 0x00100000, 0x9ba5e354 ~~> Word[0x00100000]
      0x80000680 lui     a1, 0x40192            #; (wrb) a1  <-- 0x40192000
      0x80000684 addi    a1, a1, 196            #; a1  = 0x40192000, (wrb) a1  <-- 0x401920c4
      0x80000688 sw      a1, 12(a0)             #; a0  = 0x00100000, 0x401920c4 ~~> Word[0x0010000c]
      0x8000068c sw      a3, 8(a0)              #; a0  = 0x00100000, 0x9ba5e354 ~~> Word[0x00100008]
      0x80000690 lui     a1, 0x4022e            #; (wrb) a1  <-- 0x4022e000
      0x80000694 addi    a1, a1, -1901          #; a1  = 0x4022e000, (wrb) a1  <-- 0x4022d893
      0x80000698 sw      a1, 20(a0)             #; a0  = 0x00100000, 0x4022d893 ~~> Word[0x00100014]
      0x8000069c lui     a1, 0x74bc7            #; (wrb) a1  <-- 0x74bc7000
      0x800006a0 addi    a1, a1, -1409          #; a1  = 0x74bc7000, (wrb) a1  <-- 0x74bc6a7f
      0x800006a4 sw      a1, 16(a0)             #; a0  = 0x00100000, 0x74bc6a7f ~~> Word[0x00100010]
      0x800006a8 lui     a2, 0x40292            #; (wrb) a2  <-- 0x40292000
      0x800006ac addi    a2, a2, 196            #; a2  = 0x40292000, (wrb) a2  <-- 0x402920c4
      0x800006b0 sw      a2, 28(a0)             #; a0  = 0x00100000, 0x402920c4 ~~> Word[0x0010001c]
      0x800006b4 sw      a3, 24(a0)             #; a0  = 0x00100000, 0x9ba5e354 ~~> Word[0x00100018]
      0x800006b8 lui     a2, 0x402f7            #; (wrb) a2  <-- 0x402f7000
      0x800006bc addi    a2, a2, -1803          #; a2  = 0x402f7000, (wrb) a2  <-- 0x402f68f5
      0x800006c0 sw      a2, 36(a0)             #; a0  = 0x00100000, 0x402f68f5 ~~> Word[0x00100024]
      0x800006c4 lui     a2, 0xc28f6            #; (wrb) a2  <-- 0xc28f6000
      0x800006c8 addi    a4, a2, -983           #; a2  = 0xc28f6000, (wrb) a4  <-- 0xc28f5c29
      0x800006cc sw      a4, 32(a0)             #; a0  = 0x00100000, 0xc28f5c29 ~~> Word[0x00100020]
      0x800006d0 lui     a2, 0x4032e            #; (wrb) a2  <-- 0x4032e000
      0x800006d4 addi    a2, a2, -1901          #; a2  = 0x4032e000, (wrb) a2  <-- 0x4032d893
      0x800006d8 sw      a2, 44(a0)             #; a0  = 0x00100000, 0x4032d893 ~~> Word[0x0010002c]
      0x800006dc sw      a1, 40(a0)             #; a0  = 0x00100000, 0x74bc6a7f ~~> Word[0x00100028]
      0x800006e0 lui     a2, 0x40360            #; (wrb) a2  <-- 0x40360000
      0x800006e4 addi    a2, a2, -852           #; a2  = 0x40360000, (wrb) a2  <-- 0x4035fcac
      0x800006e8 sw      a2, 52(a0)             #; a0  = 0x00100000, 0x4035fcac ~~> Word[0x00100034]
      0x800006ec lui     a2, 0x8312             #; (wrb) a2  <-- 0x08312000
      0x800006f0 addi    a6, a2, 1770           #; a2  = 0x08312000, (wrb) a6  <-- 0x083126ea
      0x800006f4 sw      a6, 48(a0)             #; a0  = 0x00100000, 0x083126ea ~~> Word[0x00100030]
      0x800006f8 lui     a5, 0x40392            #; (wrb) a5  <-- 0x40392000
      0x800006fc addi    a5, a5, 196            #; a5  = 0x40392000, (wrb) a5  <-- 0x403920c4
      0x80000700 sw      a5, 60(a0)             #; a0  = 0x00100000, 0x403920c4 ~~> Word[0x0010003c]
      0x80000704 sw      a3, 56(a0)             #; a0  = 0x00100000, 0x9ba5e354 ~~> Word[0x00100038]
      0x80000708 lui     a5, 0x403c4            #; (wrb) a5  <-- 0x403c4000
      0x8000070c addi    a5, a5, 1245           #; a5  = 0x403c4000, (wrb) a5  <-- 0x403c44dd
      0x80000710 sw      a5, 68(a0)             #; a0  = 0x00100000, 0x403c44dd ~~> Word[0x00100044]
      0x80000714 lui     a5, 0x2f1aa            #; (wrb) a5  <-- 0x2f1aa000
      0x80000718 addi    a2, a5, -66            #; a5  = 0x2f1aa000, (wrb) a2  <-- 0x2f1a9fbe
      0x8000071c sw      a2, 64(a0)             #; a0  = 0x00100000, 0x2f1a9fbe ~~> Word[0x00100040]
      0x80000720 lui     a5, 0x403f7            #; (wrb) a5  <-- 0x403f7000
      0x80000724 addi    a5, a5, -1803          #; a5  = 0x403f7000, (wrb) a5  <-- 0x403f68f5
      0x80000728 sw      a5, 76(a0)             #; a0  = 0x00100000, 0x403f68f5 ~~> Word[0x0010004c]
      0x8000072c sw      a4, 72(a0)             #; a0  = 0x00100000, 0xc28f5c29 ~~> Word[0x00100048]
      0x80000730 lui     a5, 0x40414            #; (wrb) a5  <-- 0x40414000
      0x80000734 addi    a5, a5, 1671           #; a5  = 0x40414000, (wrb) a5  <-- 0x40414687
      0x80000738 sw      a5, 84(a0)             #; a0  = 0x00100000, 0x40414687 ~~> Word[0x00100054]
      0x8000073c lui     a5, 0x2b021            #; (wrb) a5  <-- 0x2b021000
      0x80000740 addi    t0, a5, -950           #; a5  = 0x2b021000, (wrb) t0  <-- 0x2b020c4a
      0x80000744 sw      t0, 80(a0)             #; a0  = 0x00100000, 0x2b020c4a ~~> Word[0x00100050]
      0x80000748 lui     a5, 0x4042e            #; (wrb) a5  <-- 0x4042e000
      0x8000074c addi    a5, a5, -1901          #; a5  = 0x4042e000, (wrb) a5  <-- 0x4042d893
      0x80000750 sw      a5, 92(a0)             #; a0  = 0x00100000, 0x4042d893 ~~> Word[0x0010005c]
      0x80000754 sw      a1, 88(a0)             #; a0  = 0x00100000, 0x74bc6a7f ~~> Word[0x00100058]
      0x80000758 lui     a5, 0x40447            #; (wrb) a5  <-- 0x40447000
      0x8000075c addi    a5, a5, -1377          #; a5  = 0x40447000, (wrb) a5  <-- 0x40446a9f
      0x80000760 sw      a5, 100(a0)            #; a0  = 0x00100000, 0x40446a9f ~~> Word[0x00100064]
      0x80000764 lui     a5, 0xbe76d            #; (wrb) a5  <-- 0xbe76d000
      0x80000768 addi    a7, a5, -1868          #; a5  = 0xbe76d000, (wrb) a7  <-- 0xbe76c8b4
      0x8000076c sw      a7, 96(a0)             #; a0  = 0x00100000, 0xbe76c8b4 ~~> Word[0x00100060]
      0x80000770 lui     a5, 0x40460            #; (wrb) a5  <-- 0x40460000
      0x80000774 addi    a5, a5, -852           #; a5  = 0x40460000, (wrb) a5  <-- 0x4045fcac
      0x80000778 sw      a5, 108(a0)            #; a0  = 0x00100000, 0x4045fcac ~~> Word[0x0010006c]
      0x8000077c sw      a6, 104(a0)            #; a0  = 0x00100000, 0x083126ea ~~> Word[0x00100068]
      0x80000780 lui     a5, 0x40479            #; (wrb) a5  <-- 0x40479000
      0x80000784 addi    a5, a5, -328           #; a5  = 0x40479000, (wrb) a5  <-- 0x40478eb8
      0x80000788 sw      a5, 116(a0)            #; a0  = 0x00100000, 0x40478eb8 ~~> Word[0x00100074]
      0x8000078c lui     a5, 0x51eb8            #; (wrb) a5  <-- 0x51eb8000
      0x80000790 addi    a5, a5, 1311           #; a5  = 0x51eb8000, (wrb) a5  <-- 0x51eb851f
      0x80000794 sw      a5, 112(a0)            #; a0  = 0x00100000, 0x51eb851f ~~> Word[0x00100070]
      0x80000798 lui     a5, 0x40492            #; (wrb) a5  <-- 0x40492000
      0x8000079c addi    a5, a5, 196            #; a5  = 0x40492000, (wrb) a5  <-- 0x404920c4
      0x800007a0 sw      a5, 124(a0)            #; a0  = 0x00100000, 0x404920c4 ~~> Word[0x0010007c]
      0x800007a4 sw      a3, 120(a0)            #; a0  = 0x00100000, 0x9ba5e354 ~~> Word[0x00100078]
      0x800007a8 lui     a3, 0x404ab            #; (wrb) a3  <-- 0x404ab000
      0x800007ac addi    a3, a3, 720            #; a3  = 0x404ab000, (wrb) a3  <-- 0x404ab2d0
      0x800007b0 sw      a3, 132(a0)            #; a0  = 0x00100000, 0x404ab2d0 ~~> Word[0x00100084]
      0x800007b4 lui     a3, 0xe5604            #; (wrb) a3  <-- 0xe5604000
      0x800007b8 addi    a3, a3, 393            #; a3  = 0xe5604000, (wrb) a3  <-- 0xe5604189
      0x800007bc sw      a3, 128(a0)            #; a0  = 0x00100000, 0xe5604189 ~~> Word[0x00100080]
      0x800007c0 lui     a3, 0x404c4            #; (wrb) a3  <-- 0x404c4000
      0x800007c4 addi    a3, a3, 1245           #; a3  = 0x404c4000, (wrb) a3  <-- 0x404c44dd
      0x800007c8 sw      a3, 140(a0)            #; a0  = 0x00100000, 0x404c44dd ~~> Word[0x0010008c]
      0x800007cc sw      a2, 136(a0)            #; a0  = 0x00100000, 0x2f1a9fbe ~~> Word[0x00100088]
      0x800007d0 lui     a2, 0x404dd            #; (wrb) a2  <-- 0x404dd000
      0x800007d4 addi    a2, a2, 1769           #; a2  = 0x404dd000, (wrb) a2  <-- 0x404dd6e9
      0x800007d8 sw      a2, 148(a0)            #; a0  = 0x00100000, 0x404dd6e9 ~~> Word[0x00100094]
      0x800007dc lui     a2, 0x78d50            #; (wrb) a2  <-- 0x78d50000
      0x800007e0 addi    a2, a2, -524           #; a2  = 0x78d50000, (wrb) a2  <-- 0x78d4fdf4
      0x800007e4 sw      a2, 144(a0)            #; a0  = 0x00100000, 0x78d4fdf4 ~~> Word[0x00100090]
      0x800007e8 lui     a2, 0x404f7            #; (wrb) a2  <-- 0x404f7000
      0x800007ec addi    a2, a2, -1803          #; a2  = 0x404f7000, (wrb) a2  <-- 0x404f68f5
      0x800007f0 sw      a2, 156(a0)            #; a0  = 0x00100000, 0x404f68f5 ~~> Word[0x0010009c]
      0x800007f4 sw      a4, 152(a0)            #; a0  = 0x00100000, 0xc28f5c29 ~~> Word[0x00100098]
      0x800007f8 lui     a2, 0x40508            #; (wrb) a2  <-- 0x40508000
      0x800007fc addi    a2, a2, -639           #; a2  = 0x40508000, (wrb) a2  <-- 0x40507d81
      0x80000800 sw      a2, 164(a0)            #; a0  = 0x00100000, 0x40507d81 ~~> Word[0x001000a4]
      0x80000804 lui     a2, 0x624e             #; (wrb) a2  <-- 0x0624e000
      0x80000808 addi    a2, a2, -721           #; a2  = 0x0624e000, (wrb) a2  <-- 0x0624dd2f
      0x8000080c sw      a2, 160(a0)            #; a0  = 0x00100000, 0x0624dd2f ~~> Word[0x001000a0]
      0x80000810 lui     a2, 0x40514            #; (wrb) a2  <-- 0x40514000
      0x80000814 addi    a2, a2, 1671           #; a2  = 0x40514000, (wrb) a2  <-- 0x40514687
      0x80000818 sw      a2, 172(a0)            #; a0  = 0x00100000, 0x40514687 ~~> Word[0x001000ac]
      0x8000081c sw      t0, 168(a0)            #; a0  = 0x00100000, 0x2b020c4a ~~> Word[0x001000a8]
      0x80000820 lui     a2, 0x40521            #; (wrb) a2  <-- 0x40521000
      0x80000824 addi    a2, a2, -115           #; a2  = 0x40521000, (wrb) a2  <-- 0x40520f8d
      0x80000828 sw      a2, 180(a0)            #; a0  = 0x00100000, 0x40520f8d ~~> Word[0x001000b4]
      0x8000082c lui     a2, 0x4fdf4            #; (wrb) a2  <-- 0x4fdf4000
      0x80000830 addi    a2, a2, -1180          #; a2  = 0x4fdf4000, (wrb) a2  <-- 0x4fdf3b64
      0x80000834 sw      a2, 176(a0)            #; a0  = 0x00100000, 0x4fdf3b64 ~~> Word[0x001000b0]
      0x80000838 lui     a2, 0x4052e            #; (wrb) a2  <-- 0x4052e000
      0x8000083c addi    a2, a2, -1901          #; a2  = 0x4052e000, (wrb) a2  <-- 0x4052d893
      0x80000840 sw      a2, 188(a0)            #; a0  = 0x00100000, 0x4052d893 ~~> Word[0x001000bc]
      0x80000844 sw      a1, 184(a0)            #; a0  = 0x00100000, 0x74bc6a7f ~~> Word[0x001000b8]
      0x80000848 lui     a1, 0x4053a            #; (wrb) a1  <-- 0x4053a000
      0x8000084c addi    a1, a1, 409            #; a1  = 0x4053a000, (wrb) a1  <-- 0x4053a199
      0x80000850 sw      a1, 196(a0)            #; a0  = 0x00100000, 0x4053a199 ~~> Word[0x001000c4]
      0x80000854 lui     a1, 0x9999a            #; (wrb) a1  <-- 0x9999a000
      0x80000858 addi    a1, a1, -1638          #; a1  = 0x9999a000, (wrb) a1  <-- 0x9999999a
      0x8000085c sw      a1, 192(a0)            #; a0  = 0x00100000, 0x9999999a ~~> Word[0x001000c0]
      0x80000860 lui     a1, 0x40547            #; (wrb) a1  <-- 0x40547000
      0x80000864 addi    a1, a1, -1377          #; a1  = 0x40547000, (wrb) a1  <-- 0x40546a9f
      0x80000868 sw      a1, 204(a0)            #; a0  = 0x00100000, 0x40546a9f ~~> Word[0x001000cc]
      0x8000086c sw      a7, 200(a0)            #; a0  = 0x00100000, 0xbe76c8b4 ~~> Word[0x001000c8]
      0x80000870 lui     a1, 0x40553            #; (wrb) a1  <-- 0x40553000
      0x80000874 addi    a1, a1, 933            #; a1  = 0x40553000, (wrb) a1  <-- 0x405533a5
      0x80000878 sw      a1, 212(a0)            #; a0  = 0x00100000, 0x405533a5 ~~> Word[0x001000d4]
      0x8000087c lui     a1, 0xe353f            #; (wrb) a1  <-- 0xe353f000
      0x80000880 addi    a1, a1, 1999           #; a1  = 0xe353f000, (wrb) a1  <-- 0xe353f7cf
      0x80000884 sw      a1, 208(a0)            #; a0  = 0x00100000, 0xe353f7cf ~~> Word[0x001000d0]
      0x80000888 lui     a1, 0x40560            #; (wrb) a1  <-- 0x40560000
      0x8000088c addi    a1, a1, -852           #; a1  = 0x40560000, (wrb) a1  <-- 0x4055fcac
      0x80000890 sw      a1, 220(a0)            #; a0  = 0x00100000, 0x4055fcac ~~> Word[0x001000dc]
      0x80000894 sw      a6, 216(a0)            #; a0  = 0x00100000, 0x083126ea ~~> Word[0x001000d8]
; main (test_access.c:48)
      0x80000898 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002898
      0x8000089c addi    a0, a0, 861            #; a0  = 0x80002898, (wrb) a0  <-- 0x80002bf5
      0x800008a0 lui     a3, 0x3d600            #; (wrb) a3  <-- 0x3d600000
      0x800008a4 li      a2, 0                  #; (wrb) a2  <-- 0
      0x800008a8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008a8
      0x800008ac jalr    ra, ra, 24             #; ra  = 0x800008a8, (wrb) ra  <-- 0x800008b0, goto 0x800008c0
; printf_ (printf.c:863)
      0x800008c0 addi    sp, sp, -48            #; sp  = 0x0011ff50, (wrb) sp  <-- 0x0011ff20
      0x800008c4 sw      ra, 12(sp)             #; sp  = 0x0011ff20, 0x800008b0 ~~> Word[0x0011ff2c]
      0x800008c8 mv      t0, a0                 #; a0  = 0x80002bf5, (wrb) t0  <-- 0x80002bf5
      0x800008cc sw      a7, 44(sp)             #; sp  = 0x0011ff20, 0xbe76c8b4 ~~> Word[0x0011ff4c]
      0x800008d0 sw      a6, 40(sp)             #; sp  = 0x0011ff20, 0x083126ea ~~> Word[0x0011ff48]
      0x800008d4 sw      a5, 36(sp)             #; sp  = 0x0011ff20, 0x404920c4 ~~> Word[0x0011ff44]
      0x800008d8 sw      a4, 32(sp)             #; sp  = 0x0011ff20, 0xc28f5c29 ~~> Word[0x0011ff40]
      0x800008dc sw      a3, 28(sp)             #; sp  = 0x0011ff20, 0x3d600000 ~~> Word[0x0011ff3c]
      0x800008e0 sw      a2, 24(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff38]
      0x800008e4 sw      a1, 20(sp)             #; sp  = 0x0011ff20, 0x4055fcac ~~> Word[0x0011ff34]
      0x800008e8 addi    a0, sp, 20             #; sp  = 0x0011ff20, (wrb) a0  <-- 0x0011ff34
; printf_ (printf.c:865)
      0x800008ec sw      a0, 8(sp)              #; sp  = 0x0011ff20, 0x0011ff34 ~~> Word[0x0011ff28]
; printf_ (printf.c:867)
      0x800008f0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800018f0
      0x800008f4 addi    a0, a0, -988           #; a0  = 0x800018f0, (wrb) a0  <-- 0x80001514
      0x800008f8 addi    a1, sp, 7              #; sp  = 0x0011ff20, (wrb) a1  <-- 0x0011ff27
      0x800008fc li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000900 addi    a4, sp, 20             #; sp  = 0x0011ff20, (wrb) a4  <-- 0x0011ff34
      0x80000904 mv      a3, t0                 #; t0  = 0x80002bf5, (wrb) a3  <-- 0x80002bf5
      0x80000908 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000908
      0x8000090c jalr    ra, ra, 20             #; ra  = 0x80000908, (wrb) ra  <-- 0x80000910, goto 0x8000091c
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x8000091c addi    sp, sp, -112           #; sp  = 0x0011ff20, (wrb) sp  <-- 0x0011feb0
      0x80000920 sw      ra, 108(sp)            #; sp  = 0x0011feb0, 0x80000910 ~~> Word[0x0011ff1c]
      0x80000924 sw      s0, 104(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff18]
      0x80000928 sw      s1, 100(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff14]
      0x8000092c sw      s2, 96(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff10]
      0x80000930 sw      s3, 92(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff0c]
      0x80000934 sw      s4, 88(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff08]
      0x80000938 sw      s5, 84(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff04]
      0x8000093c sw      s6, 80(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff00]
      0x80000940 sw      s7, 76(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fefc]
      0x80000944 sw      s8, 72(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fef8]
      0x80000948 sw      s9, 68(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fef4]
      0x8000094c sw      s10, 64(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fef0]
      0x80000950 sw      s11, 60(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011feec]
      0x80000954 mv      s3, a4                 #; a4  = 0x0011ff34, (wrb) s3  <-- 0x0011ff34
      0x80000958 mv      s0, a3                 #; a3  = 0x80002bf5, (wrb) s0  <-- 0x80002bf5
      0x8000095c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000960 mv      s4, a1                 #; a1  = 0x0011ff27, (wrb) s4  <-- 0x0011ff27
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000964 beqz    a1, pc + 12            #; a1  = 0x0011ff27, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000968 mv      s2, a0                 #; a0  = 0x80001514, (wrb) s2  <-- 0x80001514
      0x8000096c j       pc + 0xc               #; goto 0x80000978
      0x80000978 li      s8, 0                  #; (wrb) s8  <-- 0
      0x8000097c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000980 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000984 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000988 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x8000098c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000990 sw      a0, 24(sp)             #; sp  = 0x0011feb0, 2048 ~~> Word[0x0011fec8]
      0x80000994 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000998 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x8000099c sw      a0, 16(sp)             #; sp  = 0x0011feb0, 65535 ~~> Word[0x0011fec0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009a0 addi    s10, s0, 2             #; s0  = 0x80002bf5, (wrb) s10 <-- 0x80002bf7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009a4 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x800009a8 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009ac lbu     a0, 0(s0)              #; s0  = 0x80002bf5, a0  <~~ Byte[0x80002bf5]
                                                #; (lsu) a0  <-- 101
      0x800009b0 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x800009b4 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009b8 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x800009bc mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800009c0 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x800009c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009c8 jalr    s2                     #; s2  = 0x80001514, (wrb) ra  <-- 0x800009cc, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 0
      0x80001534 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 1 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 0, (wrb) a4  <-- 0x80002f44
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f44, 101 ~~> Byte[0x80002f8c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 1
      0x80001548 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x8000154c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001554 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x800009cc, goto 0x800009cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009cc addi    s0, s0, 1              #; s0  = 0x80002bf5, (wrb) s0  <-- 0x80002bf6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009d0 addi    s10, s10, 1            #; s10 = 0x80002bf7, (wrb) s10 <-- 0x80002bf8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009d4 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d8 lbu     a0, 0(s0)              #; s0  = 0x80002bf6, a0  <~~ Byte[0x80002bf6]
                                                #; (lsu) a0  <-- 114
      0x800009dc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009b4
      0x800009b4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009b8 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x800009bc mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800009c0 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x800009c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009c8 jalr    s2                     #; s2  = 0x80001514, (wrb) ra  <-- 0x800009cc, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 1
      0x80001534 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 2 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 1, (wrb) a4  <-- 0x80002f45
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f45, 114 ~~> Byte[0x80002f8d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 2
      0x80001548 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x8000154c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001554 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x800009cc, goto 0x800009cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009cc addi    s0, s0, 1              #; s0  = 0x80002bf6, (wrb) s0  <-- 0x80002bf7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009d0 addi    s10, s10, 1            #; s10 = 0x80002bf8, (wrb) s10 <-- 0x80002bf9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009d4 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d8 lbu     a0, 0(s0)              #; s0  = 0x80002bf7, a0  <~~ Byte[0x80002bf7]
                                                #; (lsu) a0  <-- 114
      0x800009dc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009b4
      0x800009b4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009b8 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x800009bc mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800009c0 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x800009c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009c8 jalr    s2                     #; s2  = 0x80001514, (wrb) ra  <-- 0x800009cc, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 2
      0x80001534 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 3 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 2, (wrb) a4  <-- 0x80002f46
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f46, 114 ~~> Byte[0x80002f8e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 3
      0x80001548 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x8000154c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001554 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x800009cc, goto 0x800009cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009cc addi    s0, s0, 1              #; s0  = 0x80002bf7, (wrb) s0  <-- 0x80002bf8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009d0 addi    s10, s10, 1            #; s10 = 0x80002bf9, (wrb) s10 <-- 0x80002bfa
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009d4 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d8 lbu     a0, 0(s0)              #; s0  = 0x80002bf8, a0  <~~ Byte[0x80002bf8]
                                                #; (lsu) a0  <-- 111
      0x800009dc bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800009b4
      0x800009b4 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009b8 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x800009bc mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800009c0 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x800009c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009c8 jalr    s2                     #; s2  = 0x80001514, (wrb) ra  <-- 0x800009cc, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 3
      0x80001534 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 4 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 3, (wrb) a4  <-- 0x80002f47
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f47, 111 ~~> Byte[0x80002f8f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 4
      0x80001548 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x8000154c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001554 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x800009cc, goto 0x800009cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009cc addi    s0, s0, 1              #; s0  = 0x80002bf8, (wrb) s0  <-- 0x80002bf9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009d0 addi    s10, s10, 1            #; s10 = 0x80002bfa, (wrb) s10 <-- 0x80002bfb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009d4 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d8 lbu     a0, 0(s0)              #; s0  = 0x80002bf9, a0  <~~ Byte[0x80002bf9]
                                                #; (lsu) a0  <-- 114
      0x800009dc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009b4
      0x800009b4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009b8 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x800009bc mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800009c0 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x800009c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009c8 jalr    s2                     #; s2  = 0x80001514, (wrb) ra  <-- 0x800009cc, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 4
      0x80001534 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 5 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 4, (wrb) a4  <-- 0x80002f48
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f48, 114 ~~> Byte[0x80002f90]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 5
      0x80001548 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x8000154c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001554 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x800009cc, goto 0x800009cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009cc addi    s0, s0, 1              #; s0  = 0x80002bf9, (wrb) s0  <-- 0x80002bfa
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009d0 addi    s10, s10, 1            #; s10 = 0x80002bfb, (wrb) s10 <-- 0x80002bfc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009d4 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d8 lbu     a0, 0(s0)              #; s0  = 0x80002bfa, a0  <~~ Byte[0x80002bfa]
                                                #; (lsu) a0  <-- 32
      0x800009dc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009b4
      0x800009b4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009b8 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x800009bc mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800009c0 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x800009c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009c8 jalr    s2                     #; s2  = 0x80001514, (wrb) ra  <-- 0x800009cc, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 5
      0x80001534 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 6 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 5, (wrb) a4  <-- 0x80002f49
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f49, 32 ~~> Byte[0x80002f91]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 6
      0x80001548 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x8000154c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001554 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x800009cc, goto 0x800009cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009cc addi    s0, s0, 1              #; s0  = 0x80002bfa, (wrb) s0  <-- 0x80002bfb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009d0 addi    s10, s10, 1            #; s10 = 0x80002bfc, (wrb) s10 <-- 0x80002bfd
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009d4 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d8 lbu     a0, 0(s0)              #; s0  = 0x80002bfb, a0  <~~ Byte[0x80002bfb]
                                                #; (lsu) a0  <-- 61
      0x800009dc bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800009b4
      0x800009b4 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009b8 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x800009bc mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800009c0 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x800009c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009c8 jalr    s2                     #; s2  = 0x80001514, (wrb) ra  <-- 0x800009cc, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 6
      0x80001534 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 7 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 6, (wrb) a4  <-- 0x80002f4a
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f4a, 61 ~~> Byte[0x80002f92]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 7
      0x80001548 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x8000154c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001554 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x800009cc, goto 0x800009cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009cc addi    s0, s0, 1              #; s0  = 0x80002bfb, (wrb) s0  <-- 0x80002bfc
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009d0 addi    s10, s10, 1            #; s10 = 0x80002bfd, (wrb) s10 <-- 0x80002bfe
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009d4 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d8 lbu     a0, 0(s0)              #; s0  = 0x80002bfc, a0  <~~ Byte[0x80002bfc]
                                                #; (lsu) a0  <-- 32
      0x800009dc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009b4
      0x800009b4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009b8 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x800009bc mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800009c0 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x800009c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009c8 jalr    s2                     #; s2  = 0x80001514, (wrb) ra  <-- 0x800009cc, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 7
      0x80001534 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 8 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 7, (wrb) a4  <-- 0x80002f4b
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f4b, 32 ~~> Byte[0x80002f93]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 8
      0x80001548 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x8000154c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001554 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x800009cc, goto 0x800009cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009cc addi    s0, s0, 1              #; s0  = 0x80002bfc, (wrb) s0  <-- 0x80002bfd
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009d0 addi    s10, s10, 1            #; s10 = 0x80002bfe, (wrb) s10 <-- 0x80002bff
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009d4 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d8 lbu     a0, 0(s0)              #; s0  = 0x80002bfd, a0  <~~ Byte[0x80002bfd]
                                                #; (lsu) a0  <-- 37
      0x800009dc bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800009b4
      0x800009b4 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800009e4
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x800009e4 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009e8 j       pc + 0x10              #; goto 0x800009f8
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x800009f8 lbu     a0, -1(s10)            #; s10 = 0x80002bff, a0  <~~ Byte[0x80002bfe]
                                                #; (lsu) a0  <-- 102
      0x800009fc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000a00 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a38
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a38 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000a3c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a40 addi    a1, s10, -1            #; s10 = 0x80002bff, (wrb) a1  <-- 0x80002bfe
      0x80000a44 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000a48 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000ac4
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000ac4 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000ac8 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b18
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b18 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b1c mv      s10, a1                #; a1  = 0x80002bfe, (wrb) s10 <-- 0x80002bfe
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000b20 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b24 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b28 j       pc + 0xc               #; goto 0x80000b34
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000b34 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000b38 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000b3c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000b40 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000b44 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000b48 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000bac
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000bac addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000bb0 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000bb4 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bb8 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000bbc auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002bbc
      0x80000bc0 addi    a2, a2, 184            #; a2  = 0x80002bbc, (wrb) a2  <-- 0x80002c74
      0x80000bc4 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002c74, (wrb) a1  <-- 0x80002d78
      0x80000bc8 lw      a2, 0(a1)              #; a1  = 0x80002d78, a2  <~~ Word[0x80002d78]
      0x80000bcc li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000bd0 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c04
      0x80000bd4 jr      a2                     #; a2  = 0x80000c04, goto 0x80000c04
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000c04 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000c08 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c10
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000c10 addi    a0, s3, 7              #; s3  = 0x0011ff34, (wrb) a0  <-- 0x0011ff3b
      0x80000c14 andi    a0, a0, -8             #; a0  = 0x0011ff3b, (wrb) a0  <-- 0x0011ff38
      0x80000c1c addi    s3, a0, 8              #; a0  = 0x0011ff38, (wrb) s3  <-- 0x0011ff40
      0x80000c18 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff38]
                                                #; (f:lsu) fa0  <-- 0.0000000
      0x80000c20 mv      a0, s2                 #; s2  = 0x80001514, (wrb) a0  <-- 0x80001514
      0x80000c24 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x80000c28 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000c2c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c30 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000c34 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000c38 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000c3c auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c3c
      0x80000c40 jalr    ra, ra, -1656          #; ra  = 0x80001c3c, (wrb) ra  <-- 0x80000c44, goto 0x800015c4
; _ftoa (printf.c:340)
      0x800015c4 addi    sp, sp, -112           #; sp  = 0x0011feb0, (wrb) sp  <-- 0x0011fe40
      0x800015c8 sw      ra, 108(sp)            #; sp  = 0x0011fe40, 0x80000c44 ~~> Word[0x0011feac]
      0x800015cc sw      s0, 104(sp)            #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fea8]
      0x800015d0 sw      s1, 100(sp)            #; sp  = 0x0011fe40, 8 ~~> Word[0x0011fea4]
      0x800015d4 sw      s2, 96(sp)             #; sp  = 0x0011fe40, 0x80001514 ~~> Word[0x0011fea0]
      0x800015d8 sw      s3, 92(sp)             #; sp  = 0x0011fe40, 0x0011ff40 ~~> Word[0x0011fe9c]
      0x800015dc sw      s4, 88(sp)             #; sp  = 0x0011fe40, 0x0011ff27 ~~> Word[0x0011fe98]
      0x800015e0 sw      s5, 84(sp)             #; sp  = 0x0011fe40, -1 ~~> Word[0x0011fe94]
      0x800015e4 sw      s6, 80(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe90]
      0x800015e8 sw      s7, 76(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe8c]
      0x800015ec sw      s8, 72(sp)             #; sp  = 0x0011fe40, 16 ~~> Word[0x0011fe88]
      0x800015f0 sw      s9, 68(sp)             #; sp  = 0x0011fe40, 8 ~~> Word[0x0011fe84]
      0x800015f4 sw      s10, 64(sp)            #; sp  = 0x0011fe40, 0x80002bfe ~~> Word[0x0011fe80]
      0x800015f8 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe78]
      0x800015fc fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe70]
      0x80001604 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003604
      0x80001608 addi    s1, s1, -1900          #; s1  = 0x80003604, (wrb) s1  <-- 0x80002e98
      0x80001600 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x8000160c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002e98]
; _ftoa (printf.c:351)
      0x80001614 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001618 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x8000161c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001610 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
      0x80001620 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001624 mv      s6, a1                 #; a1  = 0x0011ff27, (wrb) s6  <-- 0x0011ff27
      0x80001628 mv      s7, a0                 #; a0  = 0x80001514, (wrb) s7  <-- 0x80001514
; _ftoa (printf.c:351)
      0x8000162c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x8000171c
; _ftoa (printf.c:0)
      0x8000171c fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x80001720 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002720
      0x80001724 addi    a0, a0, 1920           #; a0  = 0x80002720, (wrb) a0  <-- 0x80002ea0
      0x80001728 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ea0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x8000172c fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001730 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x8000174c
; _ftoa (printf.c:0)
      0x8000174c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000274c
      0x80001750 addi    a0, a0, 1884           #; a0  = 0x8000274c, (wrb) a0  <-- 0x80002ea8
      0x80001758 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002758
      0x8000175c addi    a0, a0, 1880           #; a0  = 0x80002758, (wrb) a0  <-- 0x80002eb0
      0x80001754 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ea8]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001760 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002eb0]
; _ftoa (printf.c:358)
      0x80001764 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001768 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x8000176c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001770 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x8000186c
; _ftoa (printf.c:374)
      0x8000186c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001870 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001874 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x8000187c
; _ftoa (printf.c:0)
      0x8000187c li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001884 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800018bc
; _ftoa (printf.c:0)
      0x80001880 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
                                                #; (f:fpu) fs2  <-- 0.0000000
      0x800018bc li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800018c0 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x800018c4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800028c4
      0x800018c8 addi    a1, a1, 1284           #; a1  = 0x800028c4, (wrb) a1  <-- 0x80002dc8
      0x800018cc add     a0, a0, a1             #; a0  = 48, a1  = 0x80002dc8, (wrb) a0  <-- 0x80002df8
      0x800018d0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002df8]
; _ftoa (printf.c:383)
      0x800018d4 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
; _ftoa (printf.c:384)
      0x800018d8 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800018dc fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0000000
; _ftoa (printf.c:0)
      0x800018e4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028e4
      0x800018e8 addi    a0, a0, 1492           #; a0  = 0x800028e4, (wrb) a0  <-- 0x80002eb8
      0x800018e0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
      0x800018ec fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002eb8], (f:fpu) ft2  <-- 0.0000005
; _ftoa (printf.c:385)
      0x800018f0 fcvt.wu.d a0, ft2              #; ft2  = 0.0000005
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x800018f4 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800018f8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000005, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0000005
; _ftoa (printf.c:388)
      0x800018fc fle.d   a1, ft2, ft0           #; ft2  = 0.0000005, ft0  = 0.5
      0x80001900 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001920
; _ftoa (printf.c:396)
      0x80001920 flt.d   a1, ft2, ft0           #; ft2  = 0.0000005, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001924 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001938
; _ftoa (printf.c:403)
      0x8000193c beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001938 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x80001940 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001944 addi    a1, sp, 8              #; sp  = 0x0011fe40, (wrb) a1  <-- 0x0011fe48
; _ftoa (printf.c:414)
      0x80001948 add     t1, a1, s0             #; a1  = 0x0011fe48, s0  = 0, (wrb) t1  <-- 0x0011fe48
      0x8000194c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001950 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001954 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001958 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x8000195c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001960 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001964 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001968 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x8000196c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x80001970 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001974 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001978 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x8000197c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001980 add     a5, t1, a2             #; t1  = 0x0011fe48, a2  = 0, (wrb) a5  <-- 0x0011fe48
      0x80001984 sb      a3, 0(a5)              #; a5  = 0x0011fe48, 48 ~~> Byte[0x0011fe48]
; _ftoa (printf.c:417)
      0x80001988 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x8000198c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001990 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001994 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001998 li      a3, 30                 #; (wrb) a3  <-- 30
      0x8000199c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x800019a0 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x800019a4 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x800019a8 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x800019ac bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x800019b0 addi    a0, sp, 8              #; sp  = 0x0011fe40, (wrb) a0  <-- 0x0011fe48
; _ftoa (printf.c:422)
      0x800019b4 add     a0, a0, s0             #; a0  = 0x0011fe48, s0  = 0, (wrb) a0  <-- 0x0011fe48
      0x800019b8 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x800019bc add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x800019c0 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x800019c4 li      a1, 31                 #; (wrb) a1  <-- 31
      0x800019c8 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x800019cc add     a0, a0, a2             #; a0  = 0x0011fe48, a2  = 1, (wrb) a0  <-- 0x0011fe49
      0x800019d0 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x800019d4 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800019dc
      0x800019dc addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x800019e0 li      a1, 48                 #; (wrb) a1  <-- 48
      0x800019e4 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800009e4
      0x800019e8 jalr    ra, ra, -1164          #; ra  = 0x800009e4, (wrb) ra  <-- 0x800019ec, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fe49, (wrb) a4  <-- 0x0011fe49
; memset (memset.S:32)
      0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
; memset (memset.S:60)
      0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
; memset (memset.S:61)
      0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
; memset (memset.S:62)
      0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
; memset (memset.S:63)
      0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
; memset (memset.S:67)
      0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
; memset (memset.S:79)
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4d]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4c]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4b]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4a]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe49]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x800019ec, goto 0x800019ec
; _ftoa (printf.c:0)
      0x800019ec li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x800019f0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x800019f4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x800019f8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x800019fc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001a00 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a04 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001a08 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019f0
      0x800019f0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x800019f4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x800019f8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x800019fc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001a00 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a04 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001a08 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019f0
      0x800019f0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x800019f4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x800019f8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x800019fc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001a00 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a04 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001a08 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019f0
      0x800019f0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x800019f4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x800019f8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x800019fc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001a00 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a04 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001a08 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019f0
      0x800019f0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x800019f4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x800019f8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x800019fc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001a00 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001a04 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001a08 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001a0c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001a10 j       pc + 0x28              #; goto 0x80001a38
      0x80001a38 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001a3c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001a40 addi    a1, sp, 8              #; sp  = 0x0011fe40, (wrb) a1  <-- 0x0011fe48
; _ftoa (printf.c:427)
      0x80001a44 add     a0, a1, a0             #; a1  = 0x0011fe48, a0  = 6, (wrb) a0  <-- 0x0011fe4e
      0x80001a48 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001a4c sb      a1, 0(a0)              #; a0  = 0x0011fe4e, 46 ~~> Byte[0x0011fe4e]
      0x80001a50 j       pc + 0x8               #; goto 0x80001a58
; _ftoa (printf.c:0)
      0x80001a58 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001a5c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001a60 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001a64 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001a6c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001a68 flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
      0x80001a70 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001a74 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001a78 addi    a3, sp, 8              #; sp  = 0x0011fe40, (wrb) a3  <-- 0x0011fe48
      0x80001a7c li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001a80 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001a84 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001a88 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001a8c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001a90 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001a94 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001a98 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001a9c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001aa0 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001aa4 add     s0, a3, s0             #; a3  = 0x0011fe48, s0  = 7, (wrb) s0  <-- 0x0011fe4f
; _ftoa (printf.c:434)
      0x80001aa8 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001aac sb      a5, 0(s0)              #; s0  = 0x0011fe4f, 48 ~~> Byte[0x0011fe4f]
; _ftoa (printf.c:0)
      0x80001ab0 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001ab4 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001ab8 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001abc j       pc + 0x8               #; goto 0x80001ac4
; _ftoa (printf.c:440)
      0x80001ac4 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001ac8 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001acc bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b38
; _ftoa (printf.c:0)
      0x80001b38 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001b3c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001b40 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001b58
; _ftoa (printf.c:453)
      0x80001b58 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001b5c bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001b60 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001b64 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001b90
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001b90 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001b94 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001b98 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001b9c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001ba0 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001ba4 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001ba8 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001bd4
; _ftoa (printf.c:0)
      0x80001bd4 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001bd8 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001bdc addi    s9, sp, 7              #; sp  = 0x0011fe40, (wrb) s9  <-- 0x0011fe47
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001be0 add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 8, (wrb) a0  <-- 0x0011fe4f
      0x80001be4 lbu     a0, 0(a0)              #; a0  = 0x0011fe4f, a0  <~~ Byte[0x0011fe4f]
      0x80001be8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001bec addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
                                                #; (lsu) a0  <-- 48
      0x80001bf0 mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x80001bf4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001bf8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001bfc jalr    s7                     #; s7  = 0x80001514, (wrb) ra  <-- 0x80001c00, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 8
      0x80001534 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 9 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 8, (wrb) a4  <-- 0x80002f4c
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f4c, 48 ~~> Byte[0x80002f94]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 9
      0x80001548 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x8000154c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001554 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x80001c00, goto 0x80001c00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c00 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001c04 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c08 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001be0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001be0 add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 7, (wrb) a0  <-- 0x0011fe4e
      0x80001be4 lbu     a0, 0(a0)              #; a0  = 0x0011fe4e, a0  <~~ Byte[0x0011fe4e]
      0x80001be8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001bec addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001bf0 mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x80001bf4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001bf8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001bfc jalr    s7                     #; s7  = 0x80001514, (wrb) ra  <-- 0x80001c00, goto 0x80001514
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 9
      0x80001534 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 10 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 9, (wrb) a4  <-- 0x80002f4d
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f4d, 46 ~~> Byte[0x80002f95]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 10
      0x80001548 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x8000154c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001554 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x80001c00, goto 0x80001c00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c00 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001c04 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c08 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001be0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001be0 add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 6, (wrb) a0  <-- 0x0011fe4d
      0x80001be4 lbu     a0, 0(a0)              #; a0  = 0x0011fe4d, a0  <~~ Byte[0x0011fe4d]
      0x80001be8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001bec addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001bf0 mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x80001bf4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001bf8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001bfc jalr    s7                     #; s7  = 0x80001514, (wrb) ra  <-- 0x80001c00, goto 0x80001514
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 10
      0x80001534 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 11 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 10, (wrb) a4  <-- 0x80002f4e
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f4e, 48 ~~> Byte[0x80002f96]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 11
      0x80001548 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x8000154c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001554 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x80001c00, goto 0x80001c00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c00 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001c04 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c08 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001be0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001be0 add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 5, (wrb) a0  <-- 0x0011fe4c
      0x80001be4 lbu     a0, 0(a0)              #; a0  = 0x0011fe4c, a0  <~~ Byte[0x0011fe4c]
      0x80001be8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001bec addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001bf0 mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x80001bf4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001bf8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001bfc jalr    s7                     #; s7  = 0x80001514, (wrb) ra  <-- 0x80001c00, goto 0x80001514
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 11
      0x80001534 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 12 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 11, (wrb) a4  <-- 0x80002f4f
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f4f, 48 ~~> Byte[0x80002f97]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 12
      0x80001548 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x8000154c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001554 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x80001c00, goto 0x80001c00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c00 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001c04 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c08 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001be0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001be0 add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 4, (wrb) a0  <-- 0x0011fe4b
      0x80001be4 lbu     a0, 0(a0)              #; a0  = 0x0011fe4b, a0  <~~ Byte[0x0011fe4b]
      0x80001be8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001bec addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001bf0 mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x80001bf4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001bf8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001bfc jalr    s7                     #; s7  = 0x80001514, (wrb) ra  <-- 0x80001c00, goto 0x80001514
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 12
      0x80001534 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 13 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 12, (wrb) a4  <-- 0x80002f50
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f50, 48 ~~> Byte[0x80002f98]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 13
      0x80001548 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x8000154c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001554 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x80001c00, goto 0x80001c00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c00 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001c04 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c08 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001be0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001be0 add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 3, (wrb) a0  <-- 0x0011fe4a
      0x80001be4 lbu     a0, 0(a0)              #; a0  = 0x0011fe4a, a0  <~~ Byte[0x0011fe4a]
      0x80001be8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001bec addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001bf0 mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x80001bf4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001bf8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001bfc jalr    s7                     #; s7  = 0x80001514, (wrb) ra  <-- 0x80001c00, goto 0x80001514
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 13
      0x80001534 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 14 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 13, (wrb) a4  <-- 0x80002f51
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f51, 48 ~~> Byte[0x80002f99]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 14
      0x80001548 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x8000154c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001554 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x80001c00, goto 0x80001c00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c00 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001c04 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c08 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001be0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001be0 add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 2, (wrb) a0  <-- 0x0011fe49
      0x80001be4 lbu     a0, 0(a0)              #; a0  = 0x0011fe49, a0  <~~ Byte[0x0011fe49]
      0x80001be8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001bec addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001bf0 mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x80001bf4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001bf8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001bfc jalr    s7                     #; s7  = 0x80001514, (wrb) ra  <-- 0x80001c00, goto 0x80001514
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 14
      0x80001534 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 15 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 14, (wrb) a4  <-- 0x80002f52
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f52, 48 ~~> Byte[0x80002f9a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 15
      0x80001548 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x8000154c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001554 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x80001c00, goto 0x80001c00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c00 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001c04 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c08 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001be0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001be0 add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 1, (wrb) a0  <-- 0x0011fe48
      0x80001be4 lbu     a0, 0(a0)              #; a0  = 0x0011fe48, a0  <~~ Byte[0x0011fe48]
      0x80001be8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001bec addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001bf0 mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x80001bf4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001bf8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001bfc jalr    s7                     #; s7  = 0x80001514, (wrb) ra  <-- 0x80001c00, goto 0x80001514
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 15
      0x80001534 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 16 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 15, (wrb) a4  <-- 0x80002f53
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f53, 48 ~~> Byte[0x80002f9b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 16
      0x80001548 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x8000154c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001554 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001558 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x80001c00, goto 0x80001c00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c00 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001c04 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c08 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001c0c j       pc + 0x8               #; goto 0x80001c14
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c14 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001c18 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001c1c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001c20 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001c24 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001c28 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001c58
; _ftoa (printf.c:0)
      0x80001c58 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001c5c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001c60 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe68]
      0x80001c6c lw      s10, 64(sp)            #; sp  = 0x0011fe40, s10 <~~ Word[0x0011fe80]
      0x80001c64 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe70], (f:lsu) fs2  <-- 0.0
      0x80001c68 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe78], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002bfe
      0x80001c70 lw      s9, 68(sp)             #; sp  = 0x0011fe40, s9  <~~ Word[0x0011fe84]
                                                #; (lsu) s9  <-- 8
      0x80001c74 lw      s8, 72(sp)             #; sp  = 0x0011fe40, s8  <~~ Word[0x0011fe88]
                                                #; (lsu) s8  <-- 16
      0x80001c78 lw      s7, 76(sp)             #; sp  = 0x0011fe40, s7  <~~ Word[0x0011fe8c]
                                                #; (lsu) s7  <-- 0
      0x80001c7c lw      s6, 80(sp)             #; sp  = 0x0011fe40, s6  <~~ Word[0x0011fe90]
                                                #; (lsu) s6  <-- 0
      0x80001c80 lw      s5, 84(sp)             #; sp  = 0x0011fe40, s5  <~~ Word[0x0011fe94]
                                                #; (lsu) s5  <-- -1
      0x80001c84 lw      s4, 88(sp)             #; sp  = 0x0011fe40, s4  <~~ Word[0x0011fe98]
                                                #; (lsu) s4  <-- 0x0011ff27
      0x80001c88 lw      s3, 92(sp)             #; sp  = 0x0011fe40, s3  <~~ Word[0x0011fe9c]
                                                #; (lsu) s3  <-- 0x0011ff40
      0x80001c8c lw      s2, 96(sp)             #; sp  = 0x0011fe40, s2  <~~ Word[0x0011fea0]
                                                #; (lsu) s2  <-- 0x80001514
      0x80001c90 lw      s1, 100(sp)            #; sp  = 0x0011fe40, s1  <~~ Word[0x0011fea4]
                                                #; (lsu) s1  <-- 8
      0x80001c94 lw      s0, 104(sp)            #; sp  = 0x0011fe40, s0  <~~ Word[0x0011fea8]
                                                #; (lsu) s0  <-- 0
      0x80001c98 lw      ra, 108(sp)            #; sp  = 0x0011fe40, ra  <~~ Word[0x0011feac]
      0x80001c9c addi    sp, sp, 112            #; sp  = 0x0011fe40, (wrb) sp  <-- 0x0011feb0
                                                #; (lsu) ra  <-- 0x80000c44
      0x80001ca0 ret                            #; ra  = 0x80000c44, goto 0x80000c44
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c44 j       pc + 0x7c0             #; goto 0x80001404
      0x80001404 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001408 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000140c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001410 addi    s0, s10, 1             #; s10 = 0x80002bfe, (wrb) s0  <-- 0x80002bff
      0x80001414 j       pc - 0xa74             #; goto 0x800009a0
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009a0 addi    s10, s0, 2             #; s0  = 0x80002bff, (wrb) s10 <-- 0x80002c01
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009a4 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x800009a8 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009ac lbu     a0, 0(s0)              #; s0  = 0x80002bff, a0  <~~ Byte[0x80002bff]
                                                #; (lsu) a0  <-- 10
      0x800009b0 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x800009b4 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009b8 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x800009bc mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800009c0 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x800009c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009c8 jalr    s2                     #; s2  = 0x80001514, (wrb) ra  <-- 0x800009cc, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001524 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003524
      0x80001528 addi    a3, a3, -1504          #; a3  = 0x80003524, (wrb) a3  <-- 0x80002f44
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000152c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f44, (wrb) a1  <-- 0x80002f44
      0x80001530 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 16
      0x80001534 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001538 sw      a5, 0(a1)              #; a1  = 0x80002f44, 17 ~~> Word[0x80002f44]
      0x8000153c add     a4, a1, a4             #; a1  = 0x80002f44, a4  = 16, (wrb) a4  <-- 0x80002f54
      0x80001540 sb      a0, 72(a4)             #; a4  = 0x80002f54, 10 ~~> Byte[0x80002f9c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 lw      a4, 0(a1)              #; a1  = 0x80002f44, a4  <~~ Word[0x80002f44]
                                                #; (lsu) a4  <-- 17
      0x80001548 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x8000154c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001550 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001554 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001558 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x8000155c bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001560 add     a0, a3, a2             #; a3  = 0x80002f44, a2  = 0, (wrb) a0  <-- 0x80002f44
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 addi    a2, a0, 72             #; a0  = 0x80002f44, (wrb) a2  <-- 0x80002f8c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 sw      zero, 12(a0)           #; a0  = 0x80002f44, 0 ~~> Word[0x80002f50]
      0x8000156c li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001570 sw      a3, 8(a0)              #; a0  = 0x80002f44, 64 ~~> Word[0x80002f4c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 sw      zero, 20(a0)           #; a0  = 0x80002f44, 0 ~~> Word[0x80002f58]
      0x80001578 li      a3, 1                  #; (wrb) a3  <-- 1
      0x8000157c sw      a3, 16(a0)             #; a0  = 0x80002f44, 1 ~~> Word[0x80002f54]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 sw      zero, 28(a0)           #; a0  = 0x80002f44, 0 ~~> Word[0x80002f60]
      0x80001584 sw      a2, 24(a0)             #; a0  = 0x80002f44, 0x80002f8c ~~> Word[0x80002f5c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001588 lw      a2, 0(a1)              #; a1  = 0x80002f44, a2  <~~ Word[0x80002f44]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c addi    a3, a0, 8              #; a0  = 0x80002f44, (wrb) a3  <-- 0x80002f4c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 sw      zero, 36(a0)           #; a0  = 0x80002f44, 0 ~~> Word[0x80002f68]
                                                #; (lsu) a2  <-- 17
      0x80001594 sw      a2, 32(a0)             #; a0  = 0x80002f44, 17 ~~> Word[0x80002f64]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001598 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003598
      0x8000159c addi    a0, a0, -1880          #; a0  = 0x80003598, (wrb) a0  <-- 0x80002e40
      0x800015a0 sw      a3, 0(a0)              #; a0  = 0x80002e40, 0x80002f4c ~~> Word[0x80002e40]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035a4
      0x800015a8 addi    a0, a0, -1828          #; a0  = 0x800035a4, (wrb) a0  <-- 0x80002e80
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015ac lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
                                                #; (lsu) a2  <-- 0
      0x800015b0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015ac
      0x800015ac lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
                                                #; (lsu) a2  <-- 1
      0x800015b0 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 sw      zero, 0(a0)            #; a0  = 0x80002e80, 0 ~~> Word[0x80002e80]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 sw      zero, 0(a1)            #; a1  = 0x80002f44, 0 ~~> Word[0x80002f44]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x800009cc, goto 0x800009cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009cc addi    s0, s0, 1              #; s0  = 0x80002bff, (wrb) s0  <-- 0x80002c00
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009d0 addi    s10, s10, 1            #; s10 = 0x80002c01, (wrb) s10 <-- 0x80002c02
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009d4 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d8 lbu     a0, 0(s0)              #; s0  = 0x80002c00, a0  <~~ Byte[0x80002c00]
                                                #; (lsu) a0  <-- 0
      0x800009dc bnez    a0, pc - 40            #; a0  = 0, not taken
      0x800009e0 j       pc + 0xad8             #; goto 0x800014b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800014b8 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800014bc bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800014c4
      0x800014c4 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800014c8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800014cc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800014d0 jalr    s2                     #; s2  = 0x80001514, (wrb) ra  <-- 0x800014d4, goto 0x80001514
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001514 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800015bc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015bc ret                            #; ra  = 0x800014d4, goto 0x800014d4
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800014d4 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800014d8 lw      s11, 60(sp)            #; sp  = 0x0011feb0, s11 <~~ Word[0x0011feec]
                                                #; (lsu) s11 <-- 0
      0x800014dc lw      s10, 64(sp)            #; sp  = 0x0011feb0, s10 <~~ Word[0x0011fef0]
                                                #; (lsu) s10 <-- 0
      0x800014e0 lw      s9, 68(sp)             #; sp  = 0x0011feb0, s9  <~~ Word[0x0011fef4]
                                                #; (lsu) s9  <-- 0
      0x800014e4 lw      s8, 72(sp)             #; sp  = 0x0011feb0, s8  <~~ Word[0x0011fef8]
                                                #; (lsu) s8  <-- 0
      0x800014e8 lw      s7, 76(sp)             #; sp  = 0x0011feb0, s7  <~~ Word[0x0011fefc]
                                                #; (lsu) s7  <-- 0
      0x800014ec lw      s6, 80(sp)             #; sp  = 0x0011feb0, s6  <~~ Word[0x0011ff00]
                                                #; (lsu) s6  <-- 0
      0x800014f0 lw      s5, 84(sp)             #; sp  = 0x0011feb0, s5  <~~ Word[0x0011ff04]
                                                #; (lsu) s5  <-- 0
      0x800014f4 lw      s4, 88(sp)             #; sp  = 0x0011feb0, s4  <~~ Word[0x0011ff08]
                                                #; (lsu) s4  <-- 0
      0x800014f8 lw      s3, 92(sp)             #; sp  = 0x0011feb0, s3  <~~ Word[0x0011ff0c]
                                                #; (lsu) s3  <-- 0
      0x800014fc lw      s2, 96(sp)             #; sp  = 0x0011feb0, s2  <~~ Word[0x0011ff10]
                                                #; (lsu) s2  <-- 0
      0x80001500 lw      s1, 100(sp)            #; sp  = 0x0011feb0, s1  <~~ Word[0x0011ff14]
                                                #; (lsu) s1  <-- 0
      0x80001504 lw      s0, 104(sp)            #; sp  = 0x0011feb0, s0  <~~ Word[0x0011ff18]
                                                #; (lsu) s0  <-- 0
      0x80001508 lw      ra, 108(sp)            #; sp  = 0x0011feb0, ra  <~~ Word[0x0011ff1c]
      0x8000150c addi    sp, sp, 112            #; sp  = 0x0011feb0, (wrb) sp  <-- 0x0011ff20
                                                #; (lsu) ra  <-- 0x80000910
      0x80001510 ret                            #; ra  = 0x80000910, goto 0x80000910
; printf_ (printf.c:869)
      0x80000910 lw      ra, 12(sp)             #; sp  = 0x0011ff20, ra  <~~ Word[0x0011ff2c]
      0x80000914 addi    sp, sp, 48             #; sp  = 0x0011ff20, (wrb) sp  <-- 0x0011ff50
                                                #; (lsu) ra  <-- 0x800008b0
      0x80000918 ret                            #; ra  = 0x800008b0, goto 0x800008b0
; main (test_access.c:51)
      0x800008b0 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800008b4 lw      ra, 12(sp)             #; sp  = 0x0011ff50, ra  <~~ Word[0x0011ff5c]
      0x800008b8 addi    sp, sp, 16             #; sp  = 0x0011ff50, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002970
      0x800008bc ret                            #; ra  = 0x80002970, goto 0x80002970
; ?? (start.S:184)
      0x80002970 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002974 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002974
      0x80002978 jalr    ra, ra, 524            #; ra  = 0x80002974, (wrb) ra  <-- 0x8000297c, goto 0x80002b80
; ?? (start_snitch.S:33)
      0x80002b80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002b84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000297c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002b88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b88
      0x80002b8c jalr    ra, ra, -1260          #; ra  = 0x80002b88, (wrb) ra  <-- 0x80002b90, goto 0x8000269c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000269c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026a4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026a8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026ac lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800026b0 ret                            #; ra  = 0x80002b90, goto 0x80002b90
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002b90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002b94 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002b98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002b9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x8000297c
; ?? (start_snitch.S:40)
      0x80002ba0 ret                            #; ra  = 0x8000297c, goto 0x8000297c
; ?? (start.S:195)
      0x8000297c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002980 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002980
      0x80002984 jalr    ra, ra, 556            #; ra  = 0x80002980, (wrb) ra  <-- 0x80002988, goto 0x80002bac
; ?? (start_snitch.S:15)
      0x80002bac addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002bb0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002bb4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002988 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002bb8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bb8
      0x80002bbc jalr    ra, ra, -1340          #; ra  = 0x80002bb8, (wrb) ra  <-- 0x80002bc0, goto 0x8000267c
; snrt_global_core_idx (team.c:32)
      0x8000267c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002680 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002684 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002688 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000268c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002690 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002694 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002698 ret                            #; ra  = 0x80002bc0, goto 0x80002bc0
; ?? (start_snitch.S:20)
      0x80002bc0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002bc4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002bc8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002bcc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002988
; ?? (start_snitch.S:28)
      0x80002bd0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002bd4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002bd8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002bd8
      0x80002bdc addi    t1, t1, 616            #; t1  = 0x80002bd8, (wrb) t1  <-- 0x80002e40
; ?? (start_snitch.S:31)
      0x80002be0 sw      t0, 0(t1)              #; t1  = 0x80002e40, 1 ~~> Word[0x80002e40]
; ?? (start_snitch.S:32)
      0x80002be4 ret                            #; ra  = 0x80002988, goto 0x80002988
; ?? (start.S:198)
      0x80002988 wfi                            #; 
                        tion 0 @ (12, 5446):
                          131
                          198
                           10
                            3
                      12.2824
                       0.2451
                       0.0445
                          1.0
                          1.0
                            0
                       0.9388
                          5.8
                       0.0114
                       0.0090
                       0.7903
                         5435
                       0.2565
