; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002820
      0x00001014 jalr    t0                     #; t0  = 0x80002820, (wrb) ra  <-- 4120, goto 0x80002820
; ?? (start.S:20)
      0x80002820 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003820
; ?? (start.S:21)
      0x80002824 addi    gp, gp, -280           #; gp  = 0x80003820, (wrb) gp  <-- 0x80003708
; ?? (start.S:28)
      0x80002828 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002828
      0x8000282c jalr    ra, ra, 964            #; ra  = 0x80002828, (wrb) ra  <-- 0x80002830, goto 0x80002bec
; ?? (start_snitch.S:16)
      0x80002bec mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002bf0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002bf4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002bf8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002bfc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002c00 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002c04 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002c08 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002c0c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002c10 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002c14 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002c18 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002c1c ret                            #; ra  = 0x80002830, goto 0x80002830
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002830 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002834 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002838 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002838
      0x8000283c jalr    ra, ra, 1036           #; ra  = 0x80002838, (wrb) ra  <-- 0x80002840, goto 0x80002c44
; ?? (start_snitch.S:48)
      0x80002c44 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002c48 ret                            #; ra  = 0x80002840, goto 0x80002840
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002840 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002844 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002848 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000284c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002850 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002854 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80003854
      0x80002858 addi    t0, t0, -1956          #; t0  = 0x80003854, (wrb) t0  <-- 0x800030b0
; ?? (start.S:49)
      0x8000285c auipc   t1, 0x1                #; (wrb) t1  <-- 0x8000385c
      0x80002860 addi    t1, t1, -1960          #; t1  = 0x8000385c, (wrb) t1  <-- 0x800030b4
; ?? (start.S:50)
      0x80002864 bge     t0, t1, pc + 16        #; t0  = 0x800030b0, t1  = 0x800030b4, not taken
; ?? (start.S:51)
      0x80002868 sw      zero, 0(t0)            #; t0  = 0x800030b0, 0 ~~> Word[0x800030b0]
; ?? (start.S:52)
      0x8000286c addi    t0, t0, 4              #; t0  = 0x800030b0, (wrb) t0  <-- 0x800030b4
; ?? (start.S:53)
      0x80002870 blt     t0, t1, pc - 8         #; t0  = 0x800030b4, t1  = 0x800030b4, not taken
; ?? (start.S:58)
      0x80002874 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002878 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000287c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002880 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002884 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002888 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000288c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002890 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002894 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002898 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000289c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x800028a0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x800028a4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x800028a8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x800028ac fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x800028b0 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x800028b4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x800028b8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x800028bc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x800028c0 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x800028c4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x800028c8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x800028cc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x800028d0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x800028d4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x800028d8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x800028dc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x800028e0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x800028e4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x800028e8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x800028ec fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x800028f0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x800028f4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x800028f8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x800028fc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002900 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002904 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002908 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002908
      0x8000290c lw      t0, 900(t0)            #; t0  = 0x80002908, t0  <~~ Word[0x80002c8c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002910 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002914 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002918 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002918
      0x8000291c lw      t2, 880(t2)            #; t2  = 0x80002918, t2  <~~ Word[0x80002c88]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002920 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002924 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002928 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x8000292c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002930 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002934 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002938 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x8000293c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002940 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002940
      0x80002944 addi    t0, t0, 1480           #; t0  = 0x80002940, (wrb) t0  <-- 0x80002f08
; ?? (start.S:125)
      0x80002948 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002948
      0x8000294c addi    t1, t1, 1472           #; t1  = 0x80002948, (wrb) t1  <-- 0x80002f08
; ?? (start.S:126)
      0x80002950 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002950
      0x80002954 addi    t2, t2, 1464           #; t2  = 0x80002950, (wrb) t2  <-- 0x80002f08
; ?? (start.S:127)
      0x80002958 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002958
      0x8000295c addi    t3, t3, 1472           #; t3  = 0x80002958, (wrb) t3  <-- 0x80002f18
; ?? (start.S:128)
      0x80002960 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002f08, (wrb) sp  <-- 0x80122e78
; ?? (start.S:129)
      0x80002964 sub     sp, sp, t1             #; sp  = 0x80122e78, t1  = 0x80002f08, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002968 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002f08, (wrb) sp  <-- 0x80122e78
; ?? (start.S:131)
      0x8000296c sub     sp, sp, t3             #; sp  = 0x80122e78, t3  = 0x80002f18, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002970 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002974 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002978 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x8000297c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002980 bge     t0, t1, pc + 24        #; t0  = 0x80002f08, t1  = 0x80002f08, taken, goto 0x80002998
; ?? (start.S:147)
      0x80002998 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002998
      0x8000299c addi    t0, t0, 1392           #; t0  = 0x80002998, (wrb) t0  <-- 0x80002f08
; ?? (start.S:148)
      0x800029a0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029a0
      0x800029a4 addi    t1, t1, 1400           #; t1  = 0x800029a0, (wrb) t1  <-- 0x80002f18
; ?? (start.S:149)
      0x800029a8 bge     t0, t1, pc + 20        #; t0  = 0x80002f08, t1  = 0x80002f18, not taken
; ?? (start.S:150)
      0x800029ac sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x800029b0 addi    t0, t0, 4              #; t0  = 0x80002f08, (wrb) t0  <-- 0x80002f0c
; ?? (start.S:152)
      0x800029b4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x800029b8 blt     t0, t2, pc - 12        #; t0  = 0x80002f0c, t2  = 0x80002f08, not taken
; ?? (start.S:158)
      0x800029bc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x800029c0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x800029c4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x800029c8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x800029cc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x800029d0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x800029d4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d4
      0x800029d8 jalr    ra, ra, -1064          #; ra  = 0x800029d4, (wrb) ra  <-- 0x800029dc, goto 0x800025ac
; _snrt_init_team (start.c:49)
      0x800025ac sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800025b0 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800025b4 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800025b8 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x800025bc lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x800025c0 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800025c4 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800025c8 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800025cc mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800025d0 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800025d4 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800025d8 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800025dc divu    a0, a0, t0             #; a0  = 0, t0  = 8
; _snrt_init_team (start.c:54)
      0x800025e0 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800025e4 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800025e8 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800025ec sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800025f0 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800025f4 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800025f8 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800025fc sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002600 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002604 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002608 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x8000260c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002610 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002614 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002618 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x8000261c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002620 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002624 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002628 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x8000262c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002630 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002634 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002638 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x8000263c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002640 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002644 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002648 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x8000264c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002650 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002654 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002658 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x8000265c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002660 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002664 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002668 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x8000266c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002674 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002678 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000267c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002680 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002684 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002688 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x8000268c lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002690 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80002694 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002698 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x8000269c mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800026a0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800036a0
      0x800026a4 addi    a1, a1, -1516          #; a1  = 0x800036a0, (wrb) a1  <-- 0x800030b4
      0x800026a8 add     a0, a0, a1             #; a0  = 0, a1  = 0x800030b4, (wrb) a0  <-- 0x800030b4
      0x800026ac sw      zero, 0(a0)            #; a0  = 0x800030b4, 0 ~~> Word[0x800030b4]
