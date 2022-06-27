; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800028d0
      0x00001014 jalr    t0                     #; t0  = 0x800028d0, (wrb) ra  <-- 4120, goto 0x800028d0
; ?? (start.S:20)
      0x800028d0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800038d0
; ?? (start.S:21)
      0x800028d4 addi    gp, gp, -264           #; gp  = 0x800038d0, (wrb) gp  <-- 0x800037c8
; ?? (start.S:28)
      0x800028d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028d8
      0x800028dc jalr    ra, ra, 964            #; ra  = 0x800028d8, (wrb) ra  <-- 0x800028e0, goto 0x80002c9c
; ?? (start_snitch.S:16)
      0x80002c9c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002ca0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002ca4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002ca8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002cac lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002cb0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002cb4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002cb8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002cbc mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002cc0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002cc4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002cc8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002ccc ret                            #; ra  = 0x800028e0, goto 0x800028e0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x800028e0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x800028e4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x800028e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028e8
      0x800028ec jalr    ra, ra, 1036           #; ra  = 0x800028e8, (wrb) ra  <-- 0x800028f0, goto 0x80002cf4
; ?? (start_snitch.S:48)
      0x80002cf4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002cf8 ret                            #; ra  = 0x800028f0, goto 0x800028f0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x800028f0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x800028f4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x800028f8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x800028fc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002900 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002904 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002904
      0x80002908 addi    t0, t0, 1956           #; t0  = 0x80002904, (wrb) t0  <-- 0x800030a8
; ?? (start.S:49)
      0x8000290c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000290c
      0x80002910 addi    t1, t1, 1952           #; t1  = 0x8000290c, (wrb) t1  <-- 0x800030ac
; ?? (start.S:50)
      0x80002914 bge     t0, t1, pc + 16        #; t0  = 0x800030a8, t1  = 0x800030ac, not taken
; ?? (start.S:51)
      0x80002918 sw      zero, 0(t0)            #; t0  = 0x800030a8, 0 ~~> Word[0x800030a8]
; ?? (start.S:52)
      0x8000291c addi    t0, t0, 4              #; t0  = 0x800030a8, (wrb) t0  <-- 0x800030ac
; ?? (start.S:53)
      0x80002920 blt     t0, t1, pc - 8         #; t0  = 0x800030ac, t1  = 0x800030ac, not taken
; ?? (start.S:58)
      0x80002924 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002928 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000292c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002930 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002934 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002938 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000293c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002940 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002944 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002948 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000294c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002950 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002954 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002958 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000295c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002960 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002964 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002968 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000296c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002970 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002974 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002978 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000297c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002980 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002984 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002988 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000298c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002990 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002994 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002998 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000299c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x800029a0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x800029a4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x800029a8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x800029ac fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x800029b0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x800029b4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x800029b8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029b8
      0x800029bc lw      t0, 900(t0)            #; t0  = 0x800029b8, t0  <~~ Word[0x80002d3c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x800029c0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x800029c4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x800029c8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029c8
      0x800029cc lw      t2, 880(t2)            #; t2  = 0x800029c8, t2  <~~ Word[0x80002d38]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x800029d0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x800029d4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x800029d8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x800029dc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x800029e0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x800029e4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x800029e8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x800029ec sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x800029f0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029f0
      0x800029f4 addi    t0, t0, 1496           #; t0  = 0x800029f0, (wrb) t0  <-- 0x80002fc8
; ?? (start.S:125)
      0x800029f8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029f8
      0x800029fc addi    t1, t1, 1488           #; t1  = 0x800029f8, (wrb) t1  <-- 0x80002fc8
; ?? (start.S:126)
      0x80002a00 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a00
      0x80002a04 addi    t2, t2, 1480           #; t2  = 0x80002a00, (wrb) t2  <-- 0x80002fc8
; ?? (start.S:127)
      0x80002a08 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002a08
      0x80002a0c addi    t3, t3, 1488           #; t3  = 0x80002a08, (wrb) t3  <-- 0x80002fd8
; ?? (start.S:128)
      0x80002a10 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002fc8, (wrb) sp  <-- 0x80122f38
; ?? (start.S:129)
      0x80002a14 sub     sp, sp, t1             #; sp  = 0x80122f38, t1  = 0x80002fc8, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002a18 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002fc8, (wrb) sp  <-- 0x80122f38
; ?? (start.S:131)
      0x80002a1c sub     sp, sp, t3             #; sp  = 0x80122f38, t3  = 0x80002fd8, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002a20 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002a24 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002a28 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002a2c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002a30 bge     t0, t1, pc + 24        #; t0  = 0x80002fc8, t1  = 0x80002fc8, taken, goto 0x80002a48
; ?? (start.S:147)
      0x80002a48 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a48
      0x80002a4c addi    t0, t0, 1408           #; t0  = 0x80002a48, (wrb) t0  <-- 0x80002fc8
; ?? (start.S:148)
      0x80002a50 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a50
      0x80002a54 addi    t1, t1, 1416           #; t1  = 0x80002a50, (wrb) t1  <-- 0x80002fd8
; ?? (start.S:149)
      0x80002a58 bge     t0, t1, pc + 20        #; t0  = 0x80002fc8, t1  = 0x80002fd8, not taken
; ?? (start.S:150)
      0x80002a5c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002a60 addi    t0, t0, 4              #; t0  = 0x80002fc8, (wrb) t0  <-- 0x80002fcc
; ?? (start.S:152)
      0x80002a64 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002a68 blt     t0, t2, pc - 12        #; t0  = 0x80002fcc, t2  = 0x80002fc8, not taken
; ?? (start.S:158)
      0x80002a6c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002a70 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002a74 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002a78 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002a7c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002a80 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002a84 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a84
      0x80002a88 jalr    ra, ra, -1052          #; ra  = 0x80002a84, (wrb) ra  <-- 0x80002a8c, goto 0x80002668
; _snrt_init_team (start.c:49)
      0x80002668 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x8000266c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002670 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002674 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002678 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x8000267c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002680 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002684 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002688 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x8000268c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002690 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002694 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002698 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x8000269c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800026a0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800026a4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800026a8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800026ac lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800026b0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800026b4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800026b8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800026bc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800026c0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800026c4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800026c8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800026cc sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800026d0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800026d4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800026d8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800026dc sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x800026e0 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x800026e4 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x800026e8 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x800026ec sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x800026f0 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x800026f4 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x800026f8 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x800026fc sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002700 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002704 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002708 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x8000270c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002710 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002714 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002718 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x8000271c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002720 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002724 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002728 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000272c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002730 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002734 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002738 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x8000273c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002740 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002744 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002748 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x8000274c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80002750 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002754 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002758 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x8000275c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000375c
      0x80002760 addi    a1, a1, -1712          #; a1  = 0x8000375c, (wrb) a1  <-- 0x800030ac
      0x80002764 add     a0, a0, a1             #; a0  = 0, a1  = 0x800030ac, (wrb) a0  <-- 0x800030ac
      0x80002768 sw      zero, 0(a0)            #; a0  = 0x800030ac, 0 ~~> Word[0x800030ac]
; _snrt_init_team (start.c:86)
      0x8000276c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002770 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002774 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002778 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x8000277c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002780 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002784 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002788 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x8000278c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002790 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002794 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002798 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x8000279c lw      a0, 0(a1)              #; a1  = 0x800030ac, a0  <~~ Word[0x800030ac]
                                                #; (lsu) a0  <-- 0
      0x800027a0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800027a4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800027a8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800027ac sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800027b0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800027b4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027b8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027bc sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800027c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027c8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800027cc ret                            #; ra  = 0x80002a8c, goto 0x80002a8c
; ?? (start.S:165)
      0x80002a8c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002a90 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002a94 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002a98 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002a9c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002aa0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002aa4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002aa4
      0x80002aa8 addi    t0, t0, 60             #; t0  = 0x80002aa4, (wrb) t0  <-- 0x80002ae0
; ?? (start.S:175)
      0x80002aac csrw    mtvec, t0              #; t0  = 0x80002ae0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002ab0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ab0
      0x80002ab4 jalr    ra, ra, 544            #; ra  = 0x80002ab0, (wrb) ra  <-- 0x80002ab8, goto 0x80002cd0
; ?? (start_snitch.S:33)
      0x80002cd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002cd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002ab8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002cd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cd8
      0x80002cdc jalr    ra, ra, -1256          #; ra  = 0x80002cd8, (wrb) ra  <-- 0x80002ce0, goto 0x800027f0
; _snrt_barrier_reg_ptr (team.c:80)
      0x800027f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002800 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002804 ret                            #; ra  = 0x80002ce0, goto 0x80002ce0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002ce0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002ce4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002ce8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002cec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002ab8
; ?? (start_snitch.S:40)
      0x80002cf0 ret                            #; ra  = 0x80002ab8, goto 0x80002ab8
; ?? (start.S:183)
      0x80002ab8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000ab8
      0x80002abc jalr    ra, ra, -1156          #; ra  = 0x80000ab8, (wrb) ra  <-- 0x80002ac0, goto 0x80000634
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
      0x8000065c sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002ac0 ~~> Word[0x0011ff5c]
      0x80000664 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80000668 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80000660 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x8000066c lw      a1, 0(a1)              #; a1  = 0x0011ff60, a1  <~~ Word[0x0011ff60]
                                                #; (lsu) a1  <-- 0x0011ff70
      0x80000670 lw      a2, 0(a1)              #; a1  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
                                                #; (lsu) a2  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in various (various.c:41)
      0x80000674 lw      t1, 88(a2)             #; a2  = 0x0011ff70, t1  <~~ Word[0x0011ffc8]
                                                #; (lsu) t1  <-- 0x00100000
      0x80000678 lw      a4, 80(a2)             #; a2  = 0x0011ff70, a4  <~~ Word[0x0011ffc0]
                                                #; (lsu) a4  <-- 0x00100000
      0x8000067c lw      a5, 84(a2)             #; a2  = 0x0011ff70, a5  <~~ Word[0x0011ffc4]
; various (various.c:41)
      0x80000680 slli    a3, a0, 3              #; a0  = 25, (wrb) a3  <-- 200
; snrt_l1alloc (alloc.c:25)
;  in various (various.c:41)
      0x80000684 add     a3, t1, a3             #; t1  = 0x00100000, a3  = 200, (wrb) a3  <-- 0x001000c8
                                                #; (lsu) a5  <-- 0x0001df30
      0x80000688 add     a4, a5, a4             #; a5  = 0x0001df30, a4  = 0x00100000, (wrb) a4  <-- 0x0011df30
      0x8000068c bgeu    a4, a3, pc + 36        #; a4  = 0x0011df30, a3  = 0x001000c8, taken, goto 0x800006b0
