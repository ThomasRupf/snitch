; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800028f0
      0x00001014 jalr    t0                     #; t0  = 0x800028f0, (wrb) ra  <-- 4120, goto 0x800028f0
; ?? (start.S:20)
      0x800028f0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800038f0
; ?? (start.S:21)
      0x800028f4 addi    gp, gp, -232           #; gp  = 0x800038f0, (wrb) gp  <-- 0x80003808
; ?? (start.S:28)
      0x800028f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028f8
      0x800028fc jalr    ra, ra, 964            #; ra  = 0x800028f8, (wrb) ra  <-- 0x80002900, goto 0x80002cbc
; ?? (start_snitch.S:16)
      0x80002cbc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002cc0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002cc4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002cc8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002ccc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002cd0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002cd4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002cd8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002cdc mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002ce0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002ce4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002ce8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002cec ret                            #; ra  = 0x80002900, goto 0x80002900
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002900 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002904 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002908 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002908
      0x8000290c jalr    ra, ra, 1036           #; ra  = 0x80002908, (wrb) ra  <-- 0x80002910, goto 0x80002d14
; ?? (start_snitch.S:48)
      0x80002d14 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002d18 ret                            #; ra  = 0x80002910, goto 0x80002910
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002910 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002914 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002918 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000291c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002920 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002924 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80003924
      0x80002928 addi    t0, t0, -2044          #; t0  = 0x80003924, (wrb) t0  <-- 0x80003128
; ?? (start.S:49)
      0x8000292c auipc   t1, 0x1                #; (wrb) t1  <-- 0x8000392c
      0x80002930 addi    t1, t1, -2048          #; t1  = 0x8000392c, (wrb) t1  <-- 0x8000312c
; ?? (start.S:50)
      0x80002934 bge     t0, t1, pc + 16        #; t0  = 0x80003128, t1  = 0x8000312c, not taken
; ?? (start.S:51)
      0x80002938 sw      zero, 0(t0)            #; t0  = 0x80003128, 0 ~~> Word[0x80003128]
; ?? (start.S:52)
      0x8000293c addi    t0, t0, 4              #; t0  = 0x80003128, (wrb) t0  <-- 0x8000312c
; ?? (start.S:53)
      0x80002940 blt     t0, t1, pc - 8         #; t0  = 0x8000312c, t1  = 0x8000312c, not taken
; ?? (start.S:58)
      0x80002944 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002948 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000294c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002950 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002954 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002958 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000295c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002960 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002964 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002968 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000296c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002970 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002974 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002978 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000297c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002980 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002984 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002988 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000298c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002990 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002994 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002998 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000299c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x800029a0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x800029a4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x800029a8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x800029ac fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x800029b0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x800029b4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x800029b8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x800029bc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x800029c0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x800029c4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x800029c8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x800029cc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x800029d0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x800029d4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x800029d8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029d8
      0x800029dc lw      t0, 900(t0)            #; t0  = 0x800029d8, t0  <~~ Word[0x80002d5c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x800029e0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x800029e4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x800029e8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029e8
      0x800029ec lw      t2, 880(t2)            #; t2  = 0x800029e8, t2  <~~ Word[0x80002d58]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x800029f0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x800029f4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x800029f8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x800029fc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002a00 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002a04 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002a08 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002a0c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002a10 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a10
      0x80002a14 addi    t0, t0, 1528           #; t0  = 0x80002a10, (wrb) t0  <-- 0x80003008
; ?? (start.S:125)
      0x80002a18 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a18
      0x80002a1c addi    t1, t1, 1520           #; t1  = 0x80002a18, (wrb) t1  <-- 0x80003008
; ?? (start.S:126)
      0x80002a20 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a20
      0x80002a24 addi    t2, t2, 1512           #; t2  = 0x80002a20, (wrb) t2  <-- 0x80003008
; ?? (start.S:127)
      0x80002a28 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002a28
      0x80002a2c addi    t3, t3, 1520           #; t3  = 0x80002a28, (wrb) t3  <-- 0x80003018
; ?? (start.S:128)
      0x80002a30 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003008, (wrb) sp  <-- 0x80122f78
; ?? (start.S:129)
      0x80002a34 sub     sp, sp, t1             #; sp  = 0x80122f78, t1  = 0x80003008, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002a38 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003008, (wrb) sp  <-- 0x80122f78
; ?? (start.S:131)
      0x80002a3c sub     sp, sp, t3             #; sp  = 0x80122f78, t3  = 0x80003018, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002a40 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002a44 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002a48 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002a4c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002a50 bge     t0, t1, pc + 24        #; t0  = 0x80003008, t1  = 0x80003008, taken, goto 0x80002a68
; ?? (start.S:147)
      0x80002a68 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a68
      0x80002a6c addi    t0, t0, 1440           #; t0  = 0x80002a68, (wrb) t0  <-- 0x80003008
; ?? (start.S:148)
      0x80002a70 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a70
      0x80002a74 addi    t1, t1, 1448           #; t1  = 0x80002a70, (wrb) t1  <-- 0x80003018
; ?? (start.S:149)
      0x80002a78 bge     t0, t1, pc + 20        #; t0  = 0x80003008, t1  = 0x80003018, not taken
; ?? (start.S:150)
      0x80002a7c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002a80 addi    t0, t0, 4              #; t0  = 0x80003008, (wrb) t0  <-- 0x8000300c
; ?? (start.S:152)
      0x80002a84 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002a88 blt     t0, t2, pc - 12        #; t0  = 0x8000300c, t2  = 0x80003008, not taken
; ?? (start.S:158)
      0x80002a8c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002a90 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002a94 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002a98 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002a9c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002aa0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002aa4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002aa4
      0x80002aa8 jalr    ra, ra, -1052          #; ra  = 0x80002aa4, (wrb) ra  <-- 0x80002aac, goto 0x80002688
; _snrt_init_team (start.c:49)
      0x80002688 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x8000268c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002690 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002694 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002698 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x8000269c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800026a0 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800026a4 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800026a8 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800026ac sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800026b0 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800026b4 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800026b8 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800026bc sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800026c0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800026c4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800026c8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800026cc lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800026d0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800026d4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800026d8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800026dc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800026e0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800026e4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800026e8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800026ec sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800026f0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800026f4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800026f8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800026fc sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002700 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002704 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002708 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x8000270c sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002710 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002714 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002718 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x8000271c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002720 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002724 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002728 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x8000272c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002730 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002734 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002738 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x8000273c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002740 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002744 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002748 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000274c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002750 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002754 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002758 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x8000275c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002760 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002764 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002768 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x8000276c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80002770 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002774 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002778 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x8000277c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000377c
      0x80002780 addi    a1, a1, -1616          #; a1  = 0x8000377c, (wrb) a1  <-- 0x8000312c
      0x80002784 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000312c, (wrb) a0  <-- 0x8000312c
      0x80002788 sw      zero, 0(a0)            #; a0  = 0x8000312c, 0 ~~> Word[0x8000312c]
; _snrt_init_team (start.c:86)
      0x8000278c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002790 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002794 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002798 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x8000279c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x800027a0 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x800027a4 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x800027a8 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x800027ac sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800027b0 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800027b4 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800027b8 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800027bc lw      a0, 0(a1)              #; a1  = 0x8000312c, a0  <~~ Word[0x8000312c]
                                                #; (lsu) a0  <-- 0
      0x800027c0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800027c4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800027c8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800027cc sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800027d0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800027d4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027d8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027dc sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800027e0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027e4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027e8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800027ec ret                            #; ra  = 0x80002aac, goto 0x80002aac
; ?? (start.S:165)
      0x80002aac lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002ab0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002ab4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002ab8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002abc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002ac0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002ac4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ac4
      0x80002ac8 addi    t0, t0, 60             #; t0  = 0x80002ac4, (wrb) t0  <-- 0x80002b00
