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
      0x80002828 addi    t0, t0, 2028           #; t0  = 0x80002824, (wrb) t0  <-- 0x80003010
; ?? (start.S:49)
      0x8000282c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000282c
      0x80002830 addi    t1, t1, 2024           #; t1  = 0x8000282c, (wrb) t1  <-- 0x80003014
; ?? (start.S:50)
      0x80002834 bge     t0, t1, pc + 16        #; t0  = 0x80003010, t1  = 0x80003014, not taken
; ?? (start.S:51)
      0x80002838 sw      zero, 0(t0)            #; t0  = 0x80003010, 0 ~~> Word[0x80003010]
; ?? (start.S:52)
      0x8000283c addi    t0, t0, 4              #; t0  = 0x80003010, (wrb) t0  <-- 0x80003014
; ?? (start.S:53)
      0x80002840 blt     t0, t1, pc - 8         #; t0  = 0x80003014, t1  = 0x80003014, not taken
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
      0x800029a8 jalr    ra, ra, -1052          #; ra  = 0x800029a4, (wrb) ra  <-- 0x800029ac, goto 0x80002588
; _snrt_init_team (start.c:49)
      0x80002588 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x8000258c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002590 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002594 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002598 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x8000259c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800025a0 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800025a4 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800025a8 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800025ac sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800025b0 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800025b4 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800025b8 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800025bc sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800025c0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800025c4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800025c8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800025cc lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800025d0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800025d4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800025d8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800025dc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800025e0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800025e4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800025e8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800025ec sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800025f0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800025f4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800025f8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800025fc sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002600 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002604 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002608 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x8000260c sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002610 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002614 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002618 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x8000261c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002620 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002624 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002628 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x8000262c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002630 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002634 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002638 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x8000263c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002640 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002644 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002648 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000264c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002650 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002654 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002658 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x8000265c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002660 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002664 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002668 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x8000266c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80002670 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002674 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002678 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x8000267c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000367c
      0x80002680 addi    a1, a1, -1640          #; a1  = 0x8000367c, (wrb) a1  <-- 0x80003014
      0x80002684 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003014, (wrb) a0  <-- 0x80003014
      0x80002688 sw      zero, 0(a0)            #; a0  = 0x80003014, 0 ~~> Word[0x80003014]
; _snrt_init_team (start.c:86)
      0x8000268c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002690 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002694 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002698 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x8000269c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x800026a0 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x800026a4 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x800026a8 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x800026ac sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800026b0 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800026b4 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800026b8 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800026bc lw      a0, 0(a1)              #; a1  = 0x80003014, a0  <~~ Word[0x80003014]
                                                #; (lsu) a0  <-- 0
      0x800026c0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800026c4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800026c8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800026cc sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800026d0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800026d4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026d8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026dc sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800026e0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026e4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026e8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800026ec ret                            #; ra  = 0x800029ac, goto 0x800029ac
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
      0x80002bfc jalr    ra, ra, -1256          #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80002c00, goto 0x80002710
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002710 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002714 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002718 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000271c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002720 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002724 ret                            #; ra  = 0x80002c00, goto 0x80002c00
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
; main (test_reverse_conflict.c:23)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_reverse_conflict.c:24)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029e0 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_reverse_conflict.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_reverse_conflict.c:24)
      0x80000650 bnez    a1, pc + 724           #; a1  = 0, not taken
; main (test_reverse_conflict.c:0)
      0x80000654 lui     a0, 0x100              #; (wrb) a0  <-- 0x00100000
      0x80000658 lui     a1, 0x3ff00            #; (wrb) a1  <-- 0x3ff00000
