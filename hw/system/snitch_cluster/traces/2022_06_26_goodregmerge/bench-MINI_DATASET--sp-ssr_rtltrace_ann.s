; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800027f0
      0x00001014 jalr    t0                     #; t0  = 0x800027f0, (wrb) ra  <-- 4120, goto 0x800027f0
; ?? (start.S:20)
      0x800027f0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800037f0
; ?? (start.S:21)
      0x800027f4 addi    gp, gp, -232           #; gp  = 0x800037f0, (wrb) gp  <-- 0x80003708
; ?? (start.S:28)
      0x800027f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027f8
      0x800027fc jalr    ra, ra, 964            #; ra  = 0x800027f8, (wrb) ra  <-- 0x80002800, goto 0x80002bbc
; ?? (start_snitch.S:16)
      0x80002bbc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002bc0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002bc4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002bc8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002bcc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002bd0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002bd4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002bd8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002bdc mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002be0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002be4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002be8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002bec ret                            #; ra  = 0x80002800, goto 0x80002800
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002800 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002804 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002808 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002808
      0x8000280c jalr    ra, ra, 1036           #; ra  = 0x80002808, (wrb) ra  <-- 0x80002810, goto 0x80002c14
; ?? (start_snitch.S:48)
      0x80002c14 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002c18 ret                            #; ra  = 0x80002810, goto 0x80002810
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002810 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002814 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002818 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000281c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002820 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002824 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002824
      0x80002828 addi    t0, t0, 1964           #; t0  = 0x80002824, (wrb) t0  <-- 0x80002fd0
; ?? (start.S:49)
      0x8000282c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000282c
      0x80002830 addi    t1, t1, 1960           #; t1  = 0x8000282c, (wrb) t1  <-- 0x80002fd4
; ?? (start.S:50)
      0x80002834 bge     t0, t1, pc + 16        #; t0  = 0x80002fd0, t1  = 0x80002fd4, not taken
; ?? (start.S:51)
      0x80002838 sw      zero, 0(t0)            #; t0  = 0x80002fd0, 0 ~~> Word[0x80002fd0]
; ?? (start.S:52)
      0x8000283c addi    t0, t0, 4              #; t0  = 0x80002fd0, (wrb) t0  <-- 0x80002fd4
; ?? (start.S:53)
      0x80002840 blt     t0, t1, pc - 8         #; t0  = 0x80002fd4, t1  = 0x80002fd4, not taken
; ?? (start.S:58)
      0x80002844 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002848 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000284c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002850 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002854 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002858 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000285c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002860 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002864 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002868 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000286c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002870 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002874 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002878 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000287c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002880 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002884 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002888 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000288c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002890 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002894 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002898 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000289c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x800028a0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x800028a4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x800028a8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x800028ac fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x800028b0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x800028b4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x800028b8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x800028bc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x800028c0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x800028c4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x800028c8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x800028cc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x800028d0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x800028d4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x800028d8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028d8
      0x800028dc lw      t0, 900(t0)            #; t0  = 0x800028d8, t0  <~~ Word[0x80002c5c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x800028e0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x800028e4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x800028e8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028e8
      0x800028ec lw      t2, 880(t2)            #; t2  = 0x800028e8, t2  <~~ Word[0x80002c58]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x800028f0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x800028f4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x800028f8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x800028fc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002900 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002904 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002908 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x8000290c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002910 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002910
      0x80002914 addi    t0, t0, 1528           #; t0  = 0x80002910, (wrb) t0  <-- 0x80002f08
; ?? (start.S:125)
      0x80002918 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002918
      0x8000291c addi    t1, t1, 1520           #; t1  = 0x80002918, (wrb) t1  <-- 0x80002f08
; ?? (start.S:126)
      0x80002920 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002920
      0x80002924 addi    t2, t2, 1512           #; t2  = 0x80002920, (wrb) t2  <-- 0x80002f08
; ?? (start.S:127)
      0x80002928 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002928
      0x8000292c addi    t3, t3, 1520           #; t3  = 0x80002928, (wrb) t3  <-- 0x80002f18
; ?? (start.S:128)
      0x80002930 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002f08, (wrb) sp  <-- 0x80122e78
; ?? (start.S:129)
      0x80002934 sub     sp, sp, t1             #; sp  = 0x80122e78, t1  = 0x80002f08, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002938 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002f08, (wrb) sp  <-- 0x80122e78
; ?? (start.S:131)
      0x8000293c sub     sp, sp, t3             #; sp  = 0x80122e78, t3  = 0x80002f18, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002940 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002944 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002948 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x8000294c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002950 bge     t0, t1, pc + 24        #; t0  = 0x80002f08, t1  = 0x80002f08, taken, goto 0x80002968
; ?? (start.S:147)
      0x80002968 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002968
      0x8000296c addi    t0, t0, 1440           #; t0  = 0x80002968, (wrb) t0  <-- 0x80002f08
; ?? (start.S:148)
      0x80002970 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002970
      0x80002974 addi    t1, t1, 1448           #; t1  = 0x80002970, (wrb) t1  <-- 0x80002f18
; ?? (start.S:149)
      0x80002978 bge     t0, t1, pc + 20        #; t0  = 0x80002f08, t1  = 0x80002f18, not taken
; ?? (start.S:150)
      0x8000297c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002980 addi    t0, t0, 4              #; t0  = 0x80002f08, (wrb) t0  <-- 0x80002f0c
; ?? (start.S:152)
      0x80002984 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002988 blt     t0, t2, pc - 12        #; t0  = 0x80002f0c, t2  = 0x80002f08, not taken
; ?? (start.S:158)
      0x8000298c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002990 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002994 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002998 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000299c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x800029a0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x800029a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029a4
      0x800029a8 jalr    ra, ra, -1056          #; ra  = 0x800029a4, (wrb) ra  <-- 0x800029ac, goto 0x80002584
; _snrt_init_team (start.c:49)
      0x80002584 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002588 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x8000258c lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002590 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002594 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002598 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x8000259c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800025a0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800025a4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800025a8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800025ac csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800025b0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800025b4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800025b8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800025bc sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800025c0 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800025c4 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800025c8 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800025cc lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800025d0 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800025d4 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800025d8 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800025dc lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800025e0 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800025e4 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800025e8 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800025ec sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800025f0 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800025f4 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800025f8 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x800025fc lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002600 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002604 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002608 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x8000260c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002610 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002614 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002618 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x8000261c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002620 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002624 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002628 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x8000262c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002630 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002634 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002638 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x8000263c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002640 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002644 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002648 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000264c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002650 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002654 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002658 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x8000265c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002660 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002664 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002668 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x8000266c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002670 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002674 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002678 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003678
      0x8000267c addi    a1, a1, -1700          #; a1  = 0x80003678, (wrb) a1  <-- 0x80002fd4
      0x80002680 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002fd4, (wrb) a0  <-- 0x80002fd4
      0x80002684 sw      zero, 0(a0)            #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fd4]
; _snrt_init_team (start.c:86)
      0x80002688 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x8000268c sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002690 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002694 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002698 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x8000269c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x800026a0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x800026a4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x800026a8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800026ac sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800026b0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800026b4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800026b8 lw      a0, 0(a1)              #; a1  = 0x80002fd4, a0  <~~ Word[0x80002fd4]
                                                #; (lsu) a0  <-- 0
      0x800026bc addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800026c0 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800026c4 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800026c8 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800026cc sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800026d0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026d4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026d8 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800026dc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026e0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026e4 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800026e8 ret                            #; ra  = 0x800029ac, goto 0x800029ac
; ?? (start.S:165)
      0x800029ac lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x800029b0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x800029b4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x800029b8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x800029bc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x800029c0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x800029c4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029c4
      0x800029c8 addi    t0, t0, 60             #; t0  = 0x800029c4, (wrb) t0  <-- 0x80002a00
; ?? (start.S:175)
      0x800029cc csrw    mtvec, t0              #; t0  = 0x80002a00, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x800029d0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d0
      0x800029d4 jalr    ra, ra, 544            #; ra  = 0x800029d0, (wrb) ra  <-- 0x800029d8, goto 0x80002bf0
; ?? (start_snitch.S:33)
      0x80002bf0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002bf4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029d8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002bf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bf8
      0x80002bfc jalr    ra, ra, -1260          #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80002c00, goto 0x8000270c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000270c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002710 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002714 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002718 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000271c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002720 ret                            #; ra  = 0x80002c00, goto 0x80002c00
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002c00 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002c04 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002c08 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002c0c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029d8
; ?? (start_snitch.S:40)
      0x80002c10 ret                            #; ra  = 0x800029d8, goto 0x800029d8
; ?? (start.S:183)
      0x800029d8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800009d8
      0x800029dc jalr    ra, ra, -932           #; ra  = 0x800009d8, (wrb) ra  <-- 0x800029e0, goto 0x80000634
