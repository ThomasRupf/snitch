; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002700
      0x00001014 jalr    t0                     #; t0  = 0x80002700, (wrb) ra  <-- 4120, goto 0x80002700
; ?? (start.S:20)
      0x80002700 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003700
; ?? (start.S:21)
      0x80002704 addi    gp, gp, -248           #; gp  = 0x80003700, (wrb) gp  <-- 0x80003608
; ?? (start.S:28)
      0x80002708 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002708
      0x8000270c jalr    ra, ra, 964            #; ra  = 0x80002708, (wrb) ra  <-- 0x80002710, goto 0x80002acc
; ?? (start_snitch.S:16)
      0x80002acc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002ad0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002ad4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002ad8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002adc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002ae0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002ae4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002ae8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002aec mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002af0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002af4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002af8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002afc ret                            #; ra  = 0x80002710, goto 0x80002710
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002710 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002714 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002718 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002718
      0x8000271c jalr    ra, ra, 1036           #; ra  = 0x80002718, (wrb) ra  <-- 0x80002720, goto 0x80002b24
; ?? (start_snitch.S:48)
      0x80002b24 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002b28 ret                            #; ra  = 0x80002720, goto 0x80002720
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002720 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002724 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002728 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000272c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002730 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002734 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002734
      0x80002738 addi    t0, t0, 1972           #; t0  = 0x80002734, (wrb) t0  <-- 0x80002ee8
; ?? (start.S:49)
      0x8000273c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000273c
      0x80002740 addi    t1, t1, 1968           #; t1  = 0x8000273c, (wrb) t1  <-- 0x80002eec
; ?? (start.S:50)
      0x80002744 bge     t0, t1, pc + 16        #; t0  = 0x80002ee8, t1  = 0x80002eec, not taken
; ?? (start.S:51)
      0x80002748 sw      zero, 0(t0)            #; t0  = 0x80002ee8, 0 ~~> Word[0x80002ee8]
; ?? (start.S:52)
      0x8000274c addi    t0, t0, 4              #; t0  = 0x80002ee8, (wrb) t0  <-- 0x80002eec
; ?? (start.S:53)
      0x80002750 blt     t0, t1, pc - 8         #; t0  = 0x80002eec, t1  = 0x80002eec, not taken
; ?? (start.S:58)
      0x80002754 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002758 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000275c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002760 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002764 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002768 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000276c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002770 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002774 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002778 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000277c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002780 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002784 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002788 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000278c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002790 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002794 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002798 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000279c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x800027a0 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x800027a4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x800027a8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x800027ac fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x800027b0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x800027b4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x800027b8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x800027bc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x800027c0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x800027c4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x800027c8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x800027cc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x800027d0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x800027d4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x800027d8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x800027dc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x800027e0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x800027e4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x800027e8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027e8
      0x800027ec lw      t0, 900(t0)            #; t0  = 0x800027e8, t0  <~~ Word[0x80002b6c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x800027f0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x800027f4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x800027f8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800027f8
      0x800027fc lw      t2, 880(t2)            #; t2  = 0x800027f8, t2  <~~ Word[0x80002b68]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002800 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002804 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002808 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x8000280c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002810 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002814 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002818 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x8000281c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002820 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002820
      0x80002824 addi    t0, t0, 1512           #; t0  = 0x80002820, (wrb) t0  <-- 0x80002e08
; ?? (start.S:125)
      0x80002828 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002828
      0x8000282c addi    t1, t1, 1504           #; t1  = 0x80002828, (wrb) t1  <-- 0x80002e08
; ?? (start.S:126)
      0x80002830 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002830
      0x80002834 addi    t2, t2, 1496           #; t2  = 0x80002830, (wrb) t2  <-- 0x80002e08
; ?? (start.S:127)
      0x80002838 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002838
      0x8000283c addi    t3, t3, 1504           #; t3  = 0x80002838, (wrb) t3  <-- 0x80002e18
; ?? (start.S:128)
      0x80002840 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002e08, (wrb) sp  <-- 0x80122d78
; ?? (start.S:129)
      0x80002844 sub     sp, sp, t1             #; sp  = 0x80122d78, t1  = 0x80002e08, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002848 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002e08, (wrb) sp  <-- 0x80122d78
; ?? (start.S:131)
      0x8000284c sub     sp, sp, t3             #; sp  = 0x80122d78, t3  = 0x80002e18, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002850 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002854 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002858 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x8000285c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002860 bge     t0, t1, pc + 24        #; t0  = 0x80002e08, t1  = 0x80002e08, taken, goto 0x80002878
; ?? (start.S:147)
      0x80002878 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002878
      0x8000287c addi    t0, t0, 1424           #; t0  = 0x80002878, (wrb) t0  <-- 0x80002e08
; ?? (start.S:148)
      0x80002880 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002880
      0x80002884 addi    t1, t1, 1432           #; t1  = 0x80002880, (wrb) t1  <-- 0x80002e18
; ?? (start.S:149)
      0x80002888 bge     t0, t1, pc + 20        #; t0  = 0x80002e08, t1  = 0x80002e18, not taken
; ?? (start.S:150)
      0x8000288c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002890 addi    t0, t0, 4              #; t0  = 0x80002e08, (wrb) t0  <-- 0x80002e0c
; ?? (start.S:152)
      0x80002894 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002898 blt     t0, t2, pc - 12        #; t0  = 0x80002e0c, t2  = 0x80002e08, not taken
; ?? (start.S:158)
      0x8000289c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x800028a0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x800028a4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x800028a8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x800028ac sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x800028b0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x800028b4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028b4
      0x800028b8 jalr    ra, ra, -1064          #; ra  = 0x800028b4, (wrb) ra  <-- 0x800028bc, goto 0x8000248c
; _snrt_init_team (start.c:49)
      0x8000248c sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002490 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002494 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002498 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x8000249c lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x800024a0 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800024a4 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800024a8 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800024ac mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800024b0 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800024b4 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800024b8 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800024bc divu    a0, a0, t0             #; a0  = 0, t0  = 8
; _snrt_init_team (start.c:54)
      0x800024c0 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800024c4 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800024c8 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800024cc sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800024d0 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800024d4 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800024d8 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800024dc sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800024e0 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800024e4 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800024e8 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800024ec sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800024f0 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800024f4 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800024f8 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800024fc sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002500 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002504 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002508 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x8000250c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002510 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002514 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002518 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x8000251c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002520 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002524 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002528 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x8000252c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002530 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002534 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002538 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x8000253c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002540 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002544 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002548 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x8000254c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002550 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002554 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002558 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000255c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002560 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002564 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002568 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x8000256c lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002570 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80002574 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002578 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x8000257c mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002580 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003580
      0x80002584 addi    a1, a1, -1684          #; a1  = 0x80003580, (wrb) a1  <-- 0x80002eec
      0x80002588 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002eec, (wrb) a0  <-- 0x80002eec
      0x8000258c sw      zero, 0(a0)            #; a0  = 0x80002eec, 0 ~~> Word[0x80002eec]
; _snrt_init_team (start.c:86)
      0x80002590 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002594 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002598 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x8000259c sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x800025a0 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x800025a4 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x800025a8 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x800025ac andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x800025b0 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800025b4 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800025b8 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800025bc sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800025c0 lw      a0, 0(a1)              #; a1  = 0x80002eec, a0  <~~ Word[0x80002eec]
                                                #; (lsu) a0  <-- 0
      0x800025c4 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800025c8 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800025cc sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800025d0 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800025d4 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800025d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800025dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800025e0 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800025e4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800025e8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800025ec sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800025f0 ret                            #; ra  = 0x800028bc, goto 0x800028bc
; ?? (start.S:165)
      0x800028bc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x800028c0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x800028c4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x800028c8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x800028cc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x800028d0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x800028d4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028d4
      0x800028d8 addi    t0, t0, 60             #; t0  = 0x800028d4, (wrb) t0  <-- 0x80002910
; ?? (start.S:175)
      0x800028dc csrw    mtvec, t0              #; t0  = 0x80002910, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x800028e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028e0
      0x800028e4 jalr    ra, ra, 544            #; ra  = 0x800028e0, (wrb) ra  <-- 0x800028e8, goto 0x80002b00
; ?? (start_snitch.S:33)
      0x80002b00 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002b04 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800028e8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002b08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b08
      0x80002b0c jalr    ra, ra, -1268          #; ra  = 0x80002b08, (wrb) ra  <-- 0x80002b10, goto 0x80002614
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002614 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002618 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000261c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002620 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002624 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002628 ret                            #; ra  = 0x80002b10, goto 0x80002b10
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002b10 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002b14 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002b18 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002b1c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800028e8
; ?? (start_snitch.S:40)
      0x80002b20 ret                            #; ra  = 0x800028e8, goto 0x800028e8
; ?? (start.S:183)
      0x800028e8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800008e8
      0x800028ec jalr    ra, ra, -692           #; ra  = 0x800008e8, (wrb) ra  <-- 0x800028f0, goto 0x80000634
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_various.c:9)
      0x80000634 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000638 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c lw      a0, 4(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff64]
                                                #; (lsu) a0  <-- 0
; main (test_various.c:9)
      0x80000640 beqz    a0, pc + 12            #; a0  = 0, taken, goto 0x8000064c
; main (test_various.c:13)
      0x8000064c li      a0, 25                 #; (wrb) a0  <-- 25
      0x80000650 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80000650
      0x80000654 jalr    zero, t1, 8            #; t1  = 0x80000650
; various (various.c:40)
      0x80000658 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in various (various.c:41)
      0x8000065c sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800028f0 ~~> Word[0x0011ff5c]
      0x80000664 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80000668 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80000660 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x8000066c lw      a1, 0(a1)              #; a1  = 0x0011ff60, a1  <~~ Word[0x0011ff60]
                                                #; (lsu) a1  <-- 0x0011ff70
      0x80000670 lw      a1, 0(a1)              #; a1  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
                                                #; (lsu) a1  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in various (various.c:41)
      0x80000674 lw      t1, 88(a1)             #; a1  = 0x0011ff70, t1  <~~ Word[0x0011ffc8]
                                                #; (lsu) t1  <-- 0x00100000
      0x80000678 lw      a4, 80(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc0]
                                                #; (lsu) a4  <-- 0x00100000
      0x8000067c lw      a5, 84(a1)             #; a1  = 0x0011ff70, a5  <~~ Word[0x0011ffc4]