; init_data (test_reverse_conflict.c:11)
;  in main (test_reverse_conflict.c:31)
      0x8000065c sw      a1, 4(a0)              #; a0  = 0x00100000, 0x3ff00000 ~~> Word[0x00100004]
      0x80000660 sw      zero, 0(a0)            #; a0  = 0x00100000, 0 ~~> Word[0x00100000]
      0x80000664 lui     a1, 0x3ff03            #; (wrb) a1  <-- 0x3ff03000
      0x80000668 addi    a1, a1, -1803          #; a1  = 0x3ff03000, (wrb) a1  <-- 0x3ff028f5
      0x8000066c sw      a1, 12(a0)             #; a0  = 0x00100000, 0x3ff028f5 ~~> Word[0x0010000c]
      0x80000670 lui     a1, 0xc28f6            #; (wrb) a1  <-- 0xc28f6000
      0x80000674 addi    a1, a1, -983           #; a1  = 0xc28f6000, (wrb) a1  <-- 0xc28f5c29
      0x80000678 sw      a1, 8(a0)              #; a0  = 0x00100000, 0xc28f5c29 ~~> Word[0x00100008]
      0x8000067c lui     a2, 0x3ff05            #; (wrb) a2  <-- 0x3ff05000
      0x80000680 addi    a2, a2, 491            #; a2  = 0x3ff05000, (wrb) a2  <-- 0x3ff051eb
      0x80000684 sw      a2, 20(a0)             #; a0  = 0x00100000, 0x3ff051eb ~~> Word[0x00100014]
      0x80000688 lui     a2, 0x851ec            #; (wrb) a2  <-- 0x851ec000
      0x8000068c addi    a2, a2, -1966          #; a2  = 0x851ec000, (wrb) a2  <-- 0x851eb852
      0x80000690 sw      a2, 16(a0)             #; a0  = 0x00100000, 0x851eb852 ~~> Word[0x00100010]
      0x80000694 lui     a2, 0x3ff08            #; (wrb) a2  <-- 0x3ff08000
      0x80000698 addi    a2, a2, -1311          #; a2  = 0x3ff08000, (wrb) a2  <-- 0x3ff07ae1
      0x8000069c sw      a2, 28(a0)             #; a0  = 0x00100000, 0x3ff07ae1 ~~> Word[0x0010001c]
      0x800006a0 lui     a2, 0x47ae1            #; (wrb) a2  <-- 0x47ae1000
      0x800006a4 addi    a2, a2, 1147           #; a2  = 0x47ae1000, (wrb) a2  <-- 0x47ae147b
      0x800006a8 sw      a2, 24(a0)             #; a0  = 0x00100000, 0x47ae147b ~~> Word[0x00100018]
      0x800006ac lui     a2, 0x3ff0a            #; (wrb) a2  <-- 0x3ff0a000
      0x800006b0 addi    a2, a2, 983            #; a2  = 0x3ff0a000, (wrb) a2  <-- 0x3ff0a3d7
      0x800006b4 sw      a2, 36(a0)             #; a0  = 0x00100000, 0x3ff0a3d7 ~~> Word[0x00100024]
      0x800006b8 lui     a2, 0xa3d7             #; (wrb) a2  <-- 0x0a3d7000
      0x800006bc addi    a2, a2, 164            #; a2  = 0x0a3d7000, (wrb) a2  <-- 0x0a3d70a4
      0x800006c0 sw      a2, 32(a0)             #; a0  = 0x00100000, 0x0a3d70a4 ~~> Word[0x00100020]
      0x800006c4 lui     a3, 0x3ff0d            #; (wrb) a3  <-- 0x3ff0d000
      0x800006c8 addi    a3, a3, -820           #; a3  = 0x3ff0d000, (wrb) a3  <-- 0x3ff0cccc
      0x800006cc sw      a3, 44(a0)             #; a0  = 0x00100000, 0x3ff0cccc ~~> Word[0x0010002c]
      0x800006d0 lui     a3, 0xccccd            #; (wrb) a3  <-- 0xccccd000
      0x800006d4 addi    a3, a3, -819           #; a3  = 0xccccd000, (wrb) a3  <-- 0xcccccccd
      0x800006d8 sw      a3, 40(a0)             #; a0  = 0x00100000, 0xcccccccd ~~> Word[0x00100028]
      0x800006dc lui     a3, 0x3ff0f            #; (wrb) a3  <-- 0x3ff0f000
      0x800006e0 addi    a3, a3, 1474           #; a3  = 0x3ff0f000, (wrb) a3  <-- 0x3ff0f5c2
      0x800006e4 sw      a3, 52(a0)             #; a0  = 0x00100000, 0x3ff0f5c2 ~~> Word[0x00100034]
      0x800006e8 lui     a3, 0x8f5c3            #; (wrb) a3  <-- 0x8f5c3000
      0x800006ec addi    a3, a3, -1802          #; a3  = 0x8f5c3000, (wrb) a3  <-- 0x8f5c28f6
      0x800006f0 sw      a3, 48(a0)             #; a0  = 0x00100000, 0x8f5c28f6 ~~> Word[0x00100030]
      0x800006f4 lui     a3, 0x3ff12            #; (wrb) a3  <-- 0x3ff12000
      0x800006f8 addi    a3, a3, -328           #; a3  = 0x3ff12000, (wrb) a3  <-- 0x3ff11eb8
      0x800006fc sw      a3, 60(a0)             #; a0  = 0x00100000, 0x3ff11eb8 ~~> Word[0x0010003c]
      0x80000700 lui     a3, 0x51eb8            #; (wrb) a3  <-- 0x51eb8000
      0x80000704 addi    a3, a3, 1311           #; a3  = 0x51eb8000, (wrb) a3  <-- 0x51eb851f
      0x80000708 sw      a3, 56(a0)             #; a0  = 0x00100000, 0x51eb851f ~~> Word[0x00100038]
      0x8000070c lui     a4, 0x3ff14            #; (wrb) a4  <-- 0x3ff14000
      0x80000710 addi    a4, a4, 1966           #; a4  = 0x3ff14000, (wrb) a4  <-- 0x3ff147ae
      0x80000714 sw      a4, 68(a0)             #; a0  = 0x00100000, 0x3ff147ae ~~> Word[0x00100044]
      0x80000718 lui     a4, 0x147ae            #; (wrb) a4  <-- 0x147ae000
      0x8000071c addi    a4, a4, 328            #; a4  = 0x147ae000, (wrb) a4  <-- 0x147ae148
      0x80000720 sw      a4, 64(a0)             #; a0  = 0x00100000, 0x147ae148 ~~> Word[0x00100040]
      0x80000724 lui     a4, 0x3ff17            #; (wrb) a4  <-- 0x3ff17000
      0x80000728 addi    a4, a4, 163            #; a4  = 0x3ff17000, (wrb) a4  <-- 0x3ff170a3
      0x8000072c sw      a4, 76(a0)             #; a0  = 0x00100000, 0x3ff170a3 ~~> Word[0x0010004c]
      0x80000730 lui     a4, 0xd70a4            #; (wrb) a4  <-- 0xd70a4000
      0x80000734 addi    a4, a4, -655           #; a4  = 0xd70a4000, (wrb) a4  <-- 0xd70a3d71
      0x80000738 sw      a4, 72(a0)             #; a0  = 0x00100000, 0xd70a3d71 ~~> Word[0x00100048]
      0x8000073c lui     a4, 0x40240            #; (wrb) a4  <-- 0x40240000