; snrt_l1alloc (alloc.c:34)
;  in various (various.c:41)
      0x800006b0 sw      a3, 88(a2)             #; a2  = 0x0011ff70, 0x001000c8 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:0)
;  in various (various.c:41)
      0x800006b4 li      a2, 1                  #; (wrb) a2  <-- 1
; init_data (various.c:8)
;  in various (various.c:43)
      0x800006b8 blt     a0, a2, pc - 28        #; a0  = 25, a2  = 1, not taken
      0x800006bc addi    t0, a0, -1             #; a0  = 25, (wrb) t0  <-- 24
      0x800006c0 slli    a2, t0, 3              #; t0  = 24, (wrb) a2  <-- 192
      0x800006c4 add     a2, t1, a2             #; t1  = 0x00100000, a2  = 192, (wrb) a2  <-- 0x001000c0
      0x800006c8 srli    a3, t1, 20             #; t1  = 0x00100000, (wrb) a3  <-- 1
      0x800006cc snez    a6, a3                 #; a3  = 1, (wrb) a6  <-- 1
      0x800006d0 bgeu    a2, t1, pc + 180       #; a2  = 0x001000c0, t1  = 0x00100000, taken, goto 0x80000784
; various (various.c:0)
      0x80000784 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x80000788 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
      0x8000078c sltu    a2, a2, a3             #; a2  = 0x001000c0, a3  = 0x00120001, (wrb) a2  <-- 1
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000790 and     a7, a6, a2             #; a6  = 1, a2  = 1, (wrb) a7  <-- 1
      0x80000794 beqz    a7, pc - 180           #; a7  = 1, not taken
; init_data (various.c:0)
;  in various (various.c:43)
      0x80000798 li      a5, 0                  #; (wrb) a5  <-- 0
      0x8000079c li      a2, 8                  #; (wrb) a2  <-- 8
; init_data (various.c:8)
;  in various (various.c:43)
      0x800007a0 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800007a4 scfgw   t0, a3                 #; t0  = 24, a3  = 64
      0x800007a8 li      a3, 192                #; (wrb) a3  <-- 192
      0x800007ac scfgw   a2, a3                 #; a2  = 8, a3  = 192
      0x800007b0 li      a2, 32                 #; (wrb) a2  <-- 32
      0x800007b4 scfgw   zero, a2               #; a2  = 32
      0x800007b8 scfgwi  t1, 896                #; t1  = 0x00100000
; init_data (various.c:0)
;  in various (various.c:43)
      0x800007bc auipc   a2, 0x3                #; (wrb) a2  <-- 0x800037bc
      0x800007c0 addi    a2, a2, -2020          #; a2  = 0x800037bc, (wrb) a2  <-- 0x80002fd8
; init_data (various.c:8)
;  in various (various.c:43)
      0x800007cc lui     a2, 0x8421             #; (wrb) a2  <-- 0x08421000
      0x800007c4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80002fd8]
      0x800007c8 csrsi   ssr, 1                 #; 
      0x800007d0 addi    a4, a2, 133            #; a2  = 0x08421000, (wrb) a4  <-- 0x08421085
                                                #; (f:lsu) ft3  <-- 1.4142
      0x800007d4 mv      a3, a0                 #; a0  = 25, (wrb) a3  <-- 25
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 0, a4  = 0x08421085
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 0, a1  = 0, (wrb) a2  <-- 0
      0x800007e0 srli    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 0
      0x800007e4 add     a1, a2, a1             #; a2  = 0, a1  = 0, (wrb) a1  <-- 0
      0x800007e8 srli    a1, a1, 4              #; a1  = 0, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 0, a1  = 0, (wrb) a1  <-- 0
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 0
                                                #; (f:fpu) ft4  <-- 0.0
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 0.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 0.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
      0x80000808 addi    a5, a5, 1              #; a5  = 0, (wrb) a5  <-- 1
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
      0x8000080c bnez    a3, pc - 52            #; a3  = 24, taken, goto 0x800007d8
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 1, a4  = 0x08421085
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 1, a1  = 0, (wrb) a2  <-- 1
      0x800007e0 srli    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 0
      0x800007e4 add     a1, a2, a1             #; a2  = 0, a1  = 0, (wrb) a1  <-- 0
      0x800007e8 srli    a1, a1, 4              #; a1  = 0, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 1, a1  = 0, (wrb) a1  <-- 1
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 1, (wrb) a5  <-- 2
      0x8000080c bnez    a3, pc - 52            #; a3  = 23, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 2, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 1.4142
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.4142, ft4  = 1.4142
                                                #; (f:fpu) ft0  <-- 1.4142
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 2, a1  = 0, (wrb) a2  <-- 2
      0x800007e0 srli    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 1
      0x800007e4 add     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 1
      0x800007e8 srli    a1, a1, 4              #; a1  = 1, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 2, a1  = 0, (wrb) a1  <-- 2
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 2, (wrb) a5  <-- 3
      0x8000080c bnez    a3, pc - 52            #; a3  = 22, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 3, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 2.8284
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
                                                #; (f:fpu) ft0  <-- 2.8284
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 3, a1  = 0, (wrb) a2  <-- 3
      0x800007e0 srli    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 1
      0x800007e4 add     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 1
      0x800007e8 srli    a1, a1, 4              #; a1  = 1, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 3, a1  = 0, (wrb) a1  <-- 3
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 3, (wrb) a5  <-- 4
      0x8000080c bnez    a3, pc - 52            #; a3  = 21, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 4, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 4.2426000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
                                                #; (f:fpu) ft0  <-- 4.2426000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 4, a1  = 0, (wrb) a2  <-- 4
      0x800007e0 srli    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 2
      0x800007e4 add     a1, a2, a1             #; a2  = 2, a1  = 0, (wrb) a1  <-- 2
      0x800007e8 srli    a1, a1, 4              #; a1  = 2, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 4, a1  = 0, (wrb) a1  <-- 4
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 4, (wrb) a5  <-- 5
      0x8000080c bnez    a3, pc - 52            #; a3  = 20, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 5, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 5.6568
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
                                                #; (f:fpu) ft0  <-- 5.6568
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 5, a1  = 0, (wrb) a2  <-- 5
      0x800007e0 srli    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 2
      0x800007e4 add     a1, a2, a1             #; a2  = 2, a1  = 0, (wrb) a1  <-- 2
      0x800007e8 srli    a1, a1, 4              #; a1  = 2, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 5, a1  = 0, (wrb) a1  <-- 5
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 5, (wrb) a5  <-- 6
      0x8000080c bnez    a3, pc - 52            #; a3  = 19, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 6, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 7.071
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
                                                #; (f:fpu) ft0  <-- 7.071
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 6, a1  = 0, (wrb) a2  <-- 6
      0x800007e0 srli    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 3
      0x800007e4 add     a1, a2, a1             #; a2  = 3, a1  = 0, (wrb) a1  <-- 3
      0x800007e8 srli    a1, a1, 4              #; a1  = 3, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 6, a1  = 0, (wrb) a1  <-- 6
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 6, (wrb) a5  <-- 7
      0x8000080c bnez    a3, pc - 52            #; a3  = 18, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 7, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 8.4852000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
                                                #; (f:fpu) ft0  <-- 8.4852000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 7, a1  = 0, (wrb) a2  <-- 7
      0x800007e0 srli    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 3
      0x800007e4 add     a1, a2, a1             #; a2  = 3, a1  = 0, (wrb) a1  <-- 3
      0x800007e8 srli    a1, a1, 4              #; a1  = 3, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 7, a1  = 0, (wrb) a1  <-- 7
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 7, (wrb) a5  <-- 8
      0x8000080c bnez    a3, pc - 52            #; a3  = 17, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 8, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 9.8994
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
                                                #; (f:fpu) ft0  <-- 9.8994
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 8, a1  = 0, (wrb) a2  <-- 8
      0x800007e0 srli    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 4
      0x800007e4 add     a1, a2, a1             #; a2  = 4, a1  = 0, (wrb) a1  <-- 4
      0x800007e8 srli    a1, a1, 4              #; a1  = 4, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 8, a1  = 0, (wrb) a1  <-- 8
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 8, (wrb) a5  <-- 9
      0x8000080c bnez    a3, pc - 52            #; a3  = 16, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 9, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 11.3136
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
                                                #; (f:fpu) ft0  <-- 11.3136
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 9, a1  = 0, (wrb) a2  <-- 9
      0x800007e0 srli    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 4
      0x800007e4 add     a1, a2, a1             #; a2  = 4, a1  = 0, (wrb) a1  <-- 4
      0x800007e8 srli    a1, a1, 4              #; a1  = 4, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 9, a1  = 0, (wrb) a1  <-- 9
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 9, (wrb) a5  <-- 10
      0x8000080c bnez    a3, pc - 52            #; a3  = 15, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 10, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 12.7278000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
                                                #; (f:fpu) ft0  <-- 12.7278000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 10, a1  = 0, (wrb) a2  <-- 10
      0x800007e0 srli    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 5
      0x800007e4 add     a1, a2, a1             #; a2  = 5, a1  = 0, (wrb) a1  <-- 5
      0x800007e8 srli    a1, a1, 4              #; a1  = 5, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 10, a1  = 0, (wrb) a1  <-- 10
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 10, (wrb) a5  <-- 11
      0x8000080c bnez    a3, pc - 52            #; a3  = 14, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 11, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 14.142
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
                                                #; (f:fpu) ft0  <-- 14.142
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 11, a1  = 0, (wrb) a2  <-- 11
      0x800007e0 srli    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 5
      0x800007e4 add     a1, a2, a1             #; a2  = 5, a1  = 0, (wrb) a1  <-- 5
      0x800007e8 srli    a1, a1, 4              #; a1  = 5, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 11, a1  = 0, (wrb) a1  <-- 11
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 11
                                                #; (f:fpu) ft4  <-- 11.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 11, (wrb) a5  <-- 12
      0x8000080c bnez    a3, pc - 52            #; a3  = 13, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 12, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 15.5562000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.5562000, ft4  = 15.5562000
                                                #; (f:fpu) ft0  <-- 15.5562000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 12, a1  = 0, (wrb) a2  <-- 12
      0x800007e0 srli    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 6
      0x800007e4 add     a1, a2, a1             #; a2  = 6, a1  = 0, (wrb) a1  <-- 6
      0x800007e8 srli    a1, a1, 4              #; a1  = 6, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 12, a1  = 0, (wrb) a1  <-- 12
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 12
                                                #; (f:fpu) ft4  <-- 12.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 12, (wrb) a5  <-- 13
      0x8000080c bnez    a3, pc - 52            #; a3  = 12, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 13, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 16.9704000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 16.9704000, ft4  = 16.9704000
                                                #; (f:fpu) ft0  <-- 16.9704000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 13, a1  = 0, (wrb) a2  <-- 13
      0x800007e0 srli    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 6
      0x800007e4 add     a1, a2, a1             #; a2  = 6, a1  = 0, (wrb) a1  <-- 6
      0x800007e8 srli    a1, a1, 4              #; a1  = 6, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 13, a1  = 0, (wrb) a1  <-- 13
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 13
                                                #; (f:fpu) ft4  <-- 13.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 13, (wrb) a5  <-- 14
      0x8000080c bnez    a3, pc - 52            #; a3  = 11, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 14, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 18.3846
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.3846, ft4  = 18.3846
                                                #; (f:fpu) ft0  <-- 18.3846
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 14, a1  = 0, (wrb) a2  <-- 14
      0x800007e0 srli    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 7
      0x800007e4 add     a1, a2, a1             #; a2  = 7, a1  = 0, (wrb) a1  <-- 7
      0x800007e8 srli    a1, a1, 4              #; a1  = 7, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 14, a1  = 0, (wrb) a1  <-- 14
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 14
                                                #; (f:fpu) ft4  <-- 14.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 14, (wrb) a5  <-- 15
      0x8000080c bnez    a3, pc - 52            #; a3  = 10, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 15, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 19.7988
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 19.7988, ft4  = 19.7988
                                                #; (f:fpu) ft0  <-- 19.7988
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 15, a1  = 0, (wrb) a2  <-- 15
      0x800007e0 srli    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 7
      0x800007e4 add     a1, a2, a1             #; a2  = 7, a1  = 0, (wrb) a1  <-- 7
      0x800007e8 srli    a1, a1, 4              #; a1  = 7, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 15, a1  = 0, (wrb) a1  <-- 15
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 15
                                                #; (f:fpu) ft4  <-- 15.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 15, (wrb) a5  <-- 16
      0x8000080c bnez    a3, pc - 52            #; a3  = 9, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 16, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 21.2130000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.2130000, ft4  = 21.2130000
                                                #; (f:fpu) ft0  <-- 21.2130000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 16, a1  = 0, (wrb) a2  <-- 16
      0x800007e0 srli    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 8
      0x800007e4 add     a1, a2, a1             #; a2  = 8, a1  = 0, (wrb) a1  <-- 8
      0x800007e8 srli    a1, a1, 4              #; a1  = 8, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 16, a1  = 0, (wrb) a1  <-- 16
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 16
                                                #; (f:fpu) ft4  <-- 16.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 16, (wrb) a5  <-- 17
      0x8000080c bnez    a3, pc - 52            #; a3  = 8, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 17, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 22.6272
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 22.6272, ft4  = 22.6272
                                                #; (f:fpu) ft0  <-- 22.6272
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 17, a1  = 0, (wrb) a2  <-- 17
      0x800007e0 srli    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 8
      0x800007e4 add     a1, a2, a1             #; a2  = 8, a1  = 0, (wrb) a1  <-- 8
      0x800007e8 srli    a1, a1, 4              #; a1  = 8, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 17, a1  = 0, (wrb) a1  <-- 17
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 17
                                                #; (f:fpu) ft4  <-- 17.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 17, (wrb) a5  <-- 18
      0x8000080c bnez    a3, pc - 52            #; a3  = 7, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 18, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 24.0414
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 24.0414, ft4  = 24.0414
                                                #; (f:fpu) ft0  <-- 24.0414
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 18, a1  = 0, (wrb) a2  <-- 18
      0x800007e0 srli    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 9
      0x800007e4 add     a1, a2, a1             #; a2  = 9, a1  = 0, (wrb) a1  <-- 9
      0x800007e8 srli    a1, a1, 4              #; a1  = 9, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 18, a1  = 0, (wrb) a1  <-- 18
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 18
                                                #; (f:fpu) ft4  <-- 18.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 18, (wrb) a5  <-- 19
      0x8000080c bnez    a3, pc - 52            #; a3  = 6, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 19, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 25.4556000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.4556000, ft4  = 25.4556000
                                                #; (f:fpu) ft0  <-- 25.4556000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 19, a1  = 0, (wrb) a2  <-- 19
      0x800007e0 srli    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 9
      0x800007e4 add     a1, a2, a1             #; a2  = 9, a1  = 0, (wrb) a1  <-- 9
      0x800007e8 srli    a1, a1, 4              #; a1  = 9, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 19, a1  = 0, (wrb) a1  <-- 19
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 19
                                                #; (f:fpu) ft4  <-- 19.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 19, (wrb) a5  <-- 20
      0x8000080c bnez    a3, pc - 52            #; a3  = 5, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 20, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 26.8698000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 26.8698000, ft4  = 26.8698000
                                                #; (f:fpu) ft0  <-- 26.8698000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 20, a1  = 0, (wrb) a2  <-- 20
      0x800007e0 srli    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 10
      0x800007e4 add     a1, a2, a1             #; a2  = 10, a1  = 0, (wrb) a1  <-- 10
      0x800007e8 srli    a1, a1, 4              #; a1  = 10, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 20, a1  = 0, (wrb) a1  <-- 20
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 20
                                                #; (f:fpu) ft4  <-- 20.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 20, (wrb) a5  <-- 21
      0x8000080c bnez    a3, pc - 52            #; a3  = 4, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 21, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 28.284
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.284, ft4  = 28.284
                                                #; (f:fpu) ft0  <-- 28.284
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 21, a1  = 0, (wrb) a2  <-- 21
      0x800007e0 srli    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 10
      0x800007e4 add     a1, a2, a1             #; a2  = 10, a1  = 0, (wrb) a1  <-- 10
      0x800007e8 srli    a1, a1, 4              #; a1  = 10, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 21, a1  = 0, (wrb) a1  <-- 21
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 21
                                                #; (f:fpu) ft4  <-- 21.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 21.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 21, (wrb) a5  <-- 22
      0x8000080c bnez    a3, pc - 52            #; a3  = 3, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 22, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 29.6982000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 29.6982000, ft4  = 29.6982000
                                                #; (f:fpu) ft0  <-- 29.6982000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 22, a1  = 0, (wrb) a2  <-- 22
      0x800007e0 srli    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 11
      0x800007e4 add     a1, a2, a1             #; a2  = 11, a1  = 0, (wrb) a1  <-- 11
      0x800007e8 srli    a1, a1, 4              #; a1  = 11, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 22, a1  = 0, (wrb) a1  <-- 22
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 22
                                                #; (f:fpu) ft4  <-- 22.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 22.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 22, (wrb) a5  <-- 23
      0x8000080c bnez    a3, pc - 52            #; a3  = 2, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 23, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 31.1124000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.1124000, ft4  = 31.1124000
                                                #; (f:fpu) ft0  <-- 31.1124000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 23, a1  = 0, (wrb) a2  <-- 23
      0x800007e0 srli    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 11
      0x800007e4 add     a1, a2, a1             #; a2  = 11, a1  = 0, (wrb) a1  <-- 11
      0x800007e8 srli    a1, a1, 4              #; a1  = 11, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 23, a1  = 0, (wrb) a1  <-- 23
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 23
                                                #; (f:fpu) ft4  <-- 23.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 23.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 23, (wrb) a5  <-- 24
      0x8000080c bnez    a3, pc - 52            #; a3  = 1, taken, goto 0x800007d8