; various (various.c:41)
      0x80000680 slli    a3, a0, 3              #; a0  = 25, (wrb) a3  <-- 200
; snrt_l1alloc (alloc.c:25)
;  in various (various.c:41)
      0x80000684 add     a3, t1, a3             #; t1  = 0x00100000, a3  = 200, (wrb) a3  <-- 0x001000c8
                                                #; (lsu) a5  <-- 0x0001df30
      0x80000688 add     a4, a5, a4             #; a5  = 0x0001df30, a4  = 0x00100000, (wrb) a4  <-- 0x0011df30
      0x8000068c bgeu    a4, a3, pc + 12        #; a4  = 0x0011df30, a3  = 0x001000c8, taken, goto 0x80000698
; snrt_l1alloc (alloc.c:34)
;  in various (various.c:41)
      0x80000698 sw      a3, 88(a1)             #; a1  = 0x0011ff70, 0x001000c8 ~~> Word[0x0011ffc8]
; various (alloc.c:0)
      0x8000069c auipc   a7, 0x2                #; (wrb) a7  <-- 0x8000269c
      0x800006a0 addi    a7, a7, 1916           #; a7  = 0x8000269c, (wrb) a7  <-- 0x80002e18
      0x800006a4 li      a1, 1                  #; (wrb) a1  <-- 1
      0x800006a8 auipc   a6, 0x2                #; (wrb) a6  <-- 0x800026a8
      0x800006ac addi    a6, a6, 1912           #; a6  = 0x800026a8, (wrb) a6  <-- 0x80002e20
; init_data (various.c:8)
;  in various (various.c:43)
      0x800006b0 blt     a0, a1, pc + 272       #; a0  = 25, a1  = 1, not taken
; init_data (various.c:0)
;  in various (various.c:43)
      0x800006b4 auipc   a1, 0x2                #; (wrb) a1  <-- 0x800026b4
      0x800006b8 addi    a1, a1, 1908           #; a1  = 0x800026b4, (wrb) a1  <-- 0x80002e28
      0x800006bc fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x80002e28]
      0x800006c0 li      a4, 0                  #; (wrb) a4  <-- 0
      0x800006c4 lui     a1, 0x8421             #; (wrb) a1  <-- 0x08421000
      0x800006c8 addi    t0, a1, 133            #; a1  = 0x08421000, (wrb) t0  <-- 0x08421085
                                                #; (f:lsu) ft0  <-- 1.4142
      0x800006cc mv      a1, t1                 #; t1  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x800006d0 mv      a3, a0                 #; a0  = 25, (wrb) a3  <-- 25
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 0, t0  = 0x08421085
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006dc srli    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 0
      0x800006e0 add     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006e4 srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 0, a2  = 0, (wrb) a2  <-- 0
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 0
                                                #; (f:fpu) ft1  <-- 0.0
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 0.0, ft0  = 1.4142
                                                #; (f:fpu) ft1  <-- 0.0
      0x800006fc fsd     ft1, 0(a1)             #; 0.0 ~~> Doub[0x00100000]
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 1
      0x80000704 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
      0x8000070c bnez    a3, pc - 56            #; a3  = 24, taken, goto 0x800006d4
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 1, t0  = 0x08421085
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 1, a5  = 0, (wrb) a2  <-- 1
      0x800006dc srli    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 0
      0x800006e0 add     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006e4 srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 1
                                                #; (f:fpu) ft1  <-- 1.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
      0x8000070c bnez    a3, pc - 56            #; a3  = 23, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 1.4142
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 2, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 1.4142 ~~> Doub[0x00100008]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 2, a5  = 0, (wrb) a2  <-- 2
      0x800006dc srli    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 1
      0x800006e0 add     a2, a2, a5             #; a2  = 1, a5  = 0, (wrb) a2  <-- 1
      0x800006e4 srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 2
                                                #; (f:fpu) ft1  <-- 2.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
      0x8000070c bnez    a3, pc - 56            #; a3  = 22, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 2.8284
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 3, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 2.8284 ~~> Doub[0x00100010]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 3, a5  = 0, (wrb) a2  <-- 3
      0x800006dc srli    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 1
      0x800006e0 add     a2, a2, a5             #; a2  = 1, a5  = 0, (wrb) a2  <-- 1
      0x800006e4 srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 3
                                                #; (f:fpu) ft1  <-- 3.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 3.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
      0x8000070c bnez    a3, pc - 56            #; a3  = 21, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 4.2426000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 4, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 4.2426000 ~~> Doub[0x00100018]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 4, a5  = 0, (wrb) a2  <-- 4
      0x800006dc srli    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 2
      0x800006e0 add     a2, a2, a5             #; a2  = 2, a5  = 0, (wrb) a2  <-- 2
      0x800006e4 srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 4
                                                #; (f:fpu) ft1  <-- 4.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 4.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
      0x8000070c bnez    a3, pc - 56            #; a3  = 20, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 5.6568
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 5, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 5.6568 ~~> Doub[0x00100020]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 5, a5  = 0, (wrb) a2  <-- 5
      0x800006dc srli    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 2
      0x800006e0 add     a2, a2, a5             #; a2  = 2, a5  = 0, (wrb) a2  <-- 2
      0x800006e4 srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 5
                                                #; (f:fpu) ft1  <-- 5.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 5.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
      0x8000070c bnez    a3, pc - 56            #; a3  = 19, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 7.071
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 6, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 7.071 ~~> Doub[0x00100028]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 6, a5  = 0, (wrb) a2  <-- 6
      0x800006dc srli    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 3
      0x800006e0 add     a2, a2, a5             #; a2  = 3, a5  = 0, (wrb) a2  <-- 3
      0x800006e4 srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 6
                                                #; (f:fpu) ft1  <-- 6.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 6.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
      0x8000070c bnez    a3, pc - 56            #; a3  = 18, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 8.4852000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 7, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 8.4852000 ~~> Doub[0x00100030]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 7, a5  = 0, (wrb) a2  <-- 7
      0x800006dc srli    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 3
      0x800006e0 add     a2, a2, a5             #; a2  = 3, a5  = 0, (wrb) a2  <-- 3
      0x800006e4 srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 7
                                                #; (f:fpu) ft1  <-- 7.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 7.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
      0x8000070c bnez    a3, pc - 56            #; a3  = 17, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 9.8994
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 8, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 9.8994 ~~> Doub[0x00100038]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 8, a5  = 0, (wrb) a2  <-- 8
      0x800006dc srli    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 4
      0x800006e0 add     a2, a2, a5             #; a2  = 4, a5  = 0, (wrb) a2  <-- 4
      0x800006e4 srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 8
                                                #; (f:fpu) ft1  <-- 8.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 8.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
      0x8000070c bnez    a3, pc - 56            #; a3  = 16, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 11.3136
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 9, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 11.3136 ~~> Doub[0x00100040]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 9, a5  = 0, (wrb) a2  <-- 9
      0x800006dc srli    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 4
      0x800006e0 add     a2, a2, a5             #; a2  = 4, a5  = 0, (wrb) a2  <-- 4
      0x800006e4 srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 9
                                                #; (f:fpu) ft1  <-- 9.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 9.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
      0x8000070c bnez    a3, pc - 56            #; a3  = 15, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 12.7278000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 10, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 12.7278000 ~~> Doub[0x00100048]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 10, a5  = 0, (wrb) a2  <-- 10
      0x800006dc srli    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 5
      0x800006e0 add     a2, a2, a5             #; a2  = 5, a5  = 0, (wrb) a2  <-- 5
      0x800006e4 srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 10
                                                #; (f:fpu) ft1  <-- 10.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 10.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100050, (wrb) a1  <-- 0x00100058
      0x8000070c bnez    a3, pc - 56            #; a3  = 14, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 14.142
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 11, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 14.142 ~~> Doub[0x00100050]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 11, a5  = 0, (wrb) a2  <-- 11
      0x800006dc srli    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 5
      0x800006e0 add     a2, a2, a5             #; a2  = 5, a5  = 0, (wrb) a2  <-- 5
      0x800006e4 srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 11
                                                #; (f:fpu) ft1  <-- 11.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 11.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100058, (wrb) a1  <-- 0x00100060
      0x8000070c bnez    a3, pc - 56            #; a3  = 13, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 15.5562000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 12, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 15.5562000 ~~> Doub[0x00100058]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 12, a5  = 0, (wrb) a2  <-- 12
      0x800006dc srli    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 6
      0x800006e0 add     a2, a2, a5             #; a2  = 6, a5  = 0, (wrb) a2  <-- 6
      0x800006e4 srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 12, a2  = 0, (wrb) a2  <-- 12
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 12
                                                #; (f:fpu) ft1  <-- 12.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 12.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100060, (wrb) a1  <-- 0x00100068
      0x8000070c bnez    a3, pc - 56            #; a3  = 12, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 16.9704000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 13, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 16.9704000 ~~> Doub[0x00100060]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 13, a5  = 0, (wrb) a2  <-- 13
      0x800006dc srli    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 6
      0x800006e0 add     a2, a2, a5             #; a2  = 6, a5  = 0, (wrb) a2  <-- 6
      0x800006e4 srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 13, a2  = 0, (wrb) a2  <-- 13
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 13
                                                #; (f:fpu) ft1  <-- 13.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 13.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100068, (wrb) a1  <-- 0x00100070
      0x8000070c bnez    a3, pc - 56            #; a3  = 11, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 18.3846
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 14, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 18.3846 ~~> Doub[0x00100068]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 14, a5  = 0, (wrb) a2  <-- 14
      0x800006dc srli    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 7
      0x800006e0 add     a2, a2, a5             #; a2  = 7, a5  = 0, (wrb) a2  <-- 7
      0x800006e4 srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 14, a2  = 0, (wrb) a2  <-- 14
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 14
                                                #; (f:fpu) ft1  <-- 14.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 14.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100070, (wrb) a1  <-- 0x00100078
      0x8000070c bnez    a3, pc - 56            #; a3  = 10, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 19.7988
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 15, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 19.7988 ~~> Doub[0x00100070]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 15, a5  = 0, (wrb) a2  <-- 15
      0x800006dc srli    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 7
      0x800006e0 add     a2, a2, a5             #; a2  = 7, a5  = 0, (wrb) a2  <-- 7
      0x800006e4 srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 15, a2  = 0, (wrb) a2  <-- 15
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 15
                                                #; (f:fpu) ft1  <-- 15.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 15.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100078, (wrb) a1  <-- 0x00100080
      0x8000070c bnez    a3, pc - 56            #; a3  = 9, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 21.2130000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 16, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 21.2130000 ~~> Doub[0x00100078]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 16, a5  = 0, (wrb) a2  <-- 16
      0x800006dc srli    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 8
      0x800006e0 add     a2, a2, a5             #; a2  = 8, a5  = 0, (wrb) a2  <-- 8
      0x800006e4 srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 16, a2  = 0, (wrb) a2  <-- 16
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 16
                                                #; (f:fpu) ft1  <-- 16.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 16.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100080, (wrb) a1  <-- 0x00100088
      0x8000070c bnez    a3, pc - 56            #; a3  = 8, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 22.6272
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 17, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 22.6272 ~~> Doub[0x00100080]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 17, a5  = 0, (wrb) a2  <-- 17
      0x800006dc srli    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 8
      0x800006e0 add     a2, a2, a5             #; a2  = 8, a5  = 0, (wrb) a2  <-- 8
      0x800006e4 srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 17, a2  = 0, (wrb) a2  <-- 17
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 17
                                                #; (f:fpu) ft1  <-- 17.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 17.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100088, (wrb) a1  <-- 0x00100090
      0x8000070c bnez    a3, pc - 56            #; a3  = 7, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 24.0414
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 18, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 24.0414 ~~> Doub[0x00100088]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 18, a5  = 0, (wrb) a2  <-- 18
      0x800006dc srli    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 9
      0x800006e0 add     a2, a2, a5             #; a2  = 9, a5  = 0, (wrb) a2  <-- 9
      0x800006e4 srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 18, a2  = 0, (wrb) a2  <-- 18
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 18
                                                #; (f:fpu) ft1  <-- 18.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 18.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100090, (wrb) a1  <-- 0x00100098
      0x8000070c bnez    a3, pc - 56            #; a3  = 6, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 25.4556000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 19, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 25.4556000 ~~> Doub[0x00100090]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 19, a5  = 0, (wrb) a2  <-- 19
      0x800006dc srli    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 9
      0x800006e0 add     a2, a2, a5             #; a2  = 9, a5  = 0, (wrb) a2  <-- 9
      0x800006e4 srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 19, a2  = 0, (wrb) a2  <-- 19
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 19
                                                #; (f:fpu) ft1  <-- 19.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 19.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
      0x80000708 addi    a1, a1, 8              #; a1  = 0x00100098, (wrb) a1  <-- 0x001000a0
      0x8000070c bnez    a3, pc - 56            #; a3  = 5, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 26.8698000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 20, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 26.8698000 ~~> Doub[0x00100098]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 20, a5  = 0, (wrb) a2  <-- 20
      0x800006dc srli    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 10
      0x800006e0 add     a2, a2, a5             #; a2  = 10, a5  = 0, (wrb) a2  <-- 10
      0x800006e4 srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 20, a2  = 0, (wrb) a2  <-- 20
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 20
                                                #; (f:fpu) ft1  <-- 20.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 20.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
      0x80000708 addi    a1, a1, 8              #; a1  = 0x001000a0, (wrb) a1  <-- 0x001000a8
      0x8000070c bnez    a3, pc - 56            #; a3  = 4, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 28.284
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 21, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 28.284 ~~> Doub[0x001000a0]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 21, a5  = 0, (wrb) a2  <-- 21
      0x800006dc srli    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 10
      0x800006e0 add     a2, a2, a5             #; a2  = 10, a5  = 0, (wrb) a2  <-- 10
      0x800006e4 srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 21, a2  = 0, (wrb) a2  <-- 21
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 21
                                                #; (f:fpu) ft1  <-- 21.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 21.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
      0x80000708 addi    a1, a1, 8              #; a1  = 0x001000a8, (wrb) a1  <-- 0x001000b0
      0x8000070c bnez    a3, pc - 56            #; a3  = 3, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 29.6982000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 22, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 29.6982000 ~~> Doub[0x001000a8]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 22, a5  = 0, (wrb) a2  <-- 22
      0x800006dc srli    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 11
      0x800006e0 add     a2, a2, a5             #; a2  = 11, a5  = 0, (wrb) a2  <-- 11
      0x800006e4 srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 22, a2  = 0, (wrb) a2  <-- 22
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 22
                                                #; (f:fpu) ft1  <-- 22.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 22.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
      0x80000708 addi    a1, a1, 8              #; a1  = 0x001000b0, (wrb) a1  <-- 0x001000b8
      0x8000070c bnez    a3, pc - 56            #; a3  = 2, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 31.1124000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 23, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 31.1124000 ~~> Doub[0x001000b0]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 23, a5  = 0, (wrb) a2  <-- 23
      0x800006dc srli    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 11
      0x800006e0 add     a2, a2, a5             #; a2  = 11, a5  = 0, (wrb) a2  <-- 11
      0x800006e4 srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 23, a2  = 0, (wrb) a2  <-- 23
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 23
                                                #; (f:fpu) ft1  <-- 23.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 23.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
      0x80000708 addi    a1, a1, 8              #; a1  = 0x001000b8, (wrb) a1  <-- 0x001000c0
      0x8000070c bnez    a3, pc - 56            #; a3  = 1, taken, goto 0x800006d4
                                                #; (f:fpu) ft1  <-- 32.5266000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006d4 mulhu   a5, a4, t0             #; a4  = 24, t0  = 0x08421085
      0x800006fc fsd     ft1, 0(a1)             #; 32.5266000 ~~> Doub[0x001000b8]
                                                #; (acc) a2  <-- 0x40f70633
      0x800006d8 sub     a2, a4, a5             #; a4  = 24, a5  = 0, (wrb) a2  <-- 24
      0x800006dc srli    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 12
      0x800006e0 add     a2, a2, a5             #; a2  = 12, a5  = 0, (wrb) a2  <-- 12
      0x800006e4 srli    a2, a2, 4              #; a2  = 12, (wrb) a2  <-- 0
      0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
      0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
      0x800006f0 add     a2, a4, a2             #; a4  = 24, a2  = 0, (wrb) a2  <-- 24
      0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 24
                                                #; (f:fpu) ft1  <-- 24.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000700 addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
      0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 24.0, ft0  = 1.4142
      0x80000704 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
      0x80000708 addi    a1, a1, 8              #; a1  = 0x001000c0, (wrb) a1  <-- 0x001000c8
      0x8000070c bnez    a3, pc - 56            #; a3  = 0, not taken
                                                #; (f:fpu) ft1  <-- 33.9408000