; init_data (test_reverse_conflict.c:11)
;  in main (test_reverse_conflict.c:32)
      0x80000740 sw      a4, 84(a0)             #; a0  = 0x00100000, 0x40240000 ~~> Word[0x00100054]
      0x80000744 sw      zero, 80(a0)           #; a0  = 0x00100000, 0 ~~> Word[0x00100050]
      0x80000748 addi    a4, a4, 1310           #; a4  = 0x40240000, (wrb) a4  <-- 0x4024051e
      0x8000074c sw      a4, 92(a0)             #; a0  = 0x00100000, 0x4024051e ~~> Word[0x0010005c]
      0x80000750 lui     a4, 0xb851f            #; (wrb) a4  <-- 0xb851f000
      0x80000754 addi    a4, a4, -1147          #; a4  = 0xb851f000, (wrb) a4  <-- 0xb851eb85
      0x80000758 sw      a4, 88(a0)             #; a0  = 0x00100000, 0xb851eb85 ~~> Word[0x00100058]
      0x8000075c lui     a4, 0x40241            #; (wrb) a4  <-- 0x40241000
      0x80000760 addi    a5, a4, -1475          #; a4  = 0x40241000, (wrb) a5  <-- 0x40240a3d
      0x80000764 sw      a5, 100(a0)            #; a0  = 0x00100000, 0x40240a3d ~~> Word[0x00100064]
      0x80000768 lui     a5, 0x70a3d            #; (wrb) a5  <-- 0x70a3d000
      0x8000076c addi    a5, a5, 1802           #; a5  = 0x70a3d000, (wrb) a5  <-- 0x70a3d70a
      0x80000770 sw      a5, 96(a0)             #; a0  = 0x00100000, 0x70a3d70a ~~> Word[0x00100060]
      0x80000774 addi    a5, a4, -164           #; a4  = 0x40241000, (wrb) a5  <-- 0x40240f5c
      0x80000778 sw      a5, 108(a0)            #; a0  = 0x00100000, 0x40240f5c ~~> Word[0x0010006c]
      0x8000077c lui     a5, 0x28f5c            #; (wrb) a5  <-- 0x28f5c000
      0x80000780 addi    a5, a5, 655            #; a5  = 0x28f5c000, (wrb) a5  <-- 0x28f5c28f
      0x80000784 sw      a5, 104(a0)            #; a0  = 0x00100000, 0x28f5c28f ~~> Word[0x00100068]
      0x80000788 addi    a4, a4, 1146           #; a4  = 0x40241000, (wrb) a4  <-- 0x4024147a
      0x8000078c sw      a4, 116(a0)            #; a0  = 0x00100000, 0x4024147a ~~> Word[0x00100074]
      0x80000790 lui     a4, 0xe147b            #; (wrb) a4  <-- 0xe147b000
      0x80000794 addi    a4, a4, -492           #; a4  = 0xe147b000, (wrb) a4  <-- 0xe147ae14
      0x80000798 sw      a4, 112(a0)            #; a0  = 0x00100000, 0xe147ae14 ~~> Word[0x00100070]
      0x8000079c lui     a4, 0x40242            #; (wrb) a4  <-- 0x40242000
      0x800007a0 addi    a5, a4, -1639          #; a4  = 0x40242000, (wrb) a5  <-- 0x40241999
      0x800007a4 sw      a5, 124(a0)            #; a0  = 0x00100000, 0x40241999 ~~> Word[0x0010007c]
      0x800007a8 lui     a5, 0x9999a            #; (wrb) a5  <-- 0x9999a000
      0x800007ac addi    a5, a5, -1638          #; a5  = 0x9999a000, (wrb) a5  <-- 0x9999999a
      0x800007b0 sw      a5, 120(a0)            #; a0  = 0x00100000, 0x9999999a ~~> Word[0x00100078]
      0x800007b4 addi    a5, a4, -328           #; a4  = 0x40242000, (wrb) a5  <-- 0x40241eb8
      0x800007b8 sw      a5, 132(a0)            #; a0  = 0x00100000, 0x40241eb8 ~~> Word[0x00100084]
      0x800007bc sw      a3, 128(a0)            #; a0  = 0x00100000, 0x51eb851f ~~> Word[0x00100080]
      0x800007c0 addi    a3, a4, 983            #; a4  = 0x40242000, (wrb) a3  <-- 0x402423d7
      0x800007c4 sw      a3, 140(a0)            #; a0  = 0x00100000, 0x402423d7 ~~> Word[0x0010008c]
      0x800007c8 sw      a2, 136(a0)            #; a0  = 0x00100000, 0x0a3d70a4 ~~> Word[0x00100088]
      0x800007cc lui     a2, 0x40243            #; (wrb) a2  <-- 0x40243000
      0x800007d0 addi    a3, a2, -1803          #; a2  = 0x40243000, (wrb) a3  <-- 0x402428f5
      0x800007d4 sw      a3, 148(a0)            #; a0  = 0x00100000, 0x402428f5 ~~> Word[0x00100094]
      0x800007d8 sw      a1, 144(a0)            #; a0  = 0x00100000, 0xc28f5c29 ~~> Word[0x00100090]
      0x800007dc addi    a1, a2, -492           #; a2  = 0x40243000, (wrb) a1  <-- 0x40242e14
      0x800007e0 sw      a1, 156(a0)            #; a0  = 0x00100000, 0x40242e14 ~~> Word[0x0010009c]
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x800007e8 lui     a1, 0x7ae14            #; (wrb) a1  <-- 0x7ae14000
      0x800007ec addi    a1, a1, 1966           #; a1  = 0x7ae14000, (wrb) a1  <-- 0x7ae147ae
      0x800007e4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft0  <-- 1.0
; init_data (test_reverse_conflict.c:11)
;  in main (test_reverse_conflict.c:32)
      0x800007f0 sw      a1, 152(a0)            #; a0  = 0x00100000, 0x7ae147ae ~~> Word[0x00100098]
; reverse_conflict (reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:34)
      0x800007f8 auipc   a1, 0x2                #; (wrb) a1  <-- 0x800027f8
      0x800007fc addi    a1, a1, 1824           #; a1  = 0x800027f8, (wrb) a1  <-- 0x80002f18
      0x800007f4 fadd.d  ft1, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
                                                #; (f:fpu) ft1  <-- 2.0
      0x80000804 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002804
      0x80000808 addi    a1, a1, 1820           #; a1  = 0x80002804, (wrb) a1  <-- 0x80002f20
      0x80000800 fld     ft2, 0(a1)             #; ft2  <~~ Doub[0x80002f18]
      0x8000080c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002f20]
                                                #; (f:lsu) ft2  <-- 4.0
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x80000810 fsd     ft1, 8(a0)             #; 2.0 ~~> Doub[0x00100008], (f:lsu) ft3  <-- 8.0
      0x80000814 fmul.d  ft1, ft0, ft2          #; ft0  = 1.0, ft2  = 4.0
                                                #; (f:fpu) ft1  <-- 4.0
      0x80000818 fsd     ft1, 16(a0)            #; 4.0 ~~> Doub[0x00100010]
      0x8000081c fmul.d  ft1, ft0, ft3          #; ft0  = 1.0, ft3  = 8.0
                                                #; (f:fpu) ft1  <-- 8.0
