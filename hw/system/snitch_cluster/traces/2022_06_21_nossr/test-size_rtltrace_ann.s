; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002770
      0x00001014 jalr    t0                     #; t0  = 0x80002770, (wrb) ra  <-- 4120, goto 0x80002770
; ?? (start.S:20)
      0x80002770 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003770
; ?? (start.S:21)
      0x80002774 addi    gp, gp, -232           #; gp  = 0x80003770, (wrb) gp  <-- 0x80003688
; ?? (start.S:28)
      0x80002778 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002778
      0x8000277c jalr    ra, ra, 964            #; ra  = 0x80002778, (wrb) ra  <-- 0x80002780, goto 0x80002b3c
; ?? (start_snitch.S:16)
      0x80002b3c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002b40 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002b44 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002b48 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002b4c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002b50 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002b54 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002b58 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002b5c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002b60 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002b64 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002b68 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002b6c ret                            #; ra  = 0x80002780, goto 0x80002780
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002780 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002784 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002788 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002788
      0x8000278c jalr    ra, ra, 1036           #; ra  = 0x80002788, (wrb) ra  <-- 0x80002790, goto 0x80002b94
; ?? (start_snitch.S:48)
      0x80002b94 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002b98 ret                            #; ra  = 0x80002790, goto 0x80002790
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002790 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002794 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002798 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000279c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x800027a0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x800027a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027a4
      0x800027a8 addi    t0, t0, 1980           #; t0  = 0x800027a4, (wrb) t0  <-- 0x80002f60
; ?? (start.S:49)
      0x800027ac auipc   t1, 0x0                #; (wrb) t1  <-- 0x800027ac
      0x800027b0 addi    t1, t1, 1976           #; t1  = 0x800027ac, (wrb) t1  <-- 0x80002f64
; ?? (start.S:50)
      0x800027b4 bge     t0, t1, pc + 16        #; t0  = 0x80002f60, t1  = 0x80002f64, not taken
; ?? (start.S:51)
      0x800027b8 sw      zero, 0(t0)            #; t0  = 0x80002f60, 0 ~~> Word[0x80002f60]
; ?? (start.S:52)
      0x800027bc addi    t0, t0, 4              #; t0  = 0x80002f60, (wrb) t0  <-- 0x80002f64
; ?? (start.S:53)
      0x800027c0 blt     t0, t1, pc - 8         #; t0  = 0x80002f64, t1  = 0x80002f64, not taken
; ?? (start.S:58)
      0x800027c4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x800027c8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x800027cc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x800027d0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x800027d4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x800027d8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x800027dc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x800027e0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x800027e4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x800027e8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x800027ec fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x800027f0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x800027f4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x800027f8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x800027fc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002800 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002804 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002808 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000280c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002810 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002814 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002818 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000281c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002820 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002824 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002828 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000282c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002830 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002834 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002838 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000283c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002840 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002844 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002848 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x8000284c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002850 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002854 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002858 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002858
      0x8000285c lw      t0, 900(t0)            #; t0  = 0x80002858, t0  <~~ Word[0x80002bdc]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002860 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002864 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002868 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002868
      0x8000286c lw      t2, 880(t2)            #; t2  = 0x80002868, t2  <~~ Word[0x80002bd8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002870 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002874 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002878 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x8000287c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002880 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002884 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002888 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x8000288c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002890 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002890
      0x80002894 addi    t0, t0, 1528           #; t0  = 0x80002890, (wrb) t0  <-- 0x80002e88
; ?? (start.S:125)
      0x80002898 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002898
      0x8000289c addi    t1, t1, 1520           #; t1  = 0x80002898, (wrb) t1  <-- 0x80002e88
; ?? (start.S:126)
      0x800028a0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028a0
      0x800028a4 addi    t2, t2, 1512           #; t2  = 0x800028a0, (wrb) t2  <-- 0x80002e88
; ?? (start.S:127)
      0x800028a8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800028a8
      0x800028ac addi    t3, t3, 1520           #; t3  = 0x800028a8, (wrb) t3  <-- 0x80002e98
; ?? (start.S:128)
      0x800028b0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002e88, (wrb) sp  <-- 0x80122df8
; ?? (start.S:129)
      0x800028b4 sub     sp, sp, t1             #; sp  = 0x80122df8, t1  = 0x80002e88, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x800028b8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002e88, (wrb) sp  <-- 0x80122df8
; ?? (start.S:131)
      0x800028bc sub     sp, sp, t3             #; sp  = 0x80122df8, t3  = 0x80002e98, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x800028c0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x800028c4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x800028c8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x800028cc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x800028d0 bge     t0, t1, pc + 24        #; t0  = 0x80002e88, t1  = 0x80002e88, taken, goto 0x800028e8
; ?? (start.S:147)
      0x800028e8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028e8
      0x800028ec addi    t0, t0, 1440           #; t0  = 0x800028e8, (wrb) t0  <-- 0x80002e88
; ?? (start.S:148)
      0x800028f0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028f0
      0x800028f4 addi    t1, t1, 1448           #; t1  = 0x800028f0, (wrb) t1  <-- 0x80002e98
; ?? (start.S:149)
      0x800028f8 bge     t0, t1, pc + 20        #; t0  = 0x80002e88, t1  = 0x80002e98, not taken
; ?? (start.S:150)
      0x800028fc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002900 addi    t0, t0, 4              #; t0  = 0x80002e88, (wrb) t0  <-- 0x80002e8c
; ?? (start.S:152)
      0x80002904 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002908 blt     t0, t2, pc - 12        #; t0  = 0x80002e8c, t2  = 0x80002e88, not taken
; ?? (start.S:158)
      0x8000290c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002910 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002914 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002918 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000291c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002920 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002924 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002924
      0x80002928 jalr    ra, ra, -1064          #; ra  = 0x80002924, (wrb) ra  <-- 0x8000292c, goto 0x800024fc
; _snrt_init_team (start.c:49)
      0x800024fc sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002500 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002504 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002508 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x8000250c lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002510 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002514 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002518 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x8000251c mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002520 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002524 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002528 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x8000252c divu    a0, a0, t0             #; a0  = 0, t0  = 8
; _snrt_init_team (start.c:54)
      0x80002530 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002534 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002538 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x8000253c sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002540 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002544 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002548 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x8000254c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002550 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002554 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002558 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x8000255c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002560 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002564 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002568 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x8000256c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002570 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002574 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002578 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x8000257c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002580 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002584 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002588 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x8000258c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002590 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002594 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002598 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x8000259c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800025a0 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800025a4 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800025a8 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800025ac sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800025b0 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800025b4 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800025b8 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800025bc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800025c0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800025c4 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800025c8 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800025cc lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800025d0 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800025d4 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800025d8 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800025dc lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800025e0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x800025e4 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800025e8 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800025ec mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800025f0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800035f0
      0x800025f4 addi    a1, a1, -1676          #; a1  = 0x800035f0, (wrb) a1  <-- 0x80002f64
      0x800025f8 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002f64, (wrb) a0  <-- 0x80002f64
      0x800025fc sw      zero, 0(a0)            #; a0  = 0x80002f64, 0 ~~> Word[0x80002f64]
; _snrt_init_team (start.c:86)
      0x80002600 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002604 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002608 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x8000260c sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002610 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002614 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002618 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x8000261c andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002620 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002624 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002628 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x8000262c sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002630 lw      a0, 0(a1)              #; a1  = 0x80002f64, a0  <~~ Word[0x80002f64]
                                                #; (lsu) a0  <-- 0
      0x80002634 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002638 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x8000263c sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002640 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002644 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002648 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000264c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002650 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002654 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000265c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002660 ret                            #; ra  = 0x8000292c, goto 0x8000292c
; ?? (start.S:165)
      0x8000292c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002930 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002934 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002938 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x8000293c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002940 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002944 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002944
      0x80002948 addi    t0, t0, 60             #; t0  = 0x80002944, (wrb) t0  <-- 0x80002980
; ?? (start.S:175)
      0x8000294c csrw    mtvec, t0              #; t0  = 0x80002980, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002950 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002950
      0x80002954 jalr    ra, ra, 544            #; ra  = 0x80002950, (wrb) ra  <-- 0x80002958, goto 0x80002b70
; ?? (start_snitch.S:33)
      0x80002b70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002b74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002958 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002b78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b78
      0x80002b7c jalr    ra, ra, -1268          #; ra  = 0x80002b78, (wrb) ra  <-- 0x80002b80, goto 0x80002684
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002684 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002688 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000268c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002690 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002694 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002698 ret                            #; ra  = 0x80002b80, goto 0x80002b80
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002b80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002b84 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002b88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002b8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002958
; ?? (start_snitch.S:40)
      0x80002b90 ret                            #; ra  = 0x80002958, goto 0x80002958
; ?? (start.S:183)
      0x80002958 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000958
      0x8000295c jalr    ra, ra, -804           #; ra  = 0x80000958, (wrb) ra  <-- 0x80002960, goto 0x80000634
