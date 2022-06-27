; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800027e0
      0x00001014 jalr    t0                     #; t0  = 0x800027e0, (wrb) ra  <-- 4120, goto 0x800027e0
; ?? (start.S:20)
      0x800027e0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800037e0
; ?? (start.S:21)
      0x800027e4 addi    gp, gp, -280           #; gp  = 0x800037e0, (wrb) gp  <-- 0x800036c8
; ?? (start.S:28)
      0x800027e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027e8
      0x800027ec jalr    ra, ra, 964            #; ra  = 0x800027e8, (wrb) ra  <-- 0x800027f0, goto 0x80002bac
; ?? (start_snitch.S:16)
      0x80002bac mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002bb0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002bb4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002bb8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002bbc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002bc0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002bc4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002bc8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002bcc mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002bd0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002bd4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002bd8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002bdc ret                            #; ra  = 0x800027f0, goto 0x800027f0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x800027f0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x800027f4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x800027f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027f8
      0x800027fc jalr    ra, ra, 1036           #; ra  = 0x800027f8, (wrb) ra  <-- 0x80002800, goto 0x80002c04
; ?? (start_snitch.S:48)
      0x80002c04 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002c08 ret                            #; ra  = 0x80002800, goto 0x80002800
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002800 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002804 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002808 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000280c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002810 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002814 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002814
      0x80002818 addi    t0, t0, 1916           #; t0  = 0x80002814, (wrb) t0  <-- 0x80002f90
; ?? (start.S:49)
      0x8000281c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000281c
      0x80002820 addi    t1, t1, 1912           #; t1  = 0x8000281c, (wrb) t1  <-- 0x80002f94
; ?? (start.S:50)
      0x80002824 bge     t0, t1, pc + 16        #; t0  = 0x80002f90, t1  = 0x80002f94, not taken
; ?? (start.S:51)
      0x80002828 sw      zero, 0(t0)            #; t0  = 0x80002f90, 0 ~~> Word[0x80002f90]
; ?? (start.S:52)
      0x8000282c addi    t0, t0, 4              #; t0  = 0x80002f90, (wrb) t0  <-- 0x80002f94
; ?? (start.S:53)
      0x80002830 blt     t0, t1, pc - 8         #; t0  = 0x80002f94, t1  = 0x80002f94, not taken
; ?? (start.S:58)
      0x80002834 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002838 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000283c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002840 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002844 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002848 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000284c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002850 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002854 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002858 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000285c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002860 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002864 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002868 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000286c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002870 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002874 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002878 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000287c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002880 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002884 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002888 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000288c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002890 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002894 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002898 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000289c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x800028a0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x800028a4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x800028a8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x800028ac fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x800028b0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x800028b4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x800028b8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x800028bc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x800028c0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x800028c4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x800028c8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028c8
      0x800028cc lw      t0, 900(t0)            #; t0  = 0x800028c8, t0  <~~ Word[0x80002c4c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x800028d0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x800028d4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x800028d8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028d8
      0x800028dc lw      t2, 880(t2)            #; t2  = 0x800028d8, t2  <~~ Word[0x80002c48]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x800028e0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x800028e4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x800028e8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x800028ec sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x800028f0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x800028f4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x800028f8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x800028fc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002900 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002900
      0x80002904 addi    t0, t0, 1480           #; t0  = 0x80002900, (wrb) t0  <-- 0x80002ec8
; ?? (start.S:125)
      0x80002908 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002908
      0x8000290c addi    t1, t1, 1472           #; t1  = 0x80002908, (wrb) t1  <-- 0x80002ec8
; ?? (start.S:126)
      0x80002910 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002910
      0x80002914 addi    t2, t2, 1464           #; t2  = 0x80002910, (wrb) t2  <-- 0x80002ec8
; ?? (start.S:127)
      0x80002918 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002918
      0x8000291c addi    t3, t3, 1472           #; t3  = 0x80002918, (wrb) t3  <-- 0x80002ed8
; ?? (start.S:128)
      0x80002920 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
; ?? (start.S:129)
      0x80002924 sub     sp, sp, t1             #; sp  = 0x80122e38, t1  = 0x80002ec8, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002928 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
; ?? (start.S:131)
      0x8000292c sub     sp, sp, t3             #; sp  = 0x80122e38, t3  = 0x80002ed8, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002930 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002934 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002938 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x8000293c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002940 bge     t0, t1, pc + 24        #; t0  = 0x80002ec8, t1  = 0x80002ec8, taken, goto 0x80002958
; ?? (start.S:147)
      0x80002958 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002958
      0x8000295c addi    t0, t0, 1392           #; t0  = 0x80002958, (wrb) t0  <-- 0x80002ec8
; ?? (start.S:148)
      0x80002960 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002960
      0x80002964 addi    t1, t1, 1400           #; t1  = 0x80002960, (wrb) t1  <-- 0x80002ed8
; ?? (start.S:149)
      0x80002968 bge     t0, t1, pc + 20        #; t0  = 0x80002ec8, t1  = 0x80002ed8, not taken
; ?? (start.S:150)
      0x8000296c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002970 addi    t0, t0, 4              #; t0  = 0x80002ec8, (wrb) t0  <-- 0x80002ecc
; ?? (start.S:152)
      0x80002974 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002978 blt     t0, t2, pc - 12        #; t0  = 0x80002ecc, t2  = 0x80002ec8, not taken
; ?? (start.S:158)
      0x8000297c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002980 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002984 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002988 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000298c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002990 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002994 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002994
      0x80002998 jalr    ra, ra, -1060          #; ra  = 0x80002994, (wrb) ra  <-- 0x8000299c, goto 0x80002570
; _snrt_init_team (start.c:49)
      0x80002570 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002574 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002578 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x8000257c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002580 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002584 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002588 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x8000258c mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002590 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002594 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002598 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x8000259c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800025a0 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800025a4 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800025a8 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800025ac sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800025b0 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800025b4 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800025b8 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800025bc add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800025c0 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800025c4 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800025c8 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800025cc lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800025d0 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800025d4 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800025d8 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800025dc sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800025e0 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800025e4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x800025e8 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x800025ec add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x800025f0 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x800025f4 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x800025f8 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x800025fc srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002600 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002604 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002608 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x8000260c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002610 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002614 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002618 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x8000261c sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002620 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002624 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002628 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x8000262c sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002630 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002634 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002638 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x8000263c lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002640 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002644 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002648 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x8000264c remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002650 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002654 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x80002658 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x8000265c li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002660 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002664 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003664
      0x80002668 addi    a1, a1, -1744          #; a1  = 0x80003664, (wrb) a1  <-- 0x80002f94
                                                #; (acc) a0  <-- 0x00b50533
      0x8000266c add     a0, a0, a1             #; a0  = 0, a1  = 0x80002f94, (wrb) a0  <-- 0x80002f94
      0x80002670 sw      zero, 0(a0)            #; a0  = 0x80002f94, 0 ~~> Word[0x80002f94]
; _snrt_init_team (start.c:86)
      0x80002674 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002678 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x8000267c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002680 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002684 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002688 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x8000268c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002690 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002694 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002698 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x8000269c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800026a0 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800026a4 lw      a0, 0(a1)              #; a1  = 0x80002f94, a0  <~~ Word[0x80002f94]
                                                #; (lsu) a0  <-- 0
      0x800026a8 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800026ac andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800026b0 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800026b4 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800026b8 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800026bc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026c0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026c4 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800026c8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026cc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026d0 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800026d4 ret                            #; ra  = 0x8000299c, goto 0x8000299c
; ?? (start.S:165)
      0x8000299c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x800029a0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x800029a4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x800029a8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x800029ac lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x800029b0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x800029b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029b4
      0x800029b8 addi    t0, t0, 60             #; t0  = 0x800029b4, (wrb) t0  <-- 0x800029f0
; ?? (start.S:175)
      0x800029bc csrw    mtvec, t0              #; t0  = 0x800029f0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x800029c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029c0
      0x800029c4 jalr    ra, ra, 544            #; ra  = 0x800029c0, (wrb) ra  <-- 0x800029c8, goto 0x80002be0
; ?? (start_snitch.S:33)
      0x80002be0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002be4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029c8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002be8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002be8
      0x80002bec jalr    ra, ra, -1264          #; ra  = 0x80002be8, (wrb) ra  <-- 0x80002bf0, goto 0x800026f8
; _snrt_barrier_reg_ptr (team.c:80)
      0x800026f8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026fc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002700 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002704 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002708 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000270c ret                            #; ra  = 0x80002bf0, goto 0x80002bf0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002bf0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002bf4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002bf8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002bfc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029c8
; ?? (start_snitch.S:40)
      0x80002c00 ret                            #; ra  = 0x800029c8, goto 0x800029c8
; ?? (start.S:183)
      0x800029c8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800009c8
      0x800029cc jalr    ra, ra, -916           #; ra  = 0x800009c8, (wrb) ra  <-- 0x800029d0, goto 0x80000634