; reverse_conflict (reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:34)
      0x80000820 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002820
      0x80000824 addi    a1, a1, 1800           #; a1  = 0x80002820, (wrb) a1  <-- 0x80002f28
      0x8000082c auipc   a1, 0x2                #; (wrb) a1  <-- 0x8000282c
      0x80000828 fld     ft2, 0(a1)             #; ft2  <~~ Doub[0x80002f28]
      0x80000830 addi    a1, a1, 1796           #; a1  = 0x8000282c, (wrb) a1  <-- 0x80002f30
                                                #; (f:lsu) ft2  <-- 16.0
      0x80000834 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002f30]
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x80000838 fsd     ft1, 24(a0)            #; 8.0 ~~> Doub[0x00100018]
      0x8000083c fmul.d  ft1, ft0, ft2          #; ft0  = 1.0, ft2  = 16.0
                                                #; (f:fpu) ft1  <-- 16.0
                                                #; (f:lsu) ft3  <-- 32.0
; reverse_conflict (reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:34)
      0x80000848 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002848
      0x80000840 fsd     ft1, 32(a0)            #; 16.0 ~~> Doub[0x00100020]
      0x8000084c addi    a1, a1, 1776           #; a1  = 0x80002848, (wrb) a1  <-- 0x80002f38
      0x80000844 fmul.d  ft1, ft0, ft3          #; ft0  = 1.0, ft3  = 32.0
                                                #; (f:fpu) ft1  <-- 32.0
      0x80000854 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002854
      0x80000858 addi    a1, a1, 1772           #; a1  = 0x80002854, (wrb) a1  <-- 0x80002f40
      0x80000850 fld     ft2, 0(a1)             #; ft2  <~~ Doub[0x80002f38]
      0x8000085c fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002f40]
                                                #; (f:lsu) ft2  <-- 64.0
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x80000860 fsd     ft1, 40(a0)            #; 32.0 ~~> Doub[0x00100028], (f:lsu) ft3  <-- 128.0
      0x80000864 fmul.d  ft1, ft0, ft2          #; ft0  = 1.0, ft2  = 64.0
                                                #; (f:fpu) ft1  <-- 64.0
      0x80000868 fsd     ft1, 48(a0)            #; 64.0 ~~> Doub[0x00100030]
      0x8000086c fmul.d  ft1, ft0, ft3          #; ft0  = 1.0, ft3  = 128.0
                                                #; (f:fpu) ft1  <-- 128.0
; reverse_conflict (reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:34)
      0x80000870 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002870
      0x80000874 addi    a1, a1, 1752           #; a1  = 0x80002870, (wrb) a1  <-- 0x80002f48
      0x8000087c auipc   a1, 0x2                #; (wrb) a1  <-- 0x8000287c
      0x80000878 fld     ft2, 0(a1)             #; ft2  <~~ Doub[0x80002f48]
      0x80000880 addi    a1, a1, 1748           #; a1  = 0x8000287c, (wrb) a1  <-- 0x80002f50
                                                #; (f:lsu) ft2  <-- 256.0
      0x80000884 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002f50]
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x80000888 fsd     ft1, 56(a0)            #; 128.0 ~~> Doub[0x00100038]
      0x8000088c fmul.d  ft1, ft0, ft2          #; ft0  = 1.0, ft2  = 256.0
                                                #; (f:fpu) ft1  <-- 256.0
                                                #; (f:lsu) ft3  <-- 512.0
      0x80000890 fsd     ft1, 64(a0)            #; 256.0 ~~> Doub[0x00100040]
      0x80000894 fmul.d  ft0, ft0, ft3          #; ft0  = 1.0, ft3  = 512.0
                                                #; (f:fpu) ft0  <-- 512.0
      0x80000898 fsd     ft0, 72(a0)            #; 512.0 ~~> Doub[0x00100048]
; sumup (test_reverse_conflict.c:18)
;  in main (test_reverse_conflict.c:36)
      0x8000089c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft1  <-- 1.0
      0x800008a0 fld     ft2, 8(a0)             #; ft2  <~~ Doub[0x00100008]
      0x800008a4 fld     ft3, 16(a0)            #; ft3  <~~ Doub[0x00100010], (f:lsu) ft2  <-- 2.0
      0x800008a8 fld     ft4, 24(a0)            #; ft4  <~~ Doub[0x00100018], (f:lsu) ft3  <-- 4.0
      0x800008ac fld     ft5, 32(a0)            #; ft5  <~~ Doub[0x00100020], (f:lsu) ft4  <-- 8.0
                                                #; (f:lsu) ft5  <-- 16.0
; sumup (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:36)
      0x800008b4 auipc   a1, 0x2                #; (wrb) a1  <-- 0x800028b4
      0x800008b8 addi    a1, a1, 1700           #; a1  = 0x800028b4, (wrb) a1  <-- 0x80002f58
      0x800008b0 fld     ft6, 40(a0)            #; ft6  <~~ Doub[0x00100028]
                                                #; (f:lsu) ft6  <-- 32.0
      0x800008bc fld     ft7, 0(a1)             #; ft7  <~~ Doub[0x80002f58]
; sumup (test_reverse_conflict.c:18)
;  in main (test_reverse_conflict.c:36)
      0x800008c0 fld     fa0, 48(a0)            #; fa0  <~~ Doub[0x00100030], (f:lsu) ft7  <-- -1023.0
      0x800008c4 fld     fa1, 56(a0)            #; fa1  <~~ Doub[0x00100038], (f:lsu) fa0  <-- 64.0
      0x800008c8 fld     fa2, 64(a0)            #; fa2  <~~ Doub[0x00100040], (f:lsu) fa1  <-- 128.0
      0x800008cc fadd.d  ft1, ft1, ft7          #; ft1  = 1.0, ft7  = -1023.0, (f:lsu) fa2  <-- 256.0
                                                #; (f:fpu) ft1  <-- -1022.0
      0x800008d0 fadd.d  ft1, ft1, ft2          #; ft1  = -1022.0, ft2  = 2.0
                                                #; (f:fpu) ft1  <-- -1020.0
      0x800008d4 fadd.d  ft1, ft1, ft3          #; ft1  = -1020.0, ft3  = 4.0
                                                #; (f:fpu) ft1  <-- -1016.0
      0x800008d8 fadd.d  ft1, ft1, ft4          #; ft1  = -1016.0, ft4  = 8.0
                                                #; (f:fpu) ft1  <-- -1008.0
      0x800008dc fadd.d  ft1, ft1, ft5          #; ft1  = -1008.0, ft5  = 16.0
                                                #; (f:fpu) ft1  <-- -992.0
      0x800008e0 fadd.d  ft1, ft1, ft6          #; ft1  = -992.0, ft6  = 32.0
                                                #; (f:fpu) ft1  <-- -960.0
      0x800008e4 fadd.d  ft1, ft1, fa0          #; ft1  = -960.0, fa0  = 64.0
                                                #; (f:fpu) ft1  <-- -896.0
      0x800008e8 fadd.d  ft1, ft1, fa1          #; ft1  = -896.0, fa1  = 128.0