; main (bench_sp.c:29)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_sp.c:30)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029e0 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (bench_sp.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (bench_sp.c:30)
      0x80000650 bnez    a1, pc + 720           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (bench_sp.c:34)
      0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000660 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
                                                #; (lsu) a2  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:34)
      0x80000664 lw      t1, 88(a2)             #; a2  = 0x0011ff70, t1  <~~ Word[0x0011ffc8]
                                                #; (lsu) t1  <-- 0x00100000
      0x80000668 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x8000066c lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
                                                #; (lsu) a3  <-- 0x0001df30
      0x80000670 addi    a4, t1, 800            #; t1  = 0x00100000, (wrb) a4  <-- 0x00100320
      0x80000674 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x80000678 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100320, taken, goto 0x80000690
; snrt_l1alloc (alloc.c:33)
;  in main (bench_sp.c:34)
      0x80000690 mv      t0, t1                 #; t1  = 0x00100000, (wrb) t0  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:34)
      0x80000694 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:35)
      0x80000698 addi    a1, t1, 1600           #; t1  = 0x00100000, (wrb) a1  <-- 0x00100640
      0x8000069c mv      t1, a4                 #; a4  = 0x00100320, (wrb) t1  <-- 0x00100320
      0x800006a0 bgeu    a3, a1, pc - 24        #; a3  = 0x0011df30, a1  = 0x00100640, taken, goto 0x80000688
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:35)
      0x80000688 sw      a1, 88(a2)             #; a2  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
      0x8000068c j       pc + 0x1c              #; goto 0x800006a8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x800006a8 srli    a1, t0, 20             #; t0  = 0x00100000, (wrb) a1  <-- 1
      0x800006ac snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x800006b0 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x800006b4 addi    a2, a2, -791           #; a2  = 0x00120000, (wrb) a2  <-- 0x0011fce9
      0x800006b8 sltu    a2, t0, a2             #; t0  = 0x00100000, a2  = 0x0011fce9, (wrb) a2  <-- 1
      0x800006bc and     a6, a1, a2             #; a1  = 1, a2  = 1, (wrb) a6  <-- 1
      0x800006c0 beqz    a6, pc + 108           #; a6  = 1, not taken
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:37)
      0x800006c4 li      a3, 0                  #; (wrb) a3  <-- 0
      0x800006c8 li      a1, 8                  #; (wrb) a1  <-- 8
      0x800006cc li      a2, 99                 #; (wrb) a2  <-- 99
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x800006d0 li      a4, 64                 #; (wrb) a4  <-- 64
      0x800006d4 scfgw   a2, a4                 #; a2  = 99, a4  = 64
      0x800006d8 li      a2, 192                #; (wrb) a2  <-- 192
      0x800006dc scfgw   a1, a2                 #; a1  = 8, a2  = 192
      0x800006e0 li      a1, 32                 #; (wrb) a1  <-- 32
      0x800006e4 scfgw   zero, a1               #; a1  = 32
      0x800006e8 scfgwi  t0, 896                #; t0  = 0x00100000
      0x800006ec csrrsi  a1, ssr, 1             #; 
      0x800006f0 li      a4, 100                #; (wrb) a4  <-- 100
      0x800006f4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x800006f8 addi    a5, a1, -819           #; a1  = 0xccccd000, (wrb) a5  <-- 0xcccccccd
      0x800006fc li      a2, 10                 #; (wrb) a2  <-- 10
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 0, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
      0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 100, (wrb) a4  <-- 99
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000071c addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 99, taken, goto 0x80000700
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 1, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
      0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 1, a0  = 0, (wrb) a0  <-- 1
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 99, (wrb) a4  <-- 98
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000071c addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 98, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 2, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 1, (wrb) a0  <-- 0
      0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 2, a0  = 0, (wrb) a0  <-- 2
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 98, (wrb) a4  <-- 97
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000071c addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 97, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 3, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 2, (wrb) a0  <-- 0
      0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 3, a0  = 0, (wrb) a0  <-- 3
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 97, (wrb) a4  <-- 96
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000071c addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 96, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 4, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 3, (wrb) a0  <-- 0
      0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 4, a0  = 0, (wrb) a0  <-- 4
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 96, (wrb) a4  <-- 95
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000071c addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 95, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 5, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
      0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 5, a0  = 0, (wrb) a0  <-- 5
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 95, (wrb) a4  <-- 94
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000071c addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 94, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 6, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
      0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 6, a0  = 0, (wrb) a0  <-- 6
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 94, (wrb) a4  <-- 93
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000071c addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 93, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 7, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
      0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 7, a0  = 0, (wrb) a0  <-- 7
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 93, (wrb) a4  <-- 92
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000071c addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 92, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 8, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 6, (wrb) a0  <-- 0
      0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 8, a0  = 0, (wrb) a0  <-- 8
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 92, (wrb) a4  <-- 91
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000071c addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 91, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 9, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 7, (wrb) a0  <-- 0
      0x80000708 mul     a0, a0, a2             #; a0  = 0, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 9, a0  = 0, (wrb) a0  <-- 9
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 91, (wrb) a4  <-- 90
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000071c addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 90, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 10, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
      0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 10, a0  = 10, (wrb) a0  <-- 0
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 90, (wrb) a4  <-- 89
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000071c addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 89, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 11, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
      0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 11, a0  = 10, (wrb) a0  <-- 1
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 89, (wrb) a4  <-- 88
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000071c addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 88, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 12, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 9, (wrb) a0  <-- 1
      0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 12, a0  = 10, (wrb) a0  <-- 2
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 88, (wrb) a4  <-- 87
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000071c addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 87, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 13, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 10, (wrb) a0  <-- 1
      0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 13, a0  = 10, (wrb) a0  <-- 3
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 87, (wrb) a4  <-- 86
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000071c addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 86, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 14, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 11, (wrb) a0  <-- 1
      0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 14, a0  = 10, (wrb) a0  <-- 4
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 86, (wrb) a4  <-- 85
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000071c addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 85, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 15, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
      0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 15, a0  = 10, (wrb) a0  <-- 5
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 85, (wrb) a4  <-- 84
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000071c addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 84, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 16, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
      0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 16, a0  = 10, (wrb) a0  <-- 6
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 84, (wrb) a4  <-- 83
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000071c addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 83, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 17, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 13, (wrb) a0  <-- 1
      0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 17, a0  = 10, (wrb) a0  <-- 7
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 83, (wrb) a4  <-- 82
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000071c addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 82, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 18, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 14, (wrb) a0  <-- 1
      0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 18, a0  = 10, (wrb) a0  <-- 8
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 82, (wrb) a4  <-- 81
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000071c addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 81, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 19, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 15, (wrb) a0  <-- 1
      0x80000708 mul     a0, a0, a2             #; a0  = 1, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 19, a0  = 10, (wrb) a0  <-- 9
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 81, (wrb) a4  <-- 80
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000071c addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 80, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 20, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
      0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 20, a0  = 20, (wrb) a0  <-- 0
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 80, (wrb) a4  <-- 79
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000071c addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 79, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 21, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
      0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 21, a0  = 20, (wrb) a0  <-- 1
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 79, (wrb) a4  <-- 78
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000071c addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 78, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 22, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 17, (wrb) a0  <-- 2
      0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 22, a0  = 20, (wrb) a0  <-- 2
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 78, (wrb) a4  <-- 77
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000071c addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 77, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 23, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 18, (wrb) a0  <-- 2
      0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 23, a0  = 20, (wrb) a0  <-- 3
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 77, (wrb) a4  <-- 76
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000071c addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 76, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 24, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 19, (wrb) a0  <-- 2
      0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 24, a0  = 20, (wrb) a0  <-- 4
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 76, (wrb) a4  <-- 75
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000071c addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 75, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 25, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
      0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 25, a0  = 20, (wrb) a0  <-- 5
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 75, (wrb) a4  <-- 74
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000071c addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 74, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 26, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
      0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 26, a0  = 20, (wrb) a0  <-- 6
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 74, (wrb) a4  <-- 73
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000071c addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 73, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 27, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 21, (wrb) a0  <-- 2
      0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 27, a0  = 20, (wrb) a0  <-- 7
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 73, (wrb) a4  <-- 72
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000071c addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 72, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 28, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 22, (wrb) a0  <-- 2
      0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 28, a0  = 20, (wrb) a0  <-- 8
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 72, (wrb) a4  <-- 71
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000071c addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 71, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 29, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 23, (wrb) a0  <-- 2
      0x80000708 mul     a0, a0, a2             #; a0  = 2, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 29, a0  = 20, (wrb) a0  <-- 9
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 71, (wrb) a4  <-- 70
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000071c addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 70, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 30, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
      0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 30, a0  = 30, (wrb) a0  <-- 0
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 70, (wrb) a4  <-- 69
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000071c addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 69, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 31, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
      0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 31, a0  = 30, (wrb) a0  <-- 1
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 69, (wrb) a4  <-- 68
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000071c addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 68, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 32, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 25, (wrb) a0  <-- 3
      0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 32, a0  = 30, (wrb) a0  <-- 2
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 68, (wrb) a4  <-- 67
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000071c addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 67, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 33, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 26, (wrb) a0  <-- 3
      0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 33, a0  = 30, (wrb) a0  <-- 3
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 67, (wrb) a4  <-- 66
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000071c addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 66, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 34, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 27, (wrb) a0  <-- 3
      0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 34, a0  = 30, (wrb) a0  <-- 4
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 66, (wrb) a4  <-- 65
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000071c addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 65, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 35, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
      0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 35, a0  = 30, (wrb) a0  <-- 5
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 65, (wrb) a4  <-- 64
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000071c addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 64, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 36, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
      0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 36, a0  = 30, (wrb) a0  <-- 6
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 64, (wrb) a4  <-- 63
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000071c addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 63, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 37, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 29, (wrb) a0  <-- 3
      0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 37, a0  = 30, (wrb) a0  <-- 7
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 63, (wrb) a4  <-- 62
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000071c addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 62, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 38, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 30, (wrb) a0  <-- 3
      0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 38, a0  = 30, (wrb) a0  <-- 8
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 62, (wrb) a4  <-- 61
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000071c addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 61, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 39, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 31, (wrb) a0  <-- 3
      0x80000708 mul     a0, a0, a2             #; a0  = 3, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 39, a0  = 30, (wrb) a0  <-- 9
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 61, (wrb) a4  <-- 60
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000071c addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 60, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 40, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
      0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 40, a0  = 40, (wrb) a0  <-- 0
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 60, (wrb) a4  <-- 59
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000071c addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 59, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 41, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
      0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 41, a0  = 40, (wrb) a0  <-- 1
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 59, (wrb) a4  <-- 58
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000071c addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 58, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 42, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 33, (wrb) a0  <-- 4
      0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 42, a0  = 40, (wrb) a0  <-- 2
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 58, (wrb) a4  <-- 57
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000071c addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 57, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 43, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 34, (wrb) a0  <-- 4
      0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 43, a0  = 40, (wrb) a0  <-- 3
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 57, (wrb) a4  <-- 56
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000071c addi    a3, a3, 1              #; a3  = 43, (wrb) a3  <-- 44
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 56, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 44, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 35, (wrb) a0  <-- 4
      0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 44, a0  = 40, (wrb) a0  <-- 4
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 56, (wrb) a4  <-- 55
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000071c addi    a3, a3, 1              #; a3  = 44, (wrb) a3  <-- 45
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 55, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 45, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
      0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 45, a0  = 40, (wrb) a0  <-- 5
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 55, (wrb) a4  <-- 54
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000071c addi    a3, a3, 1              #; a3  = 45, (wrb) a3  <-- 46
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 54, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 46, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
      0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 46, a0  = 40, (wrb) a0  <-- 6
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 54, (wrb) a4  <-- 53
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000071c addi    a3, a3, 1              #; a3  = 46, (wrb) a3  <-- 47
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 53, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 47, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 37, (wrb) a0  <-- 4
      0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 47, a0  = 40, (wrb) a0  <-- 7
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 53, (wrb) a4  <-- 52
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000071c addi    a3, a3, 1              #; a3  = 47, (wrb) a3  <-- 48
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 52, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 48, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 38, (wrb) a0  <-- 4
      0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 48, a0  = 40, (wrb) a0  <-- 8
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 52, (wrb) a4  <-- 51
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000071c addi    a3, a3, 1              #; a3  = 48, (wrb) a3  <-- 49
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 51, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 49, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 39, (wrb) a0  <-- 4
      0x80000708 mul     a0, a0, a2             #; a0  = 4, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 49, a0  = 40, (wrb) a0  <-- 9
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 51, (wrb) a4  <-- 50
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000071c addi    a3, a3, 1              #; a3  = 49, (wrb) a3  <-- 50
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 50, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 50, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
      0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 50, a0  = 50, (wrb) a0  <-- 0
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 50, (wrb) a4  <-- 49
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000071c addi    a3, a3, 1              #; a3  = 50, (wrb) a3  <-- 51
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 49, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 51, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
      0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 51, a0  = 50, (wrb) a0  <-- 1
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 49, (wrb) a4  <-- 48
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000071c addi    a3, a3, 1              #; a3  = 51, (wrb) a3  <-- 52
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 48, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 52, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 41, (wrb) a0  <-- 5
      0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 52, a0  = 50, (wrb) a0  <-- 2
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 48, (wrb) a4  <-- 47
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000071c addi    a3, a3, 1              #; a3  = 52, (wrb) a3  <-- 53
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 47, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 53, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 42, (wrb) a0  <-- 5
      0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 53, a0  = 50, (wrb) a0  <-- 3
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 47, (wrb) a4  <-- 46
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000071c addi    a3, a3, 1              #; a3  = 53, (wrb) a3  <-- 54
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 46, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 54, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 43, (wrb) a0  <-- 5
      0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 54, a0  = 50, (wrb) a0  <-- 4
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 46, (wrb) a4  <-- 45
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000071c addi    a3, a3, 1              #; a3  = 54, (wrb) a3  <-- 55
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 45, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 55, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
      0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 55, a0  = 50, (wrb) a0  <-- 5
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 45, (wrb) a4  <-- 44
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000071c addi    a3, a3, 1              #; a3  = 55, (wrb) a3  <-- 56
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 44, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 56, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
      0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 56, a0  = 50, (wrb) a0  <-- 6
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 44, (wrb) a4  <-- 43
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000071c addi    a3, a3, 1              #; a3  = 56, (wrb) a3  <-- 57
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 43, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 57, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 45, (wrb) a0  <-- 5
      0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 57, a0  = 50, (wrb) a0  <-- 7
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 43, (wrb) a4  <-- 42
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000071c addi    a3, a3, 1              #; a3  = 57, (wrb) a3  <-- 58
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 42, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 58, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 46, (wrb) a0  <-- 5
      0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 58, a0  = 50, (wrb) a0  <-- 8
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 42, (wrb) a4  <-- 41
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000071c addi    a3, a3, 1              #; a3  = 58, (wrb) a3  <-- 59
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 41, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 59, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 47, (wrb) a0  <-- 5
      0x80000708 mul     a0, a0, a2             #; a0  = 5, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 59, a0  = 50, (wrb) a0  <-- 9
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 41, (wrb) a4  <-- 40
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000071c addi    a3, a3, 1              #; a3  = 59, (wrb) a3  <-- 60
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 40, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 60, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
      0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 60, a0  = 60, (wrb) a0  <-- 0
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 40, (wrb) a4  <-- 39
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000071c addi    a3, a3, 1              #; a3  = 60, (wrb) a3  <-- 61
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 39, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 61, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
      0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 61, a0  = 60, (wrb) a0  <-- 1
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 39, (wrb) a4  <-- 38
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000071c addi    a3, a3, 1              #; a3  = 61, (wrb) a3  <-- 62
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 38, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 62, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 49, (wrb) a0  <-- 6
      0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 62, a0  = 60, (wrb) a0  <-- 2
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 38, (wrb) a4  <-- 37
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000071c addi    a3, a3, 1              #; a3  = 62, (wrb) a3  <-- 63
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 37, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 63, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 50, (wrb) a0  <-- 6
      0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 63, a0  = 60, (wrb) a0  <-- 3
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 37, (wrb) a4  <-- 36
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000071c addi    a3, a3, 1              #; a3  = 63, (wrb) a3  <-- 64
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 36, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 64, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 51, (wrb) a0  <-- 6
      0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 64, a0  = 60, (wrb) a0  <-- 4
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 36, (wrb) a4  <-- 35
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000071c addi    a3, a3, 1              #; a3  = 64, (wrb) a3  <-- 65
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 35, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 65, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
      0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 65, a0  = 60, (wrb) a0  <-- 5
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 35, (wrb) a4  <-- 34
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000071c addi    a3, a3, 1              #; a3  = 65, (wrb) a3  <-- 66
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 34, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 66, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
      0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 66, a0  = 60, (wrb) a0  <-- 6
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 34, (wrb) a4  <-- 33
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000071c addi    a3, a3, 1              #; a3  = 66, (wrb) a3  <-- 67
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 33, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 67, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 53, (wrb) a0  <-- 6
      0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 67, a0  = 60, (wrb) a0  <-- 7
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 33, (wrb) a4  <-- 32
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000071c addi    a3, a3, 1              #; a3  = 67, (wrb) a3  <-- 68
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 32, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 68, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 54, (wrb) a0  <-- 6
      0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 68, a0  = 60, (wrb) a0  <-- 8
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 32, (wrb) a4  <-- 31
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000071c addi    a3, a3, 1              #; a3  = 68, (wrb) a3  <-- 69
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 31, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 69, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 55, (wrb) a0  <-- 6
      0x80000708 mul     a0, a0, a2             #; a0  = 6, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 69, a0  = 60, (wrb) a0  <-- 9
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 31, (wrb) a4  <-- 30
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000071c addi    a3, a3, 1              #; a3  = 69, (wrb) a3  <-- 70
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 30, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 70, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
      0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 70, a0  = 70, (wrb) a0  <-- 0
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 30, (wrb) a4  <-- 29
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000071c addi    a3, a3, 1              #; a3  = 70, (wrb) a3  <-- 71
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 29, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 71, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
      0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 71, a0  = 70, (wrb) a0  <-- 1
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 29, (wrb) a4  <-- 28
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000071c addi    a3, a3, 1              #; a3  = 71, (wrb) a3  <-- 72
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 28, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 72, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 57, (wrb) a0  <-- 7
      0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 72, a0  = 70, (wrb) a0  <-- 2
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 28, (wrb) a4  <-- 27
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000071c addi    a3, a3, 1              #; a3  = 72, (wrb) a3  <-- 73
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 27, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 73, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 58, (wrb) a0  <-- 7
      0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 73, a0  = 70, (wrb) a0  <-- 3
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 27, (wrb) a4  <-- 26
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000071c addi    a3, a3, 1              #; a3  = 73, (wrb) a3  <-- 74
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 26, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 74, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 59, (wrb) a0  <-- 7
      0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 74, a0  = 70, (wrb) a0  <-- 4
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 26, (wrb) a4  <-- 25
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000071c addi    a3, a3, 1              #; a3  = 74, (wrb) a3  <-- 75
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 25, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 75, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
      0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 75, a0  = 70, (wrb) a0  <-- 5
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 25, (wrb) a4  <-- 24
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000071c addi    a3, a3, 1              #; a3  = 75, (wrb) a3  <-- 76
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 24, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 76, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
      0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 76, a0  = 70, (wrb) a0  <-- 6
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 24, (wrb) a4  <-- 23
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000071c addi    a3, a3, 1              #; a3  = 76, (wrb) a3  <-- 77
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 23, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 77, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 61, (wrb) a0  <-- 7
      0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 77, a0  = 70, (wrb) a0  <-- 7
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 23, (wrb) a4  <-- 22
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000071c addi    a3, a3, 1              #; a3  = 77, (wrb) a3  <-- 78
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 22, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 78, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 62, (wrb) a0  <-- 7
      0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 78, a0  = 70, (wrb) a0  <-- 8
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 22, (wrb) a4  <-- 21
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000071c addi    a3, a3, 1              #; a3  = 78, (wrb) a3  <-- 79
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 21, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 79, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 63, (wrb) a0  <-- 7
      0x80000708 mul     a0, a0, a2             #; a0  = 7, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 79, a0  = 70, (wrb) a0  <-- 9
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 21, (wrb) a4  <-- 20
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000071c addi    a3, a3, 1              #; a3  = 79, (wrb) a3  <-- 80
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 20, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 80, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
      0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 80, a0  = 80, (wrb) a0  <-- 0
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 20, (wrb) a4  <-- 19
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000071c addi    a3, a3, 1              #; a3  = 80, (wrb) a3  <-- 81
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 19, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 81, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
      0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 81, a0  = 80, (wrb) a0  <-- 1
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 19, (wrb) a4  <-- 18
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000071c addi    a3, a3, 1              #; a3  = 81, (wrb) a3  <-- 82
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 18, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 82, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 65, (wrb) a0  <-- 8
      0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 82, a0  = 80, (wrb) a0  <-- 2
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 18, (wrb) a4  <-- 17
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000071c addi    a3, a3, 1              #; a3  = 82, (wrb) a3  <-- 83
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 17, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 83, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 66, (wrb) a0  <-- 8
      0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 83, a0  = 80, (wrb) a0  <-- 3
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 17, (wrb) a4  <-- 16
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000071c addi    a3, a3, 1              #; a3  = 83, (wrb) a3  <-- 84
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 16, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 84, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 67, (wrb) a0  <-- 8
      0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 84, a0  = 80, (wrb) a0  <-- 4
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 16, (wrb) a4  <-- 15
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000071c addi    a3, a3, 1              #; a3  = 84, (wrb) a3  <-- 85
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 15, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 85, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
      0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 85, a0  = 80, (wrb) a0  <-- 5
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 15, (wrb) a4  <-- 14
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000071c addi    a3, a3, 1              #; a3  = 85, (wrb) a3  <-- 86
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 14, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 86, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
      0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 86, a0  = 80, (wrb) a0  <-- 6
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 14, (wrb) a4  <-- 13
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000071c addi    a3, a3, 1              #; a3  = 86, (wrb) a3  <-- 87
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 13, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 87, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 69, (wrb) a0  <-- 8
      0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 87, a0  = 80, (wrb) a0  <-- 7
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 13, (wrb) a4  <-- 12
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000071c addi    a3, a3, 1              #; a3  = 87, (wrb) a3  <-- 88
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 12, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 88, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 70, (wrb) a0  <-- 8
      0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 88, a0  = 80, (wrb) a0  <-- 8
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 12, (wrb) a4  <-- 11
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000071c addi    a3, a3, 1              #; a3  = 88, (wrb) a3  <-- 89
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 11, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 89, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 71, (wrb) a0  <-- 8
      0x80000708 mul     a0, a0, a2             #; a0  = 8, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 89, a0  = 80, (wrb) a0  <-- 9
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 11, (wrb) a4  <-- 10
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000071c addi    a3, a3, 1              #; a3  = 89, (wrb) a3  <-- 90
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 10, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 90, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
      0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 90, a0  = 90, (wrb) a0  <-- 0
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 10, (wrb) a4  <-- 9
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000071c addi    a3, a3, 1              #; a3  = 90, (wrb) a3  <-- 91
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 9, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 91, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
      0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 91, a0  = 90, (wrb) a0  <-- 1
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 9, (wrb) a4  <-- 8
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000071c addi    a3, a3, 1              #; a3  = 91, (wrb) a3  <-- 92
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 8, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 92, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 73, (wrb) a0  <-- 9
      0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 92, a0  = 90, (wrb) a0  <-- 2
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 8, (wrb) a4  <-- 7
                                                #; (f:fpu) ft3  <-- 2.0
      0x8000071c addi    a3, a3, 1              #; a3  = 92, (wrb) a3  <-- 93
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 7, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 93, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 74, (wrb) a0  <-- 9
      0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 93, a0  = 90, (wrb) a0  <-- 3
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 7, (wrb) a4  <-- 6
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000071c addi    a3, a3, 1              #; a3  = 93, (wrb) a3  <-- 94
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 6, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 94, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 75, (wrb) a0  <-- 9
      0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 94, a0  = 90, (wrb) a0  <-- 4
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 6, (wrb) a4  <-- 5
                                                #; (f:fpu) ft3  <-- 4.0
      0x8000071c addi    a3, a3, 1              #; a3  = 94, (wrb) a3  <-- 95
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 5, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 95, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
      0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 95, a0  = 90, (wrb) a0  <-- 5
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000071c addi    a3, a3, 1              #; a3  = 95, (wrb) a3  <-- 96
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 4, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 96, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
      0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 96, a0  = 90, (wrb) a0  <-- 6
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 6.0
      0x8000071c addi    a3, a3, 1              #; a3  = 96, (wrb) a3  <-- 97
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 3, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 97, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 77, (wrb) a0  <-- 9
      0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 97, a0  = 90, (wrb) a0  <-- 7
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000071c addi    a3, a3, 1              #; a3  = 97, (wrb) a3  <-- 98
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 2, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 98, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 78, (wrb) a0  <-- 9
      0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 98, a0  = 90, (wrb) a0  <-- 8
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 8.0
      0x8000071c addi    a3, a3, 1              #; a3  = 98, (wrb) a3  <-- 99
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 1, taken, goto 0x80000700
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:37)
      0x80000700 mulhu   a0, a3, a5             #; a3  = 99, a5  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80000704 srli    a0, a0, 3              #; a0  = 79, (wrb) a0  <-- 9
      0x80000708 mul     a0, a0, a2             #; a0  = 9, a2  = 10
                                                #; (acc) a0  <-- 0x40a68533
      0x8000070c sub     a0, a3, a0             #; a3  = 99, a0  = 90, (wrb) a0  <-- 9
      0x80000710 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:37)
      0x80000718 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 9.0
      0x8000071c addi    a3, a3, 1              #; a3  = 99, (wrb) a3  <-- 100
      0x80000714 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x80000720 bnez    a4, pc - 32            #; a4  = 0, not taken
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:37)
      0x80000728 j       pc + 0x44              #; goto 0x8000076c
      0x80000724 csrrci  a1, ssr, 1             #; 
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x8000076c srli    a0, t1, 20             #; t1  = 0x00100320, (wrb) a0  <-- 1
      0x80000770 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x80000774 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x80000778 addi    a1, a1, -791           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011fce9
      0x8000077c sltu    a1, t1, a1             #; t1  = 0x00100320, a1  = 0x0011fce9, (wrb) a1  <-- 1
      0x80000780 and     a7, a0, a1             #; a0  = 1, a1  = 1, (wrb) a7  <-- 1
      0x80000784 beqz    a7, pc + 108           #; a7  = 1, not taken
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:38)
      0x80000788 li      a4, 0                  #; (wrb) a4  <-- 0
      0x8000078c li      a0, 8                  #; (wrb) a0  <-- 8
      0x80000790 li      a1, 99                 #; (wrb) a1  <-- 99
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x80000794 li      a2, 64                 #; (wrb) a2  <-- 64
      0x80000798 scfgw   a1, a2                 #; a1  = 99, a2  = 64
      0x8000079c li      a1, 192                #; (wrb) a1  <-- 192
      0x800007a0 scfgw   a0, a1                 #; a0  = 8, a1  = 192
      0x800007a4 li      a0, 32                 #; (wrb) a0  <-- 32
      0x800007a8 scfgw   zero, a0               #; a0  = 32
      0x800007ac scfgwi  t1, 896                #; t1  = 0x00100320
      0x800007b4 li      a5, 100                #; (wrb) a5  <-- 100
      0x800007b0 csrrsi  a0, ssr, 1             #; 
      0x800007b8 lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
      0x800007bc addi    a2, a0, -819           #; a0  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
      0x800007c0 li      a3, 10                 #; (wrb) a3  <-- 10
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 0, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
      0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
      0x800007d0 sub     a0, a4, a0             #; a4  = 0, a0  = 0, (wrb) a0  <-- 0
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 100, (wrb) a5  <-- 99
                                                #; (f:fpu) ft3  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007e0 addi    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 1
      0x800007e4 bnez    a5, pc - 32            #; a5  = 99, taken, goto 0x800007c4
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 1, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
      0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 1, a0  = 0, (wrb) a0  <-- 1
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 99, (wrb) a5  <-- 98
                                                #; (f:fpu) ft3  <-- 1.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 98, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 2, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 1, (wrb) a0  <-- 0
      0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 2, a0  = 0, (wrb) a0  <-- 2
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 98, (wrb) a5  <-- 97
                                                #; (f:fpu) ft3  <-- 2.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 97, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 3, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 2, (wrb) a0  <-- 0
      0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 3, a0  = 0, (wrb) a0  <-- 3
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 97, (wrb) a5  <-- 96
                                                #; (f:fpu) ft3  <-- 3.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 96, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 4, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 3, (wrb) a0  <-- 0
      0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 4, a0  = 0, (wrb) a0  <-- 4
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 96, (wrb) a5  <-- 95
                                                #; (f:fpu) ft3  <-- 4.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 95, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 5, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
      0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 5, a0  = 0, (wrb) a0  <-- 5
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 95, (wrb) a5  <-- 94
                                                #; (f:fpu) ft3  <-- 5.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 94, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 6, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 4, (wrb) a0  <-- 0
      0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 6, a0  = 0, (wrb) a0  <-- 6
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 94, (wrb) a5  <-- 93
                                                #; (f:fpu) ft3  <-- 6.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 93, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 7, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
      0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 7, a0  = 0, (wrb) a0  <-- 7
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 93, (wrb) a5  <-- 92
                                                #; (f:fpu) ft3  <-- 7.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 92, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 8, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 6, (wrb) a0  <-- 0
      0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 8, a0  = 0, (wrb) a0  <-- 8
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 92, (wrb) a5  <-- 91
                                                #; (f:fpu) ft3  <-- 8.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 91, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 9, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 7, (wrb) a0  <-- 0
      0x800007cc mul     a0, a0, a3             #; a0  = 0, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 9, a0  = 0, (wrb) a0  <-- 9
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 91, (wrb) a5  <-- 90
                                                #; (f:fpu) ft3  <-- 9.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 90, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 10, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
      0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 10, a0  = 10, (wrb) a0  <-- 0
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 90, (wrb) a5  <-- 89
                                                #; (f:fpu) ft3  <-- 0.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 89, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 11, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 8, (wrb) a0  <-- 1
      0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 11, a0  = 10, (wrb) a0  <-- 1
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 89, (wrb) a5  <-- 88
                                                #; (f:fpu) ft3  <-- 1.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 88, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 12, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 9, (wrb) a0  <-- 1
      0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 12, a0  = 10, (wrb) a0  <-- 2
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 88, (wrb) a5  <-- 87
                                                #; (f:fpu) ft3  <-- 2.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 87, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 13, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 10, (wrb) a0  <-- 1
      0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 13, a0  = 10, (wrb) a0  <-- 3
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 87, (wrb) a5  <-- 86
                                                #; (f:fpu) ft3  <-- 3.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 86, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 14, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 11, (wrb) a0  <-- 1
      0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 14, a0  = 10, (wrb) a0  <-- 4
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 86, (wrb) a5  <-- 85
                                                #; (f:fpu) ft3  <-- 4.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 85, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 15, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
      0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 15, a0  = 10, (wrb) a0  <-- 5
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 85, (wrb) a5  <-- 84
                                                #; (f:fpu) ft3  <-- 5.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 84, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 16, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 12, (wrb) a0  <-- 1
      0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 16, a0  = 10, (wrb) a0  <-- 6
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 84, (wrb) a5  <-- 83
                                                #; (f:fpu) ft3  <-- 6.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 83, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 17, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 13, (wrb) a0  <-- 1
      0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 17, a0  = 10, (wrb) a0  <-- 7
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 83, (wrb) a5  <-- 82
                                                #; (f:fpu) ft3  <-- 7.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 82, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 18, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 14, (wrb) a0  <-- 1
      0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 18, a0  = 10, (wrb) a0  <-- 8
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 82, (wrb) a5  <-- 81
                                                #; (f:fpu) ft3  <-- 8.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 81, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 19, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 15, (wrb) a0  <-- 1
      0x800007cc mul     a0, a0, a3             #; a0  = 1, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 19, a0  = 10, (wrb) a0  <-- 9
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 81, (wrb) a5  <-- 80
                                                #; (f:fpu) ft3  <-- 9.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 80, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 20, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
      0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 20, a0  = 20, (wrb) a0  <-- 0
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 80, (wrb) a5  <-- 79
                                                #; (f:fpu) ft3  <-- 0.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 79, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 21, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 16, (wrb) a0  <-- 2
      0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 21, a0  = 20, (wrb) a0  <-- 1
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 79, (wrb) a5  <-- 78
                                                #; (f:fpu) ft3  <-- 1.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 78, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 22, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 17, (wrb) a0  <-- 2
      0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 22, a0  = 20, (wrb) a0  <-- 2
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 78, (wrb) a5  <-- 77
                                                #; (f:fpu) ft3  <-- 2.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 77, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 23, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 18, (wrb) a0  <-- 2
      0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 23, a0  = 20, (wrb) a0  <-- 3
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 77, (wrb) a5  <-- 76
                                                #; (f:fpu) ft3  <-- 3.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 76, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 24, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 19, (wrb) a0  <-- 2
      0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 24, a0  = 20, (wrb) a0  <-- 4
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 76, (wrb) a5  <-- 75
                                                #; (f:fpu) ft3  <-- 4.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 75, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 25, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
      0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 25, a0  = 20, (wrb) a0  <-- 5
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 75, (wrb) a5  <-- 74
                                                #; (f:fpu) ft3  <-- 5.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 25, (wrb) a4  <-- 26
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 74, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 26, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 20, (wrb) a0  <-- 2
      0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 26, a0  = 20, (wrb) a0  <-- 6
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 74, (wrb) a5  <-- 73
                                                #; (f:fpu) ft3  <-- 6.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 26, (wrb) a4  <-- 27
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 73, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 27, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 21, (wrb) a0  <-- 2
      0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 27, a0  = 20, (wrb) a0  <-- 7
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 73, (wrb) a5  <-- 72
                                                #; (f:fpu) ft3  <-- 7.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 27, (wrb) a4  <-- 28
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 72, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 28, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 22, (wrb) a0  <-- 2
      0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 28, a0  = 20, (wrb) a0  <-- 8
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 72, (wrb) a5  <-- 71
                                                #; (f:fpu) ft3  <-- 8.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 28, (wrb) a4  <-- 29
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 71, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 29, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 23, (wrb) a0  <-- 2
      0x800007cc mul     a0, a0, a3             #; a0  = 2, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 29, a0  = 20, (wrb) a0  <-- 9
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 71, (wrb) a5  <-- 70
                                                #; (f:fpu) ft3  <-- 9.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 29, (wrb) a4  <-- 30
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 70, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 30, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
      0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 30, a0  = 30, (wrb) a0  <-- 0
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 70, (wrb) a5  <-- 69
                                                #; (f:fpu) ft3  <-- 0.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 30, (wrb) a4  <-- 31
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 69, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 31, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 24, (wrb) a0  <-- 3
      0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 31, a0  = 30, (wrb) a0  <-- 1
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 69, (wrb) a5  <-- 68
                                                #; (f:fpu) ft3  <-- 1.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 31, (wrb) a4  <-- 32
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 68, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 32, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 25, (wrb) a0  <-- 3
      0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 32, a0  = 30, (wrb) a0  <-- 2
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 68, (wrb) a5  <-- 67
                                                #; (f:fpu) ft3  <-- 2.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 32, (wrb) a4  <-- 33
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 67, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 33, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 26, (wrb) a0  <-- 3
      0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 33, a0  = 30, (wrb) a0  <-- 3
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 67, (wrb) a5  <-- 66
                                                #; (f:fpu) ft3  <-- 3.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 33, (wrb) a4  <-- 34
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 66, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 34, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 27, (wrb) a0  <-- 3
      0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 34, a0  = 30, (wrb) a0  <-- 4
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 66, (wrb) a5  <-- 65
                                                #; (f:fpu) ft3  <-- 4.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 34, (wrb) a4  <-- 35
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 65, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 35, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
      0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 35, a0  = 30, (wrb) a0  <-- 5
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 65, (wrb) a5  <-- 64
                                                #; (f:fpu) ft3  <-- 5.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 35, (wrb) a4  <-- 36
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 64, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 36, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 28, (wrb) a0  <-- 3
      0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 36, a0  = 30, (wrb) a0  <-- 6
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 64, (wrb) a5  <-- 63
                                                #; (f:fpu) ft3  <-- 6.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 36, (wrb) a4  <-- 37
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 63, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 37, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 29, (wrb) a0  <-- 3
      0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 37, a0  = 30, (wrb) a0  <-- 7
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 63, (wrb) a5  <-- 62
                                                #; (f:fpu) ft3  <-- 7.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 37, (wrb) a4  <-- 38
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 62, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 38, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 30, (wrb) a0  <-- 3
      0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 38, a0  = 30, (wrb) a0  <-- 8
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 62, (wrb) a5  <-- 61
                                                #; (f:fpu) ft3  <-- 8.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 38, (wrb) a4  <-- 39
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 61, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 39, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 31, (wrb) a0  <-- 3
      0x800007cc mul     a0, a0, a3             #; a0  = 3, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 39, a0  = 30, (wrb) a0  <-- 9
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 61, (wrb) a5  <-- 60
                                                #; (f:fpu) ft3  <-- 9.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 39, (wrb) a4  <-- 40
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 60, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 40, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
      0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 40, a0  = 40, (wrb) a0  <-- 0
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 60, (wrb) a5  <-- 59
                                                #; (f:fpu) ft3  <-- 0.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 40, (wrb) a4  <-- 41
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 59, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 41, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 32, (wrb) a0  <-- 4
      0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 41, a0  = 40, (wrb) a0  <-- 1
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 59, (wrb) a5  <-- 58
                                                #; (f:fpu) ft3  <-- 1.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 41, (wrb) a4  <-- 42
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 58, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 42, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 33, (wrb) a0  <-- 4
      0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 42, a0  = 40, (wrb) a0  <-- 2
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 58, (wrb) a5  <-- 57
                                                #; (f:fpu) ft3  <-- 2.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 42, (wrb) a4  <-- 43
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 57, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 43, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 34, (wrb) a0  <-- 4
      0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 43, a0  = 40, (wrb) a0  <-- 3
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 57, (wrb) a5  <-- 56
                                                #; (f:fpu) ft3  <-- 3.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 43, (wrb) a4  <-- 44
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 56, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 44, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 35, (wrb) a0  <-- 4
      0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 44, a0  = 40, (wrb) a0  <-- 4
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 56, (wrb) a5  <-- 55
                                                #; (f:fpu) ft3  <-- 4.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 44, (wrb) a4  <-- 45
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 55, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 45, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
      0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 45, a0  = 40, (wrb) a0  <-- 5
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 55, (wrb) a5  <-- 54
                                                #; (f:fpu) ft3  <-- 5.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 45, (wrb) a4  <-- 46
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 54, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 46, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 36, (wrb) a0  <-- 4
      0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 46, a0  = 40, (wrb) a0  <-- 6
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 54, (wrb) a5  <-- 53
                                                #; (f:fpu) ft3  <-- 6.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 46, (wrb) a4  <-- 47
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 53, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 47, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 37, (wrb) a0  <-- 4
      0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 47, a0  = 40, (wrb) a0  <-- 7
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 53, (wrb) a5  <-- 52
                                                #; (f:fpu) ft3  <-- 7.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 47, (wrb) a4  <-- 48
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 52, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 48, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 38, (wrb) a0  <-- 4
      0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 48, a0  = 40, (wrb) a0  <-- 8
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 52, (wrb) a5  <-- 51
                                                #; (f:fpu) ft3  <-- 8.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 48, (wrb) a4  <-- 49
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 51, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 49, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 39, (wrb) a0  <-- 4
      0x800007cc mul     a0, a0, a3             #; a0  = 4, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 49, a0  = 40, (wrb) a0  <-- 9
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 51, (wrb) a5  <-- 50
                                                #; (f:fpu) ft3  <-- 9.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 49, (wrb) a4  <-- 50
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 50, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 50, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
      0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 50, a0  = 50, (wrb) a0  <-- 0
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 50, (wrb) a5  <-- 49
                                                #; (f:fpu) ft3  <-- 0.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 50, (wrb) a4  <-- 51
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 49, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 51, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 40, (wrb) a0  <-- 5
      0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 51, a0  = 50, (wrb) a0  <-- 1
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 49, (wrb) a5  <-- 48
                                                #; (f:fpu) ft3  <-- 1.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 51, (wrb) a4  <-- 52
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 48, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 52, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 41, (wrb) a0  <-- 5
      0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 52, a0  = 50, (wrb) a0  <-- 2
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 48, (wrb) a5  <-- 47
                                                #; (f:fpu) ft3  <-- 2.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 52, (wrb) a4  <-- 53
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 47, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 53, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 42, (wrb) a0  <-- 5
      0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 53, a0  = 50, (wrb) a0  <-- 3
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 47, (wrb) a5  <-- 46
                                                #; (f:fpu) ft3  <-- 3.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 53, (wrb) a4  <-- 54
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 46, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 54, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 43, (wrb) a0  <-- 5
      0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 54, a0  = 50, (wrb) a0  <-- 4
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 46, (wrb) a5  <-- 45
                                                #; (f:fpu) ft3  <-- 4.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 54, (wrb) a4  <-- 55
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 45, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 55, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
      0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 55, a0  = 50, (wrb) a0  <-- 5
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 45, (wrb) a5  <-- 44
                                                #; (f:fpu) ft3  <-- 5.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 55, (wrb) a4  <-- 56
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 44, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 56, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 44, (wrb) a0  <-- 5
      0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 56, a0  = 50, (wrb) a0  <-- 6
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 44, (wrb) a5  <-- 43
                                                #; (f:fpu) ft3  <-- 6.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 56, (wrb) a4  <-- 57
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 43, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 57, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 45, (wrb) a0  <-- 5
      0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 57, a0  = 50, (wrb) a0  <-- 7
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 43, (wrb) a5  <-- 42
                                                #; (f:fpu) ft3  <-- 7.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 57, (wrb) a4  <-- 58
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 42, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 58, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 46, (wrb) a0  <-- 5
      0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 58, a0  = 50, (wrb) a0  <-- 8
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 42, (wrb) a5  <-- 41
                                                #; (f:fpu) ft3  <-- 8.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 58, (wrb) a4  <-- 59
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 41, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 59, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 47, (wrb) a0  <-- 5
      0x800007cc mul     a0, a0, a3             #; a0  = 5, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 59, a0  = 50, (wrb) a0  <-- 9
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 41, (wrb) a5  <-- 40
                                                #; (f:fpu) ft3  <-- 9.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 59, (wrb) a4  <-- 60
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 40, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 60, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
      0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 60, a0  = 60, (wrb) a0  <-- 0
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 40, (wrb) a5  <-- 39
                                                #; (f:fpu) ft3  <-- 0.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 60, (wrb) a4  <-- 61
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 39, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 61, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 48, (wrb) a0  <-- 6
      0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 61, a0  = 60, (wrb) a0  <-- 1
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 39, (wrb) a5  <-- 38
                                                #; (f:fpu) ft3  <-- 1.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 61, (wrb) a4  <-- 62
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 38, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 62, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 49, (wrb) a0  <-- 6
      0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 62, a0  = 60, (wrb) a0  <-- 2
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 38, (wrb) a5  <-- 37
                                                #; (f:fpu) ft3  <-- 2.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 62, (wrb) a4  <-- 63
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 37, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 63, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 50, (wrb) a0  <-- 6
      0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 63, a0  = 60, (wrb) a0  <-- 3
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 37, (wrb) a5  <-- 36
                                                #; (f:fpu) ft3  <-- 3.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 63, (wrb) a4  <-- 64
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 36, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 64, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 51, (wrb) a0  <-- 6
      0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 64, a0  = 60, (wrb) a0  <-- 4
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 36, (wrb) a5  <-- 35
                                                #; (f:fpu) ft3  <-- 4.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 64, (wrb) a4  <-- 65
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 35, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 65, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
      0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 65, a0  = 60, (wrb) a0  <-- 5
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 35, (wrb) a5  <-- 34
                                                #; (f:fpu) ft3  <-- 5.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 65, (wrb) a4  <-- 66
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 34, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 66, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 52, (wrb) a0  <-- 6
      0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 66, a0  = 60, (wrb) a0  <-- 6
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 34, (wrb) a5  <-- 33
                                                #; (f:fpu) ft3  <-- 6.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 66, (wrb) a4  <-- 67
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 33, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 67, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 53, (wrb) a0  <-- 6
      0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 67, a0  = 60, (wrb) a0  <-- 7
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 33, (wrb) a5  <-- 32
                                                #; (f:fpu) ft3  <-- 7.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 67, (wrb) a4  <-- 68
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 32, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 68, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 54, (wrb) a0  <-- 6
      0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 68, a0  = 60, (wrb) a0  <-- 8
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 32, (wrb) a5  <-- 31
                                                #; (f:fpu) ft3  <-- 8.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 68, (wrb) a4  <-- 69
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 31, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 69, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 55, (wrb) a0  <-- 6
      0x800007cc mul     a0, a0, a3             #; a0  = 6, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 69, a0  = 60, (wrb) a0  <-- 9
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 31, (wrb) a5  <-- 30
                                                #; (f:fpu) ft3  <-- 9.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 69, (wrb) a4  <-- 70
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 30, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 70, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
      0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 70, a0  = 70, (wrb) a0  <-- 0
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 30, (wrb) a5  <-- 29
                                                #; (f:fpu) ft3  <-- 0.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 70, (wrb) a4  <-- 71
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 29, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 71, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
      0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 71, a0  = 70, (wrb) a0  <-- 1
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 29, (wrb) a5  <-- 28
                                                #; (f:fpu) ft3  <-- 1.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 71, (wrb) a4  <-- 72
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 28, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 72, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 57, (wrb) a0  <-- 7
      0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 72, a0  = 70, (wrb) a0  <-- 2
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 28, (wrb) a5  <-- 27
                                                #; (f:fpu) ft3  <-- 2.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 72, (wrb) a4  <-- 73
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 27, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 73, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 58, (wrb) a0  <-- 7
      0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 73, a0  = 70, (wrb) a0  <-- 3
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 27, (wrb) a5  <-- 26
                                                #; (f:fpu) ft3  <-- 3.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 73, (wrb) a4  <-- 74
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 26, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 74, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 59, (wrb) a0  <-- 7
      0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 74, a0  = 70, (wrb) a0  <-- 4
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 26, (wrb) a5  <-- 25
                                                #; (f:fpu) ft3  <-- 4.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 74, (wrb) a4  <-- 75
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 25, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 75, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
      0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 75, a0  = 70, (wrb) a0  <-- 5
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 25, (wrb) a5  <-- 24
                                                #; (f:fpu) ft3  <-- 5.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 75, (wrb) a4  <-- 76
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 24, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 76, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 60, (wrb) a0  <-- 7
      0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 76, a0  = 70, (wrb) a0  <-- 6
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 24, (wrb) a5  <-- 23
                                                #; (f:fpu) ft3  <-- 6.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 76, (wrb) a4  <-- 77
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 23, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 77, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 61, (wrb) a0  <-- 7
      0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 77, a0  = 70, (wrb) a0  <-- 7
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 23, (wrb) a5  <-- 22
                                                #; (f:fpu) ft3  <-- 7.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 77, (wrb) a4  <-- 78
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 22, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 78, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 62, (wrb) a0  <-- 7
      0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 78, a0  = 70, (wrb) a0  <-- 8
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 22, (wrb) a5  <-- 21
                                                #; (f:fpu) ft3  <-- 8.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 78, (wrb) a4  <-- 79
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 21, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 79, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 63, (wrb) a0  <-- 7
      0x800007cc mul     a0, a0, a3             #; a0  = 7, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 79, a0  = 70, (wrb) a0  <-- 9
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 21, (wrb) a5  <-- 20
                                                #; (f:fpu) ft3  <-- 9.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 79, (wrb) a4  <-- 80
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 20, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 80, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
      0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 80, a0  = 80, (wrb) a0  <-- 0
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 20, (wrb) a5  <-- 19
                                                #; (f:fpu) ft3  <-- 0.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 80, (wrb) a4  <-- 81
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 19, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 81, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 64, (wrb) a0  <-- 8
      0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 81, a0  = 80, (wrb) a0  <-- 1
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 19, (wrb) a5  <-- 18
                                                #; (f:fpu) ft3  <-- 1.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 81, (wrb) a4  <-- 82
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 18, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 82, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 65, (wrb) a0  <-- 8
      0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 82, a0  = 80, (wrb) a0  <-- 2
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 18, (wrb) a5  <-- 17
                                                #; (f:fpu) ft3  <-- 2.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 82, (wrb) a4  <-- 83
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 17, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 83, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 66, (wrb) a0  <-- 8
      0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 83, a0  = 80, (wrb) a0  <-- 3
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 17, (wrb) a5  <-- 16
                                                #; (f:fpu) ft3  <-- 3.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 83, (wrb) a4  <-- 84
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 16, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 84, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 67, (wrb) a0  <-- 8
      0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 84, a0  = 80, (wrb) a0  <-- 4
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 16, (wrb) a5  <-- 15
                                                #; (f:fpu) ft3  <-- 4.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 84, (wrb) a4  <-- 85
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 15, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 85, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
      0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 85, a0  = 80, (wrb) a0  <-- 5
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 15, (wrb) a5  <-- 14
                                                #; (f:fpu) ft3  <-- 5.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 85, (wrb) a4  <-- 86
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 14, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 86, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 68, (wrb) a0  <-- 8
      0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 86, a0  = 80, (wrb) a0  <-- 6
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 14, (wrb) a5  <-- 13
                                                #; (f:fpu) ft3  <-- 6.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 86, (wrb) a4  <-- 87
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 13, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 87, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 69, (wrb) a0  <-- 8
      0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 87, a0  = 80, (wrb) a0  <-- 7
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 13, (wrb) a5  <-- 12
                                                #; (f:fpu) ft3  <-- 7.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 87, (wrb) a4  <-- 88
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 12, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 88, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 70, (wrb) a0  <-- 8
      0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 88, a0  = 80, (wrb) a0  <-- 8
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 12, (wrb) a5  <-- 11
                                                #; (f:fpu) ft3  <-- 8.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 88, (wrb) a4  <-- 89
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 11, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 89, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 71, (wrb) a0  <-- 8
      0x800007cc mul     a0, a0, a3             #; a0  = 8, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 89, a0  = 80, (wrb) a0  <-- 9
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 11, (wrb) a5  <-- 10
                                                #; (f:fpu) ft3  <-- 9.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 89, (wrb) a4  <-- 90
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 10, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 90, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
      0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 90, a0  = 90, (wrb) a0  <-- 0
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 0
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 10, (wrb) a5  <-- 9
                                                #; (f:fpu) ft3  <-- 0.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 90, (wrb) a4  <-- 91
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 9, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 91, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 72, (wrb) a0  <-- 9
      0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 91, a0  = 90, (wrb) a0  <-- 1
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 1
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 9, (wrb) a5  <-- 8
                                                #; (f:fpu) ft3  <-- 1.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 91, (wrb) a4  <-- 92
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 8, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 92, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 73, (wrb) a0  <-- 9
      0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 92, a0  = 90, (wrb) a0  <-- 2
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 2
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 8, (wrb) a5  <-- 7
                                                #; (f:fpu) ft3  <-- 2.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 92, (wrb) a4  <-- 93
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 7, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 93, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 74, (wrb) a0  <-- 9
      0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 93, a0  = 90, (wrb) a0  <-- 3
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 3
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 7, (wrb) a5  <-- 6
                                                #; (f:fpu) ft3  <-- 3.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 93, (wrb) a4  <-- 94
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 6, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 94, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 75, (wrb) a0  <-- 9
      0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 94, a0  = 90, (wrb) a0  <-- 4
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 4
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 6, (wrb) a5  <-- 5
                                                #; (f:fpu) ft3  <-- 4.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 94, (wrb) a4  <-- 95
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 5, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 95, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
      0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 95, a0  = 90, (wrb) a0  <-- 5
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 5
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 5, (wrb) a5  <-- 4
                                                #; (f:fpu) ft3  <-- 5.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 95, (wrb) a4  <-- 96
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 4, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 96, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 76, (wrb) a0  <-- 9
      0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 96, a0  = 90, (wrb) a0  <-- 6
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 6
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 4, (wrb) a5  <-- 3
                                                #; (f:fpu) ft3  <-- 6.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 96, (wrb) a4  <-- 97
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 3, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 97, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 77, (wrb) a0  <-- 9
      0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 97, a0  = 90, (wrb) a0  <-- 7
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 7
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 3, (wrb) a5  <-- 2
                                                #; (f:fpu) ft3  <-- 7.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 97, (wrb) a4  <-- 98
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 2, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 98, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 78, (wrb) a0  <-- 9
      0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 98, a0  = 90, (wrb) a0  <-- 8
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 8
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 2, (wrb) a5  <-- 1
                                                #; (f:fpu) ft3  <-- 8.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 98, (wrb) a4  <-- 99
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 1, taken, goto 0x800007c4
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:25)
;  in main (bench_sp.c:38)
      0x800007c4 mulhu   a0, a4, a2             #; a4  = 99, a2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800007c8 srli    a0, a0, 3              #; a0  = 79, (wrb) a0  <-- 9
      0x800007cc mul     a0, a0, a3             #; a0  = 9, a3  = 10
                                                #; (acc) a0  <-- 0x40a70533
      0x800007d0 sub     a0, a4, a0             #; a4  = 99, a0  = 90, (wrb) a0  <-- 9
      0x800007d4 fcvt.d.wu ft3, a0              #; ac1  = 9