; main (bench_sp.c:29)
      0x80000634 addi    sp, sp, -112           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fef0
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_sp.c:30)
      0x80000638 sw      ra, 108(sp)            #; sp  = 0x0011fef0, 0x800029d0 ~~> Word[0x0011ff5c]
      0x8000063c fsd     fs0, 96(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000640 fsd     fs1, 88(sp)            #; 0.0 ~~> Doub[0x0011ff48]
      0x80000644 fsd     fs2, 80(sp)            #; 0.0 ~~> Doub[0x0011ff40]
      0x80000648 fsd     fs3, 72(sp)            #; 0.0 ~~> Doub[0x0011ff38]
      0x8000064c fsd     fs4, 64(sp)            #; 0.0 ~~> Doub[0x0011ff30]
      0x80000650 fsd     fs5, 56(sp)            #; 0.0 ~~> Doub[0x0011ff28]
      0x80000654 fsd     fs6, 48(sp)            #; 0.0 ~~> Doub[0x0011ff20]
      0x80000658 fsd     fs7, 40(sp)            #; 0.0 ~~> Doub[0x0011ff18]
      0x8000065c fsd     fs8, 32(sp)            #; 0.0 ~~> Doub[0x0011ff10]
      0x80000660 fsd     fs9, 24(sp)            #; 0.0 ~~> Doub[0x0011ff08]
      0x8000066c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000664 fsd     fs10, 16(sp)           #; 0.0 ~~> Doub[0x0011ff00]
      0x80000668 fsd     fs11, 8(sp)            #; 0.0 ~~> Doub[0x0011fef8]
      0x80000670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000674 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (bench_sp.c:0)
      0x80000678 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (bench_sp.c:30)
      0x8000067c bnez    a1, pc + 612           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (bench_sp.c:34)
      0x80000680 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000684 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000688 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000068c lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
                                                #; (lsu) a2  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:34)
      0x80000690 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000694 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x80000698 lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x8000069c addi    a4, a0, 800            #; a0  = 0x00100000, (wrb) a4  <-- 0x00100320
                                                #; (lsu) a3  <-- 0x0001df30
      0x800006a0 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x800006a4 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100320, taken, goto 0x800006bc
; snrt_l1alloc (alloc.c:33)
;  in main (bench_sp.c:34)
      0x800006bc mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:34)
      0x800006c0 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:35)
      0x800006c4 addi    a5, a0, 1600           #; a0  = 0x00100000, (wrb) a5  <-- 0x00100640
      0x800006c8 mv      a0, a4                 #; a4  = 0x00100320, (wrb) a0  <-- 0x00100320
      0x800006cc bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x00100640, taken, goto 0x800006b4
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:35)
      0x800006b4 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
      0x800006b8 j       pc + 0x1c              #; goto 0x800006d4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x800006d4 srli    a2, a1, 20             #; a1  = 0x00100000, (wrb) a2  <-- 1
      0x800006d8 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x800006dc lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x800006e0 addi    a3, a3, -791           #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fce9
      0x800006e4 sltu    a3, a1, a3             #; a1  = 0x00100000, a3  = 0x0011fce9, (wrb) a3  <-- 1
      0x800006e8 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
      0x800006ec beqz    a2, pc + 108           #; a2  = 1, not taken
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:37)
      0x800006f0 li      a2, 0                  #; (wrb) a2  <-- 0
      0x800006f4 li      a3, 8                  #; (wrb) a3  <-- 8
      0x800006f8 li      a4, 99                 #; (wrb) a4  <-- 99
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x800006fc li      a5, 64                 #; (wrb) a5  <-- 64
      0x80000700 scfgw   a4, a5                 #; a4  = 99, a5  = 64
      0x80000704 li      a4, 192                #; (wrb) a4  <-- 192
      0x80000708 scfgw   a3, a4                 #; a3  = 8, a4  = 192
      0x8000070c li      a3, 32                 #; (wrb) a3  <-- 32
      0x80000710 scfgw   zero, a3               #; a3  = 32
      0x80000714 scfgwi  a1, 896                #; a1  = 0x00100000
      0x8000071c li      a3, 100                #; (wrb) a3  <-- 100
      0x80000718 csrrsi  a3, ssr, 1             #; 
      0x80000720 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
      0x80000724 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
      0x80000728 li      a6, 10                 #; (wrb) a6  <-- 10
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 0, a4  = 0xcccccccd
      0x80000730 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
      0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 0, a5  = 0, (wrb) a5  <-- 0
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 100, (wrb) a3  <-- 99
      0x80000748 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 99, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 1, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
      0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 1, a5  = 0, (wrb) a5  <-- 1
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 99, (wrb) a3  <-- 98
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000748 addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 98, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 2, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
      0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 2, a5  = 0, (wrb) a5  <-- 2
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 98, (wrb) a3  <-- 97
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000748 addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 97, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 3, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
      0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 3, a5  = 0, (wrb) a5  <-- 3
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 97, (wrb) a3  <-- 96
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000748 addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 96, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 4, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
      0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 4, a5  = 0, (wrb) a5  <-- 4
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 96, (wrb) a3  <-- 95
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000748 addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 95, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 5, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
      0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 5, a5  = 0, (wrb) a5  <-- 5
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 95, (wrb) a3  <-- 94
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000748 addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 94, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 6, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
      0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 6, a5  = 0, (wrb) a5  <-- 6
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 94, (wrb) a3  <-- 93
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000748 addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 93, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 7, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
      0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 7, a5  = 0, (wrb) a5  <-- 7
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 93, (wrb) a3  <-- 92
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000748 addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 92, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 8, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
      0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 8, a5  = 0, (wrb) a5  <-- 8
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 92, (wrb) a3  <-- 91
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000748 addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 91, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 9, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
      0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 9, a5  = 0, (wrb) a5  <-- 9
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 91, (wrb) a3  <-- 90
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000748 addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 90, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 10, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
      0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 10, a5  = 10, (wrb) a5  <-- 0
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 90, (wrb) a3  <-- 89
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000748 addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 89, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 11, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
      0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 11, a5  = 10, (wrb) a5  <-- 1
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 89, (wrb) a3  <-- 88
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000748 addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 88, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 12, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
      0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 12, a5  = 10, (wrb) a5  <-- 2
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 88, (wrb) a3  <-- 87
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000748 addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 87, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 13, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
      0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 13, a5  = 10, (wrb) a5  <-- 3
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 87, (wrb) a3  <-- 86
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000748 addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 86, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 14, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
      0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 14, a5  = 10, (wrb) a5  <-- 4
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 86, (wrb) a3  <-- 85
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000748 addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 85, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 15, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
      0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 15, a5  = 10, (wrb) a5  <-- 5
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 85, (wrb) a3  <-- 84
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000748 addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 84, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 16, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
      0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 16, a5  = 10, (wrb) a5  <-- 6
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 84, (wrb) a3  <-- 83
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000748 addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 83, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 17, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
      0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 17, a5  = 10, (wrb) a5  <-- 7
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 83, (wrb) a3  <-- 82
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000748 addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 82, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 18, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
      0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 18, a5  = 10, (wrb) a5  <-- 8
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 82, (wrb) a3  <-- 81
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000748 addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 81, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 19, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
      0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 19, a5  = 10, (wrb) a5  <-- 9
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 81, (wrb) a3  <-- 80
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000748 addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 80, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 20, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
      0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 20, a5  = 20, (wrb) a5  <-- 0
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 80, (wrb) a3  <-- 79
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000748 addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 79, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 21, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
      0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 21, a5  = 20, (wrb) a5  <-- 1
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 79, (wrb) a3  <-- 78
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000748 addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 78, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 22, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
      0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 22, a5  = 20, (wrb) a5  <-- 2
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 78, (wrb) a3  <-- 77
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000748 addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 77, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 23, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
      0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 23, a5  = 20, (wrb) a5  <-- 3
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 77, (wrb) a3  <-- 76
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000748 addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 76, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 24, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
      0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 24, a5  = 20, (wrb) a5  <-- 4
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 76, (wrb) a3  <-- 75
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000748 addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 75, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 25, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
      0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 25, a5  = 20, (wrb) a5  <-- 5
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 75, (wrb) a3  <-- 74
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000748 addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 74, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 26, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
      0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 26, a5  = 20, (wrb) a5  <-- 6
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 74, (wrb) a3  <-- 73
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000748 addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 73, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 27, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
      0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 27, a5  = 20, (wrb) a5  <-- 7
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 73, (wrb) a3  <-- 72
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000748 addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 72, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 28, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
      0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 28, a5  = 20, (wrb) a5  <-- 8
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 72, (wrb) a3  <-- 71
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000748 addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 71, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 29, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
      0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 29, a5  = 20, (wrb) a5  <-- 9
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 71, (wrb) a3  <-- 70
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000748 addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 70, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 30, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
      0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 30, a5  = 30, (wrb) a5  <-- 0
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 70, (wrb) a3  <-- 69
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000748 addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 69, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 31, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
      0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 31, a5  = 30, (wrb) a5  <-- 1
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 69, (wrb) a3  <-- 68
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000748 addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 68, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 32, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
      0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 32, a5  = 30, (wrb) a5  <-- 2
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 68, (wrb) a3  <-- 67
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000748 addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 67, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 33, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
      0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 33, a5  = 30, (wrb) a5  <-- 3
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 67, (wrb) a3  <-- 66
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000748 addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 66, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 34, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
      0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 34, a5  = 30, (wrb) a5  <-- 4
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 66, (wrb) a3  <-- 65
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000748 addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 65, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 35, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
      0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 35, a5  = 30, (wrb) a5  <-- 5
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 65, (wrb) a3  <-- 64
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000748 addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 64, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 36, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
      0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 36, a5  = 30, (wrb) a5  <-- 6
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 64, (wrb) a3  <-- 63
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000748 addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 63, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 37, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
      0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 37, a5  = 30, (wrb) a5  <-- 7
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 63, (wrb) a3  <-- 62
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000748 addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 62, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 38, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
      0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 38, a5  = 30, (wrb) a5  <-- 8
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 62, (wrb) a3  <-- 61
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000748 addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 61, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 39, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
      0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 39, a5  = 30, (wrb) a5  <-- 9
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 61, (wrb) a3  <-- 60
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000748 addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 60, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 40, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
      0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 40, a5  = 40, (wrb) a5  <-- 0
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 60, (wrb) a3  <-- 59
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000748 addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 59, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 41, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
      0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 41, a5  = 40, (wrb) a5  <-- 1
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 59, (wrb) a3  <-- 58
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000748 addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 58, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 42, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
      0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 42, a5  = 40, (wrb) a5  <-- 2
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 58, (wrb) a3  <-- 57
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000748 addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 57, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 43, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
      0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 43, a5  = 40, (wrb) a5  <-- 3
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 57, (wrb) a3  <-- 56
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000748 addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 56, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 44, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
      0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 44, a5  = 40, (wrb) a5  <-- 4
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 56, (wrb) a3  <-- 55
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000748 addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 55, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 45, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
      0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 45, a5  = 40, (wrb) a5  <-- 5
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 55, (wrb) a3  <-- 54
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000748 addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 54, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 46, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
      0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 46, a5  = 40, (wrb) a5  <-- 6
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 54, (wrb) a3  <-- 53
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000748 addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 53, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 47, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
      0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 47, a5  = 40, (wrb) a5  <-- 7
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 53, (wrb) a3  <-- 52
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000748 addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 52, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 48, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
      0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 48, a5  = 40, (wrb) a5  <-- 8
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 52, (wrb) a3  <-- 51
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000748 addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 51, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 49, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
      0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 49, a5  = 40, (wrb) a5  <-- 9
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 51, (wrb) a3  <-- 50
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000748 addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 50, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 50, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
      0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 50, a5  = 50, (wrb) a5  <-- 0
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 50, (wrb) a3  <-- 49
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000748 addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 49, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 51, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
      0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 51, a5  = 50, (wrb) a5  <-- 1
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 49, (wrb) a3  <-- 48
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000748 addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 48, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 52, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
      0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 52, a5  = 50, (wrb) a5  <-- 2
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 48, (wrb) a3  <-- 47
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000748 addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 47, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 53, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
      0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 53, a5  = 50, (wrb) a5  <-- 3
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 47, (wrb) a3  <-- 46
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000748 addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 46, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 54, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
      0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 54, a5  = 50, (wrb) a5  <-- 4
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 46, (wrb) a3  <-- 45
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000748 addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 45, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 55, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
      0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 55, a5  = 50, (wrb) a5  <-- 5
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 45, (wrb) a3  <-- 44
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000748 addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 44, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 56, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
      0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 56, a5  = 50, (wrb) a5  <-- 6
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 44, (wrb) a3  <-- 43
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000748 addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 43, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 57, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
      0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 57, a5  = 50, (wrb) a5  <-- 7
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 43, (wrb) a3  <-- 42
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000748 addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 42, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 58, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
      0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 58, a5  = 50, (wrb) a5  <-- 8
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 42, (wrb) a3  <-- 41
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000748 addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 41, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 59, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
      0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 59, a5  = 50, (wrb) a5  <-- 9
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 41, (wrb) a3  <-- 40
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000748 addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 40, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 60, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
      0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 60, a5  = 60, (wrb) a5  <-- 0
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 40, (wrb) a3  <-- 39
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000748 addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 39, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 61, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
      0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 61, a5  = 60, (wrb) a5  <-- 1
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 39, (wrb) a3  <-- 38
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000748 addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 38, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 62, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
      0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 62, a5  = 60, (wrb) a5  <-- 2
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 38, (wrb) a3  <-- 37
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000748 addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 37, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 63, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
      0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 63, a5  = 60, (wrb) a5  <-- 3
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 37, (wrb) a3  <-- 36
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000748 addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 36, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 64, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
      0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 64, a5  = 60, (wrb) a5  <-- 4
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 36, (wrb) a3  <-- 35
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000748 addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 35, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 65, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
      0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 65, a5  = 60, (wrb) a5  <-- 5
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 35, (wrb) a3  <-- 34
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000748 addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 34, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 66, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
      0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 66, a5  = 60, (wrb) a5  <-- 6
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 34, (wrb) a3  <-- 33
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000748 addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 33, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 67, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
      0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 67, a5  = 60, (wrb) a5  <-- 7
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 33, (wrb) a3  <-- 32
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000748 addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 32, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 68, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
      0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 68, a5  = 60, (wrb) a5  <-- 8
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 32, (wrb) a3  <-- 31
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000748 addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 31, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 69, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
      0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 69, a5  = 60, (wrb) a5  <-- 9
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 31, (wrb) a3  <-- 30
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000748 addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 30, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 70, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
      0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 70, a5  = 70, (wrb) a5  <-- 0
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 30, (wrb) a3  <-- 29
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000748 addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 29, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 71, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
      0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 71, a5  = 70, (wrb) a5  <-- 1
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 29, (wrb) a3  <-- 28
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000748 addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 28, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 72, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
      0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 72, a5  = 70, (wrb) a5  <-- 2
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 28, (wrb) a3  <-- 27
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000748 addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 27, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 73, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
      0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 73, a5  = 70, (wrb) a5  <-- 3
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 27, (wrb) a3  <-- 26
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000748 addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 26, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 74, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
      0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 74, a5  = 70, (wrb) a5  <-- 4
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 26, (wrb) a3  <-- 25
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000748 addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 25, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 75, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
      0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 75, a5  = 70, (wrb) a5  <-- 5
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000748 addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 24, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 76, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
      0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 76, a5  = 70, (wrb) a5  <-- 6
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000748 addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 23, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 77, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
      0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 77, a5  = 70, (wrb) a5  <-- 7
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000748 addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 22, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 78, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
      0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 78, a5  = 70, (wrb) a5  <-- 8
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000748 addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 21, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 79, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
      0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 79, a5  = 70, (wrb) a5  <-- 9
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000748 addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 20, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 80, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
      0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 80, a5  = 80, (wrb) a5  <-- 0
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000748 addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 19, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 81, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
      0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 81, a5  = 80, (wrb) a5  <-- 1
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000748 addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 18, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 82, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
      0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 82, a5  = 80, (wrb) a5  <-- 2
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000748 addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 17, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 83, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
      0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 83, a5  = 80, (wrb) a5  <-- 3
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000748 addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 16, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 84, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
      0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 84, a5  = 80, (wrb) a5  <-- 4
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000748 addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 15, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 85, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
      0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 85, a5  = 80, (wrb) a5  <-- 5
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000748 addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 14, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 86, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
      0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 86, a5  = 80, (wrb) a5  <-- 6
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000748 addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 13, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 87, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
      0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 87, a5  = 80, (wrb) a5  <-- 7
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000748 addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 12, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 88, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
      0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 88, a5  = 80, (wrb) a5  <-- 8
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000748 addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 11, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 89, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
      0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 89, a5  = 80, (wrb) a5  <-- 9
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000748 addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 10, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 90, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
      0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 90, a5  = 90, (wrb) a5  <-- 0
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000748 addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 9, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 91, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
      0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 91, a5  = 90, (wrb) a5  <-- 1
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000748 addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 8, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 92, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
      0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 92, a5  = 90, (wrb) a5  <-- 2
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000748 addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 7, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 93, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
      0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 93, a5  = 90, (wrb) a5  <-- 3
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000748 addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 6, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 94, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
      0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 94, a5  = 90, (wrb) a5  <-- 4
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000748 addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 5, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 95, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
      0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 95, a5  = 90, (wrb) a5  <-- 5
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000748 addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 4, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 96, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
      0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 96, a5  = 90, (wrb) a5  <-- 6
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000748 addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 3, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 97, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
      0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 97, a5  = 90, (wrb) a5  <-- 7
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000748 addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 2, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 98, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
      0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 98, a5  = 90, (wrb) a5  <-- 8
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000748 addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 1, taken, goto 0x8000072c
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x8000072c mulhu   a5, a2, a4             #; a2  = 99, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000730 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
      0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x80000738 sub     a5, a2, a5             #; a2  = 99, a5  = 90, (wrb) a5  <-- 9
      0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000744 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000748 addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
      0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x8000074c bnez    a3, pc - 32            #; a3  = 0, not taken
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:37)
      0x80000754 j       pc + 0x44              #; goto 0x80000798
      0x80000750 csrrci  a2, ssr, 1             #; 
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000798 srli    a2, a0, 20             #; a0  = 0x00100320, (wrb) a2  <-- 1
      0x8000079c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x800007a0 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x800007a4 addi    a3, a3, -791           #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fce9
      0x800007a8 sltu    a3, a0, a3             #; a0  = 0x00100320, a3  = 0x0011fce9, (wrb) a3  <-- 1
      0x800007ac and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
      0x800007b0 beqz    a2, pc + 108           #; a2  = 1, not taken
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:38)
      0x800007b4 li      a2, 0                  #; (wrb) a2  <-- 0
      0x800007b8 li      a3, 8                  #; (wrb) a3  <-- 8
      0x800007bc li      a4, 99                 #; (wrb) a4  <-- 99
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007c0 li      a5, 64                 #; (wrb) a5  <-- 64
      0x800007c4 scfgw   a4, a5                 #; a4  = 99, a5  = 64
      0x800007c8 li      a4, 192                #; (wrb) a4  <-- 192
      0x800007cc scfgw   a3, a4                 #; a3  = 8, a4  = 192
      0x800007d0 li      a3, 32                 #; (wrb) a3  <-- 32
      0x800007d4 scfgw   zero, a3               #; a3  = 32
      0x800007d8 scfgwi  a0, 896                #; a0  = 0x00100320
      0x800007dc csrrsi  a3, ssr, 1             #; 
      0x800007e0 li      a3, 100                #; (wrb) a3  <-- 100
      0x800007e4 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
      0x800007e8 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
      0x800007ec li      a6, 10                 #; (wrb) a6  <-- 10
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 0, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
      0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 0, a5  = 0, (wrb) a5  <-- 0
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 100, (wrb) a3  <-- 99
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000080c addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 99, taken, goto 0x800007f0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 1, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
      0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 1, a5  = 0, (wrb) a5  <-- 1
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 99, (wrb) a3  <-- 98
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000080c addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 98, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 2, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
      0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 2, a5  = 0, (wrb) a5  <-- 2
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 98, (wrb) a3  <-- 97
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000080c addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 97, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 3, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
      0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 3, a5  = 0, (wrb) a5  <-- 3
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 97, (wrb) a3  <-- 96
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000080c addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 96, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 4, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
      0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 4, a5  = 0, (wrb) a5  <-- 4
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 96, (wrb) a3  <-- 95
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000080c addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 95, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 5, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
      0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 5, a5  = 0, (wrb) a5  <-- 5
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 95, (wrb) a3  <-- 94
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000080c addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 94, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 6, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
      0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 6, a5  = 0, (wrb) a5  <-- 6
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 94, (wrb) a3  <-- 93
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000080c addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 93, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 7, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
      0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 7, a5  = 0, (wrb) a5  <-- 7
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 93, (wrb) a3  <-- 92
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000080c addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 92, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 8, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
      0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 8, a5  = 0, (wrb) a5  <-- 8
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 92, (wrb) a3  <-- 91
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000080c addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 91, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 9, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
      0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 9, a5  = 0, (wrb) a5  <-- 9
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 91, (wrb) a3  <-- 90
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000080c addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 90, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 10, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
      0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 10, a5  = 10, (wrb) a5  <-- 0
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 90, (wrb) a3  <-- 89
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000080c addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 89, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 11, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
      0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 11, a5  = 10, (wrb) a5  <-- 1
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 89, (wrb) a3  <-- 88
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000080c addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 88, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 12, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
      0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 12, a5  = 10, (wrb) a5  <-- 2
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 88, (wrb) a3  <-- 87
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000080c addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 87, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 13, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
      0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 13, a5  = 10, (wrb) a5  <-- 3
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 87, (wrb) a3  <-- 86
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000080c addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 86, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 14, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
      0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 14, a5  = 10, (wrb) a5  <-- 4
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 86, (wrb) a3  <-- 85
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000080c addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 85, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 15, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
      0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 15, a5  = 10, (wrb) a5  <-- 5
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 85, (wrb) a3  <-- 84
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000080c addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 84, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 16, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
      0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 16, a5  = 10, (wrb) a5  <-- 6
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 84, (wrb) a3  <-- 83
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000080c addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 83, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 17, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
      0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 17, a5  = 10, (wrb) a5  <-- 7
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 83, (wrb) a3  <-- 82
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000080c addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 82, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 18, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
      0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 18, a5  = 10, (wrb) a5  <-- 8
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 82, (wrb) a3  <-- 81
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000080c addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 81, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 19, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
      0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 19, a5  = 10, (wrb) a5  <-- 9
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 81, (wrb) a3  <-- 80
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000080c addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 80, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 20, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
      0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 20, a5  = 20, (wrb) a5  <-- 0
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 80, (wrb) a3  <-- 79
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000080c addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 79, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 21, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
      0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 21, a5  = 20, (wrb) a5  <-- 1
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 79, (wrb) a3  <-- 78
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000080c addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 78, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 22, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
      0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 22, a5  = 20, (wrb) a5  <-- 2
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 78, (wrb) a3  <-- 77
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000080c addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 77, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 23, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
      0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 23, a5  = 20, (wrb) a5  <-- 3
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 77, (wrb) a3  <-- 76
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000080c addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 76, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 24, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
      0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 24, a5  = 20, (wrb) a5  <-- 4
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 76, (wrb) a3  <-- 75
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000080c addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 75, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 25, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
      0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 25, a5  = 20, (wrb) a5  <-- 5
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 75, (wrb) a3  <-- 74
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000080c addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 74, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 26, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
      0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 26, a5  = 20, (wrb) a5  <-- 6
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 74, (wrb) a3  <-- 73
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000080c addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 73, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 27, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
      0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 27, a5  = 20, (wrb) a5  <-- 7
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 73, (wrb) a3  <-- 72
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000080c addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 72, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 28, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
      0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 28, a5  = 20, (wrb) a5  <-- 8
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 72, (wrb) a3  <-- 71
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000080c addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 71, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 29, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
      0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 29, a5  = 20, (wrb) a5  <-- 9
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 71, (wrb) a3  <-- 70
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000080c addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 70, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 30, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
      0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 30, a5  = 30, (wrb) a5  <-- 0
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 70, (wrb) a3  <-- 69
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000080c addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 69, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 31, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
      0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 31, a5  = 30, (wrb) a5  <-- 1
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 69, (wrb) a3  <-- 68
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000080c addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 68, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 32, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
      0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 32, a5  = 30, (wrb) a5  <-- 2
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 68, (wrb) a3  <-- 67
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000080c addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 67, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 33, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
      0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 33, a5  = 30, (wrb) a5  <-- 3
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 67, (wrb) a3  <-- 66
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000080c addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 66, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 34, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
      0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 34, a5  = 30, (wrb) a5  <-- 4
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 66, (wrb) a3  <-- 65
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000080c addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 65, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 35, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
      0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 35, a5  = 30, (wrb) a5  <-- 5
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 65, (wrb) a3  <-- 64
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000080c addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 64, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 36, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
      0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 36, a5  = 30, (wrb) a5  <-- 6
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 64, (wrb) a3  <-- 63
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000080c addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 63, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 37, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
      0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 37, a5  = 30, (wrb) a5  <-- 7
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 63, (wrb) a3  <-- 62
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000080c addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 62, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 38, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
      0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 38, a5  = 30, (wrb) a5  <-- 8
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 62, (wrb) a3  <-- 61
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000080c addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 61, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 39, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
      0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 39, a5  = 30, (wrb) a5  <-- 9
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 61, (wrb) a3  <-- 60
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000080c addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 60, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 40, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
      0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 40, a5  = 40, (wrb) a5  <-- 0
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 60, (wrb) a3  <-- 59
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000080c addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 59, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 41, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
      0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 41, a5  = 40, (wrb) a5  <-- 1
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 59, (wrb) a3  <-- 58
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000080c addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 58, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 42, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
      0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 42, a5  = 40, (wrb) a5  <-- 2
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 58, (wrb) a3  <-- 57
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000080c addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 57, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 43, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
      0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 43, a5  = 40, (wrb) a5  <-- 3
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 57, (wrb) a3  <-- 56
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000080c addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 56, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 44, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
      0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 44, a5  = 40, (wrb) a5  <-- 4
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 56, (wrb) a3  <-- 55
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000080c addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 55, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 45, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
      0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 45, a5  = 40, (wrb) a5  <-- 5
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 55, (wrb) a3  <-- 54
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000080c addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 54, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 46, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
      0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 46, a5  = 40, (wrb) a5  <-- 6
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 54, (wrb) a3  <-- 53
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000080c addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 53, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 47, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
      0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 47, a5  = 40, (wrb) a5  <-- 7
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 53, (wrb) a3  <-- 52
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000080c addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 52, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 48, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
      0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 48, a5  = 40, (wrb) a5  <-- 8
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 52, (wrb) a3  <-- 51
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000080c addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 51, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 49, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
      0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 49, a5  = 40, (wrb) a5  <-- 9
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 51, (wrb) a3  <-- 50
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000080c addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 50, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 50, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
      0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 50, a5  = 50, (wrb) a5  <-- 0
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 50, (wrb) a3  <-- 49
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000080c addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 49, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 51, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
      0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 51, a5  = 50, (wrb) a5  <-- 1
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 49, (wrb) a3  <-- 48
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000080c addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 48, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 52, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
      0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 52, a5  = 50, (wrb) a5  <-- 2
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 48, (wrb) a3  <-- 47
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000080c addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 47, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 53, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
      0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 53, a5  = 50, (wrb) a5  <-- 3
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 47, (wrb) a3  <-- 46
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000080c addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 46, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 54, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
      0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 54, a5  = 50, (wrb) a5  <-- 4
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 46, (wrb) a3  <-- 45
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000080c addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 45, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 55, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
      0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 55, a5  = 50, (wrb) a5  <-- 5
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 45, (wrb) a3  <-- 44
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000080c addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 44, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 56, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
      0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 56, a5  = 50, (wrb) a5  <-- 6
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 44, (wrb) a3  <-- 43
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000080c addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 43, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 57, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
      0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 57, a5  = 50, (wrb) a5  <-- 7
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 43, (wrb) a3  <-- 42
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000080c addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 42, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 58, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
      0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 58, a5  = 50, (wrb) a5  <-- 8
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 42, (wrb) a3  <-- 41
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000080c addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 41, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 59, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
      0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 59, a5  = 50, (wrb) a5  <-- 9
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 41, (wrb) a3  <-- 40
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000080c addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 40, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 60, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
      0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 60, a5  = 60, (wrb) a5  <-- 0
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 40, (wrb) a3  <-- 39
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000080c addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 39, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 61, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
      0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 61, a5  = 60, (wrb) a5  <-- 1
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 39, (wrb) a3  <-- 38
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000080c addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 38, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 62, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
      0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 62, a5  = 60, (wrb) a5  <-- 2
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 38, (wrb) a3  <-- 37
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000080c addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 37, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 63, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
      0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 63, a5  = 60, (wrb) a5  <-- 3
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 37, (wrb) a3  <-- 36
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000080c addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 36, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 64, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
      0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 64, a5  = 60, (wrb) a5  <-- 4
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 36, (wrb) a3  <-- 35
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000080c addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 35, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 65, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
      0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 65, a5  = 60, (wrb) a5  <-- 5
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 35, (wrb) a3  <-- 34
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000080c addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 34, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 66, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
      0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 66, a5  = 60, (wrb) a5  <-- 6
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 34, (wrb) a3  <-- 33
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000080c addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 33, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 67, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
      0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 67, a5  = 60, (wrb) a5  <-- 7
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 33, (wrb) a3  <-- 32
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000080c addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 32, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 68, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
      0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 68, a5  = 60, (wrb) a5  <-- 8
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 32, (wrb) a3  <-- 31
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000080c addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 31, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 69, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
      0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 69, a5  = 60, (wrb) a5  <-- 9
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 31, (wrb) a3  <-- 30
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000080c addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 30, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 70, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
      0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 70, a5  = 70, (wrb) a5  <-- 0
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 30, (wrb) a3  <-- 29
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000080c addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 29, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 71, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
      0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 71, a5  = 70, (wrb) a5  <-- 1
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 29, (wrb) a3  <-- 28
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000080c addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 28, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 72, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
      0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 72, a5  = 70, (wrb) a5  <-- 2
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 28, (wrb) a3  <-- 27
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000080c addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 27, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 73, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
      0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 73, a5  = 70, (wrb) a5  <-- 3
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 27, (wrb) a3  <-- 26
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000080c addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 26, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 74, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
      0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 74, a5  = 70, (wrb) a5  <-- 4
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 26, (wrb) a3  <-- 25
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000080c addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 25, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 75, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
      0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 75, a5  = 70, (wrb) a5  <-- 5
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000080c addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 24, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 76, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
      0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 76, a5  = 70, (wrb) a5  <-- 6
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000080c addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 23, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 77, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
      0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 77, a5  = 70, (wrb) a5  <-- 7
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000080c addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 22, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 78, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
      0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 78, a5  = 70, (wrb) a5  <-- 8
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000080c addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 21, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 79, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
      0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 79, a5  = 70, (wrb) a5  <-- 9
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000080c addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 20, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 80, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
      0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 80, a5  = 80, (wrb) a5  <-- 0
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000080c addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 19, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 81, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
      0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 81, a5  = 80, (wrb) a5  <-- 1
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000080c addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 18, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 82, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
      0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 82, a5  = 80, (wrb) a5  <-- 2
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000080c addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 17, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 83, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
      0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 83, a5  = 80, (wrb) a5  <-- 3
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000080c addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 16, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 84, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
      0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 84, a5  = 80, (wrb) a5  <-- 4
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000080c addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 15, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 85, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
      0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 85, a5  = 80, (wrb) a5  <-- 5
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000080c addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 14, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 86, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
      0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 86, a5  = 80, (wrb) a5  <-- 6
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000080c addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 13, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 87, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
      0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 87, a5  = 80, (wrb) a5  <-- 7
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000080c addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 12, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 88, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
      0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 88, a5  = 80, (wrb) a5  <-- 8
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000080c addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 11, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 89, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
      0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 89, a5  = 80, (wrb) a5  <-- 9
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000080c addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 10, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 90, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
      0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 90, a5  = 90, (wrb) a5  <-- 0
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000080c addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 9, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 91, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
      0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 91, a5  = 90, (wrb) a5  <-- 1
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000080c addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 8, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 92, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
      0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 92, a5  = 90, (wrb) a5  <-- 2
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000080c addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 7, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 93, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
      0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 93, a5  = 90, (wrb) a5  <-- 3
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000080c addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 6, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 94, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
      0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 94, a5  = 90, (wrb) a5  <-- 4
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000080c addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 5, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 95, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
      0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 95, a5  = 90, (wrb) a5  <-- 5
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000080c addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 4, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 96, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
      0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 96, a5  = 90, (wrb) a5  <-- 6
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000080c addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 3, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 97, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
      0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 97, a5  = 90, (wrb) a5  <-- 7
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000080c addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 2, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 98, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
      0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 98, a5  = 90, (wrb) a5  <-- 8
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000080c addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 1, taken, goto 0x800007f0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007f0 mulhu   a5, a2, a4             #; a2  = 99, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800007f4 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
      0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f607b3
      0x800007fc sub     a5, a2, a5             #; a2  = 99, a5  = 90, (wrb) a5  <-- 9
      0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000808 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000080c addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
      0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000810 bnez    a3, pc - 32            #; a3  = 0, not taken
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:38)
      0x80000818 j       pc + 0x44              #; goto 0x8000085c
      0x80000814 csrrci  a2, ssr, 1             #; 