; _snrt_init_team (start.c:86)
      0x800026b0 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x800026b4 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x800026b8 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x800026bc sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x800026c0 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x800026c4 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x800026c8 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x800026cc andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x800026d0 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800026d4 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800026d8 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800026dc sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800026e0 lw      a0, 0(a1)              #; a1  = 0x800030b4, a0  <~~ Word[0x800030b4]
                                                #; (lsu) a0  <-- 0
      0x800026e4 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800026e8 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800026ec sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800026f0 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800026f4 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800026f8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026fc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002700 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002704 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002708 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000270c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002710 ret                            #; ra  = 0x800029dc, goto 0x800029dc
; ?? (start.S:165)
      0x800029dc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x800029e0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x800029e4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x800029e8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x800029ec lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x800029f0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x800029f4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029f4
      0x800029f8 addi    t0, t0, 60             #; t0  = 0x800029f4, (wrb) t0  <-- 0x80002a30
; ?? (start.S:175)
      0x800029fc csrw    mtvec, t0              #; t0  = 0x80002a30, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002a00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a00
      0x80002a04 jalr    ra, ra, 544            #; ra  = 0x80002a00, (wrb) ra  <-- 0x80002a08, goto 0x80002c20
; ?? (start_snitch.S:33)
      0x80002c20 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002c24 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a08 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002c28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c28
      0x80002c2c jalr    ra, ra, -1268          #; ra  = 0x80002c28, (wrb) ra  <-- 0x80002c30, goto 0x80002734
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002734 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002738 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000273c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002740 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002744 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002748 ret                            #; ra  = 0x80002c30, goto 0x80002c30
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002c30 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002c34 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002c38 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002c3c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002a08
; ?? (start_snitch.S:40)
      0x80002c40 ret                            #; ra  = 0x80002a08, goto 0x80002a08
; ?? (start.S:183)
      0x80002a08 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000a08
      0x80002a0c jalr    ra, ra, -980           #; ra  = 0x80000a08, (wrb) ra  <-- 0x80002a10, goto 0x80000634
; main (test_reverse_conflict.c:23)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_reverse_conflict.c:24)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002a10 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_reverse_conflict.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_reverse_conflict.c:24)
      0x80000650 bnez    a1, pc + 760           #; a1  = 0, not taken
; main (test_reverse_conflict.c:0)
      0x80000654 li      a0, 8                  #; (wrb) a0  <-- 8
      0x80000658 li      a1, 9                  #; (wrb) a1  <-- 9
; init_data (test_reverse_conflict.c:10)
;  in main (test_reverse_conflict.c:31)
      0x8000065c li      a2, 64                 #; (wrb) a2  <-- 64
      0x80000660 li      a3, 192                #; (wrb) a3  <-- 192
      0x80000664 scfgw   a1, a2                 #; a1  = 9, a2  = 64
      0x80000668 scfgw   a0, a3                 #; a0  = 8, a3  = 192
      0x8000066c li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000670 scfgw   zero, a2               #; a2  = 32
      0x80000674 lui     a2, 0x100              #; (wrb) a2  <-- 0x00100000
      0x80000678 scfgwi  a2, 896                #; a2  = 0x00100000
; init_data (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:31)
      0x8000067c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000367c
      0x80000680 addi    a3, a3, -1892          #; a3  = 0x8000367c, (wrb) a3  <-- 0x80002f18
      0x80000688 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003688
      0x8000068c addi    a3, a3, -1896          #; a3  = 0x80003688, (wrb) a3  <-- 0x80002f20
      0x80000684 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80002f18]
                                                #; (f:lsu) ft3  <-- 1.0
      0x80000690 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x80002f20]
; init_data (test_reverse_conflict.c:10)
;  in main (test_reverse_conflict.c:31)
      0x80000694 csrrsi  a3, ssr, 1             #; 
; init_data (test_reverse_conflict.c:11)
;  in main (test_reverse_conflict.c:31)
      0x80000698 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
                                                #; (f:fpu) ft0  <-- 1.0
                                                #; (f:lsu) ft4  <-- 1.01
; init_data (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:31)
      0x800006a0 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036a0
      0x8000069c fsgnj.d ft0, ft4, ft4          #; ft4  = 1.01, ft4  = 1.01
      0x800006a4 addi    a3, a3, -1912          #; a3  = 0x800036a0, (wrb) a3  <-- 0x80002f28
                                                #; (f:fpu) ft0  <-- 1.01
      0x800006ac auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036ac
      0x800006a8 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80002f28]
      0x800006b0 addi    a3, a3, -1916          #; a3  = 0x800036ac, (wrb) a3  <-- 0x80002f30
                                                #; (f:lsu) ft3  <-- 1.02
      0x800006b8 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036b8
      0x800006bc addi    a3, a3, -1920          #; a3  = 0x800036b8, (wrb) a3  <-- 0x80002f38
      0x800006b4 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x80002f30]
                                                #; (f:lsu) ft4  <-- 1.03
      0x800006c4 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036c4
      0x800006c8 addi    a3, a3, -1924          #; a3  = 0x800036c4, (wrb) a3  <-- 0x80002f40
      0x800006c0 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x80002f38]
      0x800006cc fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x80002f40]
                                                #; (f:lsu) ft5  <-- 1.04
; init_data (test_reverse_conflict.c:11)
;  in main (test_reverse_conflict.c:31)
      0x800006d0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.02, ft3  = 1.02, (f:lsu) ft6  <-- 1.05
      0x800006d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.03, ft4  = 1.03, (f:fpu) ft0  <-- 1.02
      0x800006d8 fsgnj.d ft0, ft5, ft5          #; ft5  = 1.04, ft5  = 1.04, (f:fpu) ft0  <-- 1.03
      0x800006dc fsgnj.d ft0, ft6, ft6          #; ft6  = 1.05, ft6  = 1.05, (f:fpu) ft0  <-- 1.04
                                                #; (f:fpu) ft0  <-- 1.05
; init_data (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:31)
      0x800006e0 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036e0
      0x800006e4 addi    a3, a3, -1944          #; a3  = 0x800036e0, (wrb) a3  <-- 0x80002f48
      0x800006ec auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036ec
      0x800006e8 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80002f48]
      0x800006f0 addi    a3, a3, -1948          #; a3  = 0x800036ec, (wrb) a3  <-- 0x80002f50
                                                #; (f:lsu) ft3  <-- 1.06
      0x800006f8 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036f8
      0x800006fc addi    a3, a3, -1952          #; a3  = 0x800036f8, (wrb) a3  <-- 0x80002f58
      0x800006f4 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x80002f50]
                                                #; (f:lsu) ft4  <-- 1.07
      0x80000704 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003704
      0x80000708 addi    a3, a3, -1956          #; a3  = 0x80003704, (wrb) a3  <-- 0x80002f60
      0x80000700 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x80002f58]
      0x8000070c fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x80002f60]
                                                #; (f:lsu) ft5  <-- 1.08