; main (test_size.c:27)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_size.c:28)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002960 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_size.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_size.c:28)
      0x80000650 bnez    a1, pc + 584           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_size.c:38)
      0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000660 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_size.c:38)
      0x80000664 lw      a1, 88(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc8]
                                                #; (lsu) a1  <-- 0x00100000
      0x80000668 lw      a3, 80(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
                                                #; (lsu) a3  <-- 0x00100000
      0x8000066c lw      a4, 84(a0)             #; a0  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
                                                #; (lsu) a4  <-- 0x0001df30
      0x80000670 addi    a2, a1, 2016           #; a1  = 0x00100000, (wrb) a2  <-- 0x001007e0
      0x80000674 addi    a2, a2, 2016           #; a2  = 0x001007e0, (wrb) a2  <-- 0x00100fc0
      0x80000678 add     a3, a4, a3             #; a4  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x8000067c bgeu    a3, a2, pc + 12        #; a3  = 0x0011df30, a2  = 0x00100fc0, taken, goto 0x80000688
; snrt_l1alloc (alloc.c:34)
;  in main (test_size.c:38)
      0x80000688 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100fc0 ~~> Word[0x0011ffc8]
; main (alloc.c:0)
      0x8000068c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000368c
      0x80000690 addi    a0, a0, -2036          #; a0  = 0x8000368c, (wrb) a0  <-- 0x80002e98
      0x80000698 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003698
      0x8000069c addi    a0, a0, -2040          #; a0  = 0x80003698, (wrb) a0  <-- 0x80002ea0
      0x80000694 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e98]
                                                #; (f:lsu) ft0  <-- 0.001
      0x800006a8 li      a0, 504                #; (wrb) a0  <-- 504
      0x800006a0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ea0]
      0x800006ac mv      a2, a1                 #; a1  = 0x00100000, (wrb) a2  <-- 0x00100000
      0x800006a4 fcvt.d.w ft2, zero             #; ac1  = 0
                                                #; (f:fpu) ft2  <-- 0.0
                                                #; (f:lsu) ft1  <-- 1.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 0.0, ft0  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 504, (wrb) a0  <-- 503
                                                #; (f:fpu) ft3  <-- 0.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0 ~~> Doub[0x00100000]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 0.0, ft1  = 1.0
                                                #; (f:fpu) ft2  <-- 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100000, (wrb) a2  <-- 0x00100008
      0x800006c4 bnez    a0, pc - 20            #; a0  = 503, taken, goto 0x800006b0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 1.0, ft0  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 503, (wrb) a0  <-- 502
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100008, (wrb) a2  <-- 0x00100010
      0x800006c4 bnez    a0, pc - 20            #; a0  = 502, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.001
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.001 ~~> Doub[0x00100008]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 1.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 502, (wrb) a0  <-- 501
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100010, (wrb) a2  <-- 0x00100018
                                                #; (f:fpu) ft2  <-- 2.0
      0x800006c4 bnez    a0, pc - 20            #; a0  = 501, taken, goto 0x800006b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 2.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.002
      0x800006bc addi    a0, a0, -1             #; a0  = 501, (wrb) a0  <-- 500
      0x800006b4 fsd     ft3, 0(a2)             #; 0.002 ~~> Doub[0x00100010]
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100018, (wrb) a2  <-- 0x00100020
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 2.0, ft1  = 1.0
      0x800006c4 bnez    a0, pc - 20            #; a0  = 500, taken, goto 0x800006b0
                                                #; (f:fpu) ft2  <-- 3.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 3.0, ft0  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 500, (wrb) a0  <-- 499
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100020, (wrb) a2  <-- 0x00100028
      0x800006c4 bnez    a0, pc - 20            #; a0  = 499, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.003
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.003 ~~> Doub[0x00100018]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 3.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 499, (wrb) a0  <-- 498
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100028, (wrb) a2  <-- 0x00100030
                                                #; (f:fpu) ft2  <-- 4.0
      0x800006c4 bnez    a0, pc - 20            #; a0  = 498, taken, goto 0x800006b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 4.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.004
      0x800006bc addi    a0, a0, -1             #; a0  = 498, (wrb) a0  <-- 497
      0x800006b4 fsd     ft3, 0(a2)             #; 0.004 ~~> Doub[0x00100020]
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100030, (wrb) a2  <-- 0x00100038
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 4.0, ft1  = 1.0
      0x800006c4 bnez    a0, pc - 20            #; a0  = 497, taken, goto 0x800006b0
                                                #; (f:fpu) ft2  <-- 5.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 5.0, ft0  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 497, (wrb) a0  <-- 496
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100038, (wrb) a2  <-- 0x00100040
      0x800006c4 bnez    a0, pc - 20            #; a0  = 496, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.005
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.005 ~~> Doub[0x00100028]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 5.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 496, (wrb) a0  <-- 495
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100040, (wrb) a2  <-- 0x00100048
                                                #; (f:fpu) ft2  <-- 6.0
      0x800006c4 bnez    a0, pc - 20            #; a0  = 495, taken, goto 0x800006b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 6.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.006
      0x800006bc addi    a0, a0, -1             #; a0  = 495, (wrb) a0  <-- 494
      0x800006b4 fsd     ft3, 0(a2)             #; 0.006 ~~> Doub[0x00100030]
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100048, (wrb) a2  <-- 0x00100050
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 6.0, ft1  = 1.0
      0x800006c4 bnez    a0, pc - 20            #; a0  = 494, taken, goto 0x800006b0
                                                #; (f:fpu) ft2  <-- 7.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 7.0, ft0  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 494, (wrb) a0  <-- 493
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100050, (wrb) a2  <-- 0x00100058
      0x800006c4 bnez    a0, pc - 20            #; a0  = 493, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.007
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.007 ~~> Doub[0x00100038]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 7.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 493, (wrb) a0  <-- 492
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100058, (wrb) a2  <-- 0x00100060
                                                #; (f:fpu) ft2  <-- 8.0
      0x800006c4 bnez    a0, pc - 20            #; a0  = 492, taken, goto 0x800006b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 8.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.008
      0x800006bc addi    a0, a0, -1             #; a0  = 492, (wrb) a0  <-- 491
      0x800006b4 fsd     ft3, 0(a2)             #; 0.008 ~~> Doub[0x00100040]
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100060, (wrb) a2  <-- 0x00100068
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 8.0, ft1  = 1.0
      0x800006c4 bnez    a0, pc - 20            #; a0  = 491, taken, goto 0x800006b0
                                                #; (f:fpu) ft2  <-- 9.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 9.0, ft0  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 491, (wrb) a0  <-- 490
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100068, (wrb) a2  <-- 0x00100070
      0x800006c4 bnez    a0, pc - 20            #; a0  = 490, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0090000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0090000 ~~> Doub[0x00100048]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 9.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 490, (wrb) a0  <-- 489
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100070, (wrb) a2  <-- 0x00100078
                                                #; (f:fpu) ft2  <-- 10.0
      0x800006c4 bnez    a0, pc - 20            #; a0  = 489, taken, goto 0x800006b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 10.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.01
      0x800006bc addi    a0, a0, -1             #; a0  = 489, (wrb) a0  <-- 488
      0x800006b4 fsd     ft3, 0(a2)             #; 0.01 ~~> Doub[0x00100050]
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100078, (wrb) a2  <-- 0x00100080
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 10.0, ft1  = 1.0
      0x800006c4 bnez    a0, pc - 20            #; a0  = 488, taken, goto 0x800006b0
                                                #; (f:fpu) ft2  <-- 11.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 11.0, ft0  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 488, (wrb) a0  <-- 487
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100080, (wrb) a2  <-- 0x00100088
      0x800006c4 bnez    a0, pc - 20            #; a0  = 487, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.011
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.011 ~~> Doub[0x00100058]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 11.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 487, (wrb) a0  <-- 486
                                                #; (f:fpu) ft2  <-- 12.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100088, (wrb) a2  <-- 0x00100090
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 12.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 486, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.012
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.012 ~~> Doub[0x00100060]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 12.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 486, (wrb) a0  <-- 485
                                                #; (f:fpu) ft2  <-- 13.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100090, (wrb) a2  <-- 0x00100098
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 13.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 485, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0130000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0130000 ~~> Doub[0x00100068]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 13.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 485, (wrb) a0  <-- 484
                                                #; (f:fpu) ft2  <-- 14.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100098, (wrb) a2  <-- 0x001000a0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 14.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 484, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.014
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.014 ~~> Doub[0x00100070]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 14.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 484, (wrb) a0  <-- 483
                                                #; (f:fpu) ft2  <-- 15.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000a0, (wrb) a2  <-- 0x001000a8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 15.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 483, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.015
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.015 ~~> Doub[0x00100078]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 15.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 483, (wrb) a0  <-- 482
                                                #; (f:fpu) ft2  <-- 16.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000a8, (wrb) a2  <-- 0x001000b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 16.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 482, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.016
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.016 ~~> Doub[0x00100080]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 16.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 482, (wrb) a0  <-- 481
                                                #; (f:fpu) ft2  <-- 17.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000b0, (wrb) a2  <-- 0x001000b8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 17.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 481, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.017
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.017 ~~> Doub[0x00100088]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 17.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 481, (wrb) a0  <-- 480
                                                #; (f:fpu) ft2  <-- 18.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000b8, (wrb) a2  <-- 0x001000c0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 18.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 480, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0180000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0180000 ~~> Doub[0x00100090]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 18.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 480, (wrb) a0  <-- 479
                                                #; (f:fpu) ft2  <-- 19.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000c0, (wrb) a2  <-- 0x001000c8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 19.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 479, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.019
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.019 ~~> Doub[0x00100098]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 19.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 479, (wrb) a0  <-- 478
                                                #; (f:fpu) ft2  <-- 20.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000c8, (wrb) a2  <-- 0x001000d0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 20.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 478, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.02
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.02 ~~> Doub[0x001000a0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 20.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 478, (wrb) a0  <-- 477
                                                #; (f:fpu) ft2  <-- 21.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000d0, (wrb) a2  <-- 0x001000d8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 21.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 477, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.021
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.021 ~~> Doub[0x001000a8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 21.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 477, (wrb) a0  <-- 476
                                                #; (f:fpu) ft2  <-- 22.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000d8, (wrb) a2  <-- 0x001000e0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 22.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 476, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.022
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.022 ~~> Doub[0x001000b0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 22.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 476, (wrb) a0  <-- 475
                                                #; (f:fpu) ft2  <-- 23.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000e0, (wrb) a2  <-- 0x001000e8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 23.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 475, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.023
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.023 ~~> Doub[0x001000b8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 23.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 475, (wrb) a0  <-- 474
                                                #; (f:fpu) ft2  <-- 24.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000e8, (wrb) a2  <-- 0x001000f0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 24.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 474, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.024
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.024 ~~> Doub[0x001000c0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 24.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 474, (wrb) a0  <-- 473
                                                #; (f:fpu) ft2  <-- 25.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000f0, (wrb) a2  <-- 0x001000f8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 25.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 473, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.025
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.025 ~~> Doub[0x001000c8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 25.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 473, (wrb) a0  <-- 472
                                                #; (f:fpu) ft2  <-- 26.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000f8, (wrb) a2  <-- 0x00100100
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 26.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 472, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0260000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0260000 ~~> Doub[0x001000d0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 26.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 472, (wrb) a0  <-- 471
                                                #; (f:fpu) ft2  <-- 27.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100100, (wrb) a2  <-- 0x00100108
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 27.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 471, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.027
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.027 ~~> Doub[0x001000d8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 27.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 471, (wrb) a0  <-- 470
                                                #; (f:fpu) ft2  <-- 28.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100108, (wrb) a2  <-- 0x00100110
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 28.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 470, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.028
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.028 ~~> Doub[0x001000e0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 28.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 470, (wrb) a0  <-- 469
                                                #; (f:fpu) ft2  <-- 29.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100110, (wrb) a2  <-- 0x00100118
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 29.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 469, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.029
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.029 ~~> Doub[0x001000e8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 29.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 469, (wrb) a0  <-- 468
                                                #; (f:fpu) ft2  <-- 30.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100118, (wrb) a2  <-- 0x00100120
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 30.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 468, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.03
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.03 ~~> Doub[0x001000f0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 30.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 468, (wrb) a0  <-- 467
                                                #; (f:fpu) ft2  <-- 31.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100120, (wrb) a2  <-- 0x00100128
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 31.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 467, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.031
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.031 ~~> Doub[0x001000f8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 31.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 467, (wrb) a0  <-- 466
                                                #; (f:fpu) ft2  <-- 32.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100128, (wrb) a2  <-- 0x00100130
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 32.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 466, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.032
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.032 ~~> Doub[0x00100100]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 32.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 466, (wrb) a0  <-- 465
                                                #; (f:fpu) ft2  <-- 33.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100130, (wrb) a2  <-- 0x00100138
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 33.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 465, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.033
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.033 ~~> Doub[0x00100108]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 33.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 465, (wrb) a0  <-- 464
                                                #; (f:fpu) ft2  <-- 34.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100138, (wrb) a2  <-- 0x00100140
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 34.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 464, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.034
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.034 ~~> Doub[0x00100110]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 34.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 464, (wrb) a0  <-- 463
                                                #; (f:fpu) ft2  <-- 35.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100140, (wrb) a2  <-- 0x00100148
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 35.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 463, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.035
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.035 ~~> Doub[0x00100118]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 35.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 463, (wrb) a0  <-- 462
                                                #; (f:fpu) ft2  <-- 36.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100148, (wrb) a2  <-- 0x00100150
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 36.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 462, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0360000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0360000 ~~> Doub[0x00100120]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 36.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 462, (wrb) a0  <-- 461
                                                #; (f:fpu) ft2  <-- 37.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100150, (wrb) a2  <-- 0x00100158
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 37.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 461, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.037
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.037 ~~> Doub[0x00100128]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 37.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 461, (wrb) a0  <-- 460
                                                #; (f:fpu) ft2  <-- 38.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100158, (wrb) a2  <-- 0x00100160
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 38.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 460, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.038
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.038 ~~> Doub[0x00100130]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 38.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 460, (wrb) a0  <-- 459
                                                #; (f:fpu) ft2  <-- 39.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100160, (wrb) a2  <-- 0x00100168
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 39.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 459, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.039
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.039 ~~> Doub[0x00100138]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 39.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 459, (wrb) a0  <-- 458
                                                #; (f:fpu) ft2  <-- 40.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100168, (wrb) a2  <-- 0x00100170
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 40.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 458, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.04
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.04 ~~> Doub[0x00100140]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 40.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 458, (wrb) a0  <-- 457
                                                #; (f:fpu) ft2  <-- 41.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100170, (wrb) a2  <-- 0x00100178
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 41.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 457, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.041
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.041 ~~> Doub[0x00100148]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 41.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 457, (wrb) a0  <-- 456
                                                #; (f:fpu) ft2  <-- 42.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100178, (wrb) a2  <-- 0x00100180
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 42.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 456, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.042
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.042 ~~> Doub[0x00100150]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 42.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 456, (wrb) a0  <-- 455
                                                #; (f:fpu) ft2  <-- 43.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100180, (wrb) a2  <-- 0x00100188
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 43.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 455, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0430000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0430000 ~~> Doub[0x00100158]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 43.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 455, (wrb) a0  <-- 454
                                                #; (f:fpu) ft2  <-- 44.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100188, (wrb) a2  <-- 0x00100190
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 44.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 454, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.044
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.044 ~~> Doub[0x00100160]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 44.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 454, (wrb) a0  <-- 453
                                                #; (f:fpu) ft2  <-- 45.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100190, (wrb) a2  <-- 0x00100198
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 45.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 453, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.045
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.045 ~~> Doub[0x00100168]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 45.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 453, (wrb) a0  <-- 452
                                                #; (f:fpu) ft2  <-- 46.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100198, (wrb) a2  <-- 0x001001a0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 46.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 452, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.046
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.046 ~~> Doub[0x00100170]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 46.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 452, (wrb) a0  <-- 451
                                                #; (f:fpu) ft2  <-- 47.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001a0, (wrb) a2  <-- 0x001001a8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 47.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 451, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.047
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.047 ~~> Doub[0x00100178]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 47.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 451, (wrb) a0  <-- 450
                                                #; (f:fpu) ft2  <-- 48.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001a8, (wrb) a2  <-- 0x001001b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 48.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 450, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.048
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.048 ~~> Doub[0x00100180]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 48.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 450, (wrb) a0  <-- 449
                                                #; (f:fpu) ft2  <-- 49.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001b0, (wrb) a2  <-- 0x001001b8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 49.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 449, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.049
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.049 ~~> Doub[0x00100188]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 49.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 449, (wrb) a0  <-- 448
                                                #; (f:fpu) ft2  <-- 50.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001b8, (wrb) a2  <-- 0x001001c0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 50.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 448, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.05
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.05 ~~> Doub[0x00100190]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 50.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 448, (wrb) a0  <-- 447
                                                #; (f:fpu) ft2  <-- 51.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001c0, (wrb) a2  <-- 0x001001c8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 51.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 447, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0510000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0510000 ~~> Doub[0x00100198]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 51.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 447, (wrb) a0  <-- 446
                                                #; (f:fpu) ft2  <-- 52.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001c8, (wrb) a2  <-- 0x001001d0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 52.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 446, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0520000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0520000 ~~> Doub[0x001001a0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 52.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 446, (wrb) a0  <-- 445
                                                #; (f:fpu) ft2  <-- 53.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001d0, (wrb) a2  <-- 0x001001d8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 53.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 445, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.053
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.053 ~~> Doub[0x001001a8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 53.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 445, (wrb) a0  <-- 444
                                                #; (f:fpu) ft2  <-- 54.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001d8, (wrb) a2  <-- 0x001001e0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 54.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 444, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.054
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.054 ~~> Doub[0x001001b0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 54.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 444, (wrb) a0  <-- 443
                                                #; (f:fpu) ft2  <-- 55.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001e0, (wrb) a2  <-- 0x001001e8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 55.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 443, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.055
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.055 ~~> Doub[0x001001b8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 55.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 443, (wrb) a0  <-- 442
                                                #; (f:fpu) ft2  <-- 56.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001e8, (wrb) a2  <-- 0x001001f0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 56.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 442, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.056
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.056 ~~> Doub[0x001001c0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 56.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 442, (wrb) a0  <-- 441
                                                #; (f:fpu) ft2  <-- 57.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001f0, (wrb) a2  <-- 0x001001f8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 57.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 441, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.057
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.057 ~~> Doub[0x001001c8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 57.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 441, (wrb) a0  <-- 440
                                                #; (f:fpu) ft2  <-- 58.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001f8, (wrb) a2  <-- 0x00100200
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 58.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 440, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.058
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.058 ~~> Doub[0x001001d0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 58.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 440, (wrb) a0  <-- 439
                                                #; (f:fpu) ft2  <-- 59.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100200, (wrb) a2  <-- 0x00100208
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 59.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 439, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0590000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0590000 ~~> Doub[0x001001d8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 59.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 439, (wrb) a0  <-- 438
                                                #; (f:fpu) ft2  <-- 60.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100208, (wrb) a2  <-- 0x00100210
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 60.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 438, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.06
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.06 ~~> Doub[0x001001e0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 60.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 438, (wrb) a0  <-- 437
                                                #; (f:fpu) ft2  <-- 61.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100210, (wrb) a2  <-- 0x00100218
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 61.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 437, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.061
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.061 ~~> Doub[0x001001e8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 61.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 437, (wrb) a0  <-- 436
                                                #; (f:fpu) ft2  <-- 62.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100218, (wrb) a2  <-- 0x00100220
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 62.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 436, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.062
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.062 ~~> Doub[0x001001f0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 62.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 436, (wrb) a0  <-- 435
                                                #; (f:fpu) ft2  <-- 63.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100220, (wrb) a2  <-- 0x00100228
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 63.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 435, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.063
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.063 ~~> Doub[0x001001f8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 63.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 435, (wrb) a0  <-- 434
                                                #; (f:fpu) ft2  <-- 64.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100228, (wrb) a2  <-- 0x00100230
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 64.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 434, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.064
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.064 ~~> Doub[0x00100200]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 64.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 434, (wrb) a0  <-- 433
                                                #; (f:fpu) ft2  <-- 65.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100230, (wrb) a2  <-- 0x00100238
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 65.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 433, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.065
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.065 ~~> Doub[0x00100208]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 65.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 433, (wrb) a0  <-- 432
                                                #; (f:fpu) ft2  <-- 66.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100238, (wrb) a2  <-- 0x00100240
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 66.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 432, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.066
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.066 ~~> Doub[0x00100210]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 66.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 432, (wrb) a0  <-- 431
                                                #; (f:fpu) ft2  <-- 67.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100240, (wrb) a2  <-- 0x00100248
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 67.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 431, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.067
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.067 ~~> Doub[0x00100218]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 67.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 431, (wrb) a0  <-- 430
                                                #; (f:fpu) ft2  <-- 68.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100248, (wrb) a2  <-- 0x00100250
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 68.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 430, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.068
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.068 ~~> Doub[0x00100220]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 68.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 430, (wrb) a0  <-- 429
                                                #; (f:fpu) ft2  <-- 69.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100250, (wrb) a2  <-- 0x00100258
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 69.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 429, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.069
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.069 ~~> Doub[0x00100228]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 69.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 429, (wrb) a0  <-- 428
                                                #; (f:fpu) ft2  <-- 70.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100258, (wrb) a2  <-- 0x00100260
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 70.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 428, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.07
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.07 ~~> Doub[0x00100230]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 70.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 428, (wrb) a0  <-- 427
                                                #; (f:fpu) ft2  <-- 71.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100260, (wrb) a2  <-- 0x00100268
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 71.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 427, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0710000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0710000 ~~> Doub[0x00100238]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 71.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 427, (wrb) a0  <-- 426
                                                #; (f:fpu) ft2  <-- 72.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100268, (wrb) a2  <-- 0x00100270
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 72.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 426, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0720000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0720000 ~~> Doub[0x00100240]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 72.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 426, (wrb) a0  <-- 425
                                                #; (f:fpu) ft2  <-- 73.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100270, (wrb) a2  <-- 0x00100278
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 73.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 425, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.073
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.073 ~~> Doub[0x00100248]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 73.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 425, (wrb) a0  <-- 424
                                                #; (f:fpu) ft2  <-- 74.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100278, (wrb) a2  <-- 0x00100280
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 74.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 424, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.074
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.074 ~~> Doub[0x00100250]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 74.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 424, (wrb) a0  <-- 423
                                                #; (f:fpu) ft2  <-- 75.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100280, (wrb) a2  <-- 0x00100288
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 75.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 423, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.075
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.075 ~~> Doub[0x00100258]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 75.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 423, (wrb) a0  <-- 422
                                                #; (f:fpu) ft2  <-- 76.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100288, (wrb) a2  <-- 0x00100290
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 76.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 422, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.076
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.076 ~~> Doub[0x00100260]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 76.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 422, (wrb) a0  <-- 421
                                                #; (f:fpu) ft2  <-- 77.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100290, (wrb) a2  <-- 0x00100298
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 77.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 421, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.077
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.077 ~~> Doub[0x00100268]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 77.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 421, (wrb) a0  <-- 420
                                                #; (f:fpu) ft2  <-- 78.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100298, (wrb) a2  <-- 0x001002a0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 78.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 420, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.078
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.078 ~~> Doub[0x00100270]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 78.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 420, (wrb) a0  <-- 419
                                                #; (f:fpu) ft2  <-- 79.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002a0, (wrb) a2  <-- 0x001002a8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 79.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 419, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.079
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.079 ~~> Doub[0x00100278]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 79.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 419, (wrb) a0  <-- 418
                                                #; (f:fpu) ft2  <-- 80.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002a8, (wrb) a2  <-- 0x001002b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 80.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 418, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.08
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.08 ~~> Doub[0x00100280]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 80.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 418, (wrb) a0  <-- 417
                                                #; (f:fpu) ft2  <-- 81.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002b0, (wrb) a2  <-- 0x001002b8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 81.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 417, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.081
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.081 ~~> Doub[0x00100288]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 81.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 417, (wrb) a0  <-- 416
                                                #; (f:fpu) ft2  <-- 82.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002b8, (wrb) a2  <-- 0x001002c0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 82.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 416, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.082
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.082 ~~> Doub[0x00100290]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 82.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 416, (wrb) a0  <-- 415
                                                #; (f:fpu) ft2  <-- 83.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002c0, (wrb) a2  <-- 0x001002c8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 83.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 415, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.083
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.083 ~~> Doub[0x00100298]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 83.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 415, (wrb) a0  <-- 414
                                                #; (f:fpu) ft2  <-- 84.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002c8, (wrb) a2  <-- 0x001002d0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 84.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 414, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.084
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.084 ~~> Doub[0x001002a0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 84.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 414, (wrb) a0  <-- 413
                                                #; (f:fpu) ft2  <-- 85.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002d0, (wrb) a2  <-- 0x001002d8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 85.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 413, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.085
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.085 ~~> Doub[0x001002a8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 85.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 413, (wrb) a0  <-- 412
                                                #; (f:fpu) ft2  <-- 86.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002d8, (wrb) a2  <-- 0x001002e0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 86.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 412, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0860000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0860000 ~~> Doub[0x001002b0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 86.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 412, (wrb) a0  <-- 411
                                                #; (f:fpu) ft2  <-- 87.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002e0, (wrb) a2  <-- 0x001002e8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 87.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 411, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.0870000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.0870000 ~~> Doub[0x001002b8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 87.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 411, (wrb) a0  <-- 410
                                                #; (f:fpu) ft2  <-- 88.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002e8, (wrb) a2  <-- 0x001002f0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 88.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 410, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.088
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.088 ~~> Doub[0x001002c0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 88.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 410, (wrb) a0  <-- 409
                                                #; (f:fpu) ft2  <-- 89.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002f0, (wrb) a2  <-- 0x001002f8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 89.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 409, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.089
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.089 ~~> Doub[0x001002c8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 89.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 409, (wrb) a0  <-- 408
                                                #; (f:fpu) ft2  <-- 90.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002f8, (wrb) a2  <-- 0x00100300
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 90.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 408, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.09
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.09 ~~> Doub[0x001002d0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 90.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 408, (wrb) a0  <-- 407
                                                #; (f:fpu) ft2  <-- 91.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100300, (wrb) a2  <-- 0x00100308
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 91.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 407, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.091
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.091 ~~> Doub[0x001002d8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 91.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 407, (wrb) a0  <-- 406
                                                #; (f:fpu) ft2  <-- 92.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100308, (wrb) a2  <-- 0x00100310
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 92.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 406, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.092
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.092 ~~> Doub[0x001002e0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 92.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 406, (wrb) a0  <-- 405
                                                #; (f:fpu) ft2  <-- 93.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100310, (wrb) a2  <-- 0x00100318
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 93.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 405, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.093
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.093 ~~> Doub[0x001002e8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 93.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 405, (wrb) a0  <-- 404
                                                #; (f:fpu) ft2  <-- 94.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100318, (wrb) a2  <-- 0x00100320
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 94.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 404, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.094
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.094 ~~> Doub[0x001002f0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 94.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 404, (wrb) a0  <-- 403
                                                #; (f:fpu) ft2  <-- 95.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100320, (wrb) a2  <-- 0x00100328
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 95.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 403, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.095
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.095 ~~> Doub[0x001002f8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 95.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 403, (wrb) a0  <-- 402
                                                #; (f:fpu) ft2  <-- 96.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100328, (wrb) a2  <-- 0x00100330
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 96.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 402, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.096
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.096 ~~> Doub[0x00100300]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 96.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 402, (wrb) a0  <-- 401
                                                #; (f:fpu) ft2  <-- 97.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100330, (wrb) a2  <-- 0x00100338
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 97.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 401, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.097
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.097 ~~> Doub[0x00100308]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 97.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 401, (wrb) a0  <-- 400
                                                #; (f:fpu) ft2  <-- 98.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100338, (wrb) a2  <-- 0x00100340
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 98.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 400, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.098
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.098 ~~> Doub[0x00100310]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 98.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 400, (wrb) a0  <-- 399
                                                #; (f:fpu) ft2  <-- 99.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100340, (wrb) a2  <-- 0x00100348
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 99.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 399, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.099
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.099 ~~> Doub[0x00100318]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 99.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 399, (wrb) a0  <-- 398
                                                #; (f:fpu) ft2  <-- 100.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100348, (wrb) a2  <-- 0x00100350
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 100.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 398, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1 ~~> Doub[0x00100320]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 100.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 398, (wrb) a0  <-- 397
                                                #; (f:fpu) ft2  <-- 101.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100350, (wrb) a2  <-- 0x00100358
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 101.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 397, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.101
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.101 ~~> Doub[0x00100328]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 101.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 397, (wrb) a0  <-- 396
                                                #; (f:fpu) ft2  <-- 102.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100358, (wrb) a2  <-- 0x00100360
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 102.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 396, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1020000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1020000 ~~> Doub[0x00100330]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 102.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 396, (wrb) a0  <-- 395
                                                #; (f:fpu) ft2  <-- 103.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100360, (wrb) a2  <-- 0x00100368
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 103.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 395, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1030000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1030000 ~~> Doub[0x00100338]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 103.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 395, (wrb) a0  <-- 394
                                                #; (f:fpu) ft2  <-- 104.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100368, (wrb) a2  <-- 0x00100370
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 104.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 394, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1040000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1040000 ~~> Doub[0x00100340]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 104.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 394, (wrb) a0  <-- 393
                                                #; (f:fpu) ft2  <-- 105.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100370, (wrb) a2  <-- 0x00100378
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 105.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 393, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.105
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.105 ~~> Doub[0x00100348]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 105.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 393, (wrb) a0  <-- 392
                                                #; (f:fpu) ft2  <-- 106.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100378, (wrb) a2  <-- 0x00100380
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 106.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 392, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.106
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.106 ~~> Doub[0x00100350]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 106.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 392, (wrb) a0  <-- 391
                                                #; (f:fpu) ft2  <-- 107.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100380, (wrb) a2  <-- 0x00100388
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 107.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 391, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.107
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.107 ~~> Doub[0x00100358]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 107.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 391, (wrb) a0  <-- 390
                                                #; (f:fpu) ft2  <-- 108.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100388, (wrb) a2  <-- 0x00100390
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 108.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 390, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.108
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.108 ~~> Doub[0x00100360]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 108.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 390, (wrb) a0  <-- 389
                                                #; (f:fpu) ft2  <-- 109.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100390, (wrb) a2  <-- 0x00100398
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 109.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 389, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.109
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.109 ~~> Doub[0x00100368]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 109.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 389, (wrb) a0  <-- 388
                                                #; (f:fpu) ft2  <-- 110.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100398, (wrb) a2  <-- 0x001003a0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 110.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 388, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.11
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.11 ~~> Doub[0x00100370]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 110.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 388, (wrb) a0  <-- 387
                                                #; (f:fpu) ft2  <-- 111.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003a0, (wrb) a2  <-- 0x001003a8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 111.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 387, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.111
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.111 ~~> Doub[0x00100378]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 111.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 387, (wrb) a0  <-- 386
                                                #; (f:fpu) ft2  <-- 112.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003a8, (wrb) a2  <-- 0x001003b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 112.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 386, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.112
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.112 ~~> Doub[0x00100380]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 112.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 386, (wrb) a0  <-- 385
                                                #; (f:fpu) ft2  <-- 113.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003b0, (wrb) a2  <-- 0x001003b8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 113.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 385, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.113
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.113 ~~> Doub[0x00100388]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 113.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 385, (wrb) a0  <-- 384
                                                #; (f:fpu) ft2  <-- 114.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003b8, (wrb) a2  <-- 0x001003c0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 114.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 384, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.114
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.114 ~~> Doub[0x00100390]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 114.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 384, (wrb) a0  <-- 383
                                                #; (f:fpu) ft2  <-- 115.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003c0, (wrb) a2  <-- 0x001003c8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 115.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 383, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.115
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.115 ~~> Doub[0x00100398]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 115.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 383, (wrb) a0  <-- 382
                                                #; (f:fpu) ft2  <-- 116.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003c8, (wrb) a2  <-- 0x001003d0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 116.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 382, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.116
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.116 ~~> Doub[0x001003a0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 116.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 382, (wrb) a0  <-- 381
                                                #; (f:fpu) ft2  <-- 117.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003d0, (wrb) a2  <-- 0x001003d8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 117.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 381, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.117
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.117 ~~> Doub[0x001003a8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 117.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 381, (wrb) a0  <-- 380
                                                #; (f:fpu) ft2  <-- 118.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003d8, (wrb) a2  <-- 0x001003e0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 118.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 380, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1180000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1180000 ~~> Doub[0x001003b0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 118.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 380, (wrb) a0  <-- 379
                                                #; (f:fpu) ft2  <-- 119.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003e0, (wrb) a2  <-- 0x001003e8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 119.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 379, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1190000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1190000 ~~> Doub[0x001003b8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 119.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 379, (wrb) a0  <-- 378
                                                #; (f:fpu) ft2  <-- 120.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003e8, (wrb) a2  <-- 0x001003f0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 120.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 378, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.12
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.12 ~~> Doub[0x001003c0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 120.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 378, (wrb) a0  <-- 377
                                                #; (f:fpu) ft2  <-- 121.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003f0, (wrb) a2  <-- 0x001003f8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 121.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 377, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.121
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.121 ~~> Doub[0x001003c8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 121.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 377, (wrb) a0  <-- 376
                                                #; (f:fpu) ft2  <-- 122.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003f8, (wrb) a2  <-- 0x00100400
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 122.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 376, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.122
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.122 ~~> Doub[0x001003d0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 122.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 376, (wrb) a0  <-- 375
                                                #; (f:fpu) ft2  <-- 123.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100400, (wrb) a2  <-- 0x00100408
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 123.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 375, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.123
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.123 ~~> Doub[0x001003d8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 123.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 375, (wrb) a0  <-- 374
                                                #; (f:fpu) ft2  <-- 124.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100408, (wrb) a2  <-- 0x00100410
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 124.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 374, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.124
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.124 ~~> Doub[0x001003e0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 124.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 374, (wrb) a0  <-- 373
                                                #; (f:fpu) ft2  <-- 125.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100410, (wrb) a2  <-- 0x00100418
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 125.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 373, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.125
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.125 ~~> Doub[0x001003e8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 125.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 373, (wrb) a0  <-- 372
                                                #; (f:fpu) ft2  <-- 126.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100418, (wrb) a2  <-- 0x00100420
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 126.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 372, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.126
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.126 ~~> Doub[0x001003f0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 126.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 372, (wrb) a0  <-- 371
                                                #; (f:fpu) ft2  <-- 127.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100420, (wrb) a2  <-- 0x00100428
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 127.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 371, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.127
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.127 ~~> Doub[0x001003f8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 127.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 371, (wrb) a0  <-- 370
                                                #; (f:fpu) ft2  <-- 128.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100428, (wrb) a2  <-- 0x00100430
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 128.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 370, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.128
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.128 ~~> Doub[0x00100400]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 128.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 370, (wrb) a0  <-- 369
                                                #; (f:fpu) ft2  <-- 129.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100430, (wrb) a2  <-- 0x00100438
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 129.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 369, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.129
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.129 ~~> Doub[0x00100408]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 129.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 369, (wrb) a0  <-- 368
                                                #; (f:fpu) ft2  <-- 130.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100438, (wrb) a2  <-- 0x00100440
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 130.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 368, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.13
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.13 ~~> Doub[0x00100410]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 130.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 368, (wrb) a0  <-- 367
                                                #; (f:fpu) ft2  <-- 131.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100440, (wrb) a2  <-- 0x00100448
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 131.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 367, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.131
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.131 ~~> Doub[0x00100418]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 131.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 367, (wrb) a0  <-- 366
                                                #; (f:fpu) ft2  <-- 132.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100448, (wrb) a2  <-- 0x00100450
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 132.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 366, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.132
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.132 ~~> Doub[0x00100420]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 132.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 366, (wrb) a0  <-- 365
                                                #; (f:fpu) ft2  <-- 133.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100450, (wrb) a2  <-- 0x00100458
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 133.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 365, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.133
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.133 ~~> Doub[0x00100428]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 133.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 365, (wrb) a0  <-- 364
                                                #; (f:fpu) ft2  <-- 134.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100458, (wrb) a2  <-- 0x00100460
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 134.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 364, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.134
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.134 ~~> Doub[0x00100430]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 134.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 364, (wrb) a0  <-- 363
                                                #; (f:fpu) ft2  <-- 135.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100460, (wrb) a2  <-- 0x00100468
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 135.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 363, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.135
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.135 ~~> Doub[0x00100438]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 135.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 363, (wrb) a0  <-- 362
                                                #; (f:fpu) ft2  <-- 136.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100468, (wrb) a2  <-- 0x00100470
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 136.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 362, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.136
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.136 ~~> Doub[0x00100440]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 136.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 362, (wrb) a0  <-- 361
                                                #; (f:fpu) ft2  <-- 137.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100470, (wrb) a2  <-- 0x00100478
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 137.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 361, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.137
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.137 ~~> Doub[0x00100448]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 137.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 361, (wrb) a0  <-- 360
                                                #; (f:fpu) ft2  <-- 138.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100478, (wrb) a2  <-- 0x00100480
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 138.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 360, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.138
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.138 ~~> Doub[0x00100450]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 138.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 360, (wrb) a0  <-- 359
                                                #; (f:fpu) ft2  <-- 139.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100480, (wrb) a2  <-- 0x00100488
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 139.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 359, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.139
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.139 ~~> Doub[0x00100458]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 139.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 359, (wrb) a0  <-- 358
                                                #; (f:fpu) ft2  <-- 140.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100488, (wrb) a2  <-- 0x00100490
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 140.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 358, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.14
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.14 ~~> Doub[0x00100460]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 140.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 358, (wrb) a0  <-- 357
                                                #; (f:fpu) ft2  <-- 141.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100490, (wrb) a2  <-- 0x00100498
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 141.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 357, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1410000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1410000 ~~> Doub[0x00100468]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 141.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 357, (wrb) a0  <-- 356
                                                #; (f:fpu) ft2  <-- 142.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100498, (wrb) a2  <-- 0x001004a0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 142.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 356, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1420000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1420000 ~~> Doub[0x00100470]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 142.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 356, (wrb) a0  <-- 355
                                                #; (f:fpu) ft2  <-- 143.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004a0, (wrb) a2  <-- 0x001004a8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 143.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 355, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1430000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1430000 ~~> Doub[0x00100478]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 143.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 355, (wrb) a0  <-- 354
                                                #; (f:fpu) ft2  <-- 144.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004a8, (wrb) a2  <-- 0x001004b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 144.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 354, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1440000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1440000 ~~> Doub[0x00100480]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 144.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 354, (wrb) a0  <-- 353
                                                #; (f:fpu) ft2  <-- 145.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004b0, (wrb) a2  <-- 0x001004b8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 145.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 353, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.145
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.145 ~~> Doub[0x00100488]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 145.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 353, (wrb) a0  <-- 352
                                                #; (f:fpu) ft2  <-- 146.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004b8, (wrb) a2  <-- 0x001004c0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 146.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 352, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.146
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.146 ~~> Doub[0x00100490]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 146.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 352, (wrb) a0  <-- 351
                                                #; (f:fpu) ft2  <-- 147.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004c0, (wrb) a2  <-- 0x001004c8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 147.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 351, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.147
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.147 ~~> Doub[0x00100498]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 147.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 351, (wrb) a0  <-- 350
                                                #; (f:fpu) ft2  <-- 148.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004c8, (wrb) a2  <-- 0x001004d0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 148.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 350, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.148
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.148 ~~> Doub[0x001004a0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 148.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 350, (wrb) a0  <-- 349
                                                #; (f:fpu) ft2  <-- 149.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004d0, (wrb) a2  <-- 0x001004d8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 149.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 349, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.149
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.149 ~~> Doub[0x001004a8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 149.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 349, (wrb) a0  <-- 348
                                                #; (f:fpu) ft2  <-- 150.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004d8, (wrb) a2  <-- 0x001004e0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 150.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 348, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.15
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.15 ~~> Doub[0x001004b0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 150.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 348, (wrb) a0  <-- 347
                                                #; (f:fpu) ft2  <-- 151.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004e0, (wrb) a2  <-- 0x001004e8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 151.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 347, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.151
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.151 ~~> Doub[0x001004b8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 151.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 347, (wrb) a0  <-- 346
                                                #; (f:fpu) ft2  <-- 152.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004e8, (wrb) a2  <-- 0x001004f0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 152.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 346, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.152
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.152 ~~> Doub[0x001004c0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 152.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 346, (wrb) a0  <-- 345
                                                #; (f:fpu) ft2  <-- 153.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004f0, (wrb) a2  <-- 0x001004f8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 153.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 345, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.153
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.153 ~~> Doub[0x001004c8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 153.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 345, (wrb) a0  <-- 344
                                                #; (f:fpu) ft2  <-- 154.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004f8, (wrb) a2  <-- 0x00100500
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 154.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 344, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.154
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.154 ~~> Doub[0x001004d0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 154.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 344, (wrb) a0  <-- 343
                                                #; (f:fpu) ft2  <-- 155.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100500, (wrb) a2  <-- 0x00100508
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 155.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 343, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.155
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.155 ~~> Doub[0x001004d8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 155.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 343, (wrb) a0  <-- 342
                                                #; (f:fpu) ft2  <-- 156.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100508, (wrb) a2  <-- 0x00100510
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 156.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 342, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.156
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.156 ~~> Doub[0x001004e0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 156.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 342, (wrb) a0  <-- 341
                                                #; (f:fpu) ft2  <-- 157.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100510, (wrb) a2  <-- 0x00100518
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 157.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 341, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.157
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.157 ~~> Doub[0x001004e8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 157.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 341, (wrb) a0  <-- 340
                                                #; (f:fpu) ft2  <-- 158.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100518, (wrb) a2  <-- 0x00100520
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 158.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 340, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.158
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.158 ~~> Doub[0x001004f0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 158.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 340, (wrb) a0  <-- 339
                                                #; (f:fpu) ft2  <-- 159.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100520, (wrb) a2  <-- 0x00100528
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 159.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 339, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.159
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.159 ~~> Doub[0x001004f8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 159.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 339, (wrb) a0  <-- 338
                                                #; (f:fpu) ft2  <-- 160.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100528, (wrb) a2  <-- 0x00100530
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 160.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 338, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.16
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.16 ~~> Doub[0x00100500]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 160.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 338, (wrb) a0  <-- 337
                                                #; (f:fpu) ft2  <-- 161.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100530, (wrb) a2  <-- 0x00100538
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 161.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 337, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.161
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.161 ~~> Doub[0x00100508]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 161.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 337, (wrb) a0  <-- 336
                                                #; (f:fpu) ft2  <-- 162.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100538, (wrb) a2  <-- 0x00100540
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 162.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 336, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.162
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.162 ~~> Doub[0x00100510]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 162.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 336, (wrb) a0  <-- 335
                                                #; (f:fpu) ft2  <-- 163.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100540, (wrb) a2  <-- 0x00100548
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 163.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 335, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.163
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.163 ~~> Doub[0x00100518]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 163.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 335, (wrb) a0  <-- 334
                                                #; (f:fpu) ft2  <-- 164.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100548, (wrb) a2  <-- 0x00100550
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 164.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 334, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.164
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.164 ~~> Doub[0x00100520]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 164.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 334, (wrb) a0  <-- 333
                                                #; (f:fpu) ft2  <-- 165.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100550, (wrb) a2  <-- 0x00100558
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 165.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 333, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.165
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.165 ~~> Doub[0x00100528]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 165.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 333, (wrb) a0  <-- 332
                                                #; (f:fpu) ft2  <-- 166.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100558, (wrb) a2  <-- 0x00100560
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 166.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 332, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.166
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.166 ~~> Doub[0x00100530]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 166.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 332, (wrb) a0  <-- 331
                                                #; (f:fpu) ft2  <-- 167.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100560, (wrb) a2  <-- 0x00100568
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 167.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 331, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.167
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.167 ~~> Doub[0x00100538]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 167.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 331, (wrb) a0  <-- 330
                                                #; (f:fpu) ft2  <-- 168.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100568, (wrb) a2  <-- 0x00100570
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 168.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 330, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.168
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.168 ~~> Doub[0x00100540]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 168.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 330, (wrb) a0  <-- 329
                                                #; (f:fpu) ft2  <-- 169.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100570, (wrb) a2  <-- 0x00100578
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 169.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 329, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.169
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.169 ~~> Doub[0x00100548]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 169.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 329, (wrb) a0  <-- 328
                                                #; (f:fpu) ft2  <-- 170.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100578, (wrb) a2  <-- 0x00100580
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 170.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 328, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.17
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.17 ~~> Doub[0x00100550]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 170.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 328, (wrb) a0  <-- 327
                                                #; (f:fpu) ft2  <-- 171.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100580, (wrb) a2  <-- 0x00100588
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 171.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 327, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.171
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.171 ~~> Doub[0x00100558]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 171.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 327, (wrb) a0  <-- 326
                                                #; (f:fpu) ft2  <-- 172.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100588, (wrb) a2  <-- 0x00100590
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 172.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 326, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1720000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1720000 ~~> Doub[0x00100560]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 172.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 326, (wrb) a0  <-- 325
                                                #; (f:fpu) ft2  <-- 173.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100590, (wrb) a2  <-- 0x00100598
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 173.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 325, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1730000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1730000 ~~> Doub[0x00100568]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 173.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 325, (wrb) a0  <-- 324
                                                #; (f:fpu) ft2  <-- 174.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100598, (wrb) a2  <-- 0x001005a0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 174.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 324, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1740000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1740000 ~~> Doub[0x00100570]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 174.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 324, (wrb) a0  <-- 323
                                                #; (f:fpu) ft2  <-- 175.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005a0, (wrb) a2  <-- 0x001005a8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 175.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 323, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.1750000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.1750000 ~~> Doub[0x00100578]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 175.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 323, (wrb) a0  <-- 322
                                                #; (f:fpu) ft2  <-- 176.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005a8, (wrb) a2  <-- 0x001005b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 176.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 322, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.176
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.176 ~~> Doub[0x00100580]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 176.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 322, (wrb) a0  <-- 321
                                                #; (f:fpu) ft2  <-- 177.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005b0, (wrb) a2  <-- 0x001005b8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 177.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 321, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.177
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.177 ~~> Doub[0x00100588]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 177.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 321, (wrb) a0  <-- 320
                                                #; (f:fpu) ft2  <-- 178.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005b8, (wrb) a2  <-- 0x001005c0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 178.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 320, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.178
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.178 ~~> Doub[0x00100590]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 178.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 320, (wrb) a0  <-- 319
                                                #; (f:fpu) ft2  <-- 179.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005c0, (wrb) a2  <-- 0x001005c8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 179.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 319, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.179
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.179 ~~> Doub[0x00100598]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 179.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 319, (wrb) a0  <-- 318
                                                #; (f:fpu) ft2  <-- 180.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005c8, (wrb) a2  <-- 0x001005d0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 180.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 318, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.18
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.18 ~~> Doub[0x001005a0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 180.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 318, (wrb) a0  <-- 317
                                                #; (f:fpu) ft2  <-- 181.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005d0, (wrb) a2  <-- 0x001005d8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 181.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 317, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.181
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.181 ~~> Doub[0x001005a8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 181.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 317, (wrb) a0  <-- 316
                                                #; (f:fpu) ft2  <-- 182.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005d8, (wrb) a2  <-- 0x001005e0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 182.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 316, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.182
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.182 ~~> Doub[0x001005b0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 182.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 316, (wrb) a0  <-- 315
                                                #; (f:fpu) ft2  <-- 183.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005e0, (wrb) a2  <-- 0x001005e8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 183.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 315, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.183
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.183 ~~> Doub[0x001005b8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 183.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 315, (wrb) a0  <-- 314
                                                #; (f:fpu) ft2  <-- 184.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005e8, (wrb) a2  <-- 0x001005f0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 184.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 314, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.184
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.184 ~~> Doub[0x001005c0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 184.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 314, (wrb) a0  <-- 313
                                                #; (f:fpu) ft2  <-- 185.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005f0, (wrb) a2  <-- 0x001005f8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 185.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 313, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.185
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.185 ~~> Doub[0x001005c8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 185.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 313, (wrb) a0  <-- 312
                                                #; (f:fpu) ft2  <-- 186.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005f8, (wrb) a2  <-- 0x00100600
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 186.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 312, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.186
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.186 ~~> Doub[0x001005d0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 186.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 312, (wrb) a0  <-- 311
                                                #; (f:fpu) ft2  <-- 187.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100600, (wrb) a2  <-- 0x00100608
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 187.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 311, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.187
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.187 ~~> Doub[0x001005d8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 187.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 311, (wrb) a0  <-- 310
                                                #; (f:fpu) ft2  <-- 188.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100608, (wrb) a2  <-- 0x00100610
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 188.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 310, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.188
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.188 ~~> Doub[0x001005e0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 188.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 310, (wrb) a0  <-- 309
                                                #; (f:fpu) ft2  <-- 189.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100610, (wrb) a2  <-- 0x00100618
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 189.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 309, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.189
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.189 ~~> Doub[0x001005e8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 189.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 309, (wrb) a0  <-- 308
                                                #; (f:fpu) ft2  <-- 190.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100618, (wrb) a2  <-- 0x00100620
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 190.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 308, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.19
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.19 ~~> Doub[0x001005f0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 190.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 308, (wrb) a0  <-- 307
                                                #; (f:fpu) ft2  <-- 191.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100620, (wrb) a2  <-- 0x00100628
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 191.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 307, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.191
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.191 ~~> Doub[0x001005f8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 191.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 307, (wrb) a0  <-- 306
                                                #; (f:fpu) ft2  <-- 192.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100628, (wrb) a2  <-- 0x00100630
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 192.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 306, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.192
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.192 ~~> Doub[0x00100600]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 192.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 306, (wrb) a0  <-- 305
                                                #; (f:fpu) ft2  <-- 193.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100630, (wrb) a2  <-- 0x00100638
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 193.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 305, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.193
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.193 ~~> Doub[0x00100608]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 193.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 305, (wrb) a0  <-- 304
                                                #; (f:fpu) ft2  <-- 194.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100638, (wrb) a2  <-- 0x00100640
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 194.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 304, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.194
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.194 ~~> Doub[0x00100610]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 194.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 304, (wrb) a0  <-- 303
                                                #; (f:fpu) ft2  <-- 195.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100640, (wrb) a2  <-- 0x00100648
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 195.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 303, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.195
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.195 ~~> Doub[0x00100618]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 195.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 303, (wrb) a0  <-- 302
                                                #; (f:fpu) ft2  <-- 196.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100648, (wrb) a2  <-- 0x00100650
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 196.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 302, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.196
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.196 ~~> Doub[0x00100620]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 196.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 302, (wrb) a0  <-- 301
                                                #; (f:fpu) ft2  <-- 197.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100650, (wrb) a2  <-- 0x00100658
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 197.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 301, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.197
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.197 ~~> Doub[0x00100628]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 197.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 301, (wrb) a0  <-- 300
                                                #; (f:fpu) ft2  <-- 198.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100658, (wrb) a2  <-- 0x00100660
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 198.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 300, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.198
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.198 ~~> Doub[0x00100630]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 198.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 300, (wrb) a0  <-- 299
                                                #; (f:fpu) ft2  <-- 199.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100660, (wrb) a2  <-- 0x00100668
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 199.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 299, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.199
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.199 ~~> Doub[0x00100638]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 199.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 299, (wrb) a0  <-- 298
                                                #; (f:fpu) ft2  <-- 200.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100668, (wrb) a2  <-- 0x00100670
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 200.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 298, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2 ~~> Doub[0x00100640]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 200.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 298, (wrb) a0  <-- 297
                                                #; (f:fpu) ft2  <-- 201.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100670, (wrb) a2  <-- 0x00100678
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 201.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 297, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.201
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.201 ~~> Doub[0x00100648]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 201.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 297, (wrb) a0  <-- 296
                                                #; (f:fpu) ft2  <-- 202.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100678, (wrb) a2  <-- 0x00100680
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 202.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 296, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.202
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.202 ~~> Doub[0x00100650]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 202.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 296, (wrb) a0  <-- 295
                                                #; (f:fpu) ft2  <-- 203.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100680, (wrb) a2  <-- 0x00100688
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 203.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 295, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.203
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.203 ~~> Doub[0x00100658]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 203.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 295, (wrb) a0  <-- 294
                                                #; (f:fpu) ft2  <-- 204.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100688, (wrb) a2  <-- 0x00100690
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 204.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 294, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2040000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2040000 ~~> Doub[0x00100660]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 204.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 294, (wrb) a0  <-- 293
                                                #; (f:fpu) ft2  <-- 205.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100690, (wrb) a2  <-- 0x00100698
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 205.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 293, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2050000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2050000 ~~> Doub[0x00100668]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 205.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 293, (wrb) a0  <-- 292
                                                #; (f:fpu) ft2  <-- 206.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100698, (wrb) a2  <-- 0x001006a0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 206.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 292, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2060000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2060000 ~~> Doub[0x00100670]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 206.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 292, (wrb) a0  <-- 291
                                                #; (f:fpu) ft2  <-- 207.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006a0, (wrb) a2  <-- 0x001006a8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 207.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 291, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2070000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2070000 ~~> Doub[0x00100678]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 207.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 291, (wrb) a0  <-- 290
                                                #; (f:fpu) ft2  <-- 208.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006a8, (wrb) a2  <-- 0x001006b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 208.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 290, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2080000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2080000 ~~> Doub[0x00100680]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 208.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 290, (wrb) a0  <-- 289
                                                #; (f:fpu) ft2  <-- 209.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006b0, (wrb) a2  <-- 0x001006b8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 209.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 289, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.209
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.209 ~~> Doub[0x00100688]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 209.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 289, (wrb) a0  <-- 288
                                                #; (f:fpu) ft2  <-- 210.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006b8, (wrb) a2  <-- 0x001006c0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 210.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 288, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.21
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.21 ~~> Doub[0x00100690]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 210.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 288, (wrb) a0  <-- 287
                                                #; (f:fpu) ft2  <-- 211.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006c0, (wrb) a2  <-- 0x001006c8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 211.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 287, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.211
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.211 ~~> Doub[0x00100698]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 211.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 287, (wrb) a0  <-- 286
                                                #; (f:fpu) ft2  <-- 212.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006c8, (wrb) a2  <-- 0x001006d0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 212.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 286, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.212
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.212 ~~> Doub[0x001006a0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 212.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 286, (wrb) a0  <-- 285
                                                #; (f:fpu) ft2  <-- 213.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006d0, (wrb) a2  <-- 0x001006d8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 213.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 285, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.213
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.213 ~~> Doub[0x001006a8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 213.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 285, (wrb) a0  <-- 284
                                                #; (f:fpu) ft2  <-- 214.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006d8, (wrb) a2  <-- 0x001006e0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 214.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 284, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.214
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.214 ~~> Doub[0x001006b0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 214.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 284, (wrb) a0  <-- 283
                                                #; (f:fpu) ft2  <-- 215.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006e0, (wrb) a2  <-- 0x001006e8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 215.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 283, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.215
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.215 ~~> Doub[0x001006b8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 215.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 283, (wrb) a0  <-- 282
                                                #; (f:fpu) ft2  <-- 216.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006e8, (wrb) a2  <-- 0x001006f0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 216.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 282, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.216
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.216 ~~> Doub[0x001006c0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 216.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 282, (wrb) a0  <-- 281
                                                #; (f:fpu) ft2  <-- 217.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006f0, (wrb) a2  <-- 0x001006f8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 217.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 281, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.217
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.217 ~~> Doub[0x001006c8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 217.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 281, (wrb) a0  <-- 280
                                                #; (f:fpu) ft2  <-- 218.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006f8, (wrb) a2  <-- 0x00100700
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 218.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 280, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.218
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.218 ~~> Doub[0x001006d0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 218.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 280, (wrb) a0  <-- 279
                                                #; (f:fpu) ft2  <-- 219.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100700, (wrb) a2  <-- 0x00100708
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 219.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 279, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.219
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.219 ~~> Doub[0x001006d8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 219.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 279, (wrb) a0  <-- 278
                                                #; (f:fpu) ft2  <-- 220.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100708, (wrb) a2  <-- 0x00100710
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 220.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 278, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.22
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.22 ~~> Doub[0x001006e0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 220.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 278, (wrb) a0  <-- 277
                                                #; (f:fpu) ft2  <-- 221.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100710, (wrb) a2  <-- 0x00100718
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 221.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 277, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.221
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.221 ~~> Doub[0x001006e8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 221.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 277, (wrb) a0  <-- 276
                                                #; (f:fpu) ft2  <-- 222.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100718, (wrb) a2  <-- 0x00100720
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 222.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 276, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.222
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.222 ~~> Doub[0x001006f0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 222.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 276, (wrb) a0  <-- 275
                                                #; (f:fpu) ft2  <-- 223.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100720, (wrb) a2  <-- 0x00100728
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 223.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 275, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.223
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.223 ~~> Doub[0x001006f8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 223.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 275, (wrb) a0  <-- 274
                                                #; (f:fpu) ft2  <-- 224.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100728, (wrb) a2  <-- 0x00100730
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 224.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 274, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.224
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.224 ~~> Doub[0x00100700]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 224.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 274, (wrb) a0  <-- 273
                                                #; (f:fpu) ft2  <-- 225.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100730, (wrb) a2  <-- 0x00100738
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 225.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 273, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.225
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.225 ~~> Doub[0x00100708]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 225.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 273, (wrb) a0  <-- 272
                                                #; (f:fpu) ft2  <-- 226.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100738, (wrb) a2  <-- 0x00100740
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 226.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 272, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.226
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.226 ~~> Doub[0x00100710]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 226.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 272, (wrb) a0  <-- 271
                                                #; (f:fpu) ft2  <-- 227.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100740, (wrb) a2  <-- 0x00100748
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 227.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 271, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.227
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.227 ~~> Doub[0x00100718]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 227.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 271, (wrb) a0  <-- 270
                                                #; (f:fpu) ft2  <-- 228.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100748, (wrb) a2  <-- 0x00100750
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 228.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 270, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.228
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.228 ~~> Doub[0x00100720]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 228.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 270, (wrb) a0  <-- 269
                                                #; (f:fpu) ft2  <-- 229.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100750, (wrb) a2  <-- 0x00100758
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 229.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 269, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.229
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.229 ~~> Doub[0x00100728]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 229.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 269, (wrb) a0  <-- 268
                                                #; (f:fpu) ft2  <-- 230.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100758, (wrb) a2  <-- 0x00100760
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 230.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 268, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.23
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.23 ~~> Doub[0x00100730]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 230.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 268, (wrb) a0  <-- 267
                                                #; (f:fpu) ft2  <-- 231.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100760, (wrb) a2  <-- 0x00100768
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 231.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 267, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.231
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.231 ~~> Doub[0x00100738]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 231.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 267, (wrb) a0  <-- 266
                                                #; (f:fpu) ft2  <-- 232.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100768, (wrb) a2  <-- 0x00100770
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 232.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 266, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.232
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.232 ~~> Doub[0x00100740]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 232.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 266, (wrb) a0  <-- 265
                                                #; (f:fpu) ft2  <-- 233.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100770, (wrb) a2  <-- 0x00100778
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 233.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 265, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.233
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.233 ~~> Doub[0x00100748]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 233.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 265, (wrb) a0  <-- 264
                                                #; (f:fpu) ft2  <-- 234.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100778, (wrb) a2  <-- 0x00100780
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 234.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 264, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.234
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.234 ~~> Doub[0x00100750]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 234.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 264, (wrb) a0  <-- 263
                                                #; (f:fpu) ft2  <-- 235.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100780, (wrb) a2  <-- 0x00100788
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 235.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 263, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2350000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2350000 ~~> Doub[0x00100758]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 235.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 263, (wrb) a0  <-- 262
                                                #; (f:fpu) ft2  <-- 236.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100788, (wrb) a2  <-- 0x00100790
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 236.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 262, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2360000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2360000 ~~> Doub[0x00100760]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 236.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 262, (wrb) a0  <-- 261
                                                #; (f:fpu) ft2  <-- 237.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100790, (wrb) a2  <-- 0x00100798
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 237.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 261, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2370000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2370000 ~~> Doub[0x00100768]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 237.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 261, (wrb) a0  <-- 260
                                                #; (f:fpu) ft2  <-- 238.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100798, (wrb) a2  <-- 0x001007a0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 238.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 260, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2380000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2380000 ~~> Doub[0x00100770]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 238.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 260, (wrb) a0  <-- 259
                                                #; (f:fpu) ft2  <-- 239.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007a0, (wrb) a2  <-- 0x001007a8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 239.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 259, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2390000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2390000 ~~> Doub[0x00100778]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 239.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 259, (wrb) a0  <-- 258
                                                #; (f:fpu) ft2  <-- 240.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007a8, (wrb) a2  <-- 0x001007b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 240.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 258, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.24
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.24 ~~> Doub[0x00100780]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 240.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 258, (wrb) a0  <-- 257
                                                #; (f:fpu) ft2  <-- 241.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007b0, (wrb) a2  <-- 0x001007b8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 241.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 257, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.241
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.241 ~~> Doub[0x00100788]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 241.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 257, (wrb) a0  <-- 256
                                                #; (f:fpu) ft2  <-- 242.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007b8, (wrb) a2  <-- 0x001007c0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 242.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 256, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.242
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.242 ~~> Doub[0x00100790]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 242.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 256, (wrb) a0  <-- 255
                                                #; (f:fpu) ft2  <-- 243.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007c0, (wrb) a2  <-- 0x001007c8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 243.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 255, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.243
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.243 ~~> Doub[0x00100798]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 243.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 255, (wrb) a0  <-- 254
                                                #; (f:fpu) ft2  <-- 244.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007c8, (wrb) a2  <-- 0x001007d0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 244.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 254, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.244
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.244 ~~> Doub[0x001007a0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 244.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 254, (wrb) a0  <-- 253
                                                #; (f:fpu) ft2  <-- 245.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007d0, (wrb) a2  <-- 0x001007d8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 245.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 253, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.245
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.245 ~~> Doub[0x001007a8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 245.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 253, (wrb) a0  <-- 252
                                                #; (f:fpu) ft2  <-- 246.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007d8, (wrb) a2  <-- 0x001007e0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 246.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 252, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.246
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.246 ~~> Doub[0x001007b0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 246.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 252, (wrb) a0  <-- 251
                                                #; (f:fpu) ft2  <-- 247.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007e0, (wrb) a2  <-- 0x001007e8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 247.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 251, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.247
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.247 ~~> Doub[0x001007b8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 247.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 251, (wrb) a0  <-- 250
                                                #; (f:fpu) ft2  <-- 248.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007e8, (wrb) a2  <-- 0x001007f0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 248.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 250, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.248
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.248 ~~> Doub[0x001007c0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 248.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 250, (wrb) a0  <-- 249
                                                #; (f:fpu) ft2  <-- 249.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007f0, (wrb) a2  <-- 0x001007f8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 249.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 249, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.249
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.249 ~~> Doub[0x001007c8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 249.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 249, (wrb) a0  <-- 248
                                                #; (f:fpu) ft2  <-- 250.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007f8, (wrb) a2  <-- 0x00100800
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 250.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 248, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.25
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.25 ~~> Doub[0x001007d0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 250.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 248, (wrb) a0  <-- 247
                                                #; (f:fpu) ft2  <-- 251.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100800, (wrb) a2  <-- 0x00100808
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 251.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 247, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.251
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.251 ~~> Doub[0x001007d8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 251.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 247, (wrb) a0  <-- 246
                                                #; (f:fpu) ft2  <-- 252.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100808, (wrb) a2  <-- 0x00100810
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 252.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 246, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.252
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.252 ~~> Doub[0x001007e0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 252.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 246, (wrb) a0  <-- 245
                                                #; (f:fpu) ft2  <-- 253.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100810, (wrb) a2  <-- 0x00100818
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 253.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 245, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.253
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.253 ~~> Doub[0x001007e8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 253.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 245, (wrb) a0  <-- 244
                                                #; (f:fpu) ft2  <-- 254.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100818, (wrb) a2  <-- 0x00100820
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 254.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 244, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.254
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.254 ~~> Doub[0x001007f0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 254.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 244, (wrb) a0  <-- 243
                                                #; (f:fpu) ft2  <-- 255.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100820, (wrb) a2  <-- 0x00100828
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 255.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 243, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.255
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.255 ~~> Doub[0x001007f8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 255.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 243, (wrb) a0  <-- 242
                                                #; (f:fpu) ft2  <-- 256.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100828, (wrb) a2  <-- 0x00100830
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 256.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 242, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.256
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.256 ~~> Doub[0x00100800]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 256.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 242, (wrb) a0  <-- 241
                                                #; (f:fpu) ft2  <-- 257.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100830, (wrb) a2  <-- 0x00100838
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 257.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 241, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.257
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.257 ~~> Doub[0x00100808]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 257.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 241, (wrb) a0  <-- 240
                                                #; (f:fpu) ft2  <-- 258.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100838, (wrb) a2  <-- 0x00100840
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 258.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 240, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.258
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.258 ~~> Doub[0x00100810]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 258.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 240, (wrb) a0  <-- 239
                                                #; (f:fpu) ft2  <-- 259.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100840, (wrb) a2  <-- 0x00100848
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 259.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 239, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.259
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.259 ~~> Doub[0x00100818]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 259.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 239, (wrb) a0  <-- 238
                                                #; (f:fpu) ft2  <-- 260.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100848, (wrb) a2  <-- 0x00100850
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 260.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 238, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.26
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.26 ~~> Doub[0x00100820]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 260.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 238, (wrb) a0  <-- 237
                                                #; (f:fpu) ft2  <-- 261.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100850, (wrb) a2  <-- 0x00100858
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 261.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 237, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.261
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.261 ~~> Doub[0x00100828]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 261.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 237, (wrb) a0  <-- 236
                                                #; (f:fpu) ft2  <-- 262.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100858, (wrb) a2  <-- 0x00100860
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 262.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 236, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.262
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.262 ~~> Doub[0x00100830]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 262.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 236, (wrb) a0  <-- 235
                                                #; (f:fpu) ft2  <-- 263.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100860, (wrb) a2  <-- 0x00100868
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 263.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 235, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.263
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.263 ~~> Doub[0x00100838]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 263.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 235, (wrb) a0  <-- 234
                                                #; (f:fpu) ft2  <-- 264.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100868, (wrb) a2  <-- 0x00100870
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 264.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 234, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.264
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.264 ~~> Doub[0x00100840]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 264.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 234, (wrb) a0  <-- 233
                                                #; (f:fpu) ft2  <-- 265.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100870, (wrb) a2  <-- 0x00100878
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 265.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 233, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.265
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.265 ~~> Doub[0x00100848]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 265.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 233, (wrb) a0  <-- 232
                                                #; (f:fpu) ft2  <-- 266.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100878, (wrb) a2  <-- 0x00100880
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 266.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 232, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.266
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.266 ~~> Doub[0x00100850]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 266.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 232, (wrb) a0  <-- 231
                                                #; (f:fpu) ft2  <-- 267.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100880, (wrb) a2  <-- 0x00100888
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 267.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 231, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.267
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.267 ~~> Doub[0x00100858]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 267.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 231, (wrb) a0  <-- 230
                                                #; (f:fpu) ft2  <-- 268.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100888, (wrb) a2  <-- 0x00100890
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 268.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 230, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.268
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.268 ~~> Doub[0x00100860]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 268.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 230, (wrb) a0  <-- 229
                                                #; (f:fpu) ft2  <-- 269.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100890, (wrb) a2  <-- 0x00100898
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 269.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 229, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.269
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.269 ~~> Doub[0x00100868]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 269.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 229, (wrb) a0  <-- 228
                                                #; (f:fpu) ft2  <-- 270.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100898, (wrb) a2  <-- 0x001008a0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 270.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 228, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.27
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.27 ~~> Doub[0x00100870]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 270.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 228, (wrb) a0  <-- 227
                                                #; (f:fpu) ft2  <-- 271.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008a0, (wrb) a2  <-- 0x001008a8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 271.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 227, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.271
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.271 ~~> Doub[0x00100878]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 271.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 227, (wrb) a0  <-- 226
                                                #; (f:fpu) ft2  <-- 272.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008a8, (wrb) a2  <-- 0x001008b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 272.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 226, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.272
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.272 ~~> Doub[0x00100880]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 272.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 226, (wrb) a0  <-- 225
                                                #; (f:fpu) ft2  <-- 273.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008b0, (wrb) a2  <-- 0x001008b8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 273.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 225, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.273
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.273 ~~> Doub[0x00100888]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 273.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 225, (wrb) a0  <-- 224
                                                #; (f:fpu) ft2  <-- 274.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008b8, (wrb) a2  <-- 0x001008c0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 274.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 224, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.274
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.274 ~~> Doub[0x00100890]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 274.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 224, (wrb) a0  <-- 223
                                                #; (f:fpu) ft2  <-- 275.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008c0, (wrb) a2  <-- 0x001008c8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 275.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 223, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.275
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.275 ~~> Doub[0x00100898]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 275.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 223, (wrb) a0  <-- 222
                                                #; (f:fpu) ft2  <-- 276.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008c8, (wrb) a2  <-- 0x001008d0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 276.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 222, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.276
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.276 ~~> Doub[0x001008a0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 276.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 222, (wrb) a0  <-- 221
                                                #; (f:fpu) ft2  <-- 277.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008d0, (wrb) a2  <-- 0x001008d8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 277.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 221, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.277
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.277 ~~> Doub[0x001008a8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 277.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 221, (wrb) a0  <-- 220
                                                #; (f:fpu) ft2  <-- 278.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008d8, (wrb) a2  <-- 0x001008e0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 278.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 220, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.278
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.278 ~~> Doub[0x001008b0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 278.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 220, (wrb) a0  <-- 219
                                                #; (f:fpu) ft2  <-- 279.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008e0, (wrb) a2  <-- 0x001008e8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 279.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 219, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.279
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.279 ~~> Doub[0x001008b8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 279.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 219, (wrb) a0  <-- 218
                                                #; (f:fpu) ft2  <-- 280.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008e8, (wrb) a2  <-- 0x001008f0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 280.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 218, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.28
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.28 ~~> Doub[0x001008c0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 280.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 218, (wrb) a0  <-- 217
                                                #; (f:fpu) ft2  <-- 281.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008f0, (wrb) a2  <-- 0x001008f8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 281.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 217, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.281
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.281 ~~> Doub[0x001008c8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 281.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 217, (wrb) a0  <-- 216
                                                #; (f:fpu) ft2  <-- 282.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008f8, (wrb) a2  <-- 0x00100900
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 282.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 216, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2820000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2820000 ~~> Doub[0x001008d0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 282.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 216, (wrb) a0  <-- 215
                                                #; (f:fpu) ft2  <-- 283.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100900, (wrb) a2  <-- 0x00100908
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 283.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 215, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2830000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2830000 ~~> Doub[0x001008d8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 283.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 215, (wrb) a0  <-- 214
                                                #; (f:fpu) ft2  <-- 284.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100908, (wrb) a2  <-- 0x00100910
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 284.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 214, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2840000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2840000 ~~> Doub[0x001008e0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 284.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 214, (wrb) a0  <-- 213
                                                #; (f:fpu) ft2  <-- 285.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100910, (wrb) a2  <-- 0x00100918
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 285.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 213, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2850000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2850000 ~~> Doub[0x001008e8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 285.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 213, (wrb) a0  <-- 212
                                                #; (f:fpu) ft2  <-- 286.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100918, (wrb) a2  <-- 0x00100920
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 286.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 212, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2860000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2860000 ~~> Doub[0x001008f0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 286.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 212, (wrb) a0  <-- 211
                                                #; (f:fpu) ft2  <-- 287.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100920, (wrb) a2  <-- 0x00100928
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 287.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 211, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2870000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2870000 ~~> Doub[0x001008f8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 287.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 211, (wrb) a0  <-- 210
                                                #; (f:fpu) ft2  <-- 288.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100928, (wrb) a2  <-- 0x00100930
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 288.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 210, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.2880000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.2880000 ~~> Doub[0x00100900]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 288.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 210, (wrb) a0  <-- 209
                                                #; (f:fpu) ft2  <-- 289.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100930, (wrb) a2  <-- 0x00100938
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 289.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 209, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.289
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.289 ~~> Doub[0x00100908]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 289.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 209, (wrb) a0  <-- 208
                                                #; (f:fpu) ft2  <-- 290.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100938, (wrb) a2  <-- 0x00100940
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 290.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 208, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.29
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.29 ~~> Doub[0x00100910]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 290.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 208, (wrb) a0  <-- 207
                                                #; (f:fpu) ft2  <-- 291.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100940, (wrb) a2  <-- 0x00100948
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 291.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 207, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.291
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.291 ~~> Doub[0x00100918]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 291.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 207, (wrb) a0  <-- 206
                                                #; (f:fpu) ft2  <-- 292.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100948, (wrb) a2  <-- 0x00100950
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 292.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 206, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.292
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.292 ~~> Doub[0x00100920]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 292.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 206, (wrb) a0  <-- 205
                                                #; (f:fpu) ft2  <-- 293.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100950, (wrb) a2  <-- 0x00100958
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 293.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 205, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.293
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.293 ~~> Doub[0x00100928]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 293.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 205, (wrb) a0  <-- 204
                                                #; (f:fpu) ft2  <-- 294.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100958, (wrb) a2  <-- 0x00100960
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 294.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 204, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.294
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.294 ~~> Doub[0x00100930]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 294.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 204, (wrb) a0  <-- 203
                                                #; (f:fpu) ft2  <-- 295.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100960, (wrb) a2  <-- 0x00100968
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 295.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 203, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.295
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.295 ~~> Doub[0x00100938]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 295.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 203, (wrb) a0  <-- 202
                                                #; (f:fpu) ft2  <-- 296.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100968, (wrb) a2  <-- 0x00100970
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 296.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 202, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.296
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.296 ~~> Doub[0x00100940]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 296.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 202, (wrb) a0  <-- 201
                                                #; (f:fpu) ft2  <-- 297.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100970, (wrb) a2  <-- 0x00100978
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 297.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 201, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.297
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.297 ~~> Doub[0x00100948]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 297.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 201, (wrb) a0  <-- 200
                                                #; (f:fpu) ft2  <-- 298.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100978, (wrb) a2  <-- 0x00100980
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 298.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 200, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.298
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.298 ~~> Doub[0x00100950]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 298.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 200, (wrb) a0  <-- 199
                                                #; (f:fpu) ft2  <-- 299.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100980, (wrb) a2  <-- 0x00100988
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 299.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 199, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.299
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.299 ~~> Doub[0x00100958]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 299.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 199, (wrb) a0  <-- 198
                                                #; (f:fpu) ft2  <-- 300.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100988, (wrb) a2  <-- 0x00100990
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 300.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 198, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.3
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.3 ~~> Doub[0x00100960]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 300.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 198, (wrb) a0  <-- 197
                                                #; (f:fpu) ft2  <-- 301.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100990, (wrb) a2  <-- 0x00100998
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 301.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 197, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.301
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.301 ~~> Doub[0x00100968]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 301.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 197, (wrb) a0  <-- 196
                                                #; (f:fpu) ft2  <-- 302.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100998, (wrb) a2  <-- 0x001009a0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 302.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 196, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.302
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.302 ~~> Doub[0x00100970]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 302.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 196, (wrb) a0  <-- 195
                                                #; (f:fpu) ft2  <-- 303.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009a0, (wrb) a2  <-- 0x001009a8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 303.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 195, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.303
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.303 ~~> Doub[0x00100978]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 303.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 195, (wrb) a0  <-- 194
                                                #; (f:fpu) ft2  <-- 304.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009a8, (wrb) a2  <-- 0x001009b0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 304.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 194, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.304
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.304 ~~> Doub[0x00100980]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 304.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 194, (wrb) a0  <-- 193
                                                #; (f:fpu) ft2  <-- 305.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009b0, (wrb) a2  <-- 0x001009b8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 305.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 193, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.305
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.305 ~~> Doub[0x00100988]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 305.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 193, (wrb) a0  <-- 192
                                                #; (f:fpu) ft2  <-- 306.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009b8, (wrb) a2  <-- 0x001009c0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 306.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 192, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.306
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.306 ~~> Doub[0x00100990]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 306.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 192, (wrb) a0  <-- 191
                                                #; (f:fpu) ft2  <-- 307.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009c0, (wrb) a2  <-- 0x001009c8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 307.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 191, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.307
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.307 ~~> Doub[0x00100998]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 307.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 191, (wrb) a0  <-- 190
                                                #; (f:fpu) ft2  <-- 308.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009c8, (wrb) a2  <-- 0x001009d0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 308.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 190, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.308
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.308 ~~> Doub[0x001009a0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 308.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 190, (wrb) a0  <-- 189
                                                #; (f:fpu) ft2  <-- 309.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009d0, (wrb) a2  <-- 0x001009d8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 309.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 189, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.309
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.309 ~~> Doub[0x001009a8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 309.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 189, (wrb) a0  <-- 188
                                                #; (f:fpu) ft2  <-- 310.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009d8, (wrb) a2  <-- 0x001009e0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 310.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 188, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.31
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.31 ~~> Doub[0x001009b0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 310.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 188, (wrb) a0  <-- 187
                                                #; (f:fpu) ft2  <-- 311.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009e0, (wrb) a2  <-- 0x001009e8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 311.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 187, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.311
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.311 ~~> Doub[0x001009b8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 311.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 187, (wrb) a0  <-- 186
                                                #; (f:fpu) ft2  <-- 312.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009e8, (wrb) a2  <-- 0x001009f0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 312.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 186, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.312
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.312 ~~> Doub[0x001009c0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 312.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 186, (wrb) a0  <-- 185
                                                #; (f:fpu) ft2  <-- 313.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009f0, (wrb) a2  <-- 0x001009f8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 313.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 185, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.313
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.313 ~~> Doub[0x001009c8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 313.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 185, (wrb) a0  <-- 184
                                                #; (f:fpu) ft2  <-- 314.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009f8, (wrb) a2  <-- 0x00100a00
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 314.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 184, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.314
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.314 ~~> Doub[0x001009d0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 314.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 184, (wrb) a0  <-- 183
                                                #; (f:fpu) ft2  <-- 315.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a00, (wrb) a2  <-- 0x00100a08
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 315.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 183, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.315
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.315 ~~> Doub[0x001009d8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 315.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 183, (wrb) a0  <-- 182
                                                #; (f:fpu) ft2  <-- 316.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a08, (wrb) a2  <-- 0x00100a10
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 316.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 182, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.316
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.316 ~~> Doub[0x001009e0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 316.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 182, (wrb) a0  <-- 181
                                                #; (f:fpu) ft2  <-- 317.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a10, (wrb) a2  <-- 0x00100a18
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 317.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 181, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.317
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.317 ~~> Doub[0x001009e8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 317.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 181, (wrb) a0  <-- 180
                                                #; (f:fpu) ft2  <-- 318.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a18, (wrb) a2  <-- 0x00100a20
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 318.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 180, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.318
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.318 ~~> Doub[0x001009f0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 318.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 180, (wrb) a0  <-- 179
                                                #; (f:fpu) ft2  <-- 319.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a20, (wrb) a2  <-- 0x00100a28
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 319.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 179, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.319
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.319 ~~> Doub[0x001009f8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 319.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 179, (wrb) a0  <-- 178
                                                #; (f:fpu) ft2  <-- 320.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a28, (wrb) a2  <-- 0x00100a30
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 320.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 178, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.32
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.32 ~~> Doub[0x00100a00]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 320.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 178, (wrb) a0  <-- 177
                                                #; (f:fpu) ft2  <-- 321.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a30, (wrb) a2  <-- 0x00100a38
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 321.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 177, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.321
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.321 ~~> Doub[0x00100a08]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 321.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 177, (wrb) a0  <-- 176
                                                #; (f:fpu) ft2  <-- 322.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a38, (wrb) a2  <-- 0x00100a40
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 322.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 176, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.322
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.322 ~~> Doub[0x00100a10]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 322.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 176, (wrb) a0  <-- 175
                                                #; (f:fpu) ft2  <-- 323.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a40, (wrb) a2  <-- 0x00100a48
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 323.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 175, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.323
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.323 ~~> Doub[0x00100a18]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 323.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 175, (wrb) a0  <-- 174
                                                #; (f:fpu) ft2  <-- 324.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a48, (wrb) a2  <-- 0x00100a50
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 324.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 174, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.324
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.324 ~~> Doub[0x00100a20]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 324.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 174, (wrb) a0  <-- 173
                                                #; (f:fpu) ft2  <-- 325.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a50, (wrb) a2  <-- 0x00100a58
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 325.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 173, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.325
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.325 ~~> Doub[0x00100a28]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 325.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 173, (wrb) a0  <-- 172
                                                #; (f:fpu) ft2  <-- 326.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a58, (wrb) a2  <-- 0x00100a60
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 326.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 172, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.326
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.326 ~~> Doub[0x00100a30]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 326.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 172, (wrb) a0  <-- 171
                                                #; (f:fpu) ft2  <-- 327.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a60, (wrb) a2  <-- 0x00100a68
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 327.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 171, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.327
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.327 ~~> Doub[0x00100a38]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 327.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 171, (wrb) a0  <-- 170
                                                #; (f:fpu) ft2  <-- 328.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a68, (wrb) a2  <-- 0x00100a70
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 328.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 170, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.328
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.328 ~~> Doub[0x00100a40]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 328.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 170, (wrb) a0  <-- 169
                                                #; (f:fpu) ft2  <-- 329.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a70, (wrb) a2  <-- 0x00100a78
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 329.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 169, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.329
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.329 ~~> Doub[0x00100a48]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 329.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 169, (wrb) a0  <-- 168
                                                #; (f:fpu) ft2  <-- 330.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a78, (wrb) a2  <-- 0x00100a80
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 330.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 168, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.33
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.33 ~~> Doub[0x00100a50]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 330.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 168, (wrb) a0  <-- 167
                                                #; (f:fpu) ft2  <-- 331.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a80, (wrb) a2  <-- 0x00100a88
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 331.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 167, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.331
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.331 ~~> Doub[0x00100a58]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 331.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 167, (wrb) a0  <-- 166
                                                #; (f:fpu) ft2  <-- 332.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a88, (wrb) a2  <-- 0x00100a90
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 332.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 166, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.332
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.332 ~~> Doub[0x00100a60]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 332.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 166, (wrb) a0  <-- 165
                                                #; (f:fpu) ft2  <-- 333.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a90, (wrb) a2  <-- 0x00100a98
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 333.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 165, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.333
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.333 ~~> Doub[0x00100a68]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 333.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 165, (wrb) a0  <-- 164
                                                #; (f:fpu) ft2  <-- 334.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a98, (wrb) a2  <-- 0x00100aa0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 334.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 164, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.334
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.334 ~~> Doub[0x00100a70]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 334.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 164, (wrb) a0  <-- 163
                                                #; (f:fpu) ft2  <-- 335.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100aa0, (wrb) a2  <-- 0x00100aa8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 335.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 163, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.335
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.335 ~~> Doub[0x00100a78]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 335.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 163, (wrb) a0  <-- 162
                                                #; (f:fpu) ft2  <-- 336.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100aa8, (wrb) a2  <-- 0x00100ab0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 336.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 162, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.336
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.336 ~~> Doub[0x00100a80]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 336.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 162, (wrb) a0  <-- 161
                                                #; (f:fpu) ft2  <-- 337.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ab0, (wrb) a2  <-- 0x00100ab8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 337.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 161, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.337
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.337 ~~> Doub[0x00100a88]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 337.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 161, (wrb) a0  <-- 160
                                                #; (f:fpu) ft2  <-- 338.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ab8, (wrb) a2  <-- 0x00100ac0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 338.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 160, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.338
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.338 ~~> Doub[0x00100a90]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 338.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 160, (wrb) a0  <-- 159
                                                #; (f:fpu) ft2  <-- 339.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ac0, (wrb) a2  <-- 0x00100ac8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 339.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 159, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.339
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.339 ~~> Doub[0x00100a98]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 339.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 159, (wrb) a0  <-- 158
                                                #; (f:fpu) ft2  <-- 340.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ac8, (wrb) a2  <-- 0x00100ad0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 340.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 158, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.34
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.34 ~~> Doub[0x00100aa0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 340.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 158, (wrb) a0  <-- 157
                                                #; (f:fpu) ft2  <-- 341.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ad0, (wrb) a2  <-- 0x00100ad8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 341.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 157, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.341
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.341 ~~> Doub[0x00100aa8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 341.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 157, (wrb) a0  <-- 156
                                                #; (f:fpu) ft2  <-- 342.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ad8, (wrb) a2  <-- 0x00100ae0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 342.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 156, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.342
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.342 ~~> Doub[0x00100ab0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 342.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 156, (wrb) a0  <-- 155
                                                #; (f:fpu) ft2  <-- 343.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ae0, (wrb) a2  <-- 0x00100ae8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 343.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 155, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.343
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.343 ~~> Doub[0x00100ab8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 343.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 155, (wrb) a0  <-- 154
                                                #; (f:fpu) ft2  <-- 344.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ae8, (wrb) a2  <-- 0x00100af0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 344.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 154, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.3440000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.3440000 ~~> Doub[0x00100ac0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 344.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 154, (wrb) a0  <-- 153
                                                #; (f:fpu) ft2  <-- 345.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100af0, (wrb) a2  <-- 0x00100af8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 345.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 153, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.3450000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.3450000 ~~> Doub[0x00100ac8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 345.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 153, (wrb) a0  <-- 152
                                                #; (f:fpu) ft2  <-- 346.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100af8, (wrb) a2  <-- 0x00100b00
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 346.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 152, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.3460000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.3460000 ~~> Doub[0x00100ad0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 346.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 152, (wrb) a0  <-- 151
                                                #; (f:fpu) ft2  <-- 347.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b00, (wrb) a2  <-- 0x00100b08
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 347.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 151, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.3470000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.3470000 ~~> Doub[0x00100ad8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 347.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 151, (wrb) a0  <-- 150
                                                #; (f:fpu) ft2  <-- 348.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b08, (wrb) a2  <-- 0x00100b10
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 348.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 150, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.3480000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.3480000 ~~> Doub[0x00100ae0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 348.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 150, (wrb) a0  <-- 149
                                                #; (f:fpu) ft2  <-- 349.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b10, (wrb) a2  <-- 0x00100b18
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 349.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 149, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.3490000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.3490000 ~~> Doub[0x00100ae8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 349.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 149, (wrb) a0  <-- 148
                                                #; (f:fpu) ft2  <-- 350.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b18, (wrb) a2  <-- 0x00100b20
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 350.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 148, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.3500000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.3500000 ~~> Doub[0x00100af0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 350.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 148, (wrb) a0  <-- 147
                                                #; (f:fpu) ft2  <-- 351.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b20, (wrb) a2  <-- 0x00100b28
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 351.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 147, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.3510000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.3510000 ~~> Doub[0x00100af8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 351.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 147, (wrb) a0  <-- 146
                                                #; (f:fpu) ft2  <-- 352.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b28, (wrb) a2  <-- 0x00100b30
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 352.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 146, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.352
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.352 ~~> Doub[0x00100b00]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 352.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 146, (wrb) a0  <-- 145
                                                #; (f:fpu) ft2  <-- 353.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b30, (wrb) a2  <-- 0x00100b38
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 353.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 145, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.353
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.353 ~~> Doub[0x00100b08]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 353.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 145, (wrb) a0  <-- 144
                                                #; (f:fpu) ft2  <-- 354.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b38, (wrb) a2  <-- 0x00100b40
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 354.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 144, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.354
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.354 ~~> Doub[0x00100b10]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 354.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 144, (wrb) a0  <-- 143
                                                #; (f:fpu) ft2  <-- 355.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b40, (wrb) a2  <-- 0x00100b48
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 355.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 143, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.355
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.355 ~~> Doub[0x00100b18]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 355.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 143, (wrb) a0  <-- 142
                                                #; (f:fpu) ft2  <-- 356.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b48, (wrb) a2  <-- 0x00100b50
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 356.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 142, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.356
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.356 ~~> Doub[0x00100b20]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 356.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 142, (wrb) a0  <-- 141
                                                #; (f:fpu) ft2  <-- 357.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b50, (wrb) a2  <-- 0x00100b58
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 357.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 141, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.357
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.357 ~~> Doub[0x00100b28]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 357.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 141, (wrb) a0  <-- 140
                                                #; (f:fpu) ft2  <-- 358.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b58, (wrb) a2  <-- 0x00100b60
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 358.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 140, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.358
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.358 ~~> Doub[0x00100b30]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 358.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 140, (wrb) a0  <-- 139
                                                #; (f:fpu) ft2  <-- 359.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b60, (wrb) a2  <-- 0x00100b68
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 359.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 139, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.359
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.359 ~~> Doub[0x00100b38]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 359.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 139, (wrb) a0  <-- 138
                                                #; (f:fpu) ft2  <-- 360.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b68, (wrb) a2  <-- 0x00100b70
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 360.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 138, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.36
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.36 ~~> Doub[0x00100b40]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 360.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 138, (wrb) a0  <-- 137
                                                #; (f:fpu) ft2  <-- 361.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b70, (wrb) a2  <-- 0x00100b78
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 361.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 137, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.361
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.361 ~~> Doub[0x00100b48]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 361.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 137, (wrb) a0  <-- 136
                                                #; (f:fpu) ft2  <-- 362.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b78, (wrb) a2  <-- 0x00100b80
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 362.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 136, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.362
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.362 ~~> Doub[0x00100b50]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 362.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 136, (wrb) a0  <-- 135
                                                #; (f:fpu) ft2  <-- 363.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b80, (wrb) a2  <-- 0x00100b88
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 363.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 135, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.363
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.363 ~~> Doub[0x00100b58]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 363.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 135, (wrb) a0  <-- 134
                                                #; (f:fpu) ft2  <-- 364.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b88, (wrb) a2  <-- 0x00100b90
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 364.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 134, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.364
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.364 ~~> Doub[0x00100b60]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 364.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 134, (wrb) a0  <-- 133
                                                #; (f:fpu) ft2  <-- 365.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b90, (wrb) a2  <-- 0x00100b98
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 365.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 133, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.365
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.365 ~~> Doub[0x00100b68]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 365.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 133, (wrb) a0  <-- 132
                                                #; (f:fpu) ft2  <-- 366.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b98, (wrb) a2  <-- 0x00100ba0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 366.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 132, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.366
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.366 ~~> Doub[0x00100b70]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 366.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 132, (wrb) a0  <-- 131
                                                #; (f:fpu) ft2  <-- 367.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ba0, (wrb) a2  <-- 0x00100ba8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 367.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 131, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.367
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.367 ~~> Doub[0x00100b78]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 367.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 131, (wrb) a0  <-- 130
                                                #; (f:fpu) ft2  <-- 368.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ba8, (wrb) a2  <-- 0x00100bb0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 368.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 130, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.368
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.368 ~~> Doub[0x00100b80]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 368.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 130, (wrb) a0  <-- 129
                                                #; (f:fpu) ft2  <-- 369.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bb0, (wrb) a2  <-- 0x00100bb8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 369.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 129, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.369
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.369 ~~> Doub[0x00100b88]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 369.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 129, (wrb) a0  <-- 128
                                                #; (f:fpu) ft2  <-- 370.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bb8, (wrb) a2  <-- 0x00100bc0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 370.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 128, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.37
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.37 ~~> Doub[0x00100b90]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 370.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 128, (wrb) a0  <-- 127
                                                #; (f:fpu) ft2  <-- 371.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bc0, (wrb) a2  <-- 0x00100bc8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 371.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 127, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.371
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.371 ~~> Doub[0x00100b98]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 371.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 127, (wrb) a0  <-- 126
                                                #; (f:fpu) ft2  <-- 372.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bc8, (wrb) a2  <-- 0x00100bd0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 372.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 126, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.372
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.372 ~~> Doub[0x00100ba0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 372.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 126, (wrb) a0  <-- 125
                                                #; (f:fpu) ft2  <-- 373.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bd0, (wrb) a2  <-- 0x00100bd8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 373.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 125, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.373
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.373 ~~> Doub[0x00100ba8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 373.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 125, (wrb) a0  <-- 124
                                                #; (f:fpu) ft2  <-- 374.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bd8, (wrb) a2  <-- 0x00100be0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 374.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 124, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.374
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.374 ~~> Doub[0x00100bb0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 374.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 124, (wrb) a0  <-- 123
                                                #; (f:fpu) ft2  <-- 375.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100be0, (wrb) a2  <-- 0x00100be8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 375.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 123, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.375
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.375 ~~> Doub[0x00100bb8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 375.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 123, (wrb) a0  <-- 122
                                                #; (f:fpu) ft2  <-- 376.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100be8, (wrb) a2  <-- 0x00100bf0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 376.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 122, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.376
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.376 ~~> Doub[0x00100bc0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 376.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 122, (wrb) a0  <-- 121
                                                #; (f:fpu) ft2  <-- 377.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bf0, (wrb) a2  <-- 0x00100bf8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 377.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 121, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.377
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.377 ~~> Doub[0x00100bc8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 377.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 121, (wrb) a0  <-- 120
                                                #; (f:fpu) ft2  <-- 378.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bf8, (wrb) a2  <-- 0x00100c00
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 378.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 120, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.378
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.378 ~~> Doub[0x00100bd0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 378.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 120, (wrb) a0  <-- 119
                                                #; (f:fpu) ft2  <-- 379.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c00, (wrb) a2  <-- 0x00100c08
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 379.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 119, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.379
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.379 ~~> Doub[0x00100bd8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 379.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 119, (wrb) a0  <-- 118
                                                #; (f:fpu) ft2  <-- 380.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c08, (wrb) a2  <-- 0x00100c10
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 380.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 118, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.38
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.38 ~~> Doub[0x00100be0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 380.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 118, (wrb) a0  <-- 117
                                                #; (f:fpu) ft2  <-- 381.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c10, (wrb) a2  <-- 0x00100c18
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 381.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 117, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.381
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.381 ~~> Doub[0x00100be8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 381.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 117, (wrb) a0  <-- 116
                                                #; (f:fpu) ft2  <-- 382.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c18, (wrb) a2  <-- 0x00100c20
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 382.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 116, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.382
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.382 ~~> Doub[0x00100bf0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 382.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 116, (wrb) a0  <-- 115
                                                #; (f:fpu) ft2  <-- 383.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c20, (wrb) a2  <-- 0x00100c28
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 383.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 115, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.383
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.383 ~~> Doub[0x00100bf8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 383.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 115, (wrb) a0  <-- 114
                                                #; (f:fpu) ft2  <-- 384.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c28, (wrb) a2  <-- 0x00100c30
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 384.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 114, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.384
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.384 ~~> Doub[0x00100c00]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 384.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 114, (wrb) a0  <-- 113
                                                #; (f:fpu) ft2  <-- 385.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c30, (wrb) a2  <-- 0x00100c38
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 385.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 113, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.385
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.385 ~~> Doub[0x00100c08]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 385.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 113, (wrb) a0  <-- 112
                                                #; (f:fpu) ft2  <-- 386.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c38, (wrb) a2  <-- 0x00100c40
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 386.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 112, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.386
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.386 ~~> Doub[0x00100c10]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 386.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 112, (wrb) a0  <-- 111
                                                #; (f:fpu) ft2  <-- 387.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c40, (wrb) a2  <-- 0x00100c48
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 387.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 111, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.387
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.387 ~~> Doub[0x00100c18]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 387.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 111, (wrb) a0  <-- 110
                                                #; (f:fpu) ft2  <-- 388.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c48, (wrb) a2  <-- 0x00100c50
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 388.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 110, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.388
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.388 ~~> Doub[0x00100c20]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 388.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 110, (wrb) a0  <-- 109
                                                #; (f:fpu) ft2  <-- 389.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c50, (wrb) a2  <-- 0x00100c58
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 389.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 109, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.389
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.389 ~~> Doub[0x00100c28]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 389.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 109, (wrb) a0  <-- 108
                                                #; (f:fpu) ft2  <-- 390.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c58, (wrb) a2  <-- 0x00100c60
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 390.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 108, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.39
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.39 ~~> Doub[0x00100c30]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 390.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 108, (wrb) a0  <-- 107
                                                #; (f:fpu) ft2  <-- 391.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c60, (wrb) a2  <-- 0x00100c68
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 391.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 107, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.391
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.391 ~~> Doub[0x00100c38]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 391.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 107, (wrb) a0  <-- 106
                                                #; (f:fpu) ft2  <-- 392.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c68, (wrb) a2  <-- 0x00100c70
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 392.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 106, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.392
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.392 ~~> Doub[0x00100c40]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 392.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 106, (wrb) a0  <-- 105
                                                #; (f:fpu) ft2  <-- 393.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c70, (wrb) a2  <-- 0x00100c78
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 393.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 105, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.393
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.393 ~~> Doub[0x00100c48]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 393.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 105, (wrb) a0  <-- 104
                                                #; (f:fpu) ft2  <-- 394.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c78, (wrb) a2  <-- 0x00100c80
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 394.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 104, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.394
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.394 ~~> Doub[0x00100c50]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 394.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 104, (wrb) a0  <-- 103
                                                #; (f:fpu) ft2  <-- 395.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c80, (wrb) a2  <-- 0x00100c88
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 395.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 103, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.395
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.395 ~~> Doub[0x00100c58]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 395.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 103, (wrb) a0  <-- 102
                                                #; (f:fpu) ft2  <-- 396.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c88, (wrb) a2  <-- 0x00100c90
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 396.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 102, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.396
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.396 ~~> Doub[0x00100c60]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 396.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 102, (wrb) a0  <-- 101
                                                #; (f:fpu) ft2  <-- 397.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c90, (wrb) a2  <-- 0x00100c98
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 397.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 101, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.397
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.397 ~~> Doub[0x00100c68]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 397.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 101, (wrb) a0  <-- 100
                                                #; (f:fpu) ft2  <-- 398.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c98, (wrb) a2  <-- 0x00100ca0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 398.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 100, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.398
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.398 ~~> Doub[0x00100c70]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 398.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 100, (wrb) a0  <-- 99
                                                #; (f:fpu) ft2  <-- 399.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ca0, (wrb) a2  <-- 0x00100ca8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 399.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 99, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.399
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.399 ~~> Doub[0x00100c78]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 399.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 99, (wrb) a0  <-- 98
                                                #; (f:fpu) ft2  <-- 400.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ca8, (wrb) a2  <-- 0x00100cb0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 400.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 98, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4 ~~> Doub[0x00100c80]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 400.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 98, (wrb) a0  <-- 97
                                                #; (f:fpu) ft2  <-- 401.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cb0, (wrb) a2  <-- 0x00100cb8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 401.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 97, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.401
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.401 ~~> Doub[0x00100c88]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 401.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 97, (wrb) a0  <-- 96
                                                #; (f:fpu) ft2  <-- 402.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cb8, (wrb) a2  <-- 0x00100cc0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 402.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 96, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.402
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.402 ~~> Doub[0x00100c90]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 402.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 96, (wrb) a0  <-- 95
                                                #; (f:fpu) ft2  <-- 403.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cc0, (wrb) a2  <-- 0x00100cc8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 403.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 95, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.403
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.403 ~~> Doub[0x00100c98]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 403.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 95, (wrb) a0  <-- 94
                                                #; (f:fpu) ft2  <-- 404.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cc8, (wrb) a2  <-- 0x00100cd0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 404.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 94, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.404
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.404 ~~> Doub[0x00100ca0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 404.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 94, (wrb) a0  <-- 93
                                                #; (f:fpu) ft2  <-- 405.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cd0, (wrb) a2  <-- 0x00100cd8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 405.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 93, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.405
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.405 ~~> Doub[0x00100ca8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 405.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 93, (wrb) a0  <-- 92
                                                #; (f:fpu) ft2  <-- 406.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cd8, (wrb) a2  <-- 0x00100ce0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 406.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 92, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.406
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.406 ~~> Doub[0x00100cb0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 406.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 92, (wrb) a0  <-- 91
                                                #; (f:fpu) ft2  <-- 407.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ce0, (wrb) a2  <-- 0x00100ce8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 407.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 91, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4070000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4070000 ~~> Doub[0x00100cb8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 407.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 91, (wrb) a0  <-- 90
                                                #; (f:fpu) ft2  <-- 408.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ce8, (wrb) a2  <-- 0x00100cf0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 408.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 90, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4080000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4080000 ~~> Doub[0x00100cc0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 408.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 90, (wrb) a0  <-- 89
                                                #; (f:fpu) ft2  <-- 409.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cf0, (wrb) a2  <-- 0x00100cf8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 409.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 89, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4090000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4090000 ~~> Doub[0x00100cc8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 409.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 89, (wrb) a0  <-- 88
                                                #; (f:fpu) ft2  <-- 410.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cf8, (wrb) a2  <-- 0x00100d00
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 410.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 88, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4100000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4100000 ~~> Doub[0x00100cd0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 410.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 88, (wrb) a0  <-- 87
                                                #; (f:fpu) ft2  <-- 411.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d00, (wrb) a2  <-- 0x00100d08
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 411.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 87, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4110000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4110000 ~~> Doub[0x00100cd8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 411.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 87, (wrb) a0  <-- 86
                                                #; (f:fpu) ft2  <-- 412.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d08, (wrb) a2  <-- 0x00100d10
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 412.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 86, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4120000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4120000 ~~> Doub[0x00100ce0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 412.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 86, (wrb) a0  <-- 85
                                                #; (f:fpu) ft2  <-- 413.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d10, (wrb) a2  <-- 0x00100d18
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 413.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 85, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4130000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4130000 ~~> Doub[0x00100ce8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 413.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 85, (wrb) a0  <-- 84
                                                #; (f:fpu) ft2  <-- 414.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d18, (wrb) a2  <-- 0x00100d20
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 414.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 84, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4140000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4140000 ~~> Doub[0x00100cf0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 414.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 84, (wrb) a0  <-- 83
                                                #; (f:fpu) ft2  <-- 415.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d20, (wrb) a2  <-- 0x00100d28
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 415.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 83, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4150000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4150000 ~~> Doub[0x00100cf8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 415.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 83, (wrb) a0  <-- 82
                                                #; (f:fpu) ft2  <-- 416.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d28, (wrb) a2  <-- 0x00100d30
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 416.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 82, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4160000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4160000 ~~> Doub[0x00100d00]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 416.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 82, (wrb) a0  <-- 81
                                                #; (f:fpu) ft2  <-- 417.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d30, (wrb) a2  <-- 0x00100d38
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 417.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 81, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.417
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.417 ~~> Doub[0x00100d08]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 417.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 81, (wrb) a0  <-- 80
                                                #; (f:fpu) ft2  <-- 418.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d38, (wrb) a2  <-- 0x00100d40
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 418.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 80, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.418
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.418 ~~> Doub[0x00100d10]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 418.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 80, (wrb) a0  <-- 79
                                                #; (f:fpu) ft2  <-- 419.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d40, (wrb) a2  <-- 0x00100d48
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 419.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 79, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.419
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.419 ~~> Doub[0x00100d18]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 419.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 79, (wrb) a0  <-- 78
                                                #; (f:fpu) ft2  <-- 420.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d48, (wrb) a2  <-- 0x00100d50
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 420.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 78, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.42
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.42 ~~> Doub[0x00100d20]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 420.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 78, (wrb) a0  <-- 77
                                                #; (f:fpu) ft2  <-- 421.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d50, (wrb) a2  <-- 0x00100d58
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 421.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 77, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.421
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.421 ~~> Doub[0x00100d28]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 421.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 77, (wrb) a0  <-- 76
                                                #; (f:fpu) ft2  <-- 422.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d58, (wrb) a2  <-- 0x00100d60
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 422.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 76, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.422
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.422 ~~> Doub[0x00100d30]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 422.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 76, (wrb) a0  <-- 75
                                                #; (f:fpu) ft2  <-- 423.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d60, (wrb) a2  <-- 0x00100d68
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 423.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 75, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.423
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.423 ~~> Doub[0x00100d38]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 423.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 75, (wrb) a0  <-- 74
                                                #; (f:fpu) ft2  <-- 424.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d68, (wrb) a2  <-- 0x00100d70
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 424.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 74, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.424
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.424 ~~> Doub[0x00100d40]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 424.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 74, (wrb) a0  <-- 73
                                                #; (f:fpu) ft2  <-- 425.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d70, (wrb) a2  <-- 0x00100d78
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 425.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 73, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.425
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.425 ~~> Doub[0x00100d48]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 425.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 73, (wrb) a0  <-- 72
                                                #; (f:fpu) ft2  <-- 426.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d78, (wrb) a2  <-- 0x00100d80
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 426.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 72, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.426
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.426 ~~> Doub[0x00100d50]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 426.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 72, (wrb) a0  <-- 71
                                                #; (f:fpu) ft2  <-- 427.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d80, (wrb) a2  <-- 0x00100d88
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 427.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 71, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.427
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.427 ~~> Doub[0x00100d58]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 427.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 71, (wrb) a0  <-- 70
                                                #; (f:fpu) ft2  <-- 428.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d88, (wrb) a2  <-- 0x00100d90
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 428.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 70, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.428
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.428 ~~> Doub[0x00100d60]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 428.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 70, (wrb) a0  <-- 69
                                                #; (f:fpu) ft2  <-- 429.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d90, (wrb) a2  <-- 0x00100d98
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 429.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 69, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.429
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.429 ~~> Doub[0x00100d68]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 429.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 69, (wrb) a0  <-- 68
                                                #; (f:fpu) ft2  <-- 430.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d98, (wrb) a2  <-- 0x00100da0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 430.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 68, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.43
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.43 ~~> Doub[0x00100d70]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 430.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 68, (wrb) a0  <-- 67
                                                #; (f:fpu) ft2  <-- 431.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100da0, (wrb) a2  <-- 0x00100da8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 431.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 67, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.431
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.431 ~~> Doub[0x00100d78]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 431.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 67, (wrb) a0  <-- 66
                                                #; (f:fpu) ft2  <-- 432.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100da8, (wrb) a2  <-- 0x00100db0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 432.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 66, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.432
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.432 ~~> Doub[0x00100d80]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 432.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 66, (wrb) a0  <-- 65
                                                #; (f:fpu) ft2  <-- 433.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100db0, (wrb) a2  <-- 0x00100db8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 433.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 65, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.433
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.433 ~~> Doub[0x00100d88]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 433.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 65, (wrb) a0  <-- 64
                                                #; (f:fpu) ft2  <-- 434.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100db8, (wrb) a2  <-- 0x00100dc0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 434.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 64, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.434
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.434 ~~> Doub[0x00100d90]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 434.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 64, (wrb) a0  <-- 63
                                                #; (f:fpu) ft2  <-- 435.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100dc0, (wrb) a2  <-- 0x00100dc8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 435.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 63, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.435
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.435 ~~> Doub[0x00100d98]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 435.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 63, (wrb) a0  <-- 62
                                                #; (f:fpu) ft2  <-- 436.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100dc8, (wrb) a2  <-- 0x00100dd0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 436.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 62, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.436
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.436 ~~> Doub[0x00100da0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 436.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 62, (wrb) a0  <-- 61
                                                #; (f:fpu) ft2  <-- 437.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100dd0, (wrb) a2  <-- 0x00100dd8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 437.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 61, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.437
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.437 ~~> Doub[0x00100da8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 437.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 61, (wrb) a0  <-- 60
                                                #; (f:fpu) ft2  <-- 438.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100dd8, (wrb) a2  <-- 0x00100de0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 438.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 60, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.438
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.438 ~~> Doub[0x00100db0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 438.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 60, (wrb) a0  <-- 59
                                                #; (f:fpu) ft2  <-- 439.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100de0, (wrb) a2  <-- 0x00100de8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 439.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 59, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.439
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.439 ~~> Doub[0x00100db8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 439.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 59, (wrb) a0  <-- 58
                                                #; (f:fpu) ft2  <-- 440.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100de8, (wrb) a2  <-- 0x00100df0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 440.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 58, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.44
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.44 ~~> Doub[0x00100dc0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 440.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 58, (wrb) a0  <-- 57
                                                #; (f:fpu) ft2  <-- 441.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100df0, (wrb) a2  <-- 0x00100df8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 441.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 57, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.441
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.441 ~~> Doub[0x00100dc8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 441.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 57, (wrb) a0  <-- 56
                                                #; (f:fpu) ft2  <-- 442.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100df8, (wrb) a2  <-- 0x00100e00
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 442.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 56, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.442
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.442 ~~> Doub[0x00100dd0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 442.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 56, (wrb) a0  <-- 55
                                                #; (f:fpu) ft2  <-- 443.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e00, (wrb) a2  <-- 0x00100e08
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 443.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 55, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.443
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.443 ~~> Doub[0x00100dd8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 443.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 55, (wrb) a0  <-- 54
                                                #; (f:fpu) ft2  <-- 444.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e08, (wrb) a2  <-- 0x00100e10
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 444.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 54, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.444
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.444 ~~> Doub[0x00100de0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 444.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 54, (wrb) a0  <-- 53
                                                #; (f:fpu) ft2  <-- 445.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e10, (wrb) a2  <-- 0x00100e18
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 445.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 53, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.445
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.445 ~~> Doub[0x00100de8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 445.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 53, (wrb) a0  <-- 52
                                                #; (f:fpu) ft2  <-- 446.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e18, (wrb) a2  <-- 0x00100e20
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 446.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 52, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.446
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.446 ~~> Doub[0x00100df0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 446.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 52, (wrb) a0  <-- 51
                                                #; (f:fpu) ft2  <-- 447.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e20, (wrb) a2  <-- 0x00100e28
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 447.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 51, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.447
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.447 ~~> Doub[0x00100df8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 447.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 51, (wrb) a0  <-- 50
                                                #; (f:fpu) ft2  <-- 448.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e28, (wrb) a2  <-- 0x00100e30
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 448.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 50, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.448
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.448 ~~> Doub[0x00100e00]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 448.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 50, (wrb) a0  <-- 49
                                                #; (f:fpu) ft2  <-- 449.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e30, (wrb) a2  <-- 0x00100e38
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 449.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 49, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.449
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.449 ~~> Doub[0x00100e08]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 449.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 49, (wrb) a0  <-- 48
                                                #; (f:fpu) ft2  <-- 450.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e38, (wrb) a2  <-- 0x00100e40
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 450.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 48, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.45
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.45 ~~> Doub[0x00100e10]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 450.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 48, (wrb) a0  <-- 47
                                                #; (f:fpu) ft2  <-- 451.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e40, (wrb) a2  <-- 0x00100e48
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 451.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 47, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.451
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.451 ~~> Doub[0x00100e18]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 451.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 47, (wrb) a0  <-- 46
                                                #; (f:fpu) ft2  <-- 452.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e48, (wrb) a2  <-- 0x00100e50
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 452.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 46, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.452
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.452 ~~> Doub[0x00100e20]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 452.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 46, (wrb) a0  <-- 45
                                                #; (f:fpu) ft2  <-- 453.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e50, (wrb) a2  <-- 0x00100e58
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 453.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 45, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.453
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.453 ~~> Doub[0x00100e28]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 453.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 45, (wrb) a0  <-- 44
                                                #; (f:fpu) ft2  <-- 454.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e58, (wrb) a2  <-- 0x00100e60
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 454.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 44, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.454
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.454 ~~> Doub[0x00100e30]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 454.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 44, (wrb) a0  <-- 43
                                                #; (f:fpu) ft2  <-- 455.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e60, (wrb) a2  <-- 0x00100e68
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 455.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 43, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.455
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.455 ~~> Doub[0x00100e38]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 455.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 43, (wrb) a0  <-- 42
                                                #; (f:fpu) ft2  <-- 456.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e68, (wrb) a2  <-- 0x00100e70
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 456.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 42, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.456
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.456 ~~> Doub[0x00100e40]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 456.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 42, (wrb) a0  <-- 41
                                                #; (f:fpu) ft2  <-- 457.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e70, (wrb) a2  <-- 0x00100e78
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 457.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 41, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.457
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.457 ~~> Doub[0x00100e48]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 457.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 41, (wrb) a0  <-- 40
                                                #; (f:fpu) ft2  <-- 458.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e78, (wrb) a2  <-- 0x00100e80
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 458.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 40, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.458
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.458 ~~> Doub[0x00100e50]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 458.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 40, (wrb) a0  <-- 39
                                                #; (f:fpu) ft2  <-- 459.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e80, (wrb) a2  <-- 0x00100e88
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 459.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 39, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.459
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.459 ~~> Doub[0x00100e58]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 459.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 39, (wrb) a0  <-- 38
                                                #; (f:fpu) ft2  <-- 460.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e88, (wrb) a2  <-- 0x00100e90
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 460.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 38, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.46
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.46 ~~> Doub[0x00100e60]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 460.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 38, (wrb) a0  <-- 37
                                                #; (f:fpu) ft2  <-- 461.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e90, (wrb) a2  <-- 0x00100e98
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 461.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 37, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.461
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.461 ~~> Doub[0x00100e68]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 461.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 37, (wrb) a0  <-- 36
                                                #; (f:fpu) ft2  <-- 462.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e98, (wrb) a2  <-- 0x00100ea0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 462.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 36, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.462
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.462 ~~> Doub[0x00100e70]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 462.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 36, (wrb) a0  <-- 35
                                                #; (f:fpu) ft2  <-- 463.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ea0, (wrb) a2  <-- 0x00100ea8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 463.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 35, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.463
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.463 ~~> Doub[0x00100e78]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 463.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 35, (wrb) a0  <-- 34
                                                #; (f:fpu) ft2  <-- 464.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ea8, (wrb) a2  <-- 0x00100eb0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 464.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 34, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.464
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.464 ~~> Doub[0x00100e80]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 464.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 34, (wrb) a0  <-- 33
                                                #; (f:fpu) ft2  <-- 465.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100eb0, (wrb) a2  <-- 0x00100eb8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 465.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 33, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.465
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.465 ~~> Doub[0x00100e88]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 465.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 33, (wrb) a0  <-- 32
                                                #; (f:fpu) ft2  <-- 466.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100eb8, (wrb) a2  <-- 0x00100ec0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 466.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 32, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.466
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.466 ~~> Doub[0x00100e90]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 466.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 32, (wrb) a0  <-- 31
                                                #; (f:fpu) ft2  <-- 467.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ec0, (wrb) a2  <-- 0x00100ec8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 467.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 31, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.467
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.467 ~~> Doub[0x00100e98]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 467.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 31, (wrb) a0  <-- 30
                                                #; (f:fpu) ft2  <-- 468.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ec8, (wrb) a2  <-- 0x00100ed0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 468.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 30, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.468
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.468 ~~> Doub[0x00100ea0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 468.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 30, (wrb) a0  <-- 29
                                                #; (f:fpu) ft2  <-- 469.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ed0, (wrb) a2  <-- 0x00100ed8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 469.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 29, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4690000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4690000 ~~> Doub[0x00100ea8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 469.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 29, (wrb) a0  <-- 28
                                                #; (f:fpu) ft2  <-- 470.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ed8, (wrb) a2  <-- 0x00100ee0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 470.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 28, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4700000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4700000 ~~> Doub[0x00100eb0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 470.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 28, (wrb) a0  <-- 27
                                                #; (f:fpu) ft2  <-- 471.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ee0, (wrb) a2  <-- 0x00100ee8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 471.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 27, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4710000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4710000 ~~> Doub[0x00100eb8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 471.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 27, (wrb) a0  <-- 26
                                                #; (f:fpu) ft2  <-- 472.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ee8, (wrb) a2  <-- 0x00100ef0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 472.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 26, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4720000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4720000 ~~> Doub[0x00100ec0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 472.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 26, (wrb) a0  <-- 25
                                                #; (f:fpu) ft2  <-- 473.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ef0, (wrb) a2  <-- 0x00100ef8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 473.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 25, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4730000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4730000 ~~> Doub[0x00100ec8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 473.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                                                #; (f:fpu) ft2  <-- 474.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ef8, (wrb) a2  <-- 0x00100f00
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 474.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 24, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4740000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4740000 ~~> Doub[0x00100ed0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 474.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                                                #; (f:fpu) ft2  <-- 475.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f00, (wrb) a2  <-- 0x00100f08
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 475.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 23, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4750000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4750000 ~~> Doub[0x00100ed8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 475.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                                                #; (f:fpu) ft2  <-- 476.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f08, (wrb) a2  <-- 0x00100f10
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 476.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 22, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4760000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4760000 ~~> Doub[0x00100ee0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 476.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                                                #; (f:fpu) ft2  <-- 477.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f10, (wrb) a2  <-- 0x00100f18
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 477.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 21, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4770000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4770000 ~~> Doub[0x00100ee8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 477.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                                                #; (f:fpu) ft2  <-- 478.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f18, (wrb) a2  <-- 0x00100f20
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 478.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 20, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4780000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4780000 ~~> Doub[0x00100ef0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 478.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                                                #; (f:fpu) ft2  <-- 479.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f20, (wrb) a2  <-- 0x00100f28
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 479.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 19, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.4790000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.4790000 ~~> Doub[0x00100ef8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 479.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                                                #; (f:fpu) ft2  <-- 480.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f28, (wrb) a2  <-- 0x00100f30
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 480.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 18, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.48
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.48 ~~> Doub[0x00100f00]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 480.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                                                #; (f:fpu) ft2  <-- 481.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f30, (wrb) a2  <-- 0x00100f38
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 481.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 17, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.481
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.481 ~~> Doub[0x00100f08]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 481.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                                                #; (f:fpu) ft2  <-- 482.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f38, (wrb) a2  <-- 0x00100f40
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 482.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 16, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.482
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.482 ~~> Doub[0x00100f10]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 482.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                                                #; (f:fpu) ft2  <-- 483.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f40, (wrb) a2  <-- 0x00100f48
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 483.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 15, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.483
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.483 ~~> Doub[0x00100f18]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 483.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                                                #; (f:fpu) ft2  <-- 484.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f48, (wrb) a2  <-- 0x00100f50
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 484.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 14, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.484
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.484 ~~> Doub[0x00100f20]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 484.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                                                #; (f:fpu) ft2  <-- 485.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f50, (wrb) a2  <-- 0x00100f58
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 485.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 13, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.485
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.485 ~~> Doub[0x00100f28]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 485.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                                                #; (f:fpu) ft2  <-- 486.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f58, (wrb) a2  <-- 0x00100f60
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 486.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 12, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.486
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.486 ~~> Doub[0x00100f30]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 486.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                                                #; (f:fpu) ft2  <-- 487.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f60, (wrb) a2  <-- 0x00100f68
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 487.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 11, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.487
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.487 ~~> Doub[0x00100f38]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 487.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                                                #; (f:fpu) ft2  <-- 488.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f68, (wrb) a2  <-- 0x00100f70
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 488.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 10, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.488
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.488 ~~> Doub[0x00100f40]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 488.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                                                #; (f:fpu) ft2  <-- 489.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f70, (wrb) a2  <-- 0x00100f78
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 489.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 9, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.489
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.489 ~~> Doub[0x00100f48]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 489.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                                                #; (f:fpu) ft2  <-- 490.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f78, (wrb) a2  <-- 0x00100f80
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 490.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 8, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.49
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.49 ~~> Doub[0x00100f50]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 490.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                                                #; (f:fpu) ft2  <-- 491.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f80, (wrb) a2  <-- 0x00100f88
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 491.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 7, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.491
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.491 ~~> Doub[0x00100f58]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 491.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                                                #; (f:fpu) ft2  <-- 492.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f88, (wrb) a2  <-- 0x00100f90
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 492.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 6, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.492
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.492 ~~> Doub[0x00100f60]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 492.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                                                #; (f:fpu) ft2  <-- 493.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f90, (wrb) a2  <-- 0x00100f98
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 493.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 5, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.493
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.493 ~~> Doub[0x00100f68]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 493.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                                                #; (f:fpu) ft2  <-- 494.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f98, (wrb) a2  <-- 0x00100fa0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 494.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 4, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.494
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.494 ~~> Doub[0x00100f70]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 494.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                                                #; (f:fpu) ft2  <-- 495.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100fa0, (wrb) a2  <-- 0x00100fa8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 495.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 3, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.495
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.495 ~~> Doub[0x00100f78]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 495.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                                                #; (f:fpu) ft2  <-- 496.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100fa8, (wrb) a2  <-- 0x00100fb0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 496.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 2, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.496
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.496 ~~> Doub[0x00100f80]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 496.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                                                #; (f:fpu) ft2  <-- 497.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100fb0, (wrb) a2  <-- 0x00100fb8
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 497.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 1, taken, goto 0x800006b0
                                                #; (f:fpu) ft3  <-- 0.497
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.497 ~~> Doub[0x00100f88]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 497.0, ft1  = 1.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006bc addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                                                #; (f:fpu) ft2  <-- 498.0
      0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100fb8, (wrb) a2  <-- 0x00100fc0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 498.0, ft0  = 0.001
      0x800006c4 bnez    a0, pc - 20            #; a0  = 0, not taken
; main (test_size.c:0)
      0x800006c8 li      a0, 0                  #; (wrb) a0  <-- 0
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x800006cc addi    a1, a1, 168            #; a1  = 0x00100000, (wrb) a1  <-- 0x001000a8
                                                #; (f:fpu) ft3  <-- 0.498
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b4 fsd     ft3, 0(a2)             #; 0.498 ~~> Doub[0x00100f90]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 498.0, ft1  = 1.0
                                                #; (f:fpu) ft2  <-- 499.0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 499.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.499
      0x800006b4 fsd     ft3, 0(a2)             #; 0.499 ~~> Doub[0x00100f98]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 499.0, ft1  = 1.0
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006d4 li      a2, 1344               #; (wrb) a2  <-- 1344
      0x800006d8 li      a3, 3                  #; (wrb) a3  <-- 3
      0x800006dc li      a4, 0                  #; (wrb) a4  <-- 0
                                                #; (f:fpu) ft2  <-- 500.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 500.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.5
      0x800006b4 fsd     ft3, 0(a2)             #; 0.5 ~~> Doub[0x00100fa0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 500.0, ft1  = 1.0
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e0 add     a5, a1, a4             #; a1  = 0x001000a8, a4  = 0, (wrb) a5  <-- 0x001000a8
                                                #; (f:fpu) ft2  <-- 501.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 501.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.501
      0x800006b4 fsd     ft3, 0(a2)             #; 0.501 ~~> Doub[0x00100fa8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 501.0, ft1  = 1.0
                                                #; (f:fpu) ft2  <-- 502.0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 502.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.502
      0x800006b4 fsd     ft3, 0(a2)             #; 0.502 ~~> Doub[0x00100fb0]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 502.0, ft1  = 1.0
                                                #; (f:fpu) ft2  <-- 503.0
      0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 503.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.503
      0x800006b4 fsd     ft3, 0(a2)             #; 0.503 ~~> Doub[0x00100fb8]
      0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 503.0, ft1  = 1.0
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006d0 fcvt.d.w ft0, zero             #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100000], (f:fpu) ft2  <-- 504.0
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 0.0
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100010], (f:lsu) ft2  <-- 0.001
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100018], (f:lsu) ft3  <-- 0.002
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100020], (f:lsu) ft4  <-- 0.003
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.001, ft1  = 0.0, (f:lsu) ft5  <-- 0.004
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100028]
                                                #; (f:lsu) ft2  <-- 0.005
                                                #; (f:fpu) ft1  <-- 0.001
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.001, ft3  = 0.002
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100030]
                                                #; (f:lsu) ft3  <-- 0.006
                                                #; (f:fpu) ft1  <-- 0.003
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.003, ft4  = 0.003
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100038]
                                                #; (f:lsu) ft4  <-- 0.007
                                                #; (f:fpu) ft1  <-- 0.006
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.006, ft5  = 0.004
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100040]
                                                #; (f:lsu) ft5  <-- 0.008
                                                #; (f:fpu) ft1  <-- 0.01
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 0.01, ft2  = 0.005
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100048]
                                                #; (f:lsu) ft2  <-- 0.0090000
                                                #; (f:fpu) ft1  <-- 0.015
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 0.015, ft3  = 0.006
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100050]
                                                #; (f:lsu) ft3  <-- 0.01
                                                #; (f:fpu) ft1  <-- 0.0210000
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 0.0210000, ft4  = 0.007
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100058]
                                                #; (f:lsu) ft4  <-- 0.011
                                                #; (f:fpu) ft1  <-- 0.0280000
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 0.0280000, ft5  = 0.008
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100060]
                                                #; (f:lsu) ft5  <-- 0.012
                                                #; (f:fpu) ft1  <-- 0.036
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 0.036, ft2  = 0.0090000
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100068]
                                                #; (f:lsu) ft2  <-- 0.0130000
                                                #; (f:fpu) ft1  <-- 0.045
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 0.045, ft3  = 0.01
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100070]
                                                #; (f:lsu) ft3  <-- 0.014
                                                #; (f:fpu) ft1  <-- 0.055
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 0.055, ft4  = 0.011
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100078]
                                                #; (f:lsu) ft4  <-- 0.015
                                                #; (f:fpu) ft1  <-- 0.066
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 0.066, ft5  = 0.012
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100080]
                                                #; (f:lsu) ft5  <-- 0.016
                                                #; (f:fpu) ft1  <-- 0.078
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 0.078, ft2  = 0.0130000
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100088]
                                                #; (f:lsu) ft2  <-- 0.017
                                                #; (f:fpu) ft1  <-- 0.091
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 0.091, ft3  = 0.014
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100090]
                                                #; (f:lsu) ft3  <-- 0.0180000
                                                #; (f:fpu) ft1  <-- 0.105
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 0.105, ft4  = 0.015
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100098]
                                                #; (f:lsu) ft4  <-- 0.019
                                                #; (f:fpu) ft1  <-- 0.12
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 0.12, ft5  = 0.016
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x001000a0]
                                                #; (f:lsu) ft5  <-- 0.02
                                                #; (f:fpu) ft1  <-- 0.136
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 0.136, ft2  = 0.017
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x001000a8]
                                                #; (f:lsu) ft2  <-- 0.021
                                                #; (f:fpu) ft1  <-- 0.1530000
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 0.1530000, ft3  = 0.0180000
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001000b0]
                                                #; (f:lsu) ft3  <-- 0.022
                                                #; (f:fpu) ft1  <-- 0.1710000
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 0.1710000, ft4  = 0.019
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x001000b8]
                                                #; (f:lsu) ft4  <-- 0.023
                                                #; (f:fpu) ft1  <-- 0.1900000
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 0.1900000, ft5  = 0.02
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x001000c0]
                                                #; (f:lsu) ft5  <-- 0.024
                                                #; (f:fpu) ft1  <-- 0.2100000
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 0.2100000, ft2  = 0.021
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x001000c8]
                                                #; (f:lsu) ft2  <-- 0.025
                                                #; (f:fpu) ft1  <-- 0.231
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 0.231, ft3  = 0.022
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x001000d0]
                                                #; (f:lsu) ft3  <-- 0.0260000
                                                #; (f:fpu) ft1  <-- 0.253
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 0.253, ft4  = 0.023
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x001000d8]
                                                #; (f:lsu) ft4  <-- 0.027
                                                #; (f:fpu) ft1  <-- 0.276
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 0.276, ft5  = 0.024
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x001000e0]
                                                #; (f:lsu) ft5  <-- 0.028
                                                #; (f:fpu) ft1  <-- 0.3000000
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 0.3000000, ft2  = 0.025
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x001000e8]
                                                #; (f:lsu) ft2  <-- 0.029
                                                #; (f:fpu) ft1  <-- 0.3250000
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 0.3250000, ft3  = 0.0260000
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x001000f0]
                                                #; (f:lsu) ft3  <-- 0.03
                                                #; (f:fpu) ft1  <-- 0.3510000
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 0.3510000, ft4  = 0.027
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x001000f8]
                                                #; (f:lsu) ft4  <-- 0.031
                                                #; (f:fpu) ft1  <-- 0.3780000
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 0.3780000, ft5  = 0.028
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100100]
                                                #; (f:lsu) ft5  <-- 0.032
                                                #; (f:fpu) ft1  <-- 0.4060000
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 0.4060000, ft2  = 0.029
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100108]
                                                #; (f:lsu) ft2  <-- 0.033
                                                #; (f:fpu) ft1  <-- 0.4350000
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 0.4350000, ft3  = 0.03
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100110]
                                                #; (f:lsu) ft3  <-- 0.034
                                                #; (f:fpu) ft1  <-- 0.4650000
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 0.4650000, ft4  = 0.031
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100118]
                                                #; (f:lsu) ft4  <-- 0.035
                                                #; (f:fpu) ft1  <-- 0.4960000
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 0.4960000, ft5  = 0.032
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100120]
                                                #; (f:lsu) ft5  <-- 0.0360000
                                                #; (f:fpu) ft1  <-- 0.5280000
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 0.5280000, ft2  = 0.033
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100128]
                                                #; (f:lsu) ft2  <-- 0.037
                                                #; (f:fpu) ft1  <-- 0.5610000
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 0.5610000, ft3  = 0.034
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100130]
                                                #; (f:lsu) ft3  <-- 0.038
                                                #; (f:fpu) ft1  <-- 0.5950000
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 0.5950000, ft4  = 0.035
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100138]
                                                #; (f:lsu) ft4  <-- 0.039
                                                #; (f:fpu) ft1  <-- 0.6300000
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 0.6300000, ft5  = 0.0360000
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100140]
                                                #; (f:lsu) ft5  <-- 0.04
                                                #; (f:fpu) ft1  <-- 0.6660000
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 0.6660000, ft2  = 0.037
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100148]
                                                #; (f:lsu) ft2  <-- 0.041
                                                #; (f:fpu) ft1  <-- 0.7030000
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 0.7030000, ft3  = 0.038
                                                #; (f:fpu) ft1  <-- 0.7410000
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 0.7410000, ft4  = 0.039
                                                #; (f:fpu) ft1  <-- 0.7800000
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 0.7800000, ft5  = 0.04
                                                #; (f:fpu) ft1  <-- 0.8200000
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 0.8200000, ft2  = 0.041
                                                #; (f:fpu) ft1  <-- 0.8610000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 0.8610000, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.8610000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 0.8610000, ft0  = 0.8610000
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 0, (wrb) a4  <-- 336
                                                #; (f:fpu) ft0  <-- 1.7220000
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 336, a2  = 1344, taken, goto 0x800006e0
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 0.8610000, ft0  = 1.7220000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e0 add     a5, a1, a4             #; a1  = 0x001000a8, a4  = 336, (wrb) a5  <-- 0x001001f8
                                                #; (f:fpu) ft0  <-- 2.5830000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 0.8610000, ft0  = 2.5830000
                                                #; (f:fpu) ft0  <-- 3.4440000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 0.8610000, ft0  = 3.4440000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100150]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100158], (f:lsu) ft1  <-- 0.042
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100160], (f:fpu) ft0  <-- 4.3050000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100168], (f:lsu) ft2  <-- 0.0430000
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100170], (f:lsu) ft3  <-- 0.044
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.0430000, ft1  = 0.042, (f:lsu) ft4  <-- 0.045
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft5  <-- 0.046
                                                #; (f:lsu) ft2  <-- 0.047
                                                #; (f:fpu) ft1  <-- 0.085
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.085, ft3  = 0.044
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100180]
                                                #; (f:lsu) ft3  <-- 0.048
                                                #; (f:fpu) ft1  <-- 0.129
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.129, ft4  = 0.045
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100188]
                                                #; (f:lsu) ft4  <-- 0.049
                                                #; (f:fpu) ft1  <-- 0.174
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.174, ft5  = 0.046
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100190]
                                                #; (f:lsu) ft5  <-- 0.05
                                                #; (f:fpu) ft1  <-- 0.2200000
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 0.2200000, ft2  = 0.047
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100198]
                                                #; (f:lsu) ft2  <-- 0.0510000
                                                #; (f:fpu) ft1  <-- 0.2670000
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 0.2670000, ft3  = 0.048
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x001001a0]
                                                #; (f:lsu) ft3  <-- 0.0520000
                                                #; (f:fpu) ft1  <-- 0.3150000
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 0.3150000, ft4  = 0.049
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x001001a8]
                                                #; (f:lsu) ft4  <-- 0.053
                                                #; (f:fpu) ft1  <-- 0.3640000
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 0.3640000, ft5  = 0.05
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x001001b0]
                                                #; (f:lsu) ft5  <-- 0.054
                                                #; (f:fpu) ft1  <-- 0.4140000
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 0.4140000, ft2  = 0.0510000
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x001001b8]
                                                #; (f:lsu) ft2  <-- 0.055
                                                #; (f:fpu) ft1  <-- 0.4650000
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 0.4650000, ft3  = 0.0520000
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x001001c0]
                                                #; (f:lsu) ft3  <-- 0.056
                                                #; (f:fpu) ft1  <-- 0.5170000
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 0.5170000, ft4  = 0.053
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x001001c8]
                                                #; (f:lsu) ft4  <-- 0.057
                                                #; (f:fpu) ft1  <-- 0.57
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 0.57, ft5  = 0.054
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x001001d0]
                                                #; (f:lsu) ft5  <-- 0.058
                                                #; (f:fpu) ft1  <-- 0.624
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 0.624, ft2  = 0.055
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x001001d8]
                                                #; (f:lsu) ft2  <-- 0.0590000
                                                #; (f:fpu) ft1  <-- 0.679
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 0.679, ft3  = 0.056
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x001001e0]
                                                #; (f:lsu) ft3  <-- 0.06
                                                #; (f:fpu) ft1  <-- 0.7350000
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 0.7350000, ft4  = 0.057
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x001001e8]
                                                #; (f:lsu) ft4  <-- 0.061
                                                #; (f:fpu) ft1  <-- 0.7920000
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 0.7920000, ft5  = 0.058
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x001001f0]
                                                #; (f:lsu) ft5  <-- 0.062
                                                #; (f:fpu) ft1  <-- 0.8500000
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 0.8500000, ft2  = 0.0590000
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x001001f8]
                                                #; (f:lsu) ft2  <-- 0.063
                                                #; (f:fpu) ft1  <-- 0.9090000
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 0.9090000, ft3  = 0.06
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100200]
                                                #; (f:lsu) ft3  <-- 0.064
                                                #; (f:fpu) ft1  <-- 0.9690000
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 0.9690000, ft4  = 0.061
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100208]
                                                #; (f:lsu) ft4  <-- 0.065
                                                #; (f:fpu) ft1  <-- 1.0300000
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 1.0300000, ft5  = 0.062
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100210]
                                                #; (f:lsu) ft5  <-- 0.066
                                                #; (f:fpu) ft1  <-- 1.0920000
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 1.0920000, ft2  = 0.063
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100218]
                                                #; (f:lsu) ft2  <-- 0.067
                                                #; (f:fpu) ft1  <-- 1.1550000
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 1.1550000, ft3  = 0.064
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100220]
                                                #; (f:lsu) ft3  <-- 0.068
                                                #; (f:fpu) ft1  <-- 1.2190000
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 1.2190000, ft4  = 0.065
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100228]
                                                #; (f:lsu) ft4  <-- 0.069
                                                #; (f:fpu) ft1  <-- 1.2840000
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 1.2840000, ft5  = 0.066
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100230]
                                                #; (f:lsu) ft5  <-- 0.07
                                                #; (f:fpu) ft1  <-- 1.3500000
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 1.3500000, ft2  = 0.067
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100238]
                                                #; (f:lsu) ft2  <-- 0.0710000
                                                #; (f:fpu) ft1  <-- 1.4170000
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 1.4170000, ft3  = 0.068
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100240]
                                                #; (f:lsu) ft3  <-- 0.0720000
                                                #; (f:fpu) ft1  <-- 1.4850000
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 1.4850000, ft4  = 0.069
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100248]
                                                #; (f:lsu) ft4  <-- 0.073
                                                #; (f:fpu) ft1  <-- 1.5540000
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 1.5540000, ft5  = 0.07
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100250]
                                                #; (f:lsu) ft5  <-- 0.074
                                                #; (f:fpu) ft1  <-- 1.6240000
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 1.6240000, ft2  = 0.0710000
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100258]
                                                #; (f:lsu) ft2  <-- 0.075
                                                #; (f:fpu) ft1  <-- 1.6950000
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 1.6950000, ft3  = 0.0720000
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100260]
                                                #; (f:lsu) ft3  <-- 0.076
                                                #; (f:fpu) ft1  <-- 1.7670000
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 1.7670000, ft4  = 0.073
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100268]
                                                #; (f:lsu) ft4  <-- 0.077
                                                #; (f:fpu) ft1  <-- 1.8400000
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 1.8400000, ft5  = 0.074
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100270]
                                                #; (f:lsu) ft5  <-- 0.078
                                                #; (f:fpu) ft1  <-- 1.9140000
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 336, (wrb) a4  <-- 672
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 1.9140000, ft2  = 0.075
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100278]
                                                #; (f:lsu) ft2  <-- 0.079
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 672, a2  = 1344, taken, goto 0x800006e0
                                                #; (f:fpu) ft1  <-- 1.9890000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e0 add     a5, a1, a4             #; a1  = 0x001000a8, a4  = 672, (wrb) a5  <-- 0x00100348
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 1.9890000, ft3  = 0.076
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100280]
                                                #; (f:lsu) ft3  <-- 0.08
                                                #; (f:fpu) ft1  <-- 2.0650000
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 2.0650000, ft4  = 0.077
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100288]
                                                #; (f:lsu) ft4  <-- 0.081
                                                #; (f:fpu) ft1  <-- 2.1420000
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 2.1420000, ft5  = 0.078
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100290]
                                                #; (f:lsu) ft5  <-- 0.082
                                                #; (f:fpu) ft1  <-- 2.22
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 2.22, ft2  = 0.079
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100298]
                                                #; (f:lsu) ft2  <-- 0.083
                                                #; (f:fpu) ft1  <-- 2.2990000
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 2.2990000, ft3  = 0.08
                                                #; (f:fpu) ft1  <-- 2.3790000
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 2.3790000, ft4  = 0.081
                                                #; (f:fpu) ft1  <-- 2.4600000
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 2.4600000, ft5  = 0.082
                                                #; (f:fpu) ft1  <-- 2.5420000
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 2.5420000, ft2  = 0.083
                                                #; (f:fpu) ft1  <-- 2.6250000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 2.6250000, ft0  = 4.3050000
                                                #; (f:fpu) ft0  <-- 6.9300000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 2.6250000, ft0  = 6.9300000
                                                #; (f:fpu) ft0  <-- 9.5550000
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 2.6250000, ft0  = 9.5550000
                                                #; (f:fpu) ft0  <-- 12.1800000
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 2.6250000, ft0  = 12.1800000
                                                #; (f:fpu) ft0  <-- 14.8050000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 2.6250000, ft0  = 14.8050000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x001002a0]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x001002a8], (f:lsu) ft1  <-- 0.084
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x001002b0], (f:fpu) ft0  <-- 17.4300000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x001002b8], (f:lsu) ft2  <-- 0.085
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x001002c0], (f:lsu) ft3  <-- 0.0860000
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.085, ft1  = 0.084, (f:lsu) ft4  <-- 0.0870000
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x001002c8], (f:lsu) ft5  <-- 0.088
                                                #; (f:lsu) ft2  <-- 0.089
                                                #; (f:fpu) ft1  <-- 0.169
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.169, ft3  = 0.0860000
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x001002d0]
                                                #; (f:lsu) ft3  <-- 0.09
                                                #; (f:fpu) ft1  <-- 0.255
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.255, ft4  = 0.0870000
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x001002d8]
                                                #; (f:lsu) ft4  <-- 0.091
                                                #; (f:fpu) ft1  <-- 0.342
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.342, ft5  = 0.088
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x001002e0]
                                                #; (f:lsu) ft5  <-- 0.092
                                                #; (f:fpu) ft1  <-- 0.4300000
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 0.4300000, ft2  = 0.089
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x001002e8]
                                                #; (f:lsu) ft2  <-- 0.093
                                                #; (f:fpu) ft1  <-- 0.519
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 0.519, ft3  = 0.09
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x001002f0]
                                                #; (f:lsu) ft3  <-- 0.094
                                                #; (f:fpu) ft1  <-- 0.609
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 0.609, ft4  = 0.091
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x001002f8]
                                                #; (f:lsu) ft4  <-- 0.095
                                                #; (f:fpu) ft1  <-- 0.7
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 0.7, ft5  = 0.092
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100300]
                                                #; (f:lsu) ft5  <-- 0.096
                                                #; (f:fpu) ft1  <-- 0.7920000
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 0.7920000, ft2  = 0.093
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100308]
                                                #; (f:lsu) ft2  <-- 0.097
                                                #; (f:fpu) ft1  <-- 0.8850000
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 0.8850000, ft3  = 0.094
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100310]
                                                #; (f:lsu) ft3  <-- 0.098
                                                #; (f:fpu) ft1  <-- 0.9790000
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 0.9790000, ft4  = 0.095
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100318]
                                                #; (f:lsu) ft4  <-- 0.099
                                                #; (f:fpu) ft1  <-- 1.0740000
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 1.0740000, ft5  = 0.096
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100320]
                                                #; (f:lsu) ft5  <-- 0.1
                                                #; (f:fpu) ft1  <-- 1.17
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 1.17, ft2  = 0.097
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100328]
                                                #; (f:lsu) ft2  <-- 0.101
                                                #; (f:fpu) ft1  <-- 1.267
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 1.267, ft3  = 0.098
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100330]
                                                #; (f:lsu) ft3  <-- 0.1020000
                                                #; (f:fpu) ft1  <-- 1.365
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 1.365, ft4  = 0.099
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100338]
                                                #; (f:lsu) ft4  <-- 0.1030000
                                                #; (f:fpu) ft1  <-- 1.464
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 1.464, ft5  = 0.1
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100340]
                                                #; (f:lsu) ft5  <-- 0.1040000
                                                #; (f:fpu) ft1  <-- 1.564
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 1.564, ft2  = 0.101
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100348]
                                                #; (f:lsu) ft2  <-- 0.105
                                                #; (f:fpu) ft1  <-- 1.665
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 1.665, ft3  = 0.1020000
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100350]
                                                #; (f:lsu) ft3  <-- 0.106
                                                #; (f:fpu) ft1  <-- 1.7670000
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 1.7670000, ft4  = 0.1030000
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100358]
                                                #; (f:lsu) ft4  <-- 0.107
                                                #; (f:fpu) ft1  <-- 1.87
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 1.87, ft5  = 0.1040000
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100360]
                                                #; (f:lsu) ft5  <-- 0.108
                                                #; (f:fpu) ft1  <-- 1.9740000
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 1.9740000, ft2  = 0.105
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100368]
                                                #; (f:lsu) ft2  <-- 0.109
                                                #; (f:fpu) ft1  <-- 2.079
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 2.079, ft3  = 0.106
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100370]
                                                #; (f:lsu) ft3  <-- 0.11
                                                #; (f:fpu) ft1  <-- 2.185
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 2.185, ft4  = 0.107
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100378]
                                                #; (f:lsu) ft4  <-- 0.111
                                                #; (f:fpu) ft1  <-- 2.2920000
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 2.2920000, ft5  = 0.108
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100380]
                                                #; (f:lsu) ft5  <-- 0.112
                                                #; (f:fpu) ft1  <-- 2.4000000
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 2.4000000, ft2  = 0.109
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100388]
                                                #; (f:lsu) ft2  <-- 0.113
                                                #; (f:fpu) ft1  <-- 2.5090000
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 2.5090000, ft3  = 0.11
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100390]
                                                #; (f:lsu) ft3  <-- 0.114
                                                #; (f:fpu) ft1  <-- 2.619
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 2.619, ft4  = 0.111
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100398]
                                                #; (f:lsu) ft4  <-- 0.115
                                                #; (f:fpu) ft1  <-- 2.7300000
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 2.7300000, ft5  = 0.112
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x001003a0]
                                                #; (f:lsu) ft5  <-- 0.116
                                                #; (f:fpu) ft1  <-- 2.8420000
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 2.8420000, ft2  = 0.113
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x001003a8]
                                                #; (f:lsu) ft2  <-- 0.117
                                                #; (f:fpu) ft1  <-- 2.9550000
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 2.9550000, ft3  = 0.114
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x001003b0]
                                                #; (f:lsu) ft3  <-- 0.1180000
                                                #; (f:fpu) ft1  <-- 3.0690000
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 3.0690000, ft4  = 0.115
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x001003b8]
                                                #; (f:lsu) ft4  <-- 0.1190000
                                                #; (f:fpu) ft1  <-- 3.1840000
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 3.1840000, ft5  = 0.116
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x001003c0]
                                                #; (f:lsu) ft5  <-- 0.12
                                                #; (f:fpu) ft1  <-- 3.3000000
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 672, (wrb) a4  <-- 1008
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 3.3000000, ft2  = 0.117
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x001003c8]
                                                #; (f:lsu) ft2  <-- 0.121
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 1008, a2  = 1344, taken, goto 0x800006e0
                                                #; (f:fpu) ft1  <-- 3.4170000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e0 add     a5, a1, a4             #; a1  = 0x001000a8, a4  = 1008, (wrb) a5  <-- 0x00100498
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 3.4170000, ft3  = 0.1180000
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x001003d0]
                                                #; (f:lsu) ft3  <-- 0.122
                                                #; (f:fpu) ft1  <-- 3.5350000
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 3.5350000, ft4  = 0.1190000
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x001003d8]
                                                #; (f:lsu) ft4  <-- 0.123
                                                #; (f:fpu) ft1  <-- 3.6540000
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 3.6540000, ft5  = 0.12
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x001003e0]
                                                #; (f:lsu) ft5  <-- 0.124
                                                #; (f:fpu) ft1  <-- 3.7740000
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 3.7740000, ft2  = 0.121
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x001003e8]
                                                #; (f:lsu) ft2  <-- 0.125
                                                #; (f:fpu) ft1  <-- 3.8950000
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 3.8950000, ft3  = 0.122
                                                #; (f:fpu) ft1  <-- 4.0170000
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 4.0170000, ft4  = 0.123
                                                #; (f:fpu) ft1  <-- 4.1400000
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 4.1400000, ft5  = 0.124
                                                #; (f:fpu) ft1  <-- 4.2640000
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 4.2640000, ft2  = 0.125
                                                #; (f:fpu) ft1  <-- 4.3890000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 4.3890000, ft0  = 17.4300000
                                                #; (f:fpu) ft0  <-- 21.8190000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 4.3890000, ft0  = 21.8190000
                                                #; (f:fpu) ft0  <-- 26.2080000
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 4.3890000, ft0  = 26.2080000
                                                #; (f:fpu) ft0  <-- 30.5970000
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 4.3890000, ft0  = 30.5970000
                                                #; (f:fpu) ft0  <-- 34.9860000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 4.3890000, ft0  = 34.9860000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x001003f0]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x001003f8], (f:lsu) ft1  <-- 0.126
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100400], (f:fpu) ft0  <-- 39.3750000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100408], (f:lsu) ft2  <-- 0.127
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100410], (f:lsu) ft3  <-- 0.128
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.127, ft1  = 0.126, (f:lsu) ft4  <-- 0.129
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100418], (f:lsu) ft5  <-- 0.13
                                                #; (f:lsu) ft2  <-- 0.131
                                                #; (f:fpu) ft1  <-- 0.253
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.253, ft3  = 0.128
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100420]
                                                #; (f:lsu) ft3  <-- 0.132
                                                #; (f:fpu) ft1  <-- 0.381
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.381, ft4  = 0.129
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100428]
                                                #; (f:lsu) ft4  <-- 0.133
                                                #; (f:fpu) ft1  <-- 0.51
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.51, ft5  = 0.13
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100430]
                                                #; (f:lsu) ft5  <-- 0.134
                                                #; (f:fpu) ft1  <-- 0.64
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 0.64, ft2  = 0.131
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100438]
                                                #; (f:lsu) ft2  <-- 0.135
                                                #; (f:fpu) ft1  <-- 0.771
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 0.771, ft3  = 0.132
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100440]
                                                #; (f:lsu) ft3  <-- 0.136
                                                #; (f:fpu) ft1  <-- 0.903
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 0.903, ft4  = 0.133
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100448]
                                                #; (f:lsu) ft4  <-- 0.137
                                                #; (f:fpu) ft1  <-- 1.036
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 1.036, ft5  = 0.134
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100450]
                                                #; (f:lsu) ft5  <-- 0.138
                                                #; (f:fpu) ft1  <-- 1.17
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 1.17, ft2  = 0.135
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100458]
                                                #; (f:lsu) ft2  <-- 0.139
                                                #; (f:fpu) ft1  <-- 1.305
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 1.305, ft3  = 0.136
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100460]
                                                #; (f:lsu) ft3  <-- 0.14
                                                #; (f:fpu) ft1  <-- 1.4410000
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 1.4410000, ft4  = 0.137
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100468]
                                                #; (f:lsu) ft4  <-- 0.1410000
                                                #; (f:fpu) ft1  <-- 1.5780000
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 1.5780000, ft5  = 0.138
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100470]
                                                #; (f:lsu) ft5  <-- 0.1420000
                                                #; (f:fpu) ft1  <-- 1.7160000
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 1.7160000, ft2  = 0.139
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100478]
                                                #; (f:lsu) ft2  <-- 0.1430000
                                                #; (f:fpu) ft1  <-- 1.8550000
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 1.8550000, ft3  = 0.14
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100480]
                                                #; (f:lsu) ft3  <-- 0.1440000
                                                #; (f:fpu) ft1  <-- 1.9950000
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 1.9950000, ft4  = 0.1410000
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100488]
                                                #; (f:lsu) ft4  <-- 0.145
                                                #; (f:fpu) ft1  <-- 2.1360000
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 2.1360000, ft5  = 0.1420000
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100490]
                                                #; (f:lsu) ft5  <-- 0.146
                                                #; (f:fpu) ft1  <-- 2.2780000
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 2.2780000, ft2  = 0.1430000
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100498]
                                                #; (f:lsu) ft2  <-- 0.147
                                                #; (f:fpu) ft1  <-- 2.4210000
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 2.4210000, ft3  = 0.1440000
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001004a0]
                                                #; (f:lsu) ft3  <-- 0.148
                                                #; (f:fpu) ft1  <-- 2.5650000
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 2.5650000, ft4  = 0.145
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x001004a8]
                                                #; (f:lsu) ft4  <-- 0.149
                                                #; (f:fpu) ft1  <-- 2.7100000
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 2.7100000, ft5  = 0.146
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x001004b0]
                                                #; (f:lsu) ft5  <-- 0.15
                                                #; (f:fpu) ft1  <-- 2.8560000
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 2.8560000, ft2  = 0.147
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x001004b8]
                                                #; (f:lsu) ft2  <-- 0.151
                                                #; (f:fpu) ft1  <-- 3.0030000
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 3.0030000, ft3  = 0.148
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x001004c0]
                                                #; (f:lsu) ft3  <-- 0.152
                                                #; (f:fpu) ft1  <-- 3.1510000
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 3.1510000, ft4  = 0.149
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x001004c8]
                                                #; (f:lsu) ft4  <-- 0.153
                                                #; (f:fpu) ft1  <-- 3.3000000
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 3.3000000, ft5  = 0.15
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x001004d0]
                                                #; (f:lsu) ft5  <-- 0.154
                                                #; (f:fpu) ft1  <-- 3.4500000
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 3.4500000, ft2  = 0.151
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x001004d8]
                                                #; (f:lsu) ft2  <-- 0.155
                                                #; (f:fpu) ft1  <-- 3.6010000
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 3.6010000, ft3  = 0.152
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x001004e0]
                                                #; (f:lsu) ft3  <-- 0.156
                                                #; (f:fpu) ft1  <-- 3.7530000
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 3.7530000, ft4  = 0.153
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x001004e8]
                                                #; (f:lsu) ft4  <-- 0.157
                                                #; (f:fpu) ft1  <-- 3.9060000
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 3.9060000, ft5  = 0.154
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x001004f0]
                                                #; (f:lsu) ft5  <-- 0.158
                                                #; (f:fpu) ft1  <-- 4.06
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 4.06, ft2  = 0.155
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x001004f8]
                                                #; (f:lsu) ft2  <-- 0.159
                                                #; (f:fpu) ft1  <-- 4.215
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 4.215, ft3  = 0.156
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100500]
                                                #; (f:lsu) ft3  <-- 0.16
                                                #; (f:fpu) ft1  <-- 4.3710000
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 4.3710000, ft4  = 0.157
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100508]
                                                #; (f:lsu) ft4  <-- 0.161
                                                #; (f:fpu) ft1  <-- 4.528
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 4.528, ft5  = 0.158
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100510]
                                                #; (f:lsu) ft5  <-- 0.162
                                                #; (f:fpu) ft1  <-- 4.686
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 1008, (wrb) a4  <-- 1344
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 4.686, ft2  = 0.159
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100518]
                                                #; (f:lsu) ft2  <-- 0.163
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 1344, a2  = 1344, not taken
                                                #; (f:fpu) ft1  <-- 4.845
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x8000084c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 4.845, ft3  = 0.16
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100520]
                                                #; (f:lsu) ft3  <-- 0.164
                                                #; (f:fpu) ft1  <-- 5.005
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 5.005, ft4  = 0.161
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100528]
                                                #; (f:lsu) ft4  <-- 0.165
                                                #; (f:fpu) ft1  <-- 5.1660000
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 5.1660000, ft5  = 0.162
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100530]
                                                #; (f:lsu) ft5  <-- 0.166
                                                #; (f:fpu) ft1  <-- 5.3280000
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x80000850 addi    a1, a1, 1344           #; a1  = 0x001000a8, (wrb) a1  <-- 0x001005e8
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 5.3280000, ft2  = 0.163
      0x80000854 bne     a0, a3, pc - 376       #; a0  = 1, a3  = 3, taken, goto 0x800006dc
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100538]
                                                #; (f:lsu) ft2  <-- 0.167
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006dc li      a4, 0                  #; (wrb) a4  <-- 0
                                                #; (f:fpu) ft1  <-- 5.491
      0x800006e0 add     a5, a1, a4             #; a1  = 0x001005e8, a4  = 0, (wrb) a5  <-- 0x001005e8
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 5.491, ft3  = 0.164
                                                #; (f:fpu) ft1  <-- 5.6550000
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 5.6550000, ft4  = 0.165
                                                #; (f:fpu) ft1  <-- 5.8200000
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 5.8200000, ft5  = 0.166
                                                #; (f:fpu) ft1  <-- 5.986
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 5.986, ft2  = 0.167
                                                #; (f:fpu) ft1  <-- 6.153
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 6.153, ft0  = 39.3750000
                                                #; (f:fpu) ft0  <-- 45.5280000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 6.153, ft0  = 45.5280000
                                                #; (f:fpu) ft0  <-- 51.6810000
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 6.153, ft0  = 51.6810000
                                                #; (f:fpu) ft0  <-- 57.8340000
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 6.153, ft0  = 57.8340000
                                                #; (f:fpu) ft0  <-- 63.9870000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 6.153, ft0  = 63.9870000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100540]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100548], (f:lsu) ft1  <-- 0.168
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100550], (f:fpu) ft0  <-- 70.1400000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100558], (f:lsu) ft2  <-- 0.169
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100560], (f:lsu) ft3  <-- 0.17
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.169, ft1  = 0.168, (f:lsu) ft4  <-- 0.171
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100568], (f:lsu) ft5  <-- 0.1720000
                                                #; (f:lsu) ft2  <-- 0.1730000
                                                #; (f:fpu) ft1  <-- 0.337
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.337, ft3  = 0.17
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100570]
                                                #; (f:lsu) ft3  <-- 0.1740000
                                                #; (f:fpu) ft1  <-- 0.507
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.507, ft4  = 0.171
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100578]
                                                #; (f:lsu) ft4  <-- 0.1750000
                                                #; (f:fpu) ft1  <-- 0.678
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.678, ft5  = 0.1720000
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100580]
                                                #; (f:lsu) ft5  <-- 0.176
                                                #; (f:fpu) ft1  <-- 0.8500000
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 0.8500000, ft2  = 0.1730000
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100588]
                                                #; (f:lsu) ft2  <-- 0.177
                                                #; (f:fpu) ft1  <-- 1.0230000
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 1.0230000, ft3  = 0.1740000
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100590]
                                                #; (f:lsu) ft3  <-- 0.178
                                                #; (f:fpu) ft1  <-- 1.197
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 1.197, ft4  = 0.1750000
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100598]
                                                #; (f:lsu) ft4  <-- 0.179
                                                #; (f:fpu) ft1  <-- 1.372
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 1.372, ft5  = 0.176
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x001005a0]
                                                #; (f:lsu) ft5  <-- 0.18
                                                #; (f:fpu) ft1  <-- 1.548
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 1.548, ft2  = 0.177
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x001005a8]
                                                #; (f:lsu) ft2  <-- 0.181
                                                #; (f:fpu) ft1  <-- 1.725
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 1.725, ft3  = 0.178
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x001005b0]
                                                #; (f:lsu) ft3  <-- 0.182
                                                #; (f:fpu) ft1  <-- 1.903
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 1.903, ft4  = 0.179
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x001005b8]
                                                #; (f:lsu) ft4  <-- 0.183
                                                #; (f:fpu) ft1  <-- 2.082
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 2.082, ft5  = 0.18
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x001005c0]
                                                #; (f:lsu) ft5  <-- 0.184
                                                #; (f:fpu) ft1  <-- 2.262
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 2.262, ft2  = 0.181
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x001005c8]
                                                #; (f:lsu) ft2  <-- 0.185
                                                #; (f:fpu) ft1  <-- 2.443
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 2.443, ft3  = 0.182
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x001005d0]
                                                #; (f:lsu) ft3  <-- 0.186
                                                #; (f:fpu) ft1  <-- 2.625
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 2.625, ft4  = 0.183
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x001005d8]
                                                #; (f:lsu) ft4  <-- 0.187
                                                #; (f:fpu) ft1  <-- 2.808
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 2.808, ft5  = 0.184
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x001005e0]
                                                #; (f:lsu) ft5  <-- 0.188
                                                #; (f:fpu) ft1  <-- 2.992
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 2.992, ft2  = 0.185
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x001005e8]
                                                #; (f:lsu) ft2  <-- 0.189
                                                #; (f:fpu) ft1  <-- 3.177
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 3.177, ft3  = 0.186
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001005f0]
                                                #; (f:lsu) ft3  <-- 0.19
                                                #; (f:fpu) ft1  <-- 3.363
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 3.363, ft4  = 0.187
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x001005f8]
                                                #; (f:lsu) ft4  <-- 0.191
                                                #; (f:fpu) ft1  <-- 3.55
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 3.55, ft5  = 0.188
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100600]
                                                #; (f:lsu) ft5  <-- 0.192
                                                #; (f:fpu) ft1  <-- 3.738
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 3.738, ft2  = 0.189
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100608]
                                                #; (f:lsu) ft2  <-- 0.193
                                                #; (f:fpu) ft1  <-- 3.927
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 3.927, ft3  = 0.19
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100610]
                                                #; (f:lsu) ft3  <-- 0.194
                                                #; (f:fpu) ft1  <-- 4.117
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 4.117, ft4  = 0.191
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100618]
                                                #; (f:lsu) ft4  <-- 0.195
                                                #; (f:fpu) ft1  <-- 4.308
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 4.308, ft5  = 0.192
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100620]
                                                #; (f:lsu) ft5  <-- 0.196
                                                #; (f:fpu) ft1  <-- 4.5
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 4.5, ft2  = 0.193
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100628]
                                                #; (f:lsu) ft2  <-- 0.197
                                                #; (f:fpu) ft1  <-- 4.693
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 4.693, ft3  = 0.194
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100630]
                                                #; (f:lsu) ft3  <-- 0.198
                                                #; (f:fpu) ft1  <-- 4.887
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 4.887, ft4  = 0.195
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100638]
                                                #; (f:lsu) ft4  <-- 0.199
                                                #; (f:fpu) ft1  <-- 5.082
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 5.082, ft5  = 0.196
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100640]
                                                #; (f:lsu) ft5  <-- 0.2
                                                #; (f:fpu) ft1  <-- 5.278
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 5.278, ft2  = 0.197
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100648]
                                                #; (f:lsu) ft2  <-- 0.201
                                                #; (f:fpu) ft1  <-- 5.475
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 5.475, ft3  = 0.198
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100650]
                                                #; (f:lsu) ft3  <-- 0.202
                                                #; (f:fpu) ft1  <-- 5.673
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 5.673, ft4  = 0.199
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100658]
                                                #; (f:lsu) ft4  <-- 0.203
                                                #; (f:fpu) ft1  <-- 5.872
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 5.872, ft5  = 0.2
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100660]
                                                #; (f:lsu) ft5  <-- 0.2040000
                                                #; (f:fpu) ft1  <-- 6.072
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 0, (wrb) a4  <-- 336
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 6.072, ft2  = 0.201
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100668]
                                                #; (f:lsu) ft2  <-- 0.2050000
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 336, a2  = 1344, taken, goto 0x800006e0
                                                #; (f:fpu) ft1  <-- 6.273
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e0 add     a5, a1, a4             #; a1  = 0x001005e8, a4  = 336, (wrb) a5  <-- 0x00100738
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 6.273, ft3  = 0.202
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100670]
                                                #; (f:lsu) ft3  <-- 0.2060000
                                                #; (f:fpu) ft1  <-- 6.475
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 6.475, ft4  = 0.203
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100678]
                                                #; (f:lsu) ft4  <-- 0.2070000
                                                #; (f:fpu) ft1  <-- 6.678
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 6.678, ft5  = 0.2040000
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100680]
                                                #; (f:lsu) ft5  <-- 0.2080000
                                                #; (f:fpu) ft1  <-- 6.882
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 6.882, ft2  = 0.2050000
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100688]
                                                #; (f:lsu) ft2  <-- 0.209
                                                #; (f:fpu) ft1  <-- 7.087
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 7.087, ft3  = 0.2060000
                                                #; (f:fpu) ft1  <-- 7.293
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 7.293, ft4  = 0.2070000
                                                #; (f:fpu) ft1  <-- 7.5
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 7.5, ft5  = 0.2080000
                                                #; (f:fpu) ft1  <-- 7.708
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 7.708, ft2  = 0.209
                                                #; (f:fpu) ft1  <-- 7.917
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 7.917, ft0  = 70.1400000
                                                #; (f:fpu) ft0  <-- 78.0570000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 7.917, ft0  = 78.0570000
                                                #; (f:fpu) ft0  <-- 85.9740000
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 7.917, ft0  = 85.9740000
                                                #; (f:fpu) ft0  <-- 93.8910000
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 7.917, ft0  = 93.8910000
                                                #; (f:fpu) ft0  <-- 101.8080000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 7.917, ft0  = 101.8080000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100690]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100698], (f:lsu) ft1  <-- 0.21
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x001006a0], (f:fpu) ft0  <-- 109.7250000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x001006a8], (f:lsu) ft2  <-- 0.211
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x001006b0], (f:lsu) ft3  <-- 0.212
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.211, ft1  = 0.21, (f:lsu) ft4  <-- 0.213
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x001006b8], (f:lsu) ft5  <-- 0.214
                                                #; (f:lsu) ft2  <-- 0.215
                                                #; (f:fpu) ft1  <-- 0.421
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.421, ft3  = 0.212
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x001006c0]
                                                #; (f:lsu) ft3  <-- 0.216
                                                #; (f:fpu) ft1  <-- 0.633
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.633, ft4  = 0.213
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x001006c8]
                                                #; (f:lsu) ft4  <-- 0.217
                                                #; (f:fpu) ft1  <-- 0.846
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.846, ft5  = 0.214
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x001006d0]
                                                #; (f:lsu) ft5  <-- 0.218
                                                #; (f:fpu) ft1  <-- 1.06
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 1.06, ft2  = 0.215
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x001006d8]
                                                #; (f:lsu) ft2  <-- 0.219
                                                #; (f:fpu) ft1  <-- 1.2750000
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 1.2750000, ft3  = 0.216
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x001006e0]
                                                #; (f:lsu) ft3  <-- 0.22
                                                #; (f:fpu) ft1  <-- 1.491
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 1.491, ft4  = 0.217
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x001006e8]
                                                #; (f:lsu) ft4  <-- 0.221
                                                #; (f:fpu) ft1  <-- 1.7080000
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 1.7080000, ft5  = 0.218
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x001006f0]
                                                #; (f:lsu) ft5  <-- 0.222
                                                #; (f:fpu) ft1  <-- 1.9260000
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 1.9260000, ft2  = 0.219
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x001006f8]
                                                #; (f:lsu) ft2  <-- 0.223
                                                #; (f:fpu) ft1  <-- 2.145
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 2.145, ft3  = 0.22
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100700]
                                                #; (f:lsu) ft3  <-- 0.224
                                                #; (f:fpu) ft1  <-- 2.365
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 2.365, ft4  = 0.221
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100708]
                                                #; (f:lsu) ft4  <-- 0.225
                                                #; (f:fpu) ft1  <-- 2.5860000
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 2.5860000, ft5  = 0.222
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100710]
                                                #; (f:lsu) ft5  <-- 0.226
                                                #; (f:fpu) ft1  <-- 2.8080000
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 2.8080000, ft2  = 0.223
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100718]
                                                #; (f:lsu) ft2  <-- 0.227
                                                #; (f:fpu) ft1  <-- 3.031
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 3.031, ft3  = 0.224
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100720]
                                                #; (f:lsu) ft3  <-- 0.228
                                                #; (f:fpu) ft1  <-- 3.2550000
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 3.2550000, ft4  = 0.225
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100728]
                                                #; (f:lsu) ft4  <-- 0.229
                                                #; (f:fpu) ft1  <-- 3.4800000
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 3.4800000, ft5  = 0.226
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100730]
                                                #; (f:lsu) ft5  <-- 0.23
                                                #; (f:fpu) ft1  <-- 3.7060000
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 3.7060000, ft2  = 0.227
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100738]
                                                #; (f:lsu) ft2  <-- 0.231
                                                #; (f:fpu) ft1  <-- 3.9330000
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 3.9330000, ft3  = 0.228
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100740]
                                                #; (f:lsu) ft3  <-- 0.232
                                                #; (f:fpu) ft1  <-- 4.1610000
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 4.1610000, ft4  = 0.229
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100748]
                                                #; (f:lsu) ft4  <-- 0.233
                                                #; (f:fpu) ft1  <-- 4.3900000
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 4.3900000, ft5  = 0.23
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100750]
                                                #; (f:lsu) ft5  <-- 0.234
                                                #; (f:fpu) ft1  <-- 4.6200000
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 4.6200000, ft2  = 0.231
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100758]
                                                #; (f:lsu) ft2  <-- 0.2350000
                                                #; (f:fpu) ft1  <-- 4.8510000
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 4.8510000, ft3  = 0.232
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100760]
                                                #; (f:lsu) ft3  <-- 0.2360000
                                                #; (f:fpu) ft1  <-- 5.0830000
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 5.0830000, ft4  = 0.233
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100768]
                                                #; (f:lsu) ft4  <-- 0.2370000
                                                #; (f:fpu) ft1  <-- 5.3160000
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 5.3160000, ft5  = 0.234
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100770]
                                                #; (f:lsu) ft5  <-- 0.2380000
                                                #; (f:fpu) ft1  <-- 5.5500000
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 5.5500000, ft2  = 0.2350000
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100778]
                                                #; (f:lsu) ft2  <-- 0.2390000
                                                #; (f:fpu) ft1  <-- 5.7850000
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 5.7850000, ft3  = 0.2360000
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100780]
                                                #; (f:lsu) ft3  <-- 0.24
                                                #; (f:fpu) ft1  <-- 6.0210000
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 6.0210000, ft4  = 0.2370000
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100788]
                                                #; (f:lsu) ft4  <-- 0.241
                                                #; (f:fpu) ft1  <-- 6.2580000
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 6.2580000, ft5  = 0.2380000
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100790]
                                                #; (f:lsu) ft5  <-- 0.242
                                                #; (f:fpu) ft1  <-- 6.4960000
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 6.4960000, ft2  = 0.2390000
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100798]
                                                #; (f:lsu) ft2  <-- 0.243
                                                #; (f:fpu) ft1  <-- 6.7350000
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 6.7350000, ft3  = 0.24
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x001007a0]
                                                #; (f:lsu) ft3  <-- 0.244
                                                #; (f:fpu) ft1  <-- 6.9750000
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 6.9750000, ft4  = 0.241
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x001007a8]
                                                #; (f:lsu) ft4  <-- 0.245
                                                #; (f:fpu) ft1  <-- 7.2160000
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 7.2160000, ft5  = 0.242
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x001007b0]
                                                #; (f:lsu) ft5  <-- 0.246
                                                #; (f:fpu) ft1  <-- 7.4580000
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 336, (wrb) a4  <-- 672
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 7.4580000, ft2  = 0.243
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x001007b8]
                                                #; (f:lsu) ft2  <-- 0.247
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 672, a2  = 1344, taken, goto 0x800006e0
                                                #; (f:fpu) ft1  <-- 7.7010000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e0 add     a5, a1, a4             #; a1  = 0x001005e8, a4  = 672, (wrb) a5  <-- 0x00100888
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 7.7010000, ft3  = 0.244
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x001007c0]
                                                #; (f:lsu) ft3  <-- 0.248
                                                #; (f:fpu) ft1  <-- 7.9450000
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 7.9450000, ft4  = 0.245
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x001007c8]
                                                #; (f:lsu) ft4  <-- 0.249
                                                #; (f:fpu) ft1  <-- 8.1900000
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 8.1900000, ft5  = 0.246
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x001007d0]
                                                #; (f:lsu) ft5  <-- 0.25
                                                #; (f:fpu) ft1  <-- 8.4360000
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 8.4360000, ft2  = 0.247
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x001007d8]
                                                #; (f:lsu) ft2  <-- 0.251
                                                #; (f:fpu) ft1  <-- 8.6830000
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 8.6830000, ft3  = 0.248
                                                #; (f:fpu) ft1  <-- 8.9310000
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 8.9310000, ft4  = 0.249
                                                #; (f:fpu) ft1  <-- 9.1800000
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 9.1800000, ft5  = 0.25
                                                #; (f:fpu) ft1  <-- 9.4300000
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 9.4300000, ft2  = 0.251
                                                #; (f:fpu) ft1  <-- 9.6810000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 9.6810000, ft0  = 109.7250000
                                                #; (f:fpu) ft0  <-- 119.4060000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 9.6810000, ft0  = 119.4060000
                                                #; (f:fpu) ft0  <-- 129.0870000
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 9.6810000, ft0  = 129.0870000
                                                #; (f:fpu) ft0  <-- 138.7680000
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 9.6810000, ft0  = 138.7680000
                                                #; (f:fpu) ft0  <-- 148.4490000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 9.6810000, ft0  = 148.4490000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x001007e0]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x001007e8], (f:lsu) ft1  <-- 0.252
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x001007f0], (f:fpu) ft0  <-- 158.1300000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x001007f8], (f:lsu) ft2  <-- 0.253
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100800], (f:lsu) ft3  <-- 0.254
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.253, ft1  = 0.252, (f:lsu) ft4  <-- 0.255
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100808], (f:lsu) ft5  <-- 0.256
                                                #; (f:lsu) ft2  <-- 0.257
                                                #; (f:fpu) ft1  <-- 0.505
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.505, ft3  = 0.254
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100810]
                                                #; (f:lsu) ft3  <-- 0.258
                                                #; (f:fpu) ft1  <-- 0.759
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.759, ft4  = 0.255
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100818]
                                                #; (f:lsu) ft4  <-- 0.259
                                                #; (f:fpu) ft1  <-- 1.014
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.014, ft5  = 0.256
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100820]
                                                #; (f:lsu) ft5  <-- 0.26
                                                #; (f:fpu) ft1  <-- 1.27
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 1.27, ft2  = 0.257
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100828]
                                                #; (f:lsu) ft2  <-- 0.261
                                                #; (f:fpu) ft1  <-- 1.5270000
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 1.5270000, ft3  = 0.258
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100830]
                                                #; (f:lsu) ft3  <-- 0.262
                                                #; (f:fpu) ft1  <-- 1.7850000
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 1.7850000, ft4  = 0.259
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100838]
                                                #; (f:lsu) ft4  <-- 0.263
                                                #; (f:fpu) ft1  <-- 2.044
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 2.044, ft5  = 0.26
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100840]
                                                #; (f:lsu) ft5  <-- 0.264
                                                #; (f:fpu) ft1  <-- 2.3040000
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 2.3040000, ft2  = 0.261
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100848]
                                                #; (f:lsu) ft2  <-- 0.265
                                                #; (f:fpu) ft1  <-- 2.5650000
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 2.5650000, ft3  = 0.262
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100850]
                                                #; (f:lsu) ft3  <-- 0.266
                                                #; (f:fpu) ft1  <-- 2.8270000
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 2.8270000, ft4  = 0.263
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100858]
                                                #; (f:lsu) ft4  <-- 0.267
                                                #; (f:fpu) ft1  <-- 3.0900000
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 3.0900000, ft5  = 0.264
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100860]
                                                #; (f:lsu) ft5  <-- 0.268
                                                #; (f:fpu) ft1  <-- 3.354
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 3.354, ft2  = 0.265
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100868]
                                                #; (f:lsu) ft2  <-- 0.269
                                                #; (f:fpu) ft1  <-- 3.619
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 3.619, ft3  = 0.266
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100870]
                                                #; (f:lsu) ft3  <-- 0.27
                                                #; (f:fpu) ft1  <-- 3.8850000
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 3.8850000, ft4  = 0.267
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100878]
                                                #; (f:lsu) ft4  <-- 0.271
                                                #; (f:fpu) ft1  <-- 4.152
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 4.152, ft5  = 0.268
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100880]
                                                #; (f:lsu) ft5  <-- 0.272
                                                #; (f:fpu) ft1  <-- 4.42
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 4.42, ft2  = 0.269
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100888]
                                                #; (f:lsu) ft2  <-- 0.273
                                                #; (f:fpu) ft1  <-- 4.689
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 4.689, ft3  = 0.27
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100890]
                                                #; (f:lsu) ft3  <-- 0.274
                                                #; (f:fpu) ft1  <-- 4.959
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 4.959, ft4  = 0.271
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100898]
                                                #; (f:lsu) ft4  <-- 0.275
                                                #; (f:fpu) ft1  <-- 5.2300000
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 5.2300000, ft5  = 0.272
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x001008a0]
                                                #; (f:lsu) ft5  <-- 0.276
                                                #; (f:fpu) ft1  <-- 5.502
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 5.502, ft2  = 0.273
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x001008a8]
                                                #; (f:lsu) ft2  <-- 0.277
                                                #; (f:fpu) ft1  <-- 5.7750000
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 5.7750000, ft3  = 0.274
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x001008b0]
                                                #; (f:lsu) ft3  <-- 0.278
                                                #; (f:fpu) ft1  <-- 6.0490000
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 6.0490000, ft4  = 0.275
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x001008b8]
                                                #; (f:lsu) ft4  <-- 0.279
                                                #; (f:fpu) ft1  <-- 6.324
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 6.324, ft5  = 0.276
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x001008c0]
                                                #; (f:lsu) ft5  <-- 0.28
                                                #; (f:fpu) ft1  <-- 6.6
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 6.6, ft2  = 0.277
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x001008c8]
                                                #; (f:lsu) ft2  <-- 0.281
                                                #; (f:fpu) ft1  <-- 6.877
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 6.877, ft3  = 0.278
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x001008d0]
                                                #; (f:lsu) ft3  <-- 0.2820000
                                                #; (f:fpu) ft1  <-- 7.1550000
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 7.1550000, ft4  = 0.279
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x001008d8]
                                                #; (f:lsu) ft4  <-- 0.2830000
                                                #; (f:fpu) ft1  <-- 7.4340000
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 7.4340000, ft5  = 0.28
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x001008e0]
                                                #; (f:lsu) ft5  <-- 0.2840000
                                                #; (f:fpu) ft1  <-- 7.7140000
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 7.7140000, ft2  = 0.281
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x001008e8]
                                                #; (f:lsu) ft2  <-- 0.2850000
                                                #; (f:fpu) ft1  <-- 7.9950000
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 7.9950000, ft3  = 0.2820000
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x001008f0]
                                                #; (f:lsu) ft3  <-- 0.2860000
                                                #; (f:fpu) ft1  <-- 8.277
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 8.277, ft4  = 0.2830000
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x001008f8]
                                                #; (f:lsu) ft4  <-- 0.2870000
                                                #; (f:fpu) ft1  <-- 8.5600000
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 8.5600000, ft5  = 0.2840000
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100900]
                                                #; (f:lsu) ft5  <-- 0.2880000
                                                #; (f:fpu) ft1  <-- 8.844
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 672, (wrb) a4  <-- 1008
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 8.844, ft2  = 0.2850000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100908]
                                                #; (f:lsu) ft2  <-- 0.289
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 1008, a2  = 1344, taken, goto 0x800006e0
                                                #; (f:fpu) ft1  <-- 9.129
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e0 add     a5, a1, a4             #; a1  = 0x001005e8, a4  = 1008, (wrb) a5  <-- 0x001009d8
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 9.129, ft3  = 0.2860000
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100910]
                                                #; (f:lsu) ft3  <-- 0.29
                                                #; (f:fpu) ft1  <-- 9.415
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 9.415, ft4  = 0.2870000
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100918]
                                                #; (f:lsu) ft4  <-- 0.291
                                                #; (f:fpu) ft1  <-- 9.702
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 9.702, ft5  = 0.2880000
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100920]
                                                #; (f:lsu) ft5  <-- 0.292
                                                #; (f:fpu) ft1  <-- 9.99
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 9.99, ft2  = 0.289
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100928]
                                                #; (f:lsu) ft2  <-- 0.293
                                                #; (f:fpu) ft1  <-- 10.279
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 10.279, ft3  = 0.29
                                                #; (f:fpu) ft1  <-- 10.5690000
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 10.5690000, ft4  = 0.291
                                                #; (f:fpu) ft1  <-- 10.86
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 10.86, ft5  = 0.292
                                                #; (f:fpu) ft1  <-- 11.152
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 11.152, ft2  = 0.293
                                                #; (f:fpu) ft1  <-- 11.4450000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 11.4450000, ft0  = 158.1300000
                                                #; (f:fpu) ft0  <-- 169.5750000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 11.4450000, ft0  = 169.5750000
                                                #; (f:fpu) ft0  <-- 181.0200000
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 11.4450000, ft0  = 181.0200000
                                                #; (f:fpu) ft0  <-- 192.4650000
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 11.4450000, ft0  = 192.4650000
                                                #; (f:fpu) ft0  <-- 203.9100000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 11.4450000, ft0  = 203.9100000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100930]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100938], (f:lsu) ft1  <-- 0.294
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100940], (f:fpu) ft0  <-- 215.3550000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100948], (f:lsu) ft2  <-- 0.295
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100950], (f:lsu) ft3  <-- 0.296
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.295, ft1  = 0.294, (f:lsu) ft4  <-- 0.297
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100958], (f:lsu) ft5  <-- 0.298
                                                #; (f:lsu) ft2  <-- 0.299
                                                #; (f:fpu) ft1  <-- 0.589
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.589, ft3  = 0.296
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100960]
                                                #; (f:lsu) ft3  <-- 0.3
                                                #; (f:fpu) ft1  <-- 0.885
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.885, ft4  = 0.297
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100968]
                                                #; (f:lsu) ft4  <-- 0.301
                                                #; (f:fpu) ft1  <-- 1.182
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.182, ft5  = 0.298
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100970]
                                                #; (f:lsu) ft5  <-- 0.302
                                                #; (f:fpu) ft1  <-- 1.48
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 1.48, ft2  = 0.299
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100978]
                                                #; (f:lsu) ft2  <-- 0.303
                                                #; (f:fpu) ft1  <-- 1.779
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 1.779, ft3  = 0.3
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100980]
                                                #; (f:lsu) ft3  <-- 0.304
                                                #; (f:fpu) ft1  <-- 2.0790000
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 2.0790000, ft4  = 0.301
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100988]
                                                #; (f:lsu) ft4  <-- 0.305
                                                #; (f:fpu) ft1  <-- 2.38
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 2.38, ft5  = 0.302
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100990]
                                                #; (f:lsu) ft5  <-- 0.306
                                                #; (f:fpu) ft1  <-- 2.682
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 2.682, ft2  = 0.303
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100998]
                                                #; (f:lsu) ft2  <-- 0.307
                                                #; (f:fpu) ft1  <-- 2.985
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 2.985, ft3  = 0.304
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x001009a0]
                                                #; (f:lsu) ft3  <-- 0.308
                                                #; (f:fpu) ft1  <-- 3.2890000
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 3.2890000, ft4  = 0.305
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x001009a8]
                                                #; (f:lsu) ft4  <-- 0.309
                                                #; (f:fpu) ft1  <-- 3.594
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 3.594, ft5  = 0.306
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x001009b0]
                                                #; (f:lsu) ft5  <-- 0.31
                                                #; (f:fpu) ft1  <-- 3.9
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 3.9, ft2  = 0.307
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x001009b8]
                                                #; (f:lsu) ft2  <-- 0.311
                                                #; (f:fpu) ft1  <-- 4.207
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 4.207, ft3  = 0.308
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x001009c0]
                                                #; (f:lsu) ft3  <-- 0.312
                                                #; (f:fpu) ft1  <-- 4.515
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 4.515, ft4  = 0.309
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x001009c8]
                                                #; (f:lsu) ft4  <-- 0.313
                                                #; (f:fpu) ft1  <-- 4.824
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 4.824, ft5  = 0.31
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x001009d0]
                                                #; (f:lsu) ft5  <-- 0.314
                                                #; (f:fpu) ft1  <-- 5.1340000
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 5.1340000, ft2  = 0.311
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x001009d8]
                                                #; (f:lsu) ft2  <-- 0.315
                                                #; (f:fpu) ft1  <-- 5.4450000
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 5.4450000, ft3  = 0.312
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001009e0]
                                                #; (f:lsu) ft3  <-- 0.316
                                                #; (f:fpu) ft1  <-- 5.757
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 5.757, ft4  = 0.313
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x001009e8]
                                                #; (f:lsu) ft4  <-- 0.317
                                                #; (f:fpu) ft1  <-- 6.0700000
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 6.0700000, ft5  = 0.314
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x001009f0]
                                                #; (f:lsu) ft5  <-- 0.318
                                                #; (f:fpu) ft1  <-- 6.3840000
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 6.3840000, ft2  = 0.315
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x001009f8]
                                                #; (f:lsu) ft2  <-- 0.319
                                                #; (f:fpu) ft1  <-- 6.699
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 6.699, ft3  = 0.316
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100a00]
                                                #; (f:lsu) ft3  <-- 0.32
                                                #; (f:fpu) ft1  <-- 7.015
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 7.015, ft4  = 0.317
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100a08]
                                                #; (f:lsu) ft4  <-- 0.321
                                                #; (f:fpu) ft1  <-- 7.332
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 7.332, ft5  = 0.318
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100a10]
                                                #; (f:lsu) ft5  <-- 0.322
                                                #; (f:fpu) ft1  <-- 7.6500000
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 7.6500000, ft2  = 0.319
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100a18]
                                                #; (f:lsu) ft2  <-- 0.323
                                                #; (f:fpu) ft1  <-- 7.9690000
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 7.9690000, ft3  = 0.32
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100a20]
                                                #; (f:lsu) ft3  <-- 0.324
                                                #; (f:fpu) ft1  <-- 8.289
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 8.289, ft4  = 0.321
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100a28]
                                                #; (f:lsu) ft4  <-- 0.325
                                                #; (f:fpu) ft1  <-- 8.61
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 8.61, ft5  = 0.322
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100a30]
                                                #; (f:lsu) ft5  <-- 0.326
                                                #; (f:fpu) ft1  <-- 8.9320000
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 8.9320000, ft2  = 0.323
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100a38]
                                                #; (f:lsu) ft2  <-- 0.327
                                                #; (f:fpu) ft1  <-- 9.2550000
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 9.2550000, ft3  = 0.324
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100a40]
                                                #; (f:lsu) ft3  <-- 0.328
                                                #; (f:fpu) ft1  <-- 9.5790000
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 9.5790000, ft4  = 0.325
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100a48]
                                                #; (f:lsu) ft4  <-- 0.329
                                                #; (f:fpu) ft1  <-- 9.9040000
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 9.9040000, ft5  = 0.326
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100a50]
                                                #; (f:lsu) ft5  <-- 0.33
                                                #; (f:fpu) ft1  <-- 10.2300000
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 1008, (wrb) a4  <-- 1344
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 10.2300000, ft2  = 0.327
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100a58]
                                                #; (f:lsu) ft2  <-- 0.331
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 1344, a2  = 1344, not taken
                                                #; (f:fpu) ft1  <-- 10.5570000
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x8000084c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 10.5570000, ft3  = 0.328
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100a60]
                                                #; (f:lsu) ft3  <-- 0.332
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x80000850 addi    a1, a1, 1344           #; a1  = 0x001005e8, (wrb) a1  <-- 0x00100b28
                                                #; (f:fpu) ft1  <-- 10.8850000
      0x80000854 bne     a0, a3, pc - 376       #; a0  = 2, a3  = 3, taken, goto 0x800006dc
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 10.8850000, ft4  = 0.329
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100a68]
      0x800006dc li      a4, 0                  #; (wrb) a4  <-- 0
                                                #; (f:lsu) ft4  <-- 0.333
      0x800006e0 add     a5, a1, a4             #; a1  = 0x00100b28, a4  = 0, (wrb) a5  <-- 0x00100b28
                                                #; (f:fpu) ft1  <-- 11.2140000
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 11.2140000, ft5  = 0.33
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100a70]
                                                #; (f:lsu) ft5  <-- 0.334
                                                #; (f:fpu) ft1  <-- 11.5440000
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 11.5440000, ft2  = 0.331
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100a78]
                                                #; (f:lsu) ft2  <-- 0.335
                                                #; (f:fpu) ft1  <-- 11.8750000
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 11.8750000, ft3  = 0.332
                                                #; (f:fpu) ft1  <-- 12.2070000
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 12.2070000, ft4  = 0.333
                                                #; (f:fpu) ft1  <-- 12.54
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 12.54, ft5  = 0.334
                                                #; (f:fpu) ft1  <-- 12.8740000
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 12.8740000, ft2  = 0.335
                                                #; (f:fpu) ft1  <-- 13.209
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 13.209, ft0  = 215.3550000
                                                #; (f:fpu) ft0  <-- 228.5640000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 13.209, ft0  = 228.5640000
                                                #; (f:fpu) ft0  <-- 241.7730000
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 13.209, ft0  = 241.7730000
                                                #; (f:fpu) ft0  <-- 254.9820000
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 13.209, ft0  = 254.9820000
                                                #; (f:fpu) ft0  <-- 268.1910000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 13.209, ft0  = 268.1910000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100a80]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100a88], (f:lsu) ft1  <-- 0.336
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100a90], (f:fpu) ft0  <-- 281.4000000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100a98], (f:lsu) ft2  <-- 0.337
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100aa0], (f:lsu) ft3  <-- 0.338
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.337, ft1  = 0.336, (f:lsu) ft4  <-- 0.339
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100aa8], (f:lsu) ft5  <-- 0.34
                                                #; (f:lsu) ft2  <-- 0.341
                                                #; (f:fpu) ft1  <-- 0.673
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.673, ft3  = 0.338
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100ab0]
                                                #; (f:lsu) ft3  <-- 0.342
                                                #; (f:fpu) ft1  <-- 1.0110000
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 1.0110000, ft4  = 0.339
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100ab8]
                                                #; (f:lsu) ft4  <-- 0.343
                                                #; (f:fpu) ft1  <-- 1.35
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.35, ft5  = 0.34
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100ac0]
                                                #; (f:lsu) ft5  <-- 0.3440000
                                                #; (f:fpu) ft1  <-- 1.6900000
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 1.6900000, ft2  = 0.341
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100ac8]
                                                #; (f:lsu) ft2  <-- 0.3450000
                                                #; (f:fpu) ft1  <-- 2.031
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 2.031, ft3  = 0.342
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100ad0]
                                                #; (f:lsu) ft3  <-- 0.3460000
                                                #; (f:fpu) ft1  <-- 2.373
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 2.373, ft4  = 0.343
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100ad8]
                                                #; (f:lsu) ft4  <-- 0.3470000
                                                #; (f:fpu) ft1  <-- 2.716
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 2.716, ft5  = 0.3440000
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100ae0]
                                                #; (f:lsu) ft5  <-- 0.3480000
                                                #; (f:fpu) ft1  <-- 3.06
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 3.06, ft2  = 0.3450000
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100ae8]
                                                #; (f:lsu) ft2  <-- 0.3490000
                                                #; (f:fpu) ft1  <-- 3.4050000
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 3.4050000, ft3  = 0.3460000
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100af0]
                                                #; (f:lsu) ft3  <-- 0.3500000
                                                #; (f:fpu) ft1  <-- 3.7510000
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 3.7510000, ft4  = 0.3470000
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100af8]
                                                #; (f:lsu) ft4  <-- 0.3510000
                                                #; (f:fpu) ft1  <-- 4.0980000
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 4.0980000, ft5  = 0.3480000
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100b00]
                                                #; (f:lsu) ft5  <-- 0.352
                                                #; (f:fpu) ft1  <-- 4.4460000
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 4.4460000, ft2  = 0.3490000
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100b08]
                                                #; (f:lsu) ft2  <-- 0.353
                                                #; (f:fpu) ft1  <-- 4.7950000
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 4.7950000, ft3  = 0.3500000
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100b10]
                                                #; (f:lsu) ft3  <-- 0.354
                                                #; (f:fpu) ft1  <-- 5.1450000
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 5.1450000, ft4  = 0.3510000
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100b18]
                                                #; (f:lsu) ft4  <-- 0.355
                                                #; (f:fpu) ft1  <-- 5.496
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 5.496, ft5  = 0.352
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100b20]
                                                #; (f:lsu) ft5  <-- 0.356
                                                #; (f:fpu) ft1  <-- 5.8480000
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 5.8480000, ft2  = 0.353
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100b28]
                                                #; (f:lsu) ft2  <-- 0.357
                                                #; (f:fpu) ft1  <-- 6.2010000
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 6.2010000, ft3  = 0.354
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100b30]
                                                #; (f:lsu) ft3  <-- 0.358
                                                #; (f:fpu) ft1  <-- 6.5550000
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 6.5550000, ft4  = 0.355
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100b38]
                                                #; (f:lsu) ft4  <-- 0.359
                                                #; (f:fpu) ft1  <-- 6.91
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 6.91, ft5  = 0.356
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100b40]
                                                #; (f:lsu) ft5  <-- 0.36
                                                #; (f:fpu) ft1  <-- 7.266
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 7.266, ft2  = 0.357
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100b48]
                                                #; (f:lsu) ft2  <-- 0.361
                                                #; (f:fpu) ft1  <-- 7.623
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 7.623, ft3  = 0.358
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100b50]
                                                #; (f:lsu) ft3  <-- 0.362
                                                #; (f:fpu) ft1  <-- 7.981
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 7.981, ft4  = 0.359
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100b58]
                                                #; (f:lsu) ft4  <-- 0.363
                                                #; (f:fpu) ft1  <-- 8.34
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 8.34, ft5  = 0.36
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100b60]
                                                #; (f:lsu) ft5  <-- 0.364
                                                #; (f:fpu) ft1  <-- 8.7
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 8.7, ft2  = 0.361
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100b68]
                                                #; (f:lsu) ft2  <-- 0.365
                                                #; (f:fpu) ft1  <-- 9.061
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 9.061, ft3  = 0.362
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100b70]
                                                #; (f:lsu) ft3  <-- 0.366
                                                #; (f:fpu) ft1  <-- 9.423
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 9.423, ft4  = 0.363
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100b78]
                                                #; (f:lsu) ft4  <-- 0.367
                                                #; (f:fpu) ft1  <-- 9.786
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 9.786, ft5  = 0.364
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100b80]
                                                #; (f:lsu) ft5  <-- 0.368
                                                #; (f:fpu) ft1  <-- 10.15
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 10.15, ft2  = 0.365
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100b88]
                                                #; (f:lsu) ft2  <-- 0.369
                                                #; (f:fpu) ft1  <-- 10.515
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 10.515, ft3  = 0.366
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100b90]
                                                #; (f:lsu) ft3  <-- 0.37
                                                #; (f:fpu) ft1  <-- 10.881
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 10.881, ft4  = 0.367
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100b98]
                                                #; (f:lsu) ft4  <-- 0.371
                                                #; (f:fpu) ft1  <-- 11.2480000
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 11.2480000, ft5  = 0.368
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100ba0]
                                                #; (f:lsu) ft5  <-- 0.372
                                                #; (f:fpu) ft1  <-- 11.6160000
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 0, (wrb) a4  <-- 336
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 11.6160000, ft2  = 0.369
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100ba8]
                                                #; (f:lsu) ft2  <-- 0.373
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 336, a2  = 1344, taken, goto 0x800006e0
                                                #; (f:fpu) ft1  <-- 11.9850000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e0 add     a5, a1, a4             #; a1  = 0x00100b28, a4  = 336, (wrb) a5  <-- 0x00100c78
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 11.9850000, ft3  = 0.37
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100bb0]
                                                #; (f:lsu) ft3  <-- 0.374
                                                #; (f:fpu) ft1  <-- 12.355
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 12.355, ft4  = 0.371
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100bb8]
                                                #; (f:lsu) ft4  <-- 0.375
                                                #; (f:fpu) ft1  <-- 12.726
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 12.726, ft5  = 0.372
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100bc0]
                                                #; (f:lsu) ft5  <-- 0.376
                                                #; (f:fpu) ft1  <-- 13.098
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 13.098, ft2  = 0.373
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100bc8]
                                                #; (f:lsu) ft2  <-- 0.377
                                                #; (f:fpu) ft1  <-- 13.471
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 13.471, ft3  = 0.374
                                                #; (f:fpu) ft1  <-- 13.845
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 13.845, ft4  = 0.375
                                                #; (f:fpu) ft1  <-- 14.22
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 14.22, ft5  = 0.376
                                                #; (f:fpu) ft1  <-- 14.596
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 14.596, ft2  = 0.377
                                                #; (f:fpu) ft1  <-- 14.973
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 14.973, ft0  = 281.4000000
                                                #; (f:fpu) ft0  <-- 296.3730000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 14.973, ft0  = 296.3730000
                                                #; (f:fpu) ft0  <-- 311.3460000
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 14.973, ft0  = 311.3460000
                                                #; (f:fpu) ft0  <-- 326.3190000
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 14.973, ft0  = 326.3190000
                                                #; (f:fpu) ft0  <-- 341.2920000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 14.973, ft0  = 341.2920000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100bd0]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100bd8], (f:lsu) ft1  <-- 0.378
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100be0], (f:fpu) ft0  <-- 356.2650000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100be8], (f:lsu) ft2  <-- 0.379
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100bf0], (f:lsu) ft3  <-- 0.38
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.379, ft1  = 0.378, (f:lsu) ft4  <-- 0.381
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100bf8], (f:lsu) ft5  <-- 0.382
                                                #; (f:lsu) ft2  <-- 0.383
                                                #; (f:fpu) ft1  <-- 0.757
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.757, ft3  = 0.38
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100c00]
                                                #; (f:lsu) ft3  <-- 0.384
                                                #; (f:fpu) ft1  <-- 1.137
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 1.137, ft4  = 0.381
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100c08]
                                                #; (f:lsu) ft4  <-- 0.385
                                                #; (f:fpu) ft1  <-- 1.518
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.518, ft5  = 0.382
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100c10]
                                                #; (f:lsu) ft5  <-- 0.386
                                                #; (f:fpu) ft1  <-- 1.9
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 1.9, ft2  = 0.383
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100c18]
                                                #; (f:lsu) ft2  <-- 0.387
                                                #; (f:fpu) ft1  <-- 2.283
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 2.283, ft3  = 0.384
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100c20]
                                                #; (f:lsu) ft3  <-- 0.388
                                                #; (f:fpu) ft1  <-- 2.667
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 2.667, ft4  = 0.385
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100c28]
                                                #; (f:lsu) ft4  <-- 0.389
                                                #; (f:fpu) ft1  <-- 3.0520000
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 3.0520000, ft5  = 0.386
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100c30]
                                                #; (f:lsu) ft5  <-- 0.39
                                                #; (f:fpu) ft1  <-- 3.4380000
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 3.4380000, ft2  = 0.387
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100c38]
                                                #; (f:lsu) ft2  <-- 0.391
                                                #; (f:fpu) ft1  <-- 3.8250000
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 3.8250000, ft3  = 0.388
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100c40]
                                                #; (f:lsu) ft3  <-- 0.392
                                                #; (f:fpu) ft1  <-- 4.213
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 4.213, ft4  = 0.389
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100c48]
                                                #; (f:lsu) ft4  <-- 0.393
                                                #; (f:fpu) ft1  <-- 4.602
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 4.602, ft5  = 0.39
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100c50]
                                                #; (f:lsu) ft5  <-- 0.394
                                                #; (f:fpu) ft1  <-- 4.992
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 4.992, ft2  = 0.391
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100c58]
                                                #; (f:lsu) ft2  <-- 0.395
                                                #; (f:fpu) ft1  <-- 5.383
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 5.383, ft3  = 0.392
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100c60]
                                                #; (f:lsu) ft3  <-- 0.396
                                                #; (f:fpu) ft1  <-- 5.775
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 5.775, ft4  = 0.393
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100c68]
                                                #; (f:lsu) ft4  <-- 0.397
                                                #; (f:fpu) ft1  <-- 6.168
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 6.168, ft5  = 0.394
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100c70]
                                                #; (f:lsu) ft5  <-- 0.398
                                                #; (f:fpu) ft1  <-- 6.562
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 6.562, ft2  = 0.395
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100c78]
                                                #; (f:lsu) ft2  <-- 0.399
                                                #; (f:fpu) ft1  <-- 6.9570000
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 6.9570000, ft3  = 0.396
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100c80]
                                                #; (f:lsu) ft3  <-- 0.4
                                                #; (f:fpu) ft1  <-- 7.3530000
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 7.3530000, ft4  = 0.397
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100c88]
                                                #; (f:lsu) ft4  <-- 0.401
                                                #; (f:fpu) ft1  <-- 7.7500000
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 7.7500000, ft5  = 0.398
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100c90]
                                                #; (f:lsu) ft5  <-- 0.402
                                                #; (f:fpu) ft1  <-- 8.1480000
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 8.1480000, ft2  = 0.399
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100c98]
                                                #; (f:lsu) ft2  <-- 0.403
                                                #; (f:fpu) ft1  <-- 8.547
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 8.547, ft3  = 0.4
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100ca0]
                                                #; (f:lsu) ft3  <-- 0.404
                                                #; (f:fpu) ft1  <-- 8.9470000
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 8.9470000, ft4  = 0.401
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100ca8]
                                                #; (f:lsu) ft4  <-- 0.405
                                                #; (f:fpu) ft1  <-- 9.348
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 9.348, ft5  = 0.402
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100cb0]
                                                #; (f:lsu) ft5  <-- 0.406
                                                #; (f:fpu) ft1  <-- 9.75
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 9.75, ft2  = 0.403
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100cb8]
                                                #; (f:lsu) ft2  <-- 0.4070000
                                                #; (f:fpu) ft1  <-- 10.153
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 10.153, ft3  = 0.404
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100cc0]
                                                #; (f:lsu) ft3  <-- 0.4080000
                                                #; (f:fpu) ft1  <-- 10.557
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 10.557, ft4  = 0.405
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100cc8]
                                                #; (f:lsu) ft4  <-- 0.4090000
                                                #; (f:fpu) ft1  <-- 10.962
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 10.962, ft5  = 0.406
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100cd0]
                                                #; (f:lsu) ft5  <-- 0.4100000
                                                #; (f:fpu) ft1  <-- 11.368
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 11.368, ft2  = 0.4070000
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100cd8]
                                                #; (f:lsu) ft2  <-- 0.4110000
                                                #; (f:fpu) ft1  <-- 11.775
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 11.775, ft3  = 0.4080000
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100ce0]
                                                #; (f:lsu) ft3  <-- 0.4120000
                                                #; (f:fpu) ft1  <-- 12.183
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 12.183, ft4  = 0.4090000
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100ce8]
                                                #; (f:lsu) ft4  <-- 0.4130000
                                                #; (f:fpu) ft1  <-- 12.592
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 12.592, ft5  = 0.4100000
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100cf0]
                                                #; (f:lsu) ft5  <-- 0.4140000
                                                #; (f:fpu) ft1  <-- 13.002
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 336, (wrb) a4  <-- 672
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 13.002, ft2  = 0.4110000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100cf8]
                                                #; (f:lsu) ft2  <-- 0.4150000
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 672, a2  = 1344, taken, goto 0x800006e0
                                                #; (f:fpu) ft1  <-- 13.413
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e0 add     a5, a1, a4             #; a1  = 0x00100b28, a4  = 672, (wrb) a5  <-- 0x00100dc8
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 13.413, ft3  = 0.4120000
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100d00]
                                                #; (f:lsu) ft3  <-- 0.4160000
                                                #; (f:fpu) ft1  <-- 13.8250000
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 13.8250000, ft4  = 0.4130000
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100d08]
                                                #; (f:lsu) ft4  <-- 0.417
                                                #; (f:fpu) ft1  <-- 14.2380000
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 14.2380000, ft5  = 0.4140000
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100d10]
                                                #; (f:lsu) ft5  <-- 0.418
                                                #; (f:fpu) ft1  <-- 14.6520000
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 14.6520000, ft2  = 0.4150000
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100d18]
                                                #; (f:lsu) ft2  <-- 0.419
                                                #; (f:fpu) ft1  <-- 15.067
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 15.067, ft3  = 0.4160000
                                                #; (f:fpu) ft1  <-- 15.483
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 15.483, ft4  = 0.417
                                                #; (f:fpu) ft1  <-- 15.9
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 15.9, ft5  = 0.418
                                                #; (f:fpu) ft1  <-- 16.318
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 16.318, ft2  = 0.419
                                                #; (f:fpu) ft1  <-- 16.7370000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 16.7370000, ft0  = 356.2650000
                                                #; (f:fpu) ft0  <-- 373.0020000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 16.7370000, ft0  = 373.0020000
                                                #; (f:fpu) ft0  <-- 389.7390000
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 16.7370000, ft0  = 389.7390000
                                                #; (f:fpu) ft0  <-- 406.4760000
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 16.7370000, ft0  = 406.4760000
                                                #; (f:fpu) ft0  <-- 423.2130000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 16.7370000, ft0  = 423.2130000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100d20]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100d28], (f:lsu) ft1  <-- 0.42
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100d30], (f:fpu) ft0  <-- 439.9500000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100d38], (f:lsu) ft2  <-- 0.421
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100d40], (f:lsu) ft3  <-- 0.422
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.421, ft1  = 0.42, (f:lsu) ft4  <-- 0.423
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100d48], (f:lsu) ft5  <-- 0.424
                                                #; (f:lsu) ft2  <-- 0.425
                                                #; (f:fpu) ft1  <-- 0.841
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.841, ft3  = 0.422
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100d50]
                                                #; (f:lsu) ft3  <-- 0.426
                                                #; (f:fpu) ft1  <-- 1.263
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 1.263, ft4  = 0.423
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100d58]
                                                #; (f:lsu) ft4  <-- 0.427
                                                #; (f:fpu) ft1  <-- 1.686
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.686, ft5  = 0.424
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100d60]
                                                #; (f:lsu) ft5  <-- 0.428
                                                #; (f:fpu) ft1  <-- 2.11
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 2.11, ft2  = 0.425
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100d68]
                                                #; (f:lsu) ft2  <-- 0.429
                                                #; (f:fpu) ft1  <-- 2.5350000
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 2.5350000, ft3  = 0.426
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100d70]
                                                #; (f:lsu) ft3  <-- 0.43
                                                #; (f:fpu) ft1  <-- 2.961
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 2.961, ft4  = 0.427
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100d78]
                                                #; (f:lsu) ft4  <-- 0.431
                                                #; (f:fpu) ft1  <-- 3.388
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 3.388, ft5  = 0.428
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100d80]
                                                #; (f:lsu) ft5  <-- 0.432
                                                #; (f:fpu) ft1  <-- 3.816
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 3.816, ft2  = 0.429
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100d88]
                                                #; (f:lsu) ft2  <-- 0.433
                                                #; (f:fpu) ft1  <-- 4.245
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 4.245, ft3  = 0.43
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100d90]
                                                #; (f:lsu) ft3  <-- 0.434
                                                #; (f:fpu) ft1  <-- 4.675
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 4.675, ft4  = 0.431
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100d98]
                                                #; (f:lsu) ft4  <-- 0.435
                                                #; (f:fpu) ft1  <-- 5.106
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 5.106, ft5  = 0.432
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100da0]
                                                #; (f:lsu) ft5  <-- 0.436
                                                #; (f:fpu) ft1  <-- 5.538
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 5.538, ft2  = 0.433
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100da8]
                                                #; (f:lsu) ft2  <-- 0.437
                                                #; (f:fpu) ft1  <-- 5.971
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 5.971, ft3  = 0.434
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100db0]
                                                #; (f:lsu) ft3  <-- 0.438
                                                #; (f:fpu) ft1  <-- 6.405
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 6.405, ft4  = 0.435
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100db8]
                                                #; (f:lsu) ft4  <-- 0.439
                                                #; (f:fpu) ft1  <-- 6.84
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 6.84, ft5  = 0.436
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100dc0]
                                                #; (f:lsu) ft5  <-- 0.44
                                                #; (f:fpu) ft1  <-- 7.276
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 7.276, ft2  = 0.437
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100dc8]
                                                #; (f:lsu) ft2  <-- 0.441
                                                #; (f:fpu) ft1  <-- 7.713
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 7.713, ft3  = 0.438
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100dd0]
                                                #; (f:lsu) ft3  <-- 0.442
                                                #; (f:fpu) ft1  <-- 8.151
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 8.151, ft4  = 0.439
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100dd8]
                                                #; (f:lsu) ft4  <-- 0.443
                                                #; (f:fpu) ft1  <-- 8.59
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 8.59, ft5  = 0.44
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100de0]
                                                #; (f:lsu) ft5  <-- 0.444
                                                #; (f:fpu) ft1  <-- 9.03
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 9.03, ft2  = 0.441
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100de8]
                                                #; (f:lsu) ft2  <-- 0.445
                                                #; (f:fpu) ft1  <-- 9.471
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 9.471, ft3  = 0.442
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100df0]
                                                #; (f:lsu) ft3  <-- 0.446
                                                #; (f:fpu) ft1  <-- 9.913
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 9.913, ft4  = 0.443
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100df8]
                                                #; (f:lsu) ft4  <-- 0.447
                                                #; (f:fpu) ft1  <-- 10.356
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 10.356, ft5  = 0.444
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100e00]
                                                #; (f:lsu) ft5  <-- 0.448
                                                #; (f:fpu) ft1  <-- 10.8
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 10.8, ft2  = 0.445
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100e08]
                                                #; (f:lsu) ft2  <-- 0.449
                                                #; (f:fpu) ft1  <-- 11.2450000
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 11.2450000, ft3  = 0.446
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100e10]
                                                #; (f:lsu) ft3  <-- 0.45
                                                #; (f:fpu) ft1  <-- 11.691
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 11.691, ft4  = 0.447
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100e18]
                                                #; (f:lsu) ft4  <-- 0.451
                                                #; (f:fpu) ft1  <-- 12.138
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 12.138, ft5  = 0.448
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100e20]
                                                #; (f:lsu) ft5  <-- 0.452
                                                #; (f:fpu) ft1  <-- 12.586
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 12.586, ft2  = 0.449
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100e28]
                                                #; (f:lsu) ft2  <-- 0.453
                                                #; (f:fpu) ft1  <-- 13.035
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 13.035, ft3  = 0.45
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100e30]
                                                #; (f:lsu) ft3  <-- 0.454
                                                #; (f:fpu) ft1  <-- 13.485
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 13.485, ft4  = 0.451
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100e38]
                                                #; (f:lsu) ft4  <-- 0.455
                                                #; (f:fpu) ft1  <-- 13.936
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 13.936, ft5  = 0.452
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100e40]
                                                #; (f:lsu) ft5  <-- 0.456
                                                #; (f:fpu) ft1  <-- 14.388
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 672, (wrb) a4  <-- 1008
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 14.388, ft2  = 0.453
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100e48]
                                                #; (f:lsu) ft2  <-- 0.457
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 1008, a2  = 1344, taken, goto 0x800006e0
                                                #; (f:fpu) ft1  <-- 14.841
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e0 add     a5, a1, a4             #; a1  = 0x00100b28, a4  = 1008, (wrb) a5  <-- 0x00100f18
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 14.841, ft3  = 0.454
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100e50]
                                                #; (f:lsu) ft3  <-- 0.458
                                                #; (f:fpu) ft1  <-- 15.295
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 15.295, ft4  = 0.455
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100e58]
                                                #; (f:lsu) ft4  <-- 0.459
                                                #; (f:fpu) ft1  <-- 15.75
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 15.75, ft5  = 0.456
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100e60]
                                                #; (f:lsu) ft5  <-- 0.46
                                                #; (f:fpu) ft1  <-- 16.206
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 16.206, ft2  = 0.457
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100e68]
                                                #; (f:lsu) ft2  <-- 0.461
                                                #; (f:fpu) ft1  <-- 16.663
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 16.663, ft3  = 0.458
                                                #; (f:fpu) ft1  <-- 17.121
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 17.121, ft4  = 0.459
                                                #; (f:fpu) ft1  <-- 17.58
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 17.58, ft5  = 0.46
                                                #; (f:fpu) ft1  <-- 18.04
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 18.04, ft2  = 0.461
                                                #; (f:fpu) ft1  <-- 18.5010000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 18.5010000, ft0  = 439.9500000
                                                #; (f:fpu) ft0  <-- 458.4510000
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 18.5010000, ft0  = 458.4510000
                                                #; (f:fpu) ft0  <-- 476.9520000
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 18.5010000, ft0  = 476.9520000
                                                #; (f:fpu) ft0  <-- 495.4530000
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 18.5010000, ft0  = 495.4530000
                                                #; (f:fpu) ft0  <-- 513.9540000
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 18.5010000, ft0  = 513.9540000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100e70]
      0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100e78], (f:lsu) ft1  <-- 0.462
      0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100e80], (f:fpu) ft0  <-- 532.4550000
      0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100e88], (f:lsu) ft2  <-- 0.463
      0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100e90], (f:lsu) ft3  <-- 0.464
      0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.463, ft1  = 0.462, (f:lsu) ft4  <-- 0.465
      0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100e98], (f:lsu) ft5  <-- 0.466
                                                #; (f:lsu) ft2  <-- 0.467
                                                #; (f:fpu) ft1  <-- 0.925
      0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.925, ft3  = 0.464
      0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100ea0]
                                                #; (f:lsu) ft3  <-- 0.468
                                                #; (f:fpu) ft1  <-- 1.389
      0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 1.389, ft4  = 0.465
      0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100ea8]
                                                #; (f:lsu) ft4  <-- 0.4690000
                                                #; (f:fpu) ft1  <-- 1.854
      0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.854, ft5  = 0.466
      0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100eb0]
                                                #; (f:lsu) ft5  <-- 0.4700000
                                                #; (f:fpu) ft1  <-- 2.3200000
      0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 2.3200000, ft2  = 0.467
      0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100eb8]
                                                #; (f:lsu) ft2  <-- 0.4710000
                                                #; (f:fpu) ft1  <-- 2.7870000
      0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 2.7870000, ft3  = 0.468
      0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100ec0]
                                                #; (f:lsu) ft3  <-- 0.4720000
                                                #; (f:fpu) ft1  <-- 3.2550000
      0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 3.2550000, ft4  = 0.4690000
      0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100ec8]
                                                #; (f:lsu) ft4  <-- 0.4730000
                                                #; (f:fpu) ft1  <-- 3.724
      0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 3.724, ft5  = 0.4700000
      0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100ed0]
                                                #; (f:lsu) ft5  <-- 0.4740000
                                                #; (f:fpu) ft1  <-- 4.194
      0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 4.194, ft2  = 0.4710000
      0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100ed8]
                                                #; (f:lsu) ft2  <-- 0.4750000
                                                #; (f:fpu) ft1  <-- 4.665
      0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 4.665, ft3  = 0.4720000
      0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100ee0]
                                                #; (f:lsu) ft3  <-- 0.4760000
                                                #; (f:fpu) ft1  <-- 5.1370000
      0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 5.1370000, ft4  = 0.4730000
      0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100ee8]
                                                #; (f:lsu) ft4  <-- 0.4770000
                                                #; (f:fpu) ft1  <-- 5.61
      0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 5.61, ft5  = 0.4740000
      0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100ef0]
                                                #; (f:lsu) ft5  <-- 0.4780000
                                                #; (f:fpu) ft1  <-- 6.0840000
      0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 6.0840000, ft2  = 0.4750000
      0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100ef8]
                                                #; (f:lsu) ft2  <-- 0.4790000
                                                #; (f:fpu) ft1  <-- 6.559
      0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 6.559, ft3  = 0.4760000
      0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100f00]
                                                #; (f:lsu) ft3  <-- 0.48
                                                #; (f:fpu) ft1  <-- 7.035
      0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 7.035, ft4  = 0.4770000
      0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100f08]
                                                #; (f:lsu) ft4  <-- 0.481
                                                #; (f:fpu) ft1  <-- 7.5120000
      0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 7.5120000, ft5  = 0.4780000
      0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100f10]
                                                #; (f:lsu) ft5  <-- 0.482
                                                #; (f:fpu) ft1  <-- 7.99
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 7.99, ft2  = 0.4790000
      0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100f18]
                                                #; (f:lsu) ft2  <-- 0.483
                                                #; (f:fpu) ft1  <-- 8.469
      0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 8.469, ft3  = 0.48
      0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100f20]
                                                #; (f:lsu) ft3  <-- 0.484
                                                #; (f:fpu) ft1  <-- 8.949
      0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 8.949, ft4  = 0.481
      0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100f28]
                                                #; (f:lsu) ft4  <-- 0.485
                                                #; (f:fpu) ft1  <-- 9.43
      0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 9.43, ft5  = 0.482
      0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100f30]
                                                #; (f:lsu) ft5  <-- 0.486
                                                #; (f:fpu) ft1  <-- 9.9120000
      0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 9.9120000, ft2  = 0.483
      0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100f38]
                                                #; (f:lsu) ft2  <-- 0.487
                                                #; (f:fpu) ft1  <-- 10.395
      0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 10.395, ft3  = 0.484
      0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100f40]
                                                #; (f:lsu) ft3  <-- 0.488
                                                #; (f:fpu) ft1  <-- 10.879
      0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 10.879, ft4  = 0.485
      0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100f48]
                                                #; (f:lsu) ft4  <-- 0.489
                                                #; (f:fpu) ft1  <-- 11.3640000
      0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 11.3640000, ft5  = 0.486
      0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100f50]
                                                #; (f:lsu) ft5  <-- 0.49
                                                #; (f:fpu) ft1  <-- 11.85
      0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 11.85, ft2  = 0.487
      0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100f58]
                                                #; (f:lsu) ft2  <-- 0.491
                                                #; (f:fpu) ft1  <-- 12.337
      0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 12.337, ft3  = 0.488
      0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100f60]
                                                #; (f:lsu) ft3  <-- 0.492
                                                #; (f:fpu) ft1  <-- 12.825
      0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 12.825, ft4  = 0.489
      0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100f68]
                                                #; (f:lsu) ft4  <-- 0.493
                                                #; (f:fpu) ft1  <-- 13.314
      0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 13.314, ft5  = 0.49
      0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100f70]
                                                #; (f:lsu) ft5  <-- 0.494
                                                #; (f:fpu) ft1  <-- 13.804
      0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 13.804, ft2  = 0.491
      0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100f78]
                                                #; (f:lsu) ft2  <-- 0.495
                                                #; (f:fpu) ft1  <-- 14.295
      0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 14.295, ft3  = 0.492
      0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100f80]
                                                #; (f:lsu) ft3  <-- 0.496
                                                #; (f:fpu) ft1  <-- 14.7870000
      0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 14.7870000, ft4  = 0.493
      0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100f88]
                                                #; (f:lsu) ft4  <-- 0.497
                                                #; (f:fpu) ft1  <-- 15.28
      0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 15.28, ft5  = 0.494
      0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100f90]
                                                #; (f:lsu) ft5  <-- 0.498
                                                #; (f:fpu) ft1  <-- 15.774
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000840 addi    a4, a4, 336            #; a4  = 1008, (wrb) a4  <-- 1344
      0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 15.774, ft2  = 0.495
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100f98]
                                                #; (f:lsu) ft2  <-- 0.499
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000848 bne     a4, a2, pc - 360       #; a4  = 1344, a2  = 1344, not taken
                                                #; (f:fpu) ft1  <-- 16.269
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x8000084c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 16.269, ft3  = 0.496
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100fa0]
                                                #; (f:lsu) ft3  <-- 0.5
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x80000850 addi    a1, a1, 1344           #; a1  = 0x00100b28, (wrb) a1  <-- 0x00101068
                                                #; (f:fpu) ft1  <-- 16.7650000
      0x80000854 bne     a0, a3, pc - 376       #; a0  = 3, a3  = 3, not taken
      0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 16.7650000, ft4  = 0.497