; init_data (bench_sp.c:24)
;  in main (bench_sp.c:38)
      0x800007dc addi    a5, a5, -1             #; a5  = 1, (wrb) a5  <-- 0
                                                #; (f:fpu) ft3  <-- 9.0
      0x800007e0 addi    a4, a4, 1              #; a4  = 99, (wrb) a4  <-- 100
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
      0x800007e4 bnez    a5, pc - 32            #; a5  = 0, not taken
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:38)
      0x800007ec j       pc + 0x44              #; goto 0x80000830
      0x800007e8 csrrci  a0, ssr, 1             #; 
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000830 and     a0, a6, a7             #; a6  = 1, a7  = 1, (wrb) a0  <-- 1
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:40)
      0x80000834 csrr    a2, mcycle             #; mcycle = 4827, (wrb) a2  <-- 4827
; benchmark_get_cycle (benchmark.c:0)
;  in main (bench_sp.c:40)
      0x80000838 beqz    a0, pc + 104           #; a0  = 1, not taken
; main (benchmark.c:0)
      0x8000083c li      a0, 8                  #; (wrb) a0  <-- 8
      0x80000840 li      a1, 99                 #; (wrb) a1  <-- 99
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000844 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000848 li      a4, 192                #; (wrb) a4  <-- 192
      0x8000084c scfgw   a1, a3                 #; a1  = 99, a3  = 64
      0x80000850 scfgw   a0, a4                 #; a0  = 8, a4  = 192
      0x80000854 li      a3, 32                 #; (wrb) a3  <-- 32
      0x80000858 scfgw   zero, a3               #; a3  = 32
      0x8000085c scfgwi  t0, 768                #; t0  = 0x00100000
      0x80000860 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80000864 addi    a4, a3, 64             #; a3  = 1, (wrb) a4  <-- 65
      0x80000868 addi    a5, a3, 192            #; a3  = 1, (wrb) a5  <-- 193
      0x8000086c scfgw   a1, a4                 #; a1  = 99, a4  = 65
      0x80000870 scfgw   a0, a5                 #; a0  = 8, a5  = 193
      0x80000874 addi    a0, a3, 32             #; a3  = 1, (wrb) a0  <-- 33
      0x80000878 scfgw   zero, a0               #; a0  = 33
      0x8000087c scfgwi  t1, 769                #; t1  = 0x00100320
      0x80000880 csrrsi  a0, ssr, 1             #; 
      0x80000888 li      a0, 100                #; (wrb) a0  <-- 100
      0x80000884 fcvt.d.w fs0, zero             #; ac1  = 0
      0x8000088c addi    a0, a0, -1             #; a0  = 100, (wrb) a0  <-- 99
                                                #; (f:fpu) fs0  <-- 0.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 99, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 99, (wrb) a0  <-- 98
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 0.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 98, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 98, (wrb) a0  <-- 97
                                                #; (f:fpu) fs0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 0.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 97, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 97, (wrb) a0  <-- 96
                                                #; (f:fpu) fs0  <-- 1.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 96, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1.0
      0x8000088c addi    a0, a0, -1             #; a0  = 96, (wrb) a0  <-- 95
      0x80000894 bnez    a0, pc - 8             #; a0  = 95, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 5.0
      0x8000088c addi    a0, a0, -1             #; a0  = 95, (wrb) a0  <-- 94
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 5.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 94, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 94, (wrb) a0  <-- 93
                                                #; (f:fpu) fs0  <-- 14.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 14.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 93, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 93, (wrb) a0  <-- 92
                                                #; (f:fpu) fs0  <-- 30.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 92, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 30.0
      0x8000088c addi    a0, a0, -1             #; a0  = 92, (wrb) a0  <-- 91
      0x80000894 bnez    a0, pc - 8             #; a0  = 91, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 55.0
      0x8000088c addi    a0, a0, -1             #; a0  = 91, (wrb) a0  <-- 90
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 55.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 90, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 90, (wrb) a0  <-- 89
                                                #; (f:fpu) fs0  <-- 91.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 91.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 89, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 89, (wrb) a0  <-- 88
                                                #; (f:fpu) fs0  <-- 140.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 88, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 140.0
      0x8000088c addi    a0, a0, -1             #; a0  = 88, (wrb) a0  <-- 87
      0x80000894 bnez    a0, pc - 8             #; a0  = 87, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 204.0
      0x8000088c addi    a0, a0, -1             #; a0  = 87, (wrb) a0  <-- 86
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 204.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 86, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 86, (wrb) a0  <-- 85
                                                #; (f:fpu) fs0  <-- 285.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 285.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 85, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 85, (wrb) a0  <-- 84
                                                #; (f:fpu) fs0  <-- 285.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 84, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 285.0
      0x8000088c addi    a0, a0, -1             #; a0  = 84, (wrb) a0  <-- 83
      0x80000894 bnez    a0, pc - 8             #; a0  = 83, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 286.0
      0x8000088c addi    a0, a0, -1             #; a0  = 83, (wrb) a0  <-- 82
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 286.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 82, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 82, (wrb) a0  <-- 81
                                                #; (f:fpu) fs0  <-- 290.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 290.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 81, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 81, (wrb) a0  <-- 80
                                                #; (f:fpu) fs0  <-- 299.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 80, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 299.0
      0x8000088c addi    a0, a0, -1             #; a0  = 80, (wrb) a0  <-- 79
      0x80000894 bnez    a0, pc - 8             #; a0  = 79, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 315.0
      0x8000088c addi    a0, a0, -1             #; a0  = 79, (wrb) a0  <-- 78
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 315.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 78, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 78, (wrb) a0  <-- 77
                                                #; (f:fpu) fs0  <-- 340.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 340.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 77, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 77, (wrb) a0  <-- 76
                                                #; (f:fpu) fs0  <-- 376.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 76, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 376.0
      0x8000088c addi    a0, a0, -1             #; a0  = 76, (wrb) a0  <-- 75
      0x80000894 bnez    a0, pc - 8             #; a0  = 75, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 425.0
      0x8000088c addi    a0, a0, -1             #; a0  = 75, (wrb) a0  <-- 74
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 425.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 74, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 74, (wrb) a0  <-- 73
                                                #; (f:fpu) fs0  <-- 489.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 489.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 73, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 73, (wrb) a0  <-- 72
                                                #; (f:fpu) fs0  <-- 570.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 72, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 570.0
      0x8000088c addi    a0, a0, -1             #; a0  = 72, (wrb) a0  <-- 71
      0x80000894 bnez    a0, pc - 8             #; a0  = 71, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 570.0
      0x8000088c addi    a0, a0, -1             #; a0  = 71, (wrb) a0  <-- 70
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 570.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 70, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 70, (wrb) a0  <-- 69
                                                #; (f:fpu) fs0  <-- 571.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 571.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 69, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 69, (wrb) a0  <-- 68
                                                #; (f:fpu) fs0  <-- 575.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 68, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 575.0
      0x8000088c addi    a0, a0, -1             #; a0  = 68, (wrb) a0  <-- 67
      0x80000894 bnez    a0, pc - 8             #; a0  = 67, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 584.0
      0x8000088c addi    a0, a0, -1             #; a0  = 67, (wrb) a0  <-- 66
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 584.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 66, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 66, (wrb) a0  <-- 65
                                                #; (f:fpu) fs0  <-- 600.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 600.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 65, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 65, (wrb) a0  <-- 64
                                                #; (f:fpu) fs0  <-- 625.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 64, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 625.0
      0x8000088c addi    a0, a0, -1             #; a0  = 64, (wrb) a0  <-- 63
      0x80000894 bnez    a0, pc - 8             #; a0  = 63, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 661.0
      0x8000088c addi    a0, a0, -1             #; a0  = 63, (wrb) a0  <-- 62
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 661.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 62, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 62, (wrb) a0  <-- 61
                                                #; (f:fpu) fs0  <-- 710.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 710.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 61, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 61, (wrb) a0  <-- 60
                                                #; (f:fpu) fs0  <-- 774.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 60, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 774.0
      0x8000088c addi    a0, a0, -1             #; a0  = 60, (wrb) a0  <-- 59
      0x80000894 bnez    a0, pc - 8             #; a0  = 59, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 855.0
      0x8000088c addi    a0, a0, -1             #; a0  = 59, (wrb) a0  <-- 58
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 855.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 58, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 58, (wrb) a0  <-- 57
                                                #; (f:fpu) fs0  <-- 855.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 855.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 57, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 57, (wrb) a0  <-- 56
                                                #; (f:fpu) fs0  <-- 856.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 56, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 856.0
      0x8000088c addi    a0, a0, -1             #; a0  = 56, (wrb) a0  <-- 55
      0x80000894 bnez    a0, pc - 8             #; a0  = 55, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 860.0
      0x8000088c addi    a0, a0, -1             #; a0  = 55, (wrb) a0  <-- 54
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 860.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 54, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 54, (wrb) a0  <-- 53
                                                #; (f:fpu) fs0  <-- 869.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 869.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 53, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 53, (wrb) a0  <-- 52
                                                #; (f:fpu) fs0  <-- 885.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 52, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 885.0
      0x8000088c addi    a0, a0, -1             #; a0  = 52, (wrb) a0  <-- 51
      0x80000894 bnez    a0, pc - 8             #; a0  = 51, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 910.0
      0x8000088c addi    a0, a0, -1             #; a0  = 51, (wrb) a0  <-- 50
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 910.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 50, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 50, (wrb) a0  <-- 49
                                                #; (f:fpu) fs0  <-- 946.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 946.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 49, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 49, (wrb) a0  <-- 48
                                                #; (f:fpu) fs0  <-- 995.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 48, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 995.0
      0x8000088c addi    a0, a0, -1             #; a0  = 48, (wrb) a0  <-- 47
      0x80000894 bnez    a0, pc - 8             #; a0  = 47, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1059.0
      0x8000088c addi    a0, a0, -1             #; a0  = 47, (wrb) a0  <-- 46
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1059.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 46, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 46, (wrb) a0  <-- 45
                                                #; (f:fpu) fs0  <-- 1140.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1140.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 45, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 45, (wrb) a0  <-- 44
                                                #; (f:fpu) fs0  <-- 1140.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 44, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1140.0
      0x8000088c addi    a0, a0, -1             #; a0  = 44, (wrb) a0  <-- 43
      0x80000894 bnez    a0, pc - 8             #; a0  = 43, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1141.0
      0x8000088c addi    a0, a0, -1             #; a0  = 43, (wrb) a0  <-- 42
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1141.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 42, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 42, (wrb) a0  <-- 41
                                                #; (f:fpu) fs0  <-- 1145.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1145.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 41, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 41, (wrb) a0  <-- 40
                                                #; (f:fpu) fs0  <-- 1154.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 40, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1154.0
      0x8000088c addi    a0, a0, -1             #; a0  = 40, (wrb) a0  <-- 39
      0x80000894 bnez    a0, pc - 8             #; a0  = 39, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1170.0
      0x8000088c addi    a0, a0, -1             #; a0  = 39, (wrb) a0  <-- 38
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1170.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 38, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 38, (wrb) a0  <-- 37
                                                #; (f:fpu) fs0  <-- 1195.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1195.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 37, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 37, (wrb) a0  <-- 36
                                                #; (f:fpu) fs0  <-- 1231.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 36, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1231.0
      0x8000088c addi    a0, a0, -1             #; a0  = 36, (wrb) a0  <-- 35
      0x80000894 bnez    a0, pc - 8             #; a0  = 35, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1280.0
      0x8000088c addi    a0, a0, -1             #; a0  = 35, (wrb) a0  <-- 34
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1280.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 34, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 34, (wrb) a0  <-- 33
                                                #; (f:fpu) fs0  <-- 1344.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1344.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:45)
      0x80000894 bnez    a0, pc - 8             #; a0  = 33, taken, goto 0x8000088c
      0x8000088c addi    a0, a0, -1             #; a0  = 33, (wrb) a0  <-- 32
                                                #; (f:fpu) fs0  <-- 1425.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 32, taken, goto 0x8000088c
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1425.0
      0x8000088c addi    a0, a0, -1             #; a0  = 32, (wrb) a0  <-- 31
      0x80000894 bnez    a0, pc - 8             #; a0  = 31, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1425.0
      0x8000088c addi    a0, a0, -1             #; a0  = 31, (wrb) a0  <-- 30
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1425.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 30, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1426.0
      0x8000088c addi    a0, a0, -1             #; a0  = 30, (wrb) a0  <-- 29
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1426.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 29, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1430.0
      0x8000088c addi    a0, a0, -1             #; a0  = 29, (wrb) a0  <-- 28
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1430.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 28, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1439.0
      0x8000088c addi    a0, a0, -1             #; a0  = 28, (wrb) a0  <-- 27
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1439.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 27, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1455.0
      0x8000088c addi    a0, a0, -1             #; a0  = 27, (wrb) a0  <-- 26
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1455.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 26, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1480.0
      0x8000088c addi    a0, a0, -1             #; a0  = 26, (wrb) a0  <-- 25
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1480.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 25, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1516.0
      0x8000088c addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1516.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 24, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1565.0
      0x8000088c addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1565.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 23, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1629.0
      0x8000088c addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1629.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 22, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1710.0
      0x8000088c addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1710.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 21, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1710.0
      0x8000088c addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1710.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 20, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1711.0
      0x8000088c addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1711.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 19, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1715.0
      0x8000088c addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1715.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 18, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1724.0
      0x8000088c addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1724.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 17, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1740.0
      0x8000088c addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1740.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 16, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1765.0
      0x8000088c addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1765.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 15, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1801.0
      0x8000088c addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1801.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 14, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1850.0
      0x8000088c addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1850.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 13, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1914.0
      0x8000088c addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1914.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 12, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1995.0
      0x8000088c addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1995.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 11, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1995.0
      0x8000088c addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1995.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 10, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 1996.0
      0x8000088c addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1996.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 9, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 2000.0
      0x8000088c addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2000.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 8, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 2009.0
      0x8000088c addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2009.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 7, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 2025.0
      0x8000088c addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2025.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 2050.0
      0x8000088c addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2050.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 2086.0
      0x8000088c addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2086.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 2135.0
      0x8000088c addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2135.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 2199.0
      0x8000088c addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2199.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 2280.0
      0x8000088c addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 2280.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x8000088c
                                                #; (f:fpu) fs0  <-- 2280.0
      0x8000088c addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 2280.0
      0x80000894 bnez    a0, pc - 8             #; a0  = 0, not taken
                                                #; (f:fpu) fs0  <-- 2281.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 2281.0