; ?? (start.S:175)
      0x80002acc csrw    mtvec, t0              #; t0  = 0x80002b00, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002ad0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ad0
      0x80002ad4 jalr    ra, ra, 544            #; ra  = 0x80002ad0, (wrb) ra  <-- 0x80002ad8, goto 0x80002cf0
; ?? (start_snitch.S:33)
      0x80002cf0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002cf4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002ad8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002cf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cf8
      0x80002cfc jalr    ra, ra, -1256          #; ra  = 0x80002cf8, (wrb) ra  <-- 0x80002d00, goto 0x80002810
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002810 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002814 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002818 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000281c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002820 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002824 ret                            #; ra  = 0x80002d00, goto 0x80002d00
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002d00 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002d04 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002d08 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002d0c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002ad8
; ?? (start_snitch.S:40)
      0x80002d10 ret                            #; ra  = 0x80002ad8, goto 0x80002ad8
; ?? (start.S:183)
      0x80002ad8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000ad8
      0x80002adc jalr    ra, ra, -648           #; ra  = 0x80000ad8, (wrb) ra  <-- 0x80002ae0, goto 0x80000850
; main (test_reverse_conflict.c:23)
      0x80000850 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_reverse_conflict.c:24)
      0x80000854 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002ae0 ~~> Word[0x0011ff5c]
      0x80000858 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
      0x80000860 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000864 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000085c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000868 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_reverse_conflict.c:0)
      0x8000086c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_reverse_conflict.c:24)
      0x80000870 bnez    a1, pc + 152           #; a1  = 0, not taken
; main (test_reverse_conflict.c:0)
      0x80000874 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002874
      0x80000878 addi    a0, a0, 2028           #; a0  = 0x80002874, (wrb) a0  <-- 0x80003060
      0x8000087c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x80003060]
; main (test_reverse_conflict.c:31)
      0x80000880 lui     a0, 0x100              #; (wrb) a0  <-- 0x00100000
      0x80000884 lui     s0, 0x100              #; (wrb) s0  <-- 0x00100000
      0x80000888 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000888
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 1.0
; main (test_reverse_conflict.c:31)
      0x8000088c jalr    ra, ra, -596           #; ra  = 0x80000888, (wrb) ra  <-- 0x80000890, goto 0x80000634
; init_data (test_reverse_conflict.c:10)
      0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
      0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
      0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
      0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
      0x8000064c beqz    a1, pc + 236           #; a1  = 1, not taken
; init_data (test_reverse_conflict.c:0)
      0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
; init_data (test_reverse_conflict.c:10)
      0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
      0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
      0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
      0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
      0x80000670 scfgwi  a0, 896                #; a0  = 0x00100000
; init_data (test_reverse_conflict.c:0)
      0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
      0x80000674 csrrsi  a0, ssr, 1             #; 
      0x8000067c addi    a0, a0, -1632          #; a0  = 0x80003678, (wrb) a0  <-- 0x80003018
      0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018]
      0x8000068c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000368c
      0x80000684 fsgnj.d ft0, fa0, fa0          #; fa0  = 1.0, fa0  = 1.0
                                                #; (f:fpu) ft0  <-- 1.0
                                                #; (f:lsu) ft3  <-- 0.01
      0x80000690 addi    a0, a0, -1644          #; a0  = 0x8000368c, (wrb) a0  <-- 0x80003020
      0x80000688 fadd.d  ft3, fa0, ft3          #; fa0  = 1.0, ft3  = 0.01
      0x8000069c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000369c
      0x80000694 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003020], (f:fpu) ft3  <-- 1.01
; init_data (test_reverse_conflict.c:11)
      0x80000698 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.01, ft3  = 1.01
                                                #; (f:fpu) ft0  <-- 1.01
; init_data (test_reverse_conflict.c:0)
      0x800006a0 addi    a0, a0, -1652          #; a0  = 0x8000369c, (wrb) a0  <-- 0x80003028
                                                #; (f:lsu) ft4  <-- 0.02
      0x800006a4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003028]
; init_data (test_reverse_conflict.c:11)
      0x800006a8 fadd.d  ft4, fa0, ft4          #; fa0  = 1.0, ft4  = 0.02
                                                #; (f:fpu) ft4  <-- 1.02
      0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 1.02, ft4  = 1.02
                                                #; (f:fpu) ft0  <-- 1.02
                                                #; (f:lsu) ft3  <-- 0.03
; init_data (test_reverse_conflict.c:0)
      0x800006b4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b4
      0x800006b8 addi    a0, a0, -1668          #; a0  = 0x800036b4, (wrb) a0  <-- 0x80003030
      0x800006b0 fadd.d  ft3, fa0, ft3          #; fa0  = 1.0, ft3  = 0.03
      0x800006bc fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003030], (f:fpu) ft3  <-- 1.03
      0x800006c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036c4
      0x800006c8 addi    a0, a0, -1676          #; a0  = 0x800036c4, (wrb) a0  <-- 0x80003038
      0x800006c0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.03, ft3  = 1.03, (f:lsu) ft4  <-- 0.04
                                                #; (f:fpu) ft0  <-- 1.03
      0x800006cc fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003038]
; init_data (test_reverse_conflict.c:11)
      0x800006d0 fadd.d  ft4, fa0, ft4          #; fa0  = 1.0, ft4  = 0.04, (f:lsu) ft3  <-- 0.05
; init_data (test_reverse_conflict.c:0)
      0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
                                                #; (f:fpu) ft4  <-- 1.04
; init_data (test_reverse_conflict.c:11)
      0x800006d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.04, ft4  = 1.04
      0x800006d8 fadd.d  ft3, fa0, ft3          #; fa0  = 1.0, ft3  = 0.05, (f:fpu) ft0  <-- 1.04
                                                #; (f:fpu) ft3  <-- 1.05
; init_data (test_reverse_conflict.c:0)
      0x800006e0 addi    a0, a0, -1692          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80003040
      0x800006ec auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036ec
      0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003040]
; init_data (test_reverse_conflict.c:11)
      0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.05, ft3  = 1.05
                                                #; (f:fpu) ft0  <-- 1.05
; init_data (test_reverse_conflict.c:0)
      0x800006f0 addi    a0, a0, -1700          #; a0  = 0x800036ec, (wrb) a0  <-- 0x80003048
                                                #; (f:lsu) ft4  <-- 0.06
      0x800006f4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003048]
; init_data (test_reverse_conflict.c:11)
      0x800006f8 fadd.d  ft4, fa0, ft4          #; fa0  = 1.0, ft4  = 0.06
                                                #; (f:fpu) ft4  <-- 1.06
      0x800006fc fsgnj.d ft0, ft4, ft4          #; ft4  = 1.06, ft4  = 1.06
                                                #; (f:fpu) ft0  <-- 1.06
                                                #; (f:lsu) ft3  <-- 0.07
; init_data (test_reverse_conflict.c:0)
      0x80000704 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003704
      0x80000708 addi    a0, a0, -1716          #; a0  = 0x80003704, (wrb) a0  <-- 0x80003050
      0x80000700 fadd.d  ft3, fa0, ft3          #; fa0  = 1.0, ft3  = 0.07
      0x8000070c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003050], (f:fpu) ft3  <-- 1.07
      0x80000714 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003714
      0x80000718 addi    a0, a0, -1724          #; a0  = 0x80003714, (wrb) a0  <-- 0x80003058
      0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.07, ft3  = 1.07, (f:lsu) ft4  <-- 0.08
                                                #; (f:fpu) ft0  <-- 1.07
      0x8000071c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003058]