; main (bench_sp.c:0)
      0x8000085c li      a3, 0                  #; (wrb) a3  <-- 0
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:40)
      0x80000864 csrr    a2, mcycle             #; mcycle = 4888, (wrb) a2  <-- 4888
      0x80000860 fcvt.d.w fs0, zero             #; ac1  = 0
; benchmark_get_cycle (benchmark.c:0)
;  in main (bench_sp.c:40)
      0x80000868 li      a4, 800                #; (wrb) a4  <-- 800
                                                #; (f:fpu) fs0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 0, (wrb) a5  <-- 0x00100000
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 0, (wrb) a5  <-- 0x00100320
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100000]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 0, (wrb) a3  <-- 8
                                                #; (f:lsu) ft3  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100320]
                                                #; (f:lsu) ft4  <-- 0.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 8, a4  = 800, taken, goto 0x8000086c
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 8, (wrb) a5  <-- 0x00100008
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 0.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 8, (wrb) a5  <-- 0x00100328
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100008], (f:fpu) fs0  <-- 0.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 8, (wrb) a3  <-- 16
                                                #; (f:lsu) ft3  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100328]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 16, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 16, (wrb) a5  <-- 0x00100010
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 0.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 16, (wrb) a5  <-- 0x00100330
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100010], (f:fpu) fs0  <-- 1.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 16, (wrb) a3  <-- 24
                                                #; (f:lsu) ft3  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100330]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 24, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 24, (wrb) a5  <-- 0x00100018
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 1.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 24, (wrb) a5  <-- 0x00100338
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100018], (f:fpu) fs0  <-- 5.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 24, (wrb) a3  <-- 32
                                                #; (f:lsu) ft3  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100338]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 32, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 32, (wrb) a5  <-- 0x00100020
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 5.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 32, (wrb) a5  <-- 0x00100340
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100020], (f:fpu) fs0  <-- 14.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 32, (wrb) a3  <-- 40
                                                #; (f:lsu) ft3  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100340]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 40, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 40, (wrb) a5  <-- 0x00100028
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 14.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 40, (wrb) a5  <-- 0x00100348
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100028], (f:fpu) fs0  <-- 30.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 40, (wrb) a3  <-- 48
                                                #; (f:lsu) ft3  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100348]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 48, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 48, (wrb) a5  <-- 0x00100030
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 30.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 48, (wrb) a5  <-- 0x00100350
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100030], (f:fpu) fs0  <-- 55.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 48, (wrb) a3  <-- 56
                                                #; (f:lsu) ft3  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100350]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 56, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 56, (wrb) a5  <-- 0x00100038
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 55.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 56, (wrb) a5  <-- 0x00100358
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100038], (f:fpu) fs0  <-- 91.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 56, (wrb) a3  <-- 64
                                                #; (f:lsu) ft3  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100358]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 64, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 64, (wrb) a5  <-- 0x00100040
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 91.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 64, (wrb) a5  <-- 0x00100360
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100040], (f:fpu) fs0  <-- 140.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 64, (wrb) a3  <-- 72
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100360]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 72, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 72, (wrb) a5  <-- 0x00100048
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 140.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 72, (wrb) a5  <-- 0x00100368
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100048], (f:fpu) fs0  <-- 204.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 72, (wrb) a3  <-- 80
                                                #; (f:lsu) ft3  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100368]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 80, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 80, (wrb) a5  <-- 0x00100050
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 204.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 80, (wrb) a5  <-- 0x00100370
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100050], (f:fpu) fs0  <-- 285.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 80, (wrb) a3  <-- 88
                                                #; (f:lsu) ft3  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100370]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 88, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 88, (wrb) a5  <-- 0x00100058
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 285.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 88, (wrb) a5  <-- 0x00100378
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100058], (f:fpu) fs0  <-- 285.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 88, (wrb) a3  <-- 96
                                                #; (f:lsu) ft3  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100378]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 96, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 96, (wrb) a5  <-- 0x00100060
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 285.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 96, (wrb) a5  <-- 0x00100380
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100060], (f:fpu) fs0  <-- 286.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 96, (wrb) a3  <-- 104
                                                #; (f:lsu) ft3  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100380]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 104, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 104, (wrb) a5  <-- 0x00100068
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 286.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 104, (wrb) a5  <-- 0x00100388
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100068], (f:fpu) fs0  <-- 290.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 104, (wrb) a3  <-- 112
                                                #; (f:lsu) ft3  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100388]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 112, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 112, (wrb) a5  <-- 0x00100070
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 290.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 112, (wrb) a5  <-- 0x00100390
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100070], (f:fpu) fs0  <-- 299.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 112, (wrb) a3  <-- 120
                                                #; (f:lsu) ft3  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100390]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 120, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 120, (wrb) a5  <-- 0x00100078
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 299.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 120, (wrb) a5  <-- 0x00100398
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100078], (f:fpu) fs0  <-- 315.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 120, (wrb) a3  <-- 128
                                                #; (f:lsu) ft3  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100398]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 128, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 128, (wrb) a5  <-- 0x00100080
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 315.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 128, (wrb) a5  <-- 0x001003a0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100080], (f:fpu) fs0  <-- 340.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 128, (wrb) a3  <-- 136
                                                #; (f:lsu) ft3  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003a0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 136, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 136, (wrb) a5  <-- 0x00100088
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 340.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 136, (wrb) a5  <-- 0x001003a8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100088], (f:fpu) fs0  <-- 376.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 136, (wrb) a3  <-- 144
                                                #; (f:lsu) ft3  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003a8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 144, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 144, (wrb) a5  <-- 0x00100090
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 376.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 144, (wrb) a5  <-- 0x001003b0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100090], (f:fpu) fs0  <-- 425.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 144, (wrb) a3  <-- 152
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003b0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 152, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 152, (wrb) a5  <-- 0x00100098
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 425.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 152, (wrb) a5  <-- 0x001003b8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100098], (f:fpu) fs0  <-- 489.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 152, (wrb) a3  <-- 160
                                                #; (f:lsu) ft3  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003b8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 160, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 160, (wrb) a5  <-- 0x001000a0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 489.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 160, (wrb) a5  <-- 0x001003c0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000a0], (f:fpu) fs0  <-- 570.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 160, (wrb) a3  <-- 168
                                                #; (f:lsu) ft3  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003c0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 168, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 168, (wrb) a5  <-- 0x001000a8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 570.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 168, (wrb) a5  <-- 0x001003c8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) fs0  <-- 570.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 168, (wrb) a3  <-- 176
                                                #; (f:lsu) ft3  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003c8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 176, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 176, (wrb) a5  <-- 0x001000b0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 570.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 176, (wrb) a5  <-- 0x001003d0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000b0], (f:fpu) fs0  <-- 571.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 176, (wrb) a3  <-- 184
                                                #; (f:lsu) ft3  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003d0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 184, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 184, (wrb) a5  <-- 0x001000b8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 571.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 184, (wrb) a5  <-- 0x001003d8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000b8], (f:fpu) fs0  <-- 575.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 184, (wrb) a3  <-- 192
                                                #; (f:lsu) ft3  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003d8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 192, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 192, (wrb) a5  <-- 0x001000c0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 575.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 192, (wrb) a5  <-- 0x001003e0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000c0], (f:fpu) fs0  <-- 584.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 192, (wrb) a3  <-- 200
                                                #; (f:lsu) ft3  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003e0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 200, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 200, (wrb) a5  <-- 0x001000c8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 584.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 200, (wrb) a5  <-- 0x001003e8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000c8], (f:fpu) fs0  <-- 600.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 200, (wrb) a3  <-- 208
                                                #; (f:lsu) ft3  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003e8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 208, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 208, (wrb) a5  <-- 0x001000d0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 600.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 208, (wrb) a5  <-- 0x001003f0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000d0], (f:fpu) fs0  <-- 625.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 208, (wrb) a3  <-- 216
                                                #; (f:lsu) ft3  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003f0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 216, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 216, (wrb) a5  <-- 0x001000d8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 625.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 216, (wrb) a5  <-- 0x001003f8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) fs0  <-- 661.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 216, (wrb) a3  <-- 224
                                                #; (f:lsu) ft3  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003f8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 224, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 224, (wrb) a5  <-- 0x001000e0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 661.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 224, (wrb) a5  <-- 0x00100400
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000e0], (f:fpu) fs0  <-- 710.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 224, (wrb) a3  <-- 232
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100400]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 232, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 232, (wrb) a5  <-- 0x001000e8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 710.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 232, (wrb) a5  <-- 0x00100408
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000e8], (f:fpu) fs0  <-- 774.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 232, (wrb) a3  <-- 240
                                                #; (f:lsu) ft3  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100408]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 240, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 240, (wrb) a5  <-- 0x001000f0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 774.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 240, (wrb) a5  <-- 0x00100410
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000f0], (f:fpu) fs0  <-- 855.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 240, (wrb) a3  <-- 248
                                                #; (f:lsu) ft3  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100410]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 248, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 248, (wrb) a5  <-- 0x001000f8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 855.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 248, (wrb) a5  <-- 0x00100418
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000f8], (f:fpu) fs0  <-- 855.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 248, (wrb) a3  <-- 256
                                                #; (f:lsu) ft3  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100418]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 256, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 256, (wrb) a5  <-- 0x00100100
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 855.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 256, (wrb) a5  <-- 0x00100420
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100100], (f:fpu) fs0  <-- 856.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 256, (wrb) a3  <-- 264
                                                #; (f:lsu) ft3  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100420]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 264, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 264, (wrb) a5  <-- 0x00100108
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 856.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 264, (wrb) a5  <-- 0x00100428
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100108], (f:fpu) fs0  <-- 860.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 264, (wrb) a3  <-- 272
                                                #; (f:lsu) ft3  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100428]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 272, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 272, (wrb) a5  <-- 0x00100110
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 860.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 272, (wrb) a5  <-- 0x00100430
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100110], (f:fpu) fs0  <-- 869.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 272, (wrb) a3  <-- 280
                                                #; (f:lsu) ft3  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100430]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 280, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 280, (wrb) a5  <-- 0x00100118
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 869.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 280, (wrb) a5  <-- 0x00100438
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100118], (f:fpu) fs0  <-- 885.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 280, (wrb) a3  <-- 288
                                                #; (f:lsu) ft3  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100438]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 288, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 288, (wrb) a5  <-- 0x00100120
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 885.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 288, (wrb) a5  <-- 0x00100440
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100120], (f:fpu) fs0  <-- 910.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 288, (wrb) a3  <-- 296
                                                #; (f:lsu) ft3  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100440]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 296, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 296, (wrb) a5  <-- 0x00100128
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 910.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 296, (wrb) a5  <-- 0x00100448
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100128], (f:fpu) fs0  <-- 946.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 296, (wrb) a3  <-- 304
                                                #; (f:lsu) ft3  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100448]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 304, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 304, (wrb) a5  <-- 0x00100130
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 946.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 304, (wrb) a5  <-- 0x00100450
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100130], (f:fpu) fs0  <-- 995.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 304, (wrb) a3  <-- 312
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100450]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 312, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 312, (wrb) a5  <-- 0x00100138
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 995.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 312, (wrb) a5  <-- 0x00100458
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100138], (f:fpu) fs0  <-- 1059.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 312, (wrb) a3  <-- 320
                                                #; (f:lsu) ft3  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100458]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 320, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 320, (wrb) a5  <-- 0x00100140
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 1059.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 320, (wrb) a5  <-- 0x00100460
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100140], (f:fpu) fs0  <-- 1140.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 320, (wrb) a3  <-- 328
                                                #; (f:lsu) ft3  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100460]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 328, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 328, (wrb) a5  <-- 0x00100148
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 1140.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 328, (wrb) a5  <-- 0x00100468
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100148], (f:fpu) fs0  <-- 1140.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 328, (wrb) a3  <-- 336
                                                #; (f:lsu) ft3  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100468]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 336, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 336, (wrb) a5  <-- 0x00100150
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 1140.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 336, (wrb) a5  <-- 0x00100470
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100150], (f:fpu) fs0  <-- 1141.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 336, (wrb) a3  <-- 344
                                                #; (f:lsu) ft3  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100470]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 344, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 344, (wrb) a5  <-- 0x00100158
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 1141.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 344, (wrb) a5  <-- 0x00100478
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100158], (f:fpu) fs0  <-- 1145.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 344, (wrb) a3  <-- 352
                                                #; (f:lsu) ft3  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100478]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 352, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 352, (wrb) a5  <-- 0x00100160
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 1145.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 352, (wrb) a5  <-- 0x00100480
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100160], (f:fpu) fs0  <-- 1154.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 352, (wrb) a3  <-- 360
                                                #; (f:lsu) ft3  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100480]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 360, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 360, (wrb) a5  <-- 0x00100168
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 1154.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 360, (wrb) a5  <-- 0x00100488
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100168], (f:fpu) fs0  <-- 1170.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 360, (wrb) a3  <-- 368
                                                #; (f:lsu) ft3  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100488]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 368, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 368, (wrb) a5  <-- 0x00100170
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 1170.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 368, (wrb) a5  <-- 0x00100490
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100170], (f:fpu) fs0  <-- 1195.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 368, (wrb) a3  <-- 376
                                                #; (f:lsu) ft3  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100490]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 376, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 376, (wrb) a5  <-- 0x00100178
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 1195.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 376, (wrb) a5  <-- 0x00100498
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100178], (f:fpu) fs0  <-- 1231.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 376, (wrb) a3  <-- 384
                                                #; (f:lsu) ft3  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100498]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 384, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 384, (wrb) a5  <-- 0x00100180
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 1231.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 384, (wrb) a5  <-- 0x001004a0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100180], (f:fpu) fs0  <-- 1280.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 384, (wrb) a3  <-- 392
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004a0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 392, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 392, (wrb) a5  <-- 0x00100188
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 1280.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 392, (wrb) a5  <-- 0x001004a8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100188], (f:fpu) fs0  <-- 1344.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 392, (wrb) a3  <-- 400
                                                #; (f:lsu) ft3  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004a8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 400, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 400, (wrb) a5  <-- 0x00100190
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 1344.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 400, (wrb) a5  <-- 0x001004b0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100190], (f:fpu) fs0  <-- 1425.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 400, (wrb) a3  <-- 408
                                                #; (f:lsu) ft3  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004b0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 408, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 408, (wrb) a5  <-- 0x00100198
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 1425.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 408, (wrb) a5  <-- 0x001004b8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100198], (f:fpu) fs0  <-- 1425.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 408, (wrb) a3  <-- 416
                                                #; (f:lsu) ft3  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004b8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 416, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 416, (wrb) a5  <-- 0x001001a0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 1425.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 416, (wrb) a5  <-- 0x001004c0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001a0], (f:fpu) fs0  <-- 1426.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 416, (wrb) a3  <-- 424
                                                #; (f:lsu) ft3  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004c0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 424, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 424, (wrb) a5  <-- 0x001001a8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 1426.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 424, (wrb) a5  <-- 0x001004c8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001a8], (f:fpu) fs0  <-- 1430.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 424, (wrb) a3  <-- 432
                                                #; (f:lsu) ft3  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004c8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 432, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 432, (wrb) a5  <-- 0x001001b0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 1430.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 432, (wrb) a5  <-- 0x001004d0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001b0], (f:fpu) fs0  <-- 1439.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 432, (wrb) a3  <-- 440
                                                #; (f:lsu) ft3  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004d0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 440, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 440, (wrb) a5  <-- 0x001001b8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 1439.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 440, (wrb) a5  <-- 0x001004d8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001b8], (f:fpu) fs0  <-- 1455.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 440, (wrb) a3  <-- 448
                                                #; (f:lsu) ft3  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004d8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 448, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 448, (wrb) a5  <-- 0x001001c0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 1455.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 448, (wrb) a5  <-- 0x001004e0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001c0], (f:fpu) fs0  <-- 1480.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 448, (wrb) a3  <-- 456
                                                #; (f:lsu) ft3  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004e0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 456, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 456, (wrb) a5  <-- 0x001001c8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 1480.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 456, (wrb) a5  <-- 0x001004e8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001c8], (f:fpu) fs0  <-- 1516.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 456, (wrb) a3  <-- 464
                                                #; (f:lsu) ft3  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004e8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 464, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 464, (wrb) a5  <-- 0x001001d0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 1516.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 464, (wrb) a5  <-- 0x001004f0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001d0], (f:fpu) fs0  <-- 1565.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 464, (wrb) a3  <-- 472
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004f0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 472, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 472, (wrb) a5  <-- 0x001001d8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 1565.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 472, (wrb) a5  <-- 0x001004f8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001d8], (f:fpu) fs0  <-- 1629.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 472, (wrb) a3  <-- 480
                                                #; (f:lsu) ft3  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004f8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 480, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 480, (wrb) a5  <-- 0x001001e0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 1629.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 480, (wrb) a5  <-- 0x00100500
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001e0], (f:fpu) fs0  <-- 1710.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 480, (wrb) a3  <-- 488
                                                #; (f:lsu) ft3  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100500]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 488, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 488, (wrb) a5  <-- 0x001001e8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 1710.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 488, (wrb) a5  <-- 0x00100508
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001e8], (f:fpu) fs0  <-- 1710.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 488, (wrb) a3  <-- 496
                                                #; (f:lsu) ft3  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100508]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 496, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 496, (wrb) a5  <-- 0x001001f0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 1710.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 496, (wrb) a5  <-- 0x00100510
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001f0], (f:fpu) fs0  <-- 1711.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 496, (wrb) a3  <-- 504
                                                #; (f:lsu) ft3  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100510]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 504, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 504, (wrb) a5  <-- 0x001001f8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 1711.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 504, (wrb) a5  <-- 0x00100518
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001f8], (f:fpu) fs0  <-- 1715.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 504, (wrb) a3  <-- 512
                                                #; (f:lsu) ft3  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100518]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 512, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 512, (wrb) a5  <-- 0x00100200
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 1715.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 512, (wrb) a5  <-- 0x00100520
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100200], (f:fpu) fs0  <-- 1724.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 512, (wrb) a3  <-- 520
                                                #; (f:lsu) ft3  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100520]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 520, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 520, (wrb) a5  <-- 0x00100208
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 1724.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 520, (wrb) a5  <-- 0x00100528
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100208], (f:fpu) fs0  <-- 1740.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 520, (wrb) a3  <-- 528
                                                #; (f:lsu) ft3  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100528]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 528, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 528, (wrb) a5  <-- 0x00100210
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 1740.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 528, (wrb) a5  <-- 0x00100530
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100210], (f:fpu) fs0  <-- 1765.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 528, (wrb) a3  <-- 536
                                                #; (f:lsu) ft3  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100530]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 536, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 536, (wrb) a5  <-- 0x00100218
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 1765.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 536, (wrb) a5  <-- 0x00100538
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100218], (f:fpu) fs0  <-- 1801.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 536, (wrb) a3  <-- 544
                                                #; (f:lsu) ft3  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100538]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 544, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 544, (wrb) a5  <-- 0x00100220
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 1801.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 544, (wrb) a5  <-- 0x00100540
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100220], (f:fpu) fs0  <-- 1850.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 544, (wrb) a3  <-- 552
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100540]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 552, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 552, (wrb) a5  <-- 0x00100228
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 1850.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 552, (wrb) a5  <-- 0x00100548
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100228], (f:fpu) fs0  <-- 1914.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 552, (wrb) a3  <-- 560
                                                #; (f:lsu) ft3  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100548]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 560, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 560, (wrb) a5  <-- 0x00100230
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 1914.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 560, (wrb) a5  <-- 0x00100550
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100230], (f:fpu) fs0  <-- 1995.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 560, (wrb) a3  <-- 568
                                                #; (f:lsu) ft3  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100550]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 568, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 568, (wrb) a5  <-- 0x00100238
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 1995.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 568, (wrb) a5  <-- 0x00100558
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100238], (f:fpu) fs0  <-- 1995.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 568, (wrb) a3  <-- 576
                                                #; (f:lsu) ft3  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100558]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 576, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 576, (wrb) a5  <-- 0x00100240
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 1995.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 576, (wrb) a5  <-- 0x00100560
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100240], (f:fpu) fs0  <-- 1996.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 576, (wrb) a3  <-- 584
                                                #; (f:lsu) ft3  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100560]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 584, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 584, (wrb) a5  <-- 0x00100248
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 1996.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 584, (wrb) a5  <-- 0x00100568
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100248], (f:fpu) fs0  <-- 2000.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 584, (wrb) a3  <-- 592
                                                #; (f:lsu) ft3  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100568]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 592, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 592, (wrb) a5  <-- 0x00100250
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 2000.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 592, (wrb) a5  <-- 0x00100570
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100250], (f:fpu) fs0  <-- 2009.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 592, (wrb) a3  <-- 600
                                                #; (f:lsu) ft3  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100570]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 600, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 600, (wrb) a5  <-- 0x00100258
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 2009.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 600, (wrb) a5  <-- 0x00100578
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100258], (f:fpu) fs0  <-- 2025.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 600, (wrb) a3  <-- 608
                                                #; (f:lsu) ft3  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100578]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 608, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 608, (wrb) a5  <-- 0x00100260
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 2025.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 608, (wrb) a5  <-- 0x00100580
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100260], (f:fpu) fs0  <-- 2050.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 608, (wrb) a3  <-- 616
                                                #; (f:lsu) ft3  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100580]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 616, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 616, (wrb) a5  <-- 0x00100268
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 2050.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 616, (wrb) a5  <-- 0x00100588
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100268], (f:fpu) fs0  <-- 2086.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 616, (wrb) a3  <-- 624
                                                #; (f:lsu) ft3  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100588]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 624, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 624, (wrb) a5  <-- 0x00100270
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 2086.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 624, (wrb) a5  <-- 0x00100590
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100270], (f:fpu) fs0  <-- 2135.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 624, (wrb) a3  <-- 632
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100590]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 632, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 632, (wrb) a5  <-- 0x00100278
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 2135.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 632, (wrb) a5  <-- 0x00100598
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100278], (f:fpu) fs0  <-- 2199.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 632, (wrb) a3  <-- 640
                                                #; (f:lsu) ft3  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100598]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 640, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 640, (wrb) a5  <-- 0x00100280
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 2199.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 640, (wrb) a5  <-- 0x001005a0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100280], (f:fpu) fs0  <-- 2280.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 640, (wrb) a3  <-- 648
                                                #; (f:lsu) ft3  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005a0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 648, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 648, (wrb) a5  <-- 0x00100288
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 2280.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 648, (wrb) a5  <-- 0x001005a8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100288], (f:fpu) fs0  <-- 2280.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 648, (wrb) a3  <-- 656
                                                #; (f:lsu) ft3  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005a8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 656, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 656, (wrb) a5  <-- 0x00100290
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 2280.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 656, (wrb) a5  <-- 0x001005b0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100290], (f:fpu) fs0  <-- 2281.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 656, (wrb) a3  <-- 664
                                                #; (f:lsu) ft3  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005b0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 664, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 664, (wrb) a5  <-- 0x00100298
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 2281.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 664, (wrb) a5  <-- 0x001005b8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100298], (f:fpu) fs0  <-- 2285.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 664, (wrb) a3  <-- 672
                                                #; (f:lsu) ft3  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005b8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 672, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 672, (wrb) a5  <-- 0x001002a0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 2285.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 672, (wrb) a5  <-- 0x001005c0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002a0], (f:fpu) fs0  <-- 2294.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 672, (wrb) a3  <-- 680
                                                #; (f:lsu) ft3  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005c0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 680, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 680, (wrb) a5  <-- 0x001002a8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 2294.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 680, (wrb) a5  <-- 0x001005c8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002a8], (f:fpu) fs0  <-- 2310.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 680, (wrb) a3  <-- 688
                                                #; (f:lsu) ft3  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005c8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 688, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 688, (wrb) a5  <-- 0x001002b0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 2310.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 688, (wrb) a5  <-- 0x001005d0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002b0], (f:fpu) fs0  <-- 2335.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 688, (wrb) a3  <-- 696
                                                #; (f:lsu) ft3  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005d0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 696, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 696, (wrb) a5  <-- 0x001002b8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 2335.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 696, (wrb) a5  <-- 0x001005d8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002b8], (f:fpu) fs0  <-- 2371.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 696, (wrb) a3  <-- 704
                                                #; (f:lsu) ft3  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005d8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 704, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 704, (wrb) a5  <-- 0x001002c0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 2371.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 704, (wrb) a5  <-- 0x001005e0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002c0], (f:fpu) fs0  <-- 2420.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 704, (wrb) a3  <-- 712
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005e0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 712, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 712, (wrb) a5  <-- 0x001002c8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 2420.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 712, (wrb) a5  <-- 0x001005e8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002c8], (f:fpu) fs0  <-- 2484.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 712, (wrb) a3  <-- 720
                                                #; (f:lsu) ft3  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005e8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 720, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 720, (wrb) a5  <-- 0x001002d0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 2484.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 720, (wrb) a5  <-- 0x001005f0
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002d0], (f:fpu) fs0  <-- 2565.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 720, (wrb) a3  <-- 728
                                                #; (f:lsu) ft3  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005f0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 728, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 728, (wrb) a5  <-- 0x001002d8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 2565.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 728, (wrb) a5  <-- 0x001005f8
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002d8], (f:fpu) fs0  <-- 2565.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 728, (wrb) a3  <-- 736
                                                #; (f:lsu) ft3  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005f8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 736, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 736, (wrb) a5  <-- 0x001002e0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 2565.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 736, (wrb) a5  <-- 0x00100600
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002e0], (f:fpu) fs0  <-- 2566.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 736, (wrb) a3  <-- 744
                                                #; (f:lsu) ft3  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100600]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 744, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 744, (wrb) a5  <-- 0x001002e8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 2566.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 744, (wrb) a5  <-- 0x00100608
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002e8], (f:fpu) fs0  <-- 2570.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 744, (wrb) a3  <-- 752
                                                #; (f:lsu) ft3  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100608]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 752, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 752, (wrb) a5  <-- 0x001002f0
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 2570.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 752, (wrb) a5  <-- 0x00100610
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002f0], (f:fpu) fs0  <-- 2579.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 752, (wrb) a3  <-- 760
                                                #; (f:lsu) ft3  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100610]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 760, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 760, (wrb) a5  <-- 0x001002f8
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 2579.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 760, (wrb) a5  <-- 0x00100618
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002f8], (f:fpu) fs0  <-- 2595.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 760, (wrb) a3  <-- 768
                                                #; (f:lsu) ft3  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100618]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 768, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 768, (wrb) a5  <-- 0x00100300
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 2595.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 768, (wrb) a5  <-- 0x00100620
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100300], (f:fpu) fs0  <-- 2620.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 768, (wrb) a3  <-- 776
                                                #; (f:lsu) ft3  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100620]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 776, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 776, (wrb) a5  <-- 0x00100308
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 2620.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 776, (wrb) a5  <-- 0x00100628
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100308], (f:fpu) fs0  <-- 2656.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 776, (wrb) a3  <-- 784
                                                #; (f:lsu) ft3  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100628]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 784, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 784, (wrb) a5  <-- 0x00100310
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 2656.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 784, (wrb) a5  <-- 0x00100630
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100310], (f:fpu) fs0  <-- 2705.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 784, (wrb) a3  <-- 792
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100630]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 792, a4  = 800, taken, goto 0x8000086c
                                                #; (f:lsu) ft4  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 792, (wrb) a5  <-- 0x00100318
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 2705.0
      0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 792, (wrb) a5  <-- 0x00100638
      0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100318], (f:fpu) fs0  <-- 2769.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x8000087c addi    a3, a3, 8              #; a3  = 792, (wrb) a3  <-- 800
                                                #; (f:lsu) ft3  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100638]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000884 bne     a3, a4, pc - 24        #; a3  = 800, a4  = 800, not taken
                                                #; (f:lsu) ft4  <-- 9.0
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:48)
      0x80000888 csrr    a0, mcycle             #; mcycle = 5606, (wrb) a0  <-- 5606
      0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 2769.0
