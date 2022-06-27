; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800027d0
      0x00001014 jalr    t0                     #; t0  = 0x800027d0, (wrb) ra  <-- 4120, goto 0x800027d0
; ?? (start.S:20)
      0x800027d0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800037d0
; ?? (start.S:21)
      0x800027d4 addi    gp, gp, -264           #; gp  = 0x800037d0, (wrb) gp  <-- 0x800036c8
; ?? (start.S:28)
      0x800027d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027d8
      0x800027dc jalr    ra, ra, 964            #; ra  = 0x800027d8, (wrb) ra  <-- 0x800027e0, goto 0x80002b9c
; ?? (start_snitch.S:16)
      0x80002b9c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002ba0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002ba4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002ba8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002bac lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002bb0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002bb4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002bb8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002bbc mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002bc0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002bc4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002bc8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002bcc ret                            #; ra  = 0x800027e0, goto 0x800027e0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x800027e0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x800027e4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x800027e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027e8
      0x800027ec jalr    ra, ra, 1036           #; ra  = 0x800027e8, (wrb) ra  <-- 0x800027f0, goto 0x80002bf4
; ?? (start_snitch.S:48)
      0x80002bf4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002bf8 ret                            #; ra  = 0x800027f0, goto 0x800027f0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x800027f0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x800027f4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x800027f8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x800027fc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002800 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002804 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002804
      0x80002808 addi    t0, t0, 1932           #; t0  = 0x80002804, (wrb) t0  <-- 0x80002f90
; ?? (start.S:49)
      0x8000280c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000280c
      0x80002810 addi    t1, t1, 1928           #; t1  = 0x8000280c, (wrb) t1  <-- 0x80002f94
; ?? (start.S:50)
      0x80002814 bge     t0, t1, pc + 16        #; t0  = 0x80002f90, t1  = 0x80002f94, not taken
; ?? (start.S:51)
      0x80002818 sw      zero, 0(t0)            #; t0  = 0x80002f90, 0 ~~> Word[0x80002f90]
; ?? (start.S:52)
      0x8000281c addi    t0, t0, 4              #; t0  = 0x80002f90, (wrb) t0  <-- 0x80002f94
; ?? (start.S:53)
      0x80002820 blt     t0, t1, pc - 8         #; t0  = 0x80002f94, t1  = 0x80002f94, not taken
; ?? (start.S:58)
      0x80002824 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002828 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000282c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002830 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002834 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002838 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000283c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002840 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002844 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002848 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000284c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002850 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002854 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002858 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000285c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002860 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002864 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002868 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000286c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002870 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002874 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002878 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000287c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002880 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002884 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002888 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000288c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002890 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002894 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002898 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000289c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x800028a0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x800028a4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x800028a8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x800028ac fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x800028b0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x800028b4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x800028b8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028b8
      0x800028bc lw      t0, 900(t0)            #; t0  = 0x800028b8, t0  <~~ Word[0x80002c3c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x800028c0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x800028c4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x800028c8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028c8
      0x800028cc lw      t2, 880(t2)            #; t2  = 0x800028c8, t2  <~~ Word[0x80002c38]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x800028d0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x800028d4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x800028d8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x800028dc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x800028e0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x800028e4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x800028e8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x800028ec sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x800028f0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028f0
      0x800028f4 addi    t0, t0, 1496           #; t0  = 0x800028f0, (wrb) t0  <-- 0x80002ec8
; ?? (start.S:125)
      0x800028f8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028f8
      0x800028fc addi    t1, t1, 1488           #; t1  = 0x800028f8, (wrb) t1  <-- 0x80002ec8
; ?? (start.S:126)
      0x80002900 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002900
      0x80002904 addi    t2, t2, 1480           #; t2  = 0x80002900, (wrb) t2  <-- 0x80002ec8
; ?? (start.S:127)
      0x80002908 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002908
      0x8000290c addi    t3, t3, 1488           #; t3  = 0x80002908, (wrb) t3  <-- 0x80002ed8
; ?? (start.S:128)
      0x80002910 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
; ?? (start.S:129)
      0x80002914 sub     sp, sp, t1             #; sp  = 0x80122e38, t1  = 0x80002ec8, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002918 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
; ?? (start.S:131)
      0x8000291c sub     sp, sp, t3             #; sp  = 0x80122e38, t3  = 0x80002ed8, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002920 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002924 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002928 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x8000292c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002930 bge     t0, t1, pc + 24        #; t0  = 0x80002ec8, t1  = 0x80002ec8, taken, goto 0x80002948
; ?? (start.S:147)
      0x80002948 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002948
      0x8000294c addi    t0, t0, 1408           #; t0  = 0x80002948, (wrb) t0  <-- 0x80002ec8
; ?? (start.S:148)
      0x80002950 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002950
      0x80002954 addi    t1, t1, 1416           #; t1  = 0x80002950, (wrb) t1  <-- 0x80002ed8
; ?? (start.S:149)
      0x80002958 bge     t0, t1, pc + 20        #; t0  = 0x80002ec8, t1  = 0x80002ed8, not taken
; ?? (start.S:150)
      0x8000295c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002960 addi    t0, t0, 4              #; t0  = 0x80002ec8, (wrb) t0  <-- 0x80002ecc
; ?? (start.S:152)
      0x80002964 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002968 blt     t0, t2, pc - 12        #; t0  = 0x80002ecc, t2  = 0x80002ec8, not taken
; ?? (start.S:158)
      0x8000296c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002970 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002974 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002978 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000297c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002980 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002984 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002984
      0x80002988 jalr    ra, ra, -1060          #; ra  = 0x80002984, (wrb) ra  <-- 0x8000298c, goto 0x80002560
; _snrt_init_team (start.c:49)
      0x80002560 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002564 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002568 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x8000256c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002570 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002574 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002578 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x8000257c mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002580 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002584 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002588 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x8000258c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002590 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002594 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002598 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x8000259c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800025a0 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800025a4 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800025a8 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800025ac add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800025b0 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800025b4 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800025b8 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800025bc lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800025c0 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800025c4 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800025c8 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800025cc sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800025d0 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800025d4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x800025d8 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x800025dc add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x800025e0 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x800025e4 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x800025e8 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x800025ec srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x800025f0 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x800025f4 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x800025f8 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x800025fc sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002600 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002604 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002608 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x8000260c sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002610 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002614 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002618 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x8000261c sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002620 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002624 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002628 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x8000262c lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002630 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002634 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002638 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x8000263c remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002640 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002644 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x80002648 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x8000264c li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002650 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002654 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003654
      0x80002658 addi    a1, a1, -1728          #; a1  = 0x80003654, (wrb) a1  <-- 0x80002f94
                                                #; (acc) a0  <-- 0x00b50533
      0x8000265c add     a0, a0, a1             #; a0  = 0, a1  = 0x80002f94, (wrb) a0  <-- 0x80002f94
      0x80002660 sw      zero, 0(a0)            #; a0  = 0x80002f94, 0 ~~> Word[0x80002f94]
; _snrt_init_team (start.c:86)
      0x80002664 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002668 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x8000266c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002670 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002674 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002678 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x8000267c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002680 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002684 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002688 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x8000268c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002690 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002694 lw      a0, 0(a1)              #; a1  = 0x80002f94, a0  <~~ Word[0x80002f94]
                                                #; (lsu) a0  <-- 0
      0x80002698 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x8000269c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800026a0 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800026a4 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800026a8 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800026ac lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026b0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026b4 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800026b8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026bc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026c0 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800026c4 ret                            #; ra  = 0x8000298c, goto 0x8000298c
; ?? (start.S:165)
      0x8000298c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002990 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002994 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002998 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x8000299c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x800029a0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x800029a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029a4
      0x800029a8 addi    t0, t0, 60             #; t0  = 0x800029a4, (wrb) t0  <-- 0x800029e0
; ?? (start.S:175)
      0x800029ac csrw    mtvec, t0              #; t0  = 0x800029e0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x800029b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029b0
      0x800029b4 jalr    ra, ra, 544            #; ra  = 0x800029b0, (wrb) ra  <-- 0x800029b8, goto 0x80002bd0
; ?? (start_snitch.S:33)
      0x80002bd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002bd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029b8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002bd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bd8
      0x80002bdc jalr    ra, ra, -1264          #; ra  = 0x80002bd8, (wrb) ra  <-- 0x80002be0, goto 0x800026e8
; _snrt_barrier_reg_ptr (team.c:80)
      0x800026e8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026ec add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026f0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026f4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026f8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800026fc ret                            #; ra  = 0x80002be0, goto 0x80002be0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002be0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002be4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002be8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002bec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029b8
; ?? (start_snitch.S:40)
      0x80002bf0 ret                            #; ra  = 0x800029b8, goto 0x800029b8
; ?? (start.S:183)
      0x800029b8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800009b8
      0x800029bc jalr    ra, ra, -700           #; ra  = 0x800009b8, (wrb) ra  <-- 0x800029c0, goto 0x800006fc
; main (bench_sp.c:33)
      0x800006fc addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_sp.c:34)
      0x80000700 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029c0 ~~> Word[0x0011ff5c]
      0x80000704 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
      0x80000708 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
      0x8000070c sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
      0x80000714 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000718 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000710 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x8000071c lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
                                                #; (lsu) a1  <-- 0
; main (bench_sp.c:0)
      0x80000720 li      a0, 0                  #; (wrb) a0  <-- 0
; main (bench_sp.c:34)
      0x80000724 bnez    a1, pc + 228           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (bench_sp.c:38)
      0x80000728 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000072c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000730 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000734 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:38)
      0x80000738 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x8000073c lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x80000740 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x80000744 addi    a2, s0, 800            #; s0  = 0x00100000, (wrb) a2  <-- 0x00100320
                                                #; (lsu) a3  <-- 0x0001df30
      0x80000748 add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
      0x8000074c bgeu    a1, a2, pc + 24        #; a1  = 0x0011df30, a2  = 0x00100320, taken, goto 0x80000764
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:38)
      0x80000764 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
      0x80000768 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:39)
      0x8000076c addi    a3, s0, 1600           #; s0  = 0x00100000, (wrb) a3  <-- 0x00100640
      0x80000770 mv      s0, a2                 #; a2  = 0x00100320, (wrb) s0  <-- 0x00100320
      0x80000774 bgeu    a1, a3, pc - 24        #; a1  = 0x0011df30, a3  = 0x00100640, taken, goto 0x8000075c
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:39)
      0x8000075c sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
      0x80000760 j       pc + 0x1c              #; goto 0x8000077c
; main (bench_sp.c:41)
      0x8000077c mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x80000780 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000780
      0x80000784 jalr    ra, ra, -332           #; ra  = 0x80000780, (wrb) ra  <-- 0x80000788, goto 0x80000634
; init_data (bench_sp.c:28)
      0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
      0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000640 addi    a2, a2, -791           #; a2  = 0x00120000, (wrb) a2  <-- 0x0011fce9
      0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011fce9, (wrb) a2  <-- 1
      0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
      0x8000064c beqz    a1, pc + 108           #; a1  = 1, not taken
; init_data (bench_sp.c:0)
      0x80000650 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000654 li      a2, 8                  #; (wrb) a2  <-- 8
      0x80000658 li      a3, 99                 #; (wrb) a3  <-- 99