; init_data (test_reverse_conflict.c:11)
      0x80000720 fadd.d  ft4, fa0, ft4          #; fa0  = 1.0, ft4  = 0.08, (f:lsu) ft3  <-- 0.09
                                                #; (f:fpu) ft4  <-- 1.08
      0x80000724 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.08, ft4  = 1.08
      0x80000728 fadd.d  ft3, fa0, ft3          #; fa0  = 1.0, ft3  = 0.09, (f:fpu) ft0  <-- 1.08
                                                #; (f:fpu) ft3  <-- 1.09
      0x8000072c fsgnj.d ft0, ft3, ft3          #; ft3  = 1.09, ft3  = 1.09
                                                #; (f:fpu) ft0  <-- 1.09
; init_data (test_reverse_conflict.c:13)
      0x80000734 ret                            #; ra  = 0x80000890, goto 0x80000890
      0x80000730 csrrci  a0, ssr, 1             #; 
; main (test_reverse_conflict.c:0)
      0x80000890 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002890
      0x80000894 addi    a0, a0, 2008           #; a0  = 0x80002890, (wrb) a0  <-- 0x80003068
      0x8000089c addi    s0, s0, 80             #; s0  = 0x00100000, (wrb) s0  <-- 0x00100050
      0x80000898 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x80003068]
; main (test_reverse_conflict.c:32)
      0x800008a0 mv      a0, s0                 #; s0  = 0x00100050, (wrb) a0  <-- 0x00100050
      0x800008a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008a4
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 10.0
; main (test_reverse_conflict.c:32)
      0x800008a8 jalr    ra, ra, -624           #; ra  = 0x800008a4, (wrb) ra  <-- 0x800008ac, goto 0x80000634
; init_data (test_reverse_conflict.c:10)
      0x80000634 srli    a1, a0, 20             #; a0  = 0x00100050, (wrb) a1  <-- 1
      0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
      0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100050, a2  = 0x0011ffb9, (wrb) a2  <-- 1
      0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
      0x8000064c beqz    a1, pc + 236           #; a1  = 1, not taken
; init_data (test_reverse_conflict.c:0)
      0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
; init_data (test_reverse_conflict.c:10)
      0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
      0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
      0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
      0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
      0x80000670 scfgwi  a0, 896                #; a0  = 0x00100050
; init_data (test_reverse_conflict.c:0)
      0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
      0x80000674 csrrsi  a0, ssr, 1             #; 
      0x8000067c addi    a0, a0, -1632          #; a0  = 0x80003678, (wrb) a0  <-- 0x80003018
                                                #; (acc) gp  <-- 0x00053187
      0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018]
      0x8000068c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000368c
      0x80000684 fsgnj.d ft0, fa0, fa0          #; fa0  = 10.0, fa0  = 10.0
      0x80000690 addi    a0, a0, -1644          #; a0  = 0x8000368c, (wrb) a0  <-- 0x80003020
                                                #; (f:fpu) ft0  <-- 10.0
      0x8000069c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000369c
      0x800006a0 addi    a0, a0, -1652          #; a0  = 0x8000369c, (wrb) a0  <-- 0x80003028
                                                #; (f:lsu) ft3  <-- 0.01
; init_data (test_reverse_conflict.c:11)
      0x80000688 fadd.d  ft3, fa0, ft3          #; fa0  = 10.0, ft3  = 0.01
; init_data (test_reverse_conflict.c:0)
      0x800006b4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b4
      0x80000694 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003020]
      0x800006b8 addi    a0, a0, -1668          #; a0  = 0x800036b4, (wrb) a0  <-- 0x80003030
                                                #; (f:fpu) ft3  <-- 10.01
; init_data (test_reverse_conflict.c:11)
      0x80000698 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.01, ft3  = 10.01
; init_data (test_reverse_conflict.c:0)
      0x800006c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036c4
      0x800006a4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003028], (f:fpu) ft0  <-- 10.01
      0x800006c8 addi    a0, a0, -1676          #; a0  = 0x800036c4, (wrb) a0  <-- 0x80003038
      0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
                                                #; (f:lsu) ft4  <-- 0.02
      0x800006e0 addi    a0, a0, -1692          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80003040
      0x800006a8 fadd.d  ft4, fa0, ft4          #; fa0  = 10.0, ft4  = 0.02
                                                #; (f:lsu) ft3  <-- 0.03
      0x800006ec auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036ec
                                                #; (f:fpu) ft4  <-- 10.02
      0x800006f0 addi    a0, a0, -1700          #; a0  = 0x800036ec, (wrb) a0  <-- 0x80003048
      0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 10.02, ft4  = 10.02
; init_data (test_reverse_conflict.c:11)
      0x800006b0 fadd.d  ft3, fa0, ft3          #; fa0  = 10.0, ft3  = 0.03, (f:fpu) ft0  <-- 10.02
; init_data (test_reverse_conflict.c:0)
      0x800006bc fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003030]
                                                #; (f:fpu) ft3  <-- 10.03
      0x80000704 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003704
      0x800006c0 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.03, ft3  = 10.03
      0x80000708 addi    a0, a0, -1716          #; a0  = 0x80003704, (wrb) a0  <-- 0x80003050
      0x800006cc fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003038], (f:fpu) ft0  <-- 10.03
      0x80000714 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003714
      0x80000718 addi    a0, a0, -1724          #; a0  = 0x80003714, (wrb) a0  <-- 0x80003058
                                                #; (f:lsu) ft4  <-- 0.04
; init_data (test_reverse_conflict.c:11)
      0x800006d0 fadd.d  ft4, fa0, ft4          #; fa0  = 10.0, ft4  = 0.04
                                                #; (f:lsu) ft3  <-- 0.05
                                                #; (f:fpu) ft4  <-- 10.04
; init_data (test_reverse_conflict.c:13)
      0x80000734 ret                            #; ra  = 0x800008ac, goto 0x800008ac
      0x800006d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 10.04, ft4  = 10.04
; init_data (test_reverse_conflict.c:11)
      0x800006d8 fadd.d  ft3, fa0, ft3          #; fa0  = 10.0, ft3  = 0.05, (f:fpu) ft0  <-- 10.04
; init_data (test_reverse_conflict.c:0)
      0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003040]
; main (test_reverse_conflict.c:34)
      0x800008ac lui     a0, 0x100              #; (wrb) a0  <-- 0x00100000
                                                #; (f:fpu) ft3  <-- 10.05
; init_data (test_reverse_conflict.c:11)
      0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.05, ft3  = 10.05
; init_data (test_reverse_conflict.c:0)
      0x800006f4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003048], (f:fpu) ft0  <-- 10.05
; main (test_reverse_conflict.c:34)
      0x800008b0 li      a2, 10                 #; (wrb) a2  <-- 10
      0x800008b4 mv      a1, s0                 #; s0  = 0x00100050, (wrb) a1  <-- 0x00100050
      0x800008b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008b8
      0x800008bc jalr    ra, ra, 100            #; ra  = 0x800008b8, (wrb) ra  <-- 0x800008c0, goto 0x8000091c
                                                #; (f:lsu) ft4  <-- 0.06
; init_data (test_reverse_conflict.c:11)
      0x800006f8 fadd.d  ft4, fa0, ft4          #; fa0  = 10.0, ft4  = 0.06
                                                #; (f:lsu) ft3  <-- 0.07
                                                #; (f:fpu) ft4  <-- 10.06
      0x800006fc fsgnj.d ft0, ft4, ft4          #; ft4  = 10.06, ft4  = 10.06
      0x80000700 fadd.d  ft3, fa0, ft3          #; fa0  = 10.0, ft3  = 0.07, (f:fpu) ft0  <-- 10.06
; init_data (test_reverse_conflict.c:0)
      0x8000070c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003050]
; reverse_conflict (reverse_conflict.c:3)
      0x8000091c li      a3, 2                  #; (wrb) a3  <-- 2
                                                #; (f:fpu) ft3  <-- 10.07
; init_data (test_reverse_conflict.c:11)
      0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.07, ft3  = 10.07
; init_data (test_reverse_conflict.c:0)
      0x8000071c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003058], (f:fpu) ft0  <-- 10.07