; init_data (various.c:9)
;  in various (various.c:43)
      0x800006fc fsd     ft1, 0(a1)             #; 33.9408000 ~~> Doub[0x001000c0]
; various (various.c:0)
      0x80000714 mv      a1, t1                 #; t1  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x80000710 fcvt.d.w ft1, zero             #; ac1  = 0
      0x80000718 mv      a3, a0                 #; a0  = 25, (wrb) a3  <-- 25
                                                #; (f:fpu) ft1  <-- 0.0
; norm (various.c:16)
;  in various (various.c:45)
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft0  <-- 0.0
; norm (various.c:15)
;  in various (various.c:45)
      0x80000724 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 0.0, ft0  = 0.0, ft1  = 0.0
      0x8000072c bnez    a3, pc - 16            #; a3  = 24, taken, goto 0x8000071c
                                                #; (f:fpu) ft1  <-- 0.0
      0x80000724 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100008]
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
                                                #; (f:lsu) ft0  <-- 1.4142
      0x8000072c bnez    a3, pc - 16            #; a3  = 23, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 1.4142, ft0  = 1.4142, ft1  = 0.0
      0x80000724 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100010], (f:fpu) ft1  <-- 1.9999616
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
                                                #; (f:lsu) ft0  <-- 2.8284
      0x8000072c bnez    a3, pc - 16            #; a3  = 22, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 2.8284, ft0  = 2.8284, ft1  = 1.9999616
      0x80000724 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100018], (f:fpu) ft1  <-- 9.9998082
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
                                                #; (f:lsu) ft0  <-- 4.2426000
      0x8000072c bnez    a3, pc - 16            #; a3  = 21, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 4.2426000, ft0  = 4.2426000, ft1  = 9.9998082
      0x80000724 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100020], (f:fpu) ft1  <-- 27.9994630
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
                                                #; (f:lsu) ft0  <-- 5.6568
      0x8000072c bnez    a3, pc - 16            #; a3  = 20, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 5.6568, ft0  = 5.6568, ft1  = 27.9994630
      0x80000724 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100028], (f:fpu) ft1  <-- 59.9988492
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
                                                #; (f:lsu) ft0  <-- 7.071
      0x8000072c bnez    a3, pc - 16            #; a3  = 19, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 7.071, ft0  = 7.071, ft1  = 59.9988492
      0x80000724 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100030], (f:fpu) ft1  <-- 109.9978902
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
                                                #; (f:lsu) ft0  <-- 8.4852000
      0x8000072c bnez    a3, pc - 16            #; a3  = 18, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 8.4852000, ft0  = 8.4852000, ft1  = 109.9978902
      0x80000724 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100038], (f:fpu) ft1  <-- 181.9965092
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
                                                #; (f:lsu) ft0  <-- 9.8994
      0x8000072c bnez    a3, pc - 16            #; a3  = 17, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 9.8994, ft0  = 9.8994, ft1  = 181.9965092
      0x80000724 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100040], (f:fpu) ft1  <-- 279.9946296
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
                                                #; (f:lsu) ft0  <-- 11.3136
      0x8000072c bnez    a3, pc - 16            #; a3  = 16, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 11.3136, ft0  = 11.3136, ft1  = 279.9946296
      0x80000724 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100048], (f:fpu) ft1  <-- 407.9921746
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
                                                #; (f:lsu) ft0  <-- 12.7278000
      0x8000072c bnez    a3, pc - 16            #; a3  = 15, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 12.7278000, ft0  = 12.7278000, ft1  = 407.9921746
      0x80000724 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100050], (f:fpu) ft1  <-- 569.9890674
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100050, (wrb) a1  <-- 0x00100058
                                                #; (f:lsu) ft0  <-- 14.142
      0x8000072c bnez    a3, pc - 16            #; a3  = 14, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 14.142, ft0  = 14.142, ft1  = 569.9890674
      0x80000724 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100058], (f:fpu) ft1  <-- 769.9852314
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100058, (wrb) a1  <-- 0x00100060
                                                #; (f:lsu) ft0  <-- 15.5562000
      0x8000072c bnez    a3, pc - 16            #; a3  = 13, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 15.5562000, ft0  = 15.5562000, ft1  = 769.9852314
      0x80000724 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100060], (f:fpu) ft1  <-- 1011.9805898
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100060, (wrb) a1  <-- 0x00100068
                                                #; (f:lsu) ft0  <-- 16.9704000
      0x8000072c bnez    a3, pc - 16            #; a3  = 12, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 16.9704000, ft0  = 16.9704000, ft1  = 1011.9805898
      0x80000724 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100068], (f:fpu) ft1  <-- 1299.9750660
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100068, (wrb) a1  <-- 0x00100070
                                                #; (f:lsu) ft0  <-- 18.3846
      0x8000072c bnez    a3, pc - 16            #; a3  = 11, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 18.3846, ft0  = 18.3846, ft1  = 1299.9750660
      0x80000724 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100070], (f:fpu) ft1  <-- 1637.9685832
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100070, (wrb) a1  <-- 0x00100078
                                                #; (f:lsu) ft0  <-- 19.7988
      0x8000072c bnez    a3, pc - 16            #; a3  = 10, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 19.7988, ft0  = 19.7988, ft1  = 1637.9685832
      0x80000724 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100078], (f:fpu) ft1  <-- 2029.9610646
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100078, (wrb) a1  <-- 0x00100080
                                                #; (f:lsu) ft0  <-- 21.2130000
      0x8000072c bnez    a3, pc - 16            #; a3  = 9, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 21.2130000, ft0  = 21.2130000, ft1  = 2029.9610646
      0x80000724 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100080], (f:fpu) ft1  <-- 2479.9524336
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100080, (wrb) a1  <-- 0x00100088
                                                #; (f:lsu) ft0  <-- 22.6272
      0x8000072c bnez    a3, pc - 16            #; a3  = 8, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 22.6272, ft0  = 22.6272, ft1  = 2479.9524336
      0x80000724 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100088], (f:fpu) ft1  <-- 2991.9426134
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100088, (wrb) a1  <-- 0x00100090
                                                #; (f:lsu) ft0  <-- 24.0414
      0x8000072c bnez    a3, pc - 16            #; a3  = 7, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 24.0414, ft0  = 24.0414, ft1  = 2991.9426134
      0x80000724 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100090], (f:fpu) ft1  <-- 3569.9315274
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100090, (wrb) a1  <-- 0x00100098
                                                #; (f:lsu) ft0  <-- 25.4556000
      0x8000072c bnez    a3, pc - 16            #; a3  = 6, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 25.4556000, ft0  = 25.4556000, ft1  = 3569.9315274
      0x80000724 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100098], (f:fpu) ft1  <-- 4217.9190988
      0x80000728 addi    a1, a1, 8              #; a1  = 0x00100098, (wrb) a1  <-- 0x001000a0
                                                #; (f:lsu) ft0  <-- 26.8698000
      0x8000072c bnez    a3, pc - 16            #; a3  = 5, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 26.8698000, ft0  = 26.8698000, ft1  = 4217.9190988
      0x80000724 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000a0], (f:fpu) ft1  <-- 4939.9052508
      0x80000728 addi    a1, a1, 8              #; a1  = 0x001000a0, (wrb) a1  <-- 0x001000a8
                                                #; (f:lsu) ft0  <-- 28.284
      0x8000072c bnez    a3, pc - 16            #; a3  = 4, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 28.284, ft0  = 28.284, ft1  = 4939.9052508
      0x80000724 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000a8], (f:fpu) ft1  <-- 5739.8899068
      0x80000728 addi    a1, a1, 8              #; a1  = 0x001000a8, (wrb) a1  <-- 0x001000b0
                                                #; (f:lsu) ft0  <-- 29.6982000
      0x8000072c bnez    a3, pc - 16            #; a3  = 3, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 29.6982000, ft0  = 29.6982000, ft1  = 5739.8899068
      0x80000724 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000b0], (f:fpu) ft1  <-- 6621.8729900
      0x80000728 addi    a1, a1, 8              #; a1  = 0x001000b0, (wrb) a1  <-- 0x001000b8
                                                #; (f:lsu) ft0  <-- 31.1124000
      0x8000072c bnez    a3, pc - 16            #; a3  = 2, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 31.1124000, ft0  = 31.1124000, ft1  = 6621.8729900
      0x80000724 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000b8], (f:fpu) ft1  <-- 7589.8544238
      0x80000728 addi    a1, a1, 8              #; a1  = 0x001000b8, (wrb) a1  <-- 0x001000c0
                                                #; (f:lsu) ft0  <-- 32.5266000
      0x8000072c bnez    a3, pc - 16            #; a3  = 1, taken, goto 0x8000071c
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 32.5266000, ft0  = 32.5266000, ft1  = 7589.8544238
      0x80000724 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
      0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000c0], (f:fpu) ft1  <-- 8647.8341314
      0x80000728 addi    a1, a1, 8              #; a1  = 0x001000c0, (wrb) a1  <-- 0x001000c8
                                                #; (f:lsu) ft0  <-- 33.9408000
      0x8000072c bnez    a3, pc - 16            #; a3  = 0, not taken
      0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 33.9408000, ft0  = 33.9408000, ft1  = 8647.8341314
                                                #; (f:fpu) ft1  <-- 9799.8120360