; init_data (bench_sp.c:28)
      0x8000065c li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000660 scfgw   a3, a4                 #; a3  = 99, a4  = 64
      0x80000664 li      a3, 192                #; (wrb) a3  <-- 192
      0x80000668 scfgw   a2, a3                 #; a2  = 8, a3  = 192
      0x8000066c li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000670 scfgw   zero, a2               #; a2  = 32
      0x80000674 scfgwi  a0, 896                #; a0  = 0x00100000
      0x8000067c li      a0, 100                #; (wrb) a0  <-- 100
      0x80000678 csrrsi  a0, ssr, 1             #; 
      0x80000680 lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
      0x80000684 addi    a2, a2, -819           #; a2  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
      0x80000688 li      a3, 10                 #; (wrb) a3  <-- 10
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 0, a2  = 0xcccccccd
      0x80000690 srli    a4, a4, 3              #; a4  = 0, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 0, a4  = 0, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 100, (wrb) a0  <-- 99
      0x800006a8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 99, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 1, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 0, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 1, a4  = 0, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 99, (wrb) a0  <-- 98
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 98, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 2, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 1, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 2, a4  = 0, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 98, (wrb) a0  <-- 97
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 97, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 3, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 2, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 3, a4  = 0, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 97, (wrb) a0  <-- 96
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 96, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 4, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 3, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 4, a4  = 0, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 96, (wrb) a0  <-- 95
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 95, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 5, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 4, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 5, a4  = 0, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 95, (wrb) a0  <-- 94
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 94, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 6, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 4, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 6, a4  = 0, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 94, (wrb) a0  <-- 93
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 93, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 7, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 5, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 7, a4  = 0, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 93, (wrb) a0  <-- 92
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 92, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 8, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 6, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 8, a4  = 0, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 92, (wrb) a0  <-- 91
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 91, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 9, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 7, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 9, a4  = 0, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 91, (wrb) a0  <-- 90
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 90, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 10, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 8, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 10, a4  = 10, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 90, (wrb) a0  <-- 89
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 89, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 11, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 8, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 11, a4  = 10, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 89, (wrb) a0  <-- 88
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 88, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 12, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 9, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 12, a4  = 10, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 88, (wrb) a0  <-- 87
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 87, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 13, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 10, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 13, a4  = 10, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 87, (wrb) a0  <-- 86
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 86, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 14, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 11, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 14, a4  = 10, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 86, (wrb) a0  <-- 85
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 85, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 15, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 12, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 15, a4  = 10, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 85, (wrb) a0  <-- 84
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 84, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 16, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 12, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 16, a4  = 10, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 84, (wrb) a0  <-- 83
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 83, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 17, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 13, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 17, a4  = 10, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 83, (wrb) a0  <-- 82
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 82, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 18, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 14, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 18, a4  = 10, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 82, (wrb) a0  <-- 81
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 81, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 19, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 15, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 19, a4  = 10, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 81, (wrb) a0  <-- 80
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 80, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 20, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 16, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 20, a4  = 20, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 80, (wrb) a0  <-- 79
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 79, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 21, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 16, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 21, a4  = 20, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 79, (wrb) a0  <-- 78
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 78, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 22, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 17, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 22, a4  = 20, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 78, (wrb) a0  <-- 77
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 77, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 23, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 18, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 23, a4  = 20, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 77, (wrb) a0  <-- 76
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 76, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 24, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 19, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 24, a4  = 20, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 76, (wrb) a0  <-- 75
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 75, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 25, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 20, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 25, a4  = 20, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 75, (wrb) a0  <-- 74
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 74, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 26, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 20, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 26, a4  = 20, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 74, (wrb) a0  <-- 73
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 73, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 27, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 21, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 27, a4  = 20, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 73, (wrb) a0  <-- 72
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 72, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 28, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 22, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 28, a4  = 20, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 72, (wrb) a0  <-- 71
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 71, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 29, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 23, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 29, a4  = 20, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 71, (wrb) a0  <-- 70
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 70, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 30, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 24, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 30, a4  = 30, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 70, (wrb) a0  <-- 69
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 69, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 31, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 24, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 31, a4  = 30, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 69, (wrb) a0  <-- 68
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 68, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 32, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 25, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 32, a4  = 30, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 68, (wrb) a0  <-- 67
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 67, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 33, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 26, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 33, a4  = 30, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 67, (wrb) a0  <-- 66
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 66, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 34, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 27, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 34, a4  = 30, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 66, (wrb) a0  <-- 65
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 65, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 35, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 28, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 35, a4  = 30, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 65, (wrb) a0  <-- 64
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 64, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 36, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 28, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 36, a4  = 30, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 64, (wrb) a0  <-- 63
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 63, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 37, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 29, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 37, a4  = 30, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 63, (wrb) a0  <-- 62
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 62, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 38, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 30, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 38, a4  = 30, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 62, (wrb) a0  <-- 61
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 61, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 39, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 31, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 39, a4  = 30, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 61, (wrb) a0  <-- 60
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 60, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 40, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 32, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 40, a4  = 40, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 60, (wrb) a0  <-- 59
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 59, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 41, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 32, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 41, a4  = 40, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 59, (wrb) a0  <-- 58
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 58, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 42, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 33, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 42, a4  = 40, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 58, (wrb) a0  <-- 57
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 42, (wrb) a1  <-- 43
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 57, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 43, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 34, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 43, a4  = 40, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 57, (wrb) a0  <-- 56
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 43, (wrb) a1  <-- 44
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 56, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 44, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 35, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 44, a4  = 40, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 56, (wrb) a0  <-- 55
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 44, (wrb) a1  <-- 45
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 55, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 45, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 36, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 45, a4  = 40, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 55, (wrb) a0  <-- 54
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 45, (wrb) a1  <-- 46
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 54, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 46, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 36, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 46, a4  = 40, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 54, (wrb) a0  <-- 53
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 46, (wrb) a1  <-- 47
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 53, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 47, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 37, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 47, a4  = 40, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 53, (wrb) a0  <-- 52
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 47, (wrb) a1  <-- 48
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 52, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 48, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 38, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 48, a4  = 40, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 52, (wrb) a0  <-- 51
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 48, (wrb) a1  <-- 49
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 51, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 49, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 39, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 49, a4  = 40, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 51, (wrb) a0  <-- 50
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 49, (wrb) a1  <-- 50
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 50, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 50, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 40, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 50, a4  = 50, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 50, (wrb) a0  <-- 49
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 50, (wrb) a1  <-- 51
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 49, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 51, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 40, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 51, a4  = 50, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 49, (wrb) a0  <-- 48
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 51, (wrb) a1  <-- 52
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 48, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 52, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 41, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 52, a4  = 50, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 48, (wrb) a0  <-- 47
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 52, (wrb) a1  <-- 53
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 47, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 53, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 42, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 53, a4  = 50, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 47, (wrb) a0  <-- 46
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 53, (wrb) a1  <-- 54
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 46, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 54, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 43, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 54, a4  = 50, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 46, (wrb) a0  <-- 45
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 54, (wrb) a1  <-- 55
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 45, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 55, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 44, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 55, a4  = 50, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 45, (wrb) a0  <-- 44
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 55, (wrb) a1  <-- 56
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 44, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 56, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 44, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 56, a4  = 50, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 44, (wrb) a0  <-- 43
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 56, (wrb) a1  <-- 57
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 43, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 57, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 45, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 57, a4  = 50, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 43, (wrb) a0  <-- 42
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 57, (wrb) a1  <-- 58
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 42, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 58, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 46, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 58, a4  = 50, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 42, (wrb) a0  <-- 41
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 58, (wrb) a1  <-- 59
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 41, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 59, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 47, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 59, a4  = 50, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 41, (wrb) a0  <-- 40
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 59, (wrb) a1  <-- 60
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 40, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 60, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 48, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 60, a4  = 60, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 40, (wrb) a0  <-- 39
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 60, (wrb) a1  <-- 61
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 39, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 61, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 48, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 61, a4  = 60, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 39, (wrb) a0  <-- 38
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 61, (wrb) a1  <-- 62
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 38, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 62, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 49, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 62, a4  = 60, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 38, (wrb) a0  <-- 37
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 62, (wrb) a1  <-- 63
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 37, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 63, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 50, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 63, a4  = 60, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 37, (wrb) a0  <-- 36
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 63, (wrb) a1  <-- 64
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 36, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 64, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 51, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 64, a4  = 60, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 36, (wrb) a0  <-- 35
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 64, (wrb) a1  <-- 65
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 35, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 65, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 52, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 65, a4  = 60, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 35, (wrb) a0  <-- 34
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 65, (wrb) a1  <-- 66
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 34, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 66, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 52, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 66, a4  = 60, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 34, (wrb) a0  <-- 33
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 66, (wrb) a1  <-- 67
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 33, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 67, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 53, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 67, a4  = 60, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 33, (wrb) a0  <-- 32
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 67, (wrb) a1  <-- 68
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 32, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 68, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 54, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 68, a4  = 60, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 32, (wrb) a0  <-- 31
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 68, (wrb) a1  <-- 69
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 31, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 69, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 55, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 69, a4  = 60, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 31, (wrb) a0  <-- 30
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 69, (wrb) a1  <-- 70
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 30, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 70, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 56, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 70, a4  = 70, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 30, (wrb) a0  <-- 29
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 70, (wrb) a1  <-- 71
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 29, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 71, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 56, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 71, a4  = 70, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 29, (wrb) a0  <-- 28
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 71, (wrb) a1  <-- 72
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 28, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 72, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 57, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 72, a4  = 70, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 28, (wrb) a0  <-- 27
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 72, (wrb) a1  <-- 73
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 27, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 73, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 58, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 73, a4  = 70, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 27, (wrb) a0  <-- 26
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 73, (wrb) a1  <-- 74
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 26, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 74, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 59, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 74, a4  = 70, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 26, (wrb) a0  <-- 25
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 74, (wrb) a1  <-- 75
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 25, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 75, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 60, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 75, a4  = 70, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 75, (wrb) a1  <-- 76
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 24, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 76, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 60, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 76, a4  = 70, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 76, (wrb) a1  <-- 77
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 23, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 77, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 61, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 77, a4  = 70, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 77, (wrb) a1  <-- 78
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 22, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 78, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 62, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 78, a4  = 70, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 78, (wrb) a1  <-- 79
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 21, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 79, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 63, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 79, a4  = 70, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 79, (wrb) a1  <-- 80
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 20, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 80, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 64, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 80, a4  = 80, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 80, (wrb) a1  <-- 81
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 19, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 81, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 64, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 81, a4  = 80, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 81, (wrb) a1  <-- 82
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 18, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 82, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 65, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 82, a4  = 80, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 82, (wrb) a1  <-- 83
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 17, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 83, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 66, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 83, a4  = 80, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 83, (wrb) a1  <-- 84
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 16, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 84, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 67, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 84, a4  = 80, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 84, (wrb) a1  <-- 85
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 15, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 85, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 68, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 85, a4  = 80, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 85, (wrb) a1  <-- 86
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 14, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 86, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 68, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 86, a4  = 80, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 86, (wrb) a1  <-- 87
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 13, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 87, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 69, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 87, a4  = 80, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 87, (wrb) a1  <-- 88
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 12, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 88, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 70, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 88, a4  = 80, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 88, (wrb) a1  <-- 89
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 11, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 89, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 71, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 89, a4  = 80, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 89, (wrb) a1  <-- 90
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 10, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 90, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 72, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 90, a4  = 90, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 90, (wrb) a1  <-- 91
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 9, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 91, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 72, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 91, a4  = 90, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 91, (wrb) a1  <-- 92
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 8, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 92, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 73, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 92, a4  = 90, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 92, (wrb) a1  <-- 93
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 7, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 93, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 74, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 93, a4  = 90, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 93, (wrb) a1  <-- 94
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 6, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 94, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 75, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 94, a4  = 90, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 94, (wrb) a1  <-- 95
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 5, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 95, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 76, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 95, a4  = 90, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 95, (wrb) a1  <-- 96
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 4, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 96, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 76, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 96, a4  = 90, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 96, (wrb) a1  <-- 97
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 3, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 97, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 77, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 97, a4  = 90, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 97, (wrb) a1  <-- 98
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 2, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 98, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 78, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 98, a4  = 90, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 98, (wrb) a1  <-- 99
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 1, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 99, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 79, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 99, a4  = 90, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 99, (wrb) a1  <-- 100
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 0, not taken
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:0)
      0x800006b4 j       pc + 0x44              #; goto 0x800006f8
      0x800006b0 csrrci  a0, ssr, 1             #; 
; init_data (bench_sp.c:31)
      0x800006f8 ret                            #; ra  = 0x80000788, goto 0x80000788
; main (bench_sp.c:42)
      0x80000788 mv      a0, s0                 #; s0  = 0x00100320, (wrb) a0  <-- 0x00100320
      0x8000078c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000078c
      0x80000790 jalr    ra, ra, -344           #; ra  = 0x8000078c, (wrb) ra  <-- 0x80000794, goto 0x80000634
; init_data (bench_sp.c:28)
      0x80000634 srli    a1, a0, 20             #; a0  = 0x00100320, (wrb) a1  <-- 1
      0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000640 addi    a2, a2, -791           #; a2  = 0x00120000, (wrb) a2  <-- 0x0011fce9
      0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100320, a2  = 0x0011fce9, (wrb) a2  <-- 1
      0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
      0x8000064c beqz    a1, pc + 108           #; a1  = 1, not taken
; init_data (bench_sp.c:0)
      0x80000650 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000654 li      a2, 8                  #; (wrb) a2  <-- 8
      0x80000658 li      a3, 99                 #; (wrb) a3  <-- 99