; init_data (various.c:9)
;  in various (various.c:43)
      0x800007d8 mulhu   a1, a5, a4             #; a5  = 24, a4  = 0x08421085
                                                #; (f:fpu) ft4  <-- 32.5266000
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 32.5266000, ft4  = 32.5266000
                                                #; (f:fpu) ft0  <-- 32.5266000
                                                #; (acc) a2  <-- 0x40b78633
      0x800007dc sub     a2, a5, a1             #; a5  = 24, a1  = 0, (wrb) a2  <-- 24
      0x800007e0 srli    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 12
      0x800007e4 add     a1, a2, a1             #; a2  = 12, a1  = 0, (wrb) a1  <-- 12
      0x800007e8 srli    a1, a1, 4              #; a1  = 12, (wrb) a1  <-- 0
      0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
      0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
      0x800007f4 add     a1, a5, a1             #; a5  = 24, a1  = 0, (wrb) a1  <-- 24
      0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 24
                                                #; (f:fpu) ft4  <-- 24.0
; init_data (various.c:8)
;  in various (various.c:43)
      0x80000804 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
      0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 24.0, ft3  = 1.4142
      0x80000808 addi    a5, a5, 1              #; a5  = 24, (wrb) a5  <-- 25
      0x8000080c bnez    a3, pc - 52            #; a3  = 0, not taken
                                                #; (f:fpu) ft4  <-- 33.9408000
; init_data (various.c:9)
;  in various (various.c:43)
      0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 33.9408000, ft4  = 33.9408000
                                                #; (f:fpu) ft0  <-- 33.9408000
; various (various.c:0)
      0x80000814 bnez    a7, pc - 212           #; a7  = 1, taken, goto 0x80000740
      0x80000810 csrci   ssr, 1                 #; 
      0x80000740 li      a1, 8                  #; (wrb) a1  <-- 8
; norm (various.c:15)
;  in various (various.c:45)
      0x80000744 li      a2, 64                 #; (wrb) a2  <-- 64
      0x80000748 li      a3, 192                #; (wrb) a3  <-- 192
      0x8000074c scfgw   t0, a2                 #; t0  = 24, a2  = 64
      0x80000750 scfgw   a1, a3                 #; a1  = 8, a3  = 192
      0x80000754 li      a1, 32                 #; (wrb) a1  <-- 32
      0x80000758 scfgw   zero, a1               #; a1  = 32
      0x8000075c scfgwi  t1, 768                #; t1  = 0x00100000
      0x80000760 csrsi   ssr, 1                 #; 
      0x80000768 mv      a2, a0                 #; a0  = 25, (wrb) a2  <-- 25
      0x80000764 fcvt.d.w ft3, zero             #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
; norm (various.c:15)
;  in various (various.c:45)
      0x80000770 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
      0x80000778 bnez    a2, pc - 12            #; a2  = 24, taken, goto 0x8000076c