; scalarprod (scalarprod.c:0)
;  in main (bench_sp.c:45)
      0x8000089c j       pc + 0x2c              #; goto 0x800008c8
                                                #; (f:fpu) fs0  <-- 2285.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2285.0
                                                #; (f:fpu) fs0  <-- 2294.0
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2294.0
                                                #; (f:fpu) fs0  <-- 2310.0
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:48)
      0x800008c8 csrr    a0, mcycle             #; mcycle = 5240, (wrb) a0  <-- 5240
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2310.0
; main (bench_sp.c:50)
      0x800008cc sub     a1, a0, a2             #; a0  = 5240, a2  = 4827, (wrb) a1  <-- 413
                                                #; (f:fpu) fs0  <-- 2335.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2335.0
                                                #; (f:fpu) fs0  <-- 2371.0
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2371.0
                                                #; (f:fpu) fs0  <-- 2420.0
; main (bench_sp.c:50)
      0x800008d0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028d0
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2420.0
      0x800008d4 addi    a0, a0, 929            #; a0  = 0x800028d0, (wrb) a0  <-- 0x80002c71
      0x800008d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008d8
      0x800008dc jalr    ra, ra, 88             #; ra  = 0x800008d8, (wrb) ra  <-- 0x800008e0, goto 0x80000930
                                                #; (f:fpu) fs0  <-- 2484.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2484.0
                                                #; (f:fpu) fs0  <-- 2565.0
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 2565.0
                                                #; (f:fpu) fs0  <-- 2565.0
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 2565.0
; printf_ (printf.c:863)
      0x80000930 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000934 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008e0 ~~> Word[0x0011ff1c]
                                                #; (f:fpu) fs0  <-- 2566.0
      0x80000938 mv      t0, a0                 #; a0  = 0x80002c71, (wrb) t0  <-- 0x80002c71
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 2566.0
      0x8000093c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
                                                #; (f:fpu) fs0  <-- 2570.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2570.0
                                                #; (f:fpu) fs0  <-- 2579.0
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2579.0
; printf_ (printf.c:863)
      0x80000940 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
      0x80000944 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
                                                #; (f:fpu) fs0  <-- 2595.0
      0x80000948 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff30]
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2595.0
      0x8000094c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff2c]
                                                #; (f:fpu) fs0  <-- 2620.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2620.0
                                                #; (f:fpu) fs0  <-- 2656.0
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2656.0
; printf_ (printf.c:863)
      0x80000950 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 4827 ~~> Word[0x0011ff28]
      0x80000954 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 413 ~~> Word[0x0011ff24]
                                                #; (f:fpu) fs0  <-- 2705.0
      0x80000958 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2705.0