; main (test_size.c:0)
      0x80000858 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002858
      0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100fa8]
      0x8000085c addi    a0, a0, 1616           #; a0  = 0x80002858, (wrb) a0  <-- 0x80002ea8
                                                #; (f:lsu) ft4  <-- 0.501
                                                #; (f:fpu) ft1  <-- 17.2620000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 17.2620000, ft5  = 0.498
      0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100fb0]
                                                #; (f:lsu) ft5  <-- 0.502
                                                #; (f:fpu) ft1  <-- 17.7600000
      0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 17.7600000, ft2  = 0.499
      0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100fb8]
                                                #; (f:lsu) ft2  <-- 0.503
                                                #; (f:fpu) ft1  <-- 18.2590000
      0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 18.2590000, ft3  = 0.5
                                                #; (f:fpu) ft1  <-- 18.7590000
      0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 18.7590000, ft4  = 0.501
                                                #; (f:fpu) ft1  <-- 19.2600000
      0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 19.2600000, ft5  = 0.502
                                                #; (f:fpu) ft1  <-- 19.7620000
      0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 19.7620000, ft2  = 0.503
; main (test_size.c:49)
      0x80000870 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                                                #; (f:fpu) ft1  <-- 20.2650000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 20.2650000, ft0  = 532.4550000
                                                #; (lsu) a2  <-- 0