; init_data (bench_sp.c:28)
      0x8000065c li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000660 scfgw   a3, a4                 #; a3  = 99, a4  = 64
      0x80000664 li      a3, 192                #; (wrb) a3  <-- 192
      0x80000668 scfgw   a2, a3                 #; a2  = 8, a3  = 192
      0x8000066c li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000670 scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
      0x80000674 scfgwi  a0, 896                #; a0  = 0x00100320
      0x8000067c li      a0, 100                #; (wrb) a0  <-- 100
      0x80000678 csrrsi  a0, ssr, 1             #; 
      0x80000680 lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
      0x80000684 addi    a2, a2, -819           #; a2  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
      0x80000688 li      a3, 10                 #; (wrb) a3  <-- 10
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 0, a2  = 0xcccccccd, (acc) a4  <-- 0x02c5b733
                                                #; (acc) a4  <-- 0x00375713
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 0, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 0, a4  = 0, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 100, (wrb) a0  <-- 99
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 99, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 1, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 0, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 1, a4  = 0, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 99, (wrb) a0  <-- 98
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 98, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 2, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 1, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 2, a4  = 0, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 98, (wrb) a0  <-- 97
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 97, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 3, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 2, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 3, a4  = 0, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 97, (wrb) a0  <-- 96
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 96, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 4, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 3, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 4, a4  = 0, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 96, (wrb) a0  <-- 95
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 95, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 5, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 4, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 5, a4  = 0, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 95, (wrb) a0  <-- 94
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 94, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 6, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 4, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 6, a4  = 0, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 94, (wrb) a0  <-- 93
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 93, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 7, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 5, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 7, a4  = 0, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 93, (wrb) a0  <-- 92
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 92, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 8, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 6, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 8, a4  = 0, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 92, (wrb) a0  <-- 91
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 91, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 9, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 7, (wrb) a4  <-- 0
      0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 9, a4  = 0, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 91, (wrb) a0  <-- 90
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 90, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 10, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 8, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 10, a4  = 10, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 90, (wrb) a0  <-- 89
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 89, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 11, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 8, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 11, a4  = 10, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 89, (wrb) a0  <-- 88
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 88, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 12, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 9, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 12, a4  = 10, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 88, (wrb) a0  <-- 87
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 87, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 13, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 10, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 13, a4  = 10, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 87, (wrb) a0  <-- 86
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 86, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 14, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 11, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 14, a4  = 10, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 86, (wrb) a0  <-- 85
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 85, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 15, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 12, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 15, a4  = 10, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 85, (wrb) a0  <-- 84
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 84, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 16, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 12, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 16, a4  = 10, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 84, (wrb) a0  <-- 83
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 83, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 17, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 13, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 17, a4  = 10, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 83, (wrb) a0  <-- 82
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 82, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 18, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 14, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 18, a4  = 10, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 82, (wrb) a0  <-- 81
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 81, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 19, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 15, (wrb) a4  <-- 1
      0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 19, a4  = 10, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 81, (wrb) a0  <-- 80
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 80, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 20, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 16, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 20, a4  = 20, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 80, (wrb) a0  <-- 79
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 79, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 21, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 16, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 21, a4  = 20, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 79, (wrb) a0  <-- 78
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 78, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 22, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 17, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 22, a4  = 20, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 78, (wrb) a0  <-- 77
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 77, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 23, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 18, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 23, a4  = 20, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 77, (wrb) a0  <-- 76
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 76, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 24, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 19, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 24, a4  = 20, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 76, (wrb) a0  <-- 75
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 75, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 25, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 20, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 25, a4  = 20, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 75, (wrb) a0  <-- 74
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 74, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 26, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 20, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 26, a4  = 20, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 74, (wrb) a0  <-- 73
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 73, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 27, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 21, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 27, a4  = 20, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 73, (wrb) a0  <-- 72
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 72, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 28, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 22, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 28, a4  = 20, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 72, (wrb) a0  <-- 71
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 71, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 29, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 23, (wrb) a4  <-- 2
      0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 29, a4  = 20, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 71, (wrb) a0  <-- 70
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 70, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 30, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 24, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 30, a4  = 30, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 70, (wrb) a0  <-- 69
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 69, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 31, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 24, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 31, a4  = 30, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 69, (wrb) a0  <-- 68
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 68, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 32, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 25, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 32, a4  = 30, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 68, (wrb) a0  <-- 67
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 67, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 33, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 26, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 33, a4  = 30, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 67, (wrb) a0  <-- 66
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 66, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 34, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 27, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 34, a4  = 30, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 66, (wrb) a0  <-- 65
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 65, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 35, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 28, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 35, a4  = 30, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 65, (wrb) a0  <-- 64
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 64, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 36, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 28, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 36, a4  = 30, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 64, (wrb) a0  <-- 63
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 63, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 37, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 29, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 37, a4  = 30, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 63, (wrb) a0  <-- 62
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 62, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 38, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 30, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 38, a4  = 30, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 62, (wrb) a0  <-- 61
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 61, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 39, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 31, (wrb) a4  <-- 3
      0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 39, a4  = 30, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 61, (wrb) a0  <-- 60
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 60, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 40, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 32, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 40, a4  = 40, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 60, (wrb) a0  <-- 59
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 59, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 41, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 32, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 41, a4  = 40, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 59, (wrb) a0  <-- 58
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 58, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 42, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 33, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 42, a4  = 40, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 58, (wrb) a0  <-- 57
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 42, (wrb) a1  <-- 43
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 57, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 43, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 34, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 43, a4  = 40, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 57, (wrb) a0  <-- 56
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 43, (wrb) a1  <-- 44
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 56, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 44, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 35, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 44, a4  = 40, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 56, (wrb) a0  <-- 55
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 44, (wrb) a1  <-- 45
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 55, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 45, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 36, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 45, a4  = 40, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 55, (wrb) a0  <-- 54
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 45, (wrb) a1  <-- 46
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 54, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 46, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 36, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 46, a4  = 40, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 54, (wrb) a0  <-- 53
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 46, (wrb) a1  <-- 47
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 53, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 47, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 37, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 47, a4  = 40, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 53, (wrb) a0  <-- 52
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 47, (wrb) a1  <-- 48
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 52, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 48, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 38, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 48, a4  = 40, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 52, (wrb) a0  <-- 51
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 48, (wrb) a1  <-- 49
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 51, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 49, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 39, (wrb) a4  <-- 4
      0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 49, a4  = 40, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 51, (wrb) a0  <-- 50
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 49, (wrb) a1  <-- 50
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 50, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 50, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 40, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 50, a4  = 50, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 50, (wrb) a0  <-- 49
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 50, (wrb) a1  <-- 51
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 49, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 51, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 40, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 51, a4  = 50, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 49, (wrb) a0  <-- 48
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 51, (wrb) a1  <-- 52
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 48, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 52, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 41, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 52, a4  = 50, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 48, (wrb) a0  <-- 47
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 52, (wrb) a1  <-- 53
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 47, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 53, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 42, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 53, a4  = 50, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 47, (wrb) a0  <-- 46
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 53, (wrb) a1  <-- 54
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 46, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 54, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 43, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 54, a4  = 50, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 46, (wrb) a0  <-- 45
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 54, (wrb) a1  <-- 55
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 45, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 55, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 44, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 55, a4  = 50, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 45, (wrb) a0  <-- 44
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 55, (wrb) a1  <-- 56
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 44, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 56, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 44, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 56, a4  = 50, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 44, (wrb) a0  <-- 43
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 56, (wrb) a1  <-- 57
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 43, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 57, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 45, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 57, a4  = 50, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 43, (wrb) a0  <-- 42
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 57, (wrb) a1  <-- 58
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 42, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 58, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 46, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 58, a4  = 50, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 42, (wrb) a0  <-- 41
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 58, (wrb) a1  <-- 59
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 41, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 59, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 47, (wrb) a4  <-- 5
      0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 59, a4  = 50, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 41, (wrb) a0  <-- 40
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 59, (wrb) a1  <-- 60
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 40, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 60, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 48, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 60, a4  = 60, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 40, (wrb) a0  <-- 39
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 60, (wrb) a1  <-- 61
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 39, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 61, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 48, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 61, a4  = 60, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 39, (wrb) a0  <-- 38
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 61, (wrb) a1  <-- 62
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 38, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 62, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 49, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 62, a4  = 60, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 38, (wrb) a0  <-- 37
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 62, (wrb) a1  <-- 63
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 37, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 63, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 50, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 63, a4  = 60, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 37, (wrb) a0  <-- 36
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 63, (wrb) a1  <-- 64
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 36, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 64, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 51, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 64, a4  = 60, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 36, (wrb) a0  <-- 35
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 64, (wrb) a1  <-- 65
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 35, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 65, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 52, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 65, a4  = 60, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 35, (wrb) a0  <-- 34
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 65, (wrb) a1  <-- 66
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 34, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 66, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 52, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 66, a4  = 60, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 34, (wrb) a0  <-- 33
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 66, (wrb) a1  <-- 67
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 33, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 67, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 53, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 67, a4  = 60, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 33, (wrb) a0  <-- 32
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 67, (wrb) a1  <-- 68
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 32, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 68, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 54, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 68, a4  = 60, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 32, (wrb) a0  <-- 31
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 68, (wrb) a1  <-- 69
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 31, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 69, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 55, (wrb) a4  <-- 6
      0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 69, a4  = 60, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 31, (wrb) a0  <-- 30
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 69, (wrb) a1  <-- 70
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 30, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 70, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 56, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 70, a4  = 70, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 30, (wrb) a0  <-- 29
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 70, (wrb) a1  <-- 71
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 29, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 71, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 56, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 71, a4  = 70, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 29, (wrb) a0  <-- 28
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 71, (wrb) a1  <-- 72
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 28, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 72, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 57, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 72, a4  = 70, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 28, (wrb) a0  <-- 27
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 72, (wrb) a1  <-- 73
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 27, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 73, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 58, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 73, a4  = 70, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 27, (wrb) a0  <-- 26
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 73, (wrb) a1  <-- 74
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 26, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 74, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 59, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 74, a4  = 70, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 26, (wrb) a0  <-- 25
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 74, (wrb) a1  <-- 75
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 25, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 75, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 60, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 75, a4  = 70, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 75, (wrb) a1  <-- 76
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 24, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 76, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 60, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 76, a4  = 70, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 76, (wrb) a1  <-- 77
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 23, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 77, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 61, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 77, a4  = 70, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 77, (wrb) a1  <-- 78
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 22, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 78, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 62, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 78, a4  = 70, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 78, (wrb) a1  <-- 79
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 21, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 79, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 63, (wrb) a4  <-- 7
      0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 79, a4  = 70, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 79, (wrb) a1  <-- 80
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 20, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 80, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 64, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 80, a4  = 80, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 80, (wrb) a1  <-- 81
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 19, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 81, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 64, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 81, a4  = 80, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 81, (wrb) a1  <-- 82
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 18, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 82, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 65, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 82, a4  = 80, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 82, (wrb) a1  <-- 83
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 17, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 83, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 66, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 83, a4  = 80, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 83, (wrb) a1  <-- 84
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 16, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 84, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 67, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 84, a4  = 80, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 84, (wrb) a1  <-- 85
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 15, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 85, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 68, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 85, a4  = 80, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 85, (wrb) a1  <-- 86
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 14, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 86, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 68, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 86, a4  = 80, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 86, (wrb) a1  <-- 87
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 13, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 87, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 69, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 87, a4  = 80, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 87, (wrb) a1  <-- 88
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 12, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 88, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 70, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 88, a4  = 80, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 88, (wrb) a1  <-- 89
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 11, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 89, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 71, (wrb) a4  <-- 8
      0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 89, a4  = 80, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 89, (wrb) a1  <-- 90
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 10, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 90, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 72, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 90, a4  = 90, (wrb) a4  <-- 0
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                                                #; (f:fpu) ft3  <-- 0.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 90, (wrb) a1  <-- 91
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 9, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 91, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 72, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 91, a4  = 90, (wrb) a4  <-- 1
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                                                #; (f:fpu) ft3  <-- 1.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 91, (wrb) a1  <-- 92
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 8, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 92, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 73, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 92, a4  = 90, (wrb) a4  <-- 2
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                                                #; (f:fpu) ft3  <-- 2.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 92, (wrb) a1  <-- 93
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 7, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 93, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 74, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 93, a4  = 90, (wrb) a4  <-- 3
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                                                #; (f:fpu) ft3  <-- 3.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 93, (wrb) a1  <-- 94
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 6, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 94, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 75, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 94, a4  = 90, (wrb) a4  <-- 4
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                                                #; (f:fpu) ft3  <-- 4.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 94, (wrb) a1  <-- 95
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 5, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 95, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 76, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 95, a4  = 90, (wrb) a4  <-- 5
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                                                #; (f:fpu) ft3  <-- 5.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 95, (wrb) a1  <-- 96
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 4, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 96, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 76, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 96, a4  = 90, (wrb) a4  <-- 6
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                                                #; (f:fpu) ft3  <-- 6.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 96, (wrb) a1  <-- 97
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 3, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 97, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 77, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 97, a4  = 90, (wrb) a4  <-- 7
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                                                #; (f:fpu) ft3  <-- 7.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 97, (wrb) a1  <-- 98
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 2, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 98, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 78, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 98, a4  = 90, (wrb) a4  <-- 8
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                                                #; (f:fpu) ft3  <-- 8.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 98, (wrb) a1  <-- 99
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 1, taken, goto 0x8000068c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:29)
      0x8000068c mulhu   a4, a1, a2             #; a1  = 99, a2  = 0xcccccccd
                                                #; (acc) a4  <-- 0x00375713
      0x80000690 srli    a4, a4, 3              #; a4  = 79, (wrb) a4  <-- 9
      0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
                                                #; (acc) a4  <-- 0x40e58733
      0x80000698 sub     a4, a1, a4             #; a1  = 99, a4  = 90, (wrb) a4  <-- 9
      0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
