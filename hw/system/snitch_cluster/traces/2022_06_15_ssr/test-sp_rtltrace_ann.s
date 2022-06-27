; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800028b0
      0x00001014 jalr    t0                     #; t0  = 0x800028b0, (wrb) ra  <-- 4120, goto 0x800028b0
; ?? (start.S:20)
      0x800028b0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800038b0
; ?? (start.S:21)
      0x800028b4 addi    gp, gp, -232           #; gp  = 0x800038b0, (wrb) gp  <-- 0x800037c8
; ?? (start.S:28)
      0x800028b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028b8
      0x800028bc jalr    ra, ra, 964            #; ra  = 0x800028b8, (wrb) ra  <-- 0x800028c0, goto 0x80002c7c
; ?? (start_snitch.S:16)
      0x80002c7c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002c80 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002c84 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002c88 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002c8c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002c90 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002c94 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002c98 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002c9c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002ca0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002ca4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002ca8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002cac ret                            #; ra  = 0x800028c0, goto 0x800028c0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x800028c0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x800028c4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x800028c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028c8
      0x800028cc jalr    ra, ra, 1036           #; ra  = 0x800028c8, (wrb) ra  <-- 0x800028d0, goto 0x80002cd4
; ?? (start_snitch.S:48)
      0x80002cd4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002cd8 ret                            #; ra  = 0x800028d0, goto 0x800028d0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x800028d0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x800028d4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x800028d8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x800028dc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x800028e0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x800028e4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028e4
      0x800028e8 addi    t0, t0, 2044           #; t0  = 0x800028e4, (wrb) t0  <-- 0x800030e0
; ?? (start.S:49)
      0x800028ec auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028ec
      0x800028f0 addi    t1, t1, 2040           #; t1  = 0x800028ec, (wrb) t1  <-- 0x800030e4
; ?? (start.S:50)
      0x800028f4 bge     t0, t1, pc + 16        #; t0  = 0x800030e0, t1  = 0x800030e4, not taken
; ?? (start.S:51)
      0x800028f8 sw      zero, 0(t0)            #; t0  = 0x800030e0, 0 ~~> Word[0x800030e0]
; ?? (start.S:52)
      0x800028fc addi    t0, t0, 4              #; t0  = 0x800030e0, (wrb) t0  <-- 0x800030e4
; ?? (start.S:53)
      0x80002900 blt     t0, t1, pc - 8         #; t0  = 0x800030e4, t1  = 0x800030e4, not taken
; ?? (start.S:58)
      0x80002904 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002908 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000290c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002910 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002914 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002918 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000291c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002920 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002924 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002928 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000292c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002930 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002934 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002938 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000293c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002940 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002944 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002948 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000294c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002950 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002954 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002958 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000295c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002960 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002964 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002968 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000296c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002970 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002974 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002978 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000297c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002980 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002984 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002988 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x8000298c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002990 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002994 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002998 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002998
      0x8000299c lw      t0, 900(t0)            #; t0  = 0x80002998, t0  <~~ Word[0x80002d1c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x800029a0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x800029a4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x800029a8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029a8
      0x800029ac lw      t2, 880(t2)            #; t2  = 0x800029a8, t2  <~~ Word[0x80002d18]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x800029b0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x800029b4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x800029b8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x800029bc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x800029c0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x800029c4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x800029c8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x800029cc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x800029d0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029d0
      0x800029d4 addi    t0, t0, 1528           #; t0  = 0x800029d0, (wrb) t0  <-- 0x80002fc8
; ?? (start.S:125)
      0x800029d8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029d8
      0x800029dc addi    t1, t1, 1520           #; t1  = 0x800029d8, (wrb) t1  <-- 0x80002fc8
; ?? (start.S:126)
      0x800029e0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029e0
      0x800029e4 addi    t2, t2, 1512           #; t2  = 0x800029e0, (wrb) t2  <-- 0x80002fc8
; ?? (start.S:127)
      0x800029e8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800029e8
      0x800029ec addi    t3, t3, 1520           #; t3  = 0x800029e8, (wrb) t3  <-- 0x80002fd8
; ?? (start.S:128)
      0x800029f0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002fc8, (wrb) sp  <-- 0x80122f38
; ?? (start.S:129)
      0x800029f4 sub     sp, sp, t1             #; sp  = 0x80122f38, t1  = 0x80002fc8, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x800029f8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002fc8, (wrb) sp  <-- 0x80122f38
; ?? (start.S:131)
      0x800029fc sub     sp, sp, t3             #; sp  = 0x80122f38, t3  = 0x80002fd8, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002a00 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002a04 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002a08 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002a0c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002a10 bge     t0, t1, pc + 24        #; t0  = 0x80002fc8, t1  = 0x80002fc8, taken, goto 0x80002a28
; ?? (start.S:147)
      0x80002a28 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a28
      0x80002a2c addi    t0, t0, 1440           #; t0  = 0x80002a28, (wrb) t0  <-- 0x80002fc8
; ?? (start.S:148)
      0x80002a30 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a30
      0x80002a34 addi    t1, t1, 1448           #; t1  = 0x80002a30, (wrb) t1  <-- 0x80002fd8
; ?? (start.S:149)
      0x80002a38 bge     t0, t1, pc + 20        #; t0  = 0x80002fc8, t1  = 0x80002fd8, not taken
; ?? (start.S:150)
      0x80002a3c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002a40 addi    t0, t0, 4              #; t0  = 0x80002fc8, (wrb) t0  <-- 0x80002fcc
; ?? (start.S:152)
      0x80002a44 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002a48 blt     t0, t2, pc - 12        #; t0  = 0x80002fcc, t2  = 0x80002fc8, not taken
; ?? (start.S:158)
      0x80002a4c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002a50 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002a54 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002a58 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002a5c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002a60 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002a64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a64
      0x80002a68 jalr    ra, ra, -1056          #; ra  = 0x80002a64, (wrb) ra  <-- 0x80002a6c, goto 0x80002644
; _snrt_init_team (start.c:49)
      0x80002644 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002648 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x8000264c lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002650 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002654 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002658 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x8000265c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002660 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002664 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002668 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x8000266c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002670 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002674 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002678 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x8000267c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002680 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002684 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002688 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x8000268c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002690 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002694 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002698 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x8000269c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800026a0 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800026a4 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800026a8 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800026ac sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800026b0 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800026b4 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800026b8 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x800026bc lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x800026c0 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x800026c4 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x800026c8 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x800026cc sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x800026d0 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x800026d4 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x800026d8 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x800026dc add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x800026e0 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x800026e4 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800026e8 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800026ec add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800026f0 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800026f4 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800026f8 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800026fc sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002700 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002704 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002708 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000270c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002710 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002714 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002718 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x8000271c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002720 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002724 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002728 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x8000272c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002730 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002734 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002738 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003738
      0x8000273c addi    a1, a1, -1620          #; a1  = 0x80003738, (wrb) a1  <-- 0x800030e4
      0x80002740 add     a0, a0, a1             #; a0  = 0, a1  = 0x800030e4, (wrb) a0  <-- 0x800030e4
      0x80002744 sw      zero, 0(a0)            #; a0  = 0x800030e4, 0 ~~> Word[0x800030e4]