; norm (various.c:16)
;  in various (various.c:45)
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 0.0, ft4  = 0.0, ft3  = 0.0
; norm (various.c:15)
;  in various (various.c:45)
      0x80000770 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 1.4142, ft0  = 1.4142
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 23, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 1.4142
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000770 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 1.4142, ft4  = 1.4142, ft3  = 0.0
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 2.8284, ft0  = 2.8284
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 22, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 2.8284
                                                #; (f:fpu) ft3  <-- 1.9999616
      0x80000770 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 2.8284, ft4  = 2.8284, ft3  = 1.9999616
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 4.2426000, ft0  = 4.2426000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 21, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 4.2426000
                                                #; (f:fpu) ft3  <-- 9.9998082
      0x80000770 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 4.2426000, ft4  = 4.2426000, ft3  = 9.9998082
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 5.6568, ft0  = 5.6568
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 20, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 5.6568
                                                #; (f:fpu) ft3  <-- 27.9994630
      0x80000770 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 5.6568, ft4  = 5.6568, ft3  = 27.9994630
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 7.071, ft0  = 7.071
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 19, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 7.071
                                                #; (f:fpu) ft3  <-- 59.9988492
      0x80000770 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 7.071, ft4  = 7.071, ft3  = 59.9988492
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 8.4852000, ft0  = 8.4852000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 18, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 8.4852000
                                                #; (f:fpu) ft3  <-- 109.9978902
      0x80000770 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 8.4852000, ft4  = 8.4852000, ft3  = 109.9978902
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 9.8994, ft0  = 9.8994
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 17, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 9.8994
                                                #; (f:fpu) ft3  <-- 181.9965092
      0x80000770 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 9.8994, ft4  = 9.8994, ft3  = 181.9965092
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 11.3136, ft0  = 11.3136
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 16, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 11.3136
                                                #; (f:fpu) ft3  <-- 279.9946296
      0x80000770 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 11.3136, ft4  = 11.3136, ft3  = 279.9946296
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 12.7278000, ft0  = 12.7278000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 15, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 12.7278000
                                                #; (f:fpu) ft3  <-- 407.9921746
      0x80000770 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 12.7278000, ft4  = 12.7278000, ft3  = 407.9921746
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 14.142, ft0  = 14.142
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 14, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 14.142
                                                #; (f:fpu) ft3  <-- 569.9890674
      0x80000770 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 14.142, ft4  = 14.142, ft3  = 569.9890674
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 15.5562000, ft0  = 15.5562000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 13, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 15.5562000
                                                #; (f:fpu) ft3  <-- 769.9852314
      0x80000770 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 15.5562000, ft4  = 15.5562000, ft3  = 769.9852314
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 16.9704000, ft0  = 16.9704000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 12, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 16.9704000
                                                #; (f:fpu) ft3  <-- 1011.9805898
      0x80000770 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 16.9704000, ft4  = 16.9704000, ft3  = 1011.9805898
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 18.3846, ft0  = 18.3846
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 11, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 18.3846
                                                #; (f:fpu) ft3  <-- 1299.9750660
      0x80000770 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 18.3846, ft4  = 18.3846, ft3  = 1299.9750660
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 19.7988, ft0  = 19.7988
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 10, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 19.7988
                                                #; (f:fpu) ft3  <-- 1637.9685832
      0x80000770 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 19.7988, ft4  = 19.7988, ft3  = 1637.9685832
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 21.2130000, ft0  = 21.2130000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 9, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 21.2130000
                                                #; (f:fpu) ft3  <-- 2029.9610646
      0x80000770 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 21.2130000, ft4  = 21.2130000, ft3  = 2029.9610646
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 22.6272, ft0  = 22.6272
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 8, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 22.6272
                                                #; (f:fpu) ft3  <-- 2479.9524336
      0x80000770 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 22.6272, ft4  = 22.6272, ft3  = 2479.9524336
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 24.0414, ft0  = 24.0414
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 7, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 24.0414
                                                #; (f:fpu) ft3  <-- 2991.9426134
      0x80000770 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 24.0414, ft4  = 24.0414, ft3  = 2991.9426134
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 25.4556000, ft0  = 25.4556000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 6, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 25.4556000
                                                #; (f:fpu) ft3  <-- 3569.9315274
      0x80000770 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 25.4556000, ft4  = 25.4556000, ft3  = 3569.9315274
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 26.8698000, ft0  = 26.8698000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 5, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 26.8698000
                                                #; (f:fpu) ft3  <-- 4217.9190988
      0x80000770 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 26.8698000, ft4  = 26.8698000, ft3  = 4217.9190988
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 28.284, ft0  = 28.284
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 4, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 28.284
                                                #; (f:fpu) ft3  <-- 4939.9052508
      0x80000770 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 28.284, ft4  = 28.284, ft3  = 4939.9052508
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 29.6982000, ft0  = 29.6982000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 3, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 29.6982000
                                                #; (f:fpu) ft3  <-- 5739.8899068
      0x80000770 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 29.6982000, ft4  = 29.6982000, ft3  = 5739.8899068
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 31.1124000, ft0  = 31.1124000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 2, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 31.1124000
                                                #; (f:fpu) ft3  <-- 6621.8729900
      0x80000770 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 31.1124000, ft4  = 31.1124000, ft3  = 6621.8729900
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 32.5266000, ft0  = 32.5266000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 1, taken, goto 0x8000076c
                                                #; (f:fpu) ft4  <-- 32.5266000
                                                #; (f:fpu) ft3  <-- 7589.8544238
      0x80000770 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 32.5266000, ft4  = 32.5266000, ft3  = 7589.8544238
; norm (various.c:16)
;  in various (various.c:45)
      0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 33.9408000, ft0  = 33.9408000
; norm (various.c:15)
;  in various (various.c:45)
      0x80000778 bnez    a2, pc - 12            #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 33.9408000
                                                #; (f:fpu) ft3  <-- 8647.8341314
; norm (various.c:16)
;  in various (various.c:45)
      0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 33.9408000, ft4  = 33.9408000, ft3  = 8647.8341314
; various (various.c:0)
      0x8000077c csrci   ssr, 1                 #; 
      0x80000780 j       pc + 0xb8              #; goto 0x80000838
                                                #; (f:fpu) ft3  <-- 9799.8120360
      0x80000838 li      a4, 0                  #; (wrb) a4  <-- 0
      0x8000083c fcvt.d.w ft4, zero             #; ac1  = 0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000840 mv      a3, t1                 #; t1  = 0x00100000, (wrb) a3  <-- 0x00100000
      0x80000844 j       pc + 0x10              #; goto 0x80000854
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 0, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft0  <-- 0.0
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 1
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 0.0, ft4  = 0.0
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 1, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 1, (wrb) a1  <-- 1
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 2, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 2, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100010]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
                                                #; (f:lsu) ft0  <-- 2.8284
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 2.8284, ft4  = 0.0
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 3, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 3, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 2.8284
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 4, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 4, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100020]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
                                                #; (f:lsu) ft0  <-- 5.6568
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 5.6568, ft4  = 2.8284
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 5, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 5, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 8.4852000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 6, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 6, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
                                                #; (f:lsu) ft0  <-- 8.4852000
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 8.4852000, ft4  = 8.4852000
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 7, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 7, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 16.9704000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 8, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 8, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100040]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
                                                #; (f:lsu) ft0  <-- 11.3136
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 11.3136, ft4  = 16.9704000
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 9, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 9, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 28.284
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 10, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 10, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100050]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
                                                #; (f:lsu) ft0  <-- 14.142
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 14.142, ft4  = 28.284
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 11, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 11, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 42.426
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 12, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 12, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
                                                #; (f:lsu) ft0  <-- 16.9704000
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 16.9704000, ft4  = 42.426
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 13, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 13, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 59.3964
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 14, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 14, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100070]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
                                                #; (f:lsu) ft0  <-- 19.7988
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 19.7988, ft4  = 59.3964
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 15, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 15, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 79.1952
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 16, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 16, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100080]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
                                                #; (f:lsu) ft0  <-- 22.6272
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 22.6272, ft4  = 79.1952
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 17, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 17, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 101.8224
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 18, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 18, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
                                                #; (f:lsu) ft0  <-- 25.4556000
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 25.4556000, ft4  = 101.8224
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 19, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 19, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 127.2780000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
      0x8000084c addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 20, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 20, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000a0]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
                                                #; (f:lsu) ft0  <-- 28.284
      0x8000084c addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 28.284, ft4  = 127.2780000
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 21, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 21, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 155.5620000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
      0x8000084c addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 22, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 22, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000b0]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
                                                #; (f:lsu) ft0  <-- 31.1124000
      0x8000084c addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 31.1124000, ft4  = 155.5620000
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 23, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 23, (wrb) a1  <-- 1
      0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                                                #; (f:fpu) ft4  <-- 186.6744
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
      0x8000084c addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 24, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x80000854 andi    a1, a4, 1              #; a4  = 24, (wrb) a1  <-- 0
      0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000864 j       pc - 0x1c              #; goto 0x80000848
      0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x80000848 addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
                                                #; (f:lsu) ft0  <-- 33.9408000
      0x8000084c addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
      0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 33.9408000, ft4  = 186.6744
      0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 25, taken, goto 0x80000868
; various (various.c:0)
      0x80000868 li      a1, 10                 #; (wrb) a1  <-- 10
; skipAfterContantNrOfRounds (various.c:31)
;  in various (various.c:49)
      0x8000086c mv      a5, t0                 #; t0  = 24, (wrb) a5  <-- 24
                                                #; (f:fpu) ft4  <-- 220.6152
      0x80000870 bltu    t0, a1, pc + 8         #; t0  = 24, a1  = 10, not taken
      0x80000874 li      a5, 10                 #; (wrb) a5  <-- 10
      0x80000878 slli    a1, a5, 3              #; a5  = 10, (wrb) a1  <-- 80
      0x8000087c add     a2, t1, a1             #; t1  = 0x00100000, a1  = 80, (wrb) a2  <-- 0x00100050
      0x80000880 bgeu    a2, t1, pc + 152       #; a2  = 0x00100050, t1  = 0x00100000, taken, goto 0x80000918
; various (scalarprod.c:0)
      0x80000918 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x8000091c addi    a1, a1, 1              #; a1  = 0x00120000, (wrb) a1  <-- 0x00120001
      0x80000920 sltu    a2, a2, a1             #; a2  = 0x00100050, a1  = 0x00120001, (wrb) a2  <-- 1
; skipAfterContantNrOfRounds (various.c:31)
;  in various (various.c:49)
      0x80000924 and     a1, a6, a2             #; a6  = 1, a2  = 1, (wrb) a1  <-- 1
      0x80000928 beqz    a1, pc - 152           #; a1  = 1, not taken