; main (bench_sp.c:50)
      0x8000088c sub     a1, a0, a2             #; a0  = 5606, a2  = 4888, (wrb) a1  <-- 718
                                                #; (f:fpu) fs0  <-- 2850.0
      0x80000890 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002890
      0x80000894 addi    a0, a0, 977            #; a0  = 0x80002890, (wrb) a0  <-- 0x80002c61
      0x80000898 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000898
      0x8000089c jalr    ra, ra, 132            #; ra  = 0x80000898, (wrb) ra  <-- 0x800008a0, goto 0x8000091c
; printf_ (printf.c:863)
      0x8000091c addi    sp, sp, -48            #; sp  = 0x0011fef0, (wrb) sp  <-- 0x0011fec0
      0x80000920 sw      ra, 12(sp)             #; sp  = 0x0011fec0, 0x800008a0 ~~> Word[0x0011fecc]
      0x80000924 mv      t0, a0                 #; a0  = 0x80002c61, (wrb) t0  <-- 0x80002c61
      0x80000928 sw      a7, 44(sp)             #; sp  = 0x0011fec0, 0xffff0000 ~~> Word[0x0011feec]
      0x8000092c sw      a6, 40(sp)             #; sp  = 0x0011fec0, 10 ~~> Word[0x0011fee8]
      0x80000930 sw      a5, 36(sp)             #; sp  = 0x0011fec0, 0x00100638 ~~> Word[0x0011fee4]
      0x80000934 sw      a4, 32(sp)             #; sp  = 0x0011fec0, 800 ~~> Word[0x0011fee0]
      0x80000938 sw      a3, 28(sp)             #; sp  = 0x0011fec0, 800 ~~> Word[0x0011fedc]
      0x8000093c sw      a2, 24(sp)             #; sp  = 0x0011fec0, 4888 ~~> Word[0x0011fed8]
      0x80000940 sw      a1, 20(sp)             #; sp  = 0x0011fec0, 718 ~~> Word[0x0011fed4]
      0x80000944 addi    a0, sp, 20             #; sp  = 0x0011fec0, (wrb) a0  <-- 0x0011fed4
; printf_ (printf.c:865)
      0x80000948 sw      a0, 8(sp)              #; sp  = 0x0011fec0, 0x0011fed4 ~~> Word[0x0011fec8]