; main (test_reverse_conflict.c:42)
      0x800008fc lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                                                #; (f:fpu) ft1  <-- -768.0
                                                #; (lsu) a2  <-- 0
      0x800008ec fadd.d  ft1, ft1, fa2          #; ft1  = -768.0, fa2  = 256.0
                                                #; (f:fpu) ft1  <-- -512.0
; main (test_reverse_conflict.c:39)
      0x800008f0 fadd.d  ft0, ft1, ft0          #; ft1  = -512.0, ft0  = 512.0
; main (test_reverse_conflict.c:42)
      0x80000900 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x80000904 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002904
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000908 addi    a0, a0, 865            #; a0  = 0x80002904, (wrb) a0  <-- 0x80002c65
      0x800008f4 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
      0x8000090c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000090c
                                                #; (f:fpu) fs0  <-- 0.0
                                                #; (lsu) a3  <-- 0
      0x800008f8 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x80000910 jalr    ra, ra, 40             #; ra  = 0x8000090c, (wrb) ra  <-- 0x80000914, goto 0x80000934
; printf_ (printf.c:863)
      0x80000934 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000938 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000914 ~~> Word[0x0011ff1c]
      0x8000093c mv      t0, a0                 #; a0  = 0x80002c65, (wrb) t0  <-- 0x80002c65
      0x80000940 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
      0x80000944 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
      0x80000948 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x40241eb8 ~~> Word[0x0011ff34]
      0x8000094c sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0x40242000 ~~> Word[0x0011ff30]
      0x80000950 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000954 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000958 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x80002f58 ~~> Word[0x0011ff24]
      0x8000095c addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000960 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000964 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001964
      0x80000968 addi    a0, a0, -988           #; a0  = 0x80001964, (wrb) a0  <-- 0x80001588
      0x8000096c addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000970 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000974 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000978 mv      a3, t0                 #; t0  = 0x80002c65, (wrb) a3  <-- 0x80002c65
      0x8000097c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000097c
      0x80000980 jalr    ra, ra, 20             #; ra  = 0x8000097c, (wrb) ra  <-- 0x80000984, goto 0x80000990
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000990 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000994 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000984 ~~> Word[0x0011ff0c]
      0x80000998 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x8000099c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x800009a0 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x800009a4 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x800009a8 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x800009ac sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x800009b0 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x800009b4 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x800009b8 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x800009bc sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x800009c0 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x800009c4 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x800009c8 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x800009cc mv      s0, a3                 #; a3  = 0x80002c65, (wrb) s0  <-- 0x80002c65
      0x800009d0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800009d4 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x800009d8 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009dc mv      s2, a0                 #; a0  = 0x80001588, (wrb) s2  <-- 0x80001588
      0x800009e0 j       pc + 0xc               #; goto 0x800009ec
      0x800009ec li      s8, 0                  #; (wrb) s8  <-- 0
      0x800009f0 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800009f4 li      s11, 16                #; (wrb) s11 <-- 16
      0x800009f8 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800009fc lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000a00 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000a04 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000a08 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000a0c addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000a10 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 addi    s10, s0, 2             #; s0  = 0x80002c65, (wrb) s10 <-- 0x80002c67
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a18 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000a1c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a20 lbu     a0, 0(s0)              #; s0  = 0x80002c65, a0  <~~ Byte[0x80002c65]
                                                #; (lsu) a0  <-- 101
      0x80000a24 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000a28 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a2c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a34 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 0
      0x800015a8 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 1 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 0, (wrb) a4  <-- 0x80003014
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003014, 101 ~~> Byte[0x8000305c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 1
      0x800015bc addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800015c0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800015c8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c65, (wrb) s0  <-- 0x80002c66
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c67, (wrb) s10 <-- 0x80002c68
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c66, a0  <~~ Byte[0x80002c66]
                                                #; (lsu) a0  <-- 114
      0x80000a50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a28
      0x80000a28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a2c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a34 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 1
      0x800015a8 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 2 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 1, (wrb) a4  <-- 0x80003015
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003015, 114 ~~> Byte[0x8000305d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 2
      0x800015bc addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800015c0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c66, (wrb) s0  <-- 0x80002c67
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c68, (wrb) s10 <-- 0x80002c69
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c67, a0  <~~ Byte[0x80002c67]
                                                #; (lsu) a0  <-- 114
      0x80000a50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a28
      0x80000a28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a2c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a34 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 2
      0x800015a8 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 3 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 2, (wrb) a4  <-- 0x80003016
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003016, 114 ~~> Byte[0x8000305e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 3
      0x800015bc addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800015c0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c67, (wrb) s0  <-- 0x80002c68
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c69, (wrb) s10 <-- 0x80002c6a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c68, a0  <~~ Byte[0x80002c68]
                                                #; (lsu) a0  <-- 111
      0x80000a50 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a28
      0x80000a28 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a2c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a34 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 3
      0x800015a8 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 4 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 3, (wrb) a4  <-- 0x80003017
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003017, 111 ~~> Byte[0x8000305f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 4
      0x800015bc addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800015c0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800015c8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c68, (wrb) s0  <-- 0x80002c69
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c6a, (wrb) s10 <-- 0x80002c6b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c69, a0  <~~ Byte[0x80002c69]
                                                #; (lsu) a0  <-- 114
      0x80000a50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a28
      0x80000a28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a2c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a34 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 4
      0x800015a8 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 5 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 4, (wrb) a4  <-- 0x80003018
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003018, 114 ~~> Byte[0x80003060]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 5
      0x800015bc addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800015c0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c69, (wrb) s0  <-- 0x80002c6a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c6b, (wrb) s10 <-- 0x80002c6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c6a, a0  <~~ Byte[0x80002c6a]
                                                #; (lsu) a0  <-- 32
      0x80000a50 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a28
      0x80000a28 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a2c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a34 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 5
      0x800015a8 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 6 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 5, (wrb) a4  <-- 0x80003019
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003019, 32 ~~> Byte[0x80003061]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 6
      0x800015bc addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800015c0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015c8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c6a, (wrb) s0  <-- 0x80002c6b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c6c, (wrb) s10 <-- 0x80002c6d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c6b, a0  <~~ Byte[0x80002c6b]
                                                #; (lsu) a0  <-- 61
      0x80000a50 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a28
      0x80000a28 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a2c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a34 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 6
      0x800015a8 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 7 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 6, (wrb) a4  <-- 0x8000301a
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301a, 61 ~~> Byte[0x80003062]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 7
      0x800015bc addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800015c0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800015c8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c6b, (wrb) s0  <-- 0x80002c6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c6d, (wrb) s10 <-- 0x80002c6e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c6c, a0  <~~ Byte[0x80002c6c]
                                                #; (lsu) a0  <-- 32
      0x80000a50 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a28
      0x80000a28 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a2c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a34 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 7
      0x800015a8 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 8 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 7, (wrb) a4  <-- 0x8000301b
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301b, 32 ~~> Byte[0x80003063]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 8
      0x800015bc addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800015c0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015c8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c6c, (wrb) s0  <-- 0x80002c6d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c6e, (wrb) s10 <-- 0x80002c6f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c6d, a0  <~~ Byte[0x80002c6d]
                                                #; (lsu) a0  <-- 37
      0x80000a50 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a28
      0x80000a28 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a58
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000a58 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a5c j       pc + 0x10              #; goto 0x80000a6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000a6c lbu     a0, -1(s10)            #; s10 = 0x80002c6f, a0  <~~ Byte[0x80002c6e]
                                                #; (lsu) a0  <-- 102
      0x80000a70 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000a74 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000aac
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000aac addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000ab0 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000ab4 addi    a1, s10, -1            #; s10 = 0x80002c6f, (wrb) a1  <-- 0x80002c6e
      0x80000ab8 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000abc bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b38
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000b38 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000b3c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b8c li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b90 mv      s10, a1                #; a1  = 0x80002c6e, (wrb) s10 <-- 0x80002c6e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000b94 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b98 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b9c j       pc + 0xc               #; goto 0x80000ba8
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000ba8 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000bac srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000bb0 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000bb4 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000bb8 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000bbc bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c20
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000c20 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000c24 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c28 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c2c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000c30 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c30
      0x80000c34 addi    a2, a2, 180            #; a2  = 0x80002c30, (wrb) a2  <-- 0x80002ce4
      0x80000c38 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002ce4, (wrb) a1  <-- 0x80002de8
      0x80000c3c lw      a2, 0(a1)              #; a1  = 0x80002de8, a2  <~~ Word[0x80002de8]
      0x80000c40 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000c44 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c78
      0x80000c48 jr      a2                     #; a2  = 0x80000c78, goto 0x80000c78
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000c78 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000c7c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c84
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000c84 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000c88 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000c8c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000c90 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000c94 mv      a0, s2                 #; s2  = 0x80001588, (wrb) a0  <-- 0x80001588
      0x80000c98 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c9c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca4 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000ca8 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000cac mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000cb0 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001cb0
      0x80000cb4 jalr    ra, ra, -1656          #; ra  = 0x80001cb0, (wrb) ra  <-- 0x80000cb8, goto 0x80001638
; _ftoa (printf.c:340)
      0x80001638 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x8000163c sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000cb8 ~~> Word[0x0011fe9c]
      0x80001640 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001644 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001648 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001588 ~~> Word[0x0011fe90]
      0x8000164c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001650 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001654 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001658 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x8000165c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001660 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001664 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001668 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c6e ~~> Word[0x0011fe70]
      0x8000166c fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x80001678 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003678
      0x80001670 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x8000167c addi    s1, s1, -1808          #; s1  = 0x80003678, (wrb) s1  <-- 0x80002f68
      0x80001674 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
; _ftoa (printf.c:351)
      0x80001688 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001680 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f68]
; _ftoa (printf.c:0)
      0x8000168c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001690 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001684 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001694 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001698 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x8000169c mv      s7, a0                 #; a0  = 0x80001588, (wrb) s7  <-- 0x80001588
; _ftoa (printf.c:351)
      0x800016a0 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001790
; _ftoa (printf.c:0)
      0x80001794 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002794
      0x80001798 addi    a0, a0, 2012           #; a0  = 0x80002794, (wrb) a0  <-- 0x80002f70
      0x80001790 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x8000179c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f70]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x800017a0 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x800017a4 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800017c0
; _ftoa (printf.c:0)
      0x800017c0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027c0
      0x800017c4 addi    a0, a0, 1976           #; a0  = 0x800027c0, (wrb) a0  <-- 0x80002f78
      0x800017cc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027cc
      0x800017c8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f78]
      0x800017d0 addi    a0, a0, 1972           #; a0  = 0x800027cc, (wrb) a0  <-- 0x80002f80
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x800017d4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f80]
; _ftoa (printf.c:358)
      0x800017d8 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x800017dc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x800017e0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800017e4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018e0