; skipAfterContantNrOfRounds (various.c:0)
;  in various (various.c:49)
      0x8000092c li      a1, 8                  #; (wrb) a1  <-- 8
; skipAfterContantNrOfRounds (various.c:31)
;  in various (various.c:49)
      0x80000930 li      a2, 64                 #; (wrb) a2  <-- 64
      0x80000934 li      a3, 192                #; (wrb) a3  <-- 192
      0x80000938 scfgw   a5, a2                 #; a5  = 10, a2  = 64
      0x8000093c scfgw   a1, a3                 #; a1  = 8, a3  = 192
      0x80000940 li      a1, 32                 #; (wrb) a1  <-- 32
      0x80000944 scfgw   zero, a1               #; a1  = 32
      0x80000948 scfgwi  t1, 768                #; t1  = 0x00100000
      0x8000094c csrsi   ssr, 1                 #; 
      0x80000950 addi    a2, a5, 1              #; a5  = 10, (wrb) a2  <-- 11
      0x80000954 fcvt.d.w ft5, zero             #; ac1  = 0
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x8000095c addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
                                                #; (f:fpu) ft5  <-- 0.0
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft6  <-- 0.0
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 10, taken, goto 0x80000958
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 0.0, ft5  = 0.0
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x8000095c addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 1.4142, ft0  = 1.4142
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 9, taken, goto 0x80000958
                                                #; (f:fpu) ft6  <-- 1.4142
                                                #; (f:fpu) ft5  <-- 0.0
      0x8000095c addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 1.4142, ft5  = 0.0
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 2.8284, ft0  = 2.8284
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 8, taken, goto 0x80000958
                                                #; (f:fpu) ft6  <-- 2.8284
                                                #; (f:fpu) ft5  <-- 1.4142
      0x8000095c addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 2.8284, ft5  = 1.4142
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 4.2426000, ft0  = 4.2426000
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 7, taken, goto 0x80000958
                                                #; (f:fpu) ft6  <-- 4.2426000
                                                #; (f:fpu) ft5  <-- 4.2426000
      0x8000095c addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 4.2426000, ft5  = 4.2426000
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 5.6568, ft0  = 5.6568
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 6, taken, goto 0x80000958
                                                #; (f:fpu) ft6  <-- 5.6568
                                                #; (f:fpu) ft5  <-- 8.4852000
      0x8000095c addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 5.6568, ft5  = 8.4852000
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 7.071, ft0  = 7.071
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 5, taken, goto 0x80000958
                                                #; (f:fpu) ft6  <-- 7.071
                                                #; (f:fpu) ft5  <-- 14.142
      0x8000095c addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 7.071, ft5  = 14.142
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 8.4852000, ft0  = 8.4852000
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 4, taken, goto 0x80000958
                                                #; (f:fpu) ft6  <-- 8.4852000
                                                #; (f:fpu) ft5  <-- 21.213
      0x8000095c addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 8.4852000, ft5  = 21.213
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 9.8994, ft0  = 9.8994
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 3, taken, goto 0x80000958
                                                #; (f:fpu) ft6  <-- 9.8994
                                                #; (f:fpu) ft5  <-- 29.6982
      0x8000095c addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 9.8994, ft5  = 29.6982
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 11.3136, ft0  = 11.3136
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 2, taken, goto 0x80000958
                                                #; (f:fpu) ft6  <-- 11.3136
                                                #; (f:fpu) ft5  <-- 39.5976
      0x8000095c addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 11.3136, ft5  = 39.5976
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 12.7278000, ft0  = 12.7278000
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 1, taken, goto 0x80000958
                                                #; (f:fpu) ft6  <-- 12.7278000
                                                #; (f:fpu) ft5  <-- 50.9112
      0x8000095c addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 12.7278000, ft5  = 50.9112
; skipAfterContantNrOfRounds (various.c:32)
;  in various (various.c:49)
      0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 14.142, ft0  = 14.142
; skipAfterContantNrOfRounds (various.c:33)
;  in various (various.c:49)
      0x80000964 bnez    a2, pc - 12            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 14.142
                                                #; (f:fpu) ft5  <-- 63.6390000
; various (various.c:0)
      0x8000096c bnez    a7, pc - 184           #; a7  = 1, taken, goto 0x800008b4
      0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 14.142, ft5  = 63.6390000
      0x80000968 csrci   ssr, 1                 #; 
                                                #; (f:fpu) ft5  <-- 77.7810000
      0x800008b4 li      a1, 8                  #; (wrb) a1  <-- 8
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x800008b8 li      a2, 64                 #; (wrb) a2  <-- 64
      0x800008bc li      a3, 192                #; (wrb) a3  <-- 192
      0x800008c0 scfgw   t0, a2                 #; t0  = 24, a2  = 64
      0x800008c4 scfgw   a1, a3                 #; a1  = 8, a3  = 192
      0x800008c8 li      a2, 32                 #; (wrb) a2  <-- 32
      0x800008cc scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
      0x800008d0 scfgwi  t1, 768                #; t1  = 0x00100000
      0x800008d4 li      a2, 1                  #; (wrb) a2  <-- 1
      0x800008d8 addi    a3, a2, 64             #; a2  = 1, (wrb) a3  <-- 65
      0x800008dc addi    a4, a2, 192            #; a2  = 1, (wrb) a4  <-- 193
      0x800008e0 scfgw   t0, a3                 #; t0  = 24, a3  = 65
      0x800008e4 scfgw   a1, a4                 #; a1  = 8, a4  = 193
      0x800008e8 addi    a1, a2, 32             #; a2  = 1, (wrb) a1  <-- 33
      0x800008ec scfgw   zero, a1               #; a1  = 33, (acc) ra  <-- 0x00b020ab
      0x800008f0 scfgwi  t1, 769                #; t1  = 0x00100000
      0x800008f4 csrsi   ssr, 1                 #; 
                                                #; (acc) t2  <-- 0x220003d3
      0x800008f8 fcvt.d.w ft6, zero             #; ac1  = 0
                                                #; (f:fpu) ft6  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 0.0, ft1  = 0.0
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 24, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 0.0, ft7  = 0.0, ft6  = 0.0
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 1.4142, ft0  = 1.4142
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 1.4142, ft1  = 1.4142, (f:fpu) ft7  <-- 1.4142
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 23, taken, goto 0x800008fc
                                                #; (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) fa0  <-- 1.4142
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 1.4142, ft7  = 1.4142, ft6  = 0.0
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 2.8284, ft0  = 2.8284
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 2.8284, ft1  = 2.8284, (f:fpu) ft7  <-- 2.8284
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 22, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2.8284
                                                #; (f:fpu) ft6  <-- 1.9999616
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 2.8284, ft7  = 2.8284, ft6  = 1.9999616
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 4.2426000, ft0  = 4.2426000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 4.2426000, ft1  = 4.2426000, (f:fpu) ft7  <-- 4.2426000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 21, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 4.2426000
                                                #; (f:fpu) ft6  <-- 9.9998082
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 4.2426000, ft7  = 4.2426000, ft6  = 9.9998082
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 5.6568, ft0  = 5.6568
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 5.6568, ft1  = 5.6568, (f:fpu) ft7  <-- 5.6568
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 20, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 5.6568
                                                #; (f:fpu) ft6  <-- 27.9994630
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 5.6568, ft7  = 5.6568, ft6  = 27.9994630
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 7.071, ft0  = 7.071
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 7.071, ft1  = 7.071, (f:fpu) ft7  <-- 7.071
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 19, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 7.071
                                                #; (f:fpu) ft6  <-- 59.9988492
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 7.071, ft7  = 7.071, ft6  = 59.9988492
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 8.4852000, ft0  = 8.4852000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 8.4852000, ft1  = 8.4852000, (f:fpu) ft7  <-- 8.4852000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 18, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 8.4852000
                                                #; (f:fpu) ft6  <-- 109.9978902
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 8.4852000, ft7  = 8.4852000, ft6  = 109.9978902
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 9.8994, ft0  = 9.8994
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 9.8994, ft1  = 9.8994, (f:fpu) ft7  <-- 9.8994
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 17, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 9.8994
                                                #; (f:fpu) ft6  <-- 181.9965092
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 9.8994, ft7  = 9.8994, ft6  = 181.9965092
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 11.3136, ft0  = 11.3136
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 11.3136, ft1  = 11.3136, (f:fpu) ft7  <-- 11.3136
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 16, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 11.3136
                                                #; (f:fpu) ft6  <-- 279.9946296
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 11.3136, ft7  = 11.3136, ft6  = 279.9946296
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 12.7278000, ft0  = 12.7278000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 12.7278000, ft1  = 12.7278000, (f:fpu) ft7  <-- 12.7278000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 15, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 12.7278000
                                                #; (f:fpu) ft6  <-- 407.9921746
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 12.7278000, ft7  = 12.7278000, ft6  = 407.9921746
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 14.142, ft0  = 14.142
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 14.142, ft1  = 14.142, (f:fpu) ft7  <-- 14.142
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 14, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 14.142
                                                #; (f:fpu) ft6  <-- 569.9890674
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 14.142, ft7  = 14.142, ft6  = 569.9890674
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 15.5562000, ft0  = 15.5562000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 15.5562000, ft1  = 15.5562000, (f:fpu) ft7  <-- 15.5562000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 13, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 15.5562000
                                                #; (f:fpu) ft6  <-- 769.9852314
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 15.5562000, ft7  = 15.5562000, ft6  = 769.9852314
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 16.9704000, ft0  = 16.9704000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 16.9704000, ft1  = 16.9704000, (f:fpu) ft7  <-- 16.9704000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 12, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 16.9704000
                                                #; (f:fpu) ft6  <-- 1011.9805898
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 16.9704000, ft7  = 16.9704000, ft6  = 1011.9805898
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 18.3846, ft0  = 18.3846
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 18.3846, ft1  = 18.3846, (f:fpu) ft7  <-- 18.3846
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 11, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 18.3846
                                                #; (f:fpu) ft6  <-- 1299.9750660
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 18.3846, ft7  = 18.3846, ft6  = 1299.9750660
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 19.7988, ft0  = 19.7988
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 19.7988, ft1  = 19.7988, (f:fpu) ft7  <-- 19.7988
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 10, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 19.7988
                                                #; (f:fpu) ft6  <-- 1637.9685832
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 19.7988, ft7  = 19.7988, ft6  = 1637.9685832
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 21.2130000, ft0  = 21.2130000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 21.2130000, ft1  = 21.2130000, (f:fpu) ft7  <-- 21.2130000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 9, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 21.2130000
                                                #; (f:fpu) ft6  <-- 2029.9610646
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 21.2130000, ft7  = 21.2130000, ft6  = 2029.9610646
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 22.6272, ft0  = 22.6272
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 22.6272, ft1  = 22.6272, (f:fpu) ft7  <-- 22.6272
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 8, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 22.6272
                                                #; (f:fpu) ft6  <-- 2479.9524336
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 22.6272, ft7  = 22.6272, ft6  = 2479.9524336
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 24.0414, ft0  = 24.0414
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 24.0414, ft1  = 24.0414, (f:fpu) ft7  <-- 24.0414
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 7, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 24.0414
                                                #; (f:fpu) ft6  <-- 2991.9426134
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 24.0414, ft7  = 24.0414, ft6  = 2991.9426134
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 25.4556000, ft0  = 25.4556000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 25.4556000, ft1  = 25.4556000, (f:fpu) ft7  <-- 25.4556000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 6, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 25.4556000
                                                #; (f:fpu) ft6  <-- 3569.9315274
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 25.4556000, ft7  = 25.4556000, ft6  = 3569.9315274
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 26.8698000, ft0  = 26.8698000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 26.8698000, ft1  = 26.8698000, (f:fpu) ft7  <-- 26.8698000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 5, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 26.8698000
                                                #; (f:fpu) ft6  <-- 4217.9190988
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 26.8698000, ft7  = 26.8698000, ft6  = 4217.9190988
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 28.284, ft0  = 28.284
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 28.284, ft1  = 28.284, (f:fpu) ft7  <-- 28.284
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 4, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 28.284
                                                #; (f:fpu) ft6  <-- 4939.9052508
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 28.284, ft7  = 28.284, ft6  = 4939.9052508
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 29.6982000, ft0  = 29.6982000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 29.6982000, ft1  = 29.6982000, (f:fpu) ft7  <-- 29.6982000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 3, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 29.6982000
                                                #; (f:fpu) ft6  <-- 5739.8899068
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 29.6982000, ft7  = 29.6982000, ft6  = 5739.8899068
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 31.1124000, ft0  = 31.1124000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 31.1124000, ft1  = 31.1124000, (f:fpu) ft7  <-- 31.1124000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 2, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 31.1124000
                                                #; (f:fpu) ft6  <-- 6621.8729900
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 31.1124000, ft7  = 31.1124000, ft6  = 6621.8729900
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 32.5266000, ft0  = 32.5266000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 32.5266000, ft1  = 32.5266000, (f:fpu) ft7  <-- 32.5266000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 1, taken, goto 0x800008fc
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 32.5266000
                                                #; (f:fpu) ft6  <-- 7589.8544238
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 32.5266000, ft7  = 32.5266000, ft6  = 7589.8544238
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x80000904 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
      0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 33.9408000, ft0  = 33.9408000
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 33.9408000, ft1  = 33.9408000, (f:fpu) ft7  <-- 33.9408000
; scalarprod (scalarprod.c:6)
;  in various (various.c:51)
      0x8000090c bnez    a0, pc - 16            #; a0  = 0, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 33.9408000
                                                #; (f:fpu) ft6  <-- 8647.8341314