; _snrt_init_team (start.c:86)
      0x80002748 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x8000274c sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002750 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002754 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002758 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x8000275c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002760 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002764 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002768 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x8000276c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002770 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002774 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002778 lw      a0, 0(a1)              #; a1  = 0x800030e4, a0  <~~ Word[0x800030e4]
                                                #; (lsu) a0  <-- 0
      0x8000277c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002780 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002784 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002788 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x8000278c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002790 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002794 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002798 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x8000279c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027a4 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800027a8 ret                            #; ra  = 0x80002a6c, goto 0x80002a6c
; ?? (start.S:165)
      0x80002a6c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002a70 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002a74 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002a78 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002a7c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002a80 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002a84 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a84
      0x80002a88 addi    t0, t0, 60             #; t0  = 0x80002a84, (wrb) t0  <-- 0x80002ac0
; ?? (start.S:175)
      0x80002a8c csrw    mtvec, t0              #; t0  = 0x80002ac0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002a90 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a90
      0x80002a94 jalr    ra, ra, 544            #; ra  = 0x80002a90, (wrb) ra  <-- 0x80002a98, goto 0x80002cb0
; ?? (start_snitch.S:33)
      0x80002cb0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002cb4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a98 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002cb8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cb8
      0x80002cbc jalr    ra, ra, -1260          #; ra  = 0x80002cb8, (wrb) ra  <-- 0x80002cc0, goto 0x800027cc
; _snrt_barrier_reg_ptr (team.c:80)
      0x800027cc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027d0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027d4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027d8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027dc lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800027e0 ret                            #; ra  = 0x80002cc0, goto 0x80002cc0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002cc0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002cc4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002cc8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002ccc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002a98
; ?? (start_snitch.S:40)
      0x80002cd0 ret                            #; ra  = 0x80002a98, goto 0x80002a98
; ?? (start.S:183)
      0x80002a98 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000a98
      0x80002a9c jalr    ra, ra, -684           #; ra  = 0x80000a98, (wrb) ra  <-- 0x80002aa0, goto 0x800007ec
; main (test_sp.c:14)
      0x800007ec addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_sp.c:15)
      0x800007f0 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002aa0 ~~> Word[0x0011ff5c]
      0x800007f4 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
      0x800007f8 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
      0x800007fc fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x80000800 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000804 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000808 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_sp.c:0)
      0x8000080c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_sp.c:15)
      0x80000810 bnez    a1, pc + 224           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_sp.c:19)
      0x80000814 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000818 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000081c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000820 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_sp.c:19)
      0x80000824 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x80000828 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x8000082c lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x80000830 addi    a2, s0, 80             #; s0  = 0x00100000, (wrb) a2  <-- 0x00100050
                                                #; (lsu) a3  <-- 0x0001df30
      0x80000834 add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
      0x80000838 bgeu    a1, a2, pc + 24        #; a1  = 0x0011df30, a2  = 0x00100050, taken, goto 0x80000850
; snrt_l1alloc (alloc.c:34)
;  in main (test_sp.c:19)
      0x80000850 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
      0x80000854 mv      s1, s0                 #; s0  = 0x00100000, (wrb) s1  <-- 0x00100000
; snrt_l1alloc (alloc.c:25)
;  in main (test_sp.c:20)
      0x80000858 addi    a3, s0, 160            #; s0  = 0x00100000, (wrb) a3  <-- 0x001000a0
      0x8000085c mv      s0, a2                 #; a2  = 0x00100050, (wrb) s0  <-- 0x00100050
      0x80000860 bgeu    a1, a3, pc - 24        #; a1  = 0x0011df30, a3  = 0x001000a0, taken, goto 0x80000848
; snrt_l1alloc (alloc.c:34)
;  in main (test_sp.c:20)
      0x80000848 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
      0x8000084c j       pc + 0x1c              #; goto 0x80000868
; main (test_sp.c:22)
      0x80000868 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x8000086c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000086c
      0x80000870 jalr    ra, ra, -568           #; ra  = 0x8000086c, (wrb) ra  <-- 0x80000874, goto 0x80000634
; init_data (test_sp.c:8)
      0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
      0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
      0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
      0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
      0x8000064c beqz    a1, pc + 212           #; a1  = 1, not taken
; init_data (test_sp.c:0)
      0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
; init_data (test_sp.c:8)
      0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
      0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
      0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
      0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
      0x80000670 scfgwi  a0, 896                #; a0  = 0x00100000
; init_data (test_sp.c:0)
      0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
      0x80000674 csrrsi  a0, ssr, 1             #; 
      0x8000067c addi    a0, a0, -1696          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002fd8
      0x80000684 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003684
      0x80000688 addi    a0, a0, -1700          #; a0  = 0x80003684, (wrb) a0  <-- 0x80002fe0
      0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002fd8]
      0x8000068c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002fe0]
                                                #; (f:lsu) ft3  <-- 3.141
      0x80000698 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003698
      0x80000690 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141, (f:lsu) ft4  <-- 6.282
      0x8000069c addi    a0, a0, -1712          #; a0  = 0x80003698, (wrb) a0  <-- 0x80002fe8
      0x80000694 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 6.282
      0x800006a4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036a4
      0x800006a8 addi    a0, a0, -1716          #; a0  = 0x800036a4, (wrb) a0  <-- 0x80002ff0
      0x800006a0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002fe8]
      0x800006ac fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002ff0]
                                                #; (f:lsu) ft3  <-- 9.423
      0x800006b8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b8
      0x800006b0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423, (f:lsu) ft4  <-- 12.564
      0x800006bc addi    a0, a0, -1728          #; a0  = 0x800036b8, (wrb) a0  <-- 0x80002ff8
      0x800006b4 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
                                                #; (f:fpu) ft0  <-- 12.564
      0x800006c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036c4
      0x800006c8 addi    a0, a0, -1732          #; a0  = 0x800036c4, (wrb) a0  <-- 0x80003000
      0x800006c0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002ff8]
      0x800006cc fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003000]
                                                #; (f:lsu) ft3  <-- 15.705
      0x800006d8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d8
      0x800006d0 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.705, ft3  = 15.705, (f:lsu) ft4  <-- 18.846
      0x800006dc addi    a0, a0, -1744          #; a0  = 0x800036d8, (wrb) a0  <-- 0x80003008
      0x800006d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846, (f:fpu) ft0  <-- 15.705
                                                #; (f:fpu) ft0  <-- 18.846
      0x800006e4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036e4
      0x800006e8 addi    a0, a0, -1748          #; a0  = 0x800036e4, (wrb) a0  <-- 0x80003010
      0x800006e0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003008]
      0x800006ec fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003010]
                                                #; (f:lsu) ft3  <-- 21.9870000
      0x800006f8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f8
      0x800006f0 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000, (f:lsu) ft4  <-- 25.128
      0x800006fc addi    a0, a0, -1760          #; a0  = 0x800036f8, (wrb) a0  <-- 0x80003018
      0x800006f4 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
                                                #; (f:fpu) ft0  <-- 25.128
      0x80000704 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003704
      0x80000708 addi    a0, a0, -1764          #; a0  = 0x80003704, (wrb) a0  <-- 0x80003020
      0x80000700 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018]
      0x8000070c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003020]
                                                #; (f:lsu) ft3  <-- 28.269