; main (test_size.c:49)
      0x80000874 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x80000878 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002878
                                                #; (f:fpu) ft0  <-- 552.7200000
      0x8000087c addi    a0, a0, 877            #; a0  = 0x80002878, (wrb) a0  <-- 0x80002be5
      0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 20.2650000, ft0  = 552.7200000
                                                #; (lsu) a3  <-- 0
                                                #; (f:fpu) ft0  <-- 572.9850000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 20.2650000, ft0  = 572.9850000
; main (test_size.c:49)
      0x80000880 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000880
      0x80000884 jalr    ra, ra, 40             #; ra  = 0x80000880, (wrb) ra  <-- 0x80000888, goto 0x800008a8
                                                #; (f:fpu) ft0  <-- 593.2500000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 20.2650000, ft0  = 593.2500000
; printf_ (printf.c:863)
      0x800008a8 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
                                                #; (f:fpu) ft0  <-- 613.5150000
      0x800008ac sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000888 ~~> Word[0x0011ff1c]
      0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 20.2650000, ft0  = 613.5150000
      0x800008b0 mv      t0, a0                 #; a0  = 0x80002be5, (wrb) t0  <-- 0x80002be5
      0x80000860 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ea8]
      0x800008b4 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
                                                #; (f:fpu) ft0  <-- 633.7800000
      0x800008b8 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
      0x800008bc sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x00100f18 ~~> Word[0x0011ff34]
                                                #; (f:lsu) ft1  <-- -633.78