; scalarprod (scalarprod.c:7)
;  in various (various.c:51)
      0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 33.9408000, ft7  = 33.9408000, ft6  = 8647.8341314
; various (scalarprod.c:0)
      0x80000914 j       pc + 0x74              #; goto 0x80000988
      0x80000910 csrci   ssr, 1                 #; 
                                                #; (f:fpu) ft6  <-- 9799.8120360
      0x80000988 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002988
      0x8000098c addi    a0, a0, 1632           #; a0  = 0x80002988, (wrb) a0  <-- 0x80002fe8
      0x80000994 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002994
      0x80000998 addi    a0, a0, 1612           #; a0  = 0x80002994, (wrb) a0  <-- 0x80002fe0
      0x80000990 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fe8]
      0x8000099c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fe0]
                                                #; (f:lsu) ft0  <-- -220.6152000
; various (various.c:0)
      0x800009a4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029a4
      0x800009a8 addi    a0, a0, 1612           #; a0  = 0x800029a4, (wrb) a0  <-- 0x80002ff0
      0x800009a0 fadd.d  ft0, ft4, ft0          #; ft4  = 220.6152, ft0  = -220.6152000, (f:lsu) ft1  <-- -9799.8120360
      0x800009ac fld     ft2, 0(a0)             #; ft2  <~~ Doub[0x80002ff0], (f:fpu) ft0  <-- 0.0
; various (various.c:54)
      0x800009b0 fadd.d  ft3, ft3, ft1          #; ft3  = 9799.8120360, ft1  = -9799.8120360, (f:lsu) ft2  <-- -77.781
                                                #; (f:fpu) ft3  <-- -0.0000000
; abs (various.c:38)
;  in various (various.c:54)
      0x800009b4 fsgnjx.d ft3, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000
      0x800009b8 fsgnjx.d ft0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft3  <-- 0.0000000
; various (various.c:54)
      0x800009bc fadd.d  ft2, ft5, ft2          #; ft5  = 77.7810000, ft2  = -77.781, (f:fpu) ft0  <-- 0.0
                                                #; (f:fpu) ft2  <-- -0.0000000
; abs (various.c:38)
;  in various (various.c:54)
      0x800009c0 fsgnjx.d ft2, ft2, ft2         #; ft2  = -0.0000000, ft2  = -0.0000000
; various (various.c:54)
      0x800009c4 fadd.d  ft1, ft6, ft1          #; ft6  = 9799.8120360, ft1  = -9799.8120360, (f:fpu) ft2  <-- 0.0000000
                                                #; (f:fpu) ft1  <-- -0.0000000
; abs (various.c:38)
;  in various (various.c:54)
      0x800009c8 fsgnjx.d ft1, ft1, ft1         #; ft1  = -0.0000000, ft1  = -0.0000000
; various (various.c:54)
      0x800009cc fadd.d  ft2, ft3, ft2          #; ft3  = 0.0000000, ft2  = 0.0000000, (f:fpu) ft1  <-- 0.0000000
                                                #; (f:fpu) ft2  <-- 0.0000000
      0x800009d0 fadd.d  ft0, ft2, ft0          #; ft2  = 0.0000000, ft0  = 0.0
; various (various.c:56)
      0x800009dc lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                                                #; (f:fpu) ft0  <-- 0.0000000
                                                #; (lsu) a2  <-- 0
      0x800009d4 fadd.d  fs0, ft0, ft1          #; ft0  = 0.0000000, ft1  = 0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x800009d8 fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff48]
      0x800009e0 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x800009e4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029e4
      0x800009e8 addi    a0, a0, 865            #; a0  = 0x800029e4, (wrb) a0  <-- 0x80002d45
      0x800009ec auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009ec
                                                #; (lsu) a3  <-- 0x3d901000
      0x800009f0 jalr    ra, ra, 40             #; ra  = 0x800009ec, (wrb) ra  <-- 0x800009f4, goto 0x80000a14