; init_data (test_reverse_conflict.c:11)
;  in main (test_reverse_conflict.c:31)
      0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.06, ft3  = 1.06, (f:lsu) ft6  <-- 1.09
      0x80000714 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.07, ft4  = 1.07, (f:fpu) ft0  <-- 1.06
      0x80000718 fsgnj.d ft0, ft5, ft5          #; ft5  = 1.08, ft5  = 1.08, (f:fpu) ft0  <-- 1.07
      0x8000071c fsgnj.d ft0, ft6, ft6          #; ft6  = 1.09, ft6  = 1.09, (f:fpu) ft0  <-- 1.08
                                                #; (f:fpu) ft0  <-- 1.09
; init_data (test_reverse_conflict.c:10)
;  in main (test_reverse_conflict.c:32)
      0x80000724 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000720 csrrci  a3, ssr, 1             #; 
      0x80000728 li      a4, 192                #; (wrb) a4  <-- 192
      0x8000072c scfgw   a1, a3                 #; a1  = 9, a3  = 64
      0x80000730 scfgw   a0, a4                 #; a0  = 8, a4  = 192
      0x80000734 li      a3, 32                 #; (wrb) a3  <-- 32
      0x80000738 scfgw   zero, a3               #; a3  = 32
      0x8000073c addi    a3, a2, 80             #; a2  = 0x00100000, (wrb) a3  <-- 0x00100050
      0x80000740 scfgwi  a3, 896                #; a3  = 0x00100050
; init_data (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:32)
      0x80000744 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003744
      0x80000748 addi    a3, a3, -2012          #; a3  = 0x80003744, (wrb) a3  <-- 0x80002f68
                                                #; (acc) gp  <-- 0x0006b187
      0x8000074c fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80002f68]
      0x80000750 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003750
      0x80000754 addi    a3, a3, -2016          #; a3  = 0x80003750, (wrb) a3  <-- 0x80002f70
                                                #; (f:lsu) ft3  <-- 10.0
      0x80000758 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x80002f70]
; init_data (test_reverse_conflict.c:10)
;  in main (test_reverse_conflict.c:32)
      0x8000075c csrrsi  a3, ssr, 1             #; 
                                                #; (f:lsu) ft4  <-- 10.01
; init_data (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:32)
      0x80000768 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003768
      0x80000760 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.0, ft3  = 10.0
      0x8000076c addi    a3, a3, -2032          #; a3  = 0x80003768, (wrb) a3  <-- 0x80002f78
      0x80000764 fsgnj.d ft0, ft4, ft4          #; ft4  = 10.01, ft4  = 10.01, (f:fpu) ft0  <-- 10.0
                                                #; (f:fpu) ft0  <-- 10.01
      0x80000774 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003774
      0x80000778 addi    a3, a3, -2036          #; a3  = 0x80003774, (wrb) a3  <-- 0x80002f80
      0x80000770 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80002f78]
      0x8000077c fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x80002f80]
                                                #; (f:lsu) ft3  <-- 10.02
      0x80000780 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003780
      0x80000784 addi    a3, a3, -2040          #; a3  = 0x80003780, (wrb) a3  <-- 0x80002f88
                                                #; (f:lsu) ft4  <-- 10.03
      0x8000078c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000378c
      0x80000788 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x80002f88]
      0x80000790 addi    a3, a3, -2044          #; a3  = 0x8000378c, (wrb) a3  <-- 0x80002f90
                                                #; (f:lsu) ft5  <-- 10.04
      0x80000794 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x80002f90]
; init_data (test_reverse_conflict.c:11)
;  in main (test_reverse_conflict.c:32)
      0x80000798 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.02, ft3  = 10.02
      0x8000079c fsgnj.d ft0, ft4, ft4          #; ft4  = 10.03, ft4  = 10.03, (f:fpu) ft0  <-- 10.02
                                                #; (f:fpu) ft0  <-- 10.03
                                                #; (f:lsu) ft6  <-- 10.05
; init_data (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:32)
      0x800007a8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800027a8
      0x800007a0 fsgnj.d ft0, ft5, ft5          #; ft5  = 10.04, ft5  = 10.04
      0x800007ac addi    a3, a3, 2032           #; a3  = 0x800027a8, (wrb) a3  <-- 0x80002f98
      0x800007a4 fsgnj.d ft0, ft6, ft6          #; ft6  = 10.05, ft6  = 10.05, (f:fpu) ft0  <-- 10.04
                                                #; (f:fpu) ft0  <-- 10.05
      0x800007b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800027b4
      0x800007b8 addi    a3, a3, 2028           #; a3  = 0x800027b4, (wrb) a3  <-- 0x80002fa0
      0x800007b0 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80002f98]
      0x800007bc fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x80002fa0]
                                                #; (f:lsu) ft3  <-- 10.06
      0x800007c0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800027c0
      0x800007c4 addi    a3, a3, 2024           #; a3  = 0x800027c0, (wrb) a3  <-- 0x80002fa8
                                                #; (f:lsu) ft4  <-- 10.07
      0x800007cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800027cc
      0x800007c8 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x80002fa8]
      0x800007d0 addi    a3, a3, 2020           #; a3  = 0x800027cc, (wrb) a3  <-- 0x80002fb0
                                                #; (f:lsu) ft5  <-- 10.08
      0x800007d4 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x80002fb0]
; init_data (test_reverse_conflict.c:11)
;  in main (test_reverse_conflict.c:32)
      0x800007d8 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.06, ft3  = 10.06
      0x800007dc fsgnj.d ft0, ft4, ft4          #; ft4  = 10.07, ft4  = 10.07, (f:fpu) ft0  <-- 10.06
                                                #; (f:fpu) ft0  <-- 10.07
                                                #; (f:lsu) ft6  <-- 10.09
      0x800007e0 fsgnj.d ft0, ft5, ft5          #; ft5  = 10.08, ft5  = 10.08
      0x800007e4 fsgnj.d ft0, ft6, ft6          #; ft6  = 10.09, ft6  = 10.09, (f:fpu) ft0  <-- 10.08
; init_data (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:32)
      0x800007e8 csrrci  a3, ssr, 1             #; (f:fpu) ft0  <-- 10.09
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x800007ec fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft3  <-- 1.0
; reverse_conflict (reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:34)
      0x800007f4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800027f4
      0x800007f8 addi    a3, a3, 1988           #; a3  = 0x800027f4, (wrb) a3  <-- 0x80002fb8
      0x800007f0 fadd.d  ft4, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x800007fc fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x80002fb8], (f:fpu) ft4  <-- 2.0
      0x80000800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80002800
      0x80000804 addi    a3, a3, 1984           #; a3  = 0x80002800, (wrb) a3  <-- 0x80002fc0
                                                #; (f:lsu) ft5  <-- 4.0
      0x80000808 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x80002fc0]
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x8000080c fsd     ft4, 8(a2)             #; 2.0 ~~> Doub[0x00100008]
                                                #; (f:lsu) ft6  <-- 8.0
      0x80000810 fmul.d  ft4, ft3, ft5          #; ft3  = 1.0, ft5  = 4.0