; init_data (test_sp.c:9)
      0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.269, ft3  = 28.269, (f:lsu) ft4  <-- 31.41
; init_data (test_sp.c:12)
      0x8000071c ret                            #; ra  = 0x80000874, goto 0x80000874
      0x80000714 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41, (f:fpu) ft0  <-- 28.269
; init_data (test_sp.c:0)
      0x80000718 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 31.41
; main (test_sp.c:23)
      0x80000874 mv      a0, s0                 #; s0  = 0x00100050, (wrb) a0  <-- 0x00100050
      0x80000878 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000878
      0x8000087c jalr    ra, ra, -580           #; ra  = 0x80000878, (wrb) ra  <-- 0x80000880, goto 0x80000634
; init_data (test_sp.c:8)
      0x80000634 srli    a1, a0, 20             #; a0  = 0x00100050, (wrb) a1  <-- 1
      0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
      0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100050, a2  = 0x0011ffb9, (wrb) a2  <-- 1
      0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
      0x8000064c beqz    a1, pc + 212           #; a1  = 1, not taken
; init_data (test_sp.c:0)
      0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
; init_data (test_sp.c:8)
      0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
      0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
      0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
      0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
      0x80000670 scfgwi  a0, 896                #; a0  = 0x00100050
; init_data (test_sp.c:0)
      0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
      0x80000674 csrrsi  a0, ssr, 1             #; 
      0x8000067c addi    a0, a0, -1696          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002fd8
                                                #; (acc) gp  <-- 0x00053187
      0x80000684 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003684
      0x80000688 addi    a0, a0, -1700          #; a0  = 0x80003684, (wrb) a0  <-- 0x80002fe0
      0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002fd8]
                                                #; (acc) tp  <-- 0x00053207
      0x8000068c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002fe0]
      0x80000698 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003698
      0x8000069c addi    a0, a0, -1712          #; a0  = 0x80003698, (wrb) a0  <-- 0x80002fe8
      0x800006a4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036a4
      0x800006a8 addi    a0, a0, -1716          #; a0  = 0x800036a4, (wrb) a0  <-- 0x80002ff0
                                                #; (f:lsu) ft3  <-- 3.141
; init_data (test_sp.c:9)
      0x80000690 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
; init_data (test_sp.c:0)
      0x800006b8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b8
                                                #; (f:lsu) ft4  <-- 6.282
      0x800006bc addi    a0, a0, -1728          #; a0  = 0x800036b8, (wrb) a0  <-- 0x80002ff8
      0x80000694 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
      0x800006a0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002fe8], (f:fpu) ft0  <-- 6.282
      0x800006c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036c4
      0x800006ac fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002ff0]
      0x800006c8 addi    a0, a0, -1732          #; a0  = 0x800036c4, (wrb) a0  <-- 0x80003000
      0x800006d8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d8
      0x800006dc addi    a0, a0, -1744          #; a0  = 0x800036d8, (wrb) a0  <-- 0x80003008
      0x800006e4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036e4
                                                #; (f:lsu) ft3  <-- 9.423
      0x800006e8 addi    a0, a0, -1748          #; a0  = 0x800036e4, (wrb) a0  <-- 0x80003010
      0x800006b0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423, (f:lsu) ft4  <-- 12.564
; init_data (test_sp.c:9)
      0x800006b4 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
; init_data (test_sp.c:0)
      0x800006c0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002ff8], (f:fpu) ft0  <-- 12.564
      0x800006cc fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003000]
      0x800006f8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f8
      0x800006fc addi    a0, a0, -1760          #; a0  = 0x800036f8, (wrb) a0  <-- 0x80003018
      0x80000704 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003704
      0x80000708 addi    a0, a0, -1764          #; a0  = 0x80003704, (wrb) a0  <-- 0x80003020
                                                #; (f:lsu) ft3  <-- 15.705
; init_data (test_sp.c:9)
      0x800006d0 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.705, ft3  = 15.705, (f:lsu) ft4  <-- 18.846
; init_data (test_sp.c:12)
      0x8000071c ret                            #; ra  = 0x80000880, goto 0x80000880
      0x800006d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846, (f:fpu) ft0  <-- 15.705
; init_data (test_sp.c:0)
      0x800006e0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003008], (f:fpu) ft0  <-- 18.846
      0x800006ec fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003010]
; main (test_sp.c:25)
      0x80000880 li      a2, 10                 #; (wrb) a2  <-- 10
      0x80000884 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x80000888 mv      a1, s0                 #; s0  = 0x00100050, (wrb) a1  <-- 0x00100050
      0x8000088c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000088c
                                                #; (f:lsu) ft3  <-- 21.9870000
; init_data (test_sp.c:9)
      0x800006f0 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000, (f:lsu) ft4  <-- 25.128
      0x800006f4 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
; init_data (test_sp.c:0)
      0x80000700 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018], (f:fpu) ft0  <-- 25.128
      0x8000070c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003020]
; main (test_sp.c:25)
      0x80000890 jalr    ra, ra, 124            #; ra  = 0x8000088c, (wrb) ra  <-- 0x80000894, goto 0x80000908
                                                #; (f:lsu) ft3  <-- 28.269
; init_data (test_sp.c:9)
      0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.269, ft3  = 28.269, (f:lsu) ft4  <-- 31.41
      0x80000714 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41, (f:fpu) ft0  <-- 28.269
; init_data (test_sp.c:0)
      0x80000718 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 31.41
; scalarprod (scalarprod.c:4)
      0x80000908 li      a3, 1                  #; (wrb) a3  <-- 1