; init_data (bench_sp.c:28)
      0x800006a4 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                                                #; (f:fpu) ft3  <-- 9.0
      0x800006a8 addi    a1, a1, 1              #; a1  = 99, (wrb) a1  <-- 100
      0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800006ac bnez    a0, pc - 32            #; a0  = 0, not taken
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:0)
      0x800006b4 j       pc + 0x44              #; goto 0x800006f8
      0x800006b0 csrrci  a0, ssr, 1             #; 
; init_data (bench_sp.c:31)
      0x800006f8 ret                            #; ra  = 0x80000794, goto 0x80000794
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:44)
      0x80000794 csrr    s1, mcycle             #; mcycle = 4847, (wrb) s1  <-- 4847
; main (bench_sp.c:46)
      0x80000798 li      a2, 100                #; (wrb) a2  <-- 100
      0x8000079c mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x800007a0 mv      a1, s0                 #; s0  = 0x00100320, (wrb) a1  <-- 0x00100320
      0x800007a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007a4
      0x800007a8 jalr    ra, ra, 128            #; ra  = 0x800007a4, (wrb) ra  <-- 0x800007ac, goto 0x80000824
; scalarprod (scalarprod.c:4)
      0x80000824 li      a3, 1                  #; (wrb) a3  <-- 1
; scalarprod (scalarprod.c:6)
      0x80000828 blt     a2, a3, pc + 48        #; a2  = 100, a3  = 1, not taken
      0x8000082c addi    a6, a2, -1             #; a2  = 100, (wrb) a6  <-- 99
      0x80000830 slli    a4, a6, 3              #; a6  = 99, (wrb) a4  <-- 792
      0x80000834 add     a3, a4, a0             #; a4  = 792, a0  = 0x00100000, (wrb) a3  <-- 0x00100318
      0x80000838 add     t1, a4, a1             #; a4  = 792, a1  = 0x00100320, (wrb) t1  <-- 0x00100638
      0x8000083c srli    a5, a0, 20             #; a0  = 0x00100000, (wrb) a5  <-- 1
      0x80000840 snez    t0, a5                 #; a5  = 1, (wrb) t0  <-- 1
      0x80000844 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x80000848 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
      0x8000084c bgeu    a3, a4, pc + 20        #; a3  = 0x00100318, a4  = 792, taken, goto 0x80000860
; scalarprod (scalarprod.c:0)
      0x80000860 sltu    a3, a3, a7             #; a3  = 0x00100318, a7  = 0x00120001, (wrb) a3  <-- 1
; scalarprod (scalarprod.c:6)
      0x80000864 and     t0, t0, a3             #; t0  = 1, a3  = 1, (wrb) t0  <-- 1
      0x80000868 srli    a3, a1, 20             #; a1  = 0x00100320, (wrb) a3  <-- 1
      0x8000086c snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x80000870 bgeu    t1, a4, pc + 12        #; t1  = 0x00100638, a4  = 792, taken, goto 0x8000087c
; scalarprod (scalarprod.c:0)
      0x8000087c sltu    a4, t1, a7             #; t1  = 0x00100638, a7  = 0x00120001, (wrb) a4  <-- 1
; scalarprod (scalarprod.c:6)
      0x80000880 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x80000884 and     a3, t0, a3             #; t0  = 1, a3  = 1, (wrb) a3  <-- 1
      0x80000888 beqz    a3, pc + 96            #; a3  = 1, not taken
; scalarprod (scalarprod.c:0)
      0x8000088c li      a3, 8                  #; (wrb) a3  <-- 8
; scalarprod (scalarprod.c:6)
      0x80000890 li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000894 li      a5, 192                #; (wrb) a5  <-- 192
      0x80000898 scfgw   a6, a4                 #; a6  = 99, a4  = 64
      0x8000089c scfgw   a3, a5                 #; a3  = 8, a5  = 192
      0x800008a0 li      a4, 32                 #; (wrb) a4  <-- 32
      0x800008a4 scfgw   zero, a4               #; a4  = 32
      0x800008a8 scfgwi  a0, 768                #; a0  = 0x00100000
      0x800008ac li      a0, 1                  #; (wrb) a0  <-- 1
      0x800008b0 addi    a4, a0, 64             #; a0  = 1, (wrb) a4  <-- 65
      0x800008b4 addi    a5, a0, 192            #; a0  = 1, (wrb) a5  <-- 193
      0x800008b8 scfgw   a6, a4                 #; a6  = 99, a4  = 65
      0x800008bc scfgw   a3, a5                 #; a3  = 8, a5  = 193
      0x800008c0 addi    a0, a0, 32             #; a0  = 1, (wrb) a0  <-- 33
      0x800008c4 scfgw   zero, a0               #; a0  = 33
      0x800008c8 scfgwi  a1, 769                #; a1  = 0x00100320
      0x800008cc csrrsi  a0, ssr, 1             #; 
      0x800008d4 addi    a2, a2, -1             #; a2  = 100, (wrb) a2  <-- 99
      0x800008d0 fcvt.d.w fa0, zero             #; ac1  = 0
                                                #; (f:fpu) fa0  <-- 0.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 99, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 99, (wrb) a2  <-- 98
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 0.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 98, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 98, (wrb) a2  <-- 97
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 0.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 97, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 97, (wrb) a2  <-- 96
                                                #; (f:fpu) fa0  <-- 1.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 96, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 96, (wrb) a2  <-- 95
      0x800008dc bnez    a2, pc - 8             #; a2  = 95, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 5.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 95, (wrb) a2  <-- 94
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 5.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 94, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 94, (wrb) a2  <-- 93
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 14.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 14.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 93, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 93, (wrb) a2  <-- 92
                                                #; (f:fpu) fa0  <-- 30.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 92, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 30.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 92, (wrb) a2  <-- 91
      0x800008dc bnez    a2, pc - 8             #; a2  = 91, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 55.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 91, (wrb) a2  <-- 90
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 55.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 90, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 90, (wrb) a2  <-- 89
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 91.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 91.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 89, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 89, (wrb) a2  <-- 88
                                                #; (f:fpu) fa0  <-- 140.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 88, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 140.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 88, (wrb) a2  <-- 87
      0x800008dc bnez    a2, pc - 8             #; a2  = 87, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 204.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 87, (wrb) a2  <-- 86
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 204.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 86, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 86, (wrb) a2  <-- 85
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 285.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 285.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 85, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 85, (wrb) a2  <-- 84
                                                #; (f:fpu) fa0  <-- 285.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 84, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 285.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 84, (wrb) a2  <-- 83
      0x800008dc bnez    a2, pc - 8             #; a2  = 83, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 286.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 83, (wrb) a2  <-- 82
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 286.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 82, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 82, (wrb) a2  <-- 81
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 290.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 290.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 81, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 81, (wrb) a2  <-- 80
                                                #; (f:fpu) fa0  <-- 299.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 80, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 299.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 80, (wrb) a2  <-- 79
      0x800008dc bnez    a2, pc - 8             #; a2  = 79, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 315.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 79, (wrb) a2  <-- 78
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 315.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 78, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 78, (wrb) a2  <-- 77
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 340.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 340.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 77, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 77, (wrb) a2  <-- 76
                                                #; (f:fpu) fa0  <-- 376.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 76, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 376.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 76, (wrb) a2  <-- 75
      0x800008dc bnez    a2, pc - 8             #; a2  = 75, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 425.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 75, (wrb) a2  <-- 74
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 425.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 74, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 74, (wrb) a2  <-- 73
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 489.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 489.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 73, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 73, (wrb) a2  <-- 72
                                                #; (f:fpu) fa0  <-- 570.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 72, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 570.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 72, (wrb) a2  <-- 71
      0x800008dc bnez    a2, pc - 8             #; a2  = 71, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 570.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 71, (wrb) a2  <-- 70
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 570.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 70, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 70, (wrb) a2  <-- 69
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 571.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 571.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 69, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 69, (wrb) a2  <-- 68
                                                #; (f:fpu) fa0  <-- 575.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 68, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 575.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 68, (wrb) a2  <-- 67
      0x800008dc bnez    a2, pc - 8             #; a2  = 67, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 584.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 67, (wrb) a2  <-- 66
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 584.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 66, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 66, (wrb) a2  <-- 65
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 600.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 600.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 65, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 65, (wrb) a2  <-- 64
                                                #; (f:fpu) fa0  <-- 625.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 64, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 625.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 64, (wrb) a2  <-- 63
      0x800008dc bnez    a2, pc - 8             #; a2  = 63, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 661.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 63, (wrb) a2  <-- 62
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 661.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 62, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 62, (wrb) a2  <-- 61
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 710.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 710.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 61, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 61, (wrb) a2  <-- 60
                                                #; (f:fpu) fa0  <-- 774.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 60, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 774.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 60, (wrb) a2  <-- 59
      0x800008dc bnez    a2, pc - 8             #; a2  = 59, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 855.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 59, (wrb) a2  <-- 58
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 855.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 58, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 58, (wrb) a2  <-- 57
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 855.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 855.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 57, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 57, (wrb) a2  <-- 56
                                                #; (f:fpu) fa0  <-- 856.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 56, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 856.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 56, (wrb) a2  <-- 55
      0x800008dc bnez    a2, pc - 8             #; a2  = 55, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 860.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 55, (wrb) a2  <-- 54
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 860.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 54, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 54, (wrb) a2  <-- 53
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 869.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 869.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 53, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 53, (wrb) a2  <-- 52
                                                #; (f:fpu) fa0  <-- 885.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 52, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 885.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 52, (wrb) a2  <-- 51
      0x800008dc bnez    a2, pc - 8             #; a2  = 51, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 910.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 51, (wrb) a2  <-- 50
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 910.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 50, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 50, (wrb) a2  <-- 49
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 946.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 946.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 49, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 49, (wrb) a2  <-- 48
                                                #; (f:fpu) fa0  <-- 995.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 48, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 995.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 48, (wrb) a2  <-- 47
      0x800008dc bnez    a2, pc - 8             #; a2  = 47, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1059.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 47, (wrb) a2  <-- 46
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 1059.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 46, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 46, (wrb) a2  <-- 45
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1140.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 1140.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 45, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 45, (wrb) a2  <-- 44
                                                #; (f:fpu) fa0  <-- 1140.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 44, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 1140.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 44, (wrb) a2  <-- 43
      0x800008dc bnez    a2, pc - 8             #; a2  = 43, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1141.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 43, (wrb) a2  <-- 42
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1141.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 42, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 42, (wrb) a2  <-- 41
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1145.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 1145.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 41, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 41, (wrb) a2  <-- 40
                                                #; (f:fpu) fa0  <-- 1154.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 40, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 1154.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 40, (wrb) a2  <-- 39
      0x800008dc bnez    a2, pc - 8             #; a2  = 39, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1170.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 39, (wrb) a2  <-- 38
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 1170.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 38, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 38, (wrb) a2  <-- 37
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1195.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 1195.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 37, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 37, (wrb) a2  <-- 36
                                                #; (f:fpu) fa0  <-- 1231.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 36, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 1231.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 36, (wrb) a2  <-- 35
      0x800008dc bnez    a2, pc - 8             #; a2  = 35, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1280.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 35, (wrb) a2  <-- 34
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 1280.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 34, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 34, (wrb) a2  <-- 33
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1344.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 1344.0
; scalarprod (scalarprod.c:6)
      0x800008dc bnez    a2, pc - 8             #; a2  = 33, taken, goto 0x800008d4
      0x800008d4 addi    a2, a2, -1             #; a2  = 33, (wrb) a2  <-- 32
                                                #; (f:fpu) fa0  <-- 1425.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 32, taken, goto 0x800008d4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 1425.0
      0x800008d4 addi    a2, a2, -1             #; a2  = 32, (wrb) a2  <-- 31
      0x800008dc bnez    a2, pc - 8             #; a2  = 31, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1425.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 31, (wrb) a2  <-- 30
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 1425.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 30, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1426.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 30, (wrb) a2  <-- 29
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1426.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 29, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1430.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 29, (wrb) a2  <-- 28
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 1430.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 28, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1439.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 28, (wrb) a2  <-- 27
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 1439.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 27, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1455.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 27, (wrb) a2  <-- 26
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 1455.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 26, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1480.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 26, (wrb) a2  <-- 25
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 1480.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 25, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1516.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 1516.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 24, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1565.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 1565.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 23, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1629.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 1629.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 22, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1710.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 1710.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 21, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1710.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 1710.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 20, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1711.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1711.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 19, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1715.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 1715.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 18, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1724.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 1724.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 17, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1740.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 1740.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 16, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1765.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 1765.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 15, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1801.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 1801.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 14, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1850.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 1850.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 13, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1914.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 1914.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 12, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1995.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 1995.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 11, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1995.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 1995.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 10, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1996.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1996.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 9, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2000.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 2000.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 8, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2009.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 2009.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 7, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2025.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 2025.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 6, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2050.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 2050.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2086.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 2086.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2135.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 2135.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2199.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 2199.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2280.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 2280.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x800008d4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2280.0
; scalarprod (scalarprod.c:6)
      0x800008d4 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 2280.0
      0x800008dc bnez    a2, pc - 8             #; a2  = 0, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2281.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 2281.0
                                                #; (f:fpu) fa0  <-- 2285.0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 2285.0
                                                #; (f:fpu) fa0  <-- 2294.0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 2294.0
                                                #; (f:fpu) fa0  <-- 2310.0