; reverse_conflict (reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:34)
      0x8000081c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000281c
                                                #; (f:fpu) ft4  <-- 4.0
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x80000814 fsd     ft4, 16(a2)            #; 4.0 ~~> Doub[0x00100010]
      0x80000818 fmul.d  ft4, ft3, ft6          #; ft3  = 1.0, ft6  = 8.0
                                                #; (f:fpu) ft4  <-- 8.0
; reverse_conflict (reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:34)
      0x80000820 addi    a3, a3, 1964           #; a3  = 0x8000281c, (wrb) a3  <-- 0x80002fc8
      0x80000828 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80002828
      0x8000082c addi    a3, a3, 1960           #; a3  = 0x80002828, (wrb) a3  <-- 0x80002fd0
      0x80000824 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x80002fc8]
                                                #; (f:lsu) ft5  <-- 16.0
      0x80000830 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x80002fd0]
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x80000834 fsd     ft4, 24(a2)            #; 8.0 ~~> Doub[0x00100018]
      0x80000838 fmul.d  ft4, ft3, ft5          #; ft3  = 1.0, ft5  = 16.0
                                                #; (f:fpu) ft4  <-- 16.0
      0x8000083c fsd     ft4, 32(a2)            #; 16.0 ~~> Doub[0x00100020]
                                                #; (f:lsu) ft6  <-- 32.0
; reverse_conflict (reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:34)
      0x80000844 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80002844
      0x80000848 addi    a3, a3, 1940           #; a3  = 0x80002844, (wrb) a3  <-- 0x80002fd8
      0x80000840 fmul.d  ft4, ft3, ft6          #; ft3  = 1.0, ft6  = 32.0
      0x8000084c fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x80002fd8], (f:fpu) ft4  <-- 32.0
      0x80000850 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80002850
      0x80000854 addi    a3, a3, 1936           #; a3  = 0x80002850, (wrb) a3  <-- 0x80002fe0
                                                #; (f:lsu) ft5  <-- 64.0
      0x80000858 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x80002fe0]
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x8000085c fsd     ft4, 40(a2)            #; 32.0 ~~> Doub[0x00100028]
                                                #; (f:lsu) ft6  <-- 128.0
      0x80000860 fmul.d  ft4, ft3, ft5          #; ft3  = 1.0, ft5  = 64.0
; reverse_conflict (reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:34)
      0x8000086c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000286c
                                                #; (f:fpu) ft4  <-- 64.0
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x80000864 fsd     ft4, 48(a2)            #; 64.0 ~~> Doub[0x00100030]
      0x80000868 fmul.d  ft4, ft3, ft6          #; ft3  = 1.0, ft6  = 128.0
                                                #; (f:fpu) ft4  <-- 128.0
; reverse_conflict (reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:34)
      0x80000870 addi    a3, a3, 1916           #; a3  = 0x8000286c, (wrb) a3  <-- 0x80002fe8
      0x80000878 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80002878
      0x8000087c addi    a3, a3, 1912           #; a3  = 0x80002878, (wrb) a3  <-- 0x80002ff0
      0x80000874 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x80002fe8]
                                                #; (f:lsu) ft5  <-- 256.0
      0x80000880 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x80002ff0]
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x80000884 fsd     ft4, 56(a2)            #; 128.0 ~~> Doub[0x00100038]
      0x80000888 fmul.d  ft4, ft3, ft5          #; ft3  = 1.0, ft5  = 256.0
                                                #; (f:fpu) ft4  <-- 256.0
      0x8000088c fsd     ft4, 64(a2)            #; 256.0 ~~> Doub[0x00100040]
                                                #; (f:lsu) ft6  <-- 512.0
; sumup (test_reverse_conflict.c:17)
;  in main (test_reverse_conflict.c:36)
      0x80000898 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000890 fmul.d  ft3, ft3, ft6          #; ft3  = 1.0, ft6  = 512.0
      0x8000089c li      a4, 192                #; (wrb) a4  <-- 192
                                                #; (f:fpu) ft3  <-- 512.0
; reverse_conflict (reverse_conflict.c:5)
;  in main (test_reverse_conflict.c:34)
      0x80000894 fsd     ft3, 72(a2)            #; 512.0 ~~> Doub[0x00100048]
; sumup (test_reverse_conflict.c:17)
;  in main (test_reverse_conflict.c:36)
      0x800008a0 scfgw   a1, a3                 #; a1  = 9, a3  = 64
      0x800008a4 scfgw   a0, a4                 #; a0  = 8, a4  = 192
      0x800008a8 li      a0, 32                 #; (wrb) a0  <-- 32
      0x800008ac scfgw   zero, a0               #; a0  = 32, (acc) ra  <-- 0x00a020ab
      0x800008b0 scfgwi  a2, 768                #; a2  = 0x00100000
      0x800008b4 csrrsi  a0, ssr, 1             #; 
                                                #; (acc) tp  <-- 0x22000253
; sumup (test_reverse_conflict.c:18)
;  in main (test_reverse_conflict.c:36)
      0x800008b8 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
      0x800008bc fsgnj.d ft4, ft0, ft0          #; ft0  = 2.0, ft0  = 2.0, (f:fpu) ft3  <-- 1.0
                                                #; (f:fpu) ft4  <-- 2.0
      0x800008c0 fsgnj.d ft5, ft0, ft0          #; ft0  = 4.0, ft0  = 4.0
      0x800008c4 fsgnj.d ft6, ft0, ft0          #; ft0  = 8.0, ft0  = 8.0, (f:fpu) ft5  <-- 4.0
      0x800008c8 fsgnj.d ft7, ft0, ft0          #; ft0  = 16.0, ft0  = 16.0, (f:fpu) ft6  <-- 8.0
      0x800008cc fsgnj.d fa0, ft0, ft0          #; ft0  = 32.0, ft0  = 32.0, (f:fpu) ft7  <-- 16.0
                                                #; (f:fpu) fa0  <-- 32.0
      0x800008d0 fsgnj.d fa1, ft0, ft0          #; ft0  = 64.0, ft0  = 64.0
; sumup (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:36)
      0x800008dc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028dc
      0x800008d4 fsgnj.d fa2, ft0, ft0          #; ft0  = 128.0, ft0  = 128.0, (f:fpu) fa1  <-- 64.0
; sumup (test_reverse_conflict.c:18)
;  in main (test_reverse_conflict.c:36)
      0x800008d8 fsgnj.d fa3, ft0, ft0          #; ft0  = 256.0, ft0  = 256.0, (f:fpu) fa2  <-- 128.0
                                                #; (f:fpu) fa3  <-- 256.0
; sumup (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:36)
      0x800008e0 addi    a0, a0, 1820           #; a0  = 0x800028dc, (wrb) a0  <-- 0x80002ff8
      0x800008e4 fld     fa4, 0(a0)             #; fa4  <~~ Doub[0x80002ff8]
; sumup (test_reverse_conflict.c:18)
;  in main (test_reverse_conflict.c:36)
      0x800008e8 fsgnj.d fa5, ft0, ft0          #; ft0  = 512.0, ft0  = 512.0