; reverse_conflict (reverse_conflict.c:4)
      0x80000920 blt     a2, a3, pc + 272       #; a2  = 10, a3  = 2, not taken
      0x80000924 slli    a3, a2, 3              #; a2  = 10, (wrb) a3  <-- 80
      0x80000928 sub     a1, a1, a3             #; a1  = 0x00100050, a3  = 80, (wrb) a1  <-- 0x00100000
      0x8000092c addi    a6, a2, -2             #; a2  = 10, (wrb) a6  <-- 8
                                                #; (f:lsu) ft4  <-- 0.08
; init_data (test_reverse_conflict.c:11)
      0x80000720 fadd.d  ft4, fa0, ft4          #; fa0  = 10.0, ft4  = 0.08
                                                #; (f:lsu) ft3  <-- 0.09
                                                #; (f:fpu) ft4  <-- 10.08
      0x80000724 fsgnj.d ft0, ft4, ft4          #; ft4  = 10.08, ft4  = 10.08
      0x80000728 fadd.d  ft3, fa0, ft3          #; fa0  = 10.0, ft3  = 0.09, (f:fpu) ft0  <-- 10.08
; reverse_conflict (reverse_conflict.c:4)
      0x80000930 slli    a4, a6, 3              #; a6  = 8, (wrb) a4  <-- 64
      0x80000934 add     a3, a1, a4             #; a1  = 0x00100000, a4  = 64, (wrb) a3  <-- 0x00100040
      0x80000938 addi    a0, a0, 8              #; a0  = 0x00100000, (wrb) a0  <-- 0x00100008
                                                #; (f:fpu) ft3  <-- 10.09
      0x8000093c add     t2, a4, a0             #; a4  = 64, a0  = 0x00100008, (wrb) t2  <-- 0x00100048
      0x8000072c fsgnj.d ft0, ft3, ft3          #; ft3  = 10.09, ft3  = 10.09
; init_data (test_reverse_conflict.c:0)
      0x80000730 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 10.09
; reverse_conflict (reverse_conflict.c:4)
      0x80000940 bgeu    a3, a1, pc + 20        #; a3  = 0x00100040, a1  = 0x00100000, taken, goto 0x80000954
; reverse_conflict (reverse_conflict.c:0)
      0x80000954 sltu    a7, a3, a0             #; a3  = 0x00100040, a0  = 0x00100008, (wrb) a7  <-- 0
; reverse_conflict (reverse_conflict.c:4)
      0x80000958 bgeu    t2, a4, pc - 12        #; t2  = 0x00100048, a4  = 64, taken, goto 0x8000094c
; reverse_conflict (reverse_conflict.c:0)
      0x8000094c sltu    a5, t2, a1             #; t2  = 0x00100048, a1  = 0x00100000, (wrb) a5  <-- 0
      0x80000950 j       pc + 0x10              #; goto 0x80000960
; reverse_conflict (reverse_conflict.c:4)
      0x80000960 or      t0, a7, a5             #; a7  = 0, a5  = 0, (wrb) t0  <-- 0
      0x80000964 srli    a5, a1, 20             #; a1  = 0x00100000, (wrb) a5  <-- 1
      0x80000968 snez    t1, a5                 #; a5  = 1, (wrb) t1  <-- 1
      0x8000096c lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x80000970 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
      0x80000974 bgeu    a3, a1, pc + 12        #; a3  = 0x00100040, a1  = 0x00100000, taken, goto 0x80000980
; reverse_conflict (reverse_conflict.c:0)
      0x80000980 sltu    a3, a3, a7             #; a3  = 0x00100040, a7  = 0x00120001, (wrb) a3  <-- 1
; reverse_conflict (reverse_conflict.c:4)
      0x80000984 and     a3, t1, a3             #; t1  = 1, a3  = 1, (wrb) a3  <-- 1
      0x80000988 and     t0, t0, a3             #; t0  = 0, a3  = 1, (wrb) t0  <-- 0
      0x8000098c srli    a3, a0, 20             #; a0  = 0x00100008, (wrb) a3  <-- 1
      0x80000990 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x80000994 bgeu    t2, a4, pc + 12        #; t2  = 0x00100048, a4  = 64, taken, goto 0x800009a0
; reverse_conflict (reverse_conflict.c:0)
      0x800009a0 sltu    a4, t2, a7             #; t2  = 0x00100048, a7  = 0x00120001, (wrb) a4  <-- 1
; reverse_conflict (reverse_conflict.c:4)
      0x800009a4 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x800009a8 and     a3, a3, t0             #; a3  = 1, t0  = 0, (wrb) a3  <-- 0
      0x800009ac beqz    a3, pc + 100           #; a3  = 0, taken, goto 0x80000a10
      0x80000a10 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
; reverse_conflict (reverse_conflict.c:5)
      0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft3  <-- 1.0
      0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000a1c fsd     ft3, 0(a0)             #; 2.0 ~~> Doub[0x00100008]
; reverse_conflict (reverse_conflict.c:4)
      0x80000a20 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100008, (wrb) a0  <-- 0x00100010
      0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
      0x80000a2c bnez    a2, pc - 24            #; a2  = 8, taken, goto 0x80000a14
; reverse_conflict (reverse_conflict.c:5)
      0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100008]
; reverse_conflict (reverse_conflict.c:4)
      0x80000a20 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                                                #; (f:lsu) ft3  <-- 2.0
      0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100010, (wrb) a0  <-- 0x00100018
      0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
      0x80000a2c bnez    a2, pc - 24            #; a2  = 7, taken, goto 0x80000a14
                                                #; (f:fpu) ft3  <-- 4.0
; reverse_conflict (reverse_conflict.c:5)
      0x80000a1c fsd     ft3, 0(a0)             #; 4.0 ~~> Doub[0x00100010]
      0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100010]
; reverse_conflict (reverse_conflict.c:4)
      0x80000a20 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                                                #; (f:lsu) ft3  <-- 4.0
      0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100018, (wrb) a0  <-- 0x00100020
      0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
      0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
      0x80000a2c bnez    a2, pc - 24            #; a2  = 6, taken, goto 0x80000a14
                                                #; (f:fpu) ft3  <-- 8.0
; reverse_conflict (reverse_conflict.c:5)
      0x80000a1c fsd     ft3, 0(a0)             #; 8.0 ~~> Doub[0x00100018]
      0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100018]
; reverse_conflict (reverse_conflict.c:4)
      0x80000a20 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:lsu) ft3  <-- 8.0
      0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100020, (wrb) a0  <-- 0x00100028
      0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
      0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
      0x80000a2c bnez    a2, pc - 24            #; a2  = 5, taken, goto 0x80000a14
                                                #; (f:fpu) ft3  <-- 16.0
; reverse_conflict (reverse_conflict.c:5)
      0x80000a1c fsd     ft3, 0(a0)             #; 16.0 ~~> Doub[0x00100020]
      0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100020]
; reverse_conflict (reverse_conflict.c:4)
      0x80000a20 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:lsu) ft3  <-- 16.0
      0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100028, (wrb) a0  <-- 0x00100030
      0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 16.0, ft3  = 16.0
      0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
      0x80000a2c bnez    a2, pc - 24            #; a2  = 4, taken, goto 0x80000a14
                                                #; (f:fpu) ft3  <-- 32.0
; reverse_conflict (reverse_conflict.c:5)
      0x80000a1c fsd     ft3, 0(a0)             #; 32.0 ~~> Doub[0x00100028]
      0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100028]
; reverse_conflict (reverse_conflict.c:4)
      0x80000a20 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:lsu) ft3  <-- 32.0
      0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100030, (wrb) a0  <-- 0x00100038
      0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 32.0, ft3  = 32.0
      0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
      0x80000a2c bnez    a2, pc - 24            #; a2  = 3, taken, goto 0x80000a14
                                                #; (f:fpu) ft3  <-- 64.0