; _ftoa (printf.c:374)
      0x800018e0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x800018e4 li      s8, 6                  #; (wrb) s8  <-- 6
      0x800018e8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018f0
; _ftoa (printf.c:0)
      0x800018f0 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x800018f8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001930
; _ftoa (printf.c:0)
      0x800018f4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001930 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001934 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001938 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002938
      0x8000193c addi    a1, a1, 1280           #; a1  = 0x80002938, (wrb) a1  <-- 0x80002e38
      0x80001940 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e38, (wrb) a0  <-- 0x80002e68
      0x80001944 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e68]
; _ftoa (printf.c:383)
      0x80001948 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x8000194c fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:0)
      0x80001958 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002958
      0x80001950 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
      0x8000195c addi    a0, a0, 1584           #; a0  = 0x80002958, (wrb) a0  <-- 0x80002f88
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x80001954 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:0)
      0x80001960 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f88]
; _ftoa (printf.c:385)
      0x80001964 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001968 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000196c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001970 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001974 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001994
; _ftoa (printf.c:396)
      0x80001994 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001998 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800019ac
; _ftoa (printf.c:0)
      0x800019ac fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:403)
      0x800019b0 beqz    s8, pc + 216           #; s8  = 6, not taken
; _ftoa (printf.c:0)
      0x800019b4 li      a2, 0                  #; (wrb) a2  <-- 0
      0x800019b8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x800019bc add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x800019c0 li      t0, 32                 #; (wrb) t0  <-- 32
      0x800019c4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x800019c8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x800019cc addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x800019d0 li      a6, 10                 #; (wrb) a6  <-- 10
      0x800019d4 li      a7, 9                  #; (wrb) a7  <-- 9
      0x800019d8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x800019dc mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x800019e0 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800019e4 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x800019e8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x800019ec sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x800019f0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x800019f4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x800019f8 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x800019fc addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001a00 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001a04 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001a08 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001a0c li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001a10 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001a14 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001a18 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001a1c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001a20 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a24 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001a28 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001a2c not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001a30 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001a34 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001a38 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001a3c sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001a40 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001a44 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001a48 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a50
      0x80001a50 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001a54 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001a58 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a58
      0x80001a5c jalr    ra, ra, -1280          #; ra  = 0x80000a58, (wrb) ra  <-- 0x80001a60, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001a60, goto 0x80001a60