; printf_ (printf.c:867)
      0x8000094c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000194c
      0x80000950 addi    a0, a0, -988           #; a0  = 0x8000194c, (wrb) a0  <-- 0x80001570
      0x80000954 addi    a1, sp, 7              #; sp  = 0x0011fec0, (wrb) a1  <-- 0x0011fec7
      0x80000958 li      a2, -1                 #; (wrb) a2  <-- -1
      0x8000095c addi    a4, sp, 20             #; sp  = 0x0011fec0, (wrb) a4  <-- 0x0011fed4
      0x80000960 mv      a3, t0                 #; t0  = 0x80002c61, (wrb) a3  <-- 0x80002c61
      0x80000964 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000964
      0x80000968 jalr    ra, ra, 20             #; ra  = 0x80000964, (wrb) ra  <-- 0x8000096c, goto 0x80000978
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000978 addi    sp, sp, -112           #; sp  = 0x0011fec0, (wrb) sp  <-- 0x0011fe50
      0x8000097c sw      ra, 108(sp)            #; sp  = 0x0011fe50, 0x8000096c ~~> Word[0x0011febc]
      0x80000980 sw      s0, 104(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb8]
      0x80000984 sw      s1, 100(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb4]
      0x80000988 sw      s2, 96(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb0]
      0x8000098c sw      s3, 92(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feac]
      0x80000990 sw      s4, 88(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea8]
      0x80000994 sw      s5, 84(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea4]
      0x80000998 sw      s6, 80(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea0]
      0x8000099c sw      s7, 76(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe9c]
      0x800009a0 sw      s8, 72(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe98]
      0x800009a4 sw      s9, 68(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe94]
      0x800009a8 sw      s10, 64(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe90]
      0x800009ac sw      s11, 60(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe8c]
      0x800009b0 mv      s3, a4                 #; a4  = 0x0011fed4, (wrb) s3  <-- 0x0011fed4
      0x800009b4 mv      s0, a3                 #; a3  = 0x80002c61, (wrb) s0  <-- 0x80002c61
      0x800009b8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800009bc mv      s4, a1                 #; a1  = 0x0011fec7, (wrb) s4  <-- 0x0011fec7
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x800009c0 beqz    a1, pc + 12            #; a1  = 0x0011fec7, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009c4 mv      s2, a0                 #; a0  = 0x80001570, (wrb) s2  <-- 0x80001570
      0x800009c8 j       pc + 0xc               #; goto 0x800009d4
      0x800009d4 li      s8, 0                  #; (wrb) s8  <-- 0
      0x800009d8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800009dc li      s11, 16                #; (wrb) s11 <-- 16
      0x800009e0 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800009e4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x800009e8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x800009ec sw      a0, 24(sp)             #; sp  = 0x0011fe50, 2048 ~~> Word[0x0011fe68]
      0x800009f0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x800009f4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x800009f8 sw      a0, 16(sp)             #; sp  = 0x0011fe50, 65535 ~~> Word[0x0011fe60]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009fc addi    s10, s0, 2             #; s0  = 0x80002c61, (wrb) s10 <-- 0x80002c63
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a00 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000a04 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a08 lbu     a0, 0(s0)              #; s0  = 0x80002c61, a0  <~~ Byte[0x80002c61]
                                                #; (lsu) a0  <-- 99
      0x80000a0c beqz    a0, pc + 2824          #; a0  = 99, not taken
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 0
      0x80001590 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 1 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 0, (wrb) a4  <-- 0x80002f94
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f94, 99 ~~> Byte[0x80002fdc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 1
      0x800015a4 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800015a8 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x800015b0 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c61, (wrb) s0  <-- 0x80002c62
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c63, (wrb) s10 <-- 0x80002c64
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c62, a0  <~~ Byte[0x80002c62]
                                                #; (lsu) a0  <-- 121
      0x80000a38 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 121, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 1
      0x80001590 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 2 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 1, (wrb) a4  <-- 0x80002f95
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f95, 121 ~~> Byte[0x80002fdd]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 2
      0x800015a4 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800015a8 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
      0x800015b0 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c62, (wrb) s0  <-- 0x80002c63
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c64, (wrb) s10 <-- 0x80002c65
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c63, a0  <~~ Byte[0x80002c63]
                                                #; (lsu) a0  <-- 99
      0x80000a38 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 2
      0x80001590 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 3 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 2, (wrb) a4  <-- 0x80002f96
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f96, 99 ~~> Byte[0x80002fde]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 3
      0x800015a4 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800015a8 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x800015b0 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c63, (wrb) s0  <-- 0x80002c64
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c65, (wrb) s10 <-- 0x80002c66
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c64, a0  <~~ Byte[0x80002c64]
                                                #; (lsu) a0  <-- 108
      0x80000a38 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 108, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 3
      0x80001590 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 4 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 3, (wrb) a4  <-- 0x80002f97
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f97, 108 ~~> Byte[0x80002fdf]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 4
      0x800015a4 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800015a8 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
      0x800015b0 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c64, (wrb) s0  <-- 0x80002c65
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c66, (wrb) s10 <-- 0x80002c67
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c65, a0  <~~ Byte[0x80002c65]
                                                #; (lsu) a0  <-- 101
      0x80000a38 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 4
      0x80001590 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 5 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 4, (wrb) a4  <-- 0x80002f98
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f98, 101 ~~> Byte[0x80002fe0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 5
      0x800015a4 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800015a8 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800015b0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c65, (wrb) s0  <-- 0x80002c66
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c67, (wrb) s10 <-- 0x80002c68
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c66, a0  <~~ Byte[0x80002c66]
                                                #; (lsu) a0  <-- 115
      0x80000a38 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 115, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 5
      0x80001590 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 6 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 5, (wrb) a4  <-- 0x80002f99
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f99, 115 ~~> Byte[0x80002fe1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 6
      0x800015a4 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800015a8 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
      0x800015b0 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c66, (wrb) s0  <-- 0x80002c67
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c68, (wrb) s10 <-- 0x80002c69
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c67, a0  <~~ Byte[0x80002c67]
                                                #; (lsu) a0  <-- 32
      0x80000a38 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 6
      0x80001590 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 7 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 6, (wrb) a4  <-- 0x80002f9a
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9a, 32 ~~> Byte[0x80002fe2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 7
      0x800015a4 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800015a8 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015b0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c67, (wrb) s0  <-- 0x80002c68
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c69, (wrb) s10 <-- 0x80002c6a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c68, a0  <~~ Byte[0x80002c68]
                                                #; (lsu) a0  <-- 61
      0x80000a38 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 7
      0x80001590 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 8 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 7, (wrb) a4  <-- 0x80002f9b
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9b, 61 ~~> Byte[0x80002fe3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 8
      0x800015a4 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800015a8 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800015b0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c68, (wrb) s0  <-- 0x80002c69
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c6a, (wrb) s10 <-- 0x80002c6b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c69, a0  <~~ Byte[0x80002c69]
                                                #; (lsu) a0  <-- 32
      0x80000a38 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 8
      0x80001590 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 9 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 8, (wrb) a4  <-- 0x80002f9c
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9c, 32 ~~> Byte[0x80002fe4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 9
      0x800015a4 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800015a8 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015b0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c69, (wrb) s0  <-- 0x80002c6a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c6b, (wrb) s10 <-- 0x80002c6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c6a, a0  <~~ Byte[0x80002c6a]
                                                #; (lsu) a0  <-- 37
      0x80000a38 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000a40 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a44 j       pc + 0x10              #; goto 0x80000a54
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000a54 lbu     a0, -1(s10)            #; s10 = 0x80002c6c, a0  <~~ Byte[0x80002c6b]
                                                #; (lsu) a0  <-- 108
      0x80000a58 addi    a1, a0, -32            #; a0  = 108, (wrb) a1  <-- 76
      0x80000a5c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 76, taken, goto 0x80000a94
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a94 addi    a1, a0, -48            #; a0  = 108, (wrb) a1  <-- 60
      0x80000a98 andi    a2, a1, 255            #; a1  = 60, (wrb) a2  <-- 60
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a9c addi    a1, s10, -1            #; s10 = 0x80002c6c, (wrb) a1  <-- 0x80002c6b
      0x80000aa0 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000aa4 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 60, taken, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000b20 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000b24 bne     a0, a2, pc + 80        #; a0  = 108, a2  = 42, taken, goto 0x80000b74
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b74 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b78 mv      s10, a1                #; a1  = 0x80002c6b, (wrb) s10 <-- 0x80002c6b
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000b7c beq     a0, s7, pc - 164       #; a0  = 108, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b80 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b84 j       pc + 0xc               #; goto 0x80000b90
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000b90 addi    a1, a0, -104           #; a0  = 108, (wrb) a1  <-- 4
      0x80000b94 srli    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 2
      0x80000b98 slli    a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 0
      0x80000b9c or      a1, a1, a2             #; a1  = 0, a2  = 2, (wrb) a1  <-- 2
      0x80000ba0 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000ba4 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 2, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ba8 slli    a1, a1, 2              #; a1  = 2, (wrb) a1  <-- 8
      0x80000bac auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002bac
      0x80000bb0 addi    a2, a2, 268            #; a2  = 0x80002bac, (wrb) a2  <-- 0x80002cb8
      0x80000bb4 add     a1, a1, a2             #; a1  = 8, a2  = 0x80002cb8, (wrb) a1  <-- 0x80002cc0
      0x80000bb8 lw      a3, 0(a1)              #; a1  = 0x80002cc0, a3  <~~ Word[0x80002cc0]
      0x80000bbc li      a1, 1                  #; (wrb) a1  <-- 1
      0x80000bc0 li      a2, 256                #; (wrb) a2  <-- 256
                                                #; (lsu) a3  <-- 0x80000be8
      0x80000bc4 jr      a3                     #; a3  = 0x80000be8, goto 0x80000be8
; _vsnprintf.llvm.1805434900161566649 (printf.c:651)
      0x80000be8 lbu     a0, 1(s10)             #; s10 = 0x80002c6b, a0  <~~ Byte[0x80002c6c]
      0x80000bec li      a1, 108                #; (wrb) a1  <-- 108
                                                #; (lsu) a0  <-- 117
      0x80000bf0 bne     a0, a1, pc + 272       #; a0  = 117, a1  = 108, taken, goto 0x80000d00
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d00 ori     s0, s0, 256            #; s0  = 0, (wrb) s0  <-- 256
      0x80000d04 addi    s10, s10, 1            #; s10 = 0x80002c6b, (wrb) s10 <-- 0x80002c6c
      0x80000d08 j       pc - 0x100             #; goto 0x80000c08
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000c08 addi    a1, a0, -37            #; a0  = 117, (wrb) a1  <-- 80
      0x80000c0c li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c10 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 80, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c14 slli    a1, a1, 2              #; a1  = 80, (wrb) a1  <-- 320
      0x80000c18 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c18
      0x80000c1c addi    a2, a2, 200            #; a2  = 0x80002c18, (wrb) a2  <-- 0x80002ce0
      0x80000c20 add     a1, a1, a2             #; a1  = 320, a2  = 0x80002ce0, (wrb) a1  <-- 0x80002e20
      0x80000c24 lw      a2, 0(a1)              #; a1  = 0x80002e20, a2  <~~ Word[0x80002e20]
      0x80000c28 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000c2c li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c34
      0x80000c30 jr      a2                     #; a2  = 0x80000c34
; _vsnprintf.llvm.1805434900161566649 (printf.c:704)
      0x80000c34 andi    s0, s0, -17            #; s0  = 256, (wrb) s0  <-- 256
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c38 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:707)
      0x80000c3c li      a1, 88                 #; (wrb) a1  <-- 88
      0x80000c40 bne     a0, a1, pc + 8         #; a0  = 117, a1  = 88, taken, goto 0x80000c48
; _vsnprintf.llvm.1805434900161566649 (printf.c:712)
      0x80000c48 li      a1, 100                #; (wrb) a1  <-- 100
      0x80000c4c beq     a0, a1, pc + 240       #; a0  = 117, a1  = 100, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c50 mv      a1, s8                 #; s8  = 10, (wrb) a1  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:712)
      0x80000c54 li      a2, 105                #; (wrb) a2  <-- 105
      0x80000c58 beq     a0, a2, pc + 228       #; a0  = 117, a2  = 105, not taken
      0x80000c5c j       pc + 0xd8              #; goto 0x80000d34
; _vsnprintf.llvm.1805434900161566649 (printf.c:713)
      0x80000d34 andi    s0, s0, -13            #; s0  = 256, (wrb) s0  <-- 256
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d38 mv      s8, a1                 #; a1  = 10, (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:717)
      0x80000d3c andi    a1, s0, 1024           #; s0  = 256, (wrb) a1  <-- 0
      0x80000d40 beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000d48
; _vsnprintf.llvm.1805434900161566649 (printf.c:722)
      0x80000d48 li      a1, 105                #; (wrb) a1  <-- 105
      0x80000d4c beq     a0, a1, pc + 12        #; a0  = 117, a1  = 105, not taken
      0x80000d50 li      a1, 100                #; (wrb) a1  <-- 100
      0x80000d54 bne     a0, a1, pc + 312       #; a0  = 117, a1  = 100, taken, goto 0x80000e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:741)
      0x80000e8c andi    a0, s0, 512            #; s0  = 256, (wrb) a0  <-- 0
      0x80000e90 bnez    a0, pc + 196           #; a0  = 0, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:746)
      0x80000e94 andi    a0, s0, 256            #; s0  = 256, (wrb) a0  <-- 256
      0x80000e98 bnez    a0, pc + 1148          #; a0  = 256, taken, goto 0x80001314
; _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001314 lw      a0, 0(s3)              #; s3  = 0x0011fed4, a0  <~~ Word[0x0011fed4]
                                                #; (lsu) a0  <-- 718
; _ntoa_long (printf.c:287)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001318 bnez    a0, pc + 8             #; a0  = 718, taken, goto 0x80001320
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001320 seqz    a1, a0                 #; a0  = 718, (wrb) a1  <-- 0
; _ntoa_long (printf.c:292)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001324 andi    a2, s0, 1024           #; s0  = 256, (wrb) a2  <-- 0
      0x80001328 srli    a2, a2, 10             #; a2  = 0, (wrb) a2  <-- 0
      0x8000132c and     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001330 li      a5, 0                  #; (wrb) a5  <-- 0
; _ntoa_long (printf.c:292)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001334 bnez    a1, pc + 248           #; a1  = 0, not taken
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001338 li      a2, 0                  #; (wrb) a2  <-- 0
      0x8000133c andi    a1, s0, 32             #; s0  = 256, (wrb) a1  <-- 0
      0x80001340 xori    a1, a1, 97             #; a1  = 0, (wrb) a1  <-- 97
      0x80001344 addi    a6, a1, 246            #; a1  = 97, (wrb) a6  <-- 343
      0x80001348 j       pc + 0x34              #; goto 0x8000137c
; _ntoa_long (printf.c:296)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000137c divu    a3, a0, s8             #; a0  = 718, s8  = 10
      0x80001380 mul     a4, a3, s8             #; a3  = 71, s8  = 10
                                                #; (acc) a4  <-- 0x40e50733
      0x80001384 sub     a4, a0, a4             #; a0  = 718, a4  = 710, (wrb) a4  <-- 8
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001388 andi    s1, a4, 254            #; a4  = 8, (wrb) s1  <-- 8
      0x8000138c li      a5, 48                 #; (wrb) a5  <-- 48
      0x80001390 li      a1, 10                 #; (wrb) a1  <-- 10
      0x80001394 bltu    s1, a1, pc - 72        #; s1  = 8, a1  = 10, taken, goto 0x8000134c
      0x8000134c add     a4, a5, a4             #; a5  = 48, a4  = 8, (wrb) a4  <-- 56
      0x80001350 addi    a5, a2, 1              #; a2  = 0, (wrb) a5  <-- 1
      0x80001354 addi    a1, sp, 28             #; sp  = 0x0011fe50, (wrb) a1  <-- 0x0011fe6c
      0x80001358 add     s1, a1, a2             #; a1  = 0x0011fe6c, a2  = 0, (wrb) s1  <-- 0x0011fe6c
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000135c sltu    a0, a0, s8             #; a0  = 718, s8  = 10, (wrb) a0  <-- 0
      0x80001360 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001364 sltiu   a2, a2, 31             #; a2  = 0, (wrb) a2  <-- 1
      0x80001368 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000136c sb      a4, 0(s1)              #; s1  = 0x0011fe6c, 56 ~~> Byte[0x0011fe6c]
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001370 mv      a2, a5                 #; a5  = 1, (wrb) a2  <-- 1
      0x80001374 mv      a0, a3                 #; a3  = 71, (wrb) a0  <-- 71
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001378 beqz    a1, pc + 180           #; a1  = 1, not taken
; _ntoa_long (printf.c:296)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000137c divu    a3, a0, s8             #; a0  = 71, s8  = 10
                                                #; (acc) a4  <-- 0x03868733
      0x80001380 mul     a4, a3, s8             #; a3  = 7, s8  = 10
                                                #; (acc) a4  <-- 0x40e50733
      0x80001384 sub     a4, a0, a4             #; a0  = 71, a4  = 70, (wrb) a4  <-- 1
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001388 andi    s1, a4, 254            #; a4  = 1, (wrb) s1  <-- 0
      0x8000138c li      a5, 48                 #; (wrb) a5  <-- 48
      0x80001390 li      a1, 10                 #; (wrb) a1  <-- 10
      0x80001394 bltu    s1, a1, pc - 72        #; s1  = 0, a1  = 10, taken, goto 0x8000134c
      0x8000134c add     a4, a5, a4             #; a5  = 48, a4  = 1, (wrb) a4  <-- 49
      0x80001350 addi    a5, a2, 1              #; a2  = 1, (wrb) a5  <-- 2
      0x80001354 addi    a1, sp, 28             #; sp  = 0x0011fe50, (wrb) a1  <-- 0x0011fe6c
      0x80001358 add     s1, a1, a2             #; a1  = 0x0011fe6c, a2  = 1, (wrb) s1  <-- 0x0011fe6d
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000135c sltu    a0, a0, s8             #; a0  = 71, s8  = 10, (wrb) a0  <-- 0
      0x80001360 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001364 sltiu   a2, a2, 31             #; a2  = 1, (wrb) a2  <-- 1
      0x80001368 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000136c sb      a4, 0(s1)              #; s1  = 0x0011fe6d, 49 ~~> Byte[0x0011fe6d]
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001370 mv      a2, a5                 #; a5  = 2, (wrb) a2  <-- 2
      0x80001374 mv      a0, a3                 #; a3  = 7, (wrb) a0  <-- 7
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001378 beqz    a1, pc + 180           #; a1  = 1, not taken
; _ntoa_long (printf.c:296)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000137c divu    a3, a0, s8             #; a0  = 7, s8  = 10
                                                #; (acc) a4  <-- 0x03868733
      0x80001380 mul     a4, a3, s8             #; a3  = 0, s8  = 10
                                                #; (acc) a4  <-- 0x40e50733
      0x80001384 sub     a4, a0, a4             #; a0  = 7, a4  = 0, (wrb) a4  <-- 7
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001388 andi    s1, a4, 254            #; a4  = 7, (wrb) s1  <-- 6
      0x8000138c li      a5, 48                 #; (wrb) a5  <-- 48
      0x80001390 li      a1, 10                 #; (wrb) a1  <-- 10
      0x80001394 bltu    s1, a1, pc - 72        #; s1  = 6, a1  = 10, taken, goto 0x8000134c
      0x8000134c add     a4, a5, a4             #; a5  = 48, a4  = 7, (wrb) a4  <-- 55
      0x80001350 addi    a5, a2, 1              #; a2  = 2, (wrb) a5  <-- 3
      0x80001354 addi    a1, sp, 28             #; sp  = 0x0011fe50, (wrb) a1  <-- 0x0011fe6c
      0x80001358 add     s1, a1, a2             #; a1  = 0x0011fe6c, a2  = 2, (wrb) s1  <-- 0x0011fe6e
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000135c sltu    a0, a0, s8             #; a0  = 7, s8  = 10, (wrb) a0  <-- 1
      0x80001360 xori    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 0
      0x80001364 sltiu   a2, a2, 31             #; a2  = 2, (wrb) a2  <-- 1
      0x80001368 and     a1, a2, a0             #; a2  = 1, a0  = 0, (wrb) a1  <-- 0
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000136c sb      a4, 0(s1)              #; s1  = 0x0011fe6e, 55 ~~> Byte[0x0011fe6e]
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001370 mv      a2, a5                 #; a5  = 3, (wrb) a2  <-- 3
      0x80001374 mv      a0, a3                 #; a3  = 0, (wrb) a0  <-- 0
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001378 beqz    a1, pc + 180           #; a1  = 0, taken, goto 0x8000142c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000142c addi    s3, s3, 4              #; s3  = 0x0011fed4, (wrb) s3  <-- 0x0011fed8
      0x80001430 addi    a4, sp, 28             #; sp  = 0x0011fe50, (wrb) a4  <-- 0x0011fe6c
      0x80001434 mv      a0, s2                 #; s2  = 0x80001570, (wrb) a0  <-- 0x80001570
      0x80001438 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x8000143c mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
      0x80001440 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001444 li      a6, 0                  #; (wrb) a6  <-- 0
      0x80001448 mv      a7, s8                 #; s8  = 10, (wrb) a7  <-- 10
      0x8000144c mv      t2, s7                 #; s7  = 0, (wrb) t2  <-- 0
      0x80001450 mv      t3, s6                 #; s6  = 0, (wrb) t3  <-- 0
      0x80001454 mv      t4, s0                 #; s0  = 256, (wrb) t4  <-- 256
      0x80001458 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002458
      0x8000145c jalr    ra, ra, -620           #; ra  = 0x80002458, (wrb) ra  <-- 0x80001460, goto 0x800021ec
; _ntoa_format (printf.c:228)
      0x800021ec addi    sp, sp, -64            #; sp  = 0x0011fe50, (wrb) sp  <-- 0x0011fe10
      0x800021f0 sw      ra, 60(sp)             #; sp  = 0x0011fe10, 0x80001460 ~~> Word[0x0011fe4c]
      0x800021f4 sw      s0, 56(sp)             #; sp  = 0x0011fe10, 256 ~~> Word[0x0011fe48]
      0x800021f8 sw      s1, 52(sp)             #; sp  = 0x0011fe10, 0x0011fe6e ~~> Word[0x0011fe44]
      0x800021fc sw      s2, 48(sp)             #; sp  = 0x0011fe10, 0x80001570 ~~> Word[0x0011fe40]
      0x80002200 sw      s3, 44(sp)             #; sp  = 0x0011fe10, 0x0011fed8 ~~> Word[0x0011fe3c]
      0x80002204 sw      s4, 40(sp)             #; sp  = 0x0011fe10, 0x0011fec7 ~~> Word[0x0011fe38]
      0x80002208 sw      s5, 36(sp)             #; sp  = 0x0011fe10, -1 ~~> Word[0x0011fe34]
      0x8000220c sw      s6, 32(sp)             #; sp  = 0x0011fe10, 0 ~~> Word[0x0011fe30]
      0x80002210 sw      s7, 28(sp)             #; sp  = 0x0011fe10, 0 ~~> Word[0x0011fe2c]
      0x80002214 sw      s8, 24(sp)             #; sp  = 0x0011fe10, 10 ~~> Word[0x0011fe28]
      0x80002218 sw      s9, 20(sp)             #; sp  = 0x0011fe10, 9 ~~> Word[0x0011fe24]
      0x8000221c sw      s10, 16(sp)            #; sp  = 0x0011fe10, 0x80002c6c ~~> Word[0x0011fe20]
      0x80002220 sw      s11, 12(sp)            #; sp  = 0x0011fe10, 16 ~~> Word[0x0011fe1c]
      0x80002224 mv      s7, t4                 #; t4  = 256, (wrb) s7  <-- 256
; _ntoa_format (printf.c:230)
      0x80002228 andi    s5, t4, 2              #; t4  = 256, (wrb) s5  <-- 0
      0x8000222c mv      s2, t3                 #; t3  = 0, (wrb) s2  <-- 0
; _ntoa_format (printf.c:0)
      0x80002230 mv      s10, t2                #; t2  = 0, (wrb) s10 <-- 0
      0x80002234 mv      s9, a7                 #; a7  = 10, (wrb) s9  <-- 10
      0x80002238 mv      s8, a5                 #; a5  = 3, (wrb) s8  <-- 3
      0x8000223c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80002240 mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
      0x80002244 mv      s6, a1                 #; a1  = 0x0011fec7, (wrb) s6  <-- 0x0011fec7
      0x80002248 mv      s11, a0                #; a0  = 0x80001570, (wrb) s11 <-- 0x80001570
      0x8000224c sw      a4, 8(sp)              #; sp  = 0x0011fe10, 0x0011fe6c ~~> Word[0x0011fe18]
; _ntoa_format (printf.c:230)
      0x80002250 bnez    s5, pc + 220           #; s5  = 0, not taken
; _ntoa_format (printf.c:0)
      0x80002254 andi    s0, s7, 1              #; s7  = 256, (wrb) s0  <-- 0
; _ntoa_format (printf.c:231)
      0x80002258 beqz    s2, pc + 28            #; s2  = 0, taken, goto 0x80002274
; _ntoa_format (printf.c:0)
      0x80002274 li      s2, 0                  #; (wrb) s2  <-- 0
; _ntoa_format (printf.c:234)
      0x80002278 sltu    a0, s8, s10            #; s8  = 3, s10 = 0, (wrb) a0  <-- 0
      0x8000227c xori    a1, a0, 1              #; a0  = 0, (wrb) a1  <-- 1
      0x80002280 li      a0, 31                 #; (wrb) a0  <-- 31
      0x80002284 sltu    a2, a0, s8             #; a0  = 31, s8  = 3, (wrb) a2  <-- 0
      0x80002288 or      a1, a2, a1             #; a2  = 0, a1  = 1, (wrb) a1  <-- 1
      0x8000228c bnez    a1, pc + 72            #; a1  = 1, taken, goto 0x800022d4
; _ntoa_format (printf.c:237)
      0x800022d4 beqz    s0, pc + 88            #; s0  = 0, taken, goto 0x8000232c
; _ntoa_format (printf.c:243)
      0x8000232c andi    a0, s7, 16             #; s7  = 256, (wrb) a0  <-- 0
      0x80002330 beqz    a0, pc + 228           #; a0  = 0, taken, goto 0x80002414
; _ntoa_format (printf.c:0)
      0x80002414 li      a0, 31                 #; (wrb) a0  <-- 31
; _ntoa_format (printf.c:264)
      0x80002418 bltu    a0, s8, pc + 72        #; a0  = 31, s8  = 3, not taken
; _ntoa_format (printf.c:265)
      0x8000241c beqz    a6, pc + 20            #; a6  = 0, taken, goto 0x80002430
; _ntoa_format (printf.c:268)
      0x80002430 andi    a0, s7, 4              #; s7  = 256, (wrb) a0  <-- 0
      0x80002434 bnez    a0, pc + 28            #; a0  = 0, not taken
; _ntoa_format (printf.c:271)
      0x80002438 andi    a0, s7, 8              #; s7  = 256, (wrb) a0  <-- 0
      0x8000243c beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x80002460
; _out_rev (printf.c:204)
;  in _ntoa_format (printf.c:276)
      0x80002460 andi    a0, s7, 3              #; s7  = 256, (wrb) a0  <-- 0
      0x80002464 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80002468 sltu    a1, s8, s2             #; s8  = 3, s2  = 0, (wrb) a1  <-- 0
      0x8000246c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80002470 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
      0x80002474 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
      0x80002478 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800024a4
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800024a4 snez    s5, s5                 #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x800024a8 beqz    s8, pc + 60            #; s8  = 3, not taken
      0x800024ac lw      a0, 8(sp)              #; sp  = 0x0011fe10, a0  <~~ Word[0x0011fe18]
                                                #; (lsu) a0  <-- 0x0011fe6c
      0x800024b0 addi    s7, a0, -1             #; a0  = 0x0011fe6c, (wrb) s7  <-- 0x0011fe6b
; _out_rev (printf.c:212)
;  in _ntoa_format (printf.c:276)
      0x800024b4 add     a0, s7, s8             #; s7  = 0x0011fe6b, s8  = 3, (wrb) a0  <-- 0x0011fe6e
      0x800024b8 lbu     a0, 0(a0)              #; a0  = 0x0011fe6e, a0  <~~ Byte[0x0011fe6e]
      0x800024bc addi    s9, s8, -1             #; s8  = 3, (wrb) s9  <-- 2
                                                #; (lsu) a0  <-- 55
      0x800024c0 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x800024c4 mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x800024c8 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x800024cc mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800024d0 jalr    s11                    #; s11 = 0x80001570, (wrb) ra  <-- 0x800024d4, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 55, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 9
      0x80001590 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 10 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 9, (wrb) a4  <-- 0x80002f9d
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9d, 55 ~~> Byte[0x80002fe5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 10
      0x800015a4 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800015a8 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
      0x800015b0 snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x800024d4, goto 0x800024d4
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800024d4 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x800024d8 mv      s8, s9                 #; s9  = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x800024dc bnez    s9, pc - 40            #; s9  = 2, taken, goto 0x800024b4
; _out_rev (printf.c:212)
;  in _ntoa_format (printf.c:276)
      0x800024b4 add     a0, s7, s8             #; s7  = 0x0011fe6b, s8  = 2, (wrb) a0  <-- 0x0011fe6d
      0x800024b8 lbu     a0, 0(a0)              #; a0  = 0x0011fe6d, a0  <~~ Byte[0x0011fe6d]
      0x800024bc addi    s9, s8, -1             #; s8  = 2, (wrb) s9  <-- 1
      0x800024c0 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x800024c4 mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x800024c8 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x800024cc mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800024d0 jalr    s11                    #; s11 = 0x80001570, (wrb) ra  <-- 0x800024d4, goto 0x80001570
                                                #; (lsu) a0  <-- 49
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 49, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 10
      0x80001590 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 11 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 10, (wrb) a4  <-- 0x80002f9e
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9e, 49 ~~> Byte[0x80002fe6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 11
      0x800015a4 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800015a8 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
      0x800015b0 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x800024d4, goto 0x800024d4
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800024d4 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x800024d8 mv      s8, s9                 #; s9  = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x800024dc bnez    s9, pc - 40            #; s9  = 1, taken, goto 0x800024b4
; _out_rev (printf.c:212)
;  in _ntoa_format (printf.c:276)
      0x800024b4 add     a0, s7, s8             #; s7  = 0x0011fe6b, s8  = 1, (wrb) a0  <-- 0x0011fe6c
      0x800024b8 lbu     a0, 0(a0)              #; a0  = 0x0011fe6c, a0  <~~ Byte[0x0011fe6c]
      0x800024bc addi    s9, s8, -1             #; s8  = 1, (wrb) s9  <-- 0
      0x800024c0 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x800024c4 mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x800024c8 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x800024cc mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800024d0 jalr    s11                    #; s11 = 0x80001570, (wrb) ra  <-- 0x800024d4, goto 0x80001570
                                                #; (lsu) a0  <-- 56
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 56, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 11
      0x80001590 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 12 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 11, (wrb) a4  <-- 0x80002f9f
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9f, 56 ~~> Byte[0x80002fe7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 12
      0x800015a4 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800015a8 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 56, (wrb) a0  <-- 46
      0x800015b0 snez    a0, a0                 #; a0  = 46, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x800024d4, goto 0x800024d4
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800024d4 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x800024d8 mv      s8, s9                 #; s9  = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x800024dc bnez    s9, pc - 40            #; s9  = 0, not taken
      0x800024e0 j       pc + 0x8               #; goto 0x800024e8
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800024e8 sub     a0, s1, s4             #; s1  = 12, s4  = 9, (wrb) a0  <-- 3
      0x800024ec sltu    a0, a0, s2             #; a0  = 3, s2  = 0, (wrb) a0  <-- 0
      0x800024f0 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ntoa_format (printf.c:276)
      0x800024f4 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x800024f8 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x800024fc bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x8000252c
; _ntoa_format (printf.c:0)
      0x8000252c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
; _ntoa_format (printf.c:276)
      0x80002530 mv      a0, s0                 #; s0  = 12, (wrb) a0  <-- 12
      0x80002534 lw      s11, 12(sp)            #; sp  = 0x0011fe10, s11 <~~ Word[0x0011fe1c]
                                                #; (lsu) s11 <-- 16
      0x80002538 lw      s10, 16(sp)            #; sp  = 0x0011fe10, s10 <~~ Word[0x0011fe20]
                                                #; (lsu) s10 <-- 0x80002c6c
      0x8000253c lw      s9, 20(sp)             #; sp  = 0x0011fe10, s9  <~~ Word[0x0011fe24]
                                                #; (lsu) s9  <-- 9
      0x80002540 lw      s8, 24(sp)             #; sp  = 0x0011fe10, s8  <~~ Word[0x0011fe28]
                                                #; (lsu) s8  <-- 10
      0x80002544 lw      s7, 28(sp)             #; sp  = 0x0011fe10, s7  <~~ Word[0x0011fe2c]
                                                #; (lsu) s7  <-- 0
      0x80002548 lw      s6, 32(sp)             #; sp  = 0x0011fe10, s6  <~~ Word[0x0011fe30]
                                                #; (lsu) s6  <-- 0
      0x8000254c lw      s5, 36(sp)             #; sp  = 0x0011fe10, s5  <~~ Word[0x0011fe34]
                                                #; (lsu) s5  <-- -1
      0x80002550 lw      s4, 40(sp)             #; sp  = 0x0011fe10, s4  <~~ Word[0x0011fe38]
                                                #; (lsu) s4  <-- 0x0011fec7
      0x80002554 lw      s3, 44(sp)             #; sp  = 0x0011fe10, s3  <~~ Word[0x0011fe3c]
                                                #; (lsu) s3  <-- 0x0011fed8
      0x80002558 lw      s2, 48(sp)             #; sp  = 0x0011fe10, s2  <~~ Word[0x0011fe40]
                                                #; (lsu) s2  <-- 0x80001570
      0x8000255c lw      s1, 52(sp)             #; sp  = 0x0011fe10, s1  <~~ Word[0x0011fe44]
                                                #; (lsu) s1  <-- 0x0011fe6e
      0x80002560 lw      s0, 56(sp)             #; sp  = 0x0011fe10, s0  <~~ Word[0x0011fe48]
                                                #; (lsu) s0  <-- 256
      0x80002564 lw      ra, 60(sp)             #; sp  = 0x0011fe10, ra  <~~ Word[0x0011fe4c]
      0x80002568 addi    sp, sp, 64             #; sp  = 0x0011fe10, (wrb) sp  <-- 0x0011fe50
                                                #; (lsu) ra  <-- 0x80001460
      0x8000256c ret                            #; ra  = 0x80001460, goto 0x80001460
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001460 mv      s8, a0                 #; a0  = 12, (wrb) s8  <-- 12
      0x80001464 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001468 li      s7, 46                 #; (wrb) s7  <-- 46
      0x8000146c addi    s0, s10, 1             #; s10 = 0x80002c6c, (wrb) s0  <-- 0x80002c6d
      0x80001470 j       pc - 0xa74             #; goto 0x800009fc
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009fc addi    s10, s0, 2             #; s0  = 0x80002c6d, (wrb) s10 <-- 0x80002c6f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a00 mv      s9, s8                 #; s8  = 12, (wrb) s9  <-- 12
      0x80000a04 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a08 lbu     a0, 0(s0)              #; s0  = 0x80002c6d, a0  <~~ Byte[0x80002c6d]
                                                #; (lsu) a0  <-- 10
      0x80000a0c beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 12, (wrb) s1  <-- 13
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 12, (wrb) a2  <-- 12
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 12
      0x80001590 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 13 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 12, (wrb) a4  <-- 0x80002fa0
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa0, 10 ~~> Byte[0x80002fe8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 13
      0x800015a4 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800015a8 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800015b0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800015b4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800015b8 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015bc add     a0, a3, a2             #; a3  = 0x80002f94, a2  = 0, (wrb) a0  <-- 0x80002f94
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015c0 addi    a2, a0, 72             #; a0  = 0x80002f94, (wrb) a2  <-- 0x80002fdc
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015c4 sw      zero, 12(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa0]
      0x800015c8 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800015cc sw      a3, 8(a0)              #; a0  = 0x80002f94, 64 ~~> Word[0x80002f9c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015d0 sw      zero, 20(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa8]
      0x800015d4 li      a3, 1                  #; (wrb) a3  <-- 1
      0x800015d8 sw      a3, 16(a0)             #; a0  = 0x80002f94, 1 ~~> Word[0x80002fa4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc sw      zero, 28(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb0]
      0x800015e0 sw      a2, 24(a0)             #; a0  = 0x80002f94, 0x80002fdc ~~> Word[0x80002fac]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015e4 lw      a2, 0(a1)              #; a1  = 0x80002f94, a2  <~~ Word[0x80002f94]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015e8 addi    a3, a0, 8              #; a0  = 0x80002f94, (wrb) a3  <-- 0x80002f9c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015ec sw      zero, 36(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb8]
                                                #; (lsu) a2  <-- 13
      0x800015f0 sw      a2, 32(a0)             #; a0  = 0x80002f94, 13 ~~> Word[0x80002fb4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035f4
      0x800015f8 addi    a0, a0, -1908          #; a0  = 0x800035f4, (wrb) a0  <-- 0x80002e80
      0x800015fc sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002f9c ~~> Word[0x80002e80]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003600
      0x80001604 addi    a0, a0, -1856          #; a0  = 0x80003600, (wrb) a0  <-- 0x80002ec0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x8000160c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001608
      0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 1
      0x8000160c beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001610 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001614 sw      zero, 0(a1)            #; a1  = 0x80002f94, 0 ~~> Word[0x80002f94]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c6d, (wrb) s0  <-- 0x80002c6e
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c6f, (wrb) s10 <-- 0x80002c70
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 13, (wrb) s9  <-- 13
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c6e, a0  <~~ Byte[0x80002c6e]
                                                #; (lsu) a0  <-- 0
      0x80000a38 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000a3c j       pc + 0xad8             #; goto 0x80001514
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001514 mv      a2, s9                 #; s9  = 13, (wrb) a2  <-- 13
      0x80001518 bltu    s9, s5, pc + 8         #; s9  = 13, s5  = -1, taken, goto 0x80001520
      0x80001520 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001524 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80001528 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x8000152c jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80001530, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80001530, goto 0x80001530
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001530 mv      a0, s9                 #; s9  = 13, (wrb) a0  <-- 13
      0x80001534 lw      s11, 60(sp)            #; sp  = 0x0011fe50, s11 <~~ Word[0x0011fe8c]
                                                #; (lsu) s11 <-- 0
      0x80001538 lw      s10, 64(sp)            #; sp  = 0x0011fe50, s10 <~~ Word[0x0011fe90]
                                                #; (lsu) s10 <-- 0
      0x8000153c lw      s9, 68(sp)             #; sp  = 0x0011fe50, s9  <~~ Word[0x0011fe94]
                                                #; (lsu) s9  <-- 0
      0x80001540 lw      s8, 72(sp)             #; sp  = 0x0011fe50, s8  <~~ Word[0x0011fe98]
                                                #; (lsu) s8  <-- 0
      0x80001544 lw      s7, 76(sp)             #; sp  = 0x0011fe50, s7  <~~ Word[0x0011fe9c]
                                                #; (lsu) s7  <-- 0
      0x80001548 lw      s6, 80(sp)             #; sp  = 0x0011fe50, s6  <~~ Word[0x0011fea0]
                                                #; (lsu) s6  <-- 0
      0x8000154c lw      s5, 84(sp)             #; sp  = 0x0011fe50, s5  <~~ Word[0x0011fea4]
                                                #; (lsu) s5  <-- 0
      0x80001550 lw      s4, 88(sp)             #; sp  = 0x0011fe50, s4  <~~ Word[0x0011fea8]
                                                #; (lsu) s4  <-- 0
      0x80001554 lw      s3, 92(sp)             #; sp  = 0x0011fe50, s3  <~~ Word[0x0011feac]
                                                #; (lsu) s3  <-- 0
      0x80001558 lw      s2, 96(sp)             #; sp  = 0x0011fe50, s2  <~~ Word[0x0011feb0]
                                                #; (lsu) s2  <-- 0
      0x8000155c lw      s1, 100(sp)            #; sp  = 0x0011fe50, s1  <~~ Word[0x0011feb4]
                                                #; (lsu) s1  <-- 0
      0x80001560 lw      s0, 104(sp)            #; sp  = 0x0011fe50, s0  <~~ Word[0x0011feb8]
                                                #; (lsu) s0  <-- 0
      0x80001564 lw      ra, 108(sp)            #; sp  = 0x0011fe50, ra  <~~ Word[0x0011febc]
      0x80001568 addi    sp, sp, 112            #; sp  = 0x0011fe50, (wrb) sp  <-- 0x0011fec0
                                                #; (lsu) ra  <-- 0x8000096c
      0x8000156c ret                            #; ra  = 0x8000096c, goto 0x8000096c
; printf_ (printf.c:869)
      0x8000096c lw      ra, 12(sp)             #; sp  = 0x0011fec0, ra  <~~ Word[0x0011fecc]
      0x80000970 addi    sp, sp, 48             #; sp  = 0x0011fec0, (wrb) sp  <-- 0x0011fef0
                                                #; (lsu) ra  <-- 0x800008a0
      0x80000974 ret                            #; ra  = 0x800008a0, goto 0x800008a0
; main (bench_sp.c:0)
      0x800008a0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028a0
      0x800008a4 addi    a0, a0, 1592           #; a0  = 0x800028a0, (wrb) a0  <-- 0x80002ed8
      0x800008a8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002ed8]
                                                #; (f:lsu) ft3  <-- -2850.0
; main (bench_sp.c:57)
      0x800008b8 lw      a2, 0(sp)              #; sp  = 0x0011fef0, a2  <~~ Word[0x0011fef0]
      0x800008ac fadd.d  ft3, fs0, ft3          #; fs0  = 2850.0, ft3  = -2850.0
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800008bc lw      a3, 4(sp)              #; sp  = 0x0011fef0, a3  <~~ Word[0x0011fef4]
      0x800008b0 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x800008b4 fsd     fs0, 0(sp)             #; 0.0 ~~> Doub[0x0011fef0]
                                                #; (lsu) a3  <-- 0
      0x800008c0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028c0
      0x800008c4 addi    a0, a0, 917            #; a0  = 0x800028c0, (wrb) a0  <-- 0x80002c55
      0x800008c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008c8
      0x800008cc jalr    ra, ra, 84             #; ra  = 0x800008c8, (wrb) ra  <-- 0x800008d0, goto 0x8000091c
; printf_ (printf.c:863)
      0x8000091c addi    sp, sp, -48            #; sp  = 0x0011fef0, (wrb) sp  <-- 0x0011fec0
      0x80000920 sw      ra, 12(sp)             #; sp  = 0x0011fec0, 0x800008d0 ~~> Word[0x0011fecc]
      0x80000924 mv      t0, a0                 #; a0  = 0x80002c55, (wrb) t0  <-- 0x80002c55
      0x80000928 sw      a7, 44(sp)             #; sp  = 0x0011fec0, 10 ~~> Word[0x0011feec]
      0x8000092c sw      a6, 40(sp)             #; sp  = 0x0011fec0, 0 ~~> Word[0x0011fee8]
      0x80000930 sw      a5, 36(sp)             #; sp  = 0x0011fec0, 13 ~~> Word[0x0011fee4]
      0x80000934 sw      a4, 32(sp)             #; sp  = 0x0011fec0, 1 ~~> Word[0x0011fee0]
      0x80000938 sw      a3, 28(sp)             #; sp  = 0x0011fec0, 0 ~~> Word[0x0011fedc]
      0x8000093c sw      a2, 24(sp)             #; sp  = 0x0011fec0, 0 ~~> Word[0x0011fed8]
      0x80000940 sw      a1, 20(sp)             #; sp  = 0x0011fec0, 0x0011fec7 ~~> Word[0x0011fed4]
      0x80000944 addi    a0, sp, 20             #; sp  = 0x0011fec0, (wrb) a0  <-- 0x0011fed4
; printf_ (printf.c:865)
      0x80000948 sw      a0, 8(sp)              #; sp  = 0x0011fec0, 0x0011fed4 ~~> Word[0x0011fec8]
; printf_ (printf.c:867)
      0x8000094c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000194c
      0x80000950 addi    a0, a0, -988           #; a0  = 0x8000194c, (wrb) a0  <-- 0x80001570
      0x80000954 addi    a1, sp, 7              #; sp  = 0x0011fec0, (wrb) a1  <-- 0x0011fec7
      0x80000958 li      a2, -1                 #; (wrb) a2  <-- -1
      0x8000095c addi    a4, sp, 20             #; sp  = 0x0011fec0, (wrb) a4  <-- 0x0011fed4
      0x80000960 mv      a3, t0                 #; t0  = 0x80002c55, (wrb) a3  <-- 0x80002c55
      0x80000964 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000964
      0x80000968 jalr    ra, ra, 20             #; ra  = 0x80000964, (wrb) ra  <-- 0x8000096c, goto 0x80000978
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000978 addi    sp, sp, -112           #; sp  = 0x0011fec0, (wrb) sp  <-- 0x0011fe50
      0x8000097c sw      ra, 108(sp)            #; sp  = 0x0011fe50, 0x8000096c ~~> Word[0x0011febc]
      0x80000980 sw      s0, 104(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb8]
      0x80000984 sw      s1, 100(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb4]
      0x80000988 sw      s2, 96(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb0]
      0x8000098c sw      s3, 92(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feac]
      0x80000990 sw      s4, 88(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea8]
      0x80000994 sw      s5, 84(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea4]
      0x80000998 sw      s6, 80(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea0]
      0x8000099c sw      s7, 76(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe9c]
      0x800009a0 sw      s8, 72(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe98]
      0x800009a4 sw      s9, 68(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe94]
      0x800009a8 sw      s10, 64(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe90]
      0x800009ac sw      s11, 60(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe8c]
      0x800009b0 mv      s3, a4                 #; a4  = 0x0011fed4, (wrb) s3  <-- 0x0011fed4
      0x800009b4 mv      s0, a3                 #; a3  = 0x80002c55, (wrb) s0  <-- 0x80002c55
      0x800009b8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800009bc mv      s4, a1                 #; a1  = 0x0011fec7, (wrb) s4  <-- 0x0011fec7
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x800009c0 beqz    a1, pc + 12            #; a1  = 0x0011fec7, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009c4 mv      s2, a0                 #; a0  = 0x80001570, (wrb) s2  <-- 0x80001570
      0x800009c8 j       pc + 0xc               #; goto 0x800009d4
      0x800009d4 li      s8, 0                  #; (wrb) s8  <-- 0
      0x800009d8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800009dc li      s11, 16                #; (wrb) s11 <-- 16
      0x800009e0 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800009e4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x800009e8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x800009ec sw      a0, 24(sp)             #; sp  = 0x0011fe50, 2048 ~~> Word[0x0011fe68]
      0x800009f0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x800009f4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x800009f8 sw      a0, 16(sp)             #; sp  = 0x0011fe50, 65535 ~~> Word[0x0011fe60]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009fc addi    s10, s0, 2             #; s0  = 0x80002c55, (wrb) s10 <-- 0x80002c57
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a00 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000a04 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a08 lbu     a0, 0(s0)              #; s0  = 0x80002c55, a0  <~~ Byte[0x80002c55]
                                                #; (lsu) a0  <-- 101
      0x80000a0c beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 0
      0x80001590 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 1 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 0, (wrb) a4  <-- 0x80002f94
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f94, 101 ~~> Byte[0x80002fdc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 1
      0x800015a4 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800015a8 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800015b0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c55, (wrb) s0  <-- 0x80002c56
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c57, (wrb) s10 <-- 0x80002c58
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c56, a0  <~~ Byte[0x80002c56]
                                                #; (lsu) a0  <-- 114
      0x80000a38 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 1
      0x80001590 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 2 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 1, (wrb) a4  <-- 0x80002f95
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f95, 114 ~~> Byte[0x80002fdd]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 2
      0x800015a4 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800015a8 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015b0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c56, (wrb) s0  <-- 0x80002c57
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c58, (wrb) s10 <-- 0x80002c59
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c57, a0  <~~ Byte[0x80002c57]
                                                #; (lsu) a0  <-- 114
      0x80000a38 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 2
      0x80001590 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 3 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 2, (wrb) a4  <-- 0x80002f96
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f96, 114 ~~> Byte[0x80002fde]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 3
      0x800015a4 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800015a8 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015b0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c57, (wrb) s0  <-- 0x80002c58
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c59, (wrb) s10 <-- 0x80002c5a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c58, a0  <~~ Byte[0x80002c58]
                                                #; (lsu) a0  <-- 111
      0x80000a38 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 3
      0x80001590 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 4 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 3, (wrb) a4  <-- 0x80002f97
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f97, 111 ~~> Byte[0x80002fdf]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 4
      0x800015a4 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800015a8 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800015b0 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c58, (wrb) s0  <-- 0x80002c59
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c5a, (wrb) s10 <-- 0x80002c5b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c59, a0  <~~ Byte[0x80002c59]
                                                #; (lsu) a0  <-- 114
      0x80000a38 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 4
      0x80001590 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 5 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 4, (wrb) a4  <-- 0x80002f98
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f98, 114 ~~> Byte[0x80002fe0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 5
      0x800015a4 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800015a8 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015b0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c59, (wrb) s0  <-- 0x80002c5a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c5b, (wrb) s10 <-- 0x80002c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c5a, a0  <~~ Byte[0x80002c5a]
                                                #; (lsu) a0  <-- 32
      0x80000a38 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 5
      0x80001590 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 6 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 5, (wrb) a4  <-- 0x80002f99
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f99, 32 ~~> Byte[0x80002fe1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 6
      0x800015a4 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800015a8 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015b0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c5a, (wrb) s0  <-- 0x80002c5b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c5c, (wrb) s10 <-- 0x80002c5d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c5b, a0  <~~ Byte[0x80002c5b]
                                                #; (lsu) a0  <-- 61
      0x80000a38 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 6
      0x80001590 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 7 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 6, (wrb) a4  <-- 0x80002f9a
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9a, 61 ~~> Byte[0x80002fe2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 7
      0x800015a4 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800015a8 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800015b0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c5b, (wrb) s0  <-- 0x80002c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c5d, (wrb) s10 <-- 0x80002c5e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c5c, a0  <~~ Byte[0x80002c5c]
                                                #; (lsu) a0  <-- 32
      0x80000a38 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 7
      0x80001590 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 8 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 7, (wrb) a4  <-- 0x80002f9b
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9b, 32 ~~> Byte[0x80002fe3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 8
      0x800015a4 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800015a8 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015b0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c5c, (wrb) s0  <-- 0x80002c5d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c5e, (wrb) s10 <-- 0x80002c5f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c5d, a0  <~~ Byte[0x80002c5d]
                                                #; (lsu) a0  <-- 37
      0x80000a38 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a10
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000a40 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a44 j       pc + 0x10              #; goto 0x80000a54
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000a54 lbu     a0, -1(s10)            #; s10 = 0x80002c5f, a0  <~~ Byte[0x80002c5e]
                                                #; (lsu) a0  <-- 102
      0x80000a58 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000a5c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a94
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a94 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000a98 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a9c addi    a1, s10, -1            #; s10 = 0x80002c5f, (wrb) a1  <-- 0x80002c5e
      0x80000aa0 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000aa4 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000b20 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000b24 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b74
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b74 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b78 mv      s10, a1                #; a1  = 0x80002c5e, (wrb) s10 <-- 0x80002c5e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000b7c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b80 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b84 j       pc + 0xc               #; goto 0x80000b90
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000b90 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000b94 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000b98 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000b9c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000ba0 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000ba4 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c08
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000c08 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000c0c li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c10 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c14 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000c18 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c18
      0x80000c1c addi    a2, a2, 200            #; a2  = 0x80002c18, (wrb) a2  <-- 0x80002ce0
      0x80000c20 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002ce0, (wrb) a1  <-- 0x80002de4
      0x80000c24 lw      a2, 0(a1)              #; a1  = 0x80002de4, a2  <~~ Word[0x80002de4]
      0x80000c28 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000c2c li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c60
      0x80000c30 jr      a2                     #; a2  = 0x80000c60, goto 0x80000c60
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000c60 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000c64 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000c6c addi    a0, s3, 7              #; s3  = 0x0011fed4, (wrb) a0  <-- 0x0011fedb
      0x80000c70 andi    a0, a0, -8             #; a0  = 0x0011fedb, (wrb) a0  <-- 0x0011fed8
      0x80000c78 addi    s3, a0, 8              #; a0  = 0x0011fed8, (wrb) s3  <-- 0x0011fee0
      0x80000c7c mv      a0, s2                 #; s2  = 0x80001570, (wrb) a0  <-- 0x80001570
      0x80000c74 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fed8]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000c80 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000c84 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000c88 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c8c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000c90 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000c94 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000c98 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c98
      0x80000c9c jalr    ra, ra, -1656          #; ra  = 0x80001c98, (wrb) ra  <-- 0x80000ca0, goto 0x80001620
; _ftoa (printf.c:340)
      0x80001620 addi    sp, sp, -112           #; sp  = 0x0011fe50, (wrb) sp  <-- 0x0011fde0
      0x80001624 sw      ra, 108(sp)            #; sp  = 0x0011fde0, 0x80000ca0 ~~> Word[0x0011fe4c]
      0x80001628 sw      s0, 104(sp)            #; sp  = 0x0011fde0, 0 ~~> Word[0x0011fe48]
      0x8000162c sw      s1, 100(sp)            #; sp  = 0x0011fde0, 8 ~~> Word[0x0011fe44]
      0x80001630 sw      s2, 96(sp)             #; sp  = 0x0011fde0, 0x80001570 ~~> Word[0x0011fe40]
      0x80001634 sw      s3, 92(sp)             #; sp  = 0x0011fde0, 0x0011fee0 ~~> Word[0x0011fe3c]
      0x80001638 sw      s4, 88(sp)             #; sp  = 0x0011fde0, 0x0011fec7 ~~> Word[0x0011fe38]
      0x8000163c sw      s5, 84(sp)             #; sp  = 0x0011fde0, -1 ~~> Word[0x0011fe34]
      0x80001640 sw      s6, 80(sp)             #; sp  = 0x0011fde0, 0 ~~> Word[0x0011fe30]
      0x80001644 sw      s7, 76(sp)             #; sp  = 0x0011fde0, 0 ~~> Word[0x0011fe2c]
      0x80001648 sw      s8, 72(sp)             #; sp  = 0x0011fde0, 16 ~~> Word[0x0011fe28]
      0x8000164c sw      s9, 68(sp)             #; sp  = 0x0011fde0, 8 ~~> Word[0x0011fe24]
      0x80001650 sw      s10, 64(sp)            #; sp  = 0x0011fde0, 0x80002c5e ~~> Word[0x0011fe20]
      0x80001654 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe18]
      0x80001658 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe10]
      0x8000165c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe08]
      0x80001660 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003660
      0x80001664 addi    s1, s1, -1912          #; s1  = 0x80003660, (wrb) s1  <-- 0x80002ee8
      0x80001668 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002ee8]
; _ftoa (printf.c:351)
      0x80001670 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001674 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001678 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x8000166c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x8000167c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001680 mv      s6, a1                 #; a1  = 0x0011fec7, (wrb) s6  <-- 0x0011fec7
      0x80001684 mv      s7, a0                 #; a0  = 0x80001570, (wrb) s7  <-- 0x80001570
; _ftoa (printf.c:351)
      0x80001688 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001778
; _ftoa (printf.c:0)
      0x8000177c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000277c
      0x80001778 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001780 addi    a0, a0, 1908           #; a0  = 0x8000277c, (wrb) a0  <-- 0x80002ef0
      0x80001784 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001788 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x8000178c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800017a8
; _ftoa (printf.c:0)
      0x800017a8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027a8
      0x800017ac addi    a0, a0, 1872           #; a0  = 0x800027a8, (wrb) a0  <-- 0x80002ef8
      0x800017b4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027b4
      0x800017b8 addi    a0, a0, 1868           #; a0  = 0x800027b4, (wrb) a0  <-- 0x80002f00
      0x800017b0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef8]
      0x800017bc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f00]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x800017c0 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x800017c4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x800017c8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800017cc bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018c8
; _ftoa (printf.c:374)
      0x800018c8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x800018cc li      s8, 6                  #; (wrb) s8  <-- 6
      0x800018d0 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018d8
; _ftoa (printf.c:0)
      0x800018d8 li      a0, 10                 #; (wrb) a0  <-- 10
      0x800018dc fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
; _ftoa (printf.c:378)
      0x800018e0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001918
; _ftoa (printf.c:0)
      0x80001918 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x8000191c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001920 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002920
      0x80001924 addi    a1, a1, 1296           #; a1  = 0x80002920, (wrb) a1  <-- 0x80002e30
      0x80001928 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e30, (wrb) a0  <-- 0x80002e60
      0x8000192c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e60]
; _ftoa (printf.c:383)
      0x80001930 fcvt.w.d s1, fs2               #; fs2  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:384)
      0x80001934 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001938 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x8000193c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x80001940 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002940
      0x80001944 addi    a0, a0, 1480           #; a0  = 0x80002940, (wrb) a0  <-- 0x80002f08
                                                #; (f:fpu) ft2  <-- 0.0
      0x80001948 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f08]
; _ftoa (printf.c:385)
      0x8000194c fcvt.wu.d a0, ft2              #; ft2  = 0.0
; _ftoa (printf.c:386)
      0x80001950 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001954 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001958 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x8000195c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000197c
; _ftoa (printf.c:396)
      0x8000197c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001980 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001994
; _ftoa (printf.c:403)
      0x80001998 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001994 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x8000199c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x800019a0 addi    a1, sp, 8              #; sp  = 0x0011fde0, (wrb) a1  <-- 0x0011fde8
; _ftoa (printf.c:414)
      0x800019a4 add     t1, a1, s0             #; a1  = 0x0011fde8, s0  = 0, (wrb) t1  <-- 0x0011fde8
      0x800019a8 li      t0, 32                 #; (wrb) t0  <-- 32
      0x800019ac sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x800019b0 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x800019b4 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x800019b8 li      a6, 10                 #; (wrb) a6  <-- 10
      0x800019bc li      a7, 9                  #; (wrb) a7  <-- 9
      0x800019c0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x800019c4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x800019c8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800019cc srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x800019d0 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x800019d4 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x800019d8 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x800019dc add     a5, t1, a2             #; t1  = 0x0011fde8, a2  = 0, (wrb) a5  <-- 0x0011fde8
      0x800019e0 sb      a3, 0(a5)              #; a5  = 0x0011fde8, 48 ~~> Byte[0x0011fde8]
; _ftoa (printf.c:417)
      0x800019e4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x800019e8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x800019ec add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x800019f0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x800019f4 li      a3, 30                 #; (wrb) a3  <-- 30
      0x800019f8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x800019fc xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001a00 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001a04 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001a08 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a0c addi    a0, sp, 8              #; sp  = 0x0011fde0, (wrb) a0  <-- 0x0011fde8
; _ftoa (printf.c:422)
      0x80001a10 add     a0, a0, s0             #; a0  = 0x0011fde8, s0  = 0, (wrb) a0  <-- 0x0011fde8
      0x80001a14 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001a18 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001a1c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001a20 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001a24 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001a28 add     a0, a0, a2             #; a0  = 0x0011fde8, a2  = 1, (wrb) a0  <-- 0x0011fde9
      0x80001a2c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001a30 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a38
      0x80001a38 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001a3c li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001a40 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a40
      0x80001a44 jalr    ra, ra, -1256          #; ra  = 0x80000a40, (wrb) ra  <-- 0x80001a48, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fde9, (wrb) a4  <-- 0x0011fde9
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
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fde9, 48 ~~> Byte[0x0011fded]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fde9, 48 ~~> Byte[0x0011fdec]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fde9, 48 ~~> Byte[0x0011fdeb]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fde9, 48 ~~> Byte[0x0011fdea]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fde9, 48 ~~> Byte[0x0011fde9]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x80001a48, goto 0x80001a48
; _ftoa (printf.c:0)
      0x80001a48 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001a4c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001a50 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001a54 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001a58 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001a5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a60 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001a64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a4c
      0x80001a4c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001a50 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001a54 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001a58 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001a5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a60 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001a64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a4c
      0x80001a4c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001a50 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001a54 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001a58 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001a5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a60 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001a64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a4c
      0x80001a4c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001a50 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001a54 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001a58 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001a5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a60 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001a64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a4c
      0x80001a4c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001a50 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001a54 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001a58 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001a5c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001a60 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001a64 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001a68 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001a6c j       pc + 0x28              #; goto 0x80001a94
      0x80001a94 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001a98 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001a9c addi    a1, sp, 8              #; sp  = 0x0011fde0, (wrb) a1  <-- 0x0011fde8
; _ftoa (printf.c:427)
      0x80001aa0 add     a0, a1, a0             #; a1  = 0x0011fde8, a0  = 6, (wrb) a0  <-- 0x0011fdee
      0x80001aa4 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001aa8 sb      a1, 0(a0)              #; a0  = 0x0011fdee, 46 ~~> Byte[0x0011fdee]
      0x80001aac j       pc + 0x8               #; goto 0x80001ab4
; _ftoa (printf.c:0)
      0x80001ab4 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001ab8 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001abc bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001ac0 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001ac8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001ac4 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001acc addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001ad0 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001ad4 addi    a3, sp, 8              #; sp  = 0x0011fde0, (wrb) a3  <-- 0x0011fde8
      0x80001ad8 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001adc beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001ae0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001ae4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001ae8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001aec add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001af0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001af4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001af8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001afc addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001b00 add     s0, a3, s0             #; a3  = 0x0011fde8, s0  = 7, (wrb) s0  <-- 0x0011fdef
; _ftoa (printf.c:434)
      0x80001b04 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001b08 sb      a5, 0(s0)              #; s0  = 0x0011fdef, 48 ~~> Byte[0x0011fdef]
; _ftoa (printf.c:0)
      0x80001b0c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001b10 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001b14 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001b18 j       pc + 0x8               #; goto 0x80001b20
; _ftoa (printf.c:440)
      0x80001b20 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001b24 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001b28 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b94
; _ftoa (printf.c:0)
      0x80001b94 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001b98 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001b9c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001bb4
; _ftoa (printf.c:453)
      0x80001bb4 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001bb8 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001bbc andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001bc0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001bec
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001bec snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001bf0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001bf4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001bf8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001bfc andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001c00 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c04 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c30
; _ftoa (printf.c:0)
      0x80001c30 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c34 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001c38 addi    s9, sp, 7              #; sp  = 0x0011fde0, (wrb) s9  <-- 0x0011fde7
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 8, (wrb) a0  <-- 0x0011fdef
      0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fdef, a0  <~~ Byte[0x0011fdef]
      0x80001c44 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001c48 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
                                                #; (lsu) a0  <-- 48
      0x80001c50 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 8
      0x80001590 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 9 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 8, (wrb) a4  <-- 0x80002f9c
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9c, 48 ~~> Byte[0x80002fe4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 9
      0x800015a4 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800015a8 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c5c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001c60 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c64 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c3c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 7, (wrb) a0  <-- 0x0011fdee
      0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fdee, a0  <~~ Byte[0x0011fdee]
      0x80001c44 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001c48 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80001c50 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 9
      0x80001590 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 10 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 9, (wrb) a4  <-- 0x80002f9d
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9d, 46 ~~> Byte[0x80002fe5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 10
      0x800015a4 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800015a8 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800015b0 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c5c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001c60 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c64 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c3c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 6, (wrb) a0  <-- 0x0011fded
      0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fded, a0  <~~ Byte[0x0011fded]
      0x80001c44 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001c48 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80001c50 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 10
      0x80001590 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 11 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 10, (wrb) a4  <-- 0x80002f9e
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9e, 48 ~~> Byte[0x80002fe6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 11
      0x800015a4 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800015a8 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c5c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001c60 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c64 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c3c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 5, (wrb) a0  <-- 0x0011fdec
      0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fdec, a0  <~~ Byte[0x0011fdec]
      0x80001c44 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001c48 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80001c50 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 11
      0x80001590 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 12 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 11, (wrb) a4  <-- 0x80002f9f
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9f, 48 ~~> Byte[0x80002fe7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 12
      0x800015a4 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800015a8 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c5c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001c60 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c64 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c3c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 4, (wrb) a0  <-- 0x0011fdeb
      0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fdeb, a0  <~~ Byte[0x0011fdeb]
      0x80001c44 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001c48 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80001c50 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 12
      0x80001590 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 13 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 12, (wrb) a4  <-- 0x80002fa0
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa0, 48 ~~> Byte[0x80002fe8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 13
      0x800015a4 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800015a8 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c5c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001c60 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c64 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c3c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 3, (wrb) a0  <-- 0x0011fdea
      0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fdea, a0  <~~ Byte[0x0011fdea]
      0x80001c44 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001c48 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80001c50 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 13
      0x80001590 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 14 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 13, (wrb) a4  <-- 0x80002fa1
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa1, 48 ~~> Byte[0x80002fe9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 14
      0x800015a4 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800015a8 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c5c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001c60 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c64 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c3c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 2, (wrb) a0  <-- 0x0011fde9
      0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fde9, a0  <~~ Byte[0x0011fde9]
      0x80001c44 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001c48 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80001c50 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 14
      0x80001590 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 15 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 14, (wrb) a4  <-- 0x80002fa2
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa2, 48 ~~> Byte[0x80002fea]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 15
      0x800015a4 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800015a8 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c5c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001c60 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c64 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c3c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 1, (wrb) a0  <-- 0x0011fde8
      0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fde8, a0  <~~ Byte[0x0011fde8]
      0x80001c44 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001c48 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80001c50 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 15
      0x80001590 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 16 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 15, (wrb) a4  <-- 0x80002fa3
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa3, 48 ~~> Byte[0x80002feb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 16
      0x800015a4 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800015a8 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c5c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001c60 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c64 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001c68 j       pc + 0x8               #; goto 0x80001c70
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c70 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001c74 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001c78 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001c7c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001c80 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001c84 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001cb4
; _ftoa (printf.c:0)
      0x80001cb4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001cb8 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001cbc fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe08]
                                                #; (f:lsu) fs2  <-- 0.0
      0x80001cc8 lw      s10, 64(sp)            #; sp  = 0x0011fde0, s10 <~~ Word[0x0011fe20]
      0x80001cc0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe10]
      0x80001cc4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe18], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002c5e
      0x80001ccc lw      s9, 68(sp)             #; sp  = 0x0011fde0, s9  <~~ Word[0x0011fe24]
                                                #; (lsu) s9  <-- 8
      0x80001cd0 lw      s8, 72(sp)             #; sp  = 0x0011fde0, s8  <~~ Word[0x0011fe28]
                                                #; (lsu) s8  <-- 16
      0x80001cd4 lw      s7, 76(sp)             #; sp  = 0x0011fde0, s7  <~~ Word[0x0011fe2c]
                                                #; (lsu) s7  <-- 0
      0x80001cd8 lw      s6, 80(sp)             #; sp  = 0x0011fde0, s6  <~~ Word[0x0011fe30]
                                                #; (lsu) s6  <-- 0
      0x80001cdc lw      s5, 84(sp)             #; sp  = 0x0011fde0, s5  <~~ Word[0x0011fe34]
                                                #; (lsu) s5  <-- -1
      0x80001ce0 lw      s4, 88(sp)             #; sp  = 0x0011fde0, s4  <~~ Word[0x0011fe38]
                                                #; (lsu) s4  <-- 0x0011fec7
      0x80001ce4 lw      s3, 92(sp)             #; sp  = 0x0011fde0, s3  <~~ Word[0x0011fe3c]
                                                #; (lsu) s3  <-- 0x0011fee0
      0x80001ce8 lw      s2, 96(sp)             #; sp  = 0x0011fde0, s2  <~~ Word[0x0011fe40]
                                                #; (lsu) s2  <-- 0x80001570
      0x80001cec lw      s1, 100(sp)            #; sp  = 0x0011fde0, s1  <~~ Word[0x0011fe44]
                                                #; (lsu) s1  <-- 8
      0x80001cf0 lw      s0, 104(sp)            #; sp  = 0x0011fde0, s0  <~~ Word[0x0011fe48]
                                                #; (lsu) s0  <-- 0
      0x80001cf4 lw      ra, 108(sp)            #; sp  = 0x0011fde0, ra  <~~ Word[0x0011fe4c]
      0x80001cf8 addi    sp, sp, 112            #; sp  = 0x0011fde0, (wrb) sp  <-- 0x0011fe50
                                                #; (lsu) ra  <-- 0x80000ca0
      0x80001cfc ret                            #; ra  = 0x80000ca0, goto 0x80000ca0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ca0 j       pc + 0x7c0             #; goto 0x80001460
      0x80001460 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001464 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001468 li      s7, 46                 #; (wrb) s7  <-- 46
      0x8000146c addi    s0, s10, 1             #; s10 = 0x80002c5e, (wrb) s0  <-- 0x80002c5f
      0x80001470 j       pc - 0xa74             #; goto 0x800009fc
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009fc addi    s10, s0, 2             #; s0  = 0x80002c5f, (wrb) s10 <-- 0x80002c61
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a00 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000a04 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a08 lbu     a0, 0(s0)              #; s0  = 0x80002c5f, a0  <~~ Byte[0x80002c5f]
                                                #; (lsu) a0  <-- 10
      0x80000a0c beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a10 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a14 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80000a1c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
      0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
      0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 16
      0x80001590 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 17 ~~> Word[0x80002f94]
      0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 16, (wrb) a4  <-- 0x80002fa4
      0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa4, 10 ~~> Byte[0x80002fec]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
                                                #; (lsu) a4  <-- 17
      0x800015a4 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800015a8 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800015ac addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800015b0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800015b4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800015b8 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015bc add     a0, a3, a2             #; a3  = 0x80002f94, a2  = 0, (wrb) a0  <-- 0x80002f94
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015c0 addi    a2, a0, 72             #; a0  = 0x80002f94, (wrb) a2  <-- 0x80002fdc
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015c4 sw      zero, 12(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa0]
      0x800015c8 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800015cc sw      a3, 8(a0)              #; a0  = 0x80002f94, 64 ~~> Word[0x80002f9c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015d0 sw      zero, 20(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa8]
      0x800015d4 li      a3, 1                  #; (wrb) a3  <-- 1
      0x800015d8 sw      a3, 16(a0)             #; a0  = 0x80002f94, 1 ~~> Word[0x80002fa4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc sw      zero, 28(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb0]
      0x800015e0 sw      a2, 24(a0)             #; a0  = 0x80002f94, 0x80002fdc ~~> Word[0x80002fac]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015e4 lw      a2, 0(a1)              #; a1  = 0x80002f94, a2  <~~ Word[0x80002f94]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015e8 addi    a3, a0, 8              #; a0  = 0x80002f94, (wrb) a3  <-- 0x80002f9c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015ec sw      zero, 36(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb8]
                                                #; (lsu) a2  <-- 17
      0x800015f0 sw      a2, 32(a0)             #; a0  = 0x80002f94, 17 ~~> Word[0x80002fb4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035f4
      0x800015f8 addi    a0, a0, -1908          #; a0  = 0x800035f4, (wrb) a0  <-- 0x80002e80
      0x800015fc sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002f9c ~~> Word[0x80002e80]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003600
      0x80001604 addi    a0, a0, -1856          #; a0  = 0x80003600, (wrb) a0  <-- 0x80002ec0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x8000160c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001608
      0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x8000160c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001608
      0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x8000160c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001608
      0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x8000160c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001608
      0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 1
      0x8000160c beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001610 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001614 sw      zero, 0(a1)            #; a1  = 0x80002f94, 0 ~~> Word[0x80002f94]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c5f, (wrb) s0  <-- 0x80002c60
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c61, (wrb) s10 <-- 0x80002c62
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c60, a0  <~~ Byte[0x80002c60]
                                                #; (lsu) a0  <-- 0
      0x80000a38 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000a3c j       pc + 0xad8             #; goto 0x80001514
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001514 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001518 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001520
      0x80001520 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001524 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
      0x80001528 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x8000152c jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80001530, goto 0x80001570
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001570 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001618
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001618 ret                            #; ra  = 0x80001530, goto 0x80001530
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001530 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001534 lw      s11, 60(sp)            #; sp  = 0x0011fe50, s11 <~~ Word[0x0011fe8c]
                                                #; (lsu) s11 <-- 0
      0x80001538 lw      s10, 64(sp)            #; sp  = 0x0011fe50, s10 <~~ Word[0x0011fe90]
                                                #; (lsu) s10 <-- 0
      0x8000153c lw      s9, 68(sp)             #; sp  = 0x0011fe50, s9  <~~ Word[0x0011fe94]
                                                #; (lsu) s9  <-- 0
      0x80001540 lw      s8, 72(sp)             #; sp  = 0x0011fe50, s8  <~~ Word[0x0011fe98]
                                                #; (lsu) s8  <-- 0
      0x80001544 lw      s7, 76(sp)             #; sp  = 0x0011fe50, s7  <~~ Word[0x0011fe9c]
                                                #; (lsu) s7  <-- 0
      0x80001548 lw      s6, 80(sp)             #; sp  = 0x0011fe50, s6  <~~ Word[0x0011fea0]
                                                #; (lsu) s6  <-- 0
      0x8000154c lw      s5, 84(sp)             #; sp  = 0x0011fe50, s5  <~~ Word[0x0011fea4]
                                                #; (lsu) s5  <-- 0
      0x80001550 lw      s4, 88(sp)             #; sp  = 0x0011fe50, s4  <~~ Word[0x0011fea8]
                                                #; (lsu) s4  <-- 0
      0x80001554 lw      s3, 92(sp)             #; sp  = 0x0011fe50, s3  <~~ Word[0x0011feac]
                                                #; (lsu) s3  <-- 0
      0x80001558 lw      s2, 96(sp)             #; sp  = 0x0011fe50, s2  <~~ Word[0x0011feb0]
                                                #; (lsu) s2  <-- 0
      0x8000155c lw      s1, 100(sp)            #; sp  = 0x0011fe50, s1  <~~ Word[0x0011feb4]
                                                #; (lsu) s1  <-- 0
      0x80001560 lw      s0, 104(sp)            #; sp  = 0x0011fe50, s0  <~~ Word[0x0011feb8]
                                                #; (lsu) s0  <-- 0
      0x80001564 lw      ra, 108(sp)            #; sp  = 0x0011fe50, ra  <~~ Word[0x0011febc]
      0x80001568 addi    sp, sp, 112            #; sp  = 0x0011fe50, (wrb) sp  <-- 0x0011fec0
                                                #; (lsu) ra  <-- 0x8000096c
      0x8000156c ret                            #; ra  = 0x8000096c, goto 0x8000096c
; printf_ (printf.c:869)
      0x8000096c lw      ra, 12(sp)             #; sp  = 0x0011fec0, ra  <~~ Word[0x0011fecc]
      0x80000970 addi    sp, sp, 48             #; sp  = 0x0011fec0, (wrb) sp  <-- 0x0011fef0
                                                #; (lsu) ra  <-- 0x800008d0
      0x80000974 ret                            #; ra  = 0x800008d0, goto 0x800008d0
; main (bench_sp.c:0)
      0x800008d0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028d0
      0x800008d4 addi    a0, a0, 1552           #; a0  = 0x800028d0, (wrb) a0  <-- 0x80002ee0
      0x800008d8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002ee0]
                                                #; (f:lsu) ft3  <-- 0.0001
; main (bench_sp.c:59)
      0x800008dc flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
                                                #; (acc) s9  <-- 0x01813c87
      0x800008e0 fld     fs11, 8(sp)            #; fs11 <~~ Doub[0x0011fef8]
; main (bench_sp.c:60)
      0x800008e4 fld     fs10, 16(sp)           #; fs10 <~~ Doub[0x0011ff00], (f:lsu) fs11 <-- 0.0
      0x800008e8 fld     fs9, 24(sp)            #; fs9  <~~ Doub[0x0011ff08], (f:lsu) fs10 <-- 0.0
      0x800008ec fld     fs8, 32(sp)            #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
      0x800008f0 fld     fs7, 40(sp)            #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
      0x800008f4 fld     fs6, 48(sp)            #; fs6  <~~ Doub[0x0011ff20], (f:lsu) fs7  <-- 0.0
      0x800008f8 fld     fs5, 56(sp)            #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
      0x800008fc fld     fs4, 64(sp)            #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
      0x80000900 fld     fs3, 72(sp)            #; fs3  <~~ Doub[0x0011ff38], (f:lsu) fs4  <-- 0.0
      0x80000904 fld     fs2, 80(sp)            #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
      0x80000910 lw      ra, 108(sp)            #; sp  = 0x0011fef0, ra  <~~ Word[0x0011ff5c]
      0x80000908 fld     fs1, 88(sp)            #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
      0x80000914 addi    sp, sp, 112            #; sp  = 0x0011fef0, (wrb) sp  <-- 0x0011ff60
      0x8000090c fld     fs0, 96(sp)            #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) ra  <-- 0x800029d0
      0x80000918 ret                            #; ra  = 0x800029d0, goto 0x800029d0
; ?? (start.S:184)
      0x800029d0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x800029d4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d4
      0x800029d8 jalr    ra, ra, 524            #; ra  = 0x800029d4, (wrb) ra  <-- 0x800029dc, goto 0x80002be0
; ?? (start_snitch.S:33)
      0x80002be0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002be4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029dc ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002be8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002be8
      0x80002bec jalr    ra, ra, -1264          #; ra  = 0x80002be8, (wrb) ra  <-- 0x80002bf0, goto 0x800026f8
; _snrt_barrier_reg_ptr (team.c:80)
      0x800026f8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026fc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002700 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002704 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002708 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000270c ret                            #; ra  = 0x80002bf0, goto 0x80002bf0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002bf0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002bf4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002bf8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002bfc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029dc
; ?? (start_snitch.S:40)
      0x80002c00 ret                            #; ra  = 0x800029dc, goto 0x800029dc
; ?? (start.S:195)
      0x800029dc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x800029e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029e0
      0x800029e4 jalr    ra, ra, 556            #; ra  = 0x800029e0, (wrb) ra  <-- 0x800029e8, goto 0x80002c0c
; ?? (start_snitch.S:15)
      0x80002c0c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002c10 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002c14 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029e8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002c18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c18
      0x80002c1c jalr    ra, ra, -1344          #; ra  = 0x80002c18, (wrb) ra  <-- 0x80002c20, goto 0x800026d8
; snrt_global_core_idx (team.c:32)
      0x800026d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026e0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026e4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026e8 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x800026ec csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x800026f0 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x800026f4 ret                            #; ra  = 0x80002c20, goto 0x80002c20
; ?? (start_snitch.S:20)
      0x80002c20 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002c24 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002c28 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002c2c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x800029e8
; ?? (start_snitch.S:28)
      0x80002c30 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002c34 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002c38 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c38
      0x80002c3c addi    t1, t1, 584            #; t1  = 0x80002c38, (wrb) t1  <-- 0x80002e80
; ?? (start_snitch.S:31)
      0x80002c40 sw      t0, 0(t1)              #; t1  = 0x80002e80, 1 ~~> Word[0x80002e80]
; ?? (start_snitch.S:32)
      0x80002c44 ret                            #; ra  = 0x800029e8, goto 0x800029e8
; ?? (start.S:198)
      0x800029e8 wfi                            #; 
                        tion 0 @ (12, 4888):
                           38
                           50
                           12
                            0
                      18.2632
                       0.3448
                       0.2107
                          1.0
                          1.0
                            1
                       1.0023
                            0
                       0.0920
                       0.0886
                       0.9621
                         4878
                       0.4369
            tion 1 @ (4890, 5606):
                          200
                            0
                            0
                       0.5599
                       0.4274
                          1.0
                          1.0
                            1
                          3.0
                          1.0
                       0.4178
                       0.1393
                       0.3333
                          718
                       0.9777
            tion 2 @ (5608, 11332):
                          171
                          177
                           24
                            4
                       9.6384
                       0.3034
                       0.0269
                          1.0
                          1.0
                            0
                       0.8571
                       3.6667
                       0.0084
                       0.0037
                       0.4375
                         5725
                       0.3118