; reverse_conflict (reverse_conflict.c:5)
      0x80000a1c fsd     ft3, 0(a0)             #; 64.0 ~~> Doub[0x00100030]
      0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100030]
; reverse_conflict (reverse_conflict.c:4)
      0x80000a20 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:lsu) ft3  <-- 64.0
      0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100038, (wrb) a0  <-- 0x00100040
      0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 64.0, ft3  = 64.0
      0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
      0x80000a2c bnez    a2, pc - 24            #; a2  = 2, taken, goto 0x80000a14
                                                #; (f:fpu) ft3  <-- 128.0
; reverse_conflict (reverse_conflict.c:5)
      0x80000a1c fsd     ft3, 0(a0)             #; 128.0 ~~> Doub[0x00100038]
      0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100038]
; reverse_conflict (reverse_conflict.c:4)
      0x80000a20 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:lsu) ft3  <-- 128.0
      0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100040, (wrb) a0  <-- 0x00100048
      0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 128.0, ft3  = 128.0
      0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
      0x80000a2c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80000a14
                                                #; (f:fpu) ft3  <-- 256.0
; reverse_conflict (reverse_conflict.c:5)
      0x80000a1c fsd     ft3, 0(a0)             #; 256.0 ~~> Doub[0x00100040]
      0x80000a14 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100040]
; reverse_conflict (reverse_conflict.c:4)
      0x80000a20 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:lsu) ft3  <-- 256.0
      0x80000a24 addi    a0, a0, 8              #; a0  = 0x00100048, (wrb) a0  <-- 0x00100050
      0x80000a18 fadd.d  ft3, ft3, ft3          #; ft3  = 256.0, ft3  = 256.0
      0x80000a28 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
      0x80000a2c bnez    a2, pc - 24            #; a2  = 0, not taken
                                                #; (f:fpu) ft3  <-- 512.0
; reverse_conflict (reverse_conflict.c:5)
      0x80000a1c fsd     ft3, 0(a0)             #; 512.0 ~~> Doub[0x00100048]
; reverse_conflict (reverse_conflict.c:7)
      0x80000a30 ret                            #; ra  = 0x800008c0, goto 0x800008c0
; main (test_reverse_conflict.c:36)
      0x800008c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008c0
      0x800008c4 jalr    ra, ra, -204           #; ra  = 0x800008c0, (wrb) ra  <-- 0x800008c8, goto 0x800007f4
; sumup (test_reverse_conflict.c:15)
      0x800007f4 li      a0, 8                  #; (wrb) a0  <-- 8
      0x800007f8 li      a1, 9                  #; (wrb) a1  <-- 9
; sumup (test_reverse_conflict.c:17)
      0x800007fc li      a2, 64                 #; (wrb) a2  <-- 64
      0x80000800 li      a3, 192                #; (wrb) a3  <-- 192
      0x80000804 scfgw   a1, a2                 #; a1  = 9, a2  = 64
      0x80000808 scfgw   a0, a3                 #; a0  = 8, a3  = 192
      0x8000080c li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000810 scfgw   zero, a0               #; a0  = 32
      0x80000814 lui     a0, 0x100              #; (wrb) a0  <-- 0x00100000
      0x80000818 scfgwi  a0, 768                #; a0  = 0x00100000
                                                #; (acc) a0  <-- 0x7c00e573
      0x8000081c csrrsi  a0, ssr, 1             #; 
; sumup (test_reverse_conflict.c:18)
      0x80000820 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000824 fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000828 fadd.d  ft3, ft0, ft3          #; ft0  = 4.0, ft3  = 3.0
                                                #; (f:fpu) ft3  <-- 7.0
      0x8000082c fadd.d  ft3, ft0, ft3          #; ft0  = 8.0, ft3  = 7.0
                                                #; (f:fpu) ft3  <-- 15.0
      0x80000830 fadd.d  ft3, ft0, ft3          #; ft0  = 16.0, ft3  = 15.0
                                                #; (f:fpu) ft3  <-- 31.0
      0x80000834 fadd.d  ft3, ft0, ft3          #; ft0  = 32.0, ft3  = 31.0
                                                #; (f:fpu) ft3  <-- 63.0
      0x80000838 fadd.d  ft3, ft0, ft3          #; ft0  = 64.0, ft3  = 63.0
; sumup (test_reverse_conflict.c:20)
      0x8000084c ret                            #; ra  = 0x800008c8, goto 0x800008c8
                                                #; (f:fpu) ft3  <-- 127.0
; sumup (test_reverse_conflict.c:18)
      0x8000083c fadd.d  ft3, ft0, ft3          #; ft0  = 128.0, ft3  = 127.0
; main (test_reverse_conflict.c:0)
      0x800008c8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028c8
      0x800008cc addi    a0, a0, 1960           #; a0  = 0x800028c8, (wrb) a0  <-- 0x80003070
                                                #; (f:fpu) ft3  <-- 255.0
; sumup (test_reverse_conflict.c:18)
      0x80000840 fadd.d  ft3, ft0, ft3          #; ft0  = 256.0, ft3  = 255.0
                                                #; (f:fpu) ft3  <-- 511.0
      0x80000844 fadd.d  fa0, ft0, ft3          #; ft0  = 512.0, ft3  = 511.0
; sumup (test_reverse_conflict.c:0)
      0x80000848 csrrci  a0, ssr, 1             #; 
; main (test_reverse_conflict.c:0)
      0x800008d0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003070], (f:fpu) fa0  <-- 1023.0
; main (test_reverse_conflict.c:42)
      0x800008e0 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                                                #; (f:lsu) ft0  <-- -1023.0
; main (test_reverse_conflict.c:39)
      0x800008d4 fadd.d  ft0, fa0, ft0          #; fa0  = 1023.0, ft0  = -1023.0
                                                #; (lsu) a2  <-- 0
; main (test_reverse_conflict.c:42)
      0x800008e4 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x800008e8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028e8
                                                #; (f:fpu) ft0  <-- 0.0
      0x800008ec addi    a0, a0, 1149           #; a0  = 0x800028e8, (wrb) a0  <-- 0x80002d65
      0x800008d8 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
                                                #; (lsu) a3  <-- 0
                                                #; (f:fpu) fs0  <-- 0.0
      0x800008dc fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x800008f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008f0
      0x800008f4 jalr    ra, ra, 324            #; ra  = 0x800008f0, (wrb) ra  <-- 0x800008f8, goto 0x80000a34