; _ftoa (printf.c:0)
      0x80001a60 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001a64 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001a68 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001a6c xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001a70 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001a74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a78 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001a7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a64
      0x80001a64 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001a68 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001a6c xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001a70 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001a74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a78 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001a7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a64
      0x80001a64 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001a68 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001a6c xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001a70 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001a74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a78 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001a7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a64
      0x80001a64 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001a68 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001a6c xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001a70 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001a74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a78 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001a7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a64
      0x80001a64 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001a68 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001a6c xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001a70 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001a74 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001a78 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001a7c bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001a80 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001a84 j       pc + 0x28              #; goto 0x80001aac
      0x80001aac beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001ab0 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001ab4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001ab8 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001abc li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001ac0 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001ac4 j       pc + 0x8               #; goto 0x80001acc
; _ftoa (printf.c:0)
      0x80001acc li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001ad0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001ad4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001ad8 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001adc flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001ae0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001ae4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001ae8 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001aec addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001af0 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001af4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001af8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001afc srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001b00 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001b04 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001b08 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001b0c sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001b10 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001b14 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001b18 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001b1c addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001b20 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001b24 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001b28 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001b2c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001b30 j       pc + 0x8               #; goto 0x80001b38
; _ftoa (printf.c:440)
      0x80001b38 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001b3c li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001b40 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001bac
; _ftoa (printf.c:0)
      0x80001bac li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001bb0 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001bb4 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001bcc