; scalarprod (scalarprod.c:0)
      0x800008e4 j       pc + 0x24              #; goto 0x80000908
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 2310.0
                                                #; (f:fpu) fa0  <-- 2335.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 2335.0
                                                #; (f:fpu) fa0  <-- 2371.0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 2371.0
; scalarprod (scalarprod.c:9)
      0x80000908 ret                            #; ra  = 0x800007ac, goto 0x800007ac
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2420.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 2420.0
                                                #; (f:fpu) fa0  <-- 2484.0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 2484.0
                                                #; (f:fpu) fa0  <-- 2565.0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 2565.0
                                                #; (f:fpu) fa0  <-- 2565.0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 2565.0
                                                #; (f:fpu) fa0  <-- 2566.0
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:48)
      0x800007b0 csrr    a0, mcycle             #; mcycle = 5358, (wrb) a0  <-- 5358
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 2566.0
; main (bench_sp.c:50)
      0x800007b4 sub     a1, a0, s1             #; a0  = 5358, s1  = 4847, (wrb) a1  <-- 511
      0x800007b8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027b8
      0x800007bc addi    a0, a0, 1165           #; a0  = 0x800027b8, (wrb) a0  <-- 0x80002c45
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2570.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 2570.0
                                                #; (f:fpu) fa0  <-- 2579.0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 2579.0
                                                #; (f:fpu) fa0  <-- 2595.0
; main (bench_sp.c:50)
      0x800007c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007c0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 2595.0
      0x800007c4 jalr    ra, ra, 332            #; ra  = 0x800007c0, (wrb) ra  <-- 0x800007c8, goto 0x8000090c
; printf_ (printf.c:863)
      0x8000090c addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000910 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800007c8 ~~> Word[0x0011ff1c]
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2620.0
; printf_ (printf.c:863)
      0x80000914 mv      t0, a0                 #; a0  = 0x80002c45, (wrb) t0  <-- 0x80002c45
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 2620.0
      0x80000918 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x00120001 ~~> Word[0x0011ff3c]
      0x8000091c sw      a6, 40(sp)             #; sp  = 0x0011ff10, 99 ~~> Word[0x0011ff38]
                                                #; (f:fpu) fa0  <-- 2656.0
; scalarprod (scalarprod.c:7)
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 2656.0
                                                #; (f:fpu) fa0  <-- 2705.0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 2705.0
                                                #; (f:fpu) fa0  <-- 2769.0
      0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 2769.0
; scalarprod (scalarprod.c:0)
      0x800008e0 csrrci  a0, ssr, 1             #; 
                                                #; (f:fpu) fa0  <-- 2850.0
; main (bench_sp.c:46)
      0x800007ac fsgnj.d fs0, fa0, fa0          #; fa0  = 2850.0, fa0  = 2850.0
                                                #; (f:fpu) fs0  <-- 2850.0
; printf_ (printf.c:863)
      0x80000920 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
      0x80000924 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff30]
      0x80000928 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff2c]
      0x8000092c sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000930 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 511 ~~> Word[0x0011ff24]
      0x80000934 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000938 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x8000093c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000193c
      0x80000940 addi    a0, a0, -988           #; a0  = 0x8000193c, (wrb) a0  <-- 0x80001560
      0x80000944 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000948 li      a2, -1                 #; (wrb) a2  <-- -1
      0x8000094c addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000950 mv      a3, t0                 #; t0  = 0x80002c45, (wrb) a3  <-- 0x80002c45
      0x80000954 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000954
      0x80000958 jalr    ra, ra, 20             #; ra  = 0x80000954, (wrb) ra  <-- 0x8000095c, goto 0x80000968
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000968 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x8000096c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x8000095c ~~> Word[0x0011ff0c]
      0x80000970 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100320 ~~> Word[0x0011ff08]
      0x80000974 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 4847 ~~> Word[0x0011ff04]
      0x80000978 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
      0x8000097c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000980 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000984 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000988 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x8000098c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000990 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000994 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000998 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x8000099c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x800009a0 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x800009a4 mv      s0, a3                 #; a3  = 0x80002c45, (wrb) s0  <-- 0x80002c45
      0x800009a8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800009ac mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x800009b0 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009b4 mv      s2, a0                 #; a0  = 0x80001560, (wrb) s2  <-- 0x80001560
      0x800009b8 j       pc + 0xc               #; goto 0x800009c4
      0x800009c4 li      s8, 0                  #; (wrb) s8  <-- 0
      0x800009c8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800009cc li      s11, 16                #; (wrb) s11 <-- 16
      0x800009d0 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800009d4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x800009d8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x800009dc sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x800009e0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x800009e4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x800009e8 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009ec addi    s10, s0, 2             #; s0  = 0x80002c45, (wrb) s10 <-- 0x80002c47
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009f0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x800009f4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009f8 lbu     a0, 0(s0)              #; s0  = 0x80002c45, a0  <~~ Byte[0x80002c45]
                                                #; (lsu) a0  <-- 99
      0x800009fc beqz    a0, pc + 2824          #; a0  = 99, not taken
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 0
      0x80001580 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 1 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 0, (wrb) a4  <-- 0x80002f94
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f94, 99 ~~> Byte[0x80002fdc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 1
      0x80001594 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001598 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x800015a0 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c45, (wrb) s0  <-- 0x80002c46
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c47, (wrb) s10 <-- 0x80002c48
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c46, a0  <~~ Byte[0x80002c46]
                                                #; (lsu) a0  <-- 121
      0x80000a28 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 121, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 1
      0x80001580 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 2 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 1, (wrb) a4  <-- 0x80002f95
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f95, 121 ~~> Byte[0x80002fdd]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 2
      0x80001594 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001598 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
      0x800015a0 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c46, (wrb) s0  <-- 0x80002c47
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c48, (wrb) s10 <-- 0x80002c49
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c47, a0  <~~ Byte[0x80002c47]
                                                #; (lsu) a0  <-- 99
      0x80000a28 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 2
      0x80001580 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 3 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 2, (wrb) a4  <-- 0x80002f96
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f96, 99 ~~> Byte[0x80002fde]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 3
      0x80001594 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001598 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x800015a0 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c47, (wrb) s0  <-- 0x80002c48
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c49, (wrb) s10 <-- 0x80002c4a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c48, a0  <~~ Byte[0x80002c48]
                                                #; (lsu) a0  <-- 108
      0x80000a28 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 108, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 3
      0x80001580 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 4 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 3, (wrb) a4  <-- 0x80002f97
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f97, 108 ~~> Byte[0x80002fdf]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 4
      0x80001594 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001598 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
      0x800015a0 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c48, (wrb) s0  <-- 0x80002c49
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4a, (wrb) s10 <-- 0x80002c4b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c49, a0  <~~ Byte[0x80002c49]
                                                #; (lsu) a0  <-- 101
      0x80000a28 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 4
      0x80001580 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 5 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 4, (wrb) a4  <-- 0x80002f98
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f98, 101 ~~> Byte[0x80002fe0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 5
      0x80001594 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001598 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800015a0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c49, (wrb) s0  <-- 0x80002c4a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4b, (wrb) s10 <-- 0x80002c4c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c4a, a0  <~~ Byte[0x80002c4a]
                                                #; (lsu) a0  <-- 115
      0x80000a28 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 115, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 5
      0x80001580 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 6 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 5, (wrb) a4  <-- 0x80002f99
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f99, 115 ~~> Byte[0x80002fe1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 6
      0x80001594 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001598 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
      0x800015a0 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c4a, (wrb) s0  <-- 0x80002c4b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4c, (wrb) s10 <-- 0x80002c4d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c4b, a0  <~~ Byte[0x80002c4b]
                                                #; (lsu) a0  <-- 32
      0x80000a28 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 6
      0x80001580 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 7 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 6, (wrb) a4  <-- 0x80002f9a
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9a, 32 ~~> Byte[0x80002fe2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 7
      0x80001594 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001598 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015a0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c4b, (wrb) s0  <-- 0x80002c4c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4d, (wrb) s10 <-- 0x80002c4e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c4c, a0  <~~ Byte[0x80002c4c]
                                                #; (lsu) a0  <-- 61
      0x80000a28 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 7
      0x80001580 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 8 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 7, (wrb) a4  <-- 0x80002f9b
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9b, 61 ~~> Byte[0x80002fe3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 8
      0x80001594 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001598 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800015a0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c4c, (wrb) s0  <-- 0x80002c4d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4e, (wrb) s10 <-- 0x80002c4f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c4d, a0  <~~ Byte[0x80002c4d]
                                                #; (lsu) a0  <-- 32
      0x80000a28 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 8
      0x80001580 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 9 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 8, (wrb) a4  <-- 0x80002f9c
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9c, 32 ~~> Byte[0x80002fe4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 9
      0x80001594 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001598 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015a0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c4d, (wrb) s0  <-- 0x80002c4e
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4f, (wrb) s10 <-- 0x80002c50
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c4e, a0  <~~ Byte[0x80002c4e]
                                                #; (lsu) a0  <-- 37
      0x80000a28 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a30
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000a30 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a34 j       pc + 0x10              #; goto 0x80000a44
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000a44 lbu     a0, -1(s10)            #; s10 = 0x80002c50, a0  <~~ Byte[0x80002c4f]
                                                #; (lsu) a0  <-- 102
      0x80000a48 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000a4c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a84
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a84 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000a88 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a8c addi    a1, s10, -1            #; s10 = 0x80002c50, (wrb) a1  <-- 0x80002c4f
      0x80000a90 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000a94 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b10
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000b10 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000b14 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b64
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b64 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b68 mv      s10, a1                #; a1  = 0x80002c4f, (wrb) s10 <-- 0x80002c4f
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000b6c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b70 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b74 j       pc + 0xc               #; goto 0x80000b80
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000b80 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000b84 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000b88 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000b8c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000b90 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000b94 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000bf8
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000bf8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000bfc li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c00 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c04 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000c08 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c08
      0x80000c0c addi    a2, a2, 200            #; a2  = 0x80002c08, (wrb) a2  <-- 0x80002cd0
      0x80000c10 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002cd0, (wrb) a1  <-- 0x80002dd4
      0x80000c14 lw      a2, 0(a1)              #; a1  = 0x80002dd4, a2  <~~ Word[0x80002dd4]
      0x80000c18 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000c1c li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c50
      0x80000c20 jr      a2                     #; a2  = 0x80000c50, goto 0x80000c50
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000c50 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000c54 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000c5c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000c60 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000c68 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000c6c mv      a0, s2                 #; s2  = 0x80001560, (wrb) a0  <-- 0x80001560
      0x80000c64 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0000000
      0x80000c70 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c74 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
      0x80000c78 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c7c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000c80 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000c84 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000c88 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c88
      0x80000c8c jalr    ra, ra, -1656          #; ra  = 0x80001c88, (wrb) ra  <-- 0x80000c90, goto 0x80001610
; _ftoa (printf.c:340)
      0x80001610 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001614 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000c90 ~~> Word[0x0011fe9c]
      0x80001618 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x8000161c sw      s1, 100(sp)            #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe94]
      0x80001620 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001560 ~~> Word[0x0011fe90]
      0x80001624 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001628 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x8000162c sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001630 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001634 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001638 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x8000163c sw      s9, 68(sp)             #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe74]
      0x80001640 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c4f ~~> Word[0x0011fe70]
      0x80001644 fsd     fs0, 56(sp)            #; 2850.0 ~~> Doub[0x0011fe68]
      0x80001648 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x8000164c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x80001650 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003650
      0x80001654 addi    s1, s1, -1896          #; s1  = 0x80003650, (wrb) s1  <-- 0x80002ee8
      0x80001658 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002ee8]
; _ftoa (printf.c:351)
      0x80001660 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001664 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001668 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x8000165c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
      0x8000166c mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
      0x80001670 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001674 mv      s7, a0                 #; a0  = 0x80001560, (wrb) s7  <-- 0x80001560
; _ftoa (printf.c:351)
      0x80001678 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001768
; _ftoa (printf.c:0)
      0x8000176c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000276c
      0x80001768 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x80001770 addi    a0, a0, 1924           #; a0  = 0x8000276c, (wrb) a0  <-- 0x80002ef0
      0x80001774 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001778 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x8000177c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001798
; _ftoa (printf.c:0)
      0x80001798 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002798
      0x8000179c addi    a0, a0, 1888           #; a0  = 0x80002798, (wrb) a0  <-- 0x80002ef8
      0x800017a4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027a4
      0x800017a8 addi    a0, a0, 1884           #; a0  = 0x800027a4, (wrb) a0  <-- 0x80002f00
      0x800017a0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef8]
      0x800017ac fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f00]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x800017b0 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x800017b4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x800017b8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800017bc bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018b8
; _ftoa (printf.c:374)
      0x800018b8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x800018bc li      s8, 6                  #; (wrb) s8  <-- 6
      0x800018c0 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018c8
; _ftoa (printf.c:0)
      0x800018c8 li      a0, 10                 #; (wrb) a0  <-- 10
      0x800018cc fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
                                                #; (f:fpu) fs2  <-- 0.0000000
; _ftoa (printf.c:378)
      0x800018d0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001908
; _ftoa (printf.c:0)
      0x80001908 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x8000190c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001910 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002910
      0x80001914 addi    a1, a1, 1296           #; a1  = 0x80002910, (wrb) a1  <-- 0x80002e20
      0x80001918 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e20, (wrb) a0  <-- 0x80002e50
      0x8000191c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e50]
; _ftoa (printf.c:383)
      0x80001920 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:384)
      0x80001924 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001928 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0000000
      0x8000192c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
; _ftoa (printf.c:0)
      0x80001930 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002930
      0x80001934 addi    a0, a0, 1496           #; a0  = 0x80002930, (wrb) a0  <-- 0x80002f08
                                                #; (f:fpu) ft2  <-- 0.0000000
      0x80001938 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f08]