; sumup (test_reverse_conflict.c:0)
;  in main (test_reverse_conflict.c:36)
      0x800008ec csrrci  a0, ssr, 1             #; (f:fpu) fa5  <-- 512.0
                                                #; (f:lsu) fa4  <-- -1023.0
; sumup (test_reverse_conflict.c:18)
;  in main (test_reverse_conflict.c:36)
      0x800008f0 fadd.d  ft3, ft3, fa4          #; ft3  = 1.0, fa4  = -1023.0
                                                #; (f:fpu) ft3  <-- -1022.0
      0x800008f4 fadd.d  ft3, ft3, ft4          #; ft3  = -1022.0, ft4  = 2.0
                                                #; (f:fpu) ft3  <-- -1020.0
      0x800008f8 fadd.d  ft3, ft3, ft5          #; ft3  = -1020.0, ft5  = 4.0
                                                #; (f:fpu) ft3  <-- -1016.0
      0x800008fc fadd.d  ft3, ft3, ft6          #; ft3  = -1016.0, ft6  = 8.0
                                                #; (f:fpu) ft3  <-- -1008.0
      0x80000900 fadd.d  ft3, ft3, ft7          #; ft3  = -1008.0, ft7  = 16.0
                                                #; (f:fpu) ft3  <-- -992.0
      0x80000904 fadd.d  ft3, ft3, fa0          #; ft3  = -992.0, fa0  = 32.0
                                                #; (f:fpu) ft3  <-- -960.0
      0x80000908 fadd.d  ft3, ft3, fa1          #; ft3  = -960.0, fa1  = 64.0
                                                #; (f:fpu) ft3  <-- -896.0
      0x8000090c fadd.d  ft3, ft3, fa2          #; ft3  = -896.0, fa2  = 128.0
                                                #; (f:fpu) ft3  <-- -768.0
      0x80000910 fadd.d  ft3, ft3, fa3          #; ft3  = -768.0, fa3  = 256.0
; main (test_reverse_conflict.c:42)
      0x80000920 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                                                #; (f:fpu) ft3  <-- -512.0
; main (test_reverse_conflict.c:39)
      0x80000914 fadd.d  ft3, ft3, fa5          #; ft3  = -512.0, fa5  = 512.0
                                                #; (lsu) a2  <-- 0
; main (test_reverse_conflict.c:42)
      0x80000924 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x80000928 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002928
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000092c addi    a0, a0, 877            #; a0  = 0x80002928, (wrb) a0  <-- 0x80002c95
      0x80000918 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
                                                #; (lsu) a3  <-- 0
                                                #; (f:fpu) fs0  <-- 0.0
      0x8000091c fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x80000930 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000930
      0x80000934 jalr    ra, ra, 40             #; ra  = 0x80000930, (wrb) ra  <-- 0x80000938, goto 0x80000958