; various (various.c:0)
      0x80000730 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000738 mv      a3, t1                 #; t1  = 0x00100000, (wrb) a3  <-- 0x00100000
      0x80000734 fcvt.d.w ft0, zero             #; ac1  = 0
      0x8000073c j       pc + 0x10              #; goto 0x8000074c
                                                #; (f:fpu) ft0  <-- 0.0
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 0, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100000]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                                                #; (f:lsu) ft2  <-- 0.0
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 0.0, ft0  = 0.0
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 1, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 1, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 0.0
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 2, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 2, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100010]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:lsu) ft2  <-- 2.8284
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 2.8284, ft0  = 0.0
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 3, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 3, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 2.8284
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 4, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100020]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:lsu) ft2  <-- 5.6568
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 5.6568, ft0  = 2.8284
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 5, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 5, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 8.4852000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 6, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 6, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100030]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:lsu) ft2  <-- 8.4852000
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 8.4852000, ft0  = 8.4852000
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 7, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 7, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 16.9704000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 8, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 8, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100040]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
                                                #; (f:lsu) ft2  <-- 11.3136
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 11.3136, ft0  = 16.9704000
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 9, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 9, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 28.284
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 10, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 10, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100050]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
                                                #; (f:lsu) ft2  <-- 14.142
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 14.142, ft0  = 28.284
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 11, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 11, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 42.426
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 12, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 12, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100060]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
                                                #; (f:lsu) ft2  <-- 16.9704000
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 16.9704000, ft0  = 42.426
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 13, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 13, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 59.3964
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 14, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 14, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100070]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
                                                #; (f:lsu) ft2  <-- 19.7988
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 19.7988, ft0  = 59.3964
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 15, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 15, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 79.1952
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 16, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 16, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100080]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
                                                #; (f:lsu) ft2  <-- 22.6272
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 22.6272, ft0  = 79.1952
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 17, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 17, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 101.8224
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 18, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 18, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100090]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
                                                #; (f:lsu) ft2  <-- 25.4556000
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 25.4556000, ft0  = 101.8224
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 19, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 19, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 127.2780000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
      0x80000744 addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 20, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 20, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x001000a0]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
                                                #; (f:lsu) ft2  <-- 28.284
      0x80000744 addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 28.284, ft0  = 127.2780000
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 21, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 21, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 155.5620000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
      0x80000744 addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 22, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 22, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x001000b0]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
                                                #; (f:lsu) ft2  <-- 31.1124000
      0x80000744 addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 31.1124000, ft0  = 155.5620000
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 23, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 23, (wrb) a2  <-- 1
      0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                                                #; (f:fpu) ft0  <-- 186.6744
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
      0x80000744 addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 24, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x8000074c andi    a2, a1, 1              #; a1  = 24, (wrb) a2  <-- 0
      0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x8000075c j       pc - 0x1c              #; goto 0x80000740
      0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x001000c0]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000740 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
                                                #; (f:lsu) ft2  <-- 33.9408000
      0x80000744 addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
      0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 33.9408000, ft0  = 186.6744
      0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 25, taken, goto 0x80000760
                                                #; (f:fpu) ft0  <-- 220.6152
; skipAfterContantNrOfRounds (various.c:31)
;  in various (various.c:49)
      0x80000760 addi    a2, a0, -1             #; a0  = 25, (wrb) a2  <-- 24
      0x80000764 li      a3, 10                 #; (wrb) a3  <-- 10
      0x80000768 mv      a1, a0                 #; a0  = 25, (wrb) a1  <-- 25
      0x8000076c bltu    a2, a3, pc + 8         #; a2  = 24, a3  = 10, not taken