; printf_ (printf.c:865)
      0x8000095c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
                                                #; (f:fpu) fs0  <-- 2769.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:45)
      0x80000890 fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2769.0
; scalarprod (scalarprod.c:0)
;  in main (bench_sp.c:45)
      0x80000898 csrrci  a0, ssr, 1             #; 
                                                #; (f:fpu) fs0  <-- 2850.0
; printf_ (printf.c:867)
      0x80000960 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001960
      0x80000964 addi    a0, a0, -988           #; a0  = 0x80001960, (wrb) a0  <-- 0x80001584
      0x80000968 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x8000096c li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000970 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000974 mv      a3, t0                 #; t0  = 0x80002c71, (wrb) a3  <-- 0x80002c71
      0x80000978 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000978
      0x8000097c jalr    ra, ra, 20             #; ra  = 0x80000978, (wrb) ra  <-- 0x80000980, goto 0x8000098c
; _vsnprintf.llvm.17592004524093383706 (printf.c:578)
      0x8000098c addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000990 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000980 ~~> Word[0x0011ff0c]
      0x80000994 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000998 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x8000099c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x800009a0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x800009a4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x800009a8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x800009ac sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x800009b0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x800009b4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x800009b8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x800009bc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x800009c0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x800009c4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x800009c8 mv      s0, a3                 #; a3  = 0x80002c71, (wrb) s0  <-- 0x80002c71
      0x800009cc mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800009d0 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.17592004524093383706 (printf.c:582)
      0x800009d4 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x800009d8 mv      s2, a0                 #; a0  = 0x80001584, (wrb) s2  <-- 0x80001584
      0x800009dc j       pc + 0xc               #; goto 0x800009e8
      0x800009e8 li      s8, 0                  #; (wrb) s8  <-- 0
      0x800009ec li      s6, 37                 #; (wrb) s6  <-- 37
      0x800009f0 li      s11, 16                #; (wrb) s11 <-- 16
      0x800009f4 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800009f8 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x800009fc addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000a00 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000a04 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000a08 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000a0c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a10 addi    s10, s0, 2             #; s0  = 0x80002c71, (wrb) s10 <-- 0x80002c73
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a14 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000a18 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a1c lbu     a0, 0(s0)              #; s0  = 0x80002c71, a0  <~~ Byte[0x80002c71]
                                                #; (lsu) a0  <-- 99
      0x80000a20 beqz    a0, pc + 2824          #; a0  = 99, not taken
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 0
      0x800015a4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 1 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 0, (wrb) a4  <-- 0x80002fd4
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd4, 99 ~~> Byte[0x8000301c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 1
      0x800015b8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800015bc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x800015c4 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c71, (wrb) s0  <-- 0x80002c72
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c73, (wrb) s10 <-- 0x80002c74
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c72, a0  <~~ Byte[0x80002c72]
                                                #; (lsu) a0  <-- 121
      0x80000a4c bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 121, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 1
      0x800015a4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 2 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 1, (wrb) a4  <-- 0x80002fd5
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd5, 121 ~~> Byte[0x8000301d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 2
      0x800015b8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800015bc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
      0x800015c4 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c72, (wrb) s0  <-- 0x80002c73
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c74, (wrb) s10 <-- 0x80002c75
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c73, a0  <~~ Byte[0x80002c73]
                                                #; (lsu) a0  <-- 99
      0x80000a4c bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 2
      0x800015a4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 3 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 2, (wrb) a4  <-- 0x80002fd6
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd6, 99 ~~> Byte[0x8000301e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 3
      0x800015b8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800015bc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x800015c4 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c73, (wrb) s0  <-- 0x80002c74
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c75, (wrb) s10 <-- 0x80002c76
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c74, a0  <~~ Byte[0x80002c74]
                                                #; (lsu) a0  <-- 108
      0x80000a4c bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 108, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 3
      0x800015a4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 4 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 3, (wrb) a4  <-- 0x80002fd7
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd7, 108 ~~> Byte[0x8000301f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 4
      0x800015b8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800015bc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
      0x800015c4 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c74, (wrb) s0  <-- 0x80002c75
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c76, (wrb) s10 <-- 0x80002c77
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c75, a0  <~~ Byte[0x80002c75]
                                                #; (lsu) a0  <-- 101
      0x80000a4c bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 4
      0x800015a4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 5 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 4, (wrb) a4  <-- 0x80002fd8
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd8, 101 ~~> Byte[0x80003020]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 5
      0x800015b8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800015bc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800015c4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c75, (wrb) s0  <-- 0x80002c76
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c77, (wrb) s10 <-- 0x80002c78
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c76, a0  <~~ Byte[0x80002c76]
                                                #; (lsu) a0  <-- 115
      0x80000a4c bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 115, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 5
      0x800015a4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 6 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 5, (wrb) a4  <-- 0x80002fd9
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd9, 115 ~~> Byte[0x80003021]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 6
      0x800015b8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800015bc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
      0x800015c4 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c76, (wrb) s0  <-- 0x80002c77
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c78, (wrb) s10 <-- 0x80002c79
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c77, a0  <~~ Byte[0x80002c77]
                                                #; (lsu) a0  <-- 32
      0x80000a4c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 6
      0x800015a4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 7 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 6, (wrb) a4  <-- 0x80002fda
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fda, 32 ~~> Byte[0x80003022]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 7
      0x800015b8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800015bc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015c4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c77, (wrb) s0  <-- 0x80002c78
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c79, (wrb) s10 <-- 0x80002c7a
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c78, a0  <~~ Byte[0x80002c78]
                                                #; (lsu) a0  <-- 61
      0x80000a4c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 7
      0x800015a4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 8 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 7, (wrb) a4  <-- 0x80002fdb
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdb, 61 ~~> Byte[0x80003023]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 8
      0x800015b8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800015bc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800015c4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c78, (wrb) s0  <-- 0x80002c79
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c7a, (wrb) s10 <-- 0x80002c7b
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c79, a0  <~~ Byte[0x80002c79]
                                                #; (lsu) a0  <-- 32
      0x80000a4c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 8
      0x800015a4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 9 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 8, (wrb) a4  <-- 0x80002fdc
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdc, 32 ~~> Byte[0x80003024]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 9
      0x800015b8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800015bc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015c4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c79, (wrb) s0  <-- 0x80002c7a
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c7b, (wrb) s10 <-- 0x80002c7c
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c7a, a0  <~~ Byte[0x80002c7a]
                                                #; (lsu) a0  <-- 37
      0x80000a4c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a54
; _vsnprintf.llvm.17592004524093383706 (printf.c:602)
      0x80000a54 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a58 j       pc + 0x10              #; goto 0x80000a68
; _vsnprintf.llvm.17592004524093383706 (printf.c:604)
      0x80000a68 lbu     a0, -1(s10)            #; s10 = 0x80002c7c, a0  <~~ Byte[0x80002c7b]
                                                #; (lsu) a0  <-- 108
      0x80000a6c addi    a1, a0, -32            #; a0  = 108, (wrb) a1  <-- 76
      0x80000a70 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 76, taken, goto 0x80000aa8
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:616)
      0x80000aa8 addi    a1, a0, -48            #; a0  = 108, (wrb) a1  <-- 60
      0x80000aac andi    a2, a1, 255            #; a1  = 60, (wrb) a2  <-- 60
; _vsnprintf.llvm.17592004524093383706 (printf.c:616)
      0x80000ab0 addi    a1, s10, -1            #; s10 = 0x80002c7c, (wrb) a1  <-- 0x80002c7b
      0x80000ab4 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000ab8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 60, taken, goto 0x80000b34
; _vsnprintf.llvm.17592004524093383706 (printf.c:619)
      0x80000b34 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000b38 bne     a0, a2, pc + 80        #; a0  = 108, a2  = 42, taken, goto 0x80000b88
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b88 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b8c mv      s10, a1                #; a1  = 0x80002c7b, (wrb) s10 <-- 0x80002c7b
; _vsnprintf.llvm.17592004524093383706 (printf.c:633)
      0x80000b90 beq     a0, s7, pc - 164       #; a0  = 108, s7  = 46, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b94 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b98 j       pc + 0xc               #; goto 0x80000ba4
; _vsnprintf.llvm.17592004524093383706 (printf.c:647)
      0x80000ba4 addi    a1, a0, -104           #; a0  = 108, (wrb) a1  <-- 4
      0x80000ba8 srli    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 2
      0x80000bac slli    a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 0
      0x80000bb0 or      a1, a1, a2             #; a1  = 0, a2  = 2, (wrb) a1  <-- 2
      0x80000bb4 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000bb8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 2, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000bbc slli    a1, a1, 2              #; a1  = 2, (wrb) a1  <-- 8
      0x80000bc0 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002bc0
      0x80000bc4 addi    a2, a2, 264            #; a2  = 0x80002bc0, (wrb) a2  <-- 0x80002cc8
      0x80000bc8 add     a1, a1, a2             #; a1  = 8, a2  = 0x80002cc8, (wrb) a1  <-- 0x80002cd0
      0x80000bcc lw      a3, 0(a1)              #; a1  = 0x80002cd0, a3  <~~ Word[0x80002cd0]
      0x80000bd0 li      a1, 1                  #; (wrb) a1  <-- 1
      0x80000bd4 li      a2, 256                #; (wrb) a2  <-- 256
                                                #; (lsu) a3  <-- 0x80000bfc
      0x80000bd8 jr      a3                     #; a3  = 0x80000bfc, goto 0x80000bfc
; _vsnprintf.llvm.17592004524093383706 (printf.c:651)
      0x80000bfc lbu     a0, 1(s10)             #; s10 = 0x80002c7b, a0  <~~ Byte[0x80002c7c]
                                                #; (lsu) a0  <-- 117
      0x80000c00 li      a1, 108                #; (wrb) a1  <-- 108
      0x80000c04 bne     a0, a1, pc + 272       #; a0  = 117, a1  = 108, taken, goto 0x80000d14
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000d14 ori     s0, s0, 256            #; s0  = 0, (wrb) s0  <-- 256
      0x80000d18 addi    s10, s10, 1            #; s10 = 0x80002c7b, (wrb) s10 <-- 0x80002c7c
      0x80000d1c j       pc - 0x100             #; goto 0x80000c1c
; _vsnprintf.llvm.17592004524093383706 (printf.c:683)
      0x80000c1c addi    a1, a0, -37            #; a0  = 117, (wrb) a1  <-- 80
      0x80000c20 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c24 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 80, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000c28 slli    a1, a1, 2              #; a1  = 80, (wrb) a1  <-- 320
      0x80000c2c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c2c
      0x80000c30 addi    a2, a2, 196            #; a2  = 0x80002c2c, (wrb) a2  <-- 0x80002cf0
      0x80000c34 add     a1, a1, a2             #; a1  = 320, a2  = 0x80002cf0, (wrb) a1  <-- 0x80002e30
      0x80000c38 lw      a2, 0(a1)              #; a1  = 0x80002e30, a2  <~~ Word[0x80002e30]
      0x80000c3c li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000c40 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c48
      0x80000c44 jr      a2                     #; a2  = 0x80000c48
; _vsnprintf.llvm.17592004524093383706 (printf.c:704)
      0x80000c48 andi    s0, s0, -17            #; s0  = 256, (wrb) s0  <-- 256
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000c4c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:707)
      0x80000c50 li      a1, 88                 #; (wrb) a1  <-- 88
      0x80000c54 bne     a0, a1, pc + 8         #; a0  = 117, a1  = 88, taken, goto 0x80000c5c
; _vsnprintf.llvm.17592004524093383706 (printf.c:712)
      0x80000c5c li      a1, 100                #; (wrb) a1  <-- 100
      0x80000c60 beq     a0, a1, pc + 240       #; a0  = 117, a1  = 100, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000c64 mv      a1, s8                 #; s8  = 10, (wrb) a1  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:712)
      0x80000c68 li      a2, 105                #; (wrb) a2  <-- 105
      0x80000c6c beq     a0, a2, pc + 228       #; a0  = 117, a2  = 105, not taken
      0x80000c70 j       pc + 0xd8              #; goto 0x80000d48
; _vsnprintf.llvm.17592004524093383706 (printf.c:713)
      0x80000d48 andi    s0, s0, -13            #; s0  = 256, (wrb) s0  <-- 256
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000d4c mv      s8, a1                 #; a1  = 10, (wrb) s8  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:717)
      0x80000d50 andi    a1, s0, 1024           #; s0  = 256, (wrb) a1  <-- 0
      0x80000d54 beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000d5c
; _vsnprintf.llvm.17592004524093383706 (printf.c:722)
      0x80000d5c li      a1, 105                #; (wrb) a1  <-- 105
      0x80000d60 beq     a0, a1, pc + 12        #; a0  = 117, a1  = 105, not taken
      0x80000d64 li      a1, 100                #; (wrb) a1  <-- 100
      0x80000d68 bne     a0, a1, pc + 312       #; a0  = 117, a1  = 100, taken, goto 0x80000ea0
; _vsnprintf.llvm.17592004524093383706 (printf.c:741)
      0x80000ea0 andi    a0, s0, 512            #; s0  = 256, (wrb) a0  <-- 0
      0x80000ea4 bnez    a0, pc + 196           #; a0  = 0, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:746)
      0x80000ea8 andi    a0, s0, 256            #; s0  = 256, (wrb) a0  <-- 256
      0x80000eac bnez    a0, pc + 1148          #; a0  = 256, taken, goto 0x80001328
; _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001328 lw      a0, 0(s3)              #; s3  = 0x0011ff24, a0  <~~ Word[0x0011ff24]
                                                #; (lsu) a0  <-- 413
; _ntoa_long (printf.c:287)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x8000132c bnez    a0, pc + 8             #; a0  = 413, taken, goto 0x80001334
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001334 seqz    a1, a0                 #; a0  = 413, (wrb) a1  <-- 0
; _ntoa_long (printf.c:292)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001338 andi    a2, s0, 1024           #; s0  = 256, (wrb) a2  <-- 0
      0x8000133c srli    a2, a2, 10             #; a2  = 0, (wrb) a2  <-- 0
      0x80001340 and     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001344 li      a5, 0                  #; (wrb) a5  <-- 0
; _ntoa_long (printf.c:292)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001348 bnez    a1, pc + 248           #; a1  = 0, not taken
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x8000134c li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001350 andi    a1, s0, 32             #; s0  = 256, (wrb) a1  <-- 0
      0x80001354 xori    a1, a1, 97             #; a1  = 0, (wrb) a1  <-- 97
      0x80001358 addi    a6, a1, 246            #; a1  = 97, (wrb) a6  <-- 343
      0x8000135c j       pc + 0x34              #; goto 0x80001390
; _ntoa_long (printf.c:296)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001390 divu    a3, a0, s8             #; a0  = 413, s8  = 10
                                                #; (acc) a4  <-- 0x03868733
      0x80001394 mul     a4, a3, s8             #; a3  = 41, s8  = 10
                                                #; (acc) a4  <-- 0x40e50733
      0x80001398 sub     a4, a0, a4             #; a0  = 413, a4  = 410, (wrb) a4  <-- 3
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x8000139c andi    s1, a4, 254            #; a4  = 3, (wrb) s1  <-- 2
      0x800013a0 li      a5, 48                 #; (wrb) a5  <-- 48
      0x800013a4 li      a1, 10                 #; (wrb) a1  <-- 10
      0x800013a8 bltu    s1, a1, pc - 72        #; s1  = 2, a1  = 10, taken, goto 0x80001360
      0x80001360 add     a4, a5, a4             #; a5  = 48, a4  = 3, (wrb) a4  <-- 51
      0x80001364 addi    a5, a2, 1              #; a2  = 0, (wrb) a5  <-- 1
      0x80001368 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
      0x8000136c add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 0, (wrb) s1  <-- 0x0011febc
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001370 sltu    a0, a0, s8             #; a0  = 413, s8  = 10, (wrb) a0  <-- 0
      0x80001374 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001378 sltiu   a2, a2, 31             #; a2  = 0, (wrb) a2  <-- 1
      0x8000137c and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001380 sb      a4, 0(s1)              #; s1  = 0x0011febc, 51 ~~> Byte[0x0011febc]
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001384 mv      a2, a5                 #; a5  = 1, (wrb) a2  <-- 1
      0x80001388 mv      a0, a3                 #; a3  = 41, (wrb) a0  <-- 41
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x8000138c beqz    a1, pc + 180           #; a1  = 1, not taken
; _ntoa_long (printf.c:296)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001390 divu    a3, a0, s8             #; a0  = 41, s8  = 10
                                                #; (acc) a4  <-- 0x03868733
      0x80001394 mul     a4, a3, s8             #; a3  = 4, s8  = 10
                                                #; (acc) a4  <-- 0x40e50733
      0x80001398 sub     a4, a0, a4             #; a0  = 41, a4  = 40, (wrb) a4  <-- 1
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x8000139c andi    s1, a4, 254            #; a4  = 1, (wrb) s1  <-- 0
      0x800013a0 li      a5, 48                 #; (wrb) a5  <-- 48
      0x800013a4 li      a1, 10                 #; (wrb) a1  <-- 10
      0x800013a8 bltu    s1, a1, pc - 72        #; s1  = 0, a1  = 10, taken, goto 0x80001360
      0x80001360 add     a4, a5, a4             #; a5  = 48, a4  = 1, (wrb) a4  <-- 49
      0x80001364 addi    a5, a2, 1              #; a2  = 1, (wrb) a5  <-- 2
      0x80001368 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
      0x8000136c add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 1, (wrb) s1  <-- 0x0011febd
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001370 sltu    a0, a0, s8             #; a0  = 41, s8  = 10, (wrb) a0  <-- 0
      0x80001374 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001378 sltiu   a2, a2, 31             #; a2  = 1, (wrb) a2  <-- 1
      0x8000137c and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001380 sb      a4, 0(s1)              #; s1  = 0x0011febd, 49 ~~> Byte[0x0011febd]
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001384 mv      a2, a5                 #; a5  = 2, (wrb) a2  <-- 2
      0x80001388 mv      a0, a3                 #; a3  = 4, (wrb) a0  <-- 4
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x8000138c beqz    a1, pc + 180           #; a1  = 1, not taken
; _ntoa_long (printf.c:296)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001390 divu    a3, a0, s8             #; a0  = 4, s8  = 10
                                                #; (acc) a4  <-- 0x03868733
      0x80001394 mul     a4, a3, s8             #; a3  = 0, s8  = 10
                                                #; (acc) a4  <-- 0x40e50733
      0x80001398 sub     a4, a0, a4             #; a0  = 4, a4  = 0, (wrb) a4  <-- 4
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x8000139c andi    s1, a4, 254            #; a4  = 4, (wrb) s1  <-- 4
      0x800013a0 li      a5, 48                 #; (wrb) a5  <-- 48
      0x800013a4 li      a1, 10                 #; (wrb) a1  <-- 10
      0x800013a8 bltu    s1, a1, pc - 72        #; s1  = 4, a1  = 10, taken, goto 0x80001360
      0x80001360 add     a4, a5, a4             #; a5  = 48, a4  = 4, (wrb) a4  <-- 52
      0x80001364 addi    a5, a2, 1              #; a2  = 2, (wrb) a5  <-- 3
      0x80001368 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
      0x8000136c add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 2, (wrb) s1  <-- 0x0011febe
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001370 sltu    a0, a0, s8             #; a0  = 4, s8  = 10, (wrb) a0  <-- 1
      0x80001374 xori    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 0
      0x80001378 sltiu   a2, a2, 31             #; a2  = 2, (wrb) a2  <-- 1
      0x8000137c and     a1, a2, a0             #; a2  = 1, a0  = 0, (wrb) a1  <-- 0
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001380 sb      a4, 0(s1)              #; s1  = 0x0011febe, 52 ~~> Byte[0x0011febe]
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x80001384 mv      a2, a5                 #; a5  = 3, (wrb) a2  <-- 3
      0x80001388 mv      a0, a3                 #; a3  = 0, (wrb) a0  <-- 0
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:747)
      0x8000138c beqz    a1, pc + 180           #; a1  = 0, taken, goto 0x80001440
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80001440 addi    s3, s3, 4              #; s3  = 0x0011ff24, (wrb) s3  <-- 0x0011ff28
      0x80001444 addi    a4, sp, 28             #; sp  = 0x0011fea0, (wrb) a4  <-- 0x0011febc
      0x80001448 mv      a0, s2                 #; s2  = 0x80001584, (wrb) a0  <-- 0x80001584
      0x8000144c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001450 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
      0x80001454 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001458 li      a6, 0                  #; (wrb) a6  <-- 0
      0x8000145c mv      a7, s8                 #; s8  = 10, (wrb) a7  <-- 10
      0x80001460 mv      t2, s7                 #; s7  = 0, (wrb) t2  <-- 0
      0x80001464 mv      t3, s6                 #; s6  = 0, (wrb) t3  <-- 0
      0x80001468 mv      t4, s0                 #; s0  = 256, (wrb) t4  <-- 256
      0x8000146c auipc   ra, 0x1                #; (wrb) ra  <-- 0x8000246c
      0x80001470 jalr    ra, ra, -620           #; ra  = 0x8000246c, (wrb) ra  <-- 0x80001474, goto 0x80002200
; _ntoa_format (printf.c:228)
      0x80002200 addi    sp, sp, -64            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe60
      0x80002204 sw      ra, 60(sp)             #; sp  = 0x0011fe60, 0x80001474 ~~> Word[0x0011fe9c]
      0x80002208 sw      s0, 56(sp)             #; sp  = 0x0011fe60, 256 ~~> Word[0x0011fe98]
      0x8000220c sw      s1, 52(sp)             #; sp  = 0x0011fe60, 0x0011febe ~~> Word[0x0011fe94]
      0x80002210 sw      s2, 48(sp)             #; sp  = 0x0011fe60, 0x80001584 ~~> Word[0x0011fe90]
      0x80002214 sw      s3, 44(sp)             #; sp  = 0x0011fe60, 0x0011ff28 ~~> Word[0x0011fe8c]
      0x80002218 sw      s4, 40(sp)             #; sp  = 0x0011fe60, 0x0011ff17 ~~> Word[0x0011fe88]
      0x8000221c sw      s5, 36(sp)             #; sp  = 0x0011fe60, -1 ~~> Word[0x0011fe84]
      0x80002220 sw      s6, 32(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe80]
      0x80002224 sw      s7, 28(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe7c]
      0x80002228 sw      s8, 24(sp)             #; sp  = 0x0011fe60, 10 ~~> Word[0x0011fe78]
      0x8000222c sw      s9, 20(sp)             #; sp  = 0x0011fe60, 9 ~~> Word[0x0011fe74]
      0x80002230 sw      s10, 16(sp)            #; sp  = 0x0011fe60, 0x80002c7c ~~> Word[0x0011fe70]
      0x80002234 sw      s11, 12(sp)            #; sp  = 0x0011fe60, 16 ~~> Word[0x0011fe6c]
      0x80002238 mv      s7, t4                 #; t4  = 256, (wrb) s7  <-- 256
; _ntoa_format (printf.c:230)
      0x8000223c andi    s5, t4, 2              #; t4  = 256, (wrb) s5  <-- 0
      0x80002240 mv      s2, t3                 #; t3  = 0, (wrb) s2  <-- 0
; _ntoa_format (printf.c:0)
      0x80002244 mv      s10, t2                #; t2  = 0, (wrb) s10 <-- 0
      0x80002248 mv      s9, a7                 #; a7  = 10, (wrb) s9  <-- 10
      0x8000224c mv      s8, a5                 #; a5  = 3, (wrb) s8  <-- 3
      0x80002250 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80002254 mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
      0x80002258 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x8000225c mv      s11, a0                #; a0  = 0x80001584, (wrb) s11 <-- 0x80001584
      0x80002260 sw      a4, 8(sp)              #; sp  = 0x0011fe60, 0x0011febc ~~> Word[0x0011fe68]
; _ntoa_format (printf.c:230)
      0x80002264 bnez    s5, pc + 220           #; s5  = 0, not taken
; _ntoa_format (printf.c:0)
      0x80002268 andi    s0, s7, 1              #; s7  = 256, (wrb) s0  <-- 0
; _ntoa_format (printf.c:231)
      0x8000226c beqz    s2, pc + 28            #; s2  = 0, taken, goto 0x80002288
; _ntoa_format (printf.c:0)
      0x80002288 li      s2, 0                  #; (wrb) s2  <-- 0
; _ntoa_format (printf.c:234)
      0x8000228c sltu    a0, s8, s10            #; s8  = 3, s10 = 0, (wrb) a0  <-- 0
      0x80002290 xori    a1, a0, 1              #; a0  = 0, (wrb) a1  <-- 1
      0x80002294 li      a0, 31                 #; (wrb) a0  <-- 31
      0x80002298 sltu    a2, a0, s8             #; a0  = 31, s8  = 3, (wrb) a2  <-- 0
      0x8000229c or      a1, a2, a1             #; a2  = 0, a1  = 1, (wrb) a1  <-- 1
      0x800022a0 bnez    a1, pc + 72            #; a1  = 1, taken, goto 0x800022e8
; _ntoa_format (printf.c:237)
      0x800022e8 beqz    s0, pc + 88            #; s0  = 0, taken, goto 0x80002340
; _ntoa_format (printf.c:243)
      0x80002340 andi    a0, s7, 16             #; s7  = 256, (wrb) a0  <-- 0
      0x80002344 beqz    a0, pc + 228           #; a0  = 0, taken, goto 0x80002428
; _ntoa_format (printf.c:0)
      0x80002428 li      a0, 31                 #; (wrb) a0  <-- 31
; _ntoa_format (printf.c:264)
      0x8000242c bltu    a0, s8, pc + 72        #; a0  = 31, s8  = 3, not taken
; _ntoa_format (printf.c:265)
      0x80002430 beqz    a6, pc + 20            #; a6  = 0, taken, goto 0x80002444
; _ntoa_format (printf.c:268)
      0x80002444 andi    a0, s7, 4              #; s7  = 256, (wrb) a0  <-- 0
      0x80002448 bnez    a0, pc + 28            #; a0  = 0, not taken
; _ntoa_format (printf.c:271)
      0x8000244c andi    a0, s7, 8              #; s7  = 256, (wrb) a0  <-- 0
      0x80002450 beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x80002474
; _out_rev (printf.c:204)
;  in _ntoa_format (printf.c:276)
      0x80002474 andi    a0, s7, 3              #; s7  = 256, (wrb) a0  <-- 0
      0x80002478 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x8000247c sltu    a1, s8, s2             #; s8  = 3, s2  = 0, (wrb) a1  <-- 0
      0x80002480 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80002484 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
      0x80002488 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
      0x8000248c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800024b8
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800024b8 snez    s5, s5                 #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x800024bc beqz    s8, pc + 60            #; s8  = 3, not taken
      0x800024c0 lw      a0, 8(sp)              #; sp  = 0x0011fe60, a0  <~~ Word[0x0011fe68]
                                                #; (lsu) a0  <-- 0x0011febc
      0x800024c4 addi    s7, a0, -1             #; a0  = 0x0011febc, (wrb) s7  <-- 0x0011febb
; _out_rev (printf.c:212)
;  in _ntoa_format (printf.c:276)
      0x800024c8 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 3, (wrb) a0  <-- 0x0011febe
      0x800024cc lbu     a0, 0(a0)              #; a0  = 0x0011febe, a0  <~~ Byte[0x0011febe]
                                                #; (lsu) a0  <-- 52
      0x800024d0 addi    s9, s8, -1             #; s8  = 3, (wrb) s9  <-- 2
      0x800024d4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x800024d8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800024dc mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x800024e0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800024e4 jalr    s11                    #; s11 = 0x80001584, (wrb) ra  <-- 0x800024e8, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 52, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 9
      0x800015a4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 10 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 9, (wrb) a4  <-- 0x80002fdd
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdd, 52 ~~> Byte[0x80003025]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 10
      0x800015b8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800015bc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 52, (wrb) a0  <-- 42
      0x800015c4 snez    a0, a0                 #; a0  = 42, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x800024e8, goto 0x800024e8
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800024e8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x800024ec mv      s8, s9                 #; s9  = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x800024f0 bnez    s9, pc - 40            #; s9  = 2, taken, goto 0x800024c8
; _out_rev (printf.c:212)
;  in _ntoa_format (printf.c:276)
      0x800024c8 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 2, (wrb) a0  <-- 0x0011febd
      0x800024cc lbu     a0, 0(a0)              #; a0  = 0x0011febd, a0  <~~ Byte[0x0011febd]
      0x800024d0 addi    s9, s8, -1             #; s8  = 2, (wrb) s9  <-- 1
      0x800024d4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x800024d8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800024dc mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x800024e0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800024e4 jalr    s11                    #; s11 = 0x80001584, (wrb) ra  <-- 0x800024e8, goto 0x80001584
                                                #; (lsu) a0  <-- 49
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 49, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 10
      0x800015a4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 11 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 10, (wrb) a4  <-- 0x80002fde
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fde, 49 ~~> Byte[0x80003026]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 11
      0x800015b8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800015bc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
      0x800015c4 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x800024e8, goto 0x800024e8
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800024e8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x800024ec mv      s8, s9                 #; s9  = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x800024f0 bnez    s9, pc - 40            #; s9  = 1, taken, goto 0x800024c8
; _out_rev (printf.c:212)
;  in _ntoa_format (printf.c:276)
      0x800024c8 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 1, (wrb) a0  <-- 0x0011febc
      0x800024cc lbu     a0, 0(a0)              #; a0  = 0x0011febc, a0  <~~ Byte[0x0011febc]
      0x800024d0 addi    s9, s8, -1             #; s8  = 1, (wrb) s9  <-- 0
      0x800024d4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x800024d8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800024dc mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x800024e0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800024e4 jalr    s11                    #; s11 = 0x80001584, (wrb) ra  <-- 0x800024e8, goto 0x80001584
                                                #; (lsu) a0  <-- 51
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 51, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 11
      0x800015a4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 12 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 11, (wrb) a4  <-- 0x80002fdf
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdf, 51 ~~> Byte[0x80003027]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 12
      0x800015b8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800015bc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 51, (wrb) a0  <-- 41
      0x800015c4 snez    a0, a0                 #; a0  = 41, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x800024e8, goto 0x800024e8
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800024e8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x800024ec mv      s8, s9                 #; s9  = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x800024f0 bnez    s9, pc - 40            #; s9  = 0, not taken
      0x800024f4 j       pc + 0x8               #; goto 0x800024fc
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800024fc sub     a0, s1, s4             #; s1  = 12, s4  = 9, (wrb) a0  <-- 3
      0x80002500 sltu    a0, a0, s2             #; a0  = 3, s2  = 0, (wrb) a0  <-- 0
      0x80002504 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ntoa_format (printf.c:276)
      0x80002508 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x8000250c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80002510 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002540
; _ntoa_format (printf.c:0)
      0x80002540 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
; _ntoa_format (printf.c:276)
      0x80002544 mv      a0, s0                 #; s0  = 12, (wrb) a0  <-- 12
      0x80002548 lw      s11, 12(sp)            #; sp  = 0x0011fe60, s11 <~~ Word[0x0011fe6c]
                                                #; (lsu) s11 <-- 16
      0x8000254c lw      s10, 16(sp)            #; sp  = 0x0011fe60, s10 <~~ Word[0x0011fe70]
                                                #; (lsu) s10 <-- 0x80002c7c
      0x80002550 lw      s9, 20(sp)             #; sp  = 0x0011fe60, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 9
      0x80002554 lw      s8, 24(sp)             #; sp  = 0x0011fe60, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 10
      0x80002558 lw      s7, 28(sp)             #; sp  = 0x0011fe60, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x8000255c lw      s6, 32(sp)             #; sp  = 0x0011fe60, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80002560 lw      s5, 36(sp)             #; sp  = 0x0011fe60, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80002564 lw      s4, 40(sp)             #; sp  = 0x0011fe60, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80002568 lw      s3, 44(sp)             #; sp  = 0x0011fe60, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff28
      0x8000256c lw      s2, 48(sp)             #; sp  = 0x0011fe60, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001584
      0x80002570 lw      s1, 52(sp)             #; sp  = 0x0011fe60, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 0x0011febe
      0x80002574 lw      s0, 56(sp)             #; sp  = 0x0011fe60, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 256
      0x80002578 lw      ra, 60(sp)             #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fe9c]
      0x8000257c addi    sp, sp, 64             #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80001474
      0x80002580 ret                            #; ra  = 0x80001474, goto 0x80001474
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80001474 mv      s8, a0                 #; a0  = 12, (wrb) s8  <-- 12
      0x80001478 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000147c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001480 addi    s0, s10, 1             #; s10 = 0x80002c7c, (wrb) s0  <-- 0x80002c7d
      0x80001484 j       pc - 0xa74             #; goto 0x80000a10
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a10 addi    s10, s0, 2             #; s0  = 0x80002c7d, (wrb) s10 <-- 0x80002c7f
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a14 mv      s9, s8                 #; s8  = 12, (wrb) s9  <-- 12
      0x80000a18 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a1c lbu     a0, 0(s0)              #; s0  = 0x80002c7d, a0  <~~ Byte[0x80002c7d]
                                                #; (lsu) a0  <-- 10
      0x80000a20 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 12, (wrb) s1  <-- 13
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 12, (wrb) a2  <-- 12
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 12
      0x800015a4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 13 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 12, (wrb) a4  <-- 0x80002fe0
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe0, 10 ~~> Byte[0x80003028]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 13
      0x800015b8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800015bc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800015c4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800015c8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800015cc bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015d0 add     a0, a3, a2             #; a3  = 0x80002fd4, a2  = 0, (wrb) a0  <-- 0x80002fd4
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015d4 addi    a2, a0, 72             #; a0  = 0x80002fd4, (wrb) a2  <-- 0x8000301c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015d8 sw      zero, 12(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe0]
      0x800015dc li      a3, 64                 #; (wrb) a3  <-- 64
      0x800015e0 sw      a3, 8(a0)              #; a0  = 0x80002fd4, 64 ~~> Word[0x80002fdc]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015e4 sw      zero, 20(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe8]
      0x800015e8 li      a3, 1                  #; (wrb) a3  <-- 1
      0x800015ec sw      a3, 16(a0)             #; a0  = 0x80002fd4, 1 ~~> Word[0x80002fe4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015f0 sw      zero, 28(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff0]
      0x800015f4 sw      a2, 24(a0)             #; a0  = 0x80002fd4, 0x8000301c ~~> Word[0x80002fec]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015f8 lw      a2, 0(a1)              #; a1  = 0x80002fd4, a2  <~~ Word[0x80002fd4]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015fc addi    a3, a0, 8              #; a0  = 0x80002fd4, (wrb) a3  <-- 0x80002fdc
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001600 sw      zero, 36(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff8]
                                                #; (lsu) a2  <-- 13
      0x80001604 sw      a2, 32(a0)             #; a0  = 0x80002fd4, 13 ~~> Word[0x80002ff4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001608 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003608
      0x8000160c addi    a0, a0, -1864          #; a0  = 0x80003608, (wrb) a0  <-- 0x80002ec0
      0x80001610 sw      a3, 0(a0)              #; a0  = 0x80002ec0, 0x80002fdc ~~> Word[0x80002ec0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001614 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003614
      0x80001618 addi    a0, a0, -1812          #; a0  = 0x80003614, (wrb) a0  <-- 0x80002f00
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
      0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
      0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
      0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
      0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
      0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001620 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000161c
      0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 1
      0x80001620 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001624 sw      zero, 0(a0)            #; a0  = 0x80002f00, 0 ~~> Word[0x80002f00]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001628 sw      zero, 0(a1)            #; a1  = 0x80002fd4, 0 ~~> Word[0x80002fd4]
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c7d, (wrb) s0  <-- 0x80002c7e
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c7f, (wrb) s10 <-- 0x80002c80
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 13, (wrb) s9  <-- 13
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c7e, a0  <~~ Byte[0x80002c7e]
                                                #; (lsu) a0  <-- 0
      0x80000a4c bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000a50 j       pc + 0xad8             #; goto 0x80001528
; _vsnprintf.llvm.17592004524093383706 (printf.c:853)
      0x80001528 mv      a2, s9                 #; s9  = 13, (wrb) a2  <-- 13
      0x8000152c bltu    s9, s5, pc + 8         #; s9  = 13, s5  = -1, taken, goto 0x80001534
      0x80001534 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001538 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x8000153c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001540 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80001544, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80001544, goto 0x80001544
; _vsnprintf.llvm.17592004524093383706 (printf.c:856)
      0x80001544 mv      a0, s9                 #; s9  = 13, (wrb) a0  <-- 13
      0x80001548 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x8000154c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001550 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001554 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001558 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x8000155c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001560 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001564 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001568 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x8000156c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001570 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001574 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001578 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x8000157c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000980
      0x80001580 ret                            #; ra  = 0x80000980, goto 0x80000980
; printf_ (printf.c:869)
      0x80000980 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000984 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x800008e0
      0x80000988 ret                            #; ra  = 0x800008e0, goto 0x800008e0
; main (bench_sp.c:0)
      0x800008e0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028e0
      0x800008e4 addi    a0, a0, 1592           #; a0  = 0x800028e0, (wrb) a0  <-- 0x80002f18
      0x800008e8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f18]
                                                #; (f:lsu) ft3  <-- -2850.0