; scalarprod (scalarprod.c:6)
      0x8000090c blt     a2, a3, pc + 48        #; a2  = 10, a3  = 1, not taken
      0x80000910 addi    a6, a2, -1             #; a2  = 10, (wrb) a6  <-- 9
      0x80000914 slli    a4, a6, 3              #; a6  = 9, (wrb) a4  <-- 72
      0x80000918 add     a3, a4, a0             #; a4  = 72, a0  = 0x00100000, (wrb) a3  <-- 0x00100048
      0x8000091c add     t1, a4, a1             #; a4  = 72, a1  = 0x00100050, (wrb) t1  <-- 0x00100098
      0x80000920 srli    a5, a0, 20             #; a0  = 0x00100000, (wrb) a5  <-- 1
      0x80000924 snez    t0, a5                 #; a5  = 1, (wrb) t0  <-- 1
      0x80000928 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x8000092c addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
      0x80000930 bgeu    a3, a4, pc + 20        #; a3  = 0x00100048, a4  = 72, taken, goto 0x80000944
; scalarprod (scalarprod.c:0)
      0x80000944 sltu    a3, a3, a7             #; a3  = 0x00100048, a7  = 0x00120001, (wrb) a3  <-- 1
; scalarprod (scalarprod.c:6)
      0x80000948 and     t0, t0, a3             #; t0  = 1, a3  = 1, (wrb) t0  <-- 1
      0x8000094c srli    a3, a1, 20             #; a1  = 0x00100050, (wrb) a3  <-- 1
      0x80000950 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x80000954 bgeu    t1, a4, pc + 12        #; t1  = 0x00100098, a4  = 72, taken, goto 0x80000960
; scalarprod (scalarprod.c:0)
      0x80000960 sltu    a4, t1, a7             #; t1  = 0x00100098, a7  = 0x00120001, (wrb) a4  <-- 1
; scalarprod (scalarprod.c:6)
      0x80000964 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x80000968 and     a3, t0, a3             #; t0  = 1, a3  = 1, (wrb) a3  <-- 1
      0x8000096c beqz    a3, pc + 96            #; a3  = 1, not taken
; scalarprod (scalarprod.c:0)
      0x80000970 li      a3, 8                  #; (wrb) a3  <-- 8
; scalarprod (scalarprod.c:6)
      0x80000974 li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000978 li      a5, 192                #; (wrb) a5  <-- 192
      0x8000097c scfgw   a6, a4                 #; a6  = 9, a4  = 64
      0x80000980 scfgw   a3, a5                 #; a3  = 8, a5  = 192
      0x80000984 li      a4, 32                 #; (wrb) a4  <-- 32
      0x80000988 scfgw   zero, a4               #; a4  = 32
      0x8000098c scfgwi  a0, 768                #; a0  = 0x00100000
      0x80000990 li      a0, 1                  #; (wrb) a0  <-- 1
      0x80000994 addi    a4, a0, 64             #; a0  = 1, (wrb) a4  <-- 65
      0x80000998 addi    a5, a0, 192            #; a0  = 1, (wrb) a5  <-- 193
      0x8000099c scfgw   a6, a4                 #; a6  = 9, a4  = 65
      0x800009a0 scfgw   a3, a5                 #; a3  = 8, a5  = 193
      0x800009a4 addi    a0, a0, 32             #; a0  = 1, (wrb) a0  <-- 33
      0x800009a8 scfgw   zero, a0               #; a0  = 33
      0x800009ac scfgwi  a1, 769                #; a1  = 0x00100050
      0x800009b0 csrrsi  a0, ssr, 1             #; 
      0x800009b8 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
      0x800009b4 fcvt.d.w fa0, zero             #; ac1  = 0
                                                #; (f:fpu) fa0  <-- 0.0
; scalarprod (scalarprod.c:7)
      0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.141, ft0  = 3.141, fa0  = 0.0
                                                #; (f:fpu) fa0  <-- 9.865881
; scalarprod (scalarprod.c:6)
      0x800009c0 bnez    a2, pc - 8             #; a2  = 9, taken, goto 0x800009b8
      0x800009b8 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x800009c0 bnez    a2, pc - 8             #; a2  = 8, taken, goto 0x800009b8
      0x800009b8 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.282, ft0  = 6.282, fa0  = 9.865881
      0x800009c0 bnez    a2, pc - 8             #; a2  = 7, taken, goto 0x800009b8
      0x800009b8 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 49.3294050
; scalarprod (scalarprod.c:7)
      0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.423, ft0  = 9.423, fa0  = 49.3294050
; scalarprod (scalarprod.c:6)
      0x800009c0 bnez    a2, pc - 8             #; a2  = 6, taken, goto 0x800009b8
      0x800009b8 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) fa0  <-- 138.1223340
      0x800009c0 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x800009b8
      0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 12.564, ft0  = 12.564, fa0  = 138.1223340
      0x800009b8 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800009c0 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x800009b8
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 295.9764300
; scalarprod (scalarprod.c:6)
      0x800009b8 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 15.705, ft0  = 15.705, fa0  = 295.9764300
      0x800009c0 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x800009b8
      0x800009b8 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 542.6234550
; scalarprod (scalarprod.c:7)
      0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 18.846, ft0  = 18.846, fa0  = 542.6234550
; scalarprod (scalarprod.c:6)
      0x800009c0 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x800009b8
      0x800009b8 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) fa0  <-- 897.7951710
      0x800009c0 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x800009b8
      0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 21.9870000, ft0  = 21.9870000, fa0  = 897.7951710
      0x800009b8 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800009c0 bnez    a2, pc - 8             #; a2  = 0, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1381.2233400
; scalarprod (scalarprod.c:7)
      0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 25.128, ft0  = 25.128, fa0  = 1381.2233400
; scalarprod (scalarprod.c:0)
      0x800009c8 j       pc + 0x24              #; goto 0x800009ec
                                                #; (f:fpu) fa0  <-- 2012.6397240
; scalarprod (scalarprod.c:7)
      0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 28.269, ft0  = 28.269, fa0  = 2012.6397240
                                                #; (f:fpu) fa0  <-- 2811.7760850
      0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 31.41, ft0  = 31.41, fa0  = 2811.7760850
; scalarprod (scalarprod.c:0)
      0x800009c4 csrrci  a0, ssr, 1             #; 
                                                #; (f:fpu) fa0  <-- 3798.3641850
; scalarprod (scalarprod.c:9)
      0x800009ec ret                            #; ra  = 0x80000894, goto 0x80000894