; printf_ (printf.c:863)
      0x80000958 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x8000095c sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000938 ~~> Word[0x0011ff1c]
      0x80000960 mv      t0, a0                 #; a0  = 0x80002c95, (wrb) t0  <-- 0x80002c95
      0x80000964 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
      0x80000968 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
      0x8000096c sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x0011ff70 ~~> Word[0x0011ff34]
      0x80000970 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff30]
      0x80000974 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000978 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x8000097c sw      a1, 20(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff24]
      0x80000980 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000984 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000988 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001988
      0x8000098c addi    a0, a0, -988           #; a0  = 0x80001988, (wrb) a0  <-- 0x800015ac
      0x80000990 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000994 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000998 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x8000099c mv      a3, t0                 #; t0  = 0x80002c95, (wrb) a3  <-- 0x80002c95
      0x800009a0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009a0
      0x800009a4 jalr    ra, ra, 20             #; ra  = 0x800009a0, (wrb) ra  <-- 0x800009a8, goto 0x800009b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x800009b4 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x800009b8 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800009a8 ~~> Word[0x0011ff0c]
      0x800009bc sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x800009c0 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x800009c4 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x800009c8 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x800009cc sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x800009d0 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x800009d4 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x800009d8 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x800009dc sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x800009e0 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x800009e4 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x800009e8 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x800009ec mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x800009f0 mv      s0, a3                 #; a3  = 0x80002c95, (wrb) s0  <-- 0x80002c95
      0x800009f4 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800009f8 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x800009fc beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a00 mv      s2, a0                 #; a0  = 0x800015ac, (wrb) s2  <-- 0x800015ac
      0x80000a04 j       pc + 0xc               #; goto 0x80000a10
      0x80000a10 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000a14 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000a18 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000a1c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000a20 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000a24 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000a28 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000a2c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000a30 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000a34 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a38 addi    s10, s0, 2             #; s0  = 0x80002c95, (wrb) s10 <-- 0x80002c97
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a3c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000a40 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a44 lbu     a0, 0(s0)              #; s0  = 0x80002c95, a0  <~~ Byte[0x80002c95]
                                                #; (lsu) a0  <-- 101
      0x80000a48 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000a4c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a50 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a58 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 0
      0x800015cc addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 1 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 0, (wrb) a4  <-- 0x800030b4
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030b4, 101 ~~> Byte[0x800030fc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 1
      0x800015e0 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800015e4 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800015ec snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c95, (wrb) s0  <-- 0x80002c96
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c97, (wrb) s10 <-- 0x80002c98
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a6c mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c96, a0  <~~ Byte[0x80002c96]
                                                #; (lsu) a0  <-- 114
      0x80000a74 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a4c
      0x80000a4c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a50 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a58 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 1
      0x800015cc addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 2 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 1, (wrb) a4  <-- 0x800030b5
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030b5, 114 ~~> Byte[0x800030fd]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 2
      0x800015e0 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800015e4 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015ec snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c96, (wrb) s0  <-- 0x80002c97
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c98, (wrb) s10 <-- 0x80002c99
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a6c mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c97, a0  <~~ Byte[0x80002c97]
                                                #; (lsu) a0  <-- 114
      0x80000a74 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a4c
      0x80000a4c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a50 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a58 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 2
      0x800015cc addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 3 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 2, (wrb) a4  <-- 0x800030b6
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030b6, 114 ~~> Byte[0x800030fe]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 3
      0x800015e0 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800015e4 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015ec snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c97, (wrb) s0  <-- 0x80002c98
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c99, (wrb) s10 <-- 0x80002c9a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a6c mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c98, a0  <~~ Byte[0x80002c98]
                                                #; (lsu) a0  <-- 111
      0x80000a74 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a4c
      0x80000a4c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a50 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a58 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 3
      0x800015cc addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 4 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 3, (wrb) a4  <-- 0x800030b7
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030b7, 111 ~~> Byte[0x800030ff]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 4
      0x800015e0 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800015e4 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800015ec snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c98, (wrb) s0  <-- 0x80002c99
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c9a, (wrb) s10 <-- 0x80002c9b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a6c mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c99, a0  <~~ Byte[0x80002c99]
                                                #; (lsu) a0  <-- 114
      0x80000a74 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a4c
      0x80000a4c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a50 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a58 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 4
      0x800015cc addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 5 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 4, (wrb) a4  <-- 0x800030b8
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030b8, 114 ~~> Byte[0x80003100]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 5
      0x800015e0 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800015e4 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800015ec snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c99, (wrb) s0  <-- 0x80002c9a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c9b, (wrb) s10 <-- 0x80002c9c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a6c mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c9a, a0  <~~ Byte[0x80002c9a]
                                                #; (lsu) a0  <-- 32
      0x80000a74 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a4c
      0x80000a4c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a50 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a58 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 5
      0x800015cc addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 6 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 5, (wrb) a4  <-- 0x800030b9
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030b9, 32 ~~> Byte[0x80003101]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 6
      0x800015e0 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800015e4 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015ec snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c9a, (wrb) s0  <-- 0x80002c9b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c9c, (wrb) s10 <-- 0x80002c9d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a6c mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c9b, a0  <~~ Byte[0x80002c9b]
                                                #; (lsu) a0  <-- 61
      0x80000a74 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a4c
      0x80000a4c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a50 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a58 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 6
      0x800015cc addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 7 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 6, (wrb) a4  <-- 0x800030ba
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030ba, 61 ~~> Byte[0x80003102]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 7
      0x800015e0 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800015e4 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800015ec snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c9b, (wrb) s0  <-- 0x80002c9c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c9d, (wrb) s10 <-- 0x80002c9e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a6c mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c9c, a0  <~~ Byte[0x80002c9c]
                                                #; (lsu) a0  <-- 32
      0x80000a74 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a4c
      0x80000a4c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a50 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a58 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 7
      0x800015cc addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 8 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 7, (wrb) a4  <-- 0x800030bb
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030bb, 32 ~~> Byte[0x80003103]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 8
      0x800015e0 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800015e4 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800015ec snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c9c, (wrb) s0  <-- 0x80002c9d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c9e, (wrb) s10 <-- 0x80002c9f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a6c mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c9d, a0  <~~ Byte[0x80002c9d]
                                                #; (lsu) a0  <-- 37
      0x80000a74 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a4c
      0x80000a4c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a7c
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000a7c li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a80 j       pc + 0x10              #; goto 0x80000a90
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000a90 lbu     a0, -1(s10)            #; s10 = 0x80002c9f, a0  <~~ Byte[0x80002c9e]
                                                #; (lsu) a0  <-- 102
      0x80000a94 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000a98 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000ad0
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000ad0 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000ad4 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000ad8 addi    a1, s10, -1            #; s10 = 0x80002c9f, (wrb) a1  <-- 0x80002c9e
      0x80000adc li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000ae0 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000b5c li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000b60 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000bb0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bb0 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000bb4 mv      s10, a1                #; a1  = 0x80002c9e, (wrb) s10 <-- 0x80002c9e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000bb8 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bbc li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000bc0 j       pc + 0xc               #; goto 0x80000bcc
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000bcc addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000bd0 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000bd4 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000bd8 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000bdc li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000be0 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c44
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000c44 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000c48 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c4c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c50 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000c54 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c54
      0x80000c58 addi    a2, a2, 192            #; a2  = 0x80002c54, (wrb) a2  <-- 0x80002d14
      0x80000c5c add     a1, a1, a2             #; a1  = 260, a2  = 0x80002d14, (wrb) a1  <-- 0x80002e18
      0x80000c60 lw      a2, 0(a1)              #; a1  = 0x80002e18, a2  <~~ Word[0x80002e18]
      0x80000c64 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000c68 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c9c
      0x80000c6c jr      a2                     #; a2  = 0x80000c9c, goto 0x80000c9c
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000c9c li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000ca0 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000ca8 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000cac andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000cb4 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000cb8 mv      a0, s2                 #; s2  = 0x800015ac, (wrb) a0  <-- 0x800015ac
      0x80000cb0 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
      0x80000cbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 0.0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000cc0 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000cc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cc8 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000ccc mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000cd0 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000cd4 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001cd4
      0x80000cd8 jalr    ra, ra, -1656          #; ra  = 0x80001cd4, (wrb) ra  <-- 0x80000cdc, goto 0x8000165c
; _ftoa (printf.c:340)
      0x8000165c addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001660 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000cdc ~~> Word[0x0011fe9c]
      0x80001664 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001668 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x8000166c sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800015ac ~~> Word[0x0011fe90]
      0x80001670 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001674 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001678 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x8000167c sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001680 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001684 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001688 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x8000168c sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c9e ~~> Word[0x0011fe70]
      0x80001690 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x8000169c auipc   s1, 0x2                #; (wrb) s1  <-- 0x8000369c
      0x80001694 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001698 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x800016a0 addi    s1, s1, -1684          #; s1  = 0x8000369c, (wrb) s1  <-- 0x80003008
; _ftoa (printf.c:351)
      0x800016ac mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x800016a4 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003008]
; _ftoa (printf.c:0)
      0x800016b0 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x800016b4 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800016a8 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x800016b8 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x800016bc mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x800016c0 mv      s7, a0                 #; a0  = 0x800015ac, (wrb) s7  <-- 0x800015ac
; _ftoa (printf.c:351)
      0x800016c4 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800017b4
; _ftoa (printf.c:0)
      0x800017b8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800037b8
      0x800017bc addi    a0, a0, -1960          #; a0  = 0x800037b8, (wrb) a0  <-- 0x80003010
      0x800017b4 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x800017c0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003010]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x800017c4 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x800017c8 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800017e4
; _ftoa (printf.c:0)
      0x800017e4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800037e4
      0x800017e8 addi    a0, a0, -1996          #; a0  = 0x800037e4, (wrb) a0  <-- 0x80003018
      0x800017ec fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003018]
      0x800017f0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800037f0
      0x800017f4 addi    a0, a0, -2000          #; a0  = 0x800037f0, (wrb) a0  <-- 0x80003020
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x800017f8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003020]
; _ftoa (printf.c:358)
      0x800017fc fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001800 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001804 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001808 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001904
; _ftoa (printf.c:374)
      0x80001904 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001908 li      s8, 6                  #; (wrb) s8  <-- 6
      0x8000190c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001914
; _ftoa (printf.c:0)
      0x80001914 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x8000191c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001954
; _ftoa (printf.c:0)
      0x80001918 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001954 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001958 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x8000195c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000295c
      0x80001960 addi    a1, a1, 1292           #; a1  = 0x8000295c, (wrb) a1  <-- 0x80002e68
      0x80001964 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e68, (wrb) a0  <-- 0x80002e98
      0x80001968 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e98]
; _ftoa (printf.c:383)
      0x8000196c fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001970 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x8000197c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000297c
      0x80001974 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x80001978 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:0)
      0x80001980 addi    a0, a0, 1708           #; a0  = 0x8000297c, (wrb) a0  <-- 0x80003028
      0x80001984 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003028]
; _ftoa (printf.c:385)
      0x80001988 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x8000198c fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
                                                #; (f:lsu) ft0  <-- 0.5
      0x80001990 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001994 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001998 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x800019b8