; main (bench_sp.c:57)
      0x800008f8 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
      0x800008ec fadd.d  ft3, fs0, ft3          #; fs0  = 2850.0, ft3  = -2850.0
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800008fc lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x800008f0 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x800008f4 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
                                                #; (lsu) a3  <-- 0
      0x80000900 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002900
      0x80000904 addi    a0, a0, 869            #; a0  = 0x80002900, (wrb) a0  <-- 0x80002c65
      0x80000908 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000908
      0x8000090c jalr    ra, ra, 40             #; ra  = 0x80000908, (wrb) ra  <-- 0x80000910, goto 0x80000930
; printf_ (printf.c:863)
      0x80000930 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000934 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000910 ~~> Word[0x0011ff1c]
      0x80000938 mv      t0, a0                 #; a0  = 0x80002c65, (wrb) t0  <-- 0x80002c65
      0x8000093c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff3c]
      0x80000940 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff38]
      0x80000944 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 13 ~~> Word[0x0011ff34]
      0x80000948 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
      0x8000094c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000950 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000954 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
      0x80000958 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x8000095c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000960 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001960
      0x80000964 addi    a0, a0, -988           #; a0  = 0x80001960, (wrb) a0  <-- 0x80001584
      0x80000968 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x8000096c li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000970 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000974 mv      a3, t0                 #; t0  = 0x80002c65, (wrb) a3  <-- 0x80002c65
      0x80000978 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000978
      0x8000097c jalr    ra, ra, 20             #; ra  = 0x80000978, (wrb) ra  <-- 0x80000980, goto 0x8000098c