; printf_ (printf.c:863)
      0x80000a34 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000a38 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008f8 ~~> Word[0x0011ff1c]
      0x80000a3c mv      t0, a0                 #; a0  = 0x80002d65, (wrb) t0  <-- 0x80002d65
      0x80000a40 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x00120001 ~~> Word[0x0011ff3c]
      0x80000a44 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff38]
      0x80000a48 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff34]
      0x80000a4c sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
      0x80000a50 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000a54 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000a58 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff24]
      0x80000a5c addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000a60 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000a64 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a64
      0x80000a68 addi    a0, a0, -988           #; a0  = 0x80001a64, (wrb) a0  <-- 0x80001688
      0x80000a6c addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000a70 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000a74 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000a78 mv      a3, t0                 #; t0  = 0x80002d65, (wrb) a3  <-- 0x80002d65
      0x80000a7c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a7c
      0x80000a80 jalr    ra, ra, 20             #; ra  = 0x80000a7c, (wrb) ra  <-- 0x80000a84, goto 0x80000a90
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000a90 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000a94 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000a84 ~~> Word[0x0011ff0c]
      0x80000a98 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff08]
      0x80000a9c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000aa0 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000aa4 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000aa8 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000aac sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000ab0 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000ab4 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000ab8 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000abc sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000ac0 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000ac4 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000ac8 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000acc mv      s0, a3                 #; a3  = 0x80002d65, (wrb) s0  <-- 0x80002d65
      0x80000ad0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000ad4 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000ad8 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000adc mv      s2, a0                 #; a0  = 0x80001688, (wrb) s2  <-- 0x80001688
      0x80000ae0 j       pc + 0xc               #; goto 0x80000aec
      0x80000aec li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000af0 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000af4 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000af8 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000afc lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000b00 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000b04 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000b08 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000b0c addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000b10 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b14 addi    s10, s0, 2             #; s0  = 0x80002d65, (wrb) s10 <-- 0x80002d67
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b18 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000b1c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b20 lbu     a0, 0(s0)              #; s0  = 0x80002d65, a0  <~~ Byte[0x80002d65]
                                                #; (lsu) a0  <-- 101
      0x80000b24 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000b28 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b2c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b34 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 0
      0x800016a8 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 1 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 0, (wrb) a4  <-- 0x8000312c
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000312c, 101 ~~> Byte[0x80003174]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 1
      0x800016bc addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800016c0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800016c8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d65, (wrb) s0  <-- 0x80002d66
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d67, (wrb) s10 <-- 0x80002d68
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d66, a0  <~~ Byte[0x80002d66]
                                                #; (lsu) a0  <-- 114
      0x80000b50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b28
      0x80000b28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b2c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b34 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 1
      0x800016a8 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 2 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 1, (wrb) a4  <-- 0x8000312d
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000312d, 114 ~~> Byte[0x80003175]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 2
      0x800016bc addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800016c0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800016c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d66, (wrb) s0  <-- 0x80002d67
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d68, (wrb) s10 <-- 0x80002d69
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d67, a0  <~~ Byte[0x80002d67]
                                                #; (lsu) a0  <-- 114
      0x80000b50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b28
      0x80000b28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b2c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b34 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 2
      0x800016a8 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 3 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 2, (wrb) a4  <-- 0x8000312e
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000312e, 114 ~~> Byte[0x80003176]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 3
      0x800016bc addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800016c0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800016c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d67, (wrb) s0  <-- 0x80002d68
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d69, (wrb) s10 <-- 0x80002d6a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d68, a0  <~~ Byte[0x80002d68]
                                                #; (lsu) a0  <-- 111
      0x80000b50 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b28
      0x80000b28 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b2c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b34 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 3
      0x800016a8 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 4 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 3, (wrb) a4  <-- 0x8000312f
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000312f, 111 ~~> Byte[0x80003177]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 4
      0x800016bc addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800016c0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800016c8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d68, (wrb) s0  <-- 0x80002d69
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d6a, (wrb) s10 <-- 0x80002d6b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d69, a0  <~~ Byte[0x80002d69]
                                                #; (lsu) a0  <-- 114
      0x80000b50 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b28
      0x80000b28 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b2c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b34 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 4
      0x800016a8 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 5 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 4, (wrb) a4  <-- 0x80003130
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003130, 114 ~~> Byte[0x80003178]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 5
      0x800016bc addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800016c0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800016c8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d69, (wrb) s0  <-- 0x80002d6a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d6b, (wrb) s10 <-- 0x80002d6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d6a, a0  <~~ Byte[0x80002d6a]
                                                #; (lsu) a0  <-- 32
      0x80000b50 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b28
      0x80000b28 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b2c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b34 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 5
      0x800016a8 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 6 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 5, (wrb) a4  <-- 0x80003131
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003131, 32 ~~> Byte[0x80003179]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 6
      0x800016bc addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800016c0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800016c8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d6a, (wrb) s0  <-- 0x80002d6b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d6c, (wrb) s10 <-- 0x80002d6d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d6b, a0  <~~ Byte[0x80002d6b]
                                                #; (lsu) a0  <-- 61
      0x80000b50 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b28
      0x80000b28 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b2c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b34 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 6
      0x800016a8 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 7 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 6, (wrb) a4  <-- 0x80003132
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003132, 61 ~~> Byte[0x8000317a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 7
      0x800016bc addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800016c0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800016c8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d6b, (wrb) s0  <-- 0x80002d6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d6d, (wrb) s10 <-- 0x80002d6e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d6c, a0  <~~ Byte[0x80002d6c]
                                                #; (lsu) a0  <-- 32
      0x80000b50 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b28
      0x80000b28 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b2c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b34 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 7
      0x800016a8 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 8 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 7, (wrb) a4  <-- 0x80003133
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003133, 32 ~~> Byte[0x8000317b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 8
      0x800016bc addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800016c0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800016c8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d6c, (wrb) s0  <-- 0x80002d6d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d6e, (wrb) s10 <-- 0x80002d6f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d6d, a0  <~~ Byte[0x80002d6d]
                                                #; (lsu) a0  <-- 37
      0x80000b50 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b28
      0x80000b28 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b58
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000b58 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b5c j       pc + 0x10              #; goto 0x80000b6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000b6c lbu     a0, -1(s10)            #; s10 = 0x80002d6f, a0  <~~ Byte[0x80002d6e]
                                                #; (lsu) a0  <-- 102
      0x80000b70 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000b74 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000bac
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000bac addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000bb0 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000bb4 addi    a1, s10, -1            #; s10 = 0x80002d6f, (wrb) a1  <-- 0x80002d6e
      0x80000bb8 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000bbc bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c38
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000c38 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000c3c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000c8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c8c li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000c90 mv      s10, a1                #; a1  = 0x80002d6e, (wrb) s10 <-- 0x80002d6e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000c94 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c98 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000c9c j       pc + 0xc               #; goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000ca8 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000cac srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000cb0 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000cb4 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000cb8 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000cbc bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d20
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000d20 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000d24 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000d28 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d2c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000d30 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d30
      0x80000d34 addi    a2, a2, 180            #; a2  = 0x80002d30, (wrb) a2  <-- 0x80002de4
      0x80000d38 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002de4, (wrb) a1  <-- 0x80002ee8
      0x80000d3c lw      a2, 0(a1)              #; a1  = 0x80002ee8, a2  <~~ Word[0x80002ee8]
      0x80000d40 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000d44 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000d78
      0x80000d48 jr      a2                     #; a2  = 0x80000d78, goto 0x80000d78
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000d78 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000d7c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000d84
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000d84 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000d88 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000d8c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000d90 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000d94 mv      a0, s2                 #; s2  = 0x80001688, (wrb) a0  <-- 0x80001688
      0x80000d98 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000d9c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000da0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000da4 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000da8 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000dac mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000db0 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001db0
      0x80000db4 jalr    ra, ra, -1656          #; ra  = 0x80001db0, (wrb) ra  <-- 0x80000db8, goto 0x80001738
; _ftoa (printf.c:340)
      0x80001738 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x8000173c sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000db8 ~~> Word[0x0011fe9c]
      0x80001740 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001744 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001748 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001688 ~~> Word[0x0011fe90]
      0x8000174c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001750 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001754 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001758 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x8000175c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001760 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001764 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001768 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002d6e ~~> Word[0x0011fe70]
      0x8000176c fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x80001778 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003778
      0x80001770 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x8000177c addi    s1, s1, -1784          #; s1  = 0x80003778, (wrb) s1  <-- 0x80003080
      0x80001774 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
; _ftoa (printf.c:351)
      0x80001788 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001780 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003080]
; _ftoa (printf.c:0)
      0x8000178c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001790 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001784 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001794 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001798 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x8000179c mv      s7, a0                 #; a0  = 0x80001688, (wrb) s7  <-- 0x80001688
; _ftoa (printf.c:351)
      0x800017a0 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001890
; _ftoa (printf.c:0)
      0x80001894 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002894
      0x80001898 addi    a0, a0, 2036           #; a0  = 0x80002894, (wrb) a0  <-- 0x80003088
      0x80001890 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x8000189c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003088]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x800018a0 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x800018a4 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018c0