; skipAfterContantNrOfRounds (various.c:0)
;  in various (various.c:49)
      0x80000770 li      a1, 11                 #; (wrb) a1  <-- 11
      0x80000778 mv      a3, t1                 #; t1  = 0x00100000, (wrb) a3  <-- 0x00100000
      0x80000774 fcvt.d.w ft4, zero             #; ac1  = 0
                                                #; (f:fpu) ft4  <-- 0.0
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft2  <-- 0.0
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000784 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 0.0, ft4  = 0.0
      0x8000078c bnez    a1, pc - 16            #; a1  = 10, taken, goto 0x8000077c
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000784 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100008]
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
                                                #; (f:lsu) ft2  <-- 1.4142
      0x8000078c bnez    a1, pc - 16            #; a1  = 9, taken, goto 0x8000077c
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 1.4142, ft4  = 0.0
      0x80000784 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100010], (f:fpu) ft4  <-- 1.4142
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                                                #; (f:lsu) ft2  <-- 2.8284
      0x8000078c bnez    a1, pc - 16            #; a1  = 8, taken, goto 0x8000077c
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 2.8284, ft4  = 1.4142
      0x80000784 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100018], (f:fpu) ft4  <-- 4.2426000
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
                                                #; (f:lsu) ft2  <-- 4.2426000
      0x8000078c bnez    a1, pc - 16            #; a1  = 7, taken, goto 0x8000077c
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 4.2426000, ft4  = 4.2426000
      0x80000784 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100020], (f:fpu) ft4  <-- 8.4852000
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                                                #; (f:lsu) ft2  <-- 5.6568
      0x8000078c bnez    a1, pc - 16            #; a1  = 6, taken, goto 0x8000077c
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 5.6568, ft4  = 8.4852000
      0x80000784 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100028], (f:fpu) ft4  <-- 14.142
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
                                                #; (f:lsu) ft2  <-- 7.071
      0x8000078c bnez    a1, pc - 16            #; a1  = 5, taken, goto 0x8000077c
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 7.071, ft4  = 14.142
      0x80000784 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 21.213
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                                                #; (f:lsu) ft2  <-- 8.4852000
      0x8000078c bnez    a1, pc - 16            #; a1  = 4, taken, goto 0x8000077c
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 8.4852000, ft4  = 21.213
      0x80000784 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100038], (f:fpu) ft4  <-- 29.6982
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
                                                #; (f:lsu) ft2  <-- 9.8994
      0x8000078c bnez    a1, pc - 16            #; a1  = 3, taken, goto 0x8000077c
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 9.8994, ft4  = 29.6982
      0x80000784 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100040], (f:fpu) ft4  <-- 39.5976
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                                                #; (f:lsu) ft2  <-- 11.3136
      0x8000078c bnez    a1, pc - 16            #; a1  = 2, taken, goto 0x8000077c
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 11.3136, ft4  = 39.5976
      0x80000784 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100048], (f:fpu) ft4  <-- 50.9112
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
                                                #; (f:lsu) ft2  <-- 12.7278000
      0x8000078c bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x8000077c
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 12.7278000, ft4  = 50.9112
      0x80000784 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100050], (f:fpu) ft4  <-- 63.6390000
      0x80000788 addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                                                #; (f:lsu) ft2  <-- 14.142
      0x8000078c bnez    a1, pc - 16            #; a1  = 0, not taken
      0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 14.142, ft4  = 63.6390000
                                                #; (f:fpu) ft4  <-- 77.7810000
; various (various.c:0)
      0x80000790 fld     ft3, 0(a7)             #; ft3  <~~ Doub[0x80002e18]
      0x80000794 fld     ft5, 0(a6)             #; ft5  <~~ Doub[0x80002e20]
                                                #; (f:lsu) ft3  <-- -9799.8120360
; various (various.c:51)
      0x80000798 fadd.d  ft2, ft1, ft3          #; ft1  = 9799.8120360, ft3  = -9799.8120360, (f:lsu) ft5  <-- -77.781
      0x8000079c fadd.d  ft1, ft4, ft5          #; ft4  = 77.7810000, ft5  = -77.781
      0x800007a0 fcvt.d.w ft4, zero             #; ac1  = 0
                                                #; (f:fpu) ft2  <-- -0.0000000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x800007ac addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100000], (f:fpu) ft4  <-- 0.0
                                                #; (f:fpu) ft1  <-- -0.0000000
                                                #; (f:lsu) ft5  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 0.0, ft5  = 0.0, ft4  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100000, (wrb) t1  <-- 0x00100008
      0x800007b4 bnez    a0, pc - 16            #; a0  = 24, taken, goto 0x800007a4
      0x800007ac addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100008]
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100008, (wrb) t1  <-- 0x00100010
                                                #; (f:lsu) ft5  <-- 1.4142
      0x800007b4 bnez    a0, pc - 16            #; a0  = 23, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 1.4142, ft5  = 1.4142, ft4  = 0.0
      0x800007ac addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100010], (f:fpu) ft4  <-- 1.9999616
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100010, (wrb) t1  <-- 0x00100018
                                                #; (f:lsu) ft5  <-- 2.8284
      0x800007b4 bnez    a0, pc - 16            #; a0  = 22, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 2.8284, ft5  = 2.8284, ft4  = 1.9999616
      0x800007ac addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100018], (f:fpu) ft4  <-- 9.9998082
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100018, (wrb) t1  <-- 0x00100020
                                                #; (f:lsu) ft5  <-- 4.2426000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 21, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 4.2426000, ft5  = 4.2426000, ft4  = 9.9998082
      0x800007ac addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100020], (f:fpu) ft4  <-- 27.9994630
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100020, (wrb) t1  <-- 0x00100028
                                                #; (f:lsu) ft5  <-- 5.6568
      0x800007b4 bnez    a0, pc - 16            #; a0  = 20, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 5.6568, ft5  = 5.6568, ft4  = 27.9994630
      0x800007ac addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100028], (f:fpu) ft4  <-- 59.9988492
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100028, (wrb) t1  <-- 0x00100030
                                                #; (f:lsu) ft5  <-- 7.071
      0x800007b4 bnez    a0, pc - 16            #; a0  = 19, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 7.071, ft5  = 7.071, ft4  = 59.9988492
      0x800007ac addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 109.9978902
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100030, (wrb) t1  <-- 0x00100038
                                                #; (f:lsu) ft5  <-- 8.4852000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 18, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 8.4852000, ft5  = 8.4852000, ft4  = 109.9978902
      0x800007ac addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100038], (f:fpu) ft4  <-- 181.9965092
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100038, (wrb) t1  <-- 0x00100040
                                                #; (f:lsu) ft5  <-- 9.8994
      0x800007b4 bnez    a0, pc - 16            #; a0  = 17, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 9.8994, ft5  = 9.8994, ft4  = 181.9965092
      0x800007ac addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100040], (f:fpu) ft4  <-- 279.9946296
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100040, (wrb) t1  <-- 0x00100048
                                                #; (f:lsu) ft5  <-- 11.3136
      0x800007b4 bnez    a0, pc - 16            #; a0  = 16, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 11.3136, ft5  = 11.3136, ft4  = 279.9946296
      0x800007ac addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100048], (f:fpu) ft4  <-- 407.9921746
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100048, (wrb) t1  <-- 0x00100050
                                                #; (f:lsu) ft5  <-- 12.7278000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 15, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 12.7278000, ft5  = 12.7278000, ft4  = 407.9921746
      0x800007ac addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100050], (f:fpu) ft4  <-- 569.9890674
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100050, (wrb) t1  <-- 0x00100058
                                                #; (f:lsu) ft5  <-- 14.142
      0x800007b4 bnez    a0, pc - 16            #; a0  = 14, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 14.142, ft5  = 14.142, ft4  = 569.9890674
      0x800007ac addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100058], (f:fpu) ft4  <-- 769.9852314
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100058, (wrb) t1  <-- 0x00100060
                                                #; (f:lsu) ft5  <-- 15.5562000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 13, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 15.5562000, ft5  = 15.5562000, ft4  = 769.9852314
      0x800007ac addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100060], (f:fpu) ft4  <-- 1011.9805898
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100060, (wrb) t1  <-- 0x00100068
                                                #; (f:lsu) ft5  <-- 16.9704000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 12, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 16.9704000, ft5  = 16.9704000, ft4  = 1011.9805898
      0x800007ac addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100068], (f:fpu) ft4  <-- 1299.9750660
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100068, (wrb) t1  <-- 0x00100070
                                                #; (f:lsu) ft5  <-- 18.3846
      0x800007b4 bnez    a0, pc - 16            #; a0  = 11, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 18.3846, ft5  = 18.3846, ft4  = 1299.9750660
      0x800007ac addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100070], (f:fpu) ft4  <-- 1637.9685832
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100070, (wrb) t1  <-- 0x00100078
                                                #; (f:lsu) ft5  <-- 19.7988
      0x800007b4 bnez    a0, pc - 16            #; a0  = 10, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 19.7988, ft5  = 19.7988, ft4  = 1637.9685832
      0x800007ac addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100078], (f:fpu) ft4  <-- 2029.9610646
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100078, (wrb) t1  <-- 0x00100080
                                                #; (f:lsu) ft5  <-- 21.2130000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 9, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 21.2130000, ft5  = 21.2130000, ft4  = 2029.9610646
      0x800007ac addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100080], (f:fpu) ft4  <-- 2479.9524336
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100080, (wrb) t1  <-- 0x00100088
                                                #; (f:lsu) ft5  <-- 22.6272
      0x800007b4 bnez    a0, pc - 16            #; a0  = 8, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 22.6272, ft5  = 22.6272, ft4  = 2479.9524336
      0x800007ac addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100088], (f:fpu) ft4  <-- 2991.9426134
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100088, (wrb) t1  <-- 0x00100090
                                                #; (f:lsu) ft5  <-- 24.0414
      0x800007b4 bnez    a0, pc - 16            #; a0  = 7, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 24.0414, ft5  = 24.0414, ft4  = 2991.9426134
      0x800007ac addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100090], (f:fpu) ft4  <-- 3569.9315274
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100090, (wrb) t1  <-- 0x00100098
                                                #; (f:lsu) ft5  <-- 25.4556000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 6, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 25.4556000, ft5  = 25.4556000, ft4  = 3569.9315274
      0x800007ac addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100098], (f:fpu) ft4  <-- 4217.9190988
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100098, (wrb) t1  <-- 0x001000a0
                                                #; (f:lsu) ft5  <-- 26.8698000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 5, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 26.8698000, ft5  = 26.8698000, ft4  = 4217.9190988
      0x800007ac addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x001000a0], (f:fpu) ft4  <-- 4939.9052508
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x001000a0, (wrb) t1  <-- 0x001000a8
                                                #; (f:lsu) ft5  <-- 28.284
      0x800007b4 bnez    a0, pc - 16            #; a0  = 4, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 28.284, ft5  = 28.284, ft4  = 4939.9052508
      0x800007ac addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x001000a8], (f:fpu) ft4  <-- 5739.8899068
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x001000a8, (wrb) t1  <-- 0x001000b0
                                                #; (f:lsu) ft5  <-- 29.6982000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 3, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 29.6982000, ft5  = 29.6982000, ft4  = 5739.8899068
      0x800007ac addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x001000b0], (f:fpu) ft4  <-- 6621.8729900
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x001000b0, (wrb) t1  <-- 0x001000b8
                                                #; (f:lsu) ft5  <-- 31.1124000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 2, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 31.1124000, ft5  = 31.1124000, ft4  = 6621.8729900
      0x800007ac addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x001000b8], (f:fpu) ft4  <-- 7589.8544238
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x001000b8, (wrb) t1  <-- 0x001000c0
                                                #; (f:lsu) ft5  <-- 32.5266000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 1, taken, goto 0x800007a4
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 32.5266000, ft5  = 32.5266000, ft4  = 7589.8544238
      0x800007ac addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
      0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x001000c0], (f:fpu) ft4  <-- 8647.8341314
      0x800007b0 addi    t1, t1, 8              #; t1  = 0x001000c0, (wrb) t1  <-- 0x001000c8
                                                #; (f:lsu) ft5  <-- 33.9408000
      0x800007b4 bnez    a0, pc - 16            #; a0  = 0, not taken
      0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 33.9408000, ft5  = 33.9408000, ft4  = 8647.8341314