; _ftoa (printf.c:396)
      0x800019b8 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x800019bc bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800019d0
; _ftoa (printf.c:403)
      0x800019d4 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x800019d0 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x800019d8 li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x800019dc addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x800019e0 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x800019e4 li      t0, 32                 #; (wrb) t0  <-- 32
      0x800019e8 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x800019ec lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x800019f0 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x800019f4 li      a6, 10                 #; (wrb) a6  <-- 10
      0x800019f8 li      a7, 9                  #; (wrb) a7  <-- 9
      0x800019fc beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a00 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001a04 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001a08 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001a0c mul     a3, a0, a6             #; a0  = 0, a6  = 10
      0x80001a10 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001a14 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001a18 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001a1c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001a20 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001a24 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001a28 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001a2c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001a30 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001a34 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001a38 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001a3c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001a40 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001a44 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a48 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001a4c add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001a50 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001a54 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001a58 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001a5c li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001a60 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001a64 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001a68 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001a6c bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a74
      0x80001a74 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001a78 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001a7c auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a7c
      0x80001a80 jalr    ra, ra, -1316          #; ra  = 0x80000a7c, (wrb) ra  <-- 0x80001a84, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001a84, goto 0x80001a84
; _ftoa (printf.c:0)
      0x80001a84 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001a88 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001a8c sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001a90 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001a94 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001a98 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a9c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001aa0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a88
      0x80001a88 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001a8c sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001a90 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001a94 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001a98 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a9c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001aa0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a88
      0x80001a88 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001a8c sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001a90 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001a94 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001a98 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a9c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001aa0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a88
      0x80001a88 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001a8c sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001a90 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001a94 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001a98 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a9c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001aa0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a88
      0x80001a88 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001a8c sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001a90 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001a94 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001a98 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001a9c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001aa0 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001aa4 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001aa8 j       pc + 0x28              #; goto 0x80001ad0
      0x80001ad0 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001ad4 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001ad8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001adc add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001ae0 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001ae4 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001ae8 j       pc + 0x8               #; goto 0x80001af0
; _ftoa (printf.c:0)
      0x80001af0 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001af4 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001af8 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001afc li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001b04 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001b00 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001b08 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001b0c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001b10 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001b14 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001b18 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001b1c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
      0x80001b20 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001b24 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001b28 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001b2c mul     a5, a0, a6             #; a0  = 0, a6  = 10
      0x80001b30 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001b34 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001b38 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001b3c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001b40 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001b44 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001b48 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001b4c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001b50 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001b54 j       pc + 0x8               #; goto 0x80001b5c
; _ftoa (printf.c:440)
      0x80001b5c andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001b60 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001b64 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001bd0
; _ftoa (printf.c:0)
      0x80001bd0 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001bd4 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001bd8 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001bf0