; main (test_size.c:46)
      0x80000864 fadd.d  ft0, ft0, ft1          #; ft0  = 633.7800000, ft1  = -633.78
; printf_ (printf.c:863)
      0x800008c0 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1344 ~~> Word[0x0011ff30]
      0x800008c4 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
                                                #; (f:fpu) ft0  <-- 0.0000000
      0x800008c8 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000868 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0000000, ft0  = 0.0000000
      0x800008cc sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x00101068 ~~> Word[0x0011ff24]
                                                #; (f:fpu) fs0  <-- 0.0000000
; main (test_size.c:49)
      0x8000086c fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff48]
; printf_ (printf.c:863)
      0x800008d0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x800008d4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x800008d8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800018d8
      0x800008dc addi    a0, a0, -988           #; a0  = 0x800018d8, (wrb) a0  <-- 0x800014fc
      0x800008e0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x800008e4 li      a2, -1                 #; (wrb) a2  <-- -1
      0x800008e8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x800008ec mv      a3, t0                 #; t0  = 0x80002be5, (wrb) a3  <-- 0x80002be5
      0x800008f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008f0
      0x800008f4 jalr    ra, ra, 20             #; ra  = 0x800008f0, (wrb) ra  <-- 0x800008f8, goto 0x80000904
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000904 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000908 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800008f8 ~~> Word[0x0011ff0c]
      0x8000090c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000910 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000914 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000918 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x8000091c sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000920 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000924 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000928 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x8000092c sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000930 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000934 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000938 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x8000093c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000940 mv      s0, a3                 #; a3  = 0x80002be5, (wrb) s0  <-- 0x80002be5
      0x80000944 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000948 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x8000094c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000950 mv      s2, a0                 #; a0  = 0x800014fc, (wrb) s2  <-- 0x800014fc
      0x80000954 j       pc + 0xc               #; goto 0x80000960
      0x80000960 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000964 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000968 li      s11, 16                #; (wrb) s11 <-- 16
      0x8000096c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000970 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000974 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000978 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x8000097c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000980 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000984 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000988 addi    s10, s0, 2             #; s0  = 0x80002be5, (wrb) s10 <-- 0x80002be7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000098c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000990 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000994 lbu     a0, 0(s0)              #; s0  = 0x80002be5, a0  <~~ Byte[0x80002be5]
                                                #; (lsu) a0  <-- 101
      0x80000998 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x8000099c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009a0 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009a8 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 0
      0x8000151c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 1 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 0, (wrb) a4  <-- 0x80002f64
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f64, 101 ~~> Byte[0x80002fac]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 1
      0x80001530 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001534 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x8000153c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002be5, (wrb) s0  <-- 0x80002be6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002be7, (wrb) s10 <-- 0x80002be8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009bc mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002be6, a0  <~~ Byte[0x80002be6]
                                                #; (lsu) a0  <-- 114
      0x800009c4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000099c
      0x8000099c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009a0 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009a8 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 1
      0x8000151c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 2 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 1, (wrb) a4  <-- 0x80002f65
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f65, 114 ~~> Byte[0x80002fad]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 2
      0x80001530 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001534 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000153c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002be6, (wrb) s0  <-- 0x80002be7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002be8, (wrb) s10 <-- 0x80002be9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009bc mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002be7, a0  <~~ Byte[0x80002be7]
                                                #; (lsu) a0  <-- 114
      0x800009c4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000099c
      0x8000099c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009a0 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009a8 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 2
      0x8000151c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 3 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 2, (wrb) a4  <-- 0x80002f66
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f66, 114 ~~> Byte[0x80002fae]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 3
      0x80001530 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001534 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000153c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002be7, (wrb) s0  <-- 0x80002be8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002be9, (wrb) s10 <-- 0x80002bea
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009bc mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002be8, a0  <~~ Byte[0x80002be8]
                                                #; (lsu) a0  <-- 111
      0x800009c4 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x8000099c
      0x8000099c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009a0 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009a8 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 3
      0x8000151c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 4 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 3, (wrb) a4  <-- 0x80002f67
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f67, 111 ~~> Byte[0x80002faf]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 4
      0x80001530 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001534 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x8000153c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002be8, (wrb) s0  <-- 0x80002be9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002bea, (wrb) s10 <-- 0x80002beb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009bc mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002be9, a0  <~~ Byte[0x80002be9]
                                                #; (lsu) a0  <-- 114
      0x800009c4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000099c
      0x8000099c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009a0 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009a8 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 4
      0x8000151c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 5 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 4, (wrb) a4  <-- 0x80002f68
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f68, 114 ~~> Byte[0x80002fb0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 5
      0x80001530 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001534 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000153c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002be9, (wrb) s0  <-- 0x80002bea
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002beb, (wrb) s10 <-- 0x80002bec
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009bc mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002bea, a0  <~~ Byte[0x80002bea]
                                                #; (lsu) a0  <-- 32
      0x800009c4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x8000099c
      0x8000099c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009a0 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009a8 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 5
      0x8000151c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 6 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 5, (wrb) a4  <-- 0x80002f69
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f69, 32 ~~> Byte[0x80002fb1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 6
      0x80001530 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001534 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x8000153c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002bea, (wrb) s0  <-- 0x80002beb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002bec, (wrb) s10 <-- 0x80002bed
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009bc mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002beb, a0  <~~ Byte[0x80002beb]
                                                #; (lsu) a0  <-- 61
      0x800009c4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x8000099c
      0x8000099c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009a0 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009a8 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 6
      0x8000151c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 7 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 6, (wrb) a4  <-- 0x80002f6a
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6a, 61 ~~> Byte[0x80002fb2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 7
      0x80001530 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001534 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x8000153c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002beb, (wrb) s0  <-- 0x80002bec
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002bed, (wrb) s10 <-- 0x80002bee
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009bc mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002bec, a0  <~~ Byte[0x80002bec]
                                                #; (lsu) a0  <-- 32
      0x800009c4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x8000099c
      0x8000099c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009a0 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009a8 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 7
      0x8000151c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 8 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 7, (wrb) a4  <-- 0x80002f6b
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6b, 32 ~~> Byte[0x80002fb3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 8
      0x80001530 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001534 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x8000153c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002bec, (wrb) s0  <-- 0x80002bed
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002bee, (wrb) s10 <-- 0x80002bef
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009bc mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002bed, a0  <~~ Byte[0x80002bed]
                                                #; (lsu) a0  <-- 37
      0x800009c4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x8000099c
      0x8000099c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800009cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x800009cc li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009d0 j       pc + 0x10              #; goto 0x800009e0
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x800009e0 lbu     a0, -1(s10)            #; s10 = 0x80002bef, a0  <~~ Byte[0x80002bee]
                                                #; (lsu) a0  <-- 102
      0x800009e4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x800009e8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a20
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a20 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000a24 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a28 addi    a1, s10, -1            #; s10 = 0x80002bef, (wrb) a1  <-- 0x80002bee
      0x80000a2c li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000a30 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000aac li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000ab0 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b00
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b00 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b04 mv      s10, a1                #; a1  = 0x80002bee, (wrb) s10 <-- 0x80002bee
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000b08 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b0c li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b10 j       pc + 0xc               #; goto 0x80000b1c
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000b1c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000b20 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000b24 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000b28 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000b2c li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000b30 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000b94
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000b94 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000b98 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000b9c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ba0 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000ba4 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002ba4
      0x80000ba8 addi    a2, a2, 192            #; a2  = 0x80002ba4, (wrb) a2  <-- 0x80002c64
      0x80000bac add     a1, a1, a2             #; a1  = 260, a2  = 0x80002c64, (wrb) a1  <-- 0x80002d68
      0x80000bb0 lw      a2, 0(a1)              #; a1  = 0x80002d68, a2  <~~ Word[0x80002d68]
      0x80000bb4 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000bb8 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000bec
      0x80000bbc jr      a2                     #; a2  = 0x80000bec, goto 0x80000bec
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000bec li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000bf0 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000bf8
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000bf8 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000bfc andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000c04 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000c08 mv      a0, s2                 #; s2  = 0x800014fc, (wrb) a0  <-- 0x800014fc
      0x80000c00 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
      0x80000c0c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 0.0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000c10 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000c14 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c18 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000c1c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000c20 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000c24 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c24
      0x80000c28 jalr    ra, ra, -1656          #; ra  = 0x80001c24, (wrb) ra  <-- 0x80000c2c, goto 0x800015ac
; _ftoa (printf.c:340)
      0x800015ac addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800015b0 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000c2c ~~> Word[0x0011fe9c]
      0x800015b4 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x800015b8 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x800015bc sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800014fc ~~> Word[0x0011fe90]
      0x800015c0 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x800015c4 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x800015c8 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x800015cc sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x800015d0 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x800015d4 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x800015d8 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x800015dc sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002bee ~~> Word[0x0011fe70]
      0x800015e0 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
      0x800015ec auipc   s1, 0x2                #; (wrb) s1  <-- 0x800035ec
      0x800015e4 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x800015e8 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x800015f0 addi    s1, s1, -1844          #; s1  = 0x800035ec, (wrb) s1  <-- 0x80002eb8
; _ftoa (printf.c:351)
      0x800015fc mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x800015f4 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002eb8]
; _ftoa (printf.c:0)
      0x80001600 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001604 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800015f8 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001608 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x8000160c mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001610 mv      s7, a0                 #; a0  = 0x800014fc, (wrb) s7  <-- 0x800014fc
; _ftoa (printf.c:351)
      0x80001614 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001704
; _ftoa (printf.c:0)
      0x80001708 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002708
      0x8000170c addi    a0, a0, 1976           #; a0  = 0x80002708, (wrb) a0  <-- 0x80002ec0
      0x80001704 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001710 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ec0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001714 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001718 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001734
; _ftoa (printf.c:0)
      0x80001734 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002734
      0x80001738 addi    a0, a0, 1940           #; a0  = 0x80002734, (wrb) a0  <-- 0x80002ec8
      0x8000173c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ec8]
      0x80001740 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002740
      0x80001744 addi    a0, a0, 1936           #; a0  = 0x80002740, (wrb) a0  <-- 0x80002ed0
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001748 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ed0]
; _ftoa (printf.c:358)
      0x8000174c fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001750 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001754 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001758 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001854
; _ftoa (printf.c:374)
      0x80001854 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001858 li      s8, 6                  #; (wrb) s8  <-- 6
      0x8000185c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001864
; _ftoa (printf.c:0)
      0x80001864 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x8000186c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800018a4
; _ftoa (printf.c:0)
      0x80001868 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x800018a4 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800018a8 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x800018ac auipc   a1, 0x1                #; (wrb) a1  <-- 0x800028ac
      0x800018b0 addi    a1, a1, 1292           #; a1  = 0x800028ac, (wrb) a1  <-- 0x80002db8
      0x800018b4 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002db8, (wrb) a0  <-- 0x80002de8
      0x800018b8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002de8]