; _vsnprintf.llvm.17592004524093383706 (printf.c:578)
      0x8000098c addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000990 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000980 ~~> Word[0x0011ff0c]
      0x80000994 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000998 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x8000099c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x800009a0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x800009a4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x800009a8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x800009ac sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x800009b0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x800009b4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x800009b8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x800009bc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x800009c0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x800009c4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x800009c8 mv      s0, a3                 #; a3  = 0x80002c65, (wrb) s0  <-- 0x80002c65
      0x800009cc mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800009d0 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.17592004524093383706 (printf.c:582)
      0x800009d4 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x800009d8 mv      s2, a0                 #; a0  = 0x80001584, (wrb) s2  <-- 0x80001584
      0x800009dc j       pc + 0xc               #; goto 0x800009e8
      0x800009e8 li      s8, 0                  #; (wrb) s8  <-- 0
      0x800009ec li      s6, 37                 #; (wrb) s6  <-- 37
      0x800009f0 li      s11, 16                #; (wrb) s11 <-- 16
      0x800009f4 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800009f8 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x800009fc addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000a00 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000a04 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000a08 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000a0c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a10 addi    s10, s0, 2             #; s0  = 0x80002c65, (wrb) s10 <-- 0x80002c67
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a14 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000a18 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a1c lbu     a0, 0(s0)              #; s0  = 0x80002c65, a0  <~~ Byte[0x80002c65]
                                                #; (lsu) a0  <-- 101
      0x80000a20 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 0
      0x800015a4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 1 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 0, (wrb) a4  <-- 0x80002fd4
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd4, 101 ~~> Byte[0x8000301c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 1
      0x800015b8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800015bc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800015c4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c65, (wrb) s0  <-- 0x80002c66
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c67, (wrb) s10 <-- 0x80002c68
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c66, a0  <~~ Byte[0x80002c66]
                                                #; (lsu) a0  <-- 114
      0x80000a4c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 1
      0x800015a4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 2 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 1, (wrb) a4  <-- 0x80002fd5
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd5, 114 ~~> Byte[0x8000301d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 2
      0x800015b8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800015bc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015c4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c66, (wrb) s0  <-- 0x80002c67
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c68, (wrb) s10 <-- 0x80002c69
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c67, a0  <~~ Byte[0x80002c67]
                                                #; (lsu) a0  <-- 114
      0x80000a4c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 2
      0x800015a4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 3 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 2, (wrb) a4  <-- 0x80002fd6
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd6, 114 ~~> Byte[0x8000301e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 3
      0x800015b8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800015bc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015c4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c67, (wrb) s0  <-- 0x80002c68
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c69, (wrb) s10 <-- 0x80002c6a
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c68, a0  <~~ Byte[0x80002c68]
                                                #; (lsu) a0  <-- 111
      0x80000a4c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 3
      0x800015a4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 4 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 3, (wrb) a4  <-- 0x80002fd7
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd7, 111 ~~> Byte[0x8000301f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 4
      0x800015b8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800015bc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800015c4 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c68, (wrb) s0  <-- 0x80002c69
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c6a, (wrb) s10 <-- 0x80002c6b
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c69, a0  <~~ Byte[0x80002c69]
                                                #; (lsu) a0  <-- 114
      0x80000a4c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 4
      0x800015a4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 5 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 4, (wrb) a4  <-- 0x80002fd8
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd8, 114 ~~> Byte[0x80003020]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 5
      0x800015b8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800015bc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015c4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c69, (wrb) s0  <-- 0x80002c6a
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c6b, (wrb) s10 <-- 0x80002c6c
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c6a, a0  <~~ Byte[0x80002c6a]
                                                #; (lsu) a0  <-- 32
      0x80000a4c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 5
      0x800015a4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 6 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 5, (wrb) a4  <-- 0x80002fd9
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fd9, 32 ~~> Byte[0x80003021]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 6
      0x800015b8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800015bc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015c4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c6a, (wrb) s0  <-- 0x80002c6b
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c6c, (wrb) s10 <-- 0x80002c6d
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c6b, a0  <~~ Byte[0x80002c6b]
                                                #; (lsu) a0  <-- 61
      0x80000a4c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 6
      0x800015a4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 7 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 6, (wrb) a4  <-- 0x80002fda
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fda, 61 ~~> Byte[0x80003022]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 7
      0x800015b8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800015bc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800015c4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c6b, (wrb) s0  <-- 0x80002c6c
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c6d, (wrb) s10 <-- 0x80002c6e
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c6c, a0  <~~ Byte[0x80002c6c]
                                                #; (lsu) a0  <-- 32
      0x80000a4c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 7
      0x800015a4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 8 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 7, (wrb) a4  <-- 0x80002fdb
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdb, 32 ~~> Byte[0x80003023]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 8
      0x800015b8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800015bc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015c4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c6c, (wrb) s0  <-- 0x80002c6d
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c6e, (wrb) s10 <-- 0x80002c6f
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c6d, a0  <~~ Byte[0x80002c6d]
                                                #; (lsu) a0  <-- 37
      0x80000a4c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a24
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a54
; _vsnprintf.llvm.17592004524093383706 (printf.c:602)
      0x80000a54 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a58 j       pc + 0x10              #; goto 0x80000a68
; _vsnprintf.llvm.17592004524093383706 (printf.c:604)
      0x80000a68 lbu     a0, -1(s10)            #; s10 = 0x80002c6f, a0  <~~ Byte[0x80002c6e]
                                                #; (lsu) a0  <-- 102
      0x80000a6c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000a70 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000aa8
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:616)
      0x80000aa8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000aac andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.17592004524093383706 (printf.c:616)
      0x80000ab0 addi    a1, s10, -1            #; s10 = 0x80002c6f, (wrb) a1  <-- 0x80002c6e
      0x80000ab4 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000ab8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b34
; _vsnprintf.llvm.17592004524093383706 (printf.c:619)
      0x80000b34 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000b38 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b88
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b88 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b8c mv      s10, a1                #; a1  = 0x80002c6e, (wrb) s10 <-- 0x80002c6e
; _vsnprintf.llvm.17592004524093383706 (printf.c:633)
      0x80000b90 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b94 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b98 j       pc + 0xc               #; goto 0x80000ba4
; _vsnprintf.llvm.17592004524093383706 (printf.c:647)
      0x80000ba4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000ba8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000bac slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000bb0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000bb4 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000bb8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c1c
; _vsnprintf.llvm.17592004524093383706 (printf.c:683)
      0x80000c1c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000c20 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c24 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000c28 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000c2c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c2c
      0x80000c30 addi    a2, a2, 196            #; a2  = 0x80002c2c, (wrb) a2  <-- 0x80002cf0
      0x80000c34 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002cf0, (wrb) a1  <-- 0x80002df4
      0x80000c38 lw      a2, 0(a1)              #; a1  = 0x80002df4, a2  <~~ Word[0x80002df4]
      0x80000c3c li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000c40 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c74
      0x80000c44 jr      a2                     #; a2  = 0x80000c74, goto 0x80000c74
; _vsnprintf.llvm.17592004524093383706 (printf.c:760)
      0x80000c74 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000c78 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c80
; _vsnprintf.llvm.17592004524093383706 (printf.c:761)
      0x80000c80 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000c84 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000c8c addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000c88 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000c90 mv      a0, s2                 #; s2  = 0x80001584, (wrb) a0  <-- 0x80001584
      0x80000c94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c98 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000c9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000ca4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000ca8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000cac auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001cac
      0x80000cb0 jalr    ra, ra, -1656          #; ra  = 0x80001cac, (wrb) ra  <-- 0x80000cb4, goto 0x80001634
; _ftoa (printf.c:340)
      0x80001634 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001638 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000cb4 ~~> Word[0x0011fe9c]
      0x8000163c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001640 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001644 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001584 ~~> Word[0x0011fe90]
      0x80001648 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x8000164c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001650 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001654 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001658 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x8000165c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001660 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001664 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c6e ~~> Word[0x0011fe70]
      0x80001668 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x8000166c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001674 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003674
      0x80001678 addi    s1, s1, -1868          #; s1  = 0x80003674, (wrb) s1  <-- 0x80002f28
      0x80001670 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x8000167c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f28]
; _ftoa (printf.c:351)
      0x80001684 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001688 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x8000168c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001680 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001690 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001694 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001698 mv      s7, a0                 #; a0  = 0x80001584, (wrb) s7  <-- 0x80001584
; _ftoa (printf.c:351)
      0x8000169c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x8000178c
; _ftoa (printf.c:0)
      0x8000178c fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001790 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002790
      0x80001794 addi    a0, a0, 1952           #; a0  = 0x80002790, (wrb) a0  <-- 0x80002f30
      0x80001798 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f30]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x8000179c fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x800017a0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800017bc
; _ftoa (printf.c:0)
      0x800017bc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027bc
      0x800017c0 addi    a0, a0, 1916           #; a0  = 0x800027bc, (wrb) a0  <-- 0x80002f38
      0x800017c8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027c8
      0x800017cc addi    a0, a0, 1912           #; a0  = 0x800027c8, (wrb) a0  <-- 0x80002f40
      0x800017c4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f38]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x800017d0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f40]