; abs (various.c:38)
;  in various (various.c:54)
      0x800007bc j       pc + 0x14              #; goto 0x800007d0
                                                #; (f:fpu) ft4  <-- 9799.8120360
      0x800007b8 fadd.d  ft3, ft4, ft3          #; ft4  = 9799.8120360, ft3  = -9799.8120360
                                                #; (f:fpu) ft3  <-- -0.0000000
; abs (various.c:0)
;  in various (various.c:54)
      0x800007d0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027d0
      0x800007d4 addi    a0, a0, 1632           #; a0  = 0x800027d0, (wrb) a0  <-- 0x80002e30
      0x800007d8 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002e30]
; abs (various.c:38)
;  in various (various.c:54)
      0x800007dc fsgnjx.d ft2, ft2, ft2         #; ft2  = -0.0000000, ft2  = -0.0000000
                                                #; (f:fpu) ft2  <-- 0.0000000
                                                #; (f:lsu) ft4  <-- -220.6152000
; various (various.c:54)
      0x800007e0 fadd.d  ft0, ft0, ft4          #; ft0  = 220.6152, ft4  = -220.6152000
                                                #; (f:fpu) ft0  <-- 0.0
; abs (various.c:38)
;  in various (various.c:54)
      0x800007e4 fsgnjx.d ft0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
      0x800007e8 fsgnjx.d ft1, ft1, ft1         #; ft1  = -0.0000000, ft1  = -0.0000000, (f:fpu) ft0  <-- 0.0
      0x800007ec fsgnjx.d ft3, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000, (f:fpu) ft1  <-- 0.0000000
                                                #; (f:fpu) ft3  <-- 0.0000000
; various (various.c:54)
      0x800007f0 fadd.d  ft1, ft2, ft1          #; ft2  = 0.0000000, ft1  = 0.0000000
                                                #; (f:fpu) ft1  <-- 0.0000000
      0x800007f4 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0000000, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0000000
      0x800007f8 fadd.d  fs0, ft0, ft3          #; ft0  = 0.0000000, ft3  = 0.0000000
; various (various.c:56)
      0x80000800 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x800007fc fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff48]
                                                #; (lsu) a2  <-- 0
      0x80000804 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x80000808 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002808
      0x8000080c addi    a0, a0, 877            #; a0  = 0x80002808, (wrb) a0  <-- 0x80002b75
                                                #; (lsu) a3  <-- 0x3d901000
      0x80000810 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000810
      0x80000814 jalr    ra, ra, 40             #; ra  = 0x80000810, (wrb) ra  <-- 0x80000818, goto 0x80000838
; printf_ (printf.c:863)
      0x80000838 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x8000083c sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000818 ~~> Word[0x0011ff1c]
      0x80000840 mv      t0, a0                 #; a0  = 0x80002b75, (wrb) t0  <-- 0x80002b75
      0x80000844 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x80002e18 ~~> Word[0x0011ff3c]
      0x80000848 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x80002e20 ~~> Word[0x0011ff38]
      0x8000084c sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff34]
      0x80000850 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 25 ~~> Word[0x0011ff30]
      0x80000854 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x3d901000 ~~> Word[0x0011ff2c]
      0x80000858 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x8000085c sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
      0x80000860 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000864 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000868 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001868
      0x8000086c addi    a0, a0, -988           #; a0  = 0x80001868, (wrb) a0  <-- 0x8000148c
      0x80000870 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000874 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000878 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x8000087c mv      a3, t0                 #; t0  = 0x80002b75, (wrb) a3  <-- 0x80002b75
      0x80000880 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000880
      0x80000884 jalr    ra, ra, 20             #; ra  = 0x80000880, (wrb) ra  <-- 0x80000888, goto 0x80000894
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000894 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000898 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000888 ~~> Word[0x0011ff0c]
      0x8000089c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x800008a0 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x800008a4 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x800008a8 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x800008ac sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x800008b0 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x800008b4 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x800008b8 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x800008bc sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x800008c0 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x800008c4 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x800008c8 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x800008cc mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x800008d0 mv      s0, a3                 #; a3  = 0x80002b75, (wrb) s0  <-- 0x80002b75
      0x800008d4 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800008d8 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x800008dc beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008e0 mv      s2, a0                 #; a0  = 0x8000148c, (wrb) s2  <-- 0x8000148c
      0x800008e4 j       pc + 0xc               #; goto 0x800008f0
      0x800008f0 li      s8, 0                  #; (wrb) s8  <-- 0
      0x800008f4 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800008f8 li      s11, 16                #; (wrb) s11 <-- 16
      0x800008fc li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000900 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000904 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000908 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x8000090c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000910 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000914 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000918 addi    s10, s0, 2             #; s0  = 0x80002b75, (wrb) s10 <-- 0x80002b77
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000091c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000920 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000924 lbu     a0, 0(s0)              #; s0  = 0x80002b75, a0  <~~ Byte[0x80002b75]
                                                #; (lsu) a0  <-- 101
      0x80000928 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x8000092c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000930 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000938 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 0
      0x800014ac addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 1 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 0, (wrb) a4  <-- 0x80002eec
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002eec, 101 ~~> Byte[0x80002f34]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 1
      0x800014c0 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800014c4 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800014cc snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b75, (wrb) s0  <-- 0x80002b76
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b77, (wrb) s10 <-- 0x80002b78
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000094c mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b76, a0  <~~ Byte[0x80002b76]
                                                #; (lsu) a0  <-- 114
      0x80000954 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000092c
      0x8000092c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000930 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000938 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 1
      0x800014ac addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 2 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 1, (wrb) a4  <-- 0x80002eed
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002eed, 114 ~~> Byte[0x80002f35]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 2
      0x800014c0 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800014c4 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800014cc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b76, (wrb) s0  <-- 0x80002b77
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b78, (wrb) s10 <-- 0x80002b79
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000094c mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b77, a0  <~~ Byte[0x80002b77]
                                                #; (lsu) a0  <-- 114
      0x80000954 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000092c
      0x8000092c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000930 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000938 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 2
      0x800014ac addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 3 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 2, (wrb) a4  <-- 0x80002eee
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002eee, 114 ~~> Byte[0x80002f36]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 3
      0x800014c0 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800014c4 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800014cc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b77, (wrb) s0  <-- 0x80002b78
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b79, (wrb) s10 <-- 0x80002b7a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000094c mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b78, a0  <~~ Byte[0x80002b78]
                                                #; (lsu) a0  <-- 111
      0x80000954 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x8000092c
      0x8000092c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000930 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000938 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 3
      0x800014ac addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 4 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 3, (wrb) a4  <-- 0x80002eef
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002eef, 111 ~~> Byte[0x80002f37]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 4
      0x800014c0 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800014c4 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800014cc snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b78, (wrb) s0  <-- 0x80002b79
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b7a, (wrb) s10 <-- 0x80002b7b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000094c mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b79, a0  <~~ Byte[0x80002b79]
                                                #; (lsu) a0  <-- 114
      0x80000954 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000092c
      0x8000092c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000930 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000938 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 4
      0x800014ac addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 5 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 4, (wrb) a4  <-- 0x80002ef0
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef0, 114 ~~> Byte[0x80002f38]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 5
      0x800014c0 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800014c4 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800014cc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b79, (wrb) s0  <-- 0x80002b7a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b7b, (wrb) s10 <-- 0x80002b7c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000094c mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b7a, a0  <~~ Byte[0x80002b7a]
                                                #; (lsu) a0  <-- 32
      0x80000954 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x8000092c
      0x8000092c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000930 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000938 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 5
      0x800014ac addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 6 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 5, (wrb) a4  <-- 0x80002ef1
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef1, 32 ~~> Byte[0x80002f39]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 6
      0x800014c0 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800014c4 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800014cc snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b7a, (wrb) s0  <-- 0x80002b7b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b7c, (wrb) s10 <-- 0x80002b7d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000094c mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b7b, a0  <~~ Byte[0x80002b7b]
                                                #; (lsu) a0  <-- 61
      0x80000954 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x8000092c
      0x8000092c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000930 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000938 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 6
      0x800014ac addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 7 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 6, (wrb) a4  <-- 0x80002ef2
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef2, 61 ~~> Byte[0x80002f3a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 7
      0x800014c0 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800014c4 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800014cc snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b7b, (wrb) s0  <-- 0x80002b7c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b7d, (wrb) s10 <-- 0x80002b7e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000094c mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b7c, a0  <~~ Byte[0x80002b7c]
                                                #; (lsu) a0  <-- 32
      0x80000954 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x8000092c
      0x8000092c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000930 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000938 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 7
      0x800014ac addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 8 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 7, (wrb) a4  <-- 0x80002ef3
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef3, 32 ~~> Byte[0x80002f3b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 8
      0x800014c0 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800014c4 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800014cc snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b7c, (wrb) s0  <-- 0x80002b7d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b7e, (wrb) s10 <-- 0x80002b7f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000094c mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b7d, a0  <~~ Byte[0x80002b7d]
                                                #; (lsu) a0  <-- 37
      0x80000954 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x8000092c
      0x8000092c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x8000095c li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000960 j       pc + 0x10              #; goto 0x80000970
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000970 lbu     a0, -1(s10)            #; s10 = 0x80002b7f, a0  <~~ Byte[0x80002b7e]
                                                #; (lsu) a0  <-- 102
      0x80000974 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000978 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x800009b0
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x800009b0 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x800009b4 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x800009b8 addi    a1, s10, -1            #; s10 = 0x80002b7f, (wrb) a1  <-- 0x80002b7e
      0x800009bc li      a3, 9                  #; (wrb) a3  <-- 9
      0x800009c0 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000a3c
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000a3c li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000a40 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000a90
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a90 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000a94 mv      s10, a1                #; a1  = 0x80002b7e, (wrb) s10 <-- 0x80002b7e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000a98 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a9c li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000aa0 j       pc + 0xc               #; goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000aac addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000ab0 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000ab4 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000ab8 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000abc li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000ac0 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000b24
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000b24 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000b28 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000b2c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b30 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000b34 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002b34
      0x80000b38 addi    a2, a2, 192            #; a2  = 0x80002b34, (wrb) a2  <-- 0x80002bf4
      0x80000b3c add     a1, a1, a2             #; a1  = 260, a2  = 0x80002bf4, (wrb) a1  <-- 0x80002cf8
      0x80000b40 lw      a2, 0(a1)              #; a1  = 0x80002cf8, a2  <~~ Word[0x80002cf8]
      0x80000b44 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000b48 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000b7c
      0x80000b4c jr      a2                     #; a2  = 0x80000b7c, goto 0x80000b7c
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000b7c li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000b80 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000b88
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000b88 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000b8c andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000b94 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000b98 mv      a0, s2                 #; s2  = 0x8000148c, (wrb) a0  <-- 0x8000148c
      0x80000b90 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
      0x80000b9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 0.0000000
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000ba0 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000ba4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ba8 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000bac mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000bb0 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000bb4 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001bb4
      0x80000bb8 jalr    ra, ra, -1656          #; ra  = 0x80001bb4, (wrb) ra  <-- 0x80000bbc, goto 0x8000153c
; _ftoa (printf.c:340)
      0x8000153c addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001540 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000bbc ~~> Word[0x0011fe9c]
      0x80001544 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001548 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x8000154c sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x8000148c ~~> Word[0x0011fe90]
      0x80001550 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001554 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001558 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x8000155c sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001560 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001564 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001568 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x8000156c sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002b7e ~~> Word[0x0011fe70]
      0x80001570 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
      0x8000157c auipc   s1, 0x2                #; (wrb) s1  <-- 0x8000357c
      0x80001574 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001578 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x80001580 addi    s1, s1, -1852          #; s1  = 0x8000357c, (wrb) s1  <-- 0x80002e40
; _ftoa (printf.c:351)
      0x8000158c mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001584 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002e40]
; _ftoa (printf.c:0)
      0x80001590 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001594 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001588 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
      0x80001598 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x8000159c mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x800015a0 mv      s7, a0                 #; a0  = 0x8000148c, (wrb) s7  <-- 0x8000148c
; _ftoa (printf.c:351)
      0x800015a4 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001694
; _ftoa (printf.c:0)
      0x80001698 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002698
      0x8000169c addi    a0, a0, 1968           #; a0  = 0x80002698, (wrb) a0  <-- 0x80002e48
      0x80001694 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x800016a0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e48]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x800016a4 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x800016a8 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800016c4