; _ftoa (printf.c:383)
      0x800018bc fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x800018c0 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x800018cc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028cc
      0x800018c4 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x800018c8 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:0)
      0x800018d0 addi    a0, a0, 1548           #; a0  = 0x800028cc, (wrb) a0  <-- 0x80002ed8
      0x800018d4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ed8]
; _ftoa (printf.c:385)
      0x800018d8 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x800018dc fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
                                                #; (f:lsu) ft0  <-- 0.5
      0x800018e0 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x800018e4 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x800018e8 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001908
; _ftoa (printf.c:396)
      0x80001908 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x8000190c bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001920
; _ftoa (printf.c:403)
      0x80001924 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001920 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x80001928 li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x8000192c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001930 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001934 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001938 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x8000193c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001940 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001944 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001948 li      a7, 9                  #; (wrb) a7  <-- 9
      0x8000194c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001950 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001954 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001958 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x8000195c mul     a3, a0, a6             #; a0  = 0, a6  = 10
      0x80001960 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001964 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001968 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x8000196c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001970 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001974 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001978 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x8000197c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001980 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001984 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001988 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x8000198c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001990 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001994 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001998 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x8000199c add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x800019a0 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x800019a4 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x800019a8 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x800019ac li      a1, 31                 #; (wrb) a1  <-- 31
      0x800019b0 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x800019b4 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x800019b8 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x800019bc bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800019c4
      0x800019c4 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x800019c8 li      a1, 48                 #; (wrb) a1  <-- 48
      0x800019cc auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800009cc
      0x800019d0 jalr    ra, ra, -1140          #; ra  = 0x800009cc, (wrb) ra  <-- 0x800019d4, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
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
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x800019d4, goto 0x800019d4
; _ftoa (printf.c:0)
      0x800019d4 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x800019d8 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x800019dc sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x800019e0 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x800019e4 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x800019e8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800019ec addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x800019f0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019d8
      0x800019d8 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x800019dc sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x800019e0 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x800019e4 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x800019e8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800019ec addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x800019f0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019d8
      0x800019d8 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x800019dc sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x800019e0 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x800019e4 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x800019e8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800019ec addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x800019f0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019d8
      0x800019d8 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x800019dc sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x800019e0 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x800019e4 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x800019e8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800019ec addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x800019f0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019d8
      0x800019d8 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x800019dc sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x800019e0 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x800019e4 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x800019e8 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x800019ec addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x800019f0 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x800019f4 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x800019f8 j       pc + 0x28              #; goto 0x80001a20
      0x80001a20 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001a24 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001a28 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001a2c add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001a30 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001a34 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001a38 j       pc + 0x8               #; goto 0x80001a40