; printf_ (printf.c:863)
      0x80000a14 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000a18 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800009f4 ~~> Word[0x0011ff1c]
      0x80000a1c mv      t0, a0                 #; a0  = 0x80002d45, (wrb) t0  <-- 0x80002d45
      0x80000a20 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
      0x80000a24 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
      0x80000a28 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff34]
      0x80000a2c sw      a4, 32(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff30]
      0x80000a30 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x3d901000 ~~> Word[0x0011ff2c]
      0x80000a34 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000a38 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 33 ~~> Word[0x0011ff24]
      0x80000a3c addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000a40 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000a44 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a44
      0x80000a48 addi    a0, a0, -988           #; a0  = 0x80001a44, (wrb) a0  <-- 0x80001668
      0x80000a4c addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000a50 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000a54 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000a58 mv      a3, t0                 #; t0  = 0x80002d45, (wrb) a3  <-- 0x80002d45
      0x80000a5c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a5c
      0x80000a60 jalr    ra, ra, 20             #; ra  = 0x80000a5c, (wrb) ra  <-- 0x80000a64, goto 0x80000a70
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000a70 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000a74 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000a64 ~~> Word[0x0011ff0c]
      0x80000a78 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000a7c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000a80 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000a84 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000a88 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000a8c sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000a90 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000a94 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000a98 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000a9c sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000aa0 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000aa4 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000aa8 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000aac mv      s0, a3                 #; a3  = 0x80002d45, (wrb) s0  <-- 0x80002d45
      0x80000ab0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000ab4 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000ab8 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000abc mv      s2, a0                 #; a0  = 0x80001668, (wrb) s2  <-- 0x80001668
      0x80000ac0 j       pc + 0xc               #; goto 0x80000acc
      0x80000acc li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000ad0 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000ad4 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000ad8 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000adc lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000ae0 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000ae4 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000ae8 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000aec addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000af0 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000af4 addi    s10, s0, 2             #; s0  = 0x80002d45, (wrb) s10 <-- 0x80002d47
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000af8 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000afc li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b00 lbu     a0, 0(s0)              #; s0  = 0x80002d45, a0  <~~ Byte[0x80002d45]
                                                #; (lsu) a0  <-- 101
      0x80000b04 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000b08 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b0c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b14 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 0
      0x80001688 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 1 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 0, (wrb) a4  <-- 0x800030ac
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030ac, 101 ~~> Byte[0x800030f4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 1
      0x8000169c addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800016a0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800016a8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d45, (wrb) s0  <-- 0x80002d46
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d47, (wrb) s10 <-- 0x80002d48
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b28 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d46, a0  <~~ Byte[0x80002d46]
                                                #; (lsu) a0  <-- 114
      0x80000b30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b08
      0x80000b08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b0c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b14 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 1
      0x80001688 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 2 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 1, (wrb) a4  <-- 0x800030ad
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030ad, 114 ~~> Byte[0x800030f5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 2
      0x8000169c addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800016a0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800016a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d46, (wrb) s0  <-- 0x80002d47
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d48, (wrb) s10 <-- 0x80002d49
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b28 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d47, a0  <~~ Byte[0x80002d47]
                                                #; (lsu) a0  <-- 114
      0x80000b30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b08
      0x80000b08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b0c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b14 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 2
      0x80001688 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 3 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 2, (wrb) a4  <-- 0x800030ae
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030ae, 114 ~~> Byte[0x800030f6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 3
      0x8000169c addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800016a0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800016a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d47, (wrb) s0  <-- 0x80002d48
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d49, (wrb) s10 <-- 0x80002d4a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b28 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d48, a0  <~~ Byte[0x80002d48]
                                                #; (lsu) a0  <-- 111
      0x80000b30 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b08
      0x80000b08 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b0c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b14 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 3
      0x80001688 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 4 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 3, (wrb) a4  <-- 0x800030af
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030af, 111 ~~> Byte[0x800030f7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 4
      0x8000169c addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800016a0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800016a8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d48, (wrb) s0  <-- 0x80002d49
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d4a, (wrb) s10 <-- 0x80002d4b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b28 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d49, a0  <~~ Byte[0x80002d49]
                                                #; (lsu) a0  <-- 114
      0x80000b30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b08
      0x80000b08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b0c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b14 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 4
      0x80001688 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 5 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 4, (wrb) a4  <-- 0x800030b0
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b0, 114 ~~> Byte[0x800030f8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 5
      0x8000169c addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800016a0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800016a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d49, (wrb) s0  <-- 0x80002d4a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d4b, (wrb) s10 <-- 0x80002d4c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b28 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d4a, a0  <~~ Byte[0x80002d4a]
                                                #; (lsu) a0  <-- 32
      0x80000b30 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b08
      0x80000b08 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b0c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b14 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 5
      0x80001688 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 6 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 5, (wrb) a4  <-- 0x800030b1
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b1, 32 ~~> Byte[0x800030f9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 6
      0x8000169c addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800016a0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800016a8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d4a, (wrb) s0  <-- 0x80002d4b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d4c, (wrb) s10 <-- 0x80002d4d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b28 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d4b, a0  <~~ Byte[0x80002d4b]
                                                #; (lsu) a0  <-- 61
      0x80000b30 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b08
      0x80000b08 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b0c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b14 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 6
      0x80001688 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 7 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 6, (wrb) a4  <-- 0x800030b2
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b2, 61 ~~> Byte[0x800030fa]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 7
      0x8000169c addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800016a0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800016a8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d4b, (wrb) s0  <-- 0x80002d4c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d4d, (wrb) s10 <-- 0x80002d4e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b28 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d4c, a0  <~~ Byte[0x80002d4c]
                                                #; (lsu) a0  <-- 32
      0x80000b30 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b08
      0x80000b08 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b0c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b14 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 7
      0x80001688 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 8 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 7, (wrb) a4  <-- 0x800030b3
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b3, 32 ~~> Byte[0x800030fb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 8
      0x8000169c addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800016a0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800016a8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d4c, (wrb) s0  <-- 0x80002d4d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d4e, (wrb) s10 <-- 0x80002d4f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b28 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d4d, a0  <~~ Byte[0x80002d4d]
                                                #; (lsu) a0  <-- 37
      0x80000b30 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b08
      0x80000b08 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b38
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000b38 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b3c j       pc + 0x10              #; goto 0x80000b4c
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000b4c lbu     a0, -1(s10)            #; s10 = 0x80002d4f, a0  <~~ Byte[0x80002d4e]
                                                #; (lsu) a0  <-- 102
      0x80000b50 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000b54 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b8c
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000b8c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000b90 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000b94 addi    a1, s10, -1            #; s10 = 0x80002d4f, (wrb) a1  <-- 0x80002d4e
      0x80000b98 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000b9c bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c18
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000c18 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000c1c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000c6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c6c li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000c70 mv      s10, a1                #; a1  = 0x80002d4e, (wrb) s10 <-- 0x80002d4e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000c74 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c78 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000c7c j       pc + 0xc               #; goto 0x80000c88
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000c88 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000c8c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000c90 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000c94 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000c98 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000c9c bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d00
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000d00 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000d04 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000d08 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d0c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000d10 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d10
      0x80000d14 addi    a2, a2, 180            #; a2  = 0x80002d10, (wrb) a2  <-- 0x80002dc4
      0x80000d18 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002dc4, (wrb) a1  <-- 0x80002ec8
      0x80000d1c lw      a2, 0(a1)              #; a1  = 0x80002ec8, a2  <~~ Word[0x80002ec8]
      0x80000d20 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000d24 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000d58
      0x80000d28 jr      a2                     #; a2  = 0x80000d58, goto 0x80000d58
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000d58 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000d5c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000d64
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000d64 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000d68 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000d6c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0000000
      0x80000d70 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000d74 mv      a0, s2                 #; s2  = 0x80001668, (wrb) a0  <-- 0x80001668
      0x80000d78 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000d7c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000d80 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000d84 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000d88 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000d8c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000d90 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d90
      0x80000d94 jalr    ra, ra, -1656          #; ra  = 0x80001d90, (wrb) ra  <-- 0x80000d98, goto 0x80001718
; _ftoa (printf.c:340)
      0x80001718 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x8000171c sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d98 ~~> Word[0x0011fe9c]
      0x80001720 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001724 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001728 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001668 ~~> Word[0x0011fe90]
      0x8000172c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001730 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001734 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001738 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x8000173c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001740 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001744 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001748 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002d4e ~~> Word[0x0011fe70]
      0x8000174c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
      0x80001758 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003758
      0x80001750 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x8000175c addi    s1, s1, -1880          #; s1  = 0x80003758, (wrb) s1  <-- 0x80003000
      0x80001754 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
; _ftoa (printf.c:351)
      0x80001768 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001760 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003000]
; _ftoa (printf.c:0)
      0x8000176c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001770 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001764 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
      0x80001774 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001778 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x8000177c mv      s7, a0                 #; a0  = 0x80001668, (wrb) s7  <-- 0x80001668
; _ftoa (printf.c:351)
      0x80001780 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001870
; _ftoa (printf.c:0)
      0x80001874 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002874
      0x80001878 addi    a0, a0, 1940           #; a0  = 0x80002874, (wrb) a0  <-- 0x80003008
      0x80001870 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x8000187c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003008]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001880 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001884 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018a0
; _ftoa (printf.c:0)
      0x800018a0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028a0
      0x800018a4 addi    a0, a0, 1904           #; a0  = 0x800028a0, (wrb) a0  <-- 0x80003010
      0x800018ac auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028ac
      0x800018a8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003010]
      0x800018b0 addi    a0, a0, 1900           #; a0  = 0x800028ac, (wrb) a0  <-- 0x80003018
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x800018b4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003018]
; _ftoa (printf.c:358)
      0x800018b8 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x800018bc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x800018c0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800018c4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800019c0
; _ftoa (printf.c:374)
      0x800019c0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x800019c4 li      s8, 6                  #; (wrb) s8  <-- 6
      0x800019c8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800019d0
; _ftoa (printf.c:0)
      0x800019d0 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x800019d8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a10
; _ftoa (printf.c:0)
      0x800019d4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
                                                #; (f:fpu) fs2  <-- 0.0000000
      0x80001a10 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001a14 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001a18 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a18
      0x80001a1c addi    a1, a1, 1280           #; a1  = 0x80002a18, (wrb) a1  <-- 0x80002f18
      0x80001a20 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002f18, (wrb) a0  <-- 0x80002f48
      0x80001a24 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f48]
; _ftoa (printf.c:383)
      0x80001a28 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
; _ftoa (printf.c:384)
      0x80001a2c fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:0)
      0x80001a38 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a38
      0x80001a30 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
      0x80001a3c addi    a0, a0, 1512           #; a0  = 0x80002a38, (wrb) a0  <-- 0x80003020
                                                #; (f:fpu) ft0  <-- 0.0000000
; _ftoa (printf.c:384)
      0x80001a34 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
                                                #; (f:fpu) ft2  <-- 0.0000037
; _ftoa (printf.c:0)
      0x80001a40 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003020]
; _ftoa (printf.c:385)
      0x80001a44 fcvt.wu.d a0, ft2              #; ft2  = 0.0000037
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001a48 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001a4c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000037, ft3  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft2  <-- 0.0000037
; _ftoa (printf.c:388)
      0x80001a50 fle.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
      0x80001a54 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a74
; _ftoa (printf.c:396)
      0x80001a74 flt.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001a78 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a8c
; _ftoa (printf.c:0)
      0x80001a8c fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:403)
      0x80001a90 beqz    s8, pc + 216           #; s8  = 6, not taken
; _ftoa (printf.c:0)
      0x80001a94 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001a98 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001a9c add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001aa0 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001aa4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001aa8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001aac addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001ab0 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001ab4 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001ab8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001abc mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001ac0 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001ac4 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001ac8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001acc sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001ad0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001ad4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001ad8 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001adc addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001ae0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001ae4 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001ae8 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001aec li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001af0 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001af4 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001af8 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001afc or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001b00 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001b04 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001b08 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001b0c not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001b10 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001b14 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001b18 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001b1c sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001b20 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001b24 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001b28 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b30
      0x80001b30 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001b34 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001b38 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b38
      0x80001b3c jalr    ra, ra, -1504          #; ra  = 0x80000b38, (wrb) ra  <-- 0x80001b40, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001b40, goto 0x80001b40
; _ftoa (printf.c:0)
      0x80001b40 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001b44 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001b48 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001b4c xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001b50 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001b54 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b58 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001b5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b44
      0x80001b44 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001b48 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001b4c xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001b50 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001b54 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b58 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001b5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b44
      0x80001b44 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001b48 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001b4c xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001b50 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001b54 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b58 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001b5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b44
      0x80001b44 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001b48 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001b4c xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001b50 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001b54 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b58 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001b5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b44
      0x80001b44 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001b48 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001b4c xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001b50 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001b54 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001b58 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001b5c bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001b60 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001b64 j       pc + 0x28              #; goto 0x80001b8c
      0x80001b8c beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001b90 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001b94 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001b98 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001b9c li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001ba0 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001ba4 j       pc + 0x8               #; goto 0x80001bac
; _ftoa (printf.c:0)
      0x80001bac li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001bb0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001bb4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001bb8 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001bbc flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
      0x80001bc0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001bc4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001bc8 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001bcc addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001bd0 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001bd4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001bd8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001bdc srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001be0 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001be4 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001be8 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001bec sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001bf0 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001bf4 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001bf8 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001bfc addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001c00 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001c04 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001c08 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001c0c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001c10 j       pc + 0x8               #; goto 0x80001c18
; _ftoa (printf.c:440)
      0x80001c18 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001c1c li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001c20 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c8c
; _ftoa (printf.c:0)
      0x80001c8c li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001c90 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001c94 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001cac