; _ftoa (printf.c:0)
      0x800018c0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028c0
      0x800018c4 addi    a0, a0, 2000           #; a0  = 0x800028c0, (wrb) a0  <-- 0x80003090
      0x800018cc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028cc
      0x800018c8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003090]
      0x800018d0 addi    a0, a0, 1996           #; a0  = 0x800028cc, (wrb) a0  <-- 0x80003098
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x800018d4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003098]
; _ftoa (printf.c:358)
      0x800018d8 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x800018dc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x800018e0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800018e4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800019e0
; _ftoa (printf.c:374)
      0x800019e0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x800019e4 li      s8, 6                  #; (wrb) s8  <-- 6
      0x800019e8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800019f0
; _ftoa (printf.c:0)
      0x800019f0 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x800019f8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a30
; _ftoa (printf.c:0)
      0x800019f4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001a30 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001a34 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001a38 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a38
      0x80001a3c addi    a1, a1, 1280           #; a1  = 0x80002a38, (wrb) a1  <-- 0x80002f38
      0x80001a40 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002f38, (wrb) a0  <-- 0x80002f68
      0x80001a44 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f68]
; _ftoa (printf.c:383)
      0x80001a48 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001a4c fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:0)
      0x80001a58 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a58
      0x80001a50 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
      0x80001a5c addi    a0, a0, 1608           #; a0  = 0x80002a58, (wrb) a0  <-- 0x800030a0
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x80001a54 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:0)
      0x80001a60 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030a0]
; _ftoa (printf.c:385)
      0x80001a64 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001a68 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001a6c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001a70 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001a74 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a94
; _ftoa (printf.c:396)
      0x80001a94 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001a98 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001aac
; _ftoa (printf.c:0)
      0x80001aac fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:403)
      0x80001ab0 beqz    s8, pc + 216           #; s8  = 6, not taken
; _ftoa (printf.c:0)
      0x80001ab4 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001ab8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001abc add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001ac0 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001ac4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001ac8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001acc addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001ad0 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001ad4 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001ad8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001adc mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001ae0 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001ae4 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001ae8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001aec sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001af0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001af4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001af8 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001afc addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001b00 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001b04 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001b08 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001b0c li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001b10 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001b14 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001b18 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001b1c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001b20 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001b24 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001b28 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001b2c not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001b30 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001b34 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001b38 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001b3c sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001b40 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001b44 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001b48 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b50
      0x80001b50 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001b54 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001b58 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b58
      0x80001b5c jalr    ra, ra, -1536          #; ra  = 0x80000b58, (wrb) ra  <-- 0x80001b60, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001b60, goto 0x80001b60
; _ftoa (printf.c:0)
      0x80001b60 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001b64 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001b68 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001b6c xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001b70 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001b74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b78 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001b7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b64
      0x80001b64 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001b68 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001b6c xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001b70 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001b74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b78 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001b7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b64
      0x80001b64 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001b68 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001b6c xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001b70 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001b74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b78 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001b7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b64
      0x80001b64 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001b68 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001b6c xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001b70 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001b74 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b78 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001b7c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b64
      0x80001b64 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001b68 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001b6c xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001b70 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001b74 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001b78 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001b7c bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001b80 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001b84 j       pc + 0x28              #; goto 0x80001bac
      0x80001bac beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001bb0 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001bb4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001bb8 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001bbc li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001bc0 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001bc4 j       pc + 0x8               #; goto 0x80001bcc
; _ftoa (printf.c:0)
      0x80001bcc li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001bd0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001bd4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001bd8 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001bdc flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001be0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001be4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001be8 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001bec addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001bf0 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001bf4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001bf8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001bfc srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001c00 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001c04 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001c08 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001c0c sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001c10 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001c14 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001c18 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001c1c addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001c20 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001c24 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001c28 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001c2c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001c30 j       pc + 0x8               #; goto 0x80001c38
; _ftoa (printf.c:440)
      0x80001c38 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001c3c li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001c40 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001cac
; _ftoa (printf.c:0)
      0x80001cac li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001cb0 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001cb4 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ccc