; _ftoa (printf.c:385)
      0x8000193c fcvt.wu.d a0, ft2              #; ft2  = 0.0000000
; _ftoa (printf.c:386)
      0x80001940 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001944 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000000, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0000000
; _ftoa (printf.c:388)
      0x80001948 fle.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
      0x8000194c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000196c
; _ftoa (printf.c:396)
      0x8000196c flt.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
      0x80001970 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001984
; _ftoa (printf.c:403)
      0x80001988 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001984 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x8000198c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001990 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001994 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001998 li      t0, 32                 #; (wrb) t0  <-- 32
      0x8000199c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x800019a0 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x800019a4 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x800019a8 li      a6, 10                 #; (wrb) a6  <-- 10
      0x800019ac li      a7, 9                  #; (wrb) a7  <-- 9
      0x800019b0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x800019b4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x800019b8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800019bc srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x800019c0 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x800019c4 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x800019c8 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x800019cc add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x800019d0 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x800019d4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x800019d8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x800019dc add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x800019e0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x800019e4 li      a3, 30                 #; (wrb) a3  <-- 30
      0x800019e8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x800019ec xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x800019f0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x800019f4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x800019f8 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x800019fc addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001a00 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001a04 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001a08 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001a0c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001a10 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001a14 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001a18 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001a1c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001a20 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a28
      0x80001a28 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001a2c li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001a30 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a30
      0x80001a34 jalr    ra, ra, -1240          #; ra  = 0x80000a30, (wrb) ra  <-- 0x80001a38, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001a38, goto 0x80001a38
; _ftoa (printf.c:0)
      0x80001a38 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001a40 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001a48 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a50 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
      0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001a40 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001a48 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a50 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
      0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001a40 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001a48 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a50 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
      0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001a40 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001a48 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a50 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
      0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001a40 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001a48 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001a50 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001a54 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001a58 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001a5c j       pc + 0x28              #; goto 0x80001a84
      0x80001a84 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001a88 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001a8c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001a90 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001a94 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001a98 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001a9c j       pc + 0x8               #; goto 0x80001aa4
; _ftoa (printf.c:0)
      0x80001aa4 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001aa8 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001aac bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001ab0 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001ab8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001ab4 flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
      0x80001abc addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001ac0 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001ac4 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001ac8 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001acc beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001ad0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001ad4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001ad8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001adc add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001ae0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001ae4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001ae8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001aec addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001af0 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001af4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001af8 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001afc mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001b00 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001b04 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001b08 j       pc + 0x8               #; goto 0x80001b10
; _ftoa (printf.c:440)
      0x80001b10 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001b14 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001b18 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b84
; _ftoa (printf.c:0)
      0x80001b84 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001b88 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001b8c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ba4