; _ftoa (printf.c:0)
      0x800016c4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026c4
      0x800016c8 addi    a0, a0, 1932           #; a0  = 0x800026c4, (wrb) a0  <-- 0x80002e50
      0x800016cc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e50]
      0x800016d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026d0
      0x800016d4 addi    a0, a0, 1928           #; a0  = 0x800026d0, (wrb) a0  <-- 0x80002e58
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x800016d8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e58]
; _ftoa (printf.c:358)
      0x800016dc fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x800016e0 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x800016e4 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800016e8 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800017e4
; _ftoa (printf.c:374)
      0x800017e4 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x800017e8 li      s8, 6                  #; (wrb) s8  <-- 6
      0x800017ec beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800017f4
; _ftoa (printf.c:0)
      0x800017f4 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x800017fc bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001834
; _ftoa (printf.c:0)
      0x800017f8 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
                                                #; (f:fpu) fs2  <-- 0.0000000
      0x80001834 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001838 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x8000183c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000283c
      0x80001840 addi    a1, a1, 1292           #; a1  = 0x8000283c, (wrb) a1  <-- 0x80002d48
      0x80001844 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002d48, (wrb) a0  <-- 0x80002d78
      0x80001848 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002d78]
; _ftoa (printf.c:383)
      0x8000184c fcvt.w.d s1, fs2               #; fs2  = 0.0000000
; _ftoa (printf.c:384)
      0x80001850 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x8000185c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000285c
      0x80001854 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0000000
; _ftoa (printf.c:384)
      0x80001858 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
                                                #; (f:fpu) ft2  <-- 0.0000037
; _ftoa (printf.c:0)
      0x80001860 addi    a0, a0, 1540           #; a0  = 0x8000285c, (wrb) a0  <-- 0x80002e60
      0x80001864 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e60]
; _ftoa (printf.c:385)
      0x80001868 fcvt.wu.d a0, ft2              #; ft2  = 0.0000037
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x8000186c fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
                                                #; (f:lsu) ft0  <-- 0.5
      0x80001870 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000037, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0000037
; _ftoa (printf.c:388)
      0x80001874 fle.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
      0x80001878 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001898
; _ftoa (printf.c:396)
      0x80001898 flt.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x8000189c bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800018b0
; _ftoa (printf.c:403)
      0x800018b4 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x800018b0 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x800018b8 li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x800018bc addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x800018c0 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x800018c4 li      t0, 32                 #; (wrb) t0  <-- 32
      0x800018c8 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x800018cc lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x800018d0 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x800018d4 li      a6, 10                 #; (wrb) a6  <-- 10
      0x800018d8 li      a7, 9                  #; (wrb) a7  <-- 9
      0x800018dc beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x800018e0 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x800018e4 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800018e8 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x800018ec mul     a3, a0, a6             #; a0  = 0, a6  = 10
      0x800018f0 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x800018f4 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x800018f8 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x800018fc sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001900 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001904 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001908 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x8000190c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001910 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001914 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001918 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x8000191c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001920 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001924 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001928 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x8000192c add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001930 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001934 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001938 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x8000193c li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001940 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001944 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001948 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x8000194c bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001954
      0x80001954 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001958 li      a1, 48                 #; (wrb) a1  <-- 48
      0x8000195c auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x8000095c
      0x80001960 jalr    ra, ra, -1028          #; ra  = 0x8000095c, (wrb) ra  <-- 0x80001964, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001964, goto 0x80001964
; _ftoa (printf.c:0)
      0x80001964 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001968 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x8000196c sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001970 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001974 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001978 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x8000197c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001980 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001968
      0x80001968 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x8000196c sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001970 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001974 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001978 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x8000197c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001980 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001968
      0x80001968 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x8000196c sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001970 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001974 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001978 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x8000197c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001980 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001968
      0x80001968 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x8000196c sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001970 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001974 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001978 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x8000197c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001980 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001968
      0x80001968 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x8000196c sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001970 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001974 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001978 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x8000197c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001980 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001984 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001988 j       pc + 0x28              #; goto 0x800019b0
      0x800019b0 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x800019b4 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x800019b8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x800019bc add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x800019c0 li      a1, 46                 #; (wrb) a1  <-- 46
      0x800019c4 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x800019c8 j       pc + 0x8               #; goto 0x800019d0
; _ftoa (printf.c:0)
      0x800019d0 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x800019d4 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x800019d8 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x800019dc li      t0, 32                 #; (wrb) t0  <-- 32
      0x800019e4 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x800019e0 flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
      0x800019e8 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x800019ec li      a6, 10                 #; (wrb) a6  <-- 10
      0x800019f0 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x800019f4 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x800019f8 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x800019fc mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
      0x80001a00 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001a04 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001a08 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001a0c mul     a5, a0, a6             #; a0  = 0, a6  = 10
      0x80001a10 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001a14 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001a18 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001a1c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001a20 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001a24 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001a28 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001a2c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001a30 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001a34 j       pc + 0x8               #; goto 0x80001a3c
; _ftoa (printf.c:440)
      0x80001a3c andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001a40 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001a44 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ab0
; _ftoa (printf.c:0)
      0x80001ab0 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001ab4 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001ab8 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ad0