; _ftoa (printf.c:453)
      0x80001ccc andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001cd0 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001cd4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001cd8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d04
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001d04 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001d08 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001d0c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001d10 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001d14 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001d18 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001d1c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d48
; _ftoa (printf.c:0)
      0x80001d48 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d4c beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001d50 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001d5c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
                                                #; (lsu) a0  <-- 48
      0x80001d60 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d68 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 8
      0x800016a8 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 9 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 8, (wrb) a4  <-- 0x80003134
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003134, 48 ~~> Byte[0x8000317c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 9
      0x800016bc addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800016c0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d74 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001d78 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d7c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001d5c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001d60 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d68 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 9
      0x800016a8 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 10 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 9, (wrb) a4  <-- 0x80003135
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003135, 46 ~~> Byte[0x8000317d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 10
      0x800016bc addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800016c0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800016c8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d74 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001d78 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d7c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001d5c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001d60 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d68 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 10
      0x800016a8 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 11 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 10, (wrb) a4  <-- 0x80003136
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003136, 48 ~~> Byte[0x8000317e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 11
      0x800016bc addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800016c0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d74 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001d78 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d7c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001d5c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001d60 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d68 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 11
      0x800016a8 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 12 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 11, (wrb) a4  <-- 0x80003137
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003137, 48 ~~> Byte[0x8000317f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 12
      0x800016bc addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800016c0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d74 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001d78 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d7c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001d5c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001d60 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d68 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 12
      0x800016a8 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 13 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 12, (wrb) a4  <-- 0x80003138
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003138, 48 ~~> Byte[0x80003180]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 13
      0x800016bc addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800016c0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d74 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001d78 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d7c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001d5c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001d60 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d68 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 13
      0x800016a8 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 14 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 13, (wrb) a4  <-- 0x80003139
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x80003139, 48 ~~> Byte[0x80003181]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 14
      0x800016bc addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800016c0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d74 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001d78 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d7c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001d5c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001d60 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d68 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 14
      0x800016a8 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 15 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 14, (wrb) a4  <-- 0x8000313a
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000313a, 48 ~~> Byte[0x80003182]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 15
      0x800016bc addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800016c0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d74 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001d78 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d7c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d54
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d54 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001d58 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001d5c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001d60 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001d64 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d68 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001d6c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d70 jalr    s7                     #; s7  = 0x80001688, (wrb) ra  <-- 0x80001d74, goto 0x80001688
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 15
      0x800016a8 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 16 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 15, (wrb) a4  <-- 0x8000313b
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000313b, 48 ~~> Byte[0x80003183]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 16
      0x800016bc addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800016c0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016c8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016cc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016d0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80001d74, goto 0x80001d74
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d74 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001d78 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d7c bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001d80 j       pc + 0x8               #; goto 0x80001d88
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d88 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001d8c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001d90 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001d94 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001d98 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001d9c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001dcc
; _ftoa (printf.c:0)
      0x80001dcc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001dd0 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001dd4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001dd8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001ddc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
      0x80001de0 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                                                #; (lsu) s10 <-- 0x80002d6e
      0x80001de4 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001de8 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001dec lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001df0 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001df4 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001df8 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001dfc lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001e00 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001688
      0x80001e04 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001e08 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001e0c lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001e10 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000db8
      0x80001e14 ret                            #; ra  = 0x80000db8, goto 0x80000db8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000db8 j       pc + 0x7c0             #; goto 0x80001578
      0x80001578 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x8000157c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001580 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001584 addi    s0, s10, 1             #; s10 = 0x80002d6e, (wrb) s0  <-- 0x80002d6f
      0x80001588 j       pc - 0xa74             #; goto 0x80000b14
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b14 addi    s10, s0, 2             #; s0  = 0x80002d6f, (wrb) s10 <-- 0x80002d71
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b18 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000b1c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b20 lbu     a0, 0(s0)              #; s0  = 0x80002d6f, a0  <~~ Byte[0x80002d6f]
                                                #; (lsu) a0  <-- 10
      0x80000b24 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000b28 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b2c addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000b30 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b34 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000b38 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b3c jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80000b40, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001698 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003698
      0x8000169c addi    a3, a3, -1388          #; a3  = 0x80003698, (wrb) a3  <-- 0x8000312c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016a0 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000312c, (wrb) a1  <-- 0x8000312c
      0x800016a4 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 16
      0x800016a8 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800016ac sw      a5, 0(a1)              #; a1  = 0x8000312c, 17 ~~> Word[0x8000312c]
      0x800016b0 add     a4, a1, a4             #; a1  = 0x8000312c, a4  = 16, (wrb) a4  <-- 0x8000313c
      0x800016b4 sb      a0, 72(a4)             #; a4  = 0x8000313c, 10 ~~> Byte[0x80003184]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a4, 0(a1)              #; a1  = 0x8000312c, a4  <~~ Word[0x8000312c]
                                                #; (lsu) a4  <-- 17
      0x800016bc addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800016c0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800016c4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800016c8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800016cc and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800016d0 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016d4 add     a0, a3, a2             #; a3  = 0x8000312c, a2  = 0, (wrb) a0  <-- 0x8000312c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016d8 addi    a2, a0, 72             #; a0  = 0x8000312c, (wrb) a2  <-- 0x80003174
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016dc sw      zero, 12(a0)           #; a0  = 0x8000312c, 0 ~~> Word[0x80003138]
      0x800016e0 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800016e4 sw      a3, 8(a0)              #; a0  = 0x8000312c, 64 ~~> Word[0x80003134]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 sw      zero, 20(a0)           #; a0  = 0x8000312c, 0 ~~> Word[0x80003140]
      0x800016ec li      a3, 1                  #; (wrb) a3  <-- 1
      0x800016f0 sw      a3, 16(a0)             #; a0  = 0x8000312c, 1 ~~> Word[0x8000313c]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016f4 sw      zero, 28(a0)           #; a0  = 0x8000312c, 0 ~~> Word[0x80003148]
      0x800016f8 sw      a2, 24(a0)             #; a0  = 0x8000312c, 0x80003174 ~~> Word[0x80003144]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016fc lw      a2, 0(a1)              #; a1  = 0x8000312c, a2  <~~ Word[0x8000312c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001700 addi    a3, a0, 8              #; a0  = 0x8000312c, (wrb) a3  <-- 0x80003134
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001704 sw      zero, 36(a0)           #; a0  = 0x8000312c, 0 ~~> Word[0x80003150]
                                                #; (lsu) a2  <-- 17
      0x80001708 sw      a2, 32(a0)             #; a0  = 0x8000312c, 17 ~~> Word[0x8000314c]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000370c
      0x80001710 addi    a0, a0, -1868          #; a0  = 0x8000370c, (wrb) a0  <-- 0x80002fc0
      0x80001714 sw      a3, 0(a0)              #; a0  = 0x80002fc0, 0x80003134 ~~> Word[0x80002fc0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003718
      0x8000171c addi    a0, a0, -1816          #; a0  = 0x80003718, (wrb) a0  <-- 0x80003000
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001720 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
                                                #; (lsu) a2  <-- 1
      0x80001724 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001728 sw      zero, 0(a0)            #; a0  = 0x80003000, 0 ~~> Word[0x80003000]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000172c sw      zero, 0(a1)            #; a1  = 0x8000312c, 0 ~~> Word[0x8000312c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b40 addi    s0, s0, 1              #; s0  = 0x80002d6f, (wrb) s0  <-- 0x80002d70
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b44 addi    s10, s10, 1            #; s10 = 0x80002d71, (wrb) s10 <-- 0x80002d72
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b4c lbu     a0, 0(s0)              #; s0  = 0x80002d70, a0  <~~ Byte[0x80002d70]
                                                #; (lsu) a0  <-- 0
      0x80000b50 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000b54 j       pc + 0xad8             #; goto 0x8000162c
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x8000162c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001630 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001638
      0x80001638 li      a0, 0                  #; (wrb) a0  <-- 0
      0x8000163c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001640 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001644 jalr    s2                     #; s2  = 0x80001688, (wrb) ra  <-- 0x80001648, goto 0x80001688
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001688 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001730
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001730 ret                            #; ra  = 0x80001648, goto 0x80001648
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001648 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x8000164c lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001650 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001654 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001658 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x8000165c lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x80001660 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001664 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001668 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x8000166c lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x80001670 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001674 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001678 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x00100050
      0x8000167c lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001680 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000a84
      0x80001684 ret                            #; ra  = 0x80000a84, goto 0x80000a84
; printf_ (printf.c:869)
      0x80000a84 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000a88 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x800008f8
      0x80000a8c ret                            #; ra  = 0x800008f8, goto 0x800008f8
; main (test_reverse_conflict.c:0)
      0x800008f8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028f8
      0x800008fc addi    a0, a0, 1920           #; a0  = 0x800028f8, (wrb) a0  <-- 0x80003078
      0x80000900 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003078]
; main (test_reverse_conflict.c:45)
      0x8000090c lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_reverse_conflict.c:44)
      0x80000904 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
                                                #; (lsu) s0  <-- 0
; main (test_reverse_conflict.c:45)
      0x80000910 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c], (acc) ra  <-- 0x01c12083
      0x80000908 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
      0x80000914 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) ra  <-- 0x80002ae0
      0x80000918 ret                            #; ra  = 0x80002ae0, goto 0x80002ae0
; ?? (start.S:184)
      0x80002ae0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002ae4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ae4
      0x80002ae8 jalr    ra, ra, 524            #; ra  = 0x80002ae4, (wrb) ra  <-- 0x80002aec, goto 0x80002cf0
; ?? (start_snitch.S:33)
      0x80002cf0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002cf4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002aec ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002cf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cf8
      0x80002cfc jalr    ra, ra, -1256          #; ra  = 0x80002cf8, (wrb) ra  <-- 0x80002d00, goto 0x80002810
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002810 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002814 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002818 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000281c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002820 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002824 ret                            #; ra  = 0x80002d00, goto 0x80002d00
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002d00 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002d04 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002d08 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002d0c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002aec
; ?? (start_snitch.S:40)
      0x80002d10 ret                            #; ra  = 0x80002aec, goto 0x80002aec
; ?? (start.S:195)
      0x80002aec mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002af0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002af0
      0x80002af4 jalr    ra, ra, 556            #; ra  = 0x80002af0, (wrb) ra  <-- 0x80002af8, goto 0x80002d1c
; ?? (start_snitch.S:15)
      0x80002d1c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002d20 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002d24 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002af8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002d28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d28
      0x80002d2c jalr    ra, ra, -1336          #; ra  = 0x80002d28, (wrb) ra  <-- 0x80002d30, goto 0x800027f0
; snrt_global_core_idx (team.c:32)
      0x800027f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002800 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002808 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x8000280c ret                            #; ra  = 0x80002d30, goto 0x80002d30
; ?? (start_snitch.S:20)
      0x80002d30 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002d34 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002d38 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002d3c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002af8
; ?? (start_snitch.S:28)
      0x80002d40 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002d44 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002d48 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d48
      0x80002d4c addi    t1, t1, 632            #; t1  = 0x80002d48, (wrb) t1  <-- 0x80002fc0
; ?? (start_snitch.S:31)
      0x80002d50 sw      t0, 0(t1)              #; t1  = 0x80002fc0, 1 ~~> Word[0x80002fc0]
; ?? (start_snitch.S:32)
      0x80002d54 ret                            #; ra  = 0x80002af8, goto 0x80002af8
; ?? (start.S:198)
      0x80002af8 wfi                            #; 
                        tion 0 @ (12, 5643):
                          130
                          142
                           14
                           42
                      12.0538
                       0.2409
                       0.1119
                          1.0
                          1.0
                            0
                       1.6422
                       6.4286
                       0.0304
                       0.0194
                       0.6374
                         5632
                       0.2713