; main (test_sp.c:26)
      0x80000898 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x8000089c mv      a1, s0                 #; s0  = 0x00100050, (wrb) a1  <-- 0x00100050
      0x80000894 fsgnj.d fs0, fa0, fa0          #; fa0  = 3798.3641850, fa0  = 3798.3641850
      0x800008a0 li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs0  <-- 3798.3641850
      0x800008a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008a4
      0x800008a8 jalr    ra, ra, 100            #; ra  = 0x800008a4, (wrb) ra  <-- 0x800008ac, goto 0x80000908
; scalarprod (scalarprod.c:4)
      0x80000908 li      a3, 1                  #; (wrb) a3  <-- 1
; scalarprod (scalarprod.c:6)
      0x8000090c blt     a2, a3, pc + 48        #; a2  = 0, a3  = 1, taken, goto 0x8000093c
; scalarprod (scalarprod.c:0)
      0x8000093c fcvt.d.w fa0, zero             #; ac1  = 0
                                                #; (f:fpu) fa0  <-- 0.0
; scalarprod (scalarprod.c:9)
      0x80000940 ret                            #; ra  = 0x800008ac, goto 0x800008ac
; main (test_sp.c:0)
      0x800008ac auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028ac
      0x800008b0 addi    a0, a0, 1916           #; a0  = 0x800028ac, (wrb) a0  <-- 0x80003028
      0x800008b4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003028]
                                                #; (f:lsu) ft0  <-- -3798.3641850
; main (test_sp.c:30)
      0x800008b8 fadd.d  ft0, fs0, ft0          #; fs0  = 3798.3641850, ft0  = -3798.3641850
; main (test_sp.c:33)
      0x800008c8 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
                                                #; (f:fpu) ft0  <-- 0.0
; main (test_sp.c:30)
      0x800008bc fadd.d  ft0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
                                                #; (lsu) a2  <-- 0
; main (test_sp.c:33)
      0x800008cc lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
                                                #; (f:fpu) ft0  <-- 0.0
; main (test_sp.c:31)
      0x800008c0 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
                                                #; (lsu) a3  <-- 0
                                                #; (f:fpu) fs0  <-- 0.0
; main (test_sp.c:33)
      0x800008c4 fsd     fs0, 0(sp)             #; 0.0 ~~> Doub[0x0011ff40]
      0x800008d0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028d0
      0x800008d4 addi    a0, a0, 1109           #; a0  = 0x800028d0, (wrb) a0  <-- 0x80002d25
      0x800008d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008d8
      0x800008dc jalr    ra, ra, 280            #; ra  = 0x800008d8, (wrb) ra  <-- 0x800008e0, goto 0x800009f0