; _ftoa (printf.c:453)
      0x80001bcc andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001bd0 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001bd4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001bd8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c04
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c04 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001c08 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001c0c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001c10 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001c14 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001c18 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c1c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c48
; _ftoa (printf.c:0)
      0x80001c48 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c4c beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001c50 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001c5c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
                                                #; (lsu) a0  <-- 48
      0x80001c60 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c68 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 8
      0x800015a8 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 9 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 8, (wrb) a4  <-- 0x8000301c
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301c, 48 ~~> Byte[0x80003064]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 9
      0x800015bc addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800015c0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c74 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001c78 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c7c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001c5c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001c60 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c68 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 9
      0x800015a8 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 10 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 9, (wrb) a4  <-- 0x8000301d
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301d, 46 ~~> Byte[0x80003065]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 10
      0x800015bc addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800015c0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800015c8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c74 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001c78 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c7c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001c5c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001c60 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c68 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 10
      0x800015a8 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 11 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 10, (wrb) a4  <-- 0x8000301e
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301e, 48 ~~> Byte[0x80003066]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 11
      0x800015bc addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800015c0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c74 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001c78 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c7c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001c5c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001c60 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c68 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 11
      0x800015a8 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 12 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 11, (wrb) a4  <-- 0x8000301f
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x8000301f, 48 ~~> Byte[0x80003067]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 12
      0x800015bc addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800015c0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c74 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001c78 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c7c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001c5c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001c60 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c68 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 12
      0x800015a8 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 13 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 12, (wrb) a4  <-- 0x80003020
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003020, 48 ~~> Byte[0x80003068]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 13
      0x800015bc addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800015c0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c74 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001c78 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c7c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001c5c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001c60 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c68 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 13
      0x800015a8 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 14 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 13, (wrb) a4  <-- 0x80003021
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003021, 48 ~~> Byte[0x80003069]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 14
      0x800015bc addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800015c0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c74 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001c78 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c7c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001c5c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001c60 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c68 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 14
      0x800015a8 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 15 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 14, (wrb) a4  <-- 0x80003022
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003022, 48 ~~> Byte[0x8000306a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 15
      0x800015bc addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800015c0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c74 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001c78 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c7c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001c58 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001c5c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001c60 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001c64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c68 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001c6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c70 jalr    s7                     #; s7  = 0x80001588, (wrb) ra  <-- 0x80001c74, goto 0x80001588
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 15
      0x800015a8 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 16 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 15, (wrb) a4  <-- 0x80003023
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003023, 48 ~~> Byte[0x8000306b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 16
      0x800015bc addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800015c0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80001c74, goto 0x80001c74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c74 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001c78 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c7c bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001c80 j       pc + 0x8               #; goto 0x80001c88
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c88 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001c8c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001c90 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001c94 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001c98 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001c9c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001ccc
; _ftoa (printf.c:0)
      0x80001ccc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001cd0 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001cd4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001cd8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001cdc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
      0x80001ce0 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                                                #; (lsu) s10 <-- 0x80002c6e
      0x80001ce4 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001ce8 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001cec lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001cf0 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001cf4 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001cf8 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001cfc lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001d00 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001588
      0x80001d04 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001d08 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001d0c lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001d10 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000cb8
      0x80001d14 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cb8 j       pc + 0x7c0             #; goto 0x80001478
      0x80001478 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x8000147c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001480 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001484 addi    s0, s10, 1             #; s10 = 0x80002c6e, (wrb) s0  <-- 0x80002c6f
      0x80001488 j       pc - 0xa74             #; goto 0x80000a14
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 addi    s10, s0, 2             #; s0  = 0x80002c6f, (wrb) s10 <-- 0x80002c71
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a18 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000a1c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a20 lbu     a0, 0(s0)              #; s0  = 0x80002c6f, a0  <~~ Byte[0x80002c6f]
                                                #; (lsu) a0  <-- 10
      0x80000a24 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a28 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a2c addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000a30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a34 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000a38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a3c jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80000a40, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001594 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001598 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003598
      0x8000159c addi    a3, a3, -1412          #; a3  = 0x80003598, (wrb) a3  <-- 0x80003014
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003014, (wrb) a1  <-- 0x80003014
      0x800015a4 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 16
      0x800015a8 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800015ac sw      a5, 0(a1)              #; a1  = 0x80003014, 17 ~~> Word[0x80003014]
      0x800015b0 add     a4, a1, a4             #; a1  = 0x80003014, a4  = 16, (wrb) a4  <-- 0x80003024
      0x800015b4 sb      a0, 72(a4)             #; a4  = 0x80003024, 10 ~~> Byte[0x8000306c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 lw      a4, 0(a1)              #; a1  = 0x80003014, a4  <~~ Word[0x80003014]
                                                #; (lsu) a4  <-- 17
      0x800015bc addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800015c0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800015c4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800015c8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800015cc and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800015d0 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015d4 add     a0, a3, a2             #; a3  = 0x80003014, a2  = 0, (wrb) a0  <-- 0x80003014
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015d8 addi    a2, a0, 72             #; a0  = 0x80003014, (wrb) a2  <-- 0x8000305c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc sw      zero, 12(a0)           #; a0  = 0x80003014, 0 ~~> Word[0x80003020]
      0x800015e0 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800015e4 sw      a3, 8(a0)              #; a0  = 0x80003014, 64 ~~> Word[0x8000301c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015e8 sw      zero, 20(a0)           #; a0  = 0x80003014, 0 ~~> Word[0x80003028]
      0x800015ec li      a3, 1                  #; (wrb) a3  <-- 1
      0x800015f0 sw      a3, 16(a0)             #; a0  = 0x80003014, 1 ~~> Word[0x80003024]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 sw      zero, 28(a0)           #; a0  = 0x80003014, 0 ~~> Word[0x80003030]
      0x800015f8 sw      a2, 24(a0)             #; a0  = 0x80003014, 0x8000305c ~~> Word[0x8000302c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc lw      a2, 0(a1)              #; a1  = 0x80003014, a2  <~~ Word[0x80003014]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 addi    a3, a0, 8              #; a0  = 0x80003014, (wrb) a3  <-- 0x8000301c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001604 sw      zero, 36(a0)           #; a0  = 0x80003014, 0 ~~> Word[0x80003038]
                                                #; (lsu) a2  <-- 17
      0x80001608 sw      a2, 32(a0)             #; a0  = 0x80003014, 17 ~~> Word[0x80003034]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000160c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000360c
      0x80001610 addi    a0, a0, -1868          #; a0  = 0x8000360c, (wrb) a0  <-- 0x80002ec0
      0x80001614 sw      a3, 0(a0)              #; a0  = 0x80002ec0, 0x8000301c ~~> Word[0x80002ec0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001618 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003618
      0x8000161c addi    a0, a0, -1816          #; a0  = 0x80003618, (wrb) a0  <-- 0x80002f00
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001624 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001620
      0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001624 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001620
      0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001624 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001620
      0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001624 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001620
      0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001624 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001620
      0x80001620 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 1
      0x80001624 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001628 sw      zero, 0(a0)            #; a0  = 0x80002f00, 0 ~~> Word[0x80002f00]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000162c sw      zero, 0(a1)            #; a1  = 0x80003014, 0 ~~> Word[0x80003014]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80000a40, goto 0x80000a40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a40 addi    s0, s0, 1              #; s0  = 0x80002c6f, (wrb) s0  <-- 0x80002c70
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a44 addi    s10, s10, 1            #; s10 = 0x80002c71, (wrb) s10 <-- 0x80002c72
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a4c lbu     a0, 0(s0)              #; s0  = 0x80002c70, a0  <~~ Byte[0x80002c70]
                                                #; (lsu) a0  <-- 0
      0x80000a50 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000a54 j       pc + 0xad8             #; goto 0x8000152c
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x8000152c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001530 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001538
      0x80001538 li      a0, 0                  #; (wrb) a0  <-- 0
      0x8000153c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001540 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001544 jalr    s2                     #; s2  = 0x80001588, (wrb) ra  <-- 0x80001548, goto 0x80001588
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001588 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001630
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001630 ret                            #; ra  = 0x80001548, goto 0x80001548
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001548 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x8000154c lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001550 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001554 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001558 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x8000155c lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x80001560 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001564 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001568 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x8000156c lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x80001570 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001574 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001578 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x8000157c lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001580 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000984
      0x80001584 ret                            #; ra  = 0x80000984, goto 0x80000984
; printf_ (printf.c:869)
      0x80000984 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000988 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000914
      0x8000098c ret                            #; ra  = 0x80000914, goto 0x80000914
; main (test_reverse_conflict.c:0)
      0x80000914 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002914
      0x80000918 addi    a0, a0, 1612           #; a0  = 0x80002914, (wrb) a0  <-- 0x80002f60
      0x8000091c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f60]
; main (test_reverse_conflict.c:45)
      0x80000928 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x8000092c addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_reverse_conflict.c:44)
      0x80000920 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
                                                #; (lsu) ra  <-- 0x800029e0
; main (test_reverse_conflict.c:45)
      0x80000930 ret                            #; ra  = 0x800029e0, goto 0x800029e0
      0x80000924 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
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
      0x80002bfc jalr    ra, ra, -1256          #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80002c00, goto 0x80002710
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002710 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002714 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002718 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000271c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002720 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002724 ret                            #; ra  = 0x80002c00, goto 0x80002c00
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
      0x80002c2c jalr    ra, ra, -1336          #; ra  = 0x80002c28, (wrb) ra  <-- 0x80002c30, goto 0x800026f0
; snrt_global_core_idx (team.c:32)
      0x800026f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002700 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002704 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002708 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x8000270c ret                            #; ra  = 0x80002c30, goto 0x80002c30
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
                        tion 0 @ (12, 5532):
                          134
                          181
                           14
                           31
                      12.0746
                       0.2384
                       0.0804
                          1.0
                          1.0
                            0
                       1.4857
                       5.1290
                       0.0208
                       0.0127
                       0.6087
                         5521
                       0.2592