; _ftoa (printf.c:358)
      0x800017d4 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x800017d8 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x800017dc and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800017e0 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018dc
; _ftoa (printf.c:374)
      0x800018dc andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x800018e0 li      s8, 6                  #; (wrb) s8  <-- 6
      0x800018e4 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018ec
; _ftoa (printf.c:0)
      0x800018ec li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x800018f4 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x8000192c
; _ftoa (printf.c:0)
      0x800018f0 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x8000192c li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001930 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001934 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002934
      0x80001938 addi    a1, a1, 1292           #; a1  = 0x80002934, (wrb) a1  <-- 0x80002e40
      0x8000193c add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e40, (wrb) a0  <-- 0x80002e70
      0x80001940 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e70]
; _ftoa (printf.c:383)
      0x80001944 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001948 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x8000194c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001954 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002954
      0x80001958 addi    a0, a0, 1524           #; a0  = 0x80002954, (wrb) a0  <-- 0x80002f48
      0x80001950 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
      0x8000195c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f48], (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x80001960 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001964 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001968 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x8000196c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001970 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001990
; _ftoa (printf.c:396)
      0x80001990 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001994 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800019a8
; _ftoa (printf.c:403)
      0x800019ac beqz    s8, pc + 216           #; s8  = 6, not taken
      0x800019a8 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x800019b0 li      a2, 0                  #; (wrb) a2  <-- 0
      0x800019b4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x800019b8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x800019bc li      t0, 32                 #; (wrb) t0  <-- 32
      0x800019c0 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x800019c4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x800019c8 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x800019cc li      a6, 10                 #; (wrb) a6  <-- 10
      0x800019d0 li      a7, 9                  #; (wrb) a7  <-- 9
      0x800019d4 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x800019d8 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x800019dc mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x800019e0 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x800019e4 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x800019e8 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x800019ec ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x800019f0 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x800019f4 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x800019f8 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x800019fc bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001a00 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001a04 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001a08 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001a0c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001a10 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001a14 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001a18 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001a1c bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a20 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001a24 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001a28 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001a2c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001a30 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001a34 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001a38 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001a3c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001a40 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001a44 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a4c
      0x80001a4c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001a50 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001a54 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a54
      0x80001a58 jalr    ra, ra, -1276          #; ra  = 0x80000a54, (wrb) ra  <-- 0x80001a5c, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001a5c, goto 0x80001a5c
; _ftoa (printf.c:0)
      0x80001a5c li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001a60 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001a64 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001a68 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001a6c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001a70 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a74 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001a78 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a60
      0x80001a60 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001a64 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001a68 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001a6c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001a70 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a74 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001a78 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a60
      0x80001a60 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001a64 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001a68 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001a6c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001a70 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a74 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001a78 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a60
      0x80001a60 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001a64 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001a68 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001a6c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001a70 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a74 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001a78 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a60
      0x80001a60 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001a64 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001a68 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001a6c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001a70 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001a74 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001a78 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001a7c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001a80 j       pc + 0x28              #; goto 0x80001aa8
      0x80001aa8 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001aac addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001ab0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001ab4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001ab8 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001abc sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001ac0 j       pc + 0x8               #; goto 0x80001ac8
; _ftoa (printf.c:0)
      0x80001ac8 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001acc mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001ad0 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001ad4 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001adc lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001ad8 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001ae0 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001ae4 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001ae8 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001aec li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001af0 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001af4 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001af8 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001afc srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001b00 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001b04 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001b08 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001b0c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001b10 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001b14 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001b18 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001b1c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001b20 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001b24 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001b28 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001b2c j       pc + 0x8               #; goto 0x80001b34
; _ftoa (printf.c:440)
      0x80001b34 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001b38 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001b3c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ba8
; _ftoa (printf.c:0)
      0x80001ba8 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001bac bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001bb0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001bc8
; _ftoa (printf.c:453)
      0x80001bc8 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001bcc bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001bd0 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001bd4 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c00
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c00 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001c04 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001c08 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001c0c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001c10 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001c14 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c18 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c44
; _ftoa (printf.c:0)
      0x80001c44 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c48 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001c4c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001c58 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001c5c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
                                                #; (lsu) a0  <-- 48
      0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c64 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 8
      0x800015a4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 9 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 8, (wrb) a4  <-- 0x80002fdc
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdc, 48 ~~> Byte[0x80003024]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 9
      0x800015b8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800015bc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c70 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001c74 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c78 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c50
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001c58 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001c5c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c64 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 9
      0x800015a4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 10 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 9, (wrb) a4  <-- 0x80002fdd
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdd, 46 ~~> Byte[0x80003025]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 10
      0x800015b8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800015bc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800015c4 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c70 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001c74 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c78 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c50
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001c58 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001c5c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c64 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 10
      0x800015a4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 11 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 10, (wrb) a4  <-- 0x80002fde
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fde, 48 ~~> Byte[0x80003026]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 11
      0x800015b8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800015bc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c70 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001c74 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c78 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c50
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001c58 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001c5c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c64 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 11
      0x800015a4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 12 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 11, (wrb) a4  <-- 0x80002fdf
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fdf, 48 ~~> Byte[0x80003027]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 12
      0x800015b8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800015bc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c70 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001c74 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c78 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c50
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001c58 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001c5c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c64 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 12
      0x800015a4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 13 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 12, (wrb) a4  <-- 0x80002fe0
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe0, 48 ~~> Byte[0x80003028]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 13
      0x800015b8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800015bc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c70 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001c74 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c78 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c50
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001c58 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001c5c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c64 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 13
      0x800015a4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 14 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 13, (wrb) a4  <-- 0x80002fe1
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe1, 48 ~~> Byte[0x80003029]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 14
      0x800015b8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800015bc snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c70 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001c74 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c78 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c50
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001c58 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001c5c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c64 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 14
      0x800015a4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 15 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 14, (wrb) a4  <-- 0x80002fe2
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe2, 48 ~~> Byte[0x8000302a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 15
      0x800015b8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800015bc snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c70 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001c74 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c78 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c50
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c50 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001c54 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001c58 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001c5c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001c60 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c64 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001c68 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c6c jalr    s7                     #; s7  = 0x80001584, (wrb) ra  <-- 0x80001c70, goto 0x80001584
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 15
      0x800015a4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 16 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 15, (wrb) a4  <-- 0x80002fe3
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe3, 48 ~~> Byte[0x8000302b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 16
      0x800015b8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800015bc snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015c8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015cc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80001c70, goto 0x80001c70
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c70 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001c74 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c78 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001c7c j       pc + 0x8               #; goto 0x80001c84
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c84 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001c88 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001c8c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001c90 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001c94 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001c98 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001cc8
; _ftoa (printf.c:0)
      0x80001cc8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001ccc mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001cd0 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001cdc lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001cd4 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001cd8 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002c6e
      0x80001ce0 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001ce4 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001ce8 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001cec lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001cf0 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001cf4 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001cf8 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001cfc lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001584
      0x80001d00 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001d04 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001d08 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001d0c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000cb4
      0x80001d10 ret                            #; ra  = 0x80000cb4, goto 0x80000cb4
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000cb4 j       pc + 0x7c0             #; goto 0x80001474
      0x80001474 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001478 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000147c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001480 addi    s0, s10, 1             #; s10 = 0x80002c6e, (wrb) s0  <-- 0x80002c6f
      0x80001484 j       pc - 0xa74             #; goto 0x80000a10
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a10 addi    s10, s0, 2             #; s0  = 0x80002c6f, (wrb) s10 <-- 0x80002c71
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a14 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000a18 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a1c lbu     a0, 0(s0)              #; s0  = 0x80002c6f, a0  <~~ Byte[0x80002c6f]
                                                #; (lsu) a0  <-- 10
      0x80000a20 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a24 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000a28 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000a2c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a30 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000a34 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a38 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80000a3c, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001588 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000158c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001590 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001594 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003594
      0x80001598 addi    a3, a3, -1472          #; a3  = 0x80003594, (wrb) a3  <-- 0x80002fd4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000159c add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fd4, (wrb) a1  <-- 0x80002fd4
      0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 16
      0x800015a4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800015a8 sw      a5, 0(a1)              #; a1  = 0x80002fd4, 17 ~~> Word[0x80002fd4]
      0x800015ac add     a4, a1, a4             #; a1  = 0x80002fd4, a4  = 16, (wrb) a4  <-- 0x80002fe4
      0x800015b0 sb      a0, 72(a4)             #; a4  = 0x80002fe4, 10 ~~> Byte[0x8000302c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015b4 lw      a4, 0(a1)              #; a1  = 0x80002fd4, a4  <~~ Word[0x80002fd4]
                                                #; (lsu) a4  <-- 17
      0x800015b8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800015bc snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800015c0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800015c4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800015c8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800015cc bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015d0 add     a0, a3, a2             #; a3  = 0x80002fd4, a2  = 0, (wrb) a0  <-- 0x80002fd4
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015d4 addi    a2, a0, 72             #; a0  = 0x80002fd4, (wrb) a2  <-- 0x8000301c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015d8 sw      zero, 12(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe0]
      0x800015dc li      a3, 64                 #; (wrb) a3  <-- 64
      0x800015e0 sw      a3, 8(a0)              #; a0  = 0x80002fd4, 64 ~~> Word[0x80002fdc]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015e4 sw      zero, 20(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002fe8]
      0x800015e8 li      a3, 1                  #; (wrb) a3  <-- 1
      0x800015ec sw      a3, 16(a0)             #; a0  = 0x80002fd4, 1 ~~> Word[0x80002fe4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015f0 sw      zero, 28(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff0]
      0x800015f4 sw      a2, 24(a0)             #; a0  = 0x80002fd4, 0x8000301c ~~> Word[0x80002fec]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015f8 lw      a2, 0(a1)              #; a1  = 0x80002fd4, a2  <~~ Word[0x80002fd4]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800015fc addi    a3, a0, 8              #; a0  = 0x80002fd4, (wrb) a3  <-- 0x80002fdc
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001600 sw      zero, 36(a0)           #; a0  = 0x80002fd4, 0 ~~> Word[0x80002ff8]
                                                #; (lsu) a2  <-- 17
      0x80001604 sw      a2, 32(a0)             #; a0  = 0x80002fd4, 17 ~~> Word[0x80002ff4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001608 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003608
      0x8000160c addi    a0, a0, -1864          #; a0  = 0x80003608, (wrb) a0  <-- 0x80002ec0
      0x80001610 sw      a3, 0(a0)              #; a0  = 0x80002ec0, 0x80002fdc ~~> Word[0x80002ec0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001614 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003614
      0x80001618 addi    a0, a0, -1812          #; a0  = 0x80003614, (wrb) a0  <-- 0x80002f00
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000161c lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 1
      0x80001620 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001624 sw      zero, 0(a0)            #; a0  = 0x80002f00, 0 ~~> Word[0x80002f00]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001628 sw      zero, 0(a1)            #; a1  = 0x80002fd4, 0 ~~> Word[0x80002fd4]
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80000a3c, goto 0x80000a3c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000a3c addi    s0, s0, 1              #; s0  = 0x80002c6f, (wrb) s0  <-- 0x80002c70
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000a40 addi    s10, s10, 1            #; s10 = 0x80002c71, (wrb) s10 <-- 0x80002c72
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000a44 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000a48 lbu     a0, 0(s0)              #; s0  = 0x80002c70, a0  <~~ Byte[0x80002c70]
                                                #; (lsu) a0  <-- 0
      0x80000a4c bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000a50 j       pc + 0xad8             #; goto 0x80001528
; _vsnprintf.llvm.17592004524093383706 (printf.c:853)
      0x80001528 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x8000152c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001534
      0x80001534 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001538 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x8000153c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001540 jalr    s2                     #; s2  = 0x80001584, (wrb) ra  <-- 0x80001544, goto 0x80001584
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001584 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000162c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000162c ret                            #; ra  = 0x80001544, goto 0x80001544
; _vsnprintf.llvm.17592004524093383706 (printf.c:856)
      0x80001544 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001548 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x8000154c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001550 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001554 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001558 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x8000155c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001560 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001564 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001568 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x8000156c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001570 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001574 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001578 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x8000157c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000980
      0x80001580 ret                            #; ra  = 0x80000980, goto 0x80000980
; printf_ (printf.c:869)
      0x80000980 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000984 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000910
      0x80000988 ret                            #; ra  = 0x80000910, goto 0x80000910
; main (bench_sp.c:0)
      0x80000910 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002910
      0x80000914 addi    a0, a0, 1552           #; a0  = 0x80002910, (wrb) a0  <-- 0x80002f20
      0x80000918 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f20]
; main (bench_sp.c:60)
      0x80000924 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x80000928 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (f:lsu) ft3  <-- 0.0001
; main (bench_sp.c:59)
      0x8000091c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
                                                #; (lsu) ra  <-- 0x800029e0
; main (bench_sp.c:60)
      0x8000092c ret                            #; ra  = 0x800029e0, goto 0x800029e0
      0x80000920 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x800029e0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x800029e4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029e4
      0x800029e8 jalr    ra, ra, 524            #; ra  = 0x800029e4, (wrb) ra  <-- 0x800029ec, goto 0x80002bf0
; ?? (start_snitch.S:33)
      0x80002bf0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002bf4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029ec ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002bf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bf8
      0x80002bfc jalr    ra, ra, -1260          #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80002c00, goto 0x8000270c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000270c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002710 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002714 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002718 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000271c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002720 ret                            #; ra  = 0x80002c00, (lsu) a0  <-- 0x00120190, goto 0x80002c00
; ?? (start_snitch.S:36)
      0x80002c00 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002c04 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002c08 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002c0c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029ec
; ?? (start_snitch.S:40)
      0x80002c10 ret                            #; ra  = 0x800029ec, goto 0x800029ec
; ?? (start.S:195)
      0x800029ec mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x800029f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029f0
      0x800029f4 jalr    ra, ra, 556            #; ra  = 0x800029f0, (wrb) ra  <-- 0x800029f8, goto 0x80002c1c
; ?? (start_snitch.S:15)
      0x80002c1c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002c20 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002c24 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029f8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002c28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c28
      0x80002c2c jalr    ra, ra, -1340          #; ra  = 0x80002c28, (wrb) ra  <-- 0x80002c30, goto 0x800026ec
; snrt_global_core_idx (team.c:32)
      0x800026ec lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026f0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026f4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026f8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026fc lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002700 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002704 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002708 ret                            #; ra  = 0x80002c30, goto 0x80002c30
; ?? (start_snitch.S:20)
      0x80002c30 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002c34 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002c38 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002c3c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x800029f8
; ?? (start_snitch.S:28)
      0x80002c40 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002c44 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002c48 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c48
      0x80002c4c addi    t1, t1, 632            #; t1  = 0x80002c48, (wrb) t1  <-- 0x80002ec0
; ?? (start_snitch.S:31)
      0x80002c50 sw      t0, 0(t1)              #; t1  = 0x80002ec0, 1 ~~> Word[0x80002ec0]
; ?? (start_snitch.S:32)
      0x80002c54 ret                            #; ra  = 0x800029f8, goto 0x800029f8
; ?? (start.S:198)
      0x800029f8 wfi                            #; 
                        tion 0 @ (12, 4827):
                           38
                           50
                            1
                            0
                      18.2105
                       0.3493
                       0.2062
                          1.0
                          1.0
                            0
                          1.0
                            0
                       0.0907
                       0.0897
                       0.9886
                         4816
                       0.4400
            tion 1 @ (4829, 5240):
                            0
                            0
                            0
                       0.4702
                       0.3179
                          1.0
                          1.0
                           58
                          3.5
                            0
                       0.2191
                       0.1830
                       0.8350
                          470
                       0.6894
            tion 2 @ (5242, 11069):
                          171
                          178
                           13
                            4
                       9.7921
                       0.2984
                       0.0208
                          1.0
                          1.0
                            0
                       0.5143
                       5.9231
                       0.0063
                       0.0060
                       0.9459
                         5828
                       0.3047