; _ftoa (printf.c:453)
      0x80001ba4 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001ba8 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001bac andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001bb0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001bdc
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001bdc snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001be0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001be4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001be8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001bec andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001bf0 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001bf4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c20
; _ftoa (printf.c:0)
      0x80001c20 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c24 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001c28 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001c34 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001c38 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                                                #; (lsu) a0  <-- 48
      0x80001c40 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 9
      0x80001580 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 10 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 9, (wrb) a4  <-- 0x80002f9d
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9d, 48 ~~> Byte[0x80002fe5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 10
      0x80001594 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001598 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001c50 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001c34 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001c38 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 10
      0x80001580 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 11 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 10, (wrb) a4  <-- 0x80002f9e
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9e, 46 ~~> Byte[0x80002fe6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 11
      0x80001594 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001598 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800015a0 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001c50 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001c34 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001c38 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 11
      0x80001580 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 12 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 11, (wrb) a4  <-- 0x80002f9f
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9f, 48 ~~> Byte[0x80002fe7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 12
      0x80001594 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001598 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001c50 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001c34 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001c38 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 12
      0x80001580 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 13 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 12, (wrb) a4  <-- 0x80002fa0
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa0, 48 ~~> Byte[0x80002fe8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 13
      0x80001594 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001598 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001c50 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001c34 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001c38 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 13
      0x80001580 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 14 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 13, (wrb) a4  <-- 0x80002fa1
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa1, 48 ~~> Byte[0x80002fe9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 14
      0x80001594 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001598 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001c50 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001c34 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001c38 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 14
      0x80001580 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 15 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 14, (wrb) a4  <-- 0x80002fa2
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa2, 48 ~~> Byte[0x80002fea]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 15
      0x80001594 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001598 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001c50 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001c34 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001c38 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 15
      0x80001580 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 16 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 15, (wrb) a4  <-- 0x80002fa3
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa3, 48 ~~> Byte[0x80002feb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 16
      0x80001594 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001598 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001c50 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001c34 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001c38 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 16
      0x80001580 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 17 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 16, (wrb) a4  <-- 0x80002fa4
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa4, 48 ~~> Byte[0x80002fec]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 17
      0x80001594 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001598 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
      0x80001c50 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001c58 j       pc + 0x8               #; goto 0x80001c60
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c60 sub     a0, s1, s4             #; s1  = 17, s4  = 9, (wrb) a0  <-- 8
      0x80001c64 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001c68 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001c6c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001c70 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001c74 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001ca4
; _ftoa (printf.c:0)
      0x80001ca4 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
; _ftoa (printf.c:462)
      0x80001ca8 mv      a0, s0                 #; s0  = 17, (wrb) a0  <-- 17
      0x80001cac fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
                                                #; (f:lsu) fs2  <-- 0.0
      0x80001cb8 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001cb0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
      0x80001cb4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 2850.0
                                                #; (lsu) s10 <-- 0x80002c4f
      0x80001cbc lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 9
      0x80001cc0 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001cc4 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001cc8 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001ccc lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001cd0 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001cd4 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001cd8 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001560
      0x80001cdc lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 9
      0x80001ce0 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001ce4 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001ce8 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000c90
      0x80001cec ret                            #; ra  = 0x80000c90, goto 0x80000c90
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c90 j       pc + 0x7c0             #; goto 0x80001450
      0x80001450 mv      s8, a0                 #; a0  = 17, (wrb) s8  <-- 17
      0x80001454 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001458 li      s7, 46                 #; (wrb) s7  <-- 46
      0x8000145c addi    s0, s10, 1             #; s10 = 0x80002c4f, (wrb) s0  <-- 0x80002c50
      0x80001460 j       pc - 0xa74             #; goto 0x800009ec
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009ec addi    s10, s0, 2             #; s0  = 0x80002c50, (wrb) s10 <-- 0x80002c52
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009f0 mv      s9, s8                 #; s8  = 17, (wrb) s9  <-- 17
      0x800009f4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009f8 lbu     a0, 0(s0)              #; s0  = 0x80002c50, a0  <~~ Byte[0x80002c50]
                                                #; (lsu) a0  <-- 10
      0x800009fc beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 17, (wrb) s1  <-- 18
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 17
      0x80001580 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 18 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 17, (wrb) a4  <-- 0x80002fa5
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa5, 10 ~~> Byte[0x80002fed]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 18
      0x80001594 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
      0x80001598 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800015a0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800015a4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800015a8 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015ac add     a0, a3, a2             #; a3  = 0x80002f94, a2  = 0, (wrb) a0  <-- 0x80002f94
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 addi    a2, a0, 72             #; a0  = 0x80002f94, (wrb) a2  <-- 0x80002fdc
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 sw      zero, 12(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa0]
      0x800015b8 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800015bc sw      a3, 8(a0)              #; a0  = 0x80002f94, 64 ~~> Word[0x80002f9c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015c0 sw      zero, 20(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa8]
      0x800015c4 li      a3, 1                  #; (wrb) a3  <-- 1
      0x800015c8 sw      a3, 16(a0)             #; a0  = 0x80002f94, 1 ~~> Word[0x80002fa4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015cc sw      zero, 28(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb0]
      0x800015d0 sw      a2, 24(a0)             #; a0  = 0x80002f94, 0x80002fdc ~~> Word[0x80002fac]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015d4 lw      a2, 0(a1)              #; a1  = 0x80002f94, a2  <~~ Word[0x80002f94]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015d8 addi    a3, a0, 8              #; a0  = 0x80002f94, (wrb) a3  <-- 0x80002f9c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc sw      zero, 36(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb8]
                                                #; (lsu) a2  <-- 18
      0x800015e0 sw      a2, 32(a0)             #; a0  = 0x80002f94, 18 ~~> Word[0x80002fb4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015e4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035e4
      0x800015e8 addi    a0, a0, -1892          #; a0  = 0x800035e4, (wrb) a0  <-- 0x80002e80
      0x800015ec sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002f9c ~~> Word[0x80002e80]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035f0
      0x800015f4 addi    a0, a0, -1840          #; a0  = 0x800035f0, (wrb) a0  <-- 0x80002ec0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
      0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 1
      0x800015fc beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001604 sw      zero, 0(a1)            #; a1  = 0x80002f94, 0 ~~> Word[0x80002f94]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c50, (wrb) s0  <-- 0x80002c51
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c52, (wrb) s10 <-- 0x80002c53
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 18, (wrb) s9  <-- 18
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c51, a0  <~~ Byte[0x80002c51]
                                                #; (lsu) a0  <-- 0
      0x80000a28 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000a2c j       pc + 0xad8             #; goto 0x80001504
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001504 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
      0x80001508 bltu    s9, s5, pc + 8         #; s9  = 18, s5  = -1, taken, goto 0x80001510
      0x80001510 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001514 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001518 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x8000151c jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80001520, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001520, goto 0x80001520
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001520 mv      a0, s9                 #; s9  = 18, (wrb) a0  <-- 18
      0x80001524 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001528 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x8000152c lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001530 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001534 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x80001538 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x8000153c lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001540 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001544 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x80001548 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0x00100000
      0x8000154c lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 4847
      0x80001550 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x00100320
      0x80001554 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001558 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x8000095c
      0x8000155c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; printf_ (printf.c:869)
      0x8000095c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000960 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x800007c8
      0x80000964 ret                            #; ra  = 0x800007c8, goto 0x800007c8
; main (bench_sp.c:0)
      0x800007c8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027c8
      0x800007cc addi    a0, a0, 1808           #; a0  = 0x800027c8, (wrb) a0  <-- 0x80002ed8
      0x800007d0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ed8]
                                                #; (f:lsu) ft0  <-- 2850.0
; main (bench_sp.c:57)
      0x800007e0 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
      0x800007d4 fadd.d  ft0, fs0, ft0          #; fs0  = 2850.0, ft0  = 2850.0
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft0  <-- 5700.0
      0x800007e4 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
      0x800007d8 fsgnjx.d fs0, ft0, ft0         #; ft0  = 5700.0, ft0  = 5700.0
      0x800007e8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027e8
                                                #; (f:fpu) fs0  <-- 5700.0
      0x800007ec addi    a0, a0, 1130           #; a0  = 0x800027e8, (wrb) a0  <-- 0x80002c52
      0x800007dc fsd     fs0, 0(sp)             #; 5700.0 ~~> Doub[0x0011ff40]
                                                #; (lsu) a3  <-- 0
      0x800007f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007f0
      0x800007f4 jalr    ra, ra, 284            #; ra  = 0x800007f0, (wrb) ra  <-- 0x800007f8, goto 0x8000090c
; printf_ (printf.c:863)
      0x8000090c addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000910 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800007f8 ~~> Word[0x0011ff1c]
      0x80000914 mv      t0, a0                 #; a0  = 0x80002c52, (wrb) t0  <-- 0x80002c52
      0x80000918 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff3c]
      0x8000091c sw      a6, 40(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff38]
      0x80000920 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 18 ~~> Word[0x0011ff34]
      0x80000924 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
      0x80000928 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x8000092c sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000930 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
      0x80000934 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000938 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x8000093c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000193c
      0x80000940 addi    a0, a0, -988           #; a0  = 0x8000193c, (wrb) a0  <-- 0x80001560
      0x80000944 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000948 li      a2, -1                 #; (wrb) a2  <-- -1
      0x8000094c addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000950 mv      a3, t0                 #; t0  = 0x80002c52, (wrb) a3  <-- 0x80002c52
      0x80000954 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000954
      0x80000958 jalr    ra, ra, 20             #; ra  = 0x80000954, (wrb) ra  <-- 0x8000095c, goto 0x80000968
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000968 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x8000096c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x8000095c ~~> Word[0x0011ff0c]
      0x80000970 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100320 ~~> Word[0x0011ff08]
      0x80000974 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 4847 ~~> Word[0x0011ff04]
      0x80000978 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
      0x8000097c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000980 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000984 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000988 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x8000098c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000990 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000994 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000998 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x8000099c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x800009a0 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x800009a4 mv      s0, a3                 #; a3  = 0x80002c52, (wrb) s0  <-- 0x80002c52
      0x800009a8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800009ac mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x800009b0 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009b4 mv      s2, a0                 #; a0  = 0x80001560, (wrb) s2  <-- 0x80001560
      0x800009b8 j       pc + 0xc               #; goto 0x800009c4
      0x800009c4 li      s8, 0                  #; (wrb) s8  <-- 0
      0x800009c8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800009cc li      s11, 16                #; (wrb) s11 <-- 16
      0x800009d0 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800009d4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x800009d8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x800009dc sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x800009e0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x800009e4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x800009e8 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009ec addi    s10, s0, 2             #; s0  = 0x80002c52, (wrb) s10 <-- 0x80002c54
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009f0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x800009f4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009f8 lbu     a0, 0(s0)              #; s0  = 0x80002c52, a0  <~~ Byte[0x80002c52]
                                                #; (lsu) a0  <-- 101
      0x800009fc beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 0
      0x80001580 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 1 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 0, (wrb) a4  <-- 0x80002f94
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f94, 101 ~~> Byte[0x80002fdc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 1
      0x80001594 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001598 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800015a0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c52, (wrb) s0  <-- 0x80002c53
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c54, (wrb) s10 <-- 0x80002c55
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c53, a0  <~~ Byte[0x80002c53]
                                                #; (lsu) a0  <-- 114
      0x80000a28 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 1
      0x80001580 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 2 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 1, (wrb) a4  <-- 0x80002f95
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f95, 114 ~~> Byte[0x80002fdd]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 2
      0x80001594 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001598 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015a0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c53, (wrb) s0  <-- 0x80002c54
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c55, (wrb) s10 <-- 0x80002c56
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c54, a0  <~~ Byte[0x80002c54]
                                                #; (lsu) a0  <-- 114
      0x80000a28 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 2
      0x80001580 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 3 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 2, (wrb) a4  <-- 0x80002f96
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f96, 114 ~~> Byte[0x80002fde]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 3
      0x80001594 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001598 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015a0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c54, (wrb) s0  <-- 0x80002c55
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c56, (wrb) s10 <-- 0x80002c57
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c55, a0  <~~ Byte[0x80002c55]
                                                #; (lsu) a0  <-- 111
      0x80000a28 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 3
      0x80001580 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 4 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 3, (wrb) a4  <-- 0x80002f97
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f97, 111 ~~> Byte[0x80002fdf]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 4
      0x80001594 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001598 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800015a0 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c55, (wrb) s0  <-- 0x80002c56
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c57, (wrb) s10 <-- 0x80002c58
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c56, a0  <~~ Byte[0x80002c56]
                                                #; (lsu) a0  <-- 114
      0x80000a28 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 4
      0x80001580 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 5 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 4, (wrb) a4  <-- 0x80002f98
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f98, 114 ~~> Byte[0x80002fe0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 5
      0x80001594 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001598 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015a0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c56, (wrb) s0  <-- 0x80002c57
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c58, (wrb) s10 <-- 0x80002c59
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c57, a0  <~~ Byte[0x80002c57]
                                                #; (lsu) a0  <-- 32
      0x80000a28 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 5
      0x80001580 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 6 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 5, (wrb) a4  <-- 0x80002f99
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f99, 32 ~~> Byte[0x80002fe1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 6
      0x80001594 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001598 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015a0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c57, (wrb) s0  <-- 0x80002c58
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c59, (wrb) s10 <-- 0x80002c5a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c58, a0  <~~ Byte[0x80002c58]
                                                #; (lsu) a0  <-- 61
      0x80000a28 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 6
      0x80001580 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 7 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 6, (wrb) a4  <-- 0x80002f9a
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9a, 61 ~~> Byte[0x80002fe2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 7
      0x80001594 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001598 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800015a0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c58, (wrb) s0  <-- 0x80002c59
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c5a, (wrb) s10 <-- 0x80002c5b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c59, a0  <~~ Byte[0x80002c59]
                                                #; (lsu) a0  <-- 32
      0x80000a28 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 7
      0x80001580 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 8 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 7, (wrb) a4  <-- 0x80002f9b
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9b, 32 ~~> Byte[0x80002fe3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 8
      0x80001594 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001598 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015a0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c59, (wrb) s0  <-- 0x80002c5a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c5b, (wrb) s10 <-- 0x80002c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c5a, a0  <~~ Byte[0x80002c5a]
                                                #; (lsu) a0  <-- 37
      0x80000a28 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a00
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a30
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000a30 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a34 j       pc + 0x10              #; goto 0x80000a44
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000a44 lbu     a0, -1(s10)            #; s10 = 0x80002c5c, a0  <~~ Byte[0x80002c5b]
                                                #; (lsu) a0  <-- 102
      0x80000a48 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000a4c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a84
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a84 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000a88 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a8c addi    a1, s10, -1            #; s10 = 0x80002c5c, (wrb) a1  <-- 0x80002c5b
      0x80000a90 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000a94 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b10
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000b10 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000b14 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b64
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b64 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b68 mv      s10, a1                #; a1  = 0x80002c5b, (wrb) s10 <-- 0x80002c5b
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000b6c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b70 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b74 j       pc + 0xc               #; goto 0x80000b80
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000b80 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000b84 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000b88 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000b8c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000b90 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000b94 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000bf8
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000bf8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000bfc li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c00 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c04 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000c08 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c08
      0x80000c0c addi    a2, a2, 200            #; a2  = 0x80002c08, (wrb) a2  <-- 0x80002cd0
      0x80000c10 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002cd0, (wrb) a1  <-- 0x80002dd4
      0x80000c14 lw      a2, 0(a1)              #; a1  = 0x80002dd4, a2  <~~ Word[0x80002dd4]
      0x80000c18 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000c1c li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c50
      0x80000c20 jr      a2                     #; a2  = 0x80000c50, goto 0x80000c50
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000c50 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000c54 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000c5c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000c60 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000c68 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000c6c mv      a0, s2                 #; s2  = 0x80001560, (wrb) a0  <-- 0x80001560
      0x80000c64 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
      0x80000c70 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 0.0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000c74 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000c78 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c7c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000c80 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000c84 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000c88 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c88
      0x80000c8c jalr    ra, ra, -1656          #; ra  = 0x80001c88, (wrb) ra  <-- 0x80000c90, goto 0x80001610
; _ftoa (printf.c:340)
      0x80001610 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001614 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000c90 ~~> Word[0x0011fe9c]
      0x80001618 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x8000161c sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001620 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001560 ~~> Word[0x0011fe90]
      0x80001624 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001628 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x8000162c sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001630 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001634 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001638 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x8000163c sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001640 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c5b ~~> Word[0x0011fe70]
      0x80001644 fsd     fs0, 56(sp)            #; 5700.0 ~~> Doub[0x0011fe68]
      0x80001650 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003650
      0x80001648 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001654 addi    s1, s1, -1896          #; s1  = 0x80003650, (wrb) s1  <-- 0x80002ee8
      0x8000164c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
; _ftoa (printf.c:351)
      0x80001660 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001658 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002ee8]
; _ftoa (printf.c:0)
      0x80001664 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
      0x80001668 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x8000166c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001670 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001674 mv      s7, a0                 #; a0  = 0x80001560, (wrb) s7  <-- 0x80001560
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:351)
      0x8000165c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
                                                #; (acc) a6  <-- 0x0e049863
      0x80001678 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001768
; _ftoa (printf.c:0)
      0x8000176c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000276c
      0x80001768 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
      0x80001770 addi    a0, a0, 1924           #; a0  = 0x8000276c, (wrb) a0  <-- 0x80002ef0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001774 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001778 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x8000177c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001798
; _ftoa (printf.c:0)
      0x80001798 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002798
      0x8000179c addi    a0, a0, 1888           #; a0  = 0x80002798, (wrb) a0  <-- 0x80002ef8
      0x800017a4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027a4
      0x800017a8 addi    a0, a0, 1884           #; a0  = 0x800027a4, (wrb) a0  <-- 0x80002f00
      0x800017a0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef8]
      0x800017ac fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f00]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x800017b0 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x800017b4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x800017b8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800017bc bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018b8
; _ftoa (printf.c:374)
      0x800018b8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x800018bc li      s8, 6                  #; (wrb) s8  <-- 6
      0x800018c0 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018c8
; _ftoa (printf.c:0)
      0x800018c8 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x800018d0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001908
; _ftoa (printf.c:0)
      0x800018cc fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001908 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x8000190c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001910 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002910
      0x80001914 addi    a1, a1, 1296           #; a1  = 0x80002910, (wrb) a1  <-- 0x80002e20
      0x80001918 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e20, (wrb) a0  <-- 0x80002e50
      0x8000191c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e50]
; _ftoa (printf.c:383)
      0x80001920 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001924 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001930 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002930
      0x80001928 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
      0x80001934 addi    a0, a0, 1496           #; a0  = 0x80002930, (wrb) a0  <-- 0x80002f08
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x8000192c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x80001938 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f08]
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x8000193c fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001940 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001944 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001948 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x8000194c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000196c
; _ftoa (printf.c:396)
      0x8000196c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001970 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001984
; _ftoa (printf.c:403)
      0x80001988 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001984 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x8000198c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001990 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001994 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001998 li      t0, 32                 #; (wrb) t0  <-- 32
      0x8000199c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x800019a0 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x800019a4 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x800019a8 li      a6, 10                 #; (wrb) a6  <-- 10
      0x800019ac li      a7, 9                  #; (wrb) a7  <-- 9
      0x800019b0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x800019b4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x800019b8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800019bc srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x800019c0 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x800019c4 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x800019c8 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x800019cc add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x800019d0 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x800019d4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x800019d8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x800019dc add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x800019e0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x800019e4 li      a3, 30                 #; (wrb) a3  <-- 30
      0x800019e8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x800019ec xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x800019f0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x800019f4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x800019f8 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x800019fc addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001a00 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001a04 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001a08 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001a0c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001a10 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001a14 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001a18 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001a1c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001a20 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a28
      0x80001a28 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001a2c li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001a30 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a30
      0x80001a34 jalr    ra, ra, -1240          #; ra  = 0x80000a30, (wrb) ra  <-- 0x80001a38, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001a38, goto 0x80001a38
; _ftoa (printf.c:0)
      0x80001a38 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001a40 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001a48 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a50 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
      0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001a40 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001a48 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a50 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
      0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001a40 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001a48 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a50 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
      0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001a40 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001a48 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a50 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
      0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001a40 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001a48 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001a50 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001a54 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001a58 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001a5c j       pc + 0x28              #; goto 0x80001a84
      0x80001a84 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001a88 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001a8c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001a90 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001a94 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001a98 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001a9c j       pc + 0x8               #; goto 0x80001aa4
; _ftoa (printf.c:0)
      0x80001aa4 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001aa8 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001aac bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001ab0 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001ab8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001ab4 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001abc addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001ac0 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001ac4 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001ac8 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001acc beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001ad0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001ad4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001ad8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001adc add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001ae0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001ae4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001ae8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001aec addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001af0 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001af4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001af8 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001afc mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001b00 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001b04 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001b08 j       pc + 0x8               #; goto 0x80001b10
; _ftoa (printf.c:440)
      0x80001b10 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001b14 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001b18 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b84
; _ftoa (printf.c:0)
      0x80001b84 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001b88 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001b8c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ba4
; _ftoa (printf.c:453)
      0x80001ba4 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001ba8 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001bac andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001bb0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001bdc
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001bdc snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001be0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001be4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001be8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001bec andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001bf0 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001bf4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c20
; _ftoa (printf.c:0)
      0x80001c20 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c24 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001c28 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001c34 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001c38 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 8
      0x80001580 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 9 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 8, (wrb) a4  <-- 0x80002f9c
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9c, 48 ~~> Byte[0x80002fe4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 9
      0x80001594 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001598 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001c50 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001c34 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001c38 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 9
      0x80001580 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 10 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 9, (wrb) a4  <-- 0x80002f9d
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9d, 46 ~~> Byte[0x80002fe5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 10
      0x80001594 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001598 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800015a0 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001c50 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001c34 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001c38 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 10
      0x80001580 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 11 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 10, (wrb) a4  <-- 0x80002f9e
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9e, 48 ~~> Byte[0x80002fe6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 11
      0x80001594 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001598 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001c50 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001c34 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001c38 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 11
      0x80001580 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 12 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 11, (wrb) a4  <-- 0x80002f9f
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9f, 48 ~~> Byte[0x80002fe7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 12
      0x80001594 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001598 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001c50 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001c34 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001c38 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 12
      0x80001580 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 13 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 12, (wrb) a4  <-- 0x80002fa0
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa0, 48 ~~> Byte[0x80002fe8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 13
      0x80001594 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001598 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001c50 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001c34 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001c38 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 13
      0x80001580 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 14 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 13, (wrb) a4  <-- 0x80002fa1
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa1, 48 ~~> Byte[0x80002fe9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 14
      0x80001594 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001598 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001c50 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001c34 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001c38 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 14
      0x80001580 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 15 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 14, (wrb) a4  <-- 0x80002fa2
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa2, 48 ~~> Byte[0x80002fea]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 15
      0x80001594 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001598 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001c50 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c2c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001c34 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001c38 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c40 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 15
      0x80001580 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 16 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 15, (wrb) a4  <-- 0x80002fa3
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa3, 48 ~~> Byte[0x80002feb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 16
      0x80001594 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001598 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c4c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001c50 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c54 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001c58 j       pc + 0x8               #; goto 0x80001c60
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c60 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001c64 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001c68 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001c6c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001c70 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001c74 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001ca4
; _ftoa (printf.c:0)
      0x80001ca4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001ca8 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001cac fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001cb8 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001cb0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001cb4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 5700.0
                                                #; (lsu) s10 <-- 0x80002c5b
      0x80001cbc lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001cc0 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001cc4 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001cc8 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001ccc lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001cd0 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001cd4 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001cd8 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001560
      0x80001cdc lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001ce0 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001ce4 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001ce8 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000c90
      0x80001cec ret                            #; ra  = 0x80000c90, goto 0x80000c90
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c90 j       pc + 0x7c0             #; goto 0x80001450
      0x80001450 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001454 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001458 li      s7, 46                 #; (wrb) s7  <-- 46
      0x8000145c addi    s0, s10, 1             #; s10 = 0x80002c5b, (wrb) s0  <-- 0x80002c5c
      0x80001460 j       pc - 0xa74             #; goto 0x800009ec
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009ec addi    s10, s0, 2             #; s0  = 0x80002c5c, (wrb) s10 <-- 0x80002c5e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009f0 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x800009f4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009f8 lbu     a0, 0(s0)              #; s0  = 0x80002c5c, a0  <~~ Byte[0x80002c5c]
                                                #; (lsu) a0  <-- 10
      0x800009fc beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a00 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a04 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a0c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
      0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 16
      0x80001580 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 17 ~~> Word[0x80002f94]
      0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 16, (wrb) a4  <-- 0x80002fa4
      0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa4, 10 ~~> Byte[0x80002fec]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 17
      0x80001594 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001598 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x8000159c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800015a0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800015a4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800015a8 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015ac add     a0, a3, a2             #; a3  = 0x80002f94, a2  = 0, (wrb) a0  <-- 0x80002f94
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 addi    a2, a0, 72             #; a0  = 0x80002f94, (wrb) a2  <-- 0x80002fdc
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 sw      zero, 12(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa0]
      0x800015b8 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800015bc sw      a3, 8(a0)              #; a0  = 0x80002f94, 64 ~~> Word[0x80002f9c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015c0 sw      zero, 20(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa8]
      0x800015c4 li      a3, 1                  #; (wrb) a3  <-- 1
      0x800015c8 sw      a3, 16(a0)             #; a0  = 0x80002f94, 1 ~~> Word[0x80002fa4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015cc sw      zero, 28(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb0]
      0x800015d0 sw      a2, 24(a0)             #; a0  = 0x80002f94, 0x80002fdc ~~> Word[0x80002fac]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015d4 lw      a2, 0(a1)              #; a1  = 0x80002f94, a2  <~~ Word[0x80002f94]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015d8 addi    a3, a0, 8              #; a0  = 0x80002f94, (wrb) a3  <-- 0x80002f9c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc sw      zero, 36(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb8]
                                                #; (lsu) a2  <-- 17
      0x800015e0 sw      a2, 32(a0)             #; a0  = 0x80002f94, 17 ~~> Word[0x80002fb4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015e4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035e4
      0x800015e8 addi    a0, a0, -1892          #; a0  = 0x800035e4, (wrb) a0  <-- 0x80002e80
      0x800015ec sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002f9c ~~> Word[0x80002e80]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035f0
      0x800015f4 addi    a0, a0, -1840          #; a0  = 0x800035f0, (wrb) a0  <-- 0x80002ec0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
      0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
      0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
      0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
      0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
      0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
      0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
      0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 1
      0x800015fc beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001604 sw      zero, 0(a1)            #; a1  = 0x80002f94, 0 ~~> Word[0x80002f94]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c5c, (wrb) s0  <-- 0x80002c5d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c5e, (wrb) s10 <-- 0x80002c5f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c5d, a0  <~~ Byte[0x80002c5d]
                                                #; (lsu) a0  <-- 0
      0x80000a28 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000a2c j       pc + 0xad8             #; goto 0x80001504
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001504 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001508 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001510
      0x80001510 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001514 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001518 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x8000151c jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80001520, goto 0x80001560
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001560 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001608
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001608 ret                            #; ra  = 0x80001520, goto 0x80001520
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001520 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001524 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001528 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x8000152c lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001530 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001534 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x80001538 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x8000153c lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001540 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001544 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x80001548 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0x00100000
      0x8000154c lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 4847
      0x80001550 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x00100320
      0x80001554 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001558 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x8000095c
      0x8000155c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; printf_ (printf.c:869)
      0x8000095c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000960 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x800007f8
      0x80000964 ret                            #; ra  = 0x800007f8, goto 0x800007f8
; main (bench_sp.c:0)
      0x800007f8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027f8
      0x800007fc addi    a0, a0, 1768           #; a0  = 0x800027f8, (wrb) a0  <-- 0x80002ee0
      0x80000800 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ee0]
; main (bench_sp.c:60)
      0x8000080c lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (bench_sp.c:59)
      0x80000804 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 5700.0
                                                #; (lsu) s2  <-- 0
; main (bench_sp.c:60)
      0x80000810 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54], (acc) s1  <-- 0x01412483
      0x80000808 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s1  <-- 0
      0x80000814 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
                                                #; (lsu) s0  <-- 0
      0x80000818 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x8000081c addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029c0
      0x80000820 ret                            #; ra  = 0x800029c0, goto 0x800029c0
; ?? (start.S:184)
      0x800029c0 mv      s0, a0                 #; a0  = 1, (wrb) s0  <-- 1
; ?? (start.S:191)
      0x800029c4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029c4
      0x800029c8 jalr    ra, ra, 524            #; ra  = 0x800029c4, (wrb) ra  <-- 0x800029cc, goto 0x80002bd0
; ?? (start_snitch.S:33)
      0x80002bd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002bd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029cc ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002bd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bd8
      0x80002bdc jalr    ra, ra, -1264          #; ra  = 0x80002bd8, (wrb) ra  <-- 0x80002be0, goto 0x800026e8
; _snrt_barrier_reg_ptr (team.c:80)
      0x800026e8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026ec add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026f0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026f4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026f8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800026fc ret                            #; ra  = 0x80002be0, goto 0x80002be0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002be0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002be4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002be8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002bec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029cc
; ?? (start_snitch.S:40)
      0x80002bf0 ret                            #; ra  = 0x800029cc, goto 0x800029cc
; ?? (start.S:195)
      0x800029cc mv      a0, s0                 #; s0  = 1, (wrb) a0  <-- 1
; ?? (start.S:196)
      0x800029d0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d0
      0x800029d4 jalr    ra, ra, 556            #; ra  = 0x800029d0, (wrb) ra  <-- 0x800029d8, goto 0x80002bfc
; ?? (start_snitch.S:15)
      0x80002bfc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002c00 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 1 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002c04 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029d8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002c08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c08
      0x80002c0c jalr    ra, ra, -1344          #; ra  = 0x80002c08, (wrb) ra  <-- 0x80002c10, goto 0x800026c8
; snrt_global_core_idx (team.c:32)
      0x800026c8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026cc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026d0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026d4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026d8 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x800026dc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x800026e0 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x800026e4 ret                            #; ra  = 0x80002c10, goto 0x80002c10
; ?? (start_snitch.S:20)
      0x80002c10 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 1
; ?? (start_snitch.S:21)
      0x80002c14 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002c18 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002c1c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x800029d8
; ?? (start_snitch.S:28)
      0x80002c20 slli    t0, t0, 1              #; t0  = 1, (wrb) t0  <-- 2
; ?? (start_snitch.S:29)
      0x80002c24 ori     t0, t0, 1              #; t0  = 2, (wrb) t0  <-- 3
; ?? (start_snitch.S:30)
      0x80002c28 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c28
      0x80002c2c addi    t1, t1, 600            #; t1  = 0x80002c28, (wrb) t1  <-- 0x80002e80
; ?? (start_snitch.S:31)
      0x80002c30 sw      t0, 0(t1)              #; t1  = 0x80002e80, 3 ~~> Word[0x80002e80]
; ?? (start_snitch.S:32)
      0x80002c34 ret                            #; ra  = 0x800029d8, goto 0x800029d8
; ?? (start.S:198)
      0x800029d8 wfi                            #; 
                        tion 0 @ (12, 4847):
                           38
                           53
                            1
                            0
                      18.2632
                       0.3499
                       0.2053
                          1.0
                          1.0
                            0
                          1.0
                            0
                       0.0904
                       0.0893
                       0.9886
                         4836
                       0.4402
            tion 1 @ (4849, 5358):
                            0
                            0
                            0
                       0.4494
                       0.2989
                          1.0
                          1.0
                           33
                       3.2473
                            0
                       0.1915
                       0.1713
                       0.8942
                          543
                       0.6409
            tion 2 @ (5360, 11217):
                          184
                          193
                           23
                            7
                       9.9845
                       0.3298
                       0.0335
                          1.0
                          1.0
                            0
                       0.6957
                       5.8696
                       0.0114
                       0.0079
                       0.6866
                         5858
                       0.3412