; _ftoa (printf.c:453)
      0x80001ad0 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001ad4 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001ad8 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001adc beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001b08
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001b08 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001b0c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001b10 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001b14 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001b18 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001b1c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001b20 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001b4c
; _ftoa (printf.c:0)
      0x80001b4c srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b50 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001b54 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
                                                #; (lsu) a0  <-- 48
      0x80001b60 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001b64 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b6c mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 8
      0x800014ac addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 9 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 8, (wrb) a4  <-- 0x80002ef4
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef4, 48 ~~> Byte[0x80002f3c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 9
      0x800014c0 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800014c4 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b78 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001b7c mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b80 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001b58
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001b60 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001b64 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b6c mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 9
      0x800014ac addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 10 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 9, (wrb) a4  <-- 0x80002ef5
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef5, 46 ~~> Byte[0x80002f3d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 10
      0x800014c0 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800014c4 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800014cc snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b78 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001b7c mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b80 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001b58
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001b60 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001b64 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b6c mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 10
      0x800014ac addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 11 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 10, (wrb) a4  <-- 0x80002ef6
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef6, 48 ~~> Byte[0x80002f3e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 11
      0x800014c0 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800014c4 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b78 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001b7c mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b80 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001b58
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001b60 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001b64 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b6c mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 11
      0x800014ac addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 12 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 11, (wrb) a4  <-- 0x80002ef7
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef7, 48 ~~> Byte[0x80002f3f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 12
      0x800014c0 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800014c4 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b78 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001b7c mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b80 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001b58
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001b60 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001b64 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b6c mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 12
      0x800014ac addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 13 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 12, (wrb) a4  <-- 0x80002ef8
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef8, 48 ~~> Byte[0x80002f40]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 13
      0x800014c0 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800014c4 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b78 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001b7c mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b80 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001b58
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001b60 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001b64 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b6c mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 13
      0x800014ac addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 14 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 13, (wrb) a4  <-- 0x80002ef9
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef9, 48 ~~> Byte[0x80002f41]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 14
      0x800014c0 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800014c4 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b78 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001b7c mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b80 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001b58
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001b60 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001b64 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b6c mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 14
      0x800014ac addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 15 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 14, (wrb) a4  <-- 0x80002efa
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002efa, 48 ~~> Byte[0x80002f42]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 15
      0x800014c0 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800014c4 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b78 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001b7c mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b80 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001b58
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001b60 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001b64 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b6c mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 15
      0x800014ac addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 16 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 15, (wrb) a4  <-- 0x80002efb
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002efb, 48 ~~> Byte[0x80002f43]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 16
      0x800014c0 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800014c4 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b78 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001b7c mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b80 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001b84 j       pc + 0x8               #; goto 0x80001b8c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b8c sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001b90 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001b94 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001b98 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001b9c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001ba0 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001bd0
; _ftoa (printf.c:0)
      0x80001bd0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001bd4 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001bd8 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001bdc fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
                                                #; (f:lsu) fs1  <-- 0.0
      0x80001be4 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001be0 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
                                                #; (f:lsu) fs0  <-- 0.0000000
                                                #; (lsu) s10 <-- 0x80002b7e
      0x80001be8 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001bec lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001bf0 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001bf4 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001bf8 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001bfc lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001c00 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001c04 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x8000148c
      0x80001c08 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001c0c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001c10 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001c14 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000bbc
      0x80001c18 ret                            #; ra  = 0x80000bbc, goto 0x80000bbc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bbc j       pc + 0x7c0             #; goto 0x8000137c
      0x8000137c mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001380 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001384 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001388 addi    s0, s10, 1             #; s10 = 0x80002b7e, (wrb) s0  <-- 0x80002b7f
      0x8000138c j       pc - 0xa74             #; goto 0x80000918
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000918 addi    s10, s0, 2             #; s0  = 0x80002b7f, (wrb) s10 <-- 0x80002b81
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000091c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000920 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000924 lbu     a0, 0(s0)              #; s0  = 0x80002b7f, a0  <~~ Byte[0x80002b7f]
                                                #; (lsu) a0  <-- 10
      0x80000928 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x8000092c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000930 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000938 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
      0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
      0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 16
      0x800014ac addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 17 ~~> Word[0x80002eec]
      0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 16, (wrb) a4  <-- 0x80002efc
      0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002efc, 10 ~~> Byte[0x80002f44]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
                                                #; (lsu) a4  <-- 17
      0x800014c0 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800014c4 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800014c8 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800014cc snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800014d0 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800014d4 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d8 add     a0, a3, a2             #; a3  = 0x80002eec, a2  = 0, (wrb) a0  <-- 0x80002eec
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014dc addi    a2, a0, 72             #; a0  = 0x80002eec, (wrb) a2  <-- 0x80002f34
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014e0 sw      zero, 12(a0)           #; a0  = 0x80002eec, 0 ~~> Word[0x80002ef8]
      0x800014e4 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800014e8 sw      a3, 8(a0)              #; a0  = 0x80002eec, 64 ~~> Word[0x80002ef4]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ec sw      zero, 20(a0)           #; a0  = 0x80002eec, 0 ~~> Word[0x80002f00]
      0x800014f0 li      a3, 1                  #; (wrb) a3  <-- 1
      0x800014f4 sw      a3, 16(a0)             #; a0  = 0x80002eec, 1 ~~> Word[0x80002efc]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014f8 sw      zero, 28(a0)           #; a0  = 0x80002eec, 0 ~~> Word[0x80002f08]
      0x800014fc sw      a2, 24(a0)             #; a0  = 0x80002eec, 0x80002f34 ~~> Word[0x80002f04]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001500 lw      a2, 0(a1)              #; a1  = 0x80002eec, a2  <~~ Word[0x80002eec]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 addi    a3, a0, 8              #; a0  = 0x80002eec, (wrb) a3  <-- 0x80002ef4
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001508 sw      zero, 36(a0)           #; a0  = 0x80002eec, 0 ~~> Word[0x80002f10]
                                                #; (lsu) a2  <-- 17
      0x8000150c sw      a2, 32(a0)             #; a0  = 0x80002eec, 17 ~~> Word[0x80002f0c]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001510 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003510
      0x80001514 addi    a0, a0, -1872          #; a0  = 0x80003510, (wrb) a0  <-- 0x80002dc0
      0x80001518 sw      a3, 0(a0)              #; a0  = 0x80002dc0, 0x80002ef4 ~~> Word[0x80002dc0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000351c
      0x80001520 addi    a0, a0, -1820          #; a0  = 0x8000351c, (wrb) a0  <-- 0x80002e00
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 0
      0x80001528 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001524
      0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 0
      0x80001528 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001524
      0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 0
      0x80001528 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001524
      0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 0
      0x80001528 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001524
      0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 0
      0x80001528 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001524
      0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 1
      0x80001528 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000152c sw      zero, 0(a0)            #; a0  = 0x80002e00, 0 ~~> Word[0x80002e00]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001530 sw      zero, 0(a1)            #; a1  = 0x80002eec, 0 ~~> Word[0x80002eec]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b7f, (wrb) s0  <-- 0x80002b80
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b81, (wrb) s10 <-- 0x80002b82
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000094c mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b80, a0  <~~ Byte[0x80002b80]
                                                #; (lsu) a0  <-- 0
      0x80000954 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000958 j       pc + 0xad8             #; goto 0x80001430
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001430 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001434 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x8000143c
      0x8000143c li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001440 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001444 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001448 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x8000144c, goto 0x8000148c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000148c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001534
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001534 ret                            #; ra  = 0x8000144c, goto 0x8000144c
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x8000144c mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001450 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001454 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001458 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x8000145c lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001460 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x80001464 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001468 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x8000146c lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001470 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x80001474 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001478 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x8000147c lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001480 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001484 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000888
      0x80001488 ret                            #; ra  = 0x80000888, goto 0x80000888
; printf_ (printf.c:869)
      0x80000888 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x8000088c addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000818
      0x80000890 ret                            #; ra  = 0x80000818, goto 0x80000818
; various (various.c:0)
      0x80000818 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002818
      0x8000081c addi    a0, a0, 1568           #; a0  = 0x80002818, (wrb) a0  <-- 0x80002e38
      0x80000820 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e38]
; various (various.c:58)
      0x8000082c lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                                                #; (f:lsu) ft0  <-- 0.0001
      0x80000830 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
      0x80000824 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
                                                #; (lsu) ra  <-- 0x800028f0
      0x80000834 ret                            #; ra  = 0x800028f0, goto 0x800028f0
      0x80000828 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x800028f0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x800028f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028f4
      0x800028f8 jalr    ra, ra, 524            #; ra  = 0x800028f4, (wrb) ra  <-- 0x800028fc, goto 0x80002b00
; ?? (start_snitch.S:33)
      0x80002b00 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002b04 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800028fc ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002b08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b08
      0x80002b0c jalr    ra, ra, -1268          #; ra  = 0x80002b08, (wrb) ra  <-- 0x80002b10, goto 0x80002614
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002614 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002618 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000261c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002620 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002624 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002628 ret                            #; ra  = 0x80002b10, goto 0x80002b10
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002b10 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002b14 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002b18 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002b1c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800028fc
; ?? (start_snitch.S:40)
      0x80002b20 ret                            #; ra  = 0x800028fc, goto 0x800028fc
; ?? (start.S:195)
      0x800028fc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002900 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002900
      0x80002904 jalr    ra, ra, 556            #; ra  = 0x80002900, (wrb) ra  <-- 0x80002908, goto 0x80002b2c
; ?? (start_snitch.S:15)
      0x80002b2c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002b30 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002b34 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002908 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002b38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b38
      0x80002b3c jalr    ra, ra, -1348          #; ra  = 0x80002b38, (wrb) ra  <-- 0x80002b40, goto 0x800025f4
; snrt_global_core_idx (team.c:32)
      0x800025f4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800025f8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800025fc lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002600 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002604 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002608 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x8000260c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002610 ret                            #; ra  = 0x80002b40, goto 0x80002b40
; ?? (start_snitch.S:20)
      0x80002b40 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002b44 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002b48 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002b4c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002908
; ?? (start_snitch.S:28)
      0x80002b50 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002b54 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002b58 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b58
      0x80002b5c addi    t1, t1, 616            #; t1  = 0x80002b58, (wrb) t1  <-- 0x80002dc0
; ?? (start_snitch.S:31)
      0x80002b60 sw      t0, 0(t1)              #; t1  = 0x80002dc0, 1 ~~> Word[0x80002dc0]
; ?? (start_snitch.S:32)
      0x80002b64 ret                            #; ra  = 0x80002908, goto 0x80002908
; ?? (start.S:198)
      0x80002908 wfi                            #; 
                        tion 0 @ (12, 6361):
                          139
                          142
                           30
                           90
                      11.9065
                       0.2924
                       0.1427
                          1.0
                          1.0
                            0
                       2.1111
                       1.9889
                       0.0487
                       0.0298
                       0.6117
                         6350
                       0.3411