; printf_ (printf.c:863)
      0x800009f0 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x800009f4 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008e0 ~~> Word[0x0011ff1c]
      0x800009f8 mv      t0, a0                 #; a0  = 0x80002d25, (wrb) t0  <-- 0x80002d25
      0x800009fc sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x00120001 ~~> Word[0x0011ff3c]
      0x80000a00 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff38]
      0x80000a04 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
      0x80000a08 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff30]
      0x80000a0c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000a10 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000a14 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x00100050 ~~> Word[0x0011ff24]
      0x80000a18 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000a1c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000a20 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a20
      0x80000a24 addi    a0, a0, -988           #; a0  = 0x80001a20, (wrb) a0  <-- 0x80001644
      0x80000a28 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000a2c li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000a30 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000a34 mv      a3, t0                 #; t0  = 0x80002d25, (wrb) a3  <-- 0x80002d25
      0x80000a38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a38
      0x80000a3c jalr    ra, ra, 20             #; ra  = 0x80000a38, (wrb) ra  <-- 0x80000a40, goto 0x80000a4c
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000a4c addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000a50 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000a40 ~~> Word[0x0011ff0c]
      0x80000a54 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff08]
      0x80000a58 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff04]
      0x80000a5c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000a60 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000a64 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000a68 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000a6c sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000a70 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000a74 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000a78 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000a7c sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000a80 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000a84 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000a88 mv      s0, a3                 #; a3  = 0x80002d25, (wrb) s0  <-- 0x80002d25
      0x80000a8c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000a90 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000a94 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a98 mv      s2, a0                 #; a0  = 0x80001644, (wrb) s2  <-- 0x80001644
      0x80000a9c j       pc + 0xc               #; goto 0x80000aa8
      0x80000aa8 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000aac li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000ab0 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000ab4 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000ab8 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000abc addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000ac0 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000ac4 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000ac8 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000acc sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ad0 addi    s10, s0, 2             #; s0  = 0x80002d25, (wrb) s10 <-- 0x80002d27
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ad4 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000ad8 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000adc lbu     a0, 0(s0)              #; s0  = 0x80002d25, a0  <~~ Byte[0x80002d25]
                                                #; (lsu) a0  <-- 101
      0x80000ae0 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ae8 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000af0 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 0
      0x80001664 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 1 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 0, (wrb) a4  <-- 0x800030e4
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e4, 101 ~~> Byte[0x8000312c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 1
      0x80001678 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x8000167c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001684 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d25, (wrb) s0  <-- 0x80002d26
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d27, (wrb) s10 <-- 0x80002d28
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b04 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d26, a0  <~~ Byte[0x80002d26]
                                                #; (lsu) a0  <-- 114
      0x80000b0c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ae4
      0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ae8 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000af0 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 1
      0x80001664 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 2 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 1, (wrb) a4  <-- 0x800030e5
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e5, 114 ~~> Byte[0x8000312d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 2
      0x80001678 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x8000167c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001684 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d26, (wrb) s0  <-- 0x80002d27
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d28, (wrb) s10 <-- 0x80002d29
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b04 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d27, a0  <~~ Byte[0x80002d27]
                                                #; (lsu) a0  <-- 114
      0x80000b0c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ae4
      0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ae8 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000af0 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 2
      0x80001664 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 3 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 2, (wrb) a4  <-- 0x800030e6
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e6, 114 ~~> Byte[0x8000312e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 3
      0x80001678 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x8000167c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001684 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d27, (wrb) s0  <-- 0x80002d28
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d29, (wrb) s10 <-- 0x80002d2a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b04 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d28, a0  <~~ Byte[0x80002d28]
                                                #; (lsu) a0  <-- 111
      0x80000b0c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000ae4
      0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ae8 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000af0 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 3
      0x80001664 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 4 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 3, (wrb) a4  <-- 0x800030e7
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e7, 111 ~~> Byte[0x8000312f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 4
      0x80001678 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x8000167c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001684 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d28, (wrb) s0  <-- 0x80002d29
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d2a, (wrb) s10 <-- 0x80002d2b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b04 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d29, a0  <~~ Byte[0x80002d29]
                                                #; (lsu) a0  <-- 114
      0x80000b0c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ae4
      0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ae8 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000af0 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 4
      0x80001664 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 5 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 4, (wrb) a4  <-- 0x800030e8
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e8, 114 ~~> Byte[0x80003130]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 5
      0x80001678 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x8000167c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001684 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d29, (wrb) s0  <-- 0x80002d2a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d2b, (wrb) s10 <-- 0x80002d2c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b04 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d2a, a0  <~~ Byte[0x80002d2a]
                                                #; (lsu) a0  <-- 32
      0x80000b0c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ae4
      0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ae8 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000af0 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 5
      0x80001664 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 6 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 5, (wrb) a4  <-- 0x800030e9
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e9, 32 ~~> Byte[0x80003131]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 6
      0x80001678 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x8000167c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001684 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d2a, (wrb) s0  <-- 0x80002d2b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d2c, (wrb) s10 <-- 0x80002d2d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b04 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d2b, a0  <~~ Byte[0x80002d2b]
                                                #; (lsu) a0  <-- 61
      0x80000b0c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000ae4
      0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ae8 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000af0 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 6
      0x80001664 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 7 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 6, (wrb) a4  <-- 0x800030ea
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030ea, 61 ~~> Byte[0x80003132]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 7
      0x80001678 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x8000167c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001684 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d2b, (wrb) s0  <-- 0x80002d2c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d2d, (wrb) s10 <-- 0x80002d2e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b04 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d2c, a0  <~~ Byte[0x80002d2c]
                                                #; (lsu) a0  <-- 32
      0x80000b0c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ae4
      0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ae8 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000af0 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 7
      0x80001664 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 8 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 7, (wrb) a4  <-- 0x800030eb
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030eb, 32 ~~> Byte[0x80003133]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 8
      0x80001678 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x8000167c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001684 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d2c, (wrb) s0  <-- 0x80002d2d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d2e, (wrb) s10 <-- 0x80002d2f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b04 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d2d, a0  <~~ Byte[0x80002d2d]
                                                #; (lsu) a0  <-- 37
      0x80000b0c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000ae4
      0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b14
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000b14 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b18 j       pc + 0x10              #; goto 0x80000b28
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000b28 lbu     a0, -1(s10)            #; s10 = 0x80002d2f, a0  <~~ Byte[0x80002d2e]
                                                #; (lsu) a0  <-- 102
      0x80000b2c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000b30 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b68
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000b68 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000b6c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000b70 addi    a1, s10, -1            #; s10 = 0x80002d2f, (wrb) a1  <-- 0x80002d2e
      0x80000b74 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000b78 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000bf4
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000bf4 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000bf8 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000c48
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c48 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000c4c mv      s10, a1                #; a1  = 0x80002d2e, (wrb) s10 <-- 0x80002d2e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000c50 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c54 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000c58 j       pc + 0xc               #; goto 0x80000c64
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000c64 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000c68 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000c6c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000c70 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000c74 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000c78 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000cdc
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000cdc addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000ce0 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000ce4 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ce8 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000cec auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002cec
      0x80000cf0 addi    a2, a2, 184            #; a2  = 0x80002cec, (wrb) a2  <-- 0x80002da4
      0x80000cf4 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002da4, (wrb) a1  <-- 0x80002ea8
      0x80000cf8 lw      a2, 0(a1)              #; a1  = 0x80002ea8, a2  <~~ Word[0x80002ea8]
      0x80000cfc li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000d00 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000d34
      0x80000d04 jr      a2                     #; a2  = 0x80000d34, goto 0x80000d34
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000d34 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000d38 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000d40
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000d40 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000d44 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000d4c addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000d48 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000d50 mv      a0, s2                 #; s2  = 0x80001644, (wrb) a0  <-- 0x80001644
      0x80000d54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000d58 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000d5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000d60 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000d64 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000d68 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000d6c auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d6c
      0x80000d70 jalr    ra, ra, -1656          #; ra  = 0x80001d6c, (wrb) ra  <-- 0x80000d74, goto 0x800016f4
; _ftoa (printf.c:340)
      0x800016f4 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800016f8 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d74 ~~> Word[0x0011fe9c]
      0x800016fc sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001700 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001704 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001644 ~~> Word[0x0011fe90]
      0x80001708 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x8000170c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001710 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001714 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001718 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x8000171c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001720 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001724 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002d2e ~~> Word[0x0011fe70]
      0x80001728 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x8000172c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001734 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003734
      0x80001738 addi    s1, s1, -1788          #; s1  = 0x80003734, (wrb) s1  <-- 0x80003038
      0x80001730 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x8000173c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003038]
; _ftoa (printf.c:351)
      0x80001744 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001748 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x8000174c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001740 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001750 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001754 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001758 mv      s7, a0                 #; a0  = 0x80001644, (wrb) s7  <-- 0x80001644
; _ftoa (printf.c:351)
      0x8000175c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x8000184c
; _ftoa (printf.c:0)
      0x8000184c fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001850 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002850
      0x80001854 addi    a0, a0, 2032           #; a0  = 0x80002850, (wrb) a0  <-- 0x80003040
      0x80001858 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003040]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x8000185c fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001860 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x8000187c
; _ftoa (printf.c:0)
      0x8000187c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000287c
      0x80001880 addi    a0, a0, 1996           #; a0  = 0x8000287c, (wrb) a0  <-- 0x80003048
      0x80001888 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002888
      0x8000188c addi    a0, a0, 1992           #; a0  = 0x80002888, (wrb) a0  <-- 0x80003050
      0x80001884 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003048]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001890 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003050]
; _ftoa (printf.c:358)
      0x80001894 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001898 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x8000189c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800018a0 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x8000199c
; _ftoa (printf.c:374)
      0x8000199c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x800019a0 li      s8, 6                  #; (wrb) s8  <-- 6
      0x800019a4 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800019ac
; _ftoa (printf.c:0)
      0x800019ac li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x800019b4 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800019ec
; _ftoa (printf.c:0)
      0x800019b0 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x800019ec li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800019f0 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x800019f4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800029f4
      0x800019f8 addi    a1, a1, 1284           #; a1  = 0x800029f4, (wrb) a1  <-- 0x80002ef8
      0x800019fc add     a0, a0, a1             #; a0  = 48, a1  = 0x80002ef8, (wrb) a0  <-- 0x80002f28
      0x80001a00 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f28]