; _ftoa (printf.c:453)
      0x80001bf0 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001bf4 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001bf8 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001bfc beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c28
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c28 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001c2c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001c30 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001c34 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001c38 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001c3c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c40 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c6c
; _ftoa (printf.c:0)
      0x80001c6c srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c70 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001c74 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
                                                #; (lsu) a0  <-- 48
      0x80001c80 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001c84 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c8c mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 8
      0x800015cc addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 9 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 8, (wrb) a4  <-- 0x800030bc
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030bc, 48 ~~> Byte[0x80003104]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 9
      0x800015e0 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800015e4 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c98 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001c9c mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ca0 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c78
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001c80 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001c84 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c8c mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 9
      0x800015cc addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 10 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 9, (wrb) a4  <-- 0x800030bd
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030bd, 46 ~~> Byte[0x80003105]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 10
      0x800015e0 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800015e4 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800015ec snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c98 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001c9c mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ca0 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c78
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001c80 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001c84 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c8c mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 10
      0x800015cc addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 11 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 10, (wrb) a4  <-- 0x800030be
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030be, 48 ~~> Byte[0x80003106]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 11
      0x800015e0 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800015e4 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c98 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001c9c mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ca0 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c78
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001c80 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001c84 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c8c mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 11
      0x800015cc addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 12 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 11, (wrb) a4  <-- 0x800030bf
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030bf, 48 ~~> Byte[0x80003107]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 12
      0x800015e0 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800015e4 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c98 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001c9c mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ca0 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c78
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001c80 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001c84 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c8c mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 12
      0x800015cc addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 13 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 12, (wrb) a4  <-- 0x800030c0
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030c0, 48 ~~> Byte[0x80003108]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 13
      0x800015e0 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800015e4 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c98 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001c9c mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ca0 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c78
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001c80 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001c84 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c8c mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 13
      0x800015cc addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 14 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 13, (wrb) a4  <-- 0x800030c1
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030c1, 48 ~~> Byte[0x80003109]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 14
      0x800015e0 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800015e4 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c98 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001c9c mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ca0 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c78
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001c80 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001c84 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c8c mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 14
      0x800015cc addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 15 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 14, (wrb) a4  <-- 0x800030c2
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030c2, 48 ~~> Byte[0x8000310a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 15
      0x800015e0 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800015e4 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c98 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001c9c mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ca0 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c78
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001c80 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001c84 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c8c mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 15
      0x800015cc addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 16 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 15, (wrb) a4  <-- 0x800030c3
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030c3, 48 ~~> Byte[0x8000310b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 16
      0x800015e0 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800015e4 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c98 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001c9c mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ca0 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001ca4 j       pc + 0x8               #; goto 0x80001cac
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cac sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001cb0 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001cb4 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001cb8 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001cbc or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001cc0 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001cf0
; _ftoa (printf.c:0)
      0x80001cf0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001cf4 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001cf8 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001cfc fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
                                                #; (f:lsu) fs1  <-- 0.0
      0x80001d04 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001d00 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002c9e
      0x80001d08 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001d0c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001d10 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001d14 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001d18 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001d1c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001d20 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001d24 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800015ac
      0x80001d28 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001d2c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001d30 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001d34 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000cdc
      0x80001d38 ret                            #; ra  = 0x80000cdc, goto 0x80000cdc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cdc j       pc + 0x7c0             #; goto 0x8000149c
      0x8000149c mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800014a0 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800014a4 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800014a8 addi    s0, s10, 1             #; s10 = 0x80002c9e, (wrb) s0  <-- 0x80002c9f
      0x800014ac j       pc - 0xa74             #; goto 0x80000a38
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a38 addi    s10, s0, 2             #; s0  = 0x80002c9f, (wrb) s10 <-- 0x80002ca1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a3c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000a40 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a44 lbu     a0, 0(s0)              #; s0  = 0x80002c9f, a0  <~~ Byte[0x80002c9f]
                                                #; (lsu) a0  <-- 10
      0x80000a48 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a4c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a50 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a58 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
      0x800015c0 addi    a3, a3, -1288          #; a3  = 0x800035bc, (wrb) a3  <-- 0x800030b4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030b4, (wrb) a1  <-- 0x800030b4
      0x800015c8 lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 16
      0x800015cc addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800015d0 sw      a5, 0(a1)              #; a1  = 0x800030b4, 17 ~~> Word[0x800030b4]
      0x800015d4 add     a4, a1, a4             #; a1  = 0x800030b4, a4  = 16, (wrb) a4  <-- 0x800030c4
      0x800015d8 sb      a0, 72(a4)             #; a4  = 0x800030c4, 10 ~~> Byte[0x8000310c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc lw      a4, 0(a1)              #; a1  = 0x800030b4, a4  <~~ Word[0x800030b4]
                                                #; (lsu) a4  <-- 17
      0x800015e0 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800015e4 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800015e8 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800015ec snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800015f0 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800015f4 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 add     a0, a3, a2             #; a3  = 0x800030b4, a2  = 0, (wrb) a0  <-- 0x800030b4
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc addi    a2, a0, 72             #; a0  = 0x800030b4, (wrb) a2  <-- 0x800030fc
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 sw      zero, 12(a0)           #; a0  = 0x800030b4, 0 ~~> Word[0x800030c0]
      0x80001604 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001608 sw      a3, 8(a0)              #; a0  = 0x800030b4, 64 ~~> Word[0x800030bc]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000160c sw      zero, 20(a0)           #; a0  = 0x800030b4, 0 ~~> Word[0x800030c8]
      0x80001610 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001614 sw      a3, 16(a0)             #; a0  = 0x800030b4, 1 ~~> Word[0x800030c4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001618 sw      zero, 28(a0)           #; a0  = 0x800030b4, 0 ~~> Word[0x800030d0]
      0x8000161c sw      a2, 24(a0)             #; a0  = 0x800030b4, 0x800030fc ~~> Word[0x800030cc]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001620 lw      a2, 0(a1)              #; a1  = 0x800030b4, a2  <~~ Word[0x800030b4]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 addi    a3, a0, 8              #; a0  = 0x800030b4, (wrb) a3  <-- 0x800030bc
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001628 sw      zero, 36(a0)           #; a0  = 0x800030b4, 0 ~~> Word[0x800030d8]
                                                #; (lsu) a2  <-- 17
      0x8000162c sw      a2, 32(a0)             #; a0  = 0x800030b4, 17 ~~> Word[0x800030d4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001630 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003630
      0x80001634 addi    a0, a0, -1904          #; a0  = 0x80003630, (wrb) a0  <-- 0x80002ec0
      0x80001638 sw      a3, 0(a0)              #; a0  = 0x80002ec0, 0x800030bc ~~> Word[0x80002ec0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000163c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000363c
      0x80001640 addi    a0, a0, -1852          #; a0  = 0x8000363c, (wrb) a0  <-- 0x80002f00
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001644 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001648 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001644
      0x80001644 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 0
      0x80001648 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001644
      0x80001644 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
                                                #; (lsu) a2  <-- 1
      0x80001648 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c sw      zero, 0(a0)            #; a0  = 0x80002f00, 0 ~~> Word[0x80002f00]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 sw      zero, 0(a1)            #; a1  = 0x800030b4, 0 ~~> Word[0x800030b4]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c9f, (wrb) s0  <-- 0x80002ca0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002ca1, (wrb) s10 <-- 0x80002ca2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a6c mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002ca0, a0  <~~ Byte[0x80002ca0]
                                                #; (lsu) a0  <-- 0
      0x80000a74 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000a78 j       pc + 0xad8             #; goto 0x80001550
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001550 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001554 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x8000155c
      0x8000155c li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001560 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001564 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001568 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x8000156c, goto 0x800015ac
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ac beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001654
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001654 ret                            #; ra  = 0x8000156c, goto 0x8000156c
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x8000156c mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001570 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001574 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001578 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x8000157c lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001580 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x80001584 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001588 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x8000158c lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001590 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x80001594 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001598 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x8000159c lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x800015a0 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x800015a4 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x800009a8
      0x800015a8 ret                            #; ra  = 0x800009a8, goto 0x800009a8
; printf_ (printf.c:869)
      0x800009a8 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x800009ac addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000938
      0x800009b0 ret                            #; ra  = 0x80000938, goto 0x80000938
; main (test_reverse_conflict.c:0)
      0x80000938 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002938
      0x8000093c addi    a0, a0, 1736           #; a0  = 0x80002938, (wrb) a0  <-- 0x80003000
      0x80000940 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003000]
; main (test_reverse_conflict.c:45)
      0x8000094c lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                                                #; (f:lsu) ft3  <-- 0.0001
      0x80000950 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
      0x80000944 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
                                                #; (lsu) ra  <-- 0x80002a10
      0x80000954 ret                            #; ra  = 0x80002a10, goto 0x80002a10
      0x80000948 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x80002a10 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002a14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a14
      0x80002a18 jalr    ra, ra, 524            #; ra  = 0x80002a14, (wrb) ra  <-- 0x80002a1c, goto 0x80002c20
; ?? (start_snitch.S:33)
      0x80002c20 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002c24 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a1c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002c28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c28
      0x80002c2c jalr    ra, ra, -1268          #; ra  = 0x80002c28, (wrb) ra  <-- 0x80002c30, goto 0x80002734
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002734 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002738 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000273c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002740 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002744 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002748 ret                            #; ra  = 0x80002c30, goto 0x80002c30
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002c30 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002c34 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002c38 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002c3c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002a1c
; ?? (start_snitch.S:40)
      0x80002c40 ret                            #; ra  = 0x80002a1c, goto 0x80002a1c
; ?? (start.S:195)
      0x80002a1c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002a20 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a20
      0x80002a24 jalr    ra, ra, 556            #; ra  = 0x80002a20, (wrb) ra  <-- 0x80002a28, goto 0x80002c4c
; ?? (start_snitch.S:15)
      0x80002c4c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002c50 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002c54 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002a28 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002c58 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c58
      0x80002c5c jalr    ra, ra, -1348          #; ra  = 0x80002c58, (wrb) ra  <-- 0x80002c60, goto 0x80002714
; snrt_global_core_idx (team.c:32)
      0x80002714 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002718 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000271c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002720 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002724 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002728 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x8000272c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002730 ret                            #; ra  = 0x80002c60, goto 0x80002c60
; ?? (start_snitch.S:20)
      0x80002c60 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002c64 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002c68 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002c6c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002a28
; ?? (start_snitch.S:28)
      0x80002c70 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002c74 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002c78 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c78
      0x80002c7c addi    t1, t1, 584            #; t1  = 0x80002c78, (wrb) t1  <-- 0x80002ec0
; ?? (start_snitch.S:31)
      0x80002c80 sw      t0, 0(t1)              #; t1  = 0x80002ec0, 1 ~~> Word[0x80002ec0]
; ?? (start_snitch.S:32)
      0x80002c84 ret                            #; ra  = 0x80002a28, goto 0x80002a28
; ?? (start.S:198)
      0x80002a28 wfi                            #; 
                        tion 0 @ (12, 5669):
                          131
                          141
                           14
                           42
                      12.2824
                       0.2248
                       0.1130
                          1.0
                          1.0
                            0
                         1.34
                       7.8571
                       0.0286
                       0.0177
                       0.6173
                         5658
                       0.2534