; _ftoa (printf.c:453)
      0x80001cac andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001cb0 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001cb4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001cb8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001ce4
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001ce4 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001ce8 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001cec xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001cf0 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001cf4 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001cf8 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001cfc bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d28
; _ftoa (printf.c:0)
      0x80001d28 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d2c beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001d30 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001d3c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
                                                #; (lsu) a0  <-- 48
      0x80001d40 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d48 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 8
      0x80001688 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 9 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 8, (wrb) a4  <-- 0x800030b4
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b4, 48 ~~> Byte[0x800030fc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 9
      0x8000169c addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800016a0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d54 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001d58 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d5c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001d3c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001d40 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d48 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 9
      0x80001688 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 10 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 9, (wrb) a4  <-- 0x800030b5
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b5, 46 ~~> Byte[0x800030fd]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 10
      0x8000169c addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800016a0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800016a8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d54 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001d58 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d5c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001d3c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001d40 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d48 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 10
      0x80001688 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 11 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 10, (wrb) a4  <-- 0x800030b6
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b6, 48 ~~> Byte[0x800030fe]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 11
      0x8000169c addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800016a0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d54 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001d58 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d5c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001d3c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001d40 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d48 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 11
      0x80001688 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 12 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 11, (wrb) a4  <-- 0x800030b7
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b7, 48 ~~> Byte[0x800030ff]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 12
      0x8000169c addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800016a0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d54 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001d58 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d5c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001d3c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001d40 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d48 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 12
      0x80001688 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 13 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 12, (wrb) a4  <-- 0x800030b8
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b8, 48 ~~> Byte[0x80003100]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 13
      0x8000169c addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800016a0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d54 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001d58 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d5c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001d3c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001d40 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d48 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 13
      0x80001688 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 14 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 13, (wrb) a4  <-- 0x800030b9
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b9, 48 ~~> Byte[0x80003101]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 14
      0x8000169c addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800016a0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d54 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001d58 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d5c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001d3c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001d40 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d48 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 14
      0x80001688 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 15 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 14, (wrb) a4  <-- 0x800030ba
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030ba, 48 ~~> Byte[0x80003102]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 15
      0x8000169c addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800016a0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d54 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001d58 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d5c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001d3c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001d40 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d48 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 15
      0x80001688 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 16 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 15, (wrb) a4  <-- 0x800030bb
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030bb, 48 ~~> Byte[0x80003103]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 16
      0x8000169c addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800016a0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d54 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001d58 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d5c bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001d60 j       pc + 0x8               #; goto 0x80001d68
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d68 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001d6c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001d70 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001d74 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001d78 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001d7c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001dac
; _ftoa (printf.c:0)
      0x80001dac mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001db0 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001db4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001db8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001dbc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0000000
      0x80001dc0 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                                                #; (lsu) s10 <-- 0x80002d4e
      0x80001dc4 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001dc8 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001dcc lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001dd0 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001dd4 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001dd8 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001ddc lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001de0 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001668
      0x80001de4 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001de8 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001dec lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001df0 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000d98
      0x80001df4 ret                            #; ra  = 0x80000d98, goto 0x80000d98
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d98 j       pc + 0x7c0             #; goto 0x80001558
      0x80001558 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x8000155c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001560 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001564 addi    s0, s10, 1             #; s10 = 0x80002d4e, (wrb) s0  <-- 0x80002d4f
      0x80001568 j       pc - 0xa74             #; goto 0x80000af4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000af4 addi    s10, s0, 2             #; s0  = 0x80002d4f, (wrb) s10 <-- 0x80002d51
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000af8 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000afc li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b00 lbu     a0, 0(s0)              #; s0  = 0x80002d4f, a0  <~~ Byte[0x80002d4f]
                                                #; (lsu) a0  <-- 10
      0x80000b04 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000b08 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b0c addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b14 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
      0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
      0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 16
      0x80001688 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 17 ~~> Word[0x800030ac]
      0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 16, (wrb) a4  <-- 0x800030bc
      0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030bc, 10 ~~> Byte[0x80003104]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
                                                #; (lsu) a4  <-- 17
      0x8000169c addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800016a0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800016a4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800016a8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800016ac and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800016b0 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b4 add     a0, a3, a2             #; a3  = 0x800030ac, a2  = 0, (wrb) a0  <-- 0x800030ac
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 addi    a2, a0, 72             #; a0  = 0x800030ac, (wrb) a2  <-- 0x800030f4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc sw      zero, 12(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030b8]
      0x800016c0 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800016c4 sw      a3, 8(a0)              #; a0  = 0x800030ac, 64 ~~> Word[0x800030b4]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c8 sw      zero, 20(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030c0]
      0x800016cc li      a3, 1                  #; (wrb) a3  <-- 1
      0x800016d0 sw      a3, 16(a0)             #; a0  = 0x800030ac, 1 ~~> Word[0x800030bc]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016d4 sw      zero, 28(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030c8]
      0x800016d8 sw      a2, 24(a0)             #; a0  = 0x800030ac, 0x800030f4 ~~> Word[0x800030c4]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016dc lw      a2, 0(a1)              #; a1  = 0x800030ac, a2  <~~ Word[0x800030ac]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e0 addi    a3, a0, 8              #; a0  = 0x800030ac, (wrb) a3  <-- 0x800030b4
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e4 sw      zero, 36(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030d0]
                                                #; (lsu) a2  <-- 17
      0x800016e8 sw      a2, 32(a0)             #; a0  = 0x800030ac, 17 ~~> Word[0x800030cc]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016ec auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036ec
      0x800016f0 addi    a0, a0, -1900          #; a0  = 0x800036ec, (wrb) a0  <-- 0x80002f80
      0x800016f4 sw      a3, 0(a0)              #; a0  = 0x80002f80, 0x800030b4 ~~> Word[0x80002f80]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016f8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036f8
      0x800016fc addi    a0, a0, -1848          #; a0  = 0x800036f8, (wrb) a0  <-- 0x80002fc0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001700 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
                                                #; (lsu) a2  <-- 0
      0x80001704 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001700
      0x80001700 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
                                                #; (lsu) a2  <-- 0
      0x80001704 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001700
      0x80001700 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
                                                #; (lsu) a2  <-- 0
      0x80001704 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001700
      0x80001700 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
                                                #; (lsu) a2  <-- 1
      0x80001704 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001708 sw      zero, 0(a0)            #; a0  = 0x80002fc0, 0 ~~> Word[0x80002fc0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c sw      zero, 0(a1)            #; a1  = 0x800030ac, 0 ~~> Word[0x800030ac]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d4f, (wrb) s0  <-- 0x80002d50
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d51, (wrb) s10 <-- 0x80002d52
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b28 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d50, a0  <~~ Byte[0x80002d50]
                                                #; (lsu) a0  <-- 0
      0x80000b30 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000b34 j       pc + 0xad8             #; goto 0x8000160c
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x8000160c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001610 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001618
      0x80001618 li      a0, 0                  #; (wrb) a0  <-- 0
      0x8000161c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001620 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001624 jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80001628, goto 0x80001668
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001668 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001710
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001710 ret                            #; ra  = 0x80001628, goto 0x80001628
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001628 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x8000162c lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001630 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001634 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001638 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x8000163c lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x80001640 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001644 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001648 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x8000164c lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x80001650 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001654 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001658 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x8000165c lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001660 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000a64
      0x80001664 ret                            #; ra  = 0x80000a64, goto 0x80000a64
; printf_ (printf.c:869)
      0x80000a64 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000a68 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x800009f4
      0x80000a6c ret                            #; ra  = 0x800009f4, goto 0x800009f4
; various (various.c:0)
      0x800009f4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029f4
      0x800009f8 addi    a0, a0, 1540           #; a0  = 0x800029f4, (wrb) a0  <-- 0x80002ff8
      0x800009fc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ff8]
; various (various.c:58)
      0x80000a08 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x80000a0c addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (f:lsu) ft0  <-- 0.0001
      0x80000a00 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
                                                #; (lsu) ra  <-- 0x80002ac0
      0x80000a10 ret                            #; ra  = 0x80002ac0, goto 0x80002ac0
      0x80000a04 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x80002ac0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002ac4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ac4
      0x80002ac8 jalr    ra, ra, 524            #; ra  = 0x80002ac4, (wrb) ra  <-- 0x80002acc, goto 0x80002cd0
; ?? (start_snitch.S:33)
      0x80002cd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002cd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002acc ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002cd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cd8
      0x80002cdc jalr    ra, ra, -1256          #; ra  = 0x80002cd8, (wrb) ra  <-- 0x80002ce0, goto 0x800027f0
; _snrt_barrier_reg_ptr (team.c:80)
      0x800027f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002800 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002804 ret                            #; ra  = 0x80002ce0, goto 0x80002ce0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002ce0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002ce4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002ce8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002cec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002acc
; ?? (start_snitch.S:40)
      0x80002cf0 ret                            #; ra  = 0x80002acc, goto 0x80002acc
; ?? (start.S:195)
      0x80002acc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002ad0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ad0
      0x80002ad4 jalr    ra, ra, 556            #; ra  = 0x80002ad0, (wrb) ra  <-- 0x80002ad8, goto 0x80002cfc
; ?? (start_snitch.S:15)
      0x80002cfc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002d00 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002d04 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002ad8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002d08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d08
      0x80002d0c jalr    ra, ra, -1336          #; ra  = 0x80002d08, (wrb) ra  <-- 0x80002d10, goto 0x800027d0
; snrt_global_core_idx (team.c:32)
      0x800027d0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027d4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027d8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027dc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027e0 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x800027e4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x800027e8 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x800027ec ret                            #; ra  = 0x80002d10, goto 0x80002d10
; ?? (start_snitch.S:20)
      0x80002d10 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002d14 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002d18 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002d1c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002ad8
; ?? (start_snitch.S:28)
      0x80002d20 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002d24 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002d28 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d28
      0x80002d2c addi    t1, t1, 600            #; t1  = 0x80002d28, (wrb) t1  <-- 0x80002f80
; ?? (start_snitch.S:31)
      0x80002d30 sw      t0, 0(t1)              #; t1  = 0x80002f80, 1 ~~> Word[0x80002f80]
; ?? (start_snitch.S:32)
      0x80002d34 ret                            #; ra  = 0x80002ad8, goto 0x80002ad8
; ?? (start.S:198)
      0x80002ad8 wfi                            #; 
                        tion 0 @ (12, 6420):
                          137
                          142
                            5
                           29
                      11.7591
                       0.2849
                       0.1577
                          1.0
                          1.0
                            0
                       1.7833
                       4.0345
                       0.0534
                       0.0468
                       0.8772
                         6409
                       0.3383