; _ftoa (printf.c:0)
      0x80001a40 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001a44 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001a48 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001a4c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001a54 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001a50 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001a58 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001a5c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001a60 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001a64 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001a68 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001a6c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
      0x80001a70 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001a74 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001a78 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001a7c mul     a5, a0, a6             #; a0  = 0, a6  = 10
      0x80001a80 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001a84 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001a88 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001a8c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001a90 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001a94 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001a98 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001a9c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001aa0 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001aa4 j       pc + 0x8               #; goto 0x80001aac
; _ftoa (printf.c:440)
      0x80001aac andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001ab0 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001ab4 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b20
; _ftoa (printf.c:0)
      0x80001b20 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001b24 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001b28 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001b40
; _ftoa (printf.c:453)
      0x80001b40 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001b44 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001b48 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001b4c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001b78
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001b78 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001b7c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001b80 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001b84 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001b88 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001b8c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001b90 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001bbc
; _ftoa (printf.c:0)
      0x80001bbc srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001bc0 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001bc4 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
                                                #; (lsu) a0  <-- 48
      0x80001bd0 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001bd4 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001bdc mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 8
      0x8000151c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 9 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 8, (wrb) a4  <-- 0x80002f6c
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6c, 48 ~~> Byte[0x80002fb4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 9
      0x80001530 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001534 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001be8 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001bec mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001bf0 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001bc8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001bd0 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001bd4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001bdc mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 9
      0x8000151c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 10 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 9, (wrb) a4  <-- 0x80002f6d
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6d, 46 ~~> Byte[0x80002fb5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 10
      0x80001530 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001534 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x8000153c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001be8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001bec mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001bf0 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001bc8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001bd0 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001bd4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001bdc mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 10
      0x8000151c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 11 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 10, (wrb) a4  <-- 0x80002f6e
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6e, 48 ~~> Byte[0x80002fb6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 11
      0x80001530 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001534 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001be8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001bec mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001bf0 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001bc8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001bd0 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001bd4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001bdc mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 11
      0x8000151c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 12 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 11, (wrb) a4  <-- 0x80002f6f
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6f, 48 ~~> Byte[0x80002fb7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 12
      0x80001530 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001534 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001be8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001bec mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001bf0 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001bc8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001bd0 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001bd4 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001bdc mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 12
      0x8000151c addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 13 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 12, (wrb) a4  <-- 0x80002f70
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f70, 48 ~~> Byte[0x80002fb8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 13
      0x80001530 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001534 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001be8 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001bec mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001bf0 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001bc8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001bd0 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001bd4 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001bdc mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 13
      0x8000151c addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 14 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 13, (wrb) a4  <-- 0x80002f71
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f71, 48 ~~> Byte[0x80002fb9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 14
      0x80001530 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001534 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001be8 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001bec mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001bf0 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001bc8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001bd0 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001bd4 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001bdc mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 14
      0x8000151c addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 15 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 14, (wrb) a4  <-- 0x80002f72
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f72, 48 ~~> Byte[0x80002fba]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 15
      0x80001530 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001534 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001be8 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001bec mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001bf0 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001bc8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001bd0 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001bd4 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001bdc mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 15
      0x8000151c addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 16 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 15, (wrb) a4  <-- 0x80002f73
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f73, 48 ~~> Byte[0x80002fbb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 16
      0x80001530 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001534 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001be8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001bec mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001bf0 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001bf4 j       pc + 0x8               #; goto 0x80001bfc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001bfc sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001c00 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001c04 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001c08 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001c0c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001c10 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001c40
; _ftoa (printf.c:0)
      0x80001c40 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001c44 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001c48 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001c4c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
                                                #; (f:lsu) fs1  <-- 0.0
      0x80001c54 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001c50 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
                                                #; (f:lsu) fs0  <-- 0.0000000
                                                #; (lsu) s10 <-- 0x80002bee
      0x80001c58 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001c5c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001c60 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001c64 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001c68 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001c6c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001c70 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001c74 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800014fc
      0x80001c78 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001c7c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001c80 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001c84 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000c2c
      0x80001c88 ret                            #; ra  = 0x80000c2c, goto 0x80000c2c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c2c j       pc + 0x7c0             #; goto 0x800013ec
      0x800013ec mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800013f0 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800013f4 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800013f8 addi    s0, s10, 1             #; s10 = 0x80002bee, (wrb) s0  <-- 0x80002bef
      0x800013fc j       pc - 0xa74             #; goto 0x80000988
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000988 addi    s10, s0, 2             #; s0  = 0x80002bef, (wrb) s10 <-- 0x80002bf1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000098c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000990 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000994 lbu     a0, 0(s0)              #; s0  = 0x80002bef, a0  <~~ Byte[0x80002bef]
                                                #; (lsu) a0  <-- 10
      0x80000998 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x8000099c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009a0 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009a8 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
      0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
      0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 16
      0x8000151c addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 17 ~~> Word[0x80002f64]
      0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 16, (wrb) a4  <-- 0x80002f74
      0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f74, 10 ~~> Byte[0x80002fbc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
                                                #; (lsu) a4  <-- 17
      0x80001530 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001534 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001538 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x8000153c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001540 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001544 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 add     a0, a3, a2             #; a3  = 0x80002f64, a2  = 0, (wrb) a0  <-- 0x80002f64
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000154c addi    a2, a0, 72             #; a0  = 0x80002f64, (wrb) a2  <-- 0x80002fac
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001550 sw      zero, 12(a0)           #; a0  = 0x80002f64, 0 ~~> Word[0x80002f70]
      0x80001554 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001558 sw      a3, 8(a0)              #; a0  = 0x80002f64, 64 ~~> Word[0x80002f6c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c sw      zero, 20(a0)           #; a0  = 0x80002f64, 0 ~~> Word[0x80002f78]
      0x80001560 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001564 sw      a3, 16(a0)             #; a0  = 0x80002f64, 1 ~~> Word[0x80002f74]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 sw      zero, 28(a0)           #; a0  = 0x80002f64, 0 ~~> Word[0x80002f80]
      0x8000156c sw      a2, 24(a0)             #; a0  = 0x80002f64, 0x80002fac ~~> Word[0x80002f7c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001570 lw      a2, 0(a1)              #; a1  = 0x80002f64, a2  <~~ Word[0x80002f64]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 addi    a3, a0, 8              #; a0  = 0x80002f64, (wrb) a3  <-- 0x80002f6c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 sw      zero, 36(a0)           #; a0  = 0x80002f64, 0 ~~> Word[0x80002f88]
                                                #; (lsu) a2  <-- 17
      0x8000157c sw      a2, 32(a0)             #; a0  = 0x80002f64, 17 ~~> Word[0x80002f84]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003580
      0x80001584 addi    a0, a0, -1856          #; a0  = 0x80003580, (wrb) a0  <-- 0x80002e40
      0x80001588 sw      a3, 0(a0)              #; a0  = 0x80002e40, 0x80002f6c ~~> Word[0x80002e40]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000358c
      0x80001590 addi    a0, a0, -1804          #; a0  = 0x8000358c, (wrb) a0  <-- 0x80002e80
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
                                                #; (lsu) a2  <-- 0
      0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
      0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
                                                #; (lsu) a2  <-- 0
      0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
      0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
                                                #; (lsu) a2  <-- 0
      0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
      0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
                                                #; (lsu) a2  <-- 0
      0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
      0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
                                                #; (lsu) a2  <-- 0
      0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
      0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
                                                #; (lsu) a2  <-- 0
      0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
      0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
                                                #; (lsu) a2  <-- 0
      0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
      0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
                                                #; (lsu) a2  <-- 1
      0x80001598 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000159c sw      zero, 0(a0)            #; a0  = 0x80002e80, 0 ~~> Word[0x80002e80]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 sw      zero, 0(a1)            #; a1  = 0x80002f64, 0 ~~> Word[0x80002f64]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002bef, (wrb) s0  <-- 0x80002bf0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002bf1, (wrb) s10 <-- 0x80002bf2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009bc mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002bf0, a0  <~~ Byte[0x80002bf0]
                                                #; (lsu) a0  <-- 0
      0x800009c4 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x800009c8 j       pc + 0xad8             #; goto 0x800014a0
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800014a0 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800014a4 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800014ac
      0x800014ac li      a0, 0                  #; (wrb) a0  <-- 0
      0x800014b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800014b4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800014b8 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800014bc, goto 0x800014fc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014fc beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800015a4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015a4 ret                            #; ra  = 0x800014bc, goto 0x800014bc
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800014bc mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800014c0 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x800014c4 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x800014c8 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x800014cc lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800014d0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800014d4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800014d8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800014dc lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800014e0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800014e4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x800014e8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x800014ec lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x800014f0 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x800014f4 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x800008f8
      0x800014f8 ret                            #; ra  = 0x800008f8, goto 0x800008f8
; printf_ (printf.c:869)
      0x800008f8 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x800008fc addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000888
      0x80000900 ret                            #; ra  = 0x80000888, goto 0x80000888
; main (test_size.c:0)
      0x80000888 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002888
      0x8000088c addi    a0, a0, 1576           #; a0  = 0x80002888, (wrb) a0  <-- 0x80002eb0
      0x80000890 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002eb0]
; main (test_size.c:52)
      0x8000089c lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                                                #; (f:lsu) ft0  <-- 0.0001
      0x800008a0 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
      0x80000894 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
                                                #; (lsu) ra  <-- 0x80002960
      0x800008a4 ret                            #; ra  = 0x80002960, goto 0x80002960
      0x80000898 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x80002960 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002964 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002964
      0x80002968 jalr    ra, ra, 524            #; ra  = 0x80002964, (wrb) ra  <-- 0x8000296c, goto 0x80002b70
; ?? (start_snitch.S:33)
      0x80002b70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002b74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000296c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002b78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b78
      0x80002b7c jalr    ra, ra, -1268          #; ra  = 0x80002b78, (wrb) ra  <-- 0x80002b80, goto 0x80002684
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002684 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002688 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000268c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002690 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002694 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002698 ret                            #; ra  = 0x80002b80, goto 0x80002b80
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002b80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002b84 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002b88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002b8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x8000296c
; ?? (start_snitch.S:40)
      0x80002b90 ret                            #; ra  = 0x8000296c, goto 0x8000296c
; ?? (start.S:195)
      0x8000296c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002970 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002970
      0x80002974 jalr    ra, ra, 556            #; ra  = 0x80002970, (wrb) ra  <-- 0x80002978, goto 0x80002b9c
; ?? (start_snitch.S:15)
      0x80002b9c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002ba0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002ba4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002978 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002ba8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ba8
      0x80002bac jalr    ra, ra, -1348          #; ra  = 0x80002ba8, (wrb) ra  <-- 0x80002bb0, goto 0x80002664
; snrt_global_core_idx (team.c:32)
      0x80002664 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002668 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000266c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002670 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002674 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002678 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x8000267c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002680 ret                            #; ra  = 0x80002bb0, goto 0x80002bb0
; ?? (start_snitch.S:20)
      0x80002bb0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002bb4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002bb8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002bbc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002978
; ?? (start_snitch.S:28)
      0x80002bc0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002bc4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002bc8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002bc8
      0x80002bcc addi    t1, t1, 632            #; t1  = 0x80002bc8, (wrb) t1  <-- 0x80002e40
; ?? (start_snitch.S:31)
      0x80002bd0 sw      t0, 0(t1)              #; t1  = 0x80002e40, 1 ~~> Word[0x80002e40]
; ?? (start_snitch.S:32)
      0x80002bd4 ret                            #; ra  = 0x80002978, goto 0x80002978
; ?? (start.S:198)
      0x80002978 wfi                            #; 
                        tion 0 @ (12, 12059):
                          141
                          142
                          509
                          519
                      11.8936
                       0.2310
                       0.4870
                          1.0
                          1.0
                            0
                       2.9318
                       1.2389
                       0.2193
                       0.1340
                       0.6109
                        12048
                       0.4503