; _ftoa (printf.c:383)
      0x80001a04 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001a08 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001a0c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001a14 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a14
      0x80001a18 addi    a0, a0, 1604           #; a0  = 0x80002a14, (wrb) a0  <-- 0x80003058
      0x80001a10 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
      0x80001a1c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003058], (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x80001a20 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001a24 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001a28 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001a2c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001a30 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a50
; _ftoa (printf.c:396)
      0x80001a50 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001a54 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a68
; _ftoa (printf.c:403)
      0x80001a6c beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001a68 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x80001a70 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001a74 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001a78 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001a7c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001a80 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001a84 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001a88 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001a8c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001a90 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001a94 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a98 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001a9c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x80001aa0 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001aa4 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001aa8 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001aac ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001ab0 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001ab4 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001ab8 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001abc bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001ac0 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001ac4 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001ac8 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001acc sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001ad0 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001ad4 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001ad8 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001adc bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001ae0 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001ae4 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001ae8 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001aec add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001af0 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001af4 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001af8 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001afc add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001b00 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001b04 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b0c
      0x80001b0c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001b10 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001b14 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b14
      0x80001b18 jalr    ra, ra, -1468          #; ra  = 0x80000b14, (wrb) ra  <-- 0x80001b1c, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001b1c, goto 0x80001b1c
; _ftoa (printf.c:0)
      0x80001b1c li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001b20 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001b24 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001b28 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001b2c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001b30 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b34 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001b38 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b20
      0x80001b20 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001b24 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001b28 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001b2c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001b30 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b34 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001b38 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b20
      0x80001b20 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001b24 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001b28 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001b2c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001b30 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b34 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001b38 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b20
      0x80001b20 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001b24 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001b28 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001b2c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001b30 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001b34 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001b38 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b20
      0x80001b20 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001b24 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001b28 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001b2c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001b30 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001b34 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001b38 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001b3c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001b40 j       pc + 0x28              #; goto 0x80001b68
      0x80001b68 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001b6c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001b70 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001b74 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001b78 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001b7c sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001b80 j       pc + 0x8               #; goto 0x80001b88
; _ftoa (printf.c:0)
      0x80001b88 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001b8c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001b90 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001b94 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001b9c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001b98 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001ba0 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001ba4 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001ba8 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001bac li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001bb0 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001bb4 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001bb8 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001bbc srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001bc0 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001bc4 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001bc8 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001bcc addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001bd0 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001bd4 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001bd8 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001bdc sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001be0 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001be4 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001be8 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001bec j       pc + 0x8               #; goto 0x80001bf4
; _ftoa (printf.c:440)
      0x80001bf4 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001bf8 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001bfc bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c68
; _ftoa (printf.c:0)
      0x80001c68 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001c6c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001c70 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001c88
; _ftoa (printf.c:453)
      0x80001c88 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001c8c bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001c90 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001c94 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001cc0
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001cc0 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001cc4 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001cc8 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001ccc or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001cd0 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001cd4 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001cd8 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d04
; _ftoa (printf.c:0)
      0x80001d04 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d08 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001d0c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001d18 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001d1c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
                                                #; (lsu) a0  <-- 48
      0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d24 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 8
      0x80001664 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 9 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 8, (wrb) a4  <-- 0x800030ec
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030ec, 48 ~~> Byte[0x80003134]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 9
      0x80001678 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x8000167c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d30 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001d34 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d38 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d10
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001d18 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001d1c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d24 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 9
      0x80001664 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 10 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 9, (wrb) a4  <-- 0x800030ed
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030ed, 46 ~~> Byte[0x80003135]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 10
      0x80001678 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x8000167c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001684 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d30 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001d34 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d38 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d10
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001d18 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001d1c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d24 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 10
      0x80001664 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 11 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 10, (wrb) a4  <-- 0x800030ee
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030ee, 48 ~~> Byte[0x80003136]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 11
      0x80001678 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x8000167c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d30 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001d34 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d38 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d10
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001d18 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001d1c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d24 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 11
      0x80001664 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 12 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 11, (wrb) a4  <-- 0x800030ef
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030ef, 48 ~~> Byte[0x80003137]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 12
      0x80001678 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x8000167c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d30 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001d34 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d38 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d10
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001d18 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001d1c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d24 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 12
      0x80001664 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 13 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 12, (wrb) a4  <-- 0x800030f0
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030f0, 48 ~~> Byte[0x80003138]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 13
      0x80001678 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x8000167c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d30 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001d34 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d38 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d10
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001d18 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001d1c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d24 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 13
      0x80001664 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 14 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 13, (wrb) a4  <-- 0x800030f1
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030f1, 48 ~~> Byte[0x80003139]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 14
      0x80001678 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x8000167c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d30 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001d34 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d38 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d10
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001d18 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001d1c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d24 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 14
      0x80001664 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 15 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 14, (wrb) a4  <-- 0x800030f2
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030f2, 48 ~~> Byte[0x8000313a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 15
      0x80001678 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x8000167c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d30 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001d34 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d38 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d10
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001d18 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001d1c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001d24 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 15
      0x80001664 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 16 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 15, (wrb) a4  <-- 0x800030f3
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030f3, 48 ~~> Byte[0x8000313b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 16
      0x80001678 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x8000167c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d30 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001d34 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d38 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001d3c j       pc + 0x8               #; goto 0x80001d44
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001d44 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001d48 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001d4c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001d50 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001d54 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001d58 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001d88
; _ftoa (printf.c:0)
      0x80001d88 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001d8c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001d90 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001d9c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001d94 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001d98 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002d2e
      0x80001da0 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001da4 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001da8 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001dac lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001db0 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001db4 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001db8 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001dbc lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001644
      0x80001dc0 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001dc4 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001dc8 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001dcc addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000d74
      0x80001dd0 ret                            #; ra  = 0x80000d74, goto 0x80000d74
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d74 j       pc + 0x7c0             #; goto 0x80001534
      0x80001534 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001538 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000153c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001540 addi    s0, s10, 1             #; s10 = 0x80002d2e, (wrb) s0  <-- 0x80002d2f
      0x80001544 j       pc - 0xa74             #; goto 0x80000ad0
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ad0 addi    s10, s0, 2             #; s0  = 0x80002d2f, (wrb) s10 <-- 0x80002d31
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ad4 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000ad8 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000adc lbu     a0, 0(s0)              #; s0  = 0x80002d2f, a0  <~~ Byte[0x80002d2f]
                                                #; (lsu) a0  <-- 10
      0x80000ae0 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ae8 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000af0 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
      0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
      0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 16
      0x80001664 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 17 ~~> Word[0x800030e4]
      0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 16, (wrb) a4  <-- 0x800030f4
      0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030f4, 10 ~~> Byte[0x8000313c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
                                                #; (lsu) a4  <-- 17
      0x80001678 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x8000167c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001680 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001684 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001688 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x8000168c bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 add     a0, a3, a2             #; a3  = 0x800030e4, a2  = 0, (wrb) a0  <-- 0x800030e4
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 addi    a2, a0, 72             #; a0  = 0x800030e4, (wrb) a2  <-- 0x8000312c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 sw      zero, 12(a0)           #; a0  = 0x800030e4, 0 ~~> Word[0x800030f0]
      0x8000169c li      a3, 64                 #; (wrb) a3  <-- 64
      0x800016a0 sw      a3, 8(a0)              #; a0  = 0x800030e4, 64 ~~> Word[0x800030ec]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016a4 sw      zero, 20(a0)           #; a0  = 0x800030e4, 0 ~~> Word[0x800030f8]
      0x800016a8 li      a3, 1                  #; (wrb) a3  <-- 1
      0x800016ac sw      a3, 16(a0)             #; a0  = 0x800030e4, 1 ~~> Word[0x800030f4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b0 sw      zero, 28(a0)           #; a0  = 0x800030e4, 0 ~~> Word[0x80003100]
      0x800016b4 sw      a2, 24(a0)             #; a0  = 0x800030e4, 0x8000312c ~~> Word[0x800030fc]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016b8 lw      a2, 0(a1)              #; a1  = 0x800030e4, a2  <~~ Word[0x800030e4]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc addi    a3, a0, 8              #; a0  = 0x800030e4, (wrb) a3  <-- 0x800030ec
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 sw      zero, 36(a0)           #; a0  = 0x800030e4, 0 ~~> Word[0x80003108]
                                                #; (lsu) a2  <-- 17
      0x800016c4 sw      a2, 32(a0)             #; a0  = 0x800030e4, 17 ~~> Word[0x80003104]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036c8
      0x800016cc addi    a0, a0, -1864          #; a0  = 0x800036c8, (wrb) a0  <-- 0x80002f80
      0x800016d0 sw      a3, 0(a0)              #; a0  = 0x80002f80, 0x800030ec ~~> Word[0x80002f80]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016d4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036d4
      0x800016d8 addi    a0, a0, -1812          #; a0  = 0x800036d4, (wrb) a0  <-- 0x80002fc0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016dc lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
                                                #; (lsu) a2  <-- 0
      0x800016e0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800016dc
      0x800016dc lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
                                                #; (lsu) a2  <-- 0
      0x800016e0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800016dc
      0x800016dc lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
                                                #; (lsu) a2  <-- 1
      0x800016e0 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e4 sw      zero, 0(a0)            #; a0  = 0x80002fc0, 0 ~~> Word[0x80002fc0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 sw      zero, 0(a1)            #; a1  = 0x800030e4, 0 ~~> Word[0x800030e4]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d2f, (wrb) s0  <-- 0x80002d30
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d31, (wrb) s10 <-- 0x80002d32
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b04 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d30, a0  <~~ Byte[0x80002d30]
                                                #; (lsu) a0  <-- 0
      0x80000b0c bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000b10 j       pc + 0xad8             #; goto 0x800015e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800015e8 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800015ec bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800015f4
      0x800015f4 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800015f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800015fc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001600 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80001604, goto 0x80001644
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001644 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800016ec
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800016ec ret                            #; ra  = 0x80001604, goto 0x80001604
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001604 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001608 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x8000160c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001610 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001614 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001618 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x8000161c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001620 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001624 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001628 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x8000162c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001630 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0x00100000
      0x80001634 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x00100050
      0x80001638 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x8000163c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000a40
      0x80001640 ret                            #; ra  = 0x80000a40, goto 0x80000a40
; printf_ (printf.c:869)
      0x80000a40 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000a44 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x800008e0
      0x80000a48 ret                            #; ra  = 0x800008e0, goto 0x800008e0
; main (test_sp.c:0)
      0x800008e0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028e0
      0x800008e4 addi    a0, a0, 1872           #; a0  = 0x800028e0, (wrb) a0  <-- 0x80003030
      0x800008e8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003030]
; main (test_sp.c:36)
      0x800008f4 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_sp.c:35)
      0x800008ec flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
                                                #; (lsu) s1  <-- 0
; main (test_sp.c:36)
      0x800008f8 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58], (acc) s0  <-- 0x01812403
      0x800008f0 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s0  <-- 0
      0x800008fc lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x80000900 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002aa0
      0x80000904 ret                            #; ra  = 0x80002aa0, goto 0x80002aa0
; ?? (start.S:184)
      0x80002aa0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002aa4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002aa4
      0x80002aa8 jalr    ra, ra, 524            #; ra  = 0x80002aa4, (wrb) ra  <-- 0x80002aac, goto 0x80002cb0
; ?? (start_snitch.S:33)
      0x80002cb0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002cb4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002aac ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002cb8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cb8
      0x80002cbc jalr    ra, ra, -1260          #; ra  = 0x80002cb8, (wrb) ra  <-- 0x80002cc0, goto 0x800027cc
; _snrt_barrier_reg_ptr (team.c:80)
      0x800027cc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027d0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027d4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027d8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027dc lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800027e0 ret                            #; ra  = 0x80002cc0, goto 0x80002cc0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002cc0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002cc4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002cc8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002ccc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002aac
; ?? (start_snitch.S:40)
      0x80002cd0 ret                            #; ra  = 0x80002aac, goto 0x80002aac
; ?? (start.S:195)
      0x80002aac mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002ab0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ab0
      0x80002ab4 jalr    ra, ra, 556            #; ra  = 0x80002ab0, (wrb) ra  <-- 0x80002ab8, goto 0x80002cdc
; ?? (start_snitch.S:15)
      0x80002cdc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002ce0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002ce4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002ab8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002ce8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ce8
      0x80002cec jalr    ra, ra, -1340          #; ra  = 0x80002ce8, (wrb) ra  <-- 0x80002cf0, goto 0x800027ac
; snrt_global_core_idx (team.c:32)
      0x800027ac lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027b0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027b4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027b8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027bc lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x800027c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x800027c4 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x800027c8 ret                            #; ra  = 0x80002cf0, goto 0x80002cf0
; ?? (start_snitch.S:20)
      0x80002cf0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002cf4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002cf8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002cfc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002ab8
; ?? (start_snitch.S:28)
      0x80002d00 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002d04 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002d08 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d08
      0x80002d0c addi    t1, t1, 632            #; t1  = 0x80002d08, (wrb) t1  <-- 0x80002f80
; ?? (start_snitch.S:31)
      0x80002d10 sw      t0, 0(t1)              #; t1  = 0x80002f80, 1 ~~> Word[0x80002f80]
; ?? (start_snitch.S:32)
      0x80002d14 ret                            #; ra  = 0x80002ab8, goto 0x80002ab8
; ?? (start.S:198)
      0x80002ab8 wfi                            #; 
                        tion 0 @ (12, 5658):
                          138
                          145
                            5
                           33
                      11.9203
                       0.2414
                       0.0871
                          1.0
                          1.0
                            0
                       1.2326
                       7.7879
                       0.0230
                       0.0152
                       0.6615
                         5647
                       0.2644
